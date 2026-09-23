<?php
/**
 * Anjungan Presensi Mandiri (Visitor Kiosk Mode) - SMPN 3 CIBUNGBULANG
 * Mode Full-Screen Khusus PC/Tablet Buku Tamu di Pintu Masuk Perpustakaan
 * 
 * Standar Rekayasa: SoftwareEngineer.md & AGENTS.md
 */

define('INDEX_AUTH', '1');
require_once 'sysconfig.inc.php';

// Ambil pesan notifikasi jika ada
$message = '';
$status_type = 'info';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty($_POST['member_id'])) {
    $member_id = trim($_POST['member_id']);
    
    // Validasi data anggota di basis data
    $stmt = $dbs->prepare("SELECT member_id, member_name, member_type_id FROM member WHERE member_id = ?");
    $stmt->execute([$member_id]);
    $member = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($member) {
        // Catat kunjungan ke tabel visitor_count
        $insert = $dbs->prepare("INSERT INTO visitor_count (member_id, checkin_date) VALUES (?, NOW())");
        $insert->execute([$member_id]);
        $message = "Selamat Datang, <strong>" . htmlspecialchars($member['member_name']) . "</strong>! Kunjungan Anda berhasil dicatat.";
        $status_type = 'success';
    } else {
        // Catat sebagai pengunjung non-anggota jika nomor tidak ditemukan
        $insert = $dbs->prepare("INSERT INTO visitor_count (member_id, checkin_date) VALUES (?, NOW())");
        $insert->execute([$member_id]);
        $message = "Terima kasih! Kunjungan pengunjung nomor <strong>" . htmlspecialchars($member_id) . "</strong> telah dicatat.";
        $status_type = 'warning';
    }
}

// Hitung total pengunjung hari ini
$today_count = 0;
try {
    $count_query = $dbs->query("SELECT COUNT(*) AS total FROM visitor_count WHERE DATE(checkin_date) = CURDATE()");
    if ($count_query) {
        $row = $count_query->fetch(PDO::FETCH_ASSOC);
        $today_count = $row['total'] ?? 0;
    }
} catch (Exception $e) {
    // Fallback jika database belum aktif
    $today_count = 0;
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Buku Tamu Pengunjung - SMPN 3 CIBUNGBULANG</title>
  <link rel="icon" type="image/svg+xml" href="images/smpn3_logo.svg">
  <link rel="stylesheet" href="template/smpn3_bulian/style.css">
  <style>
    body {
      background: linear-gradient(135deg, #0F172A 0%, #1E293B 50%, #0369A1 100%);
      color: #FFFFFF;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding: 20px;
    }
    .kiosk-card {
      background: #FFFFFF;
      color: var(--text-primary);
      max-width: 620px;
      width: 100%;
      border-radius: var(--radius-lg);
      padding: 40px 36px;
      box-shadow: var(--shadow-xl);
      text-align: center;
      border: 1px solid rgba(255, 255, 255, 0.2);
    }
    .kiosk-logo {
      width: 80px;
      height: 80px;
      margin: 0 auto 16px;
      display: block;
    }
    .kiosk-title {
      font-size: 1.6rem;
      font-weight: 800;
      color: var(--color-primary);
      margin-bottom: 4px;
    }
    .kiosk-subtitle {
      color: var(--color-accent);
      font-weight: 600;
      font-size: 0.95rem;
      margin-bottom: 24px;
      text-transform: uppercase;
      letter-spacing: 0.05em;
    }
    .kiosk-input {
      width: 100%;
      height: 56px;
      font-size: 1.25rem;
      border: 2px solid var(--border-subtle);
      border-radius: var(--radius-md);
      padding: 0 18px;
      text-align: center;
      font-weight: 700;
      color: var(--color-primary);
      outline: none;
      transition: var(--transition-fast);
      margin-bottom: 16px;
    }
    .kiosk-input:focus {
      border-color: var(--color-accent);
      box-shadow: 0 0 0 4px var(--color-accent-light);
    }
    .btn-submit-kiosk {
      width: 100%;
      height: 52px;
      background: var(--color-accent);
      color: #FFFFFF;
      border: none;
      border-radius: var(--radius-md);
      font-size: 1.1rem;
      font-weight: 700;
      cursor: pointer;
      transition: var(--transition-fast);
    }
    .btn-submit-kiosk:hover {
      background: var(--color-accent-hover);
    }
    .alert-box {
      margin-top: 20px;
      padding: 14px;
      border-radius: var(--radius-md);
      font-size: 0.95rem;
      line-height: 1.5;
    }
    .alert-success { background: #DCFCE7; color: #166534; border: 1px solid #86EFAC; }
    .alert-warning { background: #FEF3C7; color: #92400E; border: 1px solid #FCD34D; }
    .kiosk-stats {
      margin-top: 28px;
      padding-top: 20px;
      border-top: 1px solid var(--border-subtle);
      display: flex;
      justify-content: space-around;
      font-size: 0.9rem;
      color: var(--text-secondary);
    }
    .stat-number {
      font-size: 1.5rem;
      font-weight: 800;
      color: var(--color-accent);
    }
    .kiosk-footer-nav {
      margin-top: 20px;
    }
    .kiosk-footer-nav a {
      color: #CBD5E1;
      text-decoration: none;
      font-size: 0.85rem;
      transition: color var(--transition-fast);
    }
    .kiosk-footer-nav a:hover {
      color: #FFFFFF;
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <div class="kiosk-card">
    <img src="images/smpn3_logo.svg" alt="Logo SMPN 3" class="kiosk-logo">
    <h1 class="kiosk-title">Presensi Pengunjung Perpustakaan</h1>
    <p class="kiosk-subtitle">SMP NEGERI 3 CIBUNGBULANG</p>

    <form method="post" action="visitor_kiosk.php" id="kioskForm">
      <input 
        type="text" 
        name="member_id" 
        id="memberInput" 
        class="kiosk-input" 
        placeholder="Scan Barcode Kartu / Ketik NISN..." 
        autocomplete="off" 
        autofocus 
        required
      >
      <button type="submit" class="btn-submit-kiosk">
        Catat Kunjungan Saya
      </button>
    </form>

    <?php if (!empty($message)) : ?>
      <div class="alert-box alert-<?php echo $status_type; ?>">
        <?php echo $message; ?>
      </div>
      <script>
        // Auto reset fokus setelah 3 detik
        setTimeout(function() {
          document.getElementById('memberInput').value = '';
          document.getElementById('memberInput').focus();
        }, 3000);
      </script>
    <?php endif; ?>

    <div class="kiosk-stats">
      <div>
        <div>Tanggal Hari Ini</div>
        <strong><?php echo date('d M Y'); ?></strong>
      </div>
      <div>
        <div>Total Pengunjung Hari Ini</div>
        <div class="stat-number"><?php echo $today_count; ?></div>
      </div>
    </div>
  </div>

  <div class="kiosk-footer-nav">
    <a href="index.php">← Kembali ke Halaman Utama Katalog (OPAC)</a>
  </div>

  <script>
    // Memastikan cursor selalu kembali aktif di kotak input untuk kenyamanan scanner barcode
    document.addEventListener('click', function(e) {
      if (e.target.tagName !== 'A' && e.target.tagName !== 'BUTTON') {
        document.getElementById('memberInput').focus();
      }
    });
  </script>
</body>
</html>
