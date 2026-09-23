<?php
/**
 * ==============================================================================
 * Skrip Verifikasi Mandiri Sistem (System Quality Gate Checker)
 * Perpustakaan SMPN 3 CIBUNGBULANG - SLiMS 9 Bulian
 * Standar Rekayasa: SoftwareEngineer.md (Fase 4 - Quality Gate)
 * 
 * Cara Menjalankan di Terminal Server:
 * php scripts/verify_system.php
 * ==============================================================================
 */

echo "\n============================================================\n";
echo "   GERBANG KUALITAS SISTEM - SMPN 3 CIBUNGBULANG (SLiMS 9)  \n";
echo "============================================================\n\n";

$pass_count = 0;
$fail_count = 0;
$warn_count = 0;

function check_result($label, $status, $detail = '') {
    global $pass_count, $fail_count, $warn_count;
    if ($status === 'PASS') {
        $pass_count++;
        echo " [✓ LULUS]  $label $detail\n";
    } elseif ($status === 'WARN') {
        $warn_count++;
        echo " [! PERINGATAN] $label $detail\n";
    } else {
        $fail_count++;
        echo " [✗ GAGAL]  $label $detail\n";
    }
}

// 1. Uji Versi PHP
$php_version = phpversion();
if (version_compare($php_version, '8.1.0', '>=')) {
    check_result("Versi PHP ($php_version)", 'PASS', "- Kompatibel Penuh SLiMS 9 Bulian");
} elseif (version_compare($php_version, '7.4.0', '>=')) {
    check_result("Versi PHP ($php_version)", 'WARN', "- Disarankan upgrade ke PHP 8.1/8.2");
} else {
    check_result("Versi PHP ($php_version)", 'FAIL', "- Minimal membutuhkan PHP 7.4+");
}

// 2. Uji Ekstensi PHP Wajib
$required_extensions = [
    'pdo_mysql' => 'Koneksi Database PDO',
    'mysqli'    => 'Koneksi Database MySQLi Legacy',
    'mbstring'  => 'Manipulasi String Multi-byte',
    'gd'        => 'Pemrosesan Gambar & Barcode',
    'curl'      => 'Komunikasi HTTP/API',
    'zip'       => 'Ekstraksi Arsip & Backup',
    'fileinfo'  => 'Deteksi Tipe MIME Unggahan',
    'json'      => 'Parsing Konfigurasi JSON'
];

foreach ($required_extensions as $ext => $description) {
    if (extension_loaded($ext)) {
        check_result("Ekstensi PHP: $ext", 'PASS', "($description)");
    } else {
        check_result("Ekstensi PHP: $ext", 'FAIL', "($description TIDAK AKTIF)");
    }
}

// 3. Uji Izin Tulis Direktori Penting (Write Permissions)
$writable_directories = [
    'files'          => 'Direktori Berkas Utama',
    'files/backup'   => 'Direktori Arsip Backup',
    'images/persons' => 'Foto Anggota Siswa/Guru',
    'images/docs'    => 'Gambar Cover Buku',
    'repository'     => 'Repositori File Digital'
];

$base_dir = dirname(__DIR__);
foreach ($writable_directories as $dir => $desc) {
    $full_path = $base_dir . DIRECTORY_SEPARATOR . $dir;
    if (!is_dir($full_path)) {
        @mkdir($full_path, 0777, true);
    }
    if (is_writable($full_path)) {
        check_result("Izin Tulis: $dir/", 'PASS', "($desc)");
    } else {
        check_result("Izin Tulis: $dir/", 'FAIL', "($desc TIDAK BISA DITULIS)");
    }
}

// 4. Uji Ketersediaan File Template Kustom SMPN 3
$custom_files = [
    'template/smpn3_bulian/index_template.inc.php' => 'Template OPAC Kustom',
    'template/smpn3_bulian/style.css'              => 'Stylesheet Apple HIG',
    'images/smpn3_logo.svg'                        => 'Logo Vektor Sekolah',
    'config/school_config.json'                    => 'SSOT Metadata Sekolah',
    'database/seed_smpn3.sql'                      => 'Skrip Seeder Basis Data',
    'visitor_kiosk.php'                            => 'Anjungan Presensi Mandiri'
];

foreach ($custom_files as $file => $desc) {
    $file_path = $base_dir . DIRECTORY_SEPARATOR . $file;
    if (file_exists($file_path)) {
        check_result("Aset Kustom: $file", 'PASS', "($desc)");
    } else {
        check_result("Aset Kustom: $file", 'FAIL', "($desc TIDAK DITEMUKAN)");
    }
}

// 5. Kesimpulan
echo "\n------------------------------------------------------------\n";
echo "Hasil Pengujian: LULUS = $pass_count | PERINGATAN = $warn_count | GAGAL = $fail_count\n";

if ($fail_count === 0) {
    echo "Status Kesiapan: SISTEM SIAP DIGUNAKAN DI SERVER FISIK SEKOLAH.\n";
    echo "============================================================\n\n";
    exit(0);
} else {
    echo "Status Kesiapan: TERDAPAT $fail_count MASALAH YANG WAJIB DIPERBAIKI SEBELUM GO-LIVE.\n";
    echo "============================================================\n\n";
    exit(1);
}
