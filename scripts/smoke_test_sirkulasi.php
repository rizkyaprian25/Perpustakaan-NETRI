<?php
/**
 * ==============================================================================
 * Smoke Test Logika Bisnis Sirkulasi & Denda SMPN 3 CIBUNGBULANG
 * Standar Rekayasa: SoftwareEngineer.md (Fase 4 - Quality Gate & Smoke Testing)
 * 
 * Cara Menjalankan:
 * php scripts/smoke_test_sirkulasi.php
 * ==============================================================================
 */

echo "\n============================================================\n";
echo "   SMOKE TEST LOGIKA BISNIS SIRKULASI SMPN 3 CIBUNGBULANG   \n";
echo "============================================================\n\n";

$tests_passed = 0;
$tests_failed = 0;

function assert_test($description, $condition, $detail = '') {
    global $tests_passed, $tests_failed;
    if ($condition) {
        $tests_passed++;
        echo " [✓ LULUS] $description $detail\n";
    } else {
        $tests_failed++;
        echo " [✗ GAGAL] $description $detail\n";
    }
}

// 1. Muat Konfigurasi SSOT Sekolah
$config_file = dirname(__DIR__) . '/config/school_config.json';
$config_data = json_decode(file_get_contents($config_file), true);

assert_test("Muat Konfigurasi SSOT", !empty($config_data['institution']['name']), "Nama: " . $config_data['institution']['name']);

// 2. Uji Batas Pinjam Siswa (Maks 3 buku, Durasi 7 Hari)
$siswa_rules = $config_data['circulation_rules']['siswa'];
assert_test("Batas Pinjam Siswa = 3 Buku", $siswa_rules['loan_limit'] === 3);
assert_test("Durasi Pinjam Siswa = 7 Hari", $siswa_rules['loan_period_days'] === 7);
assert_test("Tarif Denda Siswa = Rp 500/Hari", $siswa_rules['fine_per_day'] === 500);

// 3. Uji Batas Pinjam Guru (Maks 10 buku, Durasi 30 Hari, Tanpa Denda)
$guru_rules = $config_data['circulation_rules']['guru'];
assert_test("Batas Pinjam Guru = 10 Buku", $guru_rules['loan_limit'] === 10);
assert_test("Durasi Pinjam Guru = 30 Hari", $guru_rules['loan_period_days'] === 30);
assert_test("Tarif Denda Guru = Rp 0 (Bebas Denda)", $guru_rules['fine_per_day'] === 0);

// 4. Simulasi Perhitungan Tanggal Jatuh Tempo (Due Date)
function calculate_due_date($start_date_str, $period_days) {
    $start = new DateTime($start_date_str);
    $start->modify("+{$period_days} days");
    return $start->format('Y-m-d');
}

$pinjam_siswa = '2026-10-01';
$jatuh_tempo_siswa = calculate_due_date($pinjam_siswa, $siswa_rules['loan_period_days']);
assert_test("Kalkulasi Jatuh Tempo Siswa (1 Okt + 7 Hari = 8 Okt)", $jatuh_tempo_siswa === '2026-10-08');

$pinjam_guru = '2026-10-01';
$jatuh_tempo_guru = calculate_due_date($pinjam_guru, $guru_rules['loan_period_days']);
assert_test("Kalkulasi Jatuh Tempo Guru (1 Okt + 30 Hari = 31 Okt)", $jatuh_tempo_guru === '2026-10-31');

// 5. Simulasi Perhitungan Denda Keterlambatan Siswa
function calculate_fine($due_date_str, $return_date_str, $fine_per_day, $grace_period_days) {
    $due = new DateTime($due_date_str);
    $return = new DateTime($return_date_str);
    
    if ($return <= $due) {
        return 0; // Tepat waktu / lebih awal
    }
    
    $interval = $due->diff($return);
    $late_days = (int)$interval->format('%r%a');
    
    // Kurangi masa tenggang (grace period)
    $billable_days = max(0, $late_days - $grace_period_days);
    return $billable_days * $fine_per_day;
}

// Kasus A: Kembali tepat waktu (8 Okt)
$denda_tepat = calculate_fine('2026-10-08', '2026-10-08', $siswa_rules['fine_per_day'], $siswa_rules['grace_period_days']);
assert_test("Denda Pengembalian Tepat Waktu = Rp 0", $denda_tepat === 0);

// Kasus B: Terlambat 1 hari (9 Okt - masuk grace period 1 hari)
$denda_grace = calculate_fine('2026-10-08', '2026-10-09', $siswa_rules['fine_per_day'], $siswa_rules['grace_period_days']);
assert_test("Denda Masa Tenggang 1 Hari = Rp 0", $denda_grace === 0);

// Kasus C: Terlambat 4 hari (12 Okt - terlambat 4 hari dikurangi 1 hari grace = 3 hari bayar x 500 = 1.500)
$denda_telat = calculate_fine('2026-10-08', '2026-10-12', $siswa_rules['fine_per_day'], $siswa_rules['grace_period_days']);
assert_test("Denda Keterlambatan 4 Hari (3 hari kena tarif x Rp 500 = Rp 1.500)", $denda_telat === 1500);

// 6. Ringkasan
echo "\n------------------------------------------------------------\n";
echo "Hasil Smoke Test: LULUS = $tests_passed | GAGAL = $tests_failed\n";
if ($tests_failed === 0) {
    echo "Status: SELURUH LOGIKA SIRKULASI SESUAI KONTRAK BISNIS SEKOLAH.\n";
    echo "============================================================\n\n";
    exit(0);
} else {
    echo "Status: ADA LOGIKA SIRKULASI YANG TIDAK SESUAI KONTRAK.\n";
    echo "============================================================\n\n";
    exit(1);
}
