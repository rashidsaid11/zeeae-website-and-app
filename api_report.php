<?php
header('Content-Type: application/json');
require_once __DIR__ . '/admin/config.php';

// Only POST allowed
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode(['ok'=>false,'error'=>'POST only']); exit;
}

$item_id   = (int)($_POST['item_id'] ?? 0);
$item_type = $_POST['item_type'] ?? '';
$reason    = trim($_POST['reason'] ?? '');

// Validate
if (!$item_id || !in_array($item_type, ['property','agent']) || strlen($reason) < 10 || strlen($reason) > 140) {
    echo json_encode(['ok'=>false,'error'=>'Invalid input']); exit;
}

// Basic spam throttle: same IP can only report same item once per hour
$ip = $_SERVER['HTTP_CF_CONNECTING_IP'] ?? $_SERVER['HTTP_X_FORWARDED_FOR'] ?? $_SERVER['REMOTE_ADDR'] ?? '';
$ip = trim(explode(',', $ip)[0]);

try {
    $check = $pdo->prepare("SELECT COUNT(*) FROM reports WHERE item_id=? AND item_type=? AND reporter_ip=? AND created_at > DATE_SUB(NOW(), INTERVAL 1 HOUR)");
    $check->execute([$item_id, $item_type, $ip]);
    if ($check->fetchColumn() > 0) {
        echo json_encode(['ok'=>false,'error'=>'Already reported recently']); exit;
    }

    // Save report
    $pdo->prepare("INSERT INTO reports (item_id, item_type, reason, reporter_ip) VALUES (?,?,?,?)")
        ->execute([$item_id, $item_type, $reason, $ip]);

    // If reporting an agent, increment their unread_reports counter
    if ($item_type === 'agent') {
        try {
            $pdo->prepare("UPDATE agents SET unread_reports = COALESCE(unread_reports,0) + 1 WHERE id=?")
                ->execute([$item_id]);
        } catch(Exception $e) { /* column may not exist yet */ }
    }

    echo json_encode(['ok'=>true]);
} catch(Exception $e) {
    echo json_encode(['ok'=>false,'error'=>'DB error']);
}