<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Legal · ZeeAE</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@600;700&family=DM+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
*,*::before,*::after{margin:0;padding:0;box-sizing:border-box;}
:root{--bg:#0c0820;--surf:#160d35;--card:#1c1245;--line:rgba(167,139,250,0.12);--pur:#7c5cfc;--pur2:#a78bfa;--pur3:#c4b5fd;--gold:#e6b84a;--white:#ede8ff;--muted:#7a6ea8;--dim:#9b8fc4;}
html{scroll-behavior:smooth;}
body{font-family:'DM Sans',sans-serif;background:var(--bg);color:var(--white);min-height:100vh;overflow-x:hidden;}
body::after{content:'';position:fixed;top:-200px;right:-200px;width:700px;height:700px;background:radial-gradient(circle,rgba(124,92,252,0.07) 0%,transparent 70%);pointer-events:none;z-index:0;}
.header{position:sticky;top:0;z-index:200;background:rgba(12,8,32,0.9);backdrop-filter:blur(18px);-webkit-backdrop-filter:blur(18px);border-bottom:1px solid var(--line);height:54px;padding:0 1.4rem;display:flex;align-items:center;justify-content:space-between;}
.logo{display:flex;align-items:center;gap:9px;text-decoration:none;color:var(--white);}
.logo-icon{width:31px;height:31px;border-radius:8px;background:linear-gradient(135deg,var(--pur),#5b3fd4);display:flex;align-items:center;justify-content:center;font-size:0.72rem;color:white;box-shadow:0 0 14px rgba(124,92,252,0.45);}
.logo-name{font-family:'Cormorant Garamond',serif;font-size:1.1rem;font-weight:700;letter-spacing:0.03em;}
.back{display:flex;align-items:center;gap:6px;color:var(--muted);text-decoration:none;font-size:0.73rem;font-weight:500;border:1px solid var(--line);padding:5px 13px;border-radius:20px;transition:all .2s;}
.back:hover{color:var(--white);border-color:rgba(167,139,250,0.35);}
.hero{position:relative;z-index:1;max-width:620px;margin:0 auto;padding:3.5rem 1.5rem 2.2rem;text-align:center;}
.eyebrow{display:inline-flex;align-items:center;gap:6px;font-size:0.62rem;font-weight:600;text-transform:uppercase;letter-spacing:.14em;color:var(--pur2);background:rgba(124,92,252,0.1);border:1px solid rgba(124,92,252,0.22);padding:4px 14px;border-radius:20px;margin-bottom:1.1rem;}
.hero h1{font-family:'Cormorant Garamond',serif;font-size:clamp(2rem,5vw,3rem);font-weight:700;line-height:1.1;color:var(--white);margin-bottom:.7rem;}
.hero h1 em{color:var(--pur2);font-style:normal;}
.hero p{font-size:.82rem;color:var(--muted);line-height:1.7;font-weight:300;max-width:440px;margin:0 auto;}
.tabs-wrap{position:sticky;top:54px;z-index:100;background:rgba(12,8,32,0.93);backdrop-filter:blur(14px);-webkit-backdrop-filter:blur(14px);border-bottom:1px solid var(--line);padding:0 1.4rem;display:flex;gap:0;}
.tab{padding:.85rem 1.3rem;font-size:.78rem;font-weight:600;color:var(--muted);border:none;background:none;cursor:pointer;font-family:'DM Sans',sans-serif;border-bottom:2px solid transparent;display:flex;align-items:center;gap:7px;transition:all .2s;white-space:nowrap;}
.tab:hover{color:var(--pur3);}
.tab.active{color:var(--pur2);border-bottom-color:var(--pur2);}
.panels{position:relative;z-index:1;max-width:740px;margin:0 auto;padding:2.2rem 1.4rem 5rem;}
.panel{display:none;}
.panel.active{display:block;animation:paneIn .25s ease;}
@keyframes paneIn{from{opacity:0;transform:translateY(6px)}to{opacity:1;transform:translateY(0)}}
.doc-date{font-size:.67rem;color:var(--muted);display:flex;align-items:center;gap:10px;flex-wrap:wrap;margin-bottom:1.4rem;padding-bottom:1.4rem;border-bottom:1px solid var(--line);}
.doc-date i{font-size:.6rem;color:var(--pur2);}
.intro-card{background:linear-gradient(135deg,rgba(124,92,252,.08),rgba(92,63,212,.05));border:1px solid rgba(124,92,252,.18);border-radius:14px;padding:1rem 1.1rem;margin-bottom:1.6rem;display:flex;gap:12px;align-items:flex-start;}
.intro-card i{color:var(--pur2);font-size:.85rem;margin-top:2px;flex-shrink:0;}
.intro-card p{font-size:.8rem;color:var(--pur3);line-height:1.7;font-weight:300;}
.item{background:rgba(22,13,53,.6);border:1px solid var(--line);border-radius:13px;margin-bottom:9px;overflow:hidden;transition:border-color .2s;}
.item:hover{border-color:rgba(167,139,250,.2);}
.item.open{border-color:rgba(124,92,252,.28);}
.item-head{padding:.9rem 1rem;display:grid;grid-template-columns:36px 1fr 18px;gap:10px;align-items:center;cursor:pointer;}
.item-icon{width:36px;height:36px;border-radius:10px;display:flex;align-items:center;justify-content:center;font-size:.78rem;flex-shrink:0;}
.item-title{font-size:.86rem;font-weight:600;color:var(--white);}
.item-arrow{color:var(--muted);font-size:.65rem;transition:transform .25s;justify-self:end;}
.item.open .item-arrow{transform:rotate(180deg);}
.item-body{display:none;padding:.2rem 1rem 1rem 4rem;border-top:1px solid var(--line);background:rgba(12,8,32,.35);}
.item.open .item-body{display:block;padding-top:.85rem;}
.item-body p{font-size:.8rem;line-height:1.8;color:var(--dim);margin-bottom:.65rem;font-weight:300;}
.item-body p:last-child{margin-bottom:0;}
.item-body ul{list-style:none;padding:0;margin-bottom:.65rem;}
.item-body li{font-size:.8rem;line-height:1.75;color:var(--dim);padding:3px 0 3px 16px;position:relative;font-weight:300;}
.item-body li::before{content:'';position:absolute;left:0;top:11px;width:5px;height:5px;border-radius:50%;background:var(--pur);opacity:.55;}
.item-body a{color:var(--pur2);text-decoration:none;}
.item-body a:hover{text-decoration:underline;}
.item-body strong{color:var(--pur3);font-weight:600;}
.foot{position:relative;z-index:1;border-top:1px solid var(--line);padding:1.4rem 1.4rem 2.5rem;text-align:center;font-size:.65rem;color:var(--muted);display:flex;flex-direction:column;gap:6px;}
.foot a{color:var(--pur2);text-decoration:none;}
.foot a:hover{text-decoration:underline;}
.foot-links{display:flex;align-items:center;justify-content:center;gap:10px;flex-wrap:wrap;}
.foot-sep{color:var(--line);}
@media(max-width:480px){.hero{padding:2.5rem 1.2rem 2rem;}.tabs-wrap{padding:0 .5rem;}.tab{padding:.75rem .9rem;font-size:.72rem;}.panels{padding:1.8rem 1rem 4rem;}.item-body{padding-left:1rem;}}
</style>
</head>
<body>

<div class="header">
    <a href="index.html" class="logo">
        <div class="logo-icon"><i class="fas fa-building"></i></div>
        <span class="logo-name">ZeeAE</span>
    </a>
    <a href="index.html" class="back"><i class="fas fa-arrow-left"></i> Back to Map</a>
</div>

<div class="hero">
    <div class="eyebrow"><i class="fas fa-shield-halved"></i> Legal</div>
    <h1>Your Trust,<br><em>Our Commitment</em></h1>
    <p>Simple, transparent policies that protect everyone on the ZeeAE platform.</p>
</div>

<div class="tabs-wrap">
    <button class="tab active" id="tab-privacy" onclick="showPanel('privacy')">
        <i class="fas fa-lock"></i> Privacy Policy
    </button>
    <button class="tab" id="tab-terms" onclick="showPanel('terms')">
        <i class="fas fa-file-contract"></i> Terms &amp; Conditions
    </button>
</div>

<div class="panels">

    <!-- PRIVACY -->
    <div class="panel active" id="panel-privacy">
        <div class="doc-date">
            <span><i class="fas fa-calendar"></i> Last updated: <?php echo date('d F Y'); ?></span>
            <span><i class="fas fa-globe"></i> zeeae.com</span>
        </div>
        <div class="intro-card">
            <i class="fas fa-shield-halved"></i>
            <p>ZeeAE is built on trust. We collect only what's necessary to run the platform and <strong>never sell your data</strong> to anyone.</p>
        </div>

        <div class="item open" id="prv0">
            <div class="item-head" onclick="toggle('prv0')">
                <div class="item-icon" style="background:rgba(124,92,252,.12);color:var(--pur2);"><i class="fas fa-database"></i></div>
                <div class="item-title">Information We Collect</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <ul>
                    <li>Search filters and preferences — stored only in your browser session, never on our server</li>
                    <li>Property views and contact clicks (WhatsApp/call) for listing analytics</li>
                    <li>Your IP address for spam prevention on reports</li>
                    <li>Location data <strong>only</strong> if you tap "Check Nearby" — used instantly, never stored</li>
                </ul>
            </div>
        </div>

        <div class="item" id="prv1">
            <div class="item-head" onclick="toggle('prv1')">
                <div class="item-icon" style="background:rgba(239,68,68,.08);color:#f87171;"><i class="fas fa-ban"></i></div>
                <div class="item-title">What We Do NOT Collect</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <ul>
                    <li>No account registration required to browse listings</li>
                    <li>We do not store your name, email, or phone unless you are a registered agent</li>
                    <li>We do not sell, rent, or share your data with any third party</li>
                    <li>No advertising cookies or cross-site tracking</li>
                </ul>
            </div>
        </div>

        <div class="item" id="prv2">
            <div class="item-head" onclick="toggle('prv2')">
                <div class="item-icon" style="background:rgba(16,185,129,.08);color:#6ee7b7;"><i class="fas fa-chart-simple"></i></div>
                <div class="item-title">How We Use Data</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <ul>
                    <li>Show relevant listings based on your search filters</li>
                    <li>Help agents understand how their listings perform (views &amp; inquiry counts)</li>
                    <li>Prevent spam reports and duplicate submissions</li>
                    <li>Improve platform performance and reliability</li>
                </ul>
            </div>
        </div>

        <div class="item" id="prv3">
            <div class="item-head" onclick="toggle('prv3')">
                <div class="item-icon" style="background:rgba(239,68,68,.08);color:#f87171;"><i class="fas fa-flag"></i></div>
                <div class="item-title">Reports &amp; Moderation</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <p>When you submit a report, your IP and the report text are stored for admin review only. Report details are <strong>never shared with the reported party</strong> — agents only see that a report exists, not who submitted it or what it says.</p>
            </div>
        </div>

        <div class="item" id="prv4">
            <div class="item-head" onclick="toggle('prv4')">
                <div class="item-icon" style="background:rgba(124,92,252,.12);color:var(--pur2);"><i class="fas fa-server"></i></div>
                <div class="item-title">Data Storage &amp; Retention</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <ul>
                    <li>Analytics data retained for up to 90 days</li>
                    <li>Report data until reviewed and cleared by our admin team</li>
                    <li>Agent profiles until account deletion is requested</li>
                </ul>
            </div>
        </div>

        <div class="item" id="prv5">
            <div class="item-head" onclick="toggle('prv5')">
                <div class="item-icon" style="background:rgba(230,184,74,.08);color:var(--gold);"><i class="fas fa-puzzle-piece"></i></div>
                <div class="item-title">Third-Party Services</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <ul>
                    <li><strong>Google Maps</strong> — powers our map. Subject to <a href="https://policies.google.com/privacy" target="_blank">Google's Privacy Policy</a></li>
                    <li><strong>WhatsApp / Phone</strong> — opens your device's own apps. We do not intercept or log any communications</li>
                    <li><strong>Google Fonts &amp; Font Awesome</strong> — used for typography; may log your IP per their policies</li>
                </ul>
            </div>
        </div>

        <div class="item" id="prv6">
            <div class="item-head" onclick="toggle('prv6')">
                <div class="item-icon" style="background:rgba(16,185,129,.08);color:#6ee7b7;"><i class="fas fa-user-shield"></i></div>
                <div class="item-title">Your Rights</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <p>You may contact us to request deletion of any report you submitted, deletion of your agent profile, or to ask what data is held about your IP. Contact us via WhatsApp through any listing on the map.</p>
            </div>
        </div>
    </div><!-- /privacy -->

    <!-- TERMS -->
    <div class="panel" id="panel-terms">
        <div class="doc-date">
            <span><i class="fas fa-calendar"></i> Last updated: <?php echo date('d F Y'); ?></span>
            <span><i class="fas fa-map-marker-alt"></i> Governing law: UAE</span>
        </div>
        <div class="intro-card">
            <i class="fas fa-file-contract"></i>
            <p>By using ZeeAE you agree to these terms. ZeeAE connects renters with agents across the UAE — please use it respectfully and honestly.</p>
        </div>

        <div class="item open" id="trm0">
            <div class="item-head" onclick="toggle('trm0')">
                <div class="item-icon" style="background:rgba(124,92,252,.12);color:var(--pur2);"><i class="fas fa-hand-pointer"></i></div>
                <div class="item-title">Use of the Platform</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <ul>
                    <li>ZeeAE is for browsing and contacting real estate listings in the UAE</li>
                    <li>You may not use bots, scrapers, or automated tools to collect listing data</li>
                    <li>You may not post false, misleading, or fraudulent listings</li>
                    <li>You must be 18 or older to contact agents or submit reports</li>
                </ul>
            </div>
        </div>

        <div class="item" id="trm1">
            <div class="item-head" onclick="toggle('trm1')">
                <div class="item-icon" style="background:rgba(16,185,129,.08);color:#6ee7b7;"><i class="fas fa-home"></i></div>
                <div class="item-title">Listings &amp; Accuracy</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <p>Listings are posted by registered agents and reviewed by our admin team. ZeeAE does not guarantee the accuracy of any listing — including price, availability, or property condition. <strong>Always verify directly with the agent before making any payment or commitment.</strong></p>
            </div>
        </div>

        <div class="item" id="trm2">
            <div class="item-head" onclick="toggle('trm2')">
                <div class="item-icon" style="background:rgba(230,184,74,.08);color:var(--gold);"><i class="fas fa-comments"></i></div>
                <div class="item-title">Contact &amp; Communication</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <p>When you tap Call or WhatsApp, you contact the agent directly through your device. ZeeAE is not party to any conversation and bears no responsibility for agreements made outside our platform.</p>
            </div>
        </div>

        <div class="item" id="trm3">
            <div class="item-head" onclick="toggle('trm3')">
                <div class="item-icon" style="background:rgba(239,68,68,.08);color:#f87171;"><i class="fas fa-flag"></i></div>
                <div class="item-title">Report System</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <p>The report feature flags fraudulent, misleading, or inappropriate listings. By submitting a report you confirm it is truthful. False or malicious reports may result in your IP being blocked. ZeeAE reserves the right to remove listings or agents based on verified reports.</p>
            </div>
        </div>

        <div class="item" id="trm4">
            <div class="item-head" onclick="toggle('trm4')">
                <div class="item-icon" style="background:rgba(230,184,74,.08);color:var(--gold);"><i class="fas fa-user-tie"></i></div>
                <div class="item-title">Agent Responsibilities</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <ul>
                    <li>Post only accurate, current, and legitimate listings</li>
                    <li>Respond promptly to inquiries from prospective tenants</li>
                    <li>Do not post the same property multiple times</li>
                    <li>Remove or mark listings as rented promptly when no longer available</li>
                </ul>
            </div>
        </div>

        <div class="item" id="trm5">
            <div class="item-head" onclick="toggle('trm5')">
                <div class="item-icon" style="background:rgba(239,68,68,.08);color:#f87171;"><i class="fas fa-triangle-exclamation"></i></div>
                <div class="item-title">Disclaimer</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <p>ZeeAE is provided "as is" without warranties. We are not liable for losses from use of the platform, including any dealings with agents or landlords discovered through ZeeAE.</p>
            </div>
        </div>

        <div class="item" id="trm6">
            <div class="item-head" onclick="toggle('trm6')">
                <div class="item-icon" style="background:rgba(124,92,252,.12);color:var(--pur2);"><i class="fas fa-copyright"></i></div>
                <div class="item-title">Intellectual Property</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <p>The ZeeAE name, logo, design, and map interface are our intellectual property. Listing content belongs to the respective agents. You may not reproduce or commercially exploit ZeeAE content without written permission.</p>
            </div>
        </div>

        <div class="item" id="trm7">
            <div class="item-head" onclick="toggle('trm7')">
                <div class="item-icon" style="background:rgba(16,185,129,.08);color:#6ee7b7;"><i class="fas fa-gavel"></i></div>
                <div class="item-title">Governing Law</div>
                <i class="fas fa-chevron-down item-arrow"></i>
            </div>
            <div class="item-body">
                <p>These terms are governed by the laws of the <strong>United Arab Emirates</strong>. Any disputes shall be resolved under UAE jurisdiction. We may update these terms at any time — continued use constitutes acceptance.</p>
            </div>
        </div>
    </div><!-- /terms -->

</div><!-- /panels -->

<div class="foot">
    <div class="foot-links">
        <a href="#" onclick="showPanel('privacy');return false">Privacy Policy</a>
        <span class="foot-sep">·</span>
        <a href="#" onclick="showPanel('terms');return false">Terms &amp; Conditions</a>
        <span class="foot-sep">·</span>
        <a href="index.html">Back to Map</a>
    </div>
    <div>&copy; <?php echo date('Y'); ?> ZeeAE &nbsp;&middot;&nbsp; Real Estate UAE &nbsp;&middot;&nbsp; All rights reserved</div>
</div>

<script>
function showPanel(name){
    ['privacy','terms'].forEach(function(n){
        document.getElementById('panel-'+n).classList.toggle('active',n===name);
        document.getElementById('tab-'+n).classList.toggle('active',n===name);
    });
    window.scrollTo({top:document.querySelector('.tabs-wrap').offsetTop-54,behavior:'smooth'});
}
function toggle(id){
    var el=document.getElementById(id);
    var opening=!el.classList.contains('open');
    el.closest('.panel').querySelectorAll('.item.open').forEach(function(i){i.classList.remove('open');});
    if(opening) el.classList.add('open');
}
if(location.hash==='#terms') showPanel('terms');
</script>
</body>
</html>