<?php
// property.php — ROOT folder
// For bots (WhatsApp/Google): serves OG meta tags → rich link preview
// For real users: instant JS redirect to map → cinematic zoom animation opens property box
require_once __DIR__ . '/admin/config.php';

$property_id = isset($_GET['id']) ? intval($_GET['id']) : 0;
if (!$property_id) { header('Location: /'); exit; }

$stmt = $pdo->prepare("
    SELECT p.*,
           a.name    AS agent_name,
           a.company AS agent_company,
           a.phone   AS agent_phone
    FROM properties p
    LEFT JOIN agents a ON p.agent_id = a.id
    WHERE p.id = ?
");
$stmt->execute([$property_id]);
$property = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$property) { header('Location: /'); exit; }

// ── Data prep ──
$ref_id_raw  = isset($property['ref_id']) && $property['ref_id'] ? $property['ref_id'] : $property_id;
$rent_period = isset($property['rent_period']) ? $property['rent_period'] : 'monthly';
$title       = $property['title'] ?? '';
$description = $property['description'] ?? '';
$area        = $property['area'] ?? '';
$emirate_raw = $property['emirate'] ?? '';
$emirate     = ucwords(str_replace('_', ' ', $emirate_raw));
$price       = number_format($property['price']);
$period_label= ['daily'=>'per day','weekly'=>'per week','monthly'=>'per month','yearly'=>'per year'][$rent_period] ?? 'per month';
$period_short= ['daily'=>'/day','weekly'=>'/wk','monthly'=>'/mo','yearly'=>'/yr'][$rent_period] ?? '/mo';
$images      = json_decode($property['images'] ?? '[]', true);
if (!is_array($images)) $images = [];
$first_img   = !empty($images[0]) ? $images[0] : '';
$ref_id      = 'ZEE-' . $ref_id_raw;

$typeNames = ['bs'=>'Bed Space','pr'=>'Partition Room','pvt_rm'=>'Private Room','std'=>'Studio','1bhk'=>'1 Bedroom Apartment','2bhk'=>'2 Bedroom Apartment','3bhk'=>'3 Bedroom Apartment','4bhk'=>'4 Bedroom Apartment','dplx'=>'Duplex','ph'=>'Penthouse','vla'=>'Villa','ivla'=>'Independent Villa','sdv'=>'Semi-Detached Villa','cv'=>'Compound Villa','th'=>'Townhouse','hr'=>'Hotel Room','ha'=>'Hotel Apartment','sa'=>'Serviced Apartment','sh'=>'Shop','of'=>'Office','rs'=>'Retail Space','wh'=>'Warehouse','sr'=>'Showroom','rest'=>'Restaurant','cl'=>'Clinic','lc'=>'Labour Camp','rf'=>'Residential Floor','erb'=>'Entire Building','room'=>'Room','partition'=>'Partition'];
$type_name = $typeNames[$property['type']] ?? ucfirst($property['type'] ?? '');

// ── SEO / OG strings ──
$canonical_url = 'https://zeeae.com/property.php?id=' . $property_id;

// Title: "2 Bedroom Apartment for Rent in Al Nakhil, Ajman – 5,000 AED/mo | ZeeAE"
$seo_title = $type_name . ' for Rent in ' . $area . ', ' . $emirate . ' – ' . $price . ' AED' . $period_short . ' | ZeeAE';
if (strlen($seo_title) > 65) $seo_title = mb_substr($seo_title, 0, 62) . '… | ZeeAE';

// OG title (social share card): matches property listing format
$og_title = $type_name . ' in ' . $area . ', ' . $emirate . ' – ' . $price . ' AED ' . $period_label;

// Meta description: rich with location, price, description snippet, ref
$agent_suffix = !empty($property['agent_name']) ? ' Agent: ' . $property['agent_name'] . '.' : '';
$desc_snippet = $description ? ' ' . mb_substr(trim($description), 0, 80) . (strlen($description) > 80 ? '…' : '') : '';
$seo_desc = $type_name . ' for rent in ' . $area . ', ' . $emirate . ', UAE.'
    . $desc_snippet
    . ' Price: ' . $price . ' AED ' . $period_label . '.'
    . $agent_suffix
    . ' Ref: ' . $ref_id . '.';
if (strlen($seo_desc) > 155) $seo_desc = mb_substr($seo_desc, 0, 152) . '…';

// OG description (shown in link previews)
$og_desc = $price . ' AED ' . $period_label
    . ' · ' . $type_name
    . ' · ' . $area . ', ' . $emirate . ', UAE'
    . ($description ? ' · ' . mb_substr(trim($description), 0, 60) . (strlen($description) > 60 ? '…' : '') : '')
    . ' · Ref: ' . $ref_id;

$og_image = $first_img ?: 'https://zeeae.com/og-default.jpg';

// ── JSON-LD ──
$json_ld = [
    '@context' => 'https://schema.org',
    '@type'    => 'RealEstateListing',
    'name'     => $title,
    'description' => $description ?: ($type_name . ' available for rent in ' . $area . ', ' . $emirate . ', UAE'),
    'url'      => $canonical_url,
    'identifier' => $ref_id,
    'address'  => [
        '@type'           => 'PostalAddress',
        'streetAddress'   => $area,
        'addressLocality' => $area,
        'addressRegion'   => $emirate,
        'addressCountry'  => 'AE',
    ],
    'offers' => [
        '@type'         => 'Offer',
        'price'         => $property['price'],
        'priceCurrency' => 'AED',
        'availability'  => 'https://schema.org/InStock',
    ],
    'image' => $images,
    'geo'   => [
        '@type'     => 'GeoCoordinates',
        'latitude'  => (float)($property['lat'] ?? 0),
        'longitude' => (float)($property['lng'] ?? 0),
    ],
];
if (!empty($property['agent_name'])) {
    $json_ld['agent'] = [
        '@type'    => 'RealEstateAgent',
        'name'     => $property['agent_name'],
        'worksFor' => $property['agent_company'] ?: 'Independent',
    ];
}
?>
<!DOCTYPE html>
<html lang="en" prefix="og: https://ogp.me/ns#">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- ═══ PRIMARY SEO ══════════════════════════════════════════════════ -->
<title><?= htmlspecialchars($seo_title) ?></title>
<meta name="description" content="<?= htmlspecialchars($seo_desc) ?>">
<link rel="canonical" href="<?= htmlspecialchars($canonical_url) ?>">
<!-- Property pages redirect real users to the map; bots read the meta above -->
<meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large">

<!-- ═══ OPEN GRAPH — bots read these for rich link previews ══════════ -->
<meta property="og:type"         content="website">
<meta property="og:site_name"    content="ZeeAE – UAE Rentals">
<meta property="og:url"          content="<?= htmlspecialchars($canonical_url) ?>">
<meta property="og:title"        content="<?= htmlspecialchars($og_title) ?>">
<meta property="og:description"  content="<?= htmlspecialchars($og_desc) ?>">
<meta property="og:image"        content="<?= htmlspecialchars($og_image) ?>">
<meta property="og:image:width"  content="1200">
<meta property="og:image:height" content="630">
<meta property="og:image:alt"    content="<?= htmlspecialchars($type_name . ' in ' . $area . ', ' . $emirate) ?>">
<meta property="og:locale"       content="en_AE">

<!-- ═══ TWITTER / X ══════════════════════════════════════════════════ -->
<meta name="twitter:card"        content="summary_large_image">
<meta name="twitter:title"       content="<?= htmlspecialchars($og_title) ?>">
<meta name="twitter:description" content="<?= htmlspecialchars($og_desc) ?>">
<meta name="twitter:image"       content="<?= htmlspecialchars($og_image) ?>">

<!-- ═══ STRUCTURED DATA ══════════════════════════════════════════════ -->
<script type="application/ld+json"><?= json_encode($json_ld, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE) ?></script>

<!-- ═══ INSTANT REDIRECT — real users never see this page ════════════ -->
<!-- Bots don't execute JS, so they read all the meta tags above        -->
<script>
    sessionStorage.setItem('open_property_id', '<?= $property_id ?>');
    window.location.replace('/?property=<?= $property_id ?>');
</script>

<style>
/* Shown only if JS is disabled */
body{margin:0;font-family:sans-serif;background:#120928;color:#f0eeff;display:flex;align-items:center;justify-content:center;height:100vh;text-align:center;}
.loading{display:flex;flex-direction:column;align-items:center;gap:14px;}
.spinner{width:38px;height:38px;border:3px solid rgba(167,139,250,0.2);border-top-color:#a78bfa;border-radius:50%;animation:spin 0.7s linear infinite;}
@keyframes spin{to{transform:rotate(360deg)}}
p{color:#8b7ebb;font-size:0.85rem;}
a{color:#a78bfa;font-size:0.8rem;margin-top:6px;display:inline-block;}
</style>
</head>
<body>
<!-- Fallback UI — visible only if JavaScript is disabled -->
<div class="loading">
    <div class="spinner"></div>
    <p><?= htmlspecialchars($type_name) ?> for rent in <?= htmlspecialchars($area) ?>, <?= htmlspecialchars($emirate) ?><br>
       <strong style="color:#a78bfa;"><?= htmlspecialchars($price) ?> AED <?= htmlspecialchars($period_label) ?></strong></p>
    <a href="/?property=<?= $property_id ?>">View on map →</a>
</div>
</body>
</html>