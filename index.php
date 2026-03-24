<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
<title>ZeeAE – UAE Rental Properties | Rooms, Apartments, Villas &amp; More</title>
<meta name="description" content="Find rental properties across all UAE emirates on an interactive live map. Search rooms, studios, apartments, villas, offices and more. Updated daily by verified agents.">
<link rel="canonical" href="https://zeeae.com/">
<meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">
<meta property="og:type" content="website">
<meta property="og:site_name" content="ZeeAE – UAE Rentals">
<meta property="og:url" content="https://zeeae.com/">
<meta property="og:title" content="ZeeAE – Find Rental Properties in the UAE">
<meta property="og:description" content="Browse live rental listings across Dubai, Abu Dhabi, Sharjah, Ajman and all UAE emirates. Rooms, studios, apartments, villas, offices – all on one interactive map.">
<meta property="og:image" content="https://zeeae.com/og-default.jpg">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
<meta property="og:locale" content="en_AE">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="ZeeAE – Find Rental Properties in the UAE">
<meta name="twitter:description" content="Browse live rental listings across all UAE emirates on an interactive map. Verified agents. Updated daily.">
<meta name="twitter:image" content="https://zeeae.com/og-default.jpg">
<script type="application/ld+json">{"@context":"https://schema.org","@graph":[{"@type":"WebSite","@id":"https://zeeae.com/#website","url":"https://zeeae.com/","name":"ZeeAE","description":"Interactive live rental property map covering all UAE emirates","inLanguage":"en-AE","potentialAction":{"@type":"SearchAction","target":{"@type":"EntryPoint","urlTemplate":"https://zeeae.com/?area={search_term_string}"},"query-input":"required name=search_term_string"}},{"@type":"RealEstateAgent","@id":"https://zeeae.com/#organization","name":"ZeeAE","url":"https://zeeae.com/","logo":"https://zeeae.com/og-default.jpg","description":"UAE rental property listing platform covering Dubai, Abu Dhabi, Sharjah, Ajman, Ras Al Khaimah, Fujairah and Umm Al Quwain.","areaServed":{"@type":"Country","name":"United Arab Emirates"}}]}</script>
<meta name="google-site-verification" content="e3VpxG_yRExIiBoYvHJ-HsCLa2ot-3ro2rcehNuieDA">
<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-9624704157188600" crossorigin="anonymous"></script>
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<link rel="manifest" href="/manifest.json">
<meta name="theme-color" content="#1B5EE4">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="ZeeAE">
<link rel="apple-touch-icon" href="/icons/icon-192.png">
<link rel="icon" type="image/png" sizes="192x192" href="/icons/icon-192.png">
<link rel="icon" type="image/png" sizes="512x512" href="/icons/icon-512.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=DM+Mono:wght@400;500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<!-- ═══════════════════════════════════════════════════
     GLOBAL BASE — agent portal design tokens
     These match dashboard.php / wallet.php exactly.
     Edit colours here and they cascade everywhere.
     ═══════════════════════════════════════════════════ -->
<style>
:root {
    /* exact tokens from agent portal */
    --bg:      #EEF2FB;
    --white:   #FFFFFF;
    --blue:    #1B5EE4;
    --blue2:   #1044B8;
    --blueL:   #E8EFFE;
    --blueM:   #C7D8FC;
    --navy:    #0F1C3F;
    --text:    #1A2340;
    --muted:   #8E97B4;
    --border:  #E2E7F5;
    --green:   #0EA96A;
    --greenL:  #E3FAF0;
    --red:     #E53E3E;
    --redL:    #FEE8E8;
    --gold:    #F59E0B;
    --goldL:   #FEF3C7;
    --card-sh: 0 1px 4px rgba(27,94,228,.06), 0 2px 12px rgba(27,94,228,.06);
    --sat:     env(safe-area-inset-top,  0px);
    --sab:     env(safe-area-inset-bottom, 0px);
}
*, *::before, *::after { margin:0; padding:0; box-sizing:border-box; -webkit-tap-highlight-color:transparent; }
html { height:100%; overscroll-behavior:none; }
body {
    font-family: 'Plus Jakarta Sans', sans-serif;
    background: var(--bg);
    color: var(--text);
    display: flex;
    flex-direction: column;
    height: 100vh;
    overflow: hidden;
    touch-action: manipulation;
    -webkit-font-smoothing: antialiased;
    overscroll-behavior-y: none;
}
@keyframes spin { 0%{transform:rotate(0deg)} 100%{transform:rotate(360deg)} }
@keyframes fadeUp { from{opacity:0;transform:translateY(8px)} to{opacity:1;transform:translateY(0)} }
</style>
</head>
<body>

<?php include 'parts/header.php'; ?>
<?php include 'parts/searchbar.php'; ?>
<?php include 'parts/map.php'; ?>

<!-- Google Maps API — initMap() defined inside parts/map.php -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCon6nofKSu3izg2scFv1LC-UI8VzWN0bc&callback=initMap" async defer></script>

</body>
</html>