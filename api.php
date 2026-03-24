<?php
header('Content-Type: application/json');
require_once 'admin/config.php';

$emirate = $_GET['emirate'] ?? '';
$area    = $_GET['area']    ?? '';

// ── Viewport bounds ──────────────────────────────────────────
$swLat = isset($_GET['swLat']) ? (float)$_GET['swLat'] : null;
$swLng = isset($_GET['swLng']) ? (float)$_GET['swLng'] : null;
$neLat = isset($_GET['neLat']) ? (float)$_GET['neLat'] : null;
$neLng = isset($_GET['neLng']) ? (float)$_GET['neLng'] : null;
$hasBounds = ($swLat !== null && $swLng !== null && $neLat !== null && $neLng !== null);

$zoom = isset($_GET['zoom']) ? (int)$_GET['zoom'] : 11;
$maxResults = 2000;
if ($zoom <= 9)  $maxResults = 300;
if ($zoom <= 11) $maxResults = 800;
if ($zoom <= 13) $maxResults = 1500;

// ── Properties ───────────────────────────────────────────────
$conditions = ["p.expires_at > NOW()", "COALESCE(p.hidden,0) = 0"];
$params = [];

if (!empty($emirate)) { $conditions[] = "p.emirate = ?"; $params[] = $emirate; }
if (!empty($area))    { $conditions[] = "p.area = ?";    $params[] = $area; }

if ($hasBounds) {
    $conditions[] = "p.lat BETWEEN ? AND ?";
    $params[] = $swLat; $params[] = $neLat;
    if ($swLng <= $neLng) { $conditions[] = "p.lng BETWEEN ? AND ?"; $params[] = $swLng; $params[] = $neLng; }
}

$whereClause = "WHERE " . implode(' AND ', $conditions);
$stmt = $pdo->prepare("SELECT p.*, a.name as agent_name, a.company as agent_company FROM properties p LEFT JOIN agents a ON p.agent_id = a.id $whereClause ORDER BY p.created_at DESC LIMIT $maxResults");
$stmt->execute($params);
$properties = $stmt->fetchAll(PDO::FETCH_ASSOC);

foreach ($properties as &$prop) {
    $prop['images']      = json_decode($prop['images'], true) ?: [];
    $prop['marker_type'] = 'property';
}
unset($prop);

// ── Agents — only show if subscription is still active ───────
// Agents with expired/no subscription are completely hidden from the map
$agents = [];
if ($zoom >= 11) {
    $agentConditions = [
        "(suspended_until IS NULL OR suspended_until <= NOW())",
        // Key filter: only show agents whose subscription has not expired
        "(subscription_expires_at IS NOT NULL AND subscription_expires_at > NOW())"
    ];
    $agentParams = [];

    if (!empty($emirate)) { $agentConditions[] = "emirate = ?"; $agentParams[] = $emirate; }
    if (!empty($area))    { $agentConditions[] = "area = ?";    $agentParams[] = $area; }

    if ($hasBounds) {
        $agentConditions[] = "lat BETWEEN ? AND ?";
        $agentParams[] = $swLat; $agentParams[] = $neLat;
        if ($swLng <= $neLng) { $agentConditions[] = "lng BETWEEN ? AND ?"; $agentParams[] = $swLng; $agentParams[] = $neLng; }
    }

    $agentWhere = "WHERE " . implode(' AND ', $agentConditions);
    $stmt = $pdo->prepare("SELECT * FROM agents $agentWhere ORDER BY id LIMIT 100");
    $stmt->execute($agentParams);
    $agents = $stmt->fetchAll(PDO::FETCH_ASSOC);

    foreach ($agents as &$agent) {
        $agent['images']      = json_decode($agent['images'], true) ?: [];
        $agent['marker_type'] = 'agent';
    }
    unset($agent);
}

echo json_encode(array_merge($properties, $agents), JSON_UNESCAPED_SLASHES);