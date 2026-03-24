# PropertyFinder UAE - Full Setup Guide

## Folder Structure

```
/
├── index.html              ← Public map (unchanged)
├── agent-login.php         ← Agent login page
├── agent-logout.php        ← Agent logout
├── api.php                 ← API: serves properties + agents (expired filtered out)
├── api_areas.php           ← API: serves areas per emirate
├── database.sql            ← Full database schema + default data
│
├── admin/
│   ├── config.php          ← Database config (edit credentials here)
│   ├── index.php           ← Admin login
│   ├── dashboard.php       ← Admin dashboard with stats
│   ├── properties.php      ← Manage ALL properties (incl. agent ones)
│   ├── agents.php          ← Add agents + set login credentials
│   ├── areas.php           ← Manage areas per emirate
│   └── logout.php
│
└── agent/
    ├── auth.php            ← Session guard
    ├── dashboard.php       ← Agent dashboard with stats
    ├── submit-property.php ← Submit new property (14-day auto-expiry)
    └── my-properties.php   ← Agent's own listings: edit, delete, renew
```

## Setup Steps

### 1. Database
- Import `database.sql` in your hosting control panel (phpMyAdmin)
- This creates all tables and inserts default areas

### 2. Config
Edit `admin/config.php`:
```php
$host = 'localhost';
$dbname = 'YOUR_DATABASE_NAME';
$username = 'YOUR_DB_USER';
$password = 'YOUR_DB_PASSWORD';
```

### 3. Upload Files
Upload ALL files to your server root (e.g., `public_html/`)

### 4. Login
- **Admin:** `yoursite.com/admin/` → Username: `admin`, Password: `password`
  ⚠️ Change the default password immediately!
- **Agents:** `yoursite.com/agent-login.php` → Use credentials set in admin panel

---

## Key Features

### Admin Panel
- **Properties**: View/edit/delete ALL properties, including those submitted by agents
- **Agents**: Add agents with custom username/password for portal login
- **Areas**: Add area names + GPS coordinates that appear in agent submission form

### Agent Portal
- Login at `/agent-login.php`
- Submit properties → auto-expire after **14 days**
- Edit or delete own listings
- Renew a listing (resets 14-day timer)

### Public Map
- Shows only **non-expired** active properties
- Agents and properties as map markers
- Filter by emirate, toggle properties/agents

---

## Changing Admin Password

Run this in phpMyAdmin:
```sql
UPDATE admin_users 
SET password_hash = '$2y$10$YOUR_HASH_HERE' 
WHERE username = 'admin';
```
Generate hash with PHP: `echo password_hash('your_new_password', PASSWORD_DEFAULT);`
