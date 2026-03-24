<?php
// sitemap.php — ROOT folder
require_once __DIR__ . '/admin/config.php';

// Fetch all active properties
$props = $pdo->query("
    SELECT id, title, area, emirate, created_at, expires_at
    FROM properties
    WHERE expires_at > NOW()
    ORDER BY created_at DESC
")->fetchAll(PDO::FETCH_ASSOC);

header('Content-Type: application/xml; charset=utf-8');
echo '<?xml version="1.0" encoding="UTF-8"?>';
?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:image="http://www.google.com/schemas/sitemap-image/1.1">

    <!-- Homepage -->
    <url>
        <loc>https://zeeae.com/</loc>
        <changefreq>daily</changefreq>
        <priority>1.0</priority>
    </url>

    <?php foreach ($props as $p): ?>
    <url>
        <loc>https://zeeae.com/property.php?id=<?= (int)$p['id'] ?></loc>
        <lastmod><?= date('Y-m-d', strtotime($p['created_at'])) ?></lastmod>
        <changefreq>weekly</changefreq>
        <priority>0.8</priority>
    </url>
    <?php endforeach; ?>

</urlset>