<?php
require_once 'admin/config.php';

$ref_code      = trim($_GET['ref'] ?? '');
$referrer_name = '';

if ($ref_code !== '') {
    try {
        // No status filter — find any agent with this code
        $rs = $pdo->prepare("SELECT name FROM agents WHERE referral_code = ?");
        $rs->execute([$ref_code]);
        $referrer = $rs->fetch();
        if ($referrer) $referrer_name = $referrer['name'];
    } catch (Exception $e) {}
}

$wa_number = '971529011618';

if ($referrer_name !== '') {
    // Referrer found — full personalised message
    $wa_message = "Hi, I am interested to join as an agent to list properties in my area. I am referred by {$referrer_name} and the referral code is {$ref_code}.";
} elseif ($ref_code !== '') {
    // Code in URL but agent not found in DB — still pass the code
    $wa_message = "Hi, I am interested to join as an agent to list properties in my area. My referral code is {$ref_code}.";
} else {
    // No referral at all
    $wa_message = "Hello, I want to become an agent on ZeeAE and list properties in my area.";
}

$wa_link = 'https://wa.me/' . $wa_number . '?text=' . rawurlencode($wa_message);

header('Location: ' . $wa_link);
exit;