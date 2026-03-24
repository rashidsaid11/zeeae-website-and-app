<?php
header('Content-Type: application/json');
require_once 'admin/config.php';

$stmt = $pdo->query("SELECT emirate, name, lat, lng FROM areas ORDER BY emirate, sort_order, name");
$areas = $stmt->fetchAll(PDO::FETCH_ASSOC);

$grouped = [];
foreach ($areas as $area) {
    $grouped[$area['emirate']][] = [
        'name' => $area['name'],
        'lat' => (float)$area['lat'],
        'lng' => (float)$area['lng']
    ];
}

$allEmirates = ['dubai','abu_dhabi','sharjah','ajman','umm_al_quwain','ras_al_khaimah','fujairah'];
foreach ($allEmirates as $em) {
    if (!isset($grouped[$em])) $grouped[$em] = [];
}

echo json_encode($grouped, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
