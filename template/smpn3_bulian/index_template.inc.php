<?php
/**
 * Master Template OPAC SMPN 3 CIBUNGBULANG
 * Kompatibel dengan SLiMS 9 Bulian
 * 
 * Standar Rekayasa: SoftwareEngineer.md & AGENTS.md
 * Desain: Modern, Apple HIG Typography, High Contrast & Responsive
 */

// Pagar Pengaman: Mencegah akses langsung tanpa bootstrap SLiMS
if (!defined('INDEX_AUTH')) {
    die("Akses langsung ke file template tidak diizinkan.");
}

// Konfigurasi Metadata Sekolah SSOT
$school_name     = 'SMPN 3 CIBUNGBULANG';
$school_subname  = 'Perpustakaan Digital & Pusat Sumber Belajar';
$school_address  = 'Jl. Kapten Dasuki Bakri, Cibatok 1, Kec. Cibungbulang, Kab. Bogor 16630';
$school_phone    = '(0251) 8645000';
$school_email    = 'perpustakaan@smpn3cibungbulang.sch.id';

// Evaluasi apakah pengunjung berada di Beranda Utama
$current_page    = $_GET['p'] ?? '';
$is_search       = !empty($_GET['search']) || !empty($_GET['keywords']) || !empty($_GET['title']);
$is_homepage     = empty($current_page) && !$is_search && empty($_GET['id']);
?>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $page_title; ?> - <?php echo $school_name; ?></title>
  
  <meta name="description" content="Katalog Akses Terbuka (OPAC) Perpustakaan SMPN 3 Cibungbulang, Kabupaten Bogor. Temukan buku pelajaran, fiksi, ensiklopedia, dan sumber belajar digital.">
  <meta name="keywords" content="Perpustakaan SMPN 3 Cibungbulang, OPAC SLiMS, Katalog Buku, SMP Bogor">
  <meta name="author" content="SMPN 3 CIBUNGBULANG">

  <!-- Favicon & Touch Icon -->
  <link rel="icon" type="image/svg+xml" href="images/smpn3_logo.svg">
  <link rel="apple-touch-icon" href="images/smpn3_logo.svg">

  <!-- Core Theme Stylesheet -->
  <link rel="stylesheet" href="template/smpn3_bulian/style.css?v=1.1.0">
  
  <?php echo $metadata ?? ''; ?>
</head>
<body>

  <!-- 1. Header & Navigasi Utama -->
  <header class="site-header">
    <div class="container">
      <div class="header-inner">
        <!-- Logo & Identitas Sekolah -->
        <a href="index.php" class="brand-wrapper" title="Halaman Utama OPAC">
          <img src="images/smpn3_logo.svg" alt="Logo SMPN 3 Cibungbulang" class="brand-logo" onerror="this.src='images/default/logo.png'">
          <div class="brand-text">
            <h1><?php echo $school_name; ?></h1>
            <p><?php echo $school_subname; ?></p>
          </div>
        </a>

        <!-- Menu Navigasi -->
        <nav class="main-nav" aria-label="Navigasi Utama">
          <a href="index.php" class="nav-link <?php echo $is_homepage ? 'active' : ''; ?>">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path></svg>
            <span>Katalog OPAC</span>
          </a>
          <a href="visitor_kiosk.php" class="nav-link" title="Anjungan Presensi Pengunjung">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
            <span>Buku Tamu</span>
          </a>
          <a href="index.php?p=libinfo" class="nav-link <?php echo $current_page === 'libinfo' ? 'active' : ''; ?>" title="Informasi Perpustakaan">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg>
            <span>Profil & Jam Buka</span>
          </a>
          <a href="index.php?p=help" class="nav-link <?php echo $current_page === 'help' ? 'active' : ''; ?>" title="Panduan Pencarian">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
            <span>Bantuan</span>
          </a>
          <a href="index.php?p=login" class="nav-link nav-btn-admin <?php echo $current_page === 'login' ? 'active' : ''; ?>" title="Masuk Area Staf Pustakawan">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
            <span>Login Staf</span>
          </a>
        </nav>
      </div>
    </div>
  </header>

  <?php if ($is_homepage): ?>
  <!-- 2. Hero Section & Pencarian OPAC Cepat (Khusus Beranda) -->
  <section class="hero-section">
    <div class="container">
      <div class="hero-badge">
        <span>✨ Sistem Otomasi Perpustakaan Sekolah</span>
      </div>
      <h2 class="hero-title">Temukan Sumber Ilmu & Inspirasi Belajar</h2>
      <p class="hero-subtitle">
        Cari buku pelajaran kurikulum merdeka, ensiklopedia referensi, karya fiksi remaja, dan materi pelajaran digital dengan mudah.
      </p>

      <!-- Kotak Pencarian Modern -->
      <form action="index.php" method="get" class="opac-search-card" role="search">
        <input type="hidden" name="search" value="search">
        <div class="search-input-group">
          <svg class="search-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
            <circle cx="11" cy="11" r="8"></circle>
            <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
          </svg>
          <input type="text" name="keywords" class="search-input" placeholder="Ketik judul buku, pengarang, mata pelajaran, atau topik..." autocomplete="off" autofocus>
        </div>

        <select name="search_by" class="search-filter-select" aria-label="Kategori Pencarian">
          <option value="all">Semua Bidang</option>
          <option value="title">Judul Buku</option>
          <option value="author">Nama Pengarang</option>
          <option value="subject">Mata Pelajaran / Topik</option>
          <option value="isbn">ISBN / No. Panggil</option>
        </select>

        <button type="submit" class="btn-search">
          Cari Katalog
        </button>
      </form>
    </div>
  </section>

  <!-- 3. Kategori Pintas Koleksi Sekolah -->
  <section class="quick-categories">
    <div class="container">
      <div class="categories-grid">
        <a href="index.php?keywords=Matematika&search=search" class="cat-card">
          <div class="cat-icon-wrapper">📚</div>
          <div class="cat-info">
            <h3>Buku Pelajaran</h3>
            <p>Kurikulum Merdeka Kelas 7, 8, & 9</p>
          </div>
        </a>

        <a href="index.php?keywords=Fiksi&search=search" class="cat-card">
          <div class="cat-icon-wrapper">📖</div>
          <div class="cat-info">
            <h3>Fiksi & Cerpen</h3>
            <p>Novel remaja, cerpen inspirasi, sastra</p>
          </div>
        </a>

        <a href="index.php?keywords=Ensiklopedia&search=search" class="cat-card">
          <div class="cat-icon-wrapper">🔬</div>
          <div class="cat-info">
            <h3>Referensi & Sains</h3>
            <p>Ensiklopedia, kamus, & sains populer</p>
          </div>
        </a>

        <a href="visitor_kiosk.php" class="cat-card">
          <div class="cat-icon-wrapper">✍️</div>
          <div class="cat-info">
            <h3>Presensi Pengunjung</h3>
            <p>Catat kunjungan perpustakaan harian</p>
          </div>
        </a>
      </div>
    </div>
  </section>
  <?php else: ?>
  <!-- Subpage Compact Header Search Bar -->
  <section class="subpage-search-bar">
    <div class="container">
      <div class="subpage-search-inner">
        <a href="index.php" class="btn-back-home" title="Kembali ke Beranda">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg>
          <span>Beranda</span>
        </a>
        <form action="index.php" method="get" class="compact-search-form" role="search">
          <input type="hidden" name="search" value="search">
          <input type="text" name="keywords" class="compact-search-input" placeholder="Cari buku lain..." value="<?php echo htmlspecialchars($_GET['keywords'] ?? ''); ?>" autocomplete="off">
          <button type="submit" class="btn-compact-search">Cari</button>
        </form>
      </div>
    </div>
  </section>
  <?php endif; ?>

  <!-- 4. Area Konten Utama (Hasil Pencarian / Halaman SLiMS) -->
  <main class="main-content <?php echo $is_homepage ? 'homepage-main' : 'subpage-main'; ?>">
    <div class="container">
      <div id="main-content">
        <?php echo $main_content; ?>
      </div>
    </div>
  </main>

  <!-- 5. Footer Resmi Sekolah -->
  <footer class="site-footer">
    <div class="container">
      <div class="footer-grid">
        <!-- Kolom 1: Profil Sekolah -->
        <div class="footer-brand">
          <h2><?php echo $school_name; ?></h2>
          <p>
            Mewujudkan lingkungan belajar literasi yang unggul, berakhlak mulia, dan berwawasan teknologi melalui layanan perpustakaan yang mudah diakses seluruh warga sekolah.
          </p>
        </div>

        <!-- Kolom 2: Jam Operasional -->
        <div class="footer-col">
          <h4>Jam Layanan Perpus</h4>
          <ul class="footer-links">
            <li>Senin - Kamis: 07.30 - 15.00 WIB</li>
            <li>Jumat: 07.30 - 11.30 & 13.00 - 15.00 WIB</li>
            <li>Sabtu - Minggu: Libur / Tutup</li>
          </ul>
        </div>

        <!-- Kolom 3: Kontak & Lokasi -->
        <div class="footer-col">
          <h4>Kontak Kami</h4>
          <ul class="footer-links">
            <li>📍 <?php echo $school_address; ?></li>
            <li>📞 <?php echo $school_phone; ?></li>
            <li>✉️ <?php echo $school_email; ?></li>
          </ul>
        </div>
      </div>

      <!-- Footer Bottom -->
      <div class="footer-bottom">
        <p>&copy; <?php echo date('Y'); ?> Perpustakaan <?php echo $school_name; ?>. Hak Cipta Dilindungi.</p>
        <p>Didukung oleh <strong>SLiMS 9 Bulian (Open Source)</strong></p>
      </div>
    </div>
  </footer>

</body>
</html>
