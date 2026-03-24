<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
require_once 'admin/config.php';

$id   = (int)($_GET['id']   ?? 0);
$type = $_GET['type'] ?? 'property';

if (!$id) {
    echo json_encode(['error' => 'Missing id']);
    exit;
}

if ($type === 'agent') {
    $stmt = $pdo->prepare("SELECT * FROM agents WHERE id = ?");
    $stmt->execute([$id]);
    $item = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($item) {
        $item['images']      = json_decode($item['images'], true) ?: [];
        $item['marker_type'] = 'agent';
    }
} else {
    $stmt = $pdo->prepare("
        SELECT p.*, a.name AS agent_name, a.company AS agent_company
        FROM properties p
        LEFT JOIN agents a ON p.agent_id = a.id
        WHERE p.id = ? AND p.expires_at > NOW()
    ");
    $stmt->execute([$id]);
    $item = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($item) {
        $item['images']      = json_decode($item['images'], true) ?: [];
        $item['marker_type'] = 'property';
    }
}

if (!$item) {
    http_response_code(404);
    echo json_encode(['error' => 'Not found or expired']);
    exit;
}

echo json_encode($item, JSON_UNESCAPED_SLASHES);