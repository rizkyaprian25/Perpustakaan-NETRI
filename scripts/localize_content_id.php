<?php
/**
 * Skrip Pembaruan & Lokalisasi Konten SLiMS ke Bahasa Indonesia
 * Perpustakaan SMPN 3 CIBUNGBULANG
 */

$pdo = new PDO('mysql:host=db;port=3306;dbname=db_perpus_smpn3;charset=utf8mb4', 'root', 'root123', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);

// 1. Ubah bahasa default aplikasi di tabel setting ke 'id_ID'
$stmt = $pdo->prepare("UPDATE setting SET setting_value = :val WHERE setting_name = 'default_lang'");
$stmt->execute([':val' => serialize('id_ID')]);
echo "[1] Pengaturan bahasa default sistem diubah ke: id_ID (Bahasa Indonesia)\n";

// 2. Ubah bahasa template admin di tabel user untuk akun admin
$admin_tpl = serialize([
    'theme' => 'nightmode',
    'css' => 'admin_template/nightmode/style.css',
    'default_lang' => 'id_ID'
]);
$stmt = $pdo->prepare("UPDATE user SET admin_template = :tpl WHERE username = 'admin'");
$stmt->execute([':tpl' => $admin_tpl]);
echo "[2] Preferensi bahasa akun admin diubah ke: id_ID\n";

// 3. Konten 1: Informasi Perpustakaan (libinfo)
$desc_libinfo = <<<HTML
<h3>Profil & Kontak Perpustakaan</h3>
<p>
  <strong>Nama Sekolah :</strong> SMP Negeri 3 Cibungbulang<br />
  <strong>Alamat :</strong> Jl. Kapten Dasuki Bakri, Cibatok 1, Kec. Cibungbulang, Kab. Bogor, Jawa Barat 16630<br />
  <strong>Telepon :</strong> (0251) 8645000<br />
  <strong>Email :</strong> perpustakaan@smpn3cibungbulang.sch.id<br />
  <strong>Website :</strong> http://smpn3cibungbulang.sch.id
</p>

<h3>Jam Layanan Perpustakaan</h3>
<p>
  <strong>Senin - Kamis :</strong><br />
  Buka : 07.30 WIB | Istirahat : 12.00 - 13.00 WIB | Tutup : 15.00 WIB<br /><br />
  <strong>Jumat :</strong><br />
  Buka : 07.30 WIB | Istirahat Sholat Jumat : 11.30 - 13.00 WIB | Tutup : 15.00 WIB<br /><br />
  <strong>Sabtu, Minggu & Hari Libur Nasional :</strong><br />
  Tutup / Libur
</p>

<h3>Koleksi Perpustakaan</h3>
<p>
  Perpustakaan SMPN 3 Cibungbulang menyediakan beragam bahan pustaka untuk menunjang kegiatan belajar mengajar:
</p>
<ul>
  <li><strong>Buku Pelajaran Paket :</strong> Buku teks wajib Kurikulum Merdeka untuk jenjang Kelas 7, Kelas 8, dan Kelas 9.</li>
  <li><strong>Buku Referensi :</strong> Ensiklopedia, kamus umum & istilah, atlas, dan kitab rujukan ilmu pengetahuan.</li>
  <li><strong>Karya Fiksi & Sastra Remaja :</strong> Novel inspiratif, cerita rakyat, kumpulan cerpen, dan komik pendidikan.</li>
  <li><strong>Non-Fiksi Populer :</strong> Buku pengembangan diri, sains populer, sejarah, agama, dan keterampilan praktis.</li>
  <li><strong>Koleksi Digital :</strong> Buku elektronik (E-Book PDF) dan modul ajar multimedia.</li>
</ul>

<h3>Ketentuan Keanggotaan & Peminjaman</h3>
<p>
  Seluruh siswa, guru, dan staf tata usaha SMPN 3 Cibungbulang secara otomatis terdaftar sebagai anggota perpustakaan. Siswa dapat meminjam hingga 3 buku pelajaran/fiksi selama 7 hari kalender dengan menunjukkan Kartu Anggota Perpustakaan atau menyebutkan NISN saat berada di meja sirkulasi.
</p>
HTML;

$stmt = $pdo->prepare("UPDATE content SET content_title = 'Informasi Perpustakaan', content_desc = :desc, last_update = NOW() WHERE content_path = 'libinfo'");
$stmt->execute([':desc' => $desc_libinfo]);
echo "[3] Konten 'Informasi Perpustakaan' (libinfo) berhasil diperbarui ke Bahasa Indonesia.\n";

// 4. Konten 2: Bantuan Penggunaan (help)
$desc_help = <<<HTML
<h3>Panduan Pencarian Katalog (OPAC)</h3>
<p>
  Untuk memudahkan pencarian buku dan bahan pustaka di Perpustakaan SMPN 3 Cibungbulang, tersedia dua metode pencarian:
</p>

<h4>1. Pencarian Sederhana (Simple Search)</h4>
<p>
  Metode termudah untuk mencari koleksi. Anda cukup mengetik kata kunci apa saja pada kotak pencarian utama di halaman beranda, seperti judul buku, nama pengarang, mata pelajaran, atau topik bahasan (contoh: <em>Matematika Kelas 7</em>, <em>Chairil Anwar</em>, atau <em>Tata Surya</em>). Sistem akan mencari kata kunci tersebut pada seluruh bidang data bibliografi secara otomatis.
</p>

<h4>2. Pencarian Spesifik (Advanced Search)</h4>
<p>
  Pencarian lanjutan memungkinkan Anda menyaring pencarian secara lebih terarah:
</p>
<ul>
  <li><strong>Judul :</strong> Hanya mencocokkan kata kunci pada judul utama atau anak judul buku.</li>
  <li><strong>Pengarang :</strong> Mencari buku berdasarkan nama penulis, editor, atau penyusun buku.</li>
  <li><strong>Mata Pelajaran / Topik :</strong> Menyaring koleksi berdasarkan bidang keilmuan atau topik pelajaran.</li>
  <li><strong>ISBN / No. Panggil :</strong> Menemukan letak pasti buku di rak melalui nomor panggil DDC (Dewey Decimal Classification) atau kode ISBN buku.</li>
  <li><strong>Lokasi Rak :</strong> Mempersempit pencarian ke rak tertentu, misalnya Rak 01 (IPA & Matematika) atau Rak 05 (Fiksi & Cerpen).</li>
</ul>
HTML;

$stmt = $pdo->prepare("UPDATE content SET content_title = 'Bantuan & Panduan Pencarian', content_desc = :desc, last_update = NOW() WHERE content_path = 'help'");
$stmt->execute([':desc' => $desc_help]);
echo "[4] Konten 'Bantuan & Panduan Pencarian' (help) berhasil diperbarui ke Bahasa Indonesia.\n";

// 5. Konten 3: Beranda Admin (adminhome)
$desc_adminhome = <<<HTML
<div class="container admin_home">
  <div class="row">
    <div class="col-xs-6 col-md-4">
      <h3>Bibliografi</h3>
      <div class="row">
        <div class="col-sm-2"><a class="icon biblioIcon notAJAX" href="index.php?mod=bibliography"></a></div>
        <div class="col-sm-8">Modul Bibliografi digunakan untuk mengelola katalog data buku, input judul baru, nomor ISBN, pengarang, penerbit, cetak barcode eksemplar, dan label punggung buku.</div>
      </div>
    </div>
    <div class="col-xs-6 col-md-4">
      <h3>Sirkulasi</h3>
      <div class="row">
        <div class="col-sm-2"><a class="icon circulationIcon notAJAX" href="index.php?mod=circulation"></a></div>
        <div class="col-sm-8">Layanan transaksi sirkulasi perpustakaan meliputi peminjaman buku oleh siswa/guru, pengembalian buku, perpanjangan masa pinjam, serta pencatatan denda keterlambatan.</div>
      </div>
    </div>
    <div class="col-xs-6 col-md-4">
      <h3>Keanggotaan</h3>
      <div class="row">
        <div class="col-sm-2"><a class="icon memberIcon notAJAX" href="index.php?mod=membership"></a></div>
        <div class="col-sm-8">Pengelolaan data seluruh anggota perpustakaan (Siswa Kelas 7, 8, 9, Guru, dan Staf). Termasuk fitur cetak kartu anggota standar PVC (CR-80) dengan barcode NISN.</div>
      </div>
    </div>
  </div>
  <div class="row mt-4">
    <div class="col-xs-6 col-md-4">
      <h3>Inventarisasi (Stock Opname)</h3>
      <div class="row">
        <div class="col-sm-2"><a class="icon stockTakeIcon notAJAX" href="index.php?mod=stock_take"></a></div>
        <div class="col-sm-8">Fitur Stock Take mempermudah sensus berkala seluruh koleksi buku fisik di rak perpustakaan untuk mendeteksi buku yang hilang atau rusak secara sistematis.</div>
      </div>
    </div>
    <div class="col-xs-6 col-md-4">
      <h3>Terbitan Berseri</h3>
      <div class="row">
        <div class="col-sm-2"><a class="icon serialIcon notAJAX" href="index.php?mod=serial_control"></a></div>
        <div class="col-sm-8">Modul Terbitan Berseri membantu pustakawan mencatat langganan terbitan berkala seperti majalah dinding sekolah, buletin pendidikan, koran, dan jurnal berkala.</div>
      </div>
    </div>
    <div class="col-xs-6 col-md-4">
      <h3>Pelaporan & Statistik</h3>
      <div class="row">
        <div class="col-sm-2"><a class="icon reportIcon notAJAX" href="index.php?mod=reporting"></a></div>
        <div class="col-sm-8">Menyajikan laporan statistik lengkap mulai dari rekap peminjaman buku harian/bulanan, statistik kunjungan siswa, daftar buku terlaris dipinjam, hingga denda terhimpun.</div>
      </div>
    </div>
  </div>
  <div class="row mt-4">
    <div class="col-xs-6 col-md-4">
      <h3>Master File</h3>
      <div class="row">
        <div class="col-sm-2"><a class="icon masterFileIcon notAJAX" href="index.php?mod=master_file"></a></div>
        <div class="col-sm-8">Mengelola data rujukan standar perpustakaan seperti daftar pengarang, penerbit, subjek mata pelajaran, format fisik (GMD), dan penataan lokasi kode rak buku.</div>
      </div>
    </div>
    <div class="col-xs-6 col-md-4">
      <h3>Sistem</h3>
      <div class="row">
        <div class="col-sm-2"><a class="icon systemIcon notAJAX" href="index.php?mod=system"></a></div>
        <div class="col-sm-8">Konfigurasi global otomasi perpustakaan, pengaturan akun staf pustakawan, kelola konten web informasi perpus, tema OPAC, dan backup database otomatis.</div>
      </div>
    </div>
  </div>
</div>
HTML;

$stmt = $pdo->prepare("UPDATE content SET content_title = 'Selamat Datang di Halaman Administrasi', content_desc = :desc, last_update = NOW() WHERE content_path = 'adminhome'");
$stmt->execute([':desc' => $desc_adminhome]);
echo "[5] Konten 'Halaman Administrasi' (adminhome) berhasil diperbarui ke Bahasa Indonesia.\n";

// 6. Konten 4: Informasi Beranda (headerinfo)
$desc_headerinfo = '<p>Selamat datang di Katalog Akses Publik Daring (OPAC) <strong>Perpustakaan SMP Negeri 3 Cibungbulang</strong>. Temukan buku pelajaran, ensiklopedia referensi, dan karya fiksi untuk memperkaya ilmu dan wawasan Anda.</p>';
$stmt = $pdo->prepare("UPDATE content SET content_title = 'Informasi Beranda', content_desc = :desc, last_update = NOW() WHERE content_path = 'headerinfo'");
$stmt->execute([':desc' => $desc_headerinfo]);
echo "[6] Konten 'Informasi Beranda' (headerinfo) berhasil diperbarui ke Bahasa Indonesia.\n";

echo "\nSemua konten dan konfigurasi bahasa panel admin berhasil dilokalisasi ke Bahasa Indonesia!\n";
