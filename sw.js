// ═══════════════════════════════════════════════════════════
//  ZeeAE Service Worker  –  v2.1
//  Fixes: (1) offline JSON error → returns offline.html
//         (2) caches visited pages for offline use
// ═══════════════════════════════════════════════════════════

const CACHE_NAME      = 'zeeae-v2';
const OFFLINE_URL     = '/offline.html';

// Assets that MUST be cached immediately on install
const PRECACHE_ASSETS = [
  '/',
  '/offline.html',
  '/manifest.json',
  '/icons/icon-192.png',
  '/icons/icon-512.png',
];

// ── INSTALL: pre-cache critical assets ──────────────────────
self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME).then(cache => {
      return cache.addAll(PRECACHE_ASSETS).catch(err => {
        // Don't fail install if some assets are missing
        console.warn('[SW] Pre-cache partial failure:', err);
      });
    }).then(() => self.skipWaiting())
  );
});

// ── ACTIVATE: remove old caches ─────────────────────────────
self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(keys =>
      Promise.all(
        keys
          .filter(k => k !== CACHE_NAME)
          .map(k  => caches.delete(k))
      )
    ).then(() => self.clients.claim())
  );
});

// ── FETCH: the main fix ─────────────────────────────────────
self.addEventListener('fetch', event => {
  const req = event.request;
  const url = new URL(req.url);

  // 1. Only handle same-origin requests (ignore Google Maps, CDNs, etc.)
  if (url.origin !== self.location.origin) return;

  // 2. API calls (api.php, api_*.php, agent-logout.php, etc.)
  //    → Network first, but return offline.html (NOT JSON) if offline
  //      and this is a navigation (browser page load)
  if (isAPICall(url.pathname)) {
    event.respondWith(networkOnlyWithOfflineFallback(req));
    return;
  }

  // 3. Navigation requests (page loads: .php, /, etc.)
  //    → Network first → cache fallback → offline.html
  if (req.mode === 'navigate') {
    event.respondWith(networkFirstWithCache(req));
    return;
  }

  // 4. Static assets (CSS, JS, images, fonts)
  //    → Cache first → network fallback → cache update
  if (isStaticAsset(url.pathname)) {
    event.respondWith(cacheFirstWithNetworkFallback(req));
    return;
  }

  // 5. Everything else → network only (don't interfere)
});

// ────────────────────────────────────────────────────────────
//  Strategy helpers
// ────────────────────────────────────────────────────────────

// API calls: try network; if offline and this came from a navigation,
// return offline.html so the user never sees raw JSON.
async function networkOnlyWithOfflineFallback(req) {
  try {
    return await fetch(req);
  } catch {
    // Offline – return offline page if browser navigated here directly
    if (req.mode === 'navigate') return getCachedOfflinePage();
    // For XHR/fetch calls from JS, return a clean JSON offline response
    return new Response(
      JSON.stringify({ ok: false, error: 'offline', offline: true }),
      { status: 503, headers: { 'Content-Type': 'application/json' } }
    );
  }
}

// Page loads: try network (and cache the response), fall back to
// cached version, then offline.html — never a raw error.
async function networkFirstWithCache(req) {
  const cache = await caches.open(CACHE_NAME);
  try {
    const networkResponse = await fetch(req);
    // Cache successful HTML responses for offline use
    if (networkResponse.ok && networkResponse.status === 200) {
      cache.put(req, networkResponse.clone());
    }
    return networkResponse;
  } catch {
    // Offline – try cached version of this page
    const cached = await cache.match(req);
    if (cached) return cached;
    // No cache – show friendly offline page
    return getCachedOfflinePage();
  }
}

// Static assets: serve from cache instantly; update cache in background.
async function cacheFirstWithNetworkFallback(req) {
  const cache  = await caches.open(CACHE_NAME);
  const cached = await cache.match(req);
  if (cached) {
    // Refresh cache in background (stale-while-revalidate)
    fetch(req).then(r => { if (r.ok) cache.put(req, r); }).catch(() => {});
    return cached;
  }
  try {
    const networkResponse = await fetch(req);
    if (networkResponse.ok) cache.put(req, networkResponse.clone());
    return networkResponse;
  } catch {
    // Nothing we can do for missing static assets offline
    return new Response('', { status: 503 });
  }
}

// Get the cached offline page (or a minimal inline fallback)
async function getCachedOfflinePage() {
  const cache  = await caches.open(CACHE_NAME);
  const cached = await cache.match(OFFLINE_URL);
  if (cached) return cached;
  // Ultra-fallback if offline.html itself wasn't cached
  return new Response(
    `<!DOCTYPE html><html><head><meta charset="UTF-8">
     <meta name="viewport" content="width=device-width,initial-scale=1">
     <title>No Connection – ZeeAE</title>
     <style>body{font-family:sans-serif;background:#120928;color:#f0eeff;display:flex;align-items:center;justify-content:center;height:100vh;margin:0;flex-direction:column;gap:16px;text-align:center;padding:20px;}
     .icon{font-size:3rem;}h1{font-size:1.3rem;margin:0;}p{color:#8b7ebb;font-size:.9rem;max-width:300px;}
     button{background:#667eea;color:white;border:none;padding:12px 28px;border-radius:10px;font-size:.9rem;font-weight:700;cursor:pointer;margin-top:8px;}
     </style></head><body>
     <div class="icon">📡</div>
     <h1>No Internet Connection</h1>
     <p>Please check your connection and try again.</p>
     <button onclick="location.reload()">Try Again</button>
     </body></html>`,
    { status: 200, headers: { 'Content-Type': 'text/html' } }
  );
}

// ────────────────────────────────────────────────────────────
//  Helpers
// ────────────────────────────────────────────────────────────

function isAPICall(pathname) {
  return /\/(api|api_|agent-logout|agent-login|agent-refer)/.test(pathname) ||
         pathname.endsWith('.php') && !pathname.startsWith('/agent/') && !pathname.startsWith('/index');
}

function isStaticAsset(pathname) {
  return /\.(css|js|png|jpg|jpeg|gif|svg|webp|ico|woff|woff2|ttf|eot)$/i.test(pathname);
}