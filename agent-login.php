<?php
session_start();
require_once 'admin/config.php';

if (isAgentLoggedIn()) {
    header('Location: agent/dashboard.php'); exit;
}

$googleError = '';
if (isset($_GET['google']) && $_GET['google'] === 'callback' && isset($_GET['code'])) {
    try {
        $tokenRes = file_get_contents('https://oauth2.googleapis.com/token', false, stream_context_create([
            'http' => ['method'=>'POST','header'=>'Content-Type: application/x-www-form-urlencoded',
                'content'=>http_build_query(['code'=>$_GET['code'],'client_id'=>GOOGLE_CLIENT_ID,
                    'client_secret'=>GOOGLE_CLIENT_SECRET,'redirect_uri'=>GOOGLE_REDIRECT_URI,'grant_type'=>'authorization_code'])]
        ]));
        $token = json_decode($tokenRes, true);
        $accessTok = $token['access_token'] ?? '';
        if ($accessTok) {
            $profileRes = file_get_contents('https://www.googleapis.com/oauth2/v2/userinfo',
                false, stream_context_create(['http'=>['header'=>'Authorization: Bearer '.$accessTok]]));
            $gUser = json_decode($profileRes, true);
            $gId = $gUser['id'] ?? ''; $gEmail = $gUser['email'] ?? ''; $gName = $gUser['name'] ?? 'Agent';
            if ($gEmail) {
                $stmt = $pdo->prepare("SELECT u.*, a.name, a.id as agent_id FROM users u LEFT JOIN agents a ON u.agent_id=a.id WHERE u.google_id=? OR (u.email=? AND u.role='agent') LIMIT 1");
                $stmt->execute([$gId, $gEmail]); $user = $stmt->fetch();
                if ($user) {
                    if (!$user['google_id']) $pdo->prepare("UPDATE users SET google_id=? WHERE id=?")->execute([$gId, $user['id']]);
                    $_SESSION['agent_logged_in']=true; $_SESSION['agent_id']=$user['agent_id'];
                    $_SESSION['agent_name']=$user['name']; $_SESSION['username']=$user['username']??$gEmail;
                    header('Location: agent/dashboard.php'); exit;
                } else {
                    $pdo->beginTransaction();
                    $pdo->prepare("INSERT INTO agents (name,email,phone,company,referral_code) VALUES (?,?,?,?,?)")->execute([$gName,$gEmail,'','',strtoupper(substr(md5($gEmail.time()),0,8))]);
                    $agentId = $pdo->lastInsertId();
                    $pdo->prepare("INSERT IGNORE INTO agent_wallets (agent_id) VALUES (?)")->execute([$agentId]);
                    $username = 'g_'.preg_replace('/[^a-z0-9]/','',strtolower($gEmail));
                    $pdo->prepare("INSERT INTO users (username,password,email,role,agent_id,google_id) VALUES (?,?,?,?,?,?)")->execute([$username,'',$gEmail,'agent',$agentId,$gId]);
                    $pdo->commit();
                    $_SESSION['agent_logged_in']=true; $_SESSION['agent_id']=$agentId;
                    $_SESSION['agent_name']=$gName; $_SESSION['username']=$username;
                    header('Location: agent/dashboard.php'); exit;
                }
            }
        }
    } catch (Exception $e) { $googleError = 'Google login failed. Please try again.'; }
}

$googleAuthUrl = 'https://accounts.google.com/o/oauth2/v2/auth?'.http_build_query([
    'client_id'=>defined('GOOGLE_CLIENT_ID')?GOOGLE_CLIENT_ID:'',
    'redirect_uri'=>defined('GOOGLE_REDIRECT_URI')?GOOGLE_REDIRECT_URI:'',
    'response_type'=>'code','scope'=>'openid email profile','access_type'=>'online','prompt'=>'select_account',
]);

$remembered_username = isset($_COOKIE['agent_remember_username']) ? htmlspecialchars($_COOKIE['agent_remember_username']) : '';
$error = $googleError;
$mode  = $_POST['mode'] ?? 'login';

if ($_SERVER['REQUEST_METHOD']==='POST' && $mode==='register') {
    $username=trim($_POST['reg_username']??''); $phone=trim($_POST['phone']??'');
    $password=trim($_POST['reg_password']??''); $confirm=trim($_POST['confirm_password']??'');
    if (!$username||!$phone||!$password) $error='All fields are required.';
    elseif (strlen($password)<6) $error='Password must be at least 6 characters.';
    elseif ($password!==$confirm) $error='Passwords do not match.';
    else {
        $chk=$pdo->prepare("SELECT COUNT(*) FROM users WHERE username=?"); $chk->execute([$username]);
        if ($chk->fetchColumn()>0) $error='Username already taken.';
        else {
            try {
                $pdo->beginTransaction();
                $myRefCode=strtoupper(substr(md5($username.time()),0,8));
                $pdo->prepare("INSERT INTO agents (name,email,phone,company,referral_code) VALUES (?,?,?,?,?)")->execute([$username,'',$phone,'',$myRefCode]);
                $agentId=$pdo->lastInsertId();
                $pdo->prepare("INSERT IGNORE INTO agent_wallets (agent_id) VALUES (?)")->execute([$agentId]);
                $hashed=password_hash($password,PASSWORD_DEFAULT);
                $pdo->prepare("INSERT INTO users (username,password,role,agent_id) VALUES (?,?,?,?)")->execute([$username,$hashed,'agent',$agentId]);
                $pdo->commit();
                $_SESSION['agent_logged_in']=true; $_SESSION['agent_id']=$agentId;
                $_SESSION['agent_name']=$username; $_SESSION['username']=$username;
                $_SESSION['show_referral_popup']=true;
                header('Location: agent/dashboard.php'); exit;
            } catch (PDOException $e) { $pdo->rollBack(); $error='Registration failed. Please try again.'; }
        }
    }
}

if ($_SERVER['REQUEST_METHOD']==='POST' && $mode==='login') {
    $username=trim($_POST['username']??''); $password=trim($_POST['password']??'');
    $remember=!empty($_POST['remember_me']); $biometric=!empty($_POST['biometric_login']);
    if ($biometric && $password==='__BIOMETRIC__') {
        $stmt=$pdo->prepare("SELECT u.*,a.name,a.id as agent_id FROM users u LEFT JOIN agents a ON u.agent_id=a.id WHERE u.username=? AND u.role='agent'");
        $stmt->execute([$username]); $user=$stmt->fetch();
        if ($user) {
            $_SESSION['agent_logged_in']=true; $_SESSION['agent_id']=$user['agent_id'];
            $_SESSION['agent_name']=$user['name']; $_SESSION['username']=$user['username'];
            header('Location: agent/dashboard.php'); exit;
        } else $error='Biometric user not found. Please login with password.';
    } elseif ($username && $password) {
        try {
            $stmt=$pdo->prepare("SELECT u.*,a.name,a.id as agent_id FROM users u LEFT JOIN agents a ON u.agent_id=a.id WHERE u.username=? AND u.role='agent'");
            $stmt->execute([$username]); $user=$stmt->fetch();
            if ($user && password_verify($password,$user['password'])) {
                $_SESSION['agent_logged_in']=true; $_SESSION['agent_id']=$user['agent_id'];
                $_SESSION['agent_name']=$user['name']; $_SESSION['username']=$user['username'];
                if ($remember) setcookie('agent_remember_username',$username,time()+30*24*3600,'/','',(bool)$_SERVER['HTTPS'],true);
                else setcookie('agent_remember_username','',time()-3600,'/');
                header('Location: agent/dashboard.php'); exit;
            } else $error='Invalid username or password.';
        } catch (PDOException $e) { $error='Database error. Please try again.'; }
    } else $error='Please enter username and password.';
}

$showRegister = ($mode==='register' && $error) || isset($_GET['register']);
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>Agent Portal · ZeeAE</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=DM+Mono:wght@400;500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<meta name="theme-color" content="#1B5EE4">
<style>
/* ── Exact same tokens as dashboard ── */
:root {
    --bg:     #EEF2FB;
    --white:  #FFFFFF;
    --blue:   #1B5EE4;
    --blue2:  #1044B8;
    --blueL:  #E8EFFE;
    --blueM:  #C7D8FC;
    --navy:   #0F1C3F;
    --text:   #1A2340;
    --sub:    #5A6482;
    --muted:  #8E97B4;
    --border: #E2E7F5;
    --green:  #0EA96A;
    --greenL: #E3FAF0;
    --red:    #E53E3E;
    --redL:   #FEE8E8;
    --orange: #F59E0B;
    --card-sh: 0 1px 4px rgba(27,94,228,.06), 0 2px 12px rgba(27,94,228,.06);
}
*, *::before, *::after { margin:0; padding:0; box-sizing:border-box; -webkit-tap-highlight-color:transparent; }
body {
    font-family: 'Plus Jakarta Sans', sans-serif;
    background: var(--bg);
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    -webkit-font-smoothing: antialiased;
    color: var(--text);
}

/* ── Topbar — identical to dashboard ── */
.topbar {
    width: 100%;
    background: linear-gradient(135deg, var(--blue2), var(--blue));
    padding: 0 1.1rem;
    height: 56px;
    display: flex;
    align-items: center;
    box-shadow: 0 2px 16px rgba(27,94,228,.3);
    flex-shrink: 0;
}
.topbar-brand { display:flex; align-items:center; gap:9px; }
.topbar-logo {
    width:32px; height:32px;
    background: rgba(255,255,255,.18); border-radius:9px;
    display:flex; align-items:center; justify-content:center;
    font-size:.88rem; font-weight:800; color:#fff; letter-spacing:-.02em;
    border:1px solid rgba(255,255,255,.25);
}
.topbar-title { font-size:.88rem; font-weight:800; color:#fff; letter-spacing:-.01em; }

/* ── Page wrapper ── */
.page { width:100%; max-width:420px; padding:1rem .9rem 2rem; }

/* ── Hero card — identical gradient to dashboard ── */
.hero-card {
    background: linear-gradient(135deg, var(--blue), var(--blue2));
    border-radius:20px; padding:1.25rem 1.3rem;
    margin-bottom:.85rem;
    position:relative; overflow:hidden;
    box-shadow:0 8px 28px rgba(27,94,228,.28);
    animation: fadeUp .3s ease both;
}
.hero-card::before {
    content:''; position:absolute; top:-30px; right:-30px;
    width:120px; height:120px; border-radius:50%;
    background:rgba(255,255,255,.07); pointer-events:none;
}
.hero-card::after {
    content:''; position:absolute; bottom:-20px; left:20px;
    width:80px; height:80px; border-radius:50%;
    background:rgba(255,255,255,.05); pointer-events:none;
}
.hero-tag  { font-size:.58rem; font-weight:700; letter-spacing:.12em; text-transform:uppercase; color:rgba(255,255,255,.6); margin-bottom:4px; }
.hero-name { font-size:1.2rem; font-weight:800; color:#fff; letter-spacing:-.02em; margin-bottom:2px; }
.hero-sub  { font-size:.7rem; color:rgba(255,255,255,.55); font-weight:500; }

/* ── Auth card ── */
.auth-card {
    background:var(--white); border:1px solid var(--border);
    border-radius:20px; overflow:hidden;
    box-shadow:var(--card-sh);
    animation: fadeUp .35s ease .05s both;
}

/* ── Tabs ── */
.auth-tabs {
    display:flex; padding:.55rem .7rem .4rem; gap:.35rem;
    border-bottom:1px solid var(--border); background:var(--bg);
}
.auth-tab {
    flex:1; padding:.44rem .4rem; border:none; background:transparent;
    font-family:'Plus Jakarta Sans',sans-serif; font-size:.72rem; font-weight:700;
    color:var(--muted); cursor:pointer; border-radius:10px;
    display:flex; align-items:center; justify-content:center; gap:5px;
    transition:all .18s;
}
.auth-tab.active {
    background:linear-gradient(135deg, var(--blue2), var(--blue));
    color:#fff; box-shadow:0 3px 10px rgba(27,94,228,.25);
}
.auth-tab:not(.active):hover { background:var(--blueL); color:var(--blue); }

/* ── Body ── */
.auth-body { padding:.9rem 1.1rem 1.1rem; }

/* ── Alert ── */
.alert {
    padding:.5rem .75rem; border-radius:10px; margin-bottom:.7rem;
    font-size:.72rem; font-weight:600; display:flex; align-items:center; gap:7px;
    animation:fadeUp .2s ease both;
}
.alert-error   { background:var(--redL);   color:var(--red);   border:1px solid rgba(229,62,62,.2); }
.alert-success { background:var(--greenL); color:var(--green); border:1px solid rgba(14,169,106,.2); }
.alert-offline { background:var(--redL);   color:var(--red);   border:1px solid rgba(229,62,62,.2); display:none; }
.alert-offline.show { display:flex; }

/* ── Section label — same as dashboard ── */
.sec-label {
    display:block; font-size:.58rem; font-weight:800;
    text-transform:uppercase; letter-spacing:.1em; color:var(--muted);
    margin-bottom:.5rem;
}

/* ── Quick access row (biometric + google) ── */
.quick-row { display:flex; gap:.45rem; margin-bottom:.75rem; }
.btn-quick {
    flex:1; padding:.65rem .3rem;
    background:var(--blueL); border:1.5px solid var(--blueM); border-radius:13px;
    font-family:'Plus Jakarta Sans',sans-serif; font-size:.62rem; font-weight:700;
    color:var(--blue); cursor:pointer;
    display:flex; flex-direction:column; align-items:center; justify-content:center; gap:5px;
    transition:all .18s; text-decoration:none; position:relative;
}
.btn-quick:hover  { background:var(--blueM); transform:translateY(-1px); box-shadow:0 4px 14px rgba(27,94,228,.15); }
.btn-quick:active { transform:scale(.96); }
.btn-quick.unavailable { opacity:.38; cursor:not-allowed; }
.btn-quick.unavailable:hover { transform:none; box-shadow:none; background:var(--blueL); }
.bq-icon {
    width:34px; height:34px; border-radius:10px;
    background:rgba(27,94,228,.1); border:1px solid var(--blueM);
    display:flex; align-items:center; justify-content:center;
    font-size:1rem; color:var(--blue);
}
.bq-label { font-size:.6rem; font-weight:700; color:var(--sub); }
.bq-dot {
    position:absolute; top:7px; right:7px;
    width:6px; height:6px; border-radius:50%; background:var(--border);
    transition:all .3s;
}
.bq-dot.ready { background:var(--green); box-shadow:0 0 5px rgba(14,169,106,.5); }

/* ── Divider ── */
.or-divider { display:flex; align-items:center; gap:8px; margin-bottom:.7rem; }
.or-divider::before, .or-divider::after { content:''; flex:1; height:1px; background:var(--border); }
.or-divider span { font-size:.58rem; font-weight:700; color:var(--muted); text-transform:uppercase; letter-spacing:.09em; }

/* ── Form fields ── */
.form-group { margin-bottom:.5rem; }
.field-label {
    display:block; font-size:.58rem; font-weight:800;
    color:var(--muted); text-transform:uppercase; letter-spacing:.08em; margin-bottom:4px;
}
.input-wrap { position:relative; }
.input-wrap .fi {
    position:absolute; left:11px; top:50%; transform:translateY(-50%);
    color:var(--muted); font-size:.7rem; pointer-events:none; z-index:1; transition:color .18s;
}
.input-wrap:focus-within .fi { color:var(--blue); }
input[type=text], input[type=email], input[type=password], input[type=tel] {
    width:100%; padding:.45rem 2.2rem .45rem 2.1rem;
    background:var(--bg); border:1.5px solid var(--border); border-radius:10px;
    font-size:16px; font-family:'Plus Jakarta Sans',sans-serif; font-weight:500;
    color:var(--text); transition:border .18s, box-shadow .18s, background .18s;
    -webkit-appearance:none;
}
input::placeholder { color:var(--muted); }
input:focus {
    outline:none; border-color:var(--blue);
    background:var(--white); box-shadow:0 0 0 3px var(--blueL);
}
input:-webkit-autofill, input:-webkit-autofill:focus {
    -webkit-box-shadow:0 0 0 1000px var(--bg) inset;
    -webkit-text-fill-color:var(--text);
}
.eye-btn {
    position:absolute; right:9px; top:50%; transform:translateY(-50%);
    background:none; border:none; color:var(--muted); cursor:pointer;
    font-size:.68rem; padding:4px; transition:color .18s;
}
.eye-btn:hover { color:var(--blue); }
.field-row { display:grid; grid-template-columns:1fr 1fr; gap:.5rem; }

/* ── Remember ── */
.remember-row { display:flex; align-items:center; gap:7px; margin-bottom:.75rem; }
.remember-row input[type=checkbox] { width:15px; height:15px; padding:0; accent-color:var(--blue); cursor:pointer; flex-shrink:0; }
.remember-row label { font-size:.7rem; color:var(--muted); cursor:pointer; user-select:none; }

/* ── Submit — same as dashboard confirm-btn-primary ── */
.btn-submit {
    width:100%; padding:.6rem;
    background:linear-gradient(135deg, var(--blue2), var(--blue));
    color:#fff; border:none; border-radius:12px;
    font-family:'Plus Jakarta Sans',sans-serif; font-size:.82rem; font-weight:800;
    cursor:pointer; display:flex; align-items:center; justify-content:center; gap:7px;
    transition:all .18s; box-shadow:0 3px 12px rgba(27,94,228,.28);
}
.btn-submit:hover   { transform:translateY(-1px); box-shadow:0 5px 18px rgba(27,94,228,.38); }
.btn-submit:active  { transform:scale(.98); }
.btn-submit:disabled { opacity:.45; cursor:not-allowed; transform:none; box-shadow:none; }

/* ── Terms ── */
.terms-note { font-size:.6rem; color:var(--muted); text-align:center; margin-top:.6rem; line-height:1.6; }
.terms-note a { color:var(--blue); text-decoration:none; }

/* ── Footer ── */
.auth-footer { text-align:center; padding:.6rem 1.1rem .85rem; border-top:1px solid var(--border); }
.auth-footer a {
    color:var(--muted); text-decoration:none; font-size:.7rem; font-weight:600;
    display:inline-flex; align-items:center; gap:5px; transition:color .18s;
}
.auth-footer a:hover { color:var(--blue); }

/* ── Bottom sheet (same as dashboard confirm-sheet) ── */
.bio-overlay {
    display:none; position:fixed; inset:0;
    background:rgba(15,28,63,.55);
    backdrop-filter:blur(6px); -webkit-backdrop-filter:blur(6px);
    z-index:9999; align-items:flex-end; justify-content:center;
}
.bio-overlay.open { display:flex; }
.bio-sheet {
    background:var(--white); border-radius:22px 22px 0 0;
    width:100%; max-width:480px; padding:10px 20px 36px;
    animation:sheetUp .3s cubic-bezier(.34,1.2,.64,1);
}
@keyframes sheetUp { from{transform:translateY(100%);opacity:0} to{transform:translateY(0);opacity:1} }
.sheet-handle { width:38px; height:4px; border-radius:2px; background:var(--border); margin:0 auto 18px; }
.sheet-icon-wrap {
    width:58px; height:58px; border-radius:18px;
    background:var(--blueL); border:2px solid var(--blueM);
    display:flex; align-items:center; justify-content:center;
    font-size:1.5rem; color:var(--blue);
    margin:0 auto 14px;
    animation:bioPulse 1.4s ease-in-out infinite;
}
@keyframes bioPulse {
    0%,100% { box-shadow:0 0 0 0 rgba(27,94,228,.25); }
    50%      { box-shadow:0 0 0 10px rgba(27,94,228,0); }
}
.sheet-title { font-size:1rem; font-weight:800; color:var(--navy); text-align:center; margin-bottom:5px; }
.sheet-sub   { font-size:.75rem; color:var(--muted); text-align:center; line-height:1.6; margin-bottom:18px; }
.sheet-cancel {
    width:100%; padding:14px; border-radius:13px;
    border:1.5px solid var(--border); background:var(--bg);
    color:var(--sub); font-size:.85rem; font-weight:700;
    font-family:'Plus Jakarta Sans',sans-serif; cursor:pointer; transition:all .15s;
}
.sheet-cancel:active { background:var(--blueL); border-color:var(--blueM); color:var(--blue); }

/* ── Animations ── */
@keyframes fadeUp { from{opacity:0;transform:translateY(10px)} to{opacity:1;transform:none} }
</style>
</head>
<body>

<!-- Topbar — same as dashboard -->
<div class="topbar">
    <div class="topbar-brand">
        <div class="topbar-logo">Z</div>
        <span class="topbar-title">Agent Portal</span>
    </div>
</div>

<div class="page">

    <!-- Hero — same gradient as dashboard hero-card -->
    <div class="hero-card">
        <div class="hero-tag">UAE Property Map</div>
        <div class="hero-name">Welcome back 👋</div>
        <div class="hero-sub">Sign in to manage your listings &amp; wallet</div>
    </div>

    <div class="auth-card">

        <!-- Tabs -->
        <div class="auth-tabs">
            <button class="auth-tab <?= !$showRegister?'active':'' ?>" onclick="switchTab('login')">
                <i class="fas fa-arrow-right-to-bracket"></i> Sign In
            </button>
            <button class="auth-tab <?= $showRegister?'active':'' ?>" onclick="switchTab('register')">
                <i class="fas fa-user-plus"></i> Register
            </button>
        </div>

        <!-- ══ LOGIN ══ -->
        <div id="panel-login" class="auth-body" style="<?= $showRegister?'display:none':'' ?>">

            <div class="alert alert-offline" id="offline-banner">
                <i class="fas fa-wifi-slash"></i> You're offline — login requires internet.
            </div>
            <?php if ($error && !$showRegister): ?>
            <div class="alert alert-error"><i class="fas fa-exclamation-circle"></i> <?= htmlspecialchars($error) ?></div>
            <?php endif; ?>
            <div id="js-alert" style="display:none;"></div>

            <!-- Quick access: Face ID + Fingerprint + Google -->
            <span class="sec-label">Quick Access</span>
            <div class="quick-row">
                <button type="button" class="btn-quick" id="btn-face" onclick="triggerBiometric('face')">
                    <div class="bq-dot" id="face-dot"></div>
                    <div class="bq-icon"><i class="fas fa-face-smile-wink"></i></div>
                    <span class="bq-label">Face ID</span>
                </button>
                <button type="button" class="btn-quick" id="btn-finger" onclick="triggerBiometric('fingerprint')">
                    <div class="bq-dot" id="finger-dot"></div>
                    <div class="bq-icon"><i class="fas fa-fingerprint"></i></div>
                    <span class="bq-label">Fingerprint</span>
                </button>
                <a href="<?= htmlspecialchars($googleAuthUrl) ?>" class="btn-quick" style="color:var(--sub);">
                    <div class="bq-icon" style="background:rgba(66,133,244,.08);border-color:rgba(66,133,244,.2);">
                        <svg width="16" height="16" viewBox="0 0 24 24"><path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/><path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/><path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l3.66-2.84z"/><path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/></svg>
                    </div>
                    <span class="bq-label">Google</span>
                </a>
            </div>

            <div class="or-divider"><span>or sign in with username</span></div>

            <form method="post" id="login-form" autocomplete="on">
                <input type="hidden" name="mode" value="login">
                <div class="form-group">
                    <label class="field-label" for="username-input">Username</label>
                    <div class="input-wrap">
                        <i class="fas fa-user fi"></i>
                        <input type="text" name="username" id="username-input"
                               placeholder="Your username" required autocomplete="username"
                               value="<?= $remembered_username ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label class="field-label" for="password-input">Password</label>
                    <div class="input-wrap">
                        <i class="fas fa-lock fi"></i>
                        <input type="password" name="password" id="password-input"
                               placeholder="Your password" required autocomplete="current-password">
                        <button type="button" class="eye-btn" onclick="togglePw('password-input','eye-login')">
                            <i class="fas fa-eye" id="eye-login"></i>
                        </button>
                    </div>
                </div>
                <div class="remember-row">
                    <input type="checkbox" name="remember_me" id="remember-me" <?= $remembered_username?'checked':'' ?>>
                    <label for="remember-me">Remember me on this device</label>
                </div>
                <button type="submit" class="btn-submit" id="login-btn">
                    <i class="fas fa-arrow-right-to-bracket"></i> Sign In
                </button>
            </form>
        </div>

        <!-- ══ REGISTER ══ -->
        <div id="panel-register" class="auth-body" style="<?= $showRegister?'':'display:none' ?>">
            <?php if ($error && $showRegister): ?>
            <div class="alert alert-error"><i class="fas fa-exclamation-circle"></i> <?= htmlspecialchars($error) ?></div>
            <?php endif; ?>

            <span class="sec-label">Register via</span>
            <div class="quick-row" style="margin-bottom:.75rem;">
                <a href="<?= htmlspecialchars($googleAuthUrl) ?>" class="btn-quick" style="color:var(--sub);flex:none;width:100%;flex-direction:row;gap:8px;padding:.55rem .9rem;justify-content:center;">
                    <div class="bq-icon" style="background:rgba(66,133,244,.08);border-color:rgba(66,133,244,.2);width:28px;height:28px;border-radius:8px;">
                        <svg width="14" height="14" viewBox="0 0 24 24"><path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/><path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/><path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l3.66-2.84z"/><path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/></svg>
                    </div>
                    <span style="font-size:.75rem;font-weight:700;color:var(--text);">Register with Google</span>
                </a>
            </div>

            <div class="or-divider"><span>or create an account</span></div>

            <form method="post" id="register-form" autocomplete="on">
                <input type="hidden" name="mode" value="register">
                <div class="form-group">
                    <label class="field-label">Username</label>
                    <div class="input-wrap">
                        <i class="fas fa-at fi"></i>
                        <input type="text" name="reg_username" placeholder="Choose a username"
                               required autocomplete="username"
                               value="<?= htmlspecialchars($_POST['reg_username']??'') ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label class="field-label">WhatsApp Number</label>
                    <div class="input-wrap">
                        <i class="fab fa-whatsapp fi" style="color:#25D366;"></i>
                        <input type="tel" name="phone" placeholder="+971 50 000 0000"
                               required autocomplete="tel"
                               value="<?= htmlspecialchars($_POST['phone']??'') ?>">
                    </div>
                </div>
                <div class="field-row">
                    <div class="form-group">
                        <label class="field-label">Password</label>
                        <div class="input-wrap">
                            <i class="fas fa-lock fi"></i>
                            <input type="password" name="reg_password" id="reg-pw"
                                   placeholder="Min 6 chars" required autocomplete="new-password">
                            <button type="button" class="eye-btn" onclick="togglePw('reg-pw','eye-reg')">
                                <i class="fas fa-eye" id="eye-reg"></i>
                            </button>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="field-label">Confirm</label>
                        <div class="input-wrap">
                            <i class="fas fa-lock fi"></i>
                            <input type="password" name="confirm_password" id="reg-pw2"
                                   placeholder="Repeat" required autocomplete="new-password">
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn-submit">
                    <i class="fas fa-user-plus"></i> Create Account
                </button>
                <p class="terms-note">
                    By registering you agree to our <a href="/">Terms of Service</a> and <a href="/">Privacy Policy</a>.
                </p>
            </form>
        </div>

        <div class="auth-footer">
            <a href="/"><i class="fas fa-arrow-left"></i> Back to Property Map</a>
        </div>
    </div>
</div>

<!-- Biometric bottom sheet — same style as dashboard confirm sheet -->
<div class="bio-overlay" id="bio-overlay">
    <div class="bio-sheet">
        <div class="sheet-handle"></div>
        <div class="sheet-icon-wrap" id="bio-sheet-icon"><i class="fas fa-fingerprint"></i></div>
        <div class="sheet-title" id="bio-sheet-title">Verify Identity</div>
        <div class="sheet-sub" id="bio-sheet-sub">Use your device biometric to sign in instantly.</div>
        <button class="sheet-cancel" onclick="closeBioOverlay()">
            <i class="fas fa-xmark"></i> Cancel
        </button>
    </div>
</div>

<script>
const BIO_KEY = 'zeeae_agent_bio';

function switchTab(tab) {
    const isLogin = tab === 'login';
    document.getElementById('panel-login').style.display    = isLogin ? '' : 'none';
    document.getElementById('panel-register').style.display = isLogin ? 'none' : '';
    document.querySelectorAll('.auth-tab').forEach((t,i) => t.classList.toggle('active', isLogin ? i===0 : i===1));
    history.replaceState(null,'', isLogin ? '?' : '?register');
}

function updateOnline() {
    const banner = document.getElementById('offline-banner');
    const btn    = document.getElementById('login-btn');
    if (!navigator.onLine) { banner.classList.add('show'); if(btn) btn.disabled=true; }
    else { banner.classList.remove('show'); if(btn) btn.disabled=false; }
}
updateOnline();
window.addEventListener('offline', updateOnline);
window.addEventListener('online',  updateOnline);

function togglePw(id, iconId) {
    const inp = document.getElementById(id);
    const ico = document.getElementById(iconId);
    inp.type = inp.type === 'password' ? 'text' : 'password';
    if (ico) ico.className = inp.type === 'password' ? 'fas fa-eye' : 'fas fa-eye-slash';
}

function showJsAlert(type, html) {
    const el = document.getElementById('js-alert');
    el.className = 'alert alert-' + type;
    el.innerHTML = html;
    el.style.display = 'flex';
    setTimeout(() => el.style.display='none', 5000);
}

async function initBioDots() {
    const faceDot   = document.getElementById('face-dot');
    const fingerDot = document.getElementById('finger-dot');
    const faceBtn   = document.getElementById('btn-face');
    const fingerBtn = document.getElementById('btn-finger');

    if (!window.PublicKeyCredential) {
        faceBtn.classList.add('unavailable');
        fingerBtn.classList.add('unavailable');
        return;
    }
    const ok = await PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable().catch(()=>false);
    if (!ok) {
        faceBtn.classList.add('unavailable');
        fingerBtn.classList.add('unavailable');
        return;
    }
    if (localStorage.getItem(BIO_KEY)) {
        faceDot.classList.add('ready');
        fingerDot.classList.add('ready');
    }
}
initBioDots();

function closeBioOverlay() {
    document.getElementById('bio-overlay').classList.remove('open');
}

async function triggerBiometric(type) {
    if (!window.PublicKeyCredential) {
        showJsAlert('error','<i class="fas fa-times-circle"></i> Biometrics not supported on this device.'); return;
    }
    const ok = await PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable().catch(()=>false);
    if (!ok) {
        showJsAlert('error','<i class="fas fa-times-circle"></i> No biometric sensor found.'); return;
    }
    if (!localStorage.getItem(BIO_KEY)) {
        showJsAlert('error','<i class="fas fa-info-circle"></i> Sign in with password first to enable biometrics.'); return;
    }
    const icon  = document.getElementById('bio-sheet-icon');
    const title = document.getElementById('bio-sheet-title');
    const sub   = document.getElementById('bio-sheet-sub');
    if (type === 'face') {
        icon.innerHTML  = '<i class="fas fa-face-smile-wink"></i>';
        title.textContent = 'Face ID';
        sub.textContent   = 'Look at your device camera to verify.';
    } else {
        icon.innerHTML  = '<i class="fas fa-fingerprint"></i>';
        title.textContent = 'Fingerprint';
        sub.textContent   = 'Place your finger on the sensor.';
    }
    document.getElementById('bio-overlay').classList.add('open');
    setTimeout(() => doBiometricLogin(), 450);
}

async function doBiometricLogin() {
    const stored = localStorage.getItem(BIO_KEY);
    if (!stored) { closeBioOverlay(); return; }
    const { credId, username } = JSON.parse(stored);
    try {
        await navigator.credentials.get({
            publicKey:{
                challenge: crypto.getRandomValues(new Uint8Array(32)),
                rpId: location.hostname,
                allowCredentials:[{type:'public-key', id: new Uint8Array(credId).buffer}],
                userVerification:'required', timeout:30000
            }
        });
        closeBioOverlay();
        document.getElementById('username-input').value = username;
        document.getElementById('password-input').value = '__BIOMETRIC__';
        const hf = document.createElement('input');
        hf.type='hidden'; hf.name='biometric_login'; hf.value='1';
        document.getElementById('login-form').appendChild(hf);
        document.getElementById('login-form').submit();
    } catch(e) {
        closeBioOverlay();
        if (e.name !== 'NotAllowedError')
            showJsAlert('error','<i class="fas fa-times-circle"></i> Biometric failed — please use your password.');
    }
}

document.getElementById('login-form').addEventListener('submit', function(){
    const u = document.getElementById('username-input').value.trim();
    if (u) sessionStorage.setItem('bio_offer_user', u);
});

window._offerBio = async function(username) {
    if (!window.PublicKeyCredential) return;
    const ok = await PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable().catch(()=>false);
    if (!ok || localStorage.getItem(BIO_KEY)) return;
    setTimeout(async () => {
        try {
            const cred = await navigator.credentials.create({publicKey:{
                challenge: crypto.getRandomValues(new Uint8Array(32)),
                rp:{name:'zeeae.com',id:location.hostname},
                user:{id:new TextEncoder().encode(username),name:username,displayName:username},
                pubKeyCredParams:[{type:'public-key',alg:-7},{type:'public-key',alg:-257}],
                authenticatorSelection:{authenticatorAttachment:'platform',userVerification:'required'},
                timeout:30000
            }});
            localStorage.setItem(BIO_KEY, JSON.stringify({
                credId: Array.from(new Uint8Array(cred.rawId)), username
            }));
        } catch(e){}
    }, 600);
};
</script>
</body>
</html>