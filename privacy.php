<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Privacy Policy · ZeeAE</title>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=DM+Sans:wght@400;500;600&display=swap" rel="stylesheet">
<style>
:root{--bg:#f4f0ff;--pur:#667eea;--pur2:#764ba2;--text:#1e1b4b;--muted:#7c6fa0;--border:#ddd6fe;}
*{margin:0;padding:0;box-sizing:border-box;}
body{font-family:'DM Sans',sans-serif;background:var(--bg);color:var(--text);min-height:100vh;}
.header{background:linear-gradient(135deg,#2d1b69,var(--pur2));padding:0 1.2rem;height:52px;display:flex;align-items:center;justify-content:space-between;position:sticky;top:0;z-index:10;}
.logo{display:flex;align-items:center;gap:8px;text-decoration:none;color:white;font-family:'Playfair Display',serif;font-size:0.95rem;}
.logo-icon{width:28px;height:28px;background:rgba(255,255,255,0.2);border-radius:7px;display:flex;align-items:center;justify-content:center;font-size:0.75rem;}
.back{color:rgba(255,255,255,0.8);text-decoration:none;font-size:0.75rem;border:1px solid rgba(255,255,255,0.25);padding:5px 10px;border-radius:7px;}
.page{max-width:720px;margin:0 auto;padding:2.5rem 1.5rem 4rem;}
.page h1{font-family:'Playfair Display',serif;font-size:2rem;color:var(--text);margin-bottom:0.4rem;}
.updated{font-size:0.78rem;color:var(--muted);margin-bottom:2rem;}
h2{font-size:1rem;font-weight:700;color:var(--text);margin:1.8rem 0 0.6rem;}
p,li{font-size:0.88rem;color:#3d3560;line-height:1.75;margin-bottom:0.5rem;}
ul{padding-left:1.3rem;margin-bottom:0.8rem;}
.highlight{background:#ede8fb;border-left:3px solid var(--pur);padding:0.75rem 1rem;border-radius:0 8px 8px 0;margin:1rem 0;font-size:0.85rem;}
</style>
</head>
<body>
<div class="header">
    <a href="index.html" class="logo"><div class="logo-icon"><i class="fas fa-building"></i></div> ZeeAE</a>
    <a href="index.html" class="back">← Back to Map</a>
</div>
<div class="page">
    <h1>Privacy Policy</h1>
    <p class="updated">Last updated: <?= date('d F Y') ?></p>

    <div class="highlight">ZeeAE is committed to protecting your privacy. This policy explains how we handle information on our real estate platform.</div>

    <h2>1. Information We Collect</h2>
    <p>When you use ZeeAE, we may collect:</p>
    <ul>
        <li>Search filters and preferences (emirate, area, property type)</li>
        <li>Property views and contact interactions (WhatsApp/call clicks) for analytics</li>
        <li>Your approximate IP address for spam prevention on reports</li>
        <li>Location data <strong>only</strong> if you use the "Check Nearby" feature — never stored</li>
    </ul>

    <h2>2. Information We Do Not Collect</h2>
    <ul>
        <li>We do not require account registration to browse listings</li>
        <li>We do not store your name, email, or phone number unless you are a registered agent</li>
        <li>We do not sell your data to third parties</li>
        <li>We do not use cookies for advertising or cross-site tracking</li>
    </ul>

    <h2>3. How We Use Information</h2>
    <p>Collected data is used to:</p>
    <ul>
        <li>Show relevant property listings based on your filters</li>
        <li>Help agents understand how their listings perform (view and inquiry counts)</li>
        <li>Prevent spam reports and fake submissions</li>
        <li>Improve the platform experience</li>
    </ul>

    <h2>4. Reports</h2>
    <p>When you submit a report on a listing or agent, your IP address and the report content are stored for review by our admin team. Report details are <strong>not shared with the reported party</strong> — agents are only notified that a report exists, not its contents.</p>

    <h2>5. Data Storage</h2>
    <p>All data is stored on secure servers. We retain analytics data for up to 90 days and report data until manually reviewed and cleared by our admin team.</p>

    <h2>6. Third-Party Services</h2>
    <ul>
        <li><strong>Google Maps:</strong> Powers our property map. Subject to <a href="https://policies.google.com/privacy" target="_blank" style="color:var(--pur);">Google's Privacy Policy</a>.</li>
        <li><strong>WhatsApp / Phone:</strong> Clicking contact buttons opens your device's apps. We do not intercept calls or messages.</li>
        <li><strong>Font Awesome / Google Fonts:</strong> Used for icons and typography; may log your IP per their policies.</li>
    </ul>

    <h2>7. Your Rights</h2>
    <p>You can contact us to request deletion of any report you submitted. For agents, you may request deletion of your profile and associated data by contacting admin.</p>

    <h2>8. Contact</h2>
    <p>For privacy-related questions, contact us through WhatsApp via any property or agent listing on the map.</p>
</div>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</body>
</html>