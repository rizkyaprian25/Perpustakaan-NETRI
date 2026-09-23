<?php
/**
 * ==============================================================================
 * Skrip Diagnostik Kesiapan Server Windows
 * Perpustakaan SMPN 3 CIBUNGBULANG - SLiMS 9 Bulian
 * Standar Rekayasa: SoftwareEngineer.md (Fase 4 & 5 - Quality Gate & Readiness)
 * ==============================================================================
 */

echo "====================================================================\n";
echo "   DIAGNOSTIK KESIAPAN SISTEM SERVER WINDOWS - SMPN 3 CIBUNGBULANG   \n";
echo "====================================================================\n\n";

$all_passed = true;

// 1. Cek Versi PHP
echo "[1] Memeriksa Versi PHP...\n";
$php_version = phpversion();
echo "    Versi Terdeteksi: PHP {$php_version}\n";
if (version_compare($php_version, '8.1.0', '>=')) {
    echo "    -> STATUS: [OK] Memenuhi syarat minimal PHP 8.1+\n";
} else {
    echo "    -> STATUS: [GAGAL] Disarankan menggunakan PHP 8.1 atau 8.2/8.3 untuk performa optimal.\n";
    $all_passed = false;
}
echo "\n";

// 2. Cek Ekstensi PHP Wajib
echo "[2] Memeriksa Ekstensi PHP (php.ini)...\n";
$required_extensions = [
    'mysqli'    => 'Driver koneksi basis data MySQLi bawaan SLiMS',
    'pdo_mysql' => 'Driver PDO MySQL untuk transaksi dan otentikasi',
    'gd'        => 'Manipulasi gambar sampul buku dan barcode/QR kartu anggota',
    'mbstring'  => 'Pemrosesan string multibyte untuk katalog dan pencarian',
    'curl'      => 'Pengambilan metadata buku online & z39.50',
    'intl'      => 'Lokalisasi tanggal dan format bahasa Indonesia',
    'zip'       => 'Ekspor/impor data cadangan dan template',
    'fileinfo'  => 'Validasi berkas upload lampiran e-book & gambar',
    'openssl'   => 'Enkripsi data dan komunikasi HTTPS aman',
    'exif'      => 'Membaca metadata foto anggota dan buku'
];

foreach ($required_extensions as $ext => $desc) {
    if (extension_loaded($ext)) {
        echo "    [OK] {$ext} : Aktif ({$desc})\n";
    } else {
        echo "    [PERINGATAN] {$ext} : Tidak Aktif ({$desc})\n";
        echo "      -> Solusi: Buka php.ini, hapus tanda titik-koma ';' pada 'extension={$ext}' dan restart Apache/Nginx.\n";
        $all_passed = false;
    }
}
echo "\n";

// 3. Cek Izin Tulis Direktori
echo "[3] Memeriksa Izin Tulis Direktori Upload & Media...\n";
$base_dir = dirname(__DIR__);
$writable_dirs = [
    'files'            => 'Penyimpanan berkas lampiran buku dan e-book',
    'images'           => 'Penyimpanan gambar umum dan logo',
    'images/persons'   => 'Penyimpanan foto profil siswa & staf',
    'images/docs'      => 'Penyimpanan foto sampul buku pelajaran',
    'repository'       => 'Penyimpanan arsip digital sekolah',
    'config'           => 'Penyimpanan file konfigurasi sistem'
];

foreach ($writable_dirs as $rel_path => $desc) {
    $full_path = $base_dir . DIRECTORY_SEPARATOR . str_replace('/', DIRECTORY_SEPARATOR, $rel_path);
    if (!file_exists($full_path)) {
        @mkdir($full_path, 0777, true);
    }
    
    if (is_writable($full_path)) {
        echo "    [OK] {$rel_path} : Dapat Ditulis ({$desc})\n";
    } else {
        echo "    [GAGAL] {$rel_path} : Tidak Dapat Ditulis!\n";
        echo "      -> Solusi: Periksa Security Properties folder di Windows dan berikan izin 'Modify' untuk Users / IUSR.\n";
        $all_passed = false;
    }
}
echo "\n";

// 4. Cek Koneksi Basis Data
echo "[4] Memeriksa Koneksi Basis Data MariaDB/MySQL...\n";
$db_host = defined('DB_HOST') ? DB_HOST : (getenv('DB_HOST') ?: '127.0.0.1');
$db_port = defined('DB_PORT') ? (int)DB_PORT : (int)(getenv('DB_PORT') ?: 3306);
$db_name = defined('DB_NAME') ? DB_NAME : (getenv('DB_NAME') ?: 'db_perpus_smpn3');
$db_user = defined('DB_USERNAME') ? DB_USERNAME : (getenv('DB_USERNAME') ?: 'root');
$db_pass = defined('DB_PASSWORD') ? DB_PASSWORD : (getenv('DB_PASSWORD') !== false ? getenv('DB_PASSWORD') : '');

if (file_exists($base_dir . '/config/database.php')) {
    $db_cfg = require $base_dir . '/config/database.php';
    $profile = $db_cfg['default_profile'] ?? 'SLiMS';
    if (isset($db_cfg['nodes'][$profile])) {
        $node = $db_cfg['nodes'][$profile];
        $db_host = $node['host'] ?? $db_host;
        $db_port = (int)($node['port'] ?? $db_port);
        $db_name = $node['database'] ?? $db_name;
        $db_user = $node['username'] ?? $db_user;
        $db_pass = $node['password'] ?? $db_pass;
    }
}

try {
    $test_pdo = new PDO("mysql:host={$db_host};port={$db_port};charset=utf8mb4", $db_user, $db_pass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_TIMEOUT => 3
    ]);
    echo "    [OK] Berhasil terhubung ke MySQL/MariaDB ({$db_host}:{$db_port}) sebagai user '{$db_user}'.\n";

    // Cek keberadaan basis data
    $stmt = $test_pdo->query("SHOW DATABASES LIKE '{$db_name}'");
    if ($stmt->fetch()) {
        echo "    [OK] Basis data '{$db_name}' ditemukan.\n";
    } else {
        echo "    [PERINGATAN] Basis data '{$db_name}' belum dibuat.\n";
        echo "      -> Solusi: Jalankan skrip 'scripts\\install_server_windows.bat' untuk membuat dan mengimpor basis data.\n";
        $all_passed = false;
    }
} catch (Exception $e) {
    echo "    [PERINGATAN] Gagal terhubung ke MySQL/MariaDB: " . $e->getMessage() . "\n";
    echo "      -> Pastikan service MariaDB/MySQL (Laragon/XAMPP/Windows Service) sudah berjalan di port {$db_port}.\n";
}
echo "\n";

// 5. Kesimpulan Diagnostik
echo "====================================================================\n";
if ($all_passed) {
    echo "  HASIL: SERVER WINDOWS SIAP DIGUNAKAN (READY FOR PRODUCTION)!\n";
    echo "  Silakan jalankan sistem atau akses melalui peramban web.\n";
} else {
    echo "  HASIL: ADA BEBERAPA PENGATURAN YANG PERLU DISESUAIKAN.\n";
    echo "  Ikuti petunjuk solusi pada bagian bertanda [PERINGATAN] / [GAGAL] di atas.\n";
}
echo "====================================================================\n";
