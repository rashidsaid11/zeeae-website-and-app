<?php
/**
 * api_track.php — ZeeAE Visitor Tracking
 * Upload to: /api_track.php  (root folder, same level as index.html)
 * Called silently from index.html via fetch()
 * Records: sessions, time spent, areas searched, contacts, property clicks, agent clicks
 */
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

require_once 'admin/config.php';

// ── Auto-create tables on first run ──────────────────────────
try {
    $pdo->exec("CREATE TABLE IF NOT EXISTS site_visitors (
        id            BIGINT AUTO_INCREMENT PRIMARY KEY,
        session_id    VARCHAR(64) NOT NULL,
        ip_address    VARCHAR(45) NOT NULL DEFAULT '',
        user_agent    TEXT,
        device_type   ENUM('mobile','tablet','desktop') DEFAULT 'desktop',
        referrer      VARCHAR(512) DEFAULT '',
        landing_page  VARCHAR(512) DEFAULT '',
        first_seen    DATETIME DEFAULT CURRENT_TIMESTAMP,
        last_seen     DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        duration_sec  INT DEFAULT 0,
        page_views    INT DEFAULT 1,
        is_bounce     TINYINT(1) DEFAULT 1,
        KEY idx_session (session_id),
        KEY idx_first   (first_seen)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4");

    $pdo->exec("CREATE TABLE IF NOT EXISTS site_events (
        id          BIGINT AUTO_INCREMENT PRIMARY KEY,
        session_id  VARCHAR(64) NOT NULL,
        event_type  VARCHAR(64) NOT NULL,
        emirate     VARCHAR(64) DEFAULT '',
        area        VARCHAR(128) DEFAULT '',
        value       VARCHAR(512) DEFAULT '',
        created_at  DATETIME DEFAULT CURRENT_TIMESTAMP,
        KEY idx_session (session_id),
        KEY idx_type    (event_type),
        KEY idx_area    (area),
        KEY idx_emirate (emirate),
        KEY idx_date    (DATE(created_at))
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4");
} catch(Exception $e) {}

// ── Real IP ───────────────────────────────────────────────────
$ip = trim(explode(',', $_SERVER['HTTP_CF_CONNECTING_IP']
    ?? $_SERVER['HTTP_X_FORWARDED_FOR']
    ?? $_SERVER['REMOTE_ADDR'] ?? '')[0]);

// ── Device detection ──────────────────────────────────────────
function detectDevice(string $ua): string {
    if (preg_match('/Mobile|iPhone|iPod|Android.*Mobile/i', $ua)) return 'mobile';
    if (preg_match('/iPad|Android(?!.*Mobile)|Tablet/i', $ua))    return 'tablet';
    return 'desktop';
}

$ua         = $_SERVER['HTTP_USER_AGENT'] ?? '';
$device     = detectDevice($ua);
$action     = $_POST['action'] ?? $_GET['action'] ?? 'ping';
$session_id = substr(preg_replace('/[^a-zA-Z0-9_-]/', '', $_POST['sid'] ?? $_GET['sid'] ?? ''), 0, 64);

if (!$session_id) {
    echo json_encode(['ok' => false, 'error' => 'No session']);
    exit;
}

switch ($action) {

    // ── Called once when visitor first lands ──────────────────
    case 'start':
        $referrer = substr($_POST['referrer'] ?? '', 0, 512);
        $landing  = substr($_POST['landing']  ?? '', 0, 512);
        try {
            $exists = $pdo->prepare("SELECT id FROM site_visitors WHERE session_id=?");
            $exists->execute([$session_id]);
            if (!$exists->fetch()) {
                $pdo->prepare("INSERT INTO site_visitors (session_id,ip_address,user_agent,device_type,referrer,landing_page) VALUES (?,?,?,?,?,?)")
                    ->execute([$session_id, $ip, $ua, $device, $referrer, $landing]);
            }
        } catch(Exception $e) {}
        echo json_encode(['ok' => true]);
        break;

    // ── Called every 30s — keeps duration accurate ────────────
    case 'heartbeat':
        $duration = min((int)($_POST['duration'] ?? 0), 86400);
        try {
            $pdo->prepare("UPDATE site_visitors SET last_seen=NOW(), duration_sec=?, is_bounce=0 WHERE session_id=?")
                ->execute([$duration, $session_id]);
        } catch(Exception $e) {}
        echo json_encode(['ok' => true]);
        break;

    // ── Called when user picks an area from the search ────────
    case 'search':
        $emirate = substr(preg_replace('/[^a-z_]/', '', $_POST['emirate'] ?? ''), 0, 64);
        $area    = substr($_POST['area'] ?? '', 0, 128);
        if ($area || $emirate) {
            try {
                $pdo->prepare("INSERT INTO site_events (session_id,event_type,emirate,area,value) VALUES (?,?,?,?,?)")
                    ->execute([$session_id, 'search', $emirate, $area, $area ?: $emirate]);
                $pdo->prepare("UPDATE site_visitors SET is_bounce=0 WHERE session_id=?")
                    ->execute([$session_id]);
            } catch(Exception $e) {}
        }
        echo json_encode(['ok' => true]);
        break;

    // ── Called when user taps Call or WhatsApp ────────────────
    case 'contact':
        try {
            $pdo->prepare("INSERT INTO site_events (session_id,event_type,value) VALUES (?,?,?)")
                ->execute([$session_id, 'contact', substr($_POST['method'] ?? '', 0, 32)]);
            $pdo->prepare("UPDATE site_visitors SET is_bounce=0 WHERE session_id=?")
                ->execute([$session_id]);
        } catch(Exception $e) {}
        echo json_encode(['ok' => true]);
        break;

    // ── Called when user clicks/opens a property card on the map ──
    case 'property_click':
        $emirate = substr(preg_replace('/[^a-z_]/', '', $_POST['emirate'] ?? ''), 0, 64);
        $area    = substr($_POST['area']    ?? '', 0, 128);
        $value   = substr($_POST['value']   ?? '', 0, 512); // property title
        if ($value || $area) {
            try {
                $pdo->prepare("INSERT INTO site_events (session_id,event_type,emirate,area,value) VALUES (?,?,?,?,?)")
                    ->execute([$session_id, 'property_click', $emirate, $area, $value]);
                $pdo->prepare("UPDATE site_visitors SET is_bounce=0 WHERE session_id=?")
                    ->execute([$session_id]);
            } catch(Exception $e) {}
        }
        echo json_encode(['ok' => true]);
        break;

    // ── Called when user clicks an agent card or profile ─────
    case 'agent_click':
        $value   = substr($_POST['value']   ?? '', 0, 512); // agent name
        $emirate = substr(preg_replace('/[^a-z_]/', '', $_POST['emirate'] ?? ''), 0, 64);
        $area    = substr($_POST['area']    ?? '', 0, 128);
        if ($value) {
            try {
                $pdo->prepare("INSERT INTO site_events (session_id,event_type,emirate,area,value) VALUES (?,?,?,?,?)")
                    ->execute([$session_id, 'agent_click', $emirate, $area, $value]);
                $pdo->prepare("UPDATE site_visitors SET is_bounce=0 WHERE session_id=?")
                    ->execute([$session_id]);
            } catch(Exception $e) {}
        }
        echo json_encode(['ok' => true]);
        break;

    default:
        echo json_encode(['ok' => false, 'error' => 'Unknown action']);
}