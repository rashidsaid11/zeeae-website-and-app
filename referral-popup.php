<?php
/* ================================================================
   referral-popup.php
   PASTE THIS SNIPPET into agent/dashboard.php

   1. Add the PHP block near the TOP of dashboard.php (after session
      start / auth check), before any HTML output:

        // ── Handle referral code submission from popup ──
        if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['referral_popup_code'])) {
            $ref = strtoupper(trim($_POST['referral_popup_code']));
            if ($ref) {
                $refStmt = $pdo->prepare("SELECT id FROM agents WHERE referral_code=? AND id != ?");
                $refStmt->execute([$ref, $agent_id]);
                $referrer_id = $refStmt->fetchColumn();
                if ($referrer_id) {
                    // Link referrer
                    $pdo->prepare("UPDATE agents SET referred_by=? WHERE id=? AND referred_by IS NULL")
                        ->execute([$referrer_id, $agent_id]);
                    // Pay 100 AED joining bonus to referrer
                    $pdo->prepare("INSERT IGNORE INTO agent_wallets (agent_id) VALUES (?)")->execute([$referrer_id]);
                    $pdo->prepare("UPDATE agent_wallets SET referral_bal=referral_bal+100.00 WHERE agent_id=?")->execute([$referrer_id]);
                    $refBal = (float)$pdo->query("SELECT referral_bal FROM agent_wallets WHERE agent_id=$referrer_id")->fetchColumn();
                    $pdo->prepare("INSERT INTO wallet_transactions (agent_id,type,amount,direction,wallet_type,balance_after,description) VALUES (?,?,?,?,?,?,?)")
                        ->execute([$referrer_id,'referral_earned',100.00,'credit','referral',$refBal,"Joining bonus from new agent ID $agent_id"]);
                }
            }
            // Clear popup flag regardless of whether code was valid
            unset($_SESSION['show_referral_popup']);
            header('Location: dashboard.php'); exit;
        }

   2. Paste the HTML + CSS + JS below just before </body> in dashboard.php
   ================================================================ */
?>

<!-- ── REFERRAL POPUP STYLES ── -->
<style>
#ref-popup-overlay {
    display: none;
    position: fixed; inset: 0;
    background: rgba(15,28,63,.65);
    backdrop-filter: blur(6px);
    z-index: 9000;
    align-items: center;
    justify-content: center;
    padding: 1rem;
}
#ref-popup-overlay.show { display: flex; animation: popOverlayIn .25s ease; }
@keyframes popOverlayIn { from{opacity:0} to{opacity:1} }
.ref-popup {
    background: var(--white);
    border: 1px solid var(--border);
    border-radius: 22px;
    width: 100%;
    max-width: 360px;
    overflow: hidden;
    box-shadow: 0 20px 60px rgba(27,94,228,.2);
    animation: popCardIn .3s cubic-bezier(.34,1.56,.64,1);
}
@keyframes popCardIn { from{opacity:0;transform:scale(.88) translateY(16px)} to{opacity:1;transform:scale(1) translateY(0)} }
.ref-popup-header {
    background: linear-gradient(135deg, var(--blue2), var(--blue));
    padding: 1.2rem 1.3rem 1rem;
    position: relative; overflow: hidden;
}
.ref-popup-header::before {
    content: ''; position: absolute;
    top: -24px; right: -24px;
    width: 90px; height: 90px;
    border-radius: 50%;
    background: rgba(255,255,255,.07);
    pointer-events: none;
}
.ref-popup-icon {
    width: 44px; height: 44px;
    background: rgba(255,255,255,.18);
    border: 1px solid rgba(255,255,255,.28);
    border-radius: 13px;
    display: flex; align-items: center; justify-content: center;
    font-size: 1.2rem; color: #fff;
    margin-bottom: .6rem;
}
.ref-popup-title {
    font-size: 1rem; font-weight: 800;
    color: #fff; letter-spacing: -.02em;
    margin-bottom: 3px;
}
.ref-popup-sub {
    font-size: .7rem; color: rgba(255,255,255,.65); font-weight: 500;
}
.ref-popup-body { padding: 1.1rem 1.3rem 1.3rem; }
.ref-popup-desc {
    font-size: .78rem; color: var(--muted); line-height: 1.6;
    margin-bottom: 1rem;
}
.ref-popup-desc strong { color: var(--text); }
.ref-input-wrap { position: relative; margin-bottom: .85rem; }
.ref-input-wrap .fi {
    position: absolute; left: 11px; top: 50%;
    transform: translateY(-50%);
    color: var(--muted); font-size: .72rem; pointer-events: none;
}
.ref-input-wrap:focus-within .fi { color: var(--blue); }
#ref-code-input {
    width: 100%;
    padding: .55rem 1rem .55rem 2.2rem;
    background: var(--bg);
    border: 1.5px solid var(--border);
    border-radius: 10px;
    font-size: .9rem;
    font-family: 'DM Mono', monospace;
    font-weight: 600;
    color: var(--text);
    text-transform: uppercase;
    letter-spacing: .08em;
    transition: border .18s, box-shadow .18s;
}
#ref-code-input::placeholder { color: var(--muted); font-family: 'Plus Jakarta Sans',sans-serif; letter-spacing: 0; font-weight: 500; font-size: .8rem; }
#ref-code-input:focus { outline: none; border-color: var(--blue); background: var(--white); box-shadow: 0 0 0 3px var(--blueL); }
.ref-popup-actions { display: flex; gap: .5rem; }
.btn-ref-submit {
    flex: 1;
    padding: .6rem;
    background: linear-gradient(135deg, var(--blue2), var(--blue));
    color: white; border: none; border-radius: 10px;
    font-family: 'Plus Jakarta Sans', sans-serif;
    font-size: .82rem; font-weight: 800;
    cursor: pointer; display: flex; align-items: center;
    justify-content: center; gap: 7px;
    transition: all .18s;
    box-shadow: 0 3px 12px rgba(27,94,228,.28);
}
.btn-ref-submit:hover { transform: translateY(-1px); box-shadow: 0 5px 18px rgba(27,94,228,.38); }
.btn-ref-submit:active { transform: scale(.97); }
.btn-ref-skip {
    padding: .6rem 1rem;
    background: var(--bg);
    border: 1.5px solid var(--border);
    border-radius: 10px;
    font-family: 'Plus Jakarta Sans', sans-serif;
    font-size: .78rem; font-weight: 700;
    color: var(--muted); cursor: pointer;
    transition: all .18s;
}
.btn-ref-skip:hover { background: var(--blueL); border-color: var(--blueM); color: var(--blue); }
</style>

<!-- ── REFERRAL POPUP HTML ── -->
<div id="ref-popup-overlay" <?php if (!empty($_SESSION['show_referral_popup'])) echo 'class="show"'; ?>>
    <div class="ref-popup">
        <div class="ref-popup-header">
            <div class="ref-popup-icon"><i class="fas fa-gift"></i></div>
            <div class="ref-popup-title">Got a referral code?</div>
            <div class="ref-popup-sub">Welcome to ZeeAE Agent Portal 🎉</div>
        </div>
        <div class="ref-popup-body">
            <p class="ref-popup-desc">
                If a friend invited you, enter their referral code below.<br>
                <strong>They'll earn 100 AED</strong> as a joining bonus — you can skip if you don't have one.
            </p>
            <form method="post" action="dashboard.php">
                <div class="ref-input-wrap">
                    <i class="fas fa-hashtag fi"></i>
                    <input type="text" id="ref-code-input" name="referral_popup_code"
                           placeholder="Enter referral code e.g. A1B2C3D4"
                           autocomplete="off"
                           oninput="this.value=this.value.toUpperCase()">
                </div>
                <div class="ref-popup-actions">
                    <button type="submit" class="btn-ref-submit">
                        <i class="fas fa-check"></i> Apply Code
                    </button>
                    <button type="submit" name="referral_popup_code" value="" class="btn-ref-skip">
                        Skip
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- ── REFERRAL POPUP JS ── -->
<script>
// Auto-show if session flag is set (PHP already adds class="show" above)
// This is just a safety fallback
<?php if (!empty($_SESSION['show_referral_popup'])): ?>
document.getElementById('ref-popup-overlay').classList.add('show');
<?php endif; ?>
</script>