<?php
/**
 * api_ad.php — ZeeAE Ad Serving & Event Tracking
 *
 * VIDEO SELECTION PRIORITY:
 * 1. Exact area match campaign
 * 2. Emirate-wide campaign
 * 3. Global campaign (no area/emirate set)
 * 4. ANY random active ad with a video_url  ← fixes "no video on most cards"
 *
 * Videos rotate per session so a different video plays each time.
 *
 * GET  ?area=X&emirate=Y&sid=S  → returns ad JSON
 * POST action=impression|skip|complete|click
 */

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Cache-Control: no-store, no-cache, must-revalidate');

require_once __DIR__ . '/admin/config.php';

// Silently create session history table if missing
try {
    $pdo->exec("CREATE TABLE IF NOT EXISTS ad_session_history (
        id BIGINT AUTO_INCREMENT PRIMARY KEY,
        session_id VARCHAR(64) NOT NULL,
        video_id INT NOT NULL,
        seen_at DATETIME DEFAULT CURRENT_TIMESTAMP,
        KEY idx_sid (session_id),
        KEY idx_vid (video_id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4");
} catch (Exception $e) {}

$method = $_SERVER['REQUEST_METHOD'];

// ════════════════════════════════════════════════════════════════════════════
// GET — serve an ad
// ════════════════════════════════════════════════════════════════════════════
if ($method === 'GET') {

    $area    = trim($_GET['area']    ?? '');
    $emirate = trim($_GET['emirate'] ?? '');
    $sid     = substr(preg_replace('/[^a-zA-Z0-9_-]/', '', $_GET['sid'] ?? ''), 0, 64);

    $ad = null;

    // ── 1. Exact area match ───────────────────────────────────────────────
    if ($area !== '') {
        try {
            $stmt = $pdo->prepare("
                SELECT * FROM ads
                WHERE is_active = 1
                  AND video_url != ''
                  AND video_url IS NOT NULL
                  AND LOWER(TRIM(target_area)) = LOWER(TRIM(?))
                ORDER BY priority DESC, RAND()
                LIMIT 1
            ");
            $stmt->execute([$area]);
            $ad = $stmt->fetch(PDO::FETCH_ASSOC) ?: null;
        } catch (Exception $e) {}
    }

    // ── 2. Emirate-wide match ─────────────────────────────────────────────
    if (!$ad && $emirate !== '') {
        try {
            $stmt = $pdo->prepare("
                SELECT * FROM ads
                WHERE is_active = 1
                  AND video_url != ''
                  AND video_url IS NOT NULL
                  AND LOWER(TRIM(target_emirate)) = LOWER(TRIM(?))
                  AND (target_area = '' OR target_area IS NULL)
                ORDER BY priority DESC, RAND()
                LIMIT 1
            ");
            $stmt->execute([$emirate]);
            $ad = $stmt->fetch(PDO::FETCH_ASSOC) ?: null;
        } catch (Exception $e) {}
    }

    // ── 3. Global campaign (no area, no emirate on the campaign) ──────────
    if (!$ad) {
        try {
            $stmt = $pdo->query("
                SELECT * FROM ads
                WHERE is_active = 1
                  AND video_url != ''
                  AND video_url IS NOT NULL
                  AND (target_emirate = '' OR target_emirate IS NULL)
                  AND (target_area    = '' OR target_area    IS NULL)
                ORDER BY priority DESC, RAND()
                LIMIT 1
            ");
            $ad = $stmt ? ($stmt->fetch(PDO::FETCH_ASSOC) ?: null) : null;
        } catch (Exception $e) {}
    }

    // ── 4. FALLBACK — any random active ad with a video ───────────────────
    //    This ensures EVERY card click (any property, any agent, any area)
    //    shows a video as long as at least one active ad exists.
    //    Uses session history to rotate through different videos.
    if (!$ad) {

        // Get ad IDs already shown to this session
        $seenIds = [];
        if ($sid !== '') {
            try {
                $s = $pdo->prepare("
                    SELECT video_id FROM ad_session_history
                    WHERE session_id = ?
                    ORDER BY seen_at DESC LIMIT 200
                ");
                $s->execute([$sid]);
                $seenIds = array_column($s->fetchAll(PDO::FETCH_ASSOC), 'video_id');
            } catch (Exception $e) {}
        }

        // Try an unseen ad first
        if (!empty($seenIds)) {
            try {
                $ph   = implode(',', array_fill(0, count($seenIds), '?'));
                $stmt = $pdo->prepare("
                    SELECT * FROM ads
                    WHERE is_active = 1
                      AND video_url != ''
                      AND video_url IS NOT NULL
                      AND id NOT IN ($ph)
                    ORDER BY RAND()
                    LIMIT 1
                ");
                $stmt->execute($seenIds);
                $ad = $stmt->fetch(PDO::FETCH_ASSOC) ?: null;
            } catch (Exception $e) {}
        }

        // All seen (or no session) — pick any random ad to start cycle again
        if (!$ad) {
            try {
                $stmt = $pdo->query("
                    SELECT * FROM ads
                    WHERE is_active = 1
                      AND video_url != ''
                      AND video_url IS NOT NULL
                    ORDER BY RAND()
                    LIMIT 1
                ");
                $ad = $stmt ? ($stmt->fetch(PDO::FETCH_ASSOC) ?: null) : null;
            } catch (Exception $e) {}
        }
    }

    // No ad at all → unlock card immediately
    if (!$ad) {
        echo json_encode(['ok' => true, 'ad' => null]);
        exit;
    }

    // Non-video network types (adsterra, gam, html)
    $adType = $ad['ad_type'] ?? 'direct';
    if ($adType !== 'direct') {
        $netCfg = json_decode($ad['network_config'] ?? '{}', true) ?? [];
        echo json_encode(['ok' => true, 'ad' => [
            'id'             => (int)$ad['id'],
            'ad_type'        => $adType,
            'name'           => $ad['name'],
            'skip_after_sec' => (int)$ad['skip_after_sec'],
            'network_config' => $netCfg,
            'video_url'      => null,
            'video_id'       => null,
        ]]);
        exit;
    }

    // Direct video ad
    echo json_encode(['ok' => true, 'ad' => [
        'id'             => (int)$ad['id'],
        'video_id'       => (int)$ad['id'],   // ad id used for session rotation
        'ad_type'        => 'direct',
        'name'           => $ad['name'],
        'video_url'      => $ad['video_url'],
        'skip_after_sec' => (int)$ad['skip_after_sec'],
    ]]);
    exit;
}

// ════════════════════════════════════════════════════════════════════════════
// POST — track ad event
// ════════════════════════════════════════════════════════════════════════════
if ($method === 'POST') {

    $action   = trim($_POST['action']   ?? '');
    $ad_id    = (int)($_POST['ad_id']   ?? 0);
    $video_id = (int)($_POST['video_id'] ?? 0);
    $sid      = substr(preg_replace('/[^a-zA-Z0-9_-]/', '', $_POST['sid'] ?? ''), 0, 64);
    $skip_at  = isset($_POST['skip_at_sec']) ? (int)$_POST['skip_at_sec'] : null;
    $watch    = isset($_POST['watch_sec'])   ? (int)$_POST['watch_sec']   : null;

    if (!$ad_id || !$sid || !in_array($action, ['impression','skip','complete','click'])) {
        echo json_encode(['ok' => false, 'error' => 'Invalid params']);
        exit;
    }

    // Log to ad_events
    try {
        $pdo->prepare("
            INSERT INTO ad_events (ad_id, session_id, event_type, skip_at_sec, watch_sec)
            VALUES (?, ?, ?, ?, ?)
        ")->execute([$ad_id, $sid, $action, $skip_at, $watch]);
    } catch (Exception $e) {
        echo json_encode(['ok' => false, 'error' => $e->getMessage()]);
        exit;
    }

    // Record in session history on impression so rotation works
    if ($action === 'impression' && $video_id > 0) {
        try {
            $pdo->prepare("
                INSERT INTO ad_session_history (session_id, video_id, seen_at)
                VALUES (?, ?, NOW())
            ")->execute([$sid, $video_id]);

            // Keep lean — max 200 rows per session
            $pdo->prepare("
                DELETE FROM ad_session_history
                WHERE session_id = ?
                  AND id NOT IN (
                      SELECT id FROM (
                          SELECT id FROM ad_session_history
                          WHERE session_id = ?
                          ORDER BY seen_at DESC
                          LIMIT 200
                      ) _t
                  )
            ")->execute([$sid, $sid]);
        } catch (Exception $e) {}
    }

    echo json_encode(['ok' => true]);
    exit;
}

echo json_encode(['ok' => false, 'error' => 'Method not allowed']);