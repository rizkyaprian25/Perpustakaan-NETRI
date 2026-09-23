<?php
/**
 * Global Error Boundary & Fallback Handler - Perpustakaan SMPN 3 Cibungbulang
 * Menangani error tanpa membocorkan trace sensitif ke pengguna
 */
http_response_code(500);
$error_code = $_GET['code'] ?? '500';
$error_title = ($error_code === '404') ? 'Halaman Tidak Ditemukan' : 'Gangguan Sistem Sementara';
$error_desc = ($error_code === '404') 
    ? 'Koleksi atau halaman yang Anda cari tidak tersedia atau tautan sudah dipindahkan.'
    : 'Layanan perpustakaan sedang mengalami pemeliharaan atau koneksi database sedang sibuk. Silakan coba beberapa saat lagi.';
?>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo htmlspecialchars($error_title); ?> - SMPN 3 CIBUNGBULANG</title>
  <link rel="icon" type="image/svg+xml" href="../../images/smpn3_logo.svg">
  <link rel="stylesheet" href="style.css">
  <style>
    .error-wrapper {
      min-height: 80vh;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 32px 20px;
      text-align: center;
    }
    .error-box {
      max-width: 540px;
      background: #FFFFFF;
      padding: 48px 36px;
      border-radius: var(--radius-lg);
      box-shadow: var(--shadow-xl);
      border: 1px solid var(--border-subtle);
    }
    .error-code {
      font-size: 4rem;
      font-weight: 800;
      color: var(--color-accent);
      line-height: 1;
      margin-bottom: 16px;
    }
    .error-title {
      font-size: 1.5rem;
      font-weight: 700;
      color: var(--color-primary);
      margin-bottom: 12px;
    }
    .error-text {
      color: var(--text-secondary);
      font-size: 1rem;
      margin-bottom: 32px;
      line-height: 1.6;
    }
    .btn-back-home {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: var(--color-primary);
      color: #FFFFFF;
      text-decoration: none;
      padding: 12px 28px;
      border-radius: var(--radius-md);
      font-weight: 600;
      transition: var(--transition-fast);
    }
    .btn-back-home:hover {
      background: var(--color-primary-light);
      transform: translateY(-2px);
    }
  </style>
</head>
<body>
  <div class="error-wrapper">
    <div class="error-box">
      <div class="error-code"><?php echo htmlspecialchars($error_code); ?></div>
      <h1 class="error-title"><?php echo htmlspecialchars($error_title); ?></h1>
      <p class="error-text"><?php echo htmlspecialchars($error_desc); ?></p>
      <a href="../../index.php" class="btn-back-home">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
        Kembali ke Katalog Perpustakaan
      </a>
    </div>
  </div>
</body>
</html>
