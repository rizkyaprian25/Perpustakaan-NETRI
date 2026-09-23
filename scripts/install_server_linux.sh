#!/usr/bin/env bash
# ==============================================================================
# Skrip Otomasi Instalasi Server Fisik Linux (Ubuntu/Debian)
# Perpustakaan SMPN 3 CIBUNGBULANG - SLiMS 9 Bulian
# Standar Rekayasa: SoftwareEngineer.md (Fase 5 - Runbook Rilis)
# ==============================================================================

set -euo pipefail

# Pastikan dijalankan sebagai root / sudo
if [ "$EUID" -ne 0 ]; then
  echo "[-] Skrip ini wajib dijalankan dengan hak akses root atau sudo: sudo bash $0"
  exit 1
fi

echo "============================================================"
echo "  MEMULAI INSTALASI PERPUSTAKAAN SMPN 3 CIBUNGBULANG (LAN)  "
echo "============================================================"

# 1. Update Repositori & Paket Sistem
echo "[1/7] Memperbarui paket sistem operasi..."
apt-get update -y
apt-get upgrade -y

# 2. Instalasi Web Server Apache & Basis Data MariaDB
echo "[2/7] Memasang Apache 2 dan MariaDB Server..."
apt-get install -y apache2 mariadb-server curl git unzip

# 3. Instalasi PHP 8.2 & Ekstensi yang Dibutuhkan SLiMS 9
echo "[3/7] Memasang PHP 8.2 dan ekstensi modul SLiMS..."
apt-get install -y php8.2 php8.2-cli php8.2-common php8.2-mysql php8.2-zip \
  php8.2-gd php8.2-mbstring php8.2-curl php8.2-xml php8.2-intl libapache2-mod-php8.2

# Aktifkan modul rewrite pada Apache
a2enmod rewrite

# 4. Penataan Direktori Web Aplikasi
APP_DIR="/var/www/html/perpustakaan"
echo "[4/7] Menyalin aplikasi ke $APP_DIR..."
mkdir -p "$APP_DIR"
cp -r . "$APP_DIR/"

# Berikan izin kepemilikan ke pengguna web server www-data
chown -R www-data:www-data "$APP_DIR"
chmod -R 755 "$APP_DIR"
chmod -R 775 "$APP_DIR/files" "$APP_DIR/images/persons" "$APP_DIR/images/docs" "$APP_DIR/repository"

# 5. Konfigurasi Basis Data MariaDB
DB_NAME="db_perpus_smpn3"
DB_USER="perpus_admin"
DB_PASS="PerpusSMPN3Cibungbulang2026!"

echo "[5/7] Mengonfigurasi basis data $DB_NAME..."
mysql -e "CREATE DATABASE IF NOT EXISTS \`$DB_NAME\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
mysql -e "CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';"
mysql -e "GRANT ALL PRIVILEGES ON \`$DB_NAME\`.* TO '$DB_USER'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

# Impor Skema Dasar SLiMS 9 & Seeder SMPN 3 Cibungbulang
echo "      Mengimpor skema dasar SLiMS 9..."
mysql "$DB_NAME" < "$APP_DIR/database/schema_smpn3.sql"

echo "      Menerapkan data awal & metadata SMPN 3 Cibungbulang..."
mysql "$DB_NAME" < "$APP_DIR/database/seed_smpn3.sql"

# Buat file konfigurasi lokal
cat <<EOF > "$APP_DIR/config/sysconfig.local.inc.php"
<?php
define('DB_HOST', 'localhost');
define('DB_PORT', '3306');
define('DB_NAME', '$DB_NAME');
define('DB_USERNAME', '$DB_USER');
define('DB_PASSWORD', '$DB_PASS');

\$sysconf['library_name'] = 'SMPN 3 CIBUNGBULANG';
\$sysconf['library_subname'] = 'Perpustakaan Digital & Pusat Sumber Belajar';
\$sysconf['template']['theme'] = 'smpn3_bulian';
\$sysconf['template']['css'] = \$sysconf['template']['dir'] . '/' . \$sysconf['template']['theme'] . '/style.css';
EOF
chown www-data:www-data "$APP_DIR/config/sysconfig.local.inc.php"

# 6. Konfigurasi Apache VirtualHost
VHOST_CONF="/etc/apache2/sites-available/perpustakaan.conf"
echo "[6/7] Membuat konfigurasi VirtualHost Apache..."
cat <<EOF > "$VHOST_CONF"
<VirtualHost *:80>
    ServerAdmin perpustakaan@smpn3cibungbulang.sch.id
    DocumentRoot $APP_DIR
    ServerName perpustakaan.smpn3cibungbulang.lan

    <Directory $APP_DIR>
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog \${APACHE_LOG_DIR}/perpus_error.log
    CustomLog \${APACHE_LOG_DIR}/perpus_access.log combined
</VirtualHost>
EOF

a2ensite perpustakaan.conf
a2dissite 000-default.conf || true
systemctl restart apache2
systemctl enable apache2
systemctl enable mariadb

# 7. Penyiapan Cron Job Cadangan Harian
echo "[7/7] Menjadwalkan tugas backup otomatis harian..."
chmod +x "$APP_DIR/scripts/backup_database.sh"
(crontab -l 2>/dev/null | grep -v "backup_database.sh" || true; echo "0 16 * * * /bin/bash $APP_DIR/scripts/backup_database.sh >> /var/log/perpus_backup.log 2>&1") | crontab -

# Dapatkan IP Address server fisik
SERVER_IP=$(hostname -I | awk '{print $1}')

echo ""
echo "============================================================"
echo "  INSTALASI SELESAI & SISTEM SIAP DIGUNAKAN!               "
echo "============================================================"
echo "  Katalog OPAC Siswa : http://$SERVER_IP/"
echo "  Anjungan Buku Tamu : http://$SERVER_IP/visitor_kiosk.php"
echo "  Area Login Admin   : http://$SERVER_IP/admin/ (User: admin | Pass: admin)"
echo ""
echo "  PENTING: Segera ganti kata sandi admin default setelah login!"
echo "============================================================"
