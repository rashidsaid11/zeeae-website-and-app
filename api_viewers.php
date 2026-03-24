<?php
// api_viewers.php — Real live viewer counter
// Tracks visitors via session tokens stored in DB
// Visitors are "live" if their last heartbeat was within 30 seconds

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

require_once 'admin/config.php';

// Create the sessions table if it doesn't exist
try {
    $pdo->exec("
        CREATE TABLE IF NOT EXISTS live_sessions (
            session_token VARCHAR(64) PRIMARY KEY,
            last_seen     TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
            INDEX idx_last_seen (last_seen)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
    ");
} catch (PDOException $e) {
    // Table may already exist
}

$action = $_GET['action'] ?? 'count';
$token  = $_GET['token']  ?? '';

if ($action === 'ping' && strlen($token) >= 16) {
    // Upsert: record this visitor as alive
    $pdo->prepare("
        INSERT INTO live_sessions (session_token, last_seen) VALUES (?, NOW())
        ON DUPLICATE KEY UPDATE last_seen = NOW()
    ")->execute([$token]);

    // Clean up sessions older than 35 seconds
    $pdo->exec("DELETE FROM live_sessions WHERE last_seen < DATE_SUB(NOW(), INTERVAL 35 SECOND)");
}

// Count sessions alive in last 30 seconds
$count = (int)$pdo->query("
    SELECT COUNT(*) FROM live_sessions
    WHERE last_seen >= DATE_SUB(NOW(), INTERVAL 30 SECOND)
")->fetchColumn();

echo json_encode(['viewers' => max(1, $count)]);