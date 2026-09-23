/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.20-12.3.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db_perpus_smpn3
-- ------------------------------------------------------
-- Server version	12.3.3-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Dumping data for table `backup_log`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `backup_log` WRITE;
/*!40000 ALTER TABLE `backup_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup_log` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `biblio`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `biblio` WRITE;
/*!40000 ALTER TABLE `biblio` DISABLE KEYS */;
INSERT INTO `biblio` (`biblio_id`, `gmd_id`, `title`, `sor`, `edition`, `isbn_issn`, `publisher_id`, `publish_year`, `collation`, `series_title`, `call_number`, `language_id`, `source`, `publish_place_id`, `classification`, `notes`, `image`, `file_att`, `opac_hide`, `promoted`, `labels`, `frequency_id`, `spec_detail_info`, `content_type_id`, `media_type_id`, `carrier_type_id`, `input_date`, `last_update`, `uid`) VALUES (1,1,'Matematika untuk SMP/MTs Kelas VII (Kurikulum Merdeka)',NULL,'Cet. 1','978-602-244-883-9',1,'2022',NULL,NULL,'510 MAT k.7','id',NULL,1,'510','Buku teks utama mata pelajaran Matematika jenjang SMP/MTs Kelas 7 berbasis Kurikulum Merdeka. Membahas bilangan bulat, pecahan, aljabar, persamaan linier, kesebangunan, dan statistika dasar.',NULL,NULL,0,1,NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(2,1,'Ilmu Pengetahuan Alam (IPA) untuk SMP Kelas VII (Kurikulum Merdeka)',NULL,'Cet. 1','978-602-244-785-6',1,'2022',NULL,NULL,'500 IPA k.7','id',NULL,1,'500','Buku teks utama IPA Kelas 7 yang memadukan konsep fisika, biologi, kimia, dan kebumian dalam pembelajaran berbasis inkuiri dan proyek sains.',NULL,NULL,0,1,NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(3,1,'Bahasa Indonesia: Tingkat Menengah Pertama Kelas VIII (Kurikulum Merdeka)',NULL,'Cet. 1','978-602-244-789-4',1,'2022',NULL,NULL,'410 IND k.8','id',NULL,1,'410','Panduan literasi bahasa Indonesia kelas 8 mencakup teks laporan hasil observasi, iklan, slogan, poster, artikel ilmiah populer, dan ulasan karya sastra.',NULL,NULL,0,1,NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(4,1,'Negeri 5 Menara',NULL,'Cet. 1','978-979-22-4861-6',4,'2020',NULL,NULL,'813 FUA n','id',NULL,1,'813','Novel inspiratif karya Ahmad Fuadi tentang persahabatan enam santri dari pelosok negeri dengan tekad kuat meraih impian dengan mantra Man Jadda Wajada.',NULL,NULL,0,1,NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(5,1,'Laskar Pelangi',NULL,'Cet. 1','978-979-1227-01-8',2,'2019',NULL,NULL,'813 HIR l','id',NULL,2,'813','Karya legendaris Andrea Hirata mengenai perjuangan sepuluh anak di Belitung dalam menuntut ilmu di tengah keterbatasan fasilitas sekolah.',NULL,NULL,0,1,NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(6,1,'Si Anak Badai',NULL,'Cet. 1','978-602-5734-93-9',5,'2021',NULL,NULL,'813 TER s','id',NULL,1,'813','Kisah petualangan Za dan kawan-kawan di perkampungan nelayan Muara Maninjau dalam menjaga keasrian kampung halaman dari ancaman pembangunan dermaga.',NULL,NULL,0,1,NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(7,1,'Ensiklopedia Sains dan Teknologi: Mengenal Alam Semesta dan Fisika Modern',NULL,'Cet. 1','978-979-015-888-2',3,'2021',NULL,NULL,'R 503 SUR e','id',NULL,1,'503','Koleksi referensi ilmiah tandon perpustakaan mengenai astronomi, energi terbarukan, fisika atom, dan penemuan sains mutakhir. Hanya dapat dibaca di tempat.',NULL,NULL,0,1,NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1);
/*!40000 ALTER TABLE `biblio` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `biblio_attachment`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `biblio_attachment` WRITE;
/*!40000 ALTER TABLE `biblio_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `biblio_attachment` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `biblio_author`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `biblio_author` WRITE;
/*!40000 ALTER TABLE `biblio_author` DISABLE KEYS */;
INSERT INTO `biblio_author` (`biblio_id`, `author_id`, `level`) VALUES (1,1,1),
(2,1,1),
(3,1,1),
(4,4,1),
(5,3,1),
(6,2,1),
(7,6,1);
/*!40000 ALTER TABLE `biblio_author` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `biblio_custom`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `biblio_custom` WRITE;
/*!40000 ALTER TABLE `biblio_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `biblio_custom` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `biblio_log`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `biblio_log` WRITE;
/*!40000 ALTER TABLE `biblio_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `biblio_log` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `biblio_mark`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `biblio_mark` WRITE;
/*!40000 ALTER TABLE `biblio_mark` DISABLE KEYS */;
/*!40000 ALTER TABLE `biblio_mark` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `biblio_relation`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `biblio_relation` WRITE;
/*!40000 ALTER TABLE `biblio_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `biblio_relation` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `biblio_topic`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `biblio_topic` WRITE;
/*!40000 ALTER TABLE `biblio_topic` DISABLE KEYS */;
INSERT INTO `biblio_topic` (`biblio_id`, `topic_id`, `level`) VALUES (1,1,1),
(2,2,1),
(3,3,1),
(4,6,1),
(5,6,1),
(6,6,1),
(7,7,1);
/*!40000 ALTER TABLE `biblio_topic` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `cache`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `comment`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `content`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `is_draft`, `publish_date`, `input_date`, `last_update`, `content_ownpage`) VALUES (1,'Informasi Perpustakaan','<h3>Profil & Kontak Perpustakaan</h3>\n<p>\n  <strong>Nama Sekolah :</strong> SMP Negeri 3 Cibungbulang<br />\n  <strong>Alamat :</strong> Jl. Kapten Dasuki Bakri, Cibatok 1, Kec. Cibungbulang, Kab. Bogor, Jawa Barat 16630<br />\n  <strong>Telepon :</strong> (0251) 8645000<br />\n  <strong>Email :</strong> perpustakaan@smpn3cibungbulang.sch.id<br />\n  <strong>Website :</strong> http://smpn3cibungbulang.sch.id\n</p>\n\n<h3>Jam Layanan Perpustakaan</h3>\n<p>\n  <strong>Senin - Kamis :</strong><br />\n  Buka : 07.30 WIB | Istirahat : 12.00 - 13.00 WIB | Tutup : 15.00 WIB<br /><br />\n  <strong>Jumat :</strong><br />\n  Buka : 07.30 WIB | Istirahat Sholat Jumat : 11.30 - 13.00 WIB | Tutup : 15.00 WIB<br /><br />\n  <strong>Sabtu, Minggu & Hari Libur Nasional :</strong><br />\n  Tutup / Libur\n</p>\n\n<h3>Koleksi Perpustakaan</h3>\n<p>\n  Perpustakaan SMPN 3 Cibungbulang menyediakan beragam bahan pustaka untuk menunjang kegiatan belajar mengajar:\n</p>\n<ul>\n  <li><strong>Buku Pelajaran Paket :</strong> Buku teks wajib Kurikulum Merdeka untuk jenjang Kelas 7, Kelas 8, dan Kelas 9.</li>\n  <li><strong>Buku Referensi :</strong> Ensiklopedia, kamus umum & istilah, atlas, dan kitab rujukan ilmu pengetahuan.</li>\n  <li><strong>Karya Fiksi & Sastra Remaja :</strong> Novel inspiratif, cerita rakyat, kumpulan cerpen, dan komik pendidikan.</li>\n  <li><strong>Non-Fiksi Populer :</strong> Buku pengembangan diri, sains populer, sejarah, agama, dan keterampilan praktis.</li>\n  <li><strong>Koleksi Digital :</strong> Buku elektronik (E-Book PDF) dan modul ajar multimedia.</li>\n</ul>\n\n<h3>Ketentuan Keanggotaan & Peminjaman</h3>\n<p>\n  Seluruh siswa, guru, dan staf tata usaha SMPN 3 Cibungbulang secara otomatis terdaftar sebagai anggota perpustakaan. Siswa dapat meminjam hingga 3 buku pelajaran/fiksi selama 7 hari kalender dengan menunjukkan Kartu Anggota Perpustakaan atau menyebutkan NISN saat berada di meja sirkulasi.\n</p>','libinfo',NULL,0,NULL,'2009-09-13 19:48:16','2026-09-23 12:45:51','1'),
(2,'Bantuan & Panduan Pencarian','<h3>Panduan Pencarian Katalog (OPAC)</h3>\n<p>\n  Untuk memudahkan pencarian buku dan bahan pustaka di Perpustakaan SMPN 3 Cibungbulang, tersedia dua metode pencarian:\n</p>\n\n<h4>1. Pencarian Sederhana (Simple Search)</h4>\n<p>\n  Metode termudah untuk mencari koleksi. Anda cukup mengetik kata kunci apa saja pada kotak pencarian utama di halaman beranda, seperti judul buku, nama pengarang, mata pelajaran, atau topik bahasan (contoh: <em>Matematika Kelas 7</em>, <em>Chairil Anwar</em>, atau <em>Tata Surya</em>). Sistem akan mencari kata kunci tersebut pada seluruh bidang data bibliografi secara otomatis.\n</p>\n\n<h4>2. Pencarian Spesifik (Advanced Search)</h4>\n<p>\n  Pencarian lanjutan memungkinkan Anda menyaring pencarian secara lebih terarah:\n</p>\n<ul>\n  <li><strong>Judul :</strong> Hanya mencocokkan kata kunci pada judul utama atau anak judul buku.</li>\n  <li><strong>Pengarang :</strong> Mencari buku berdasarkan nama penulis, editor, atau penyusun buku.</li>\n  <li><strong>Mata Pelajaran / Topik :</strong> Menyaring koleksi berdasarkan bidang keilmuan atau topik pelajaran.</li>\n  <li><strong>ISBN / No. Panggil :</strong> Menemukan letak pasti buku di rak melalui nomor panggil DDC (Dewey Decimal Classification) atau kode ISBN buku.</li>\n  <li><strong>Lokasi Rak :</strong> Mempersempit pencarian ke rak tertentu, misalnya Rak 01 (IPA & Matematika) atau Rak 05 (Fiksi & Cerpen).</li>\n</ul>','help',NULL,0,NULL,'2009-09-13 19:48:16','2026-09-23 12:45:51','1'),
(3,'Selamat Datang di Halaman Administrasi','<div class=\"container admin_home\">\n  <div class=\"row\">\n    <div class=\"col-xs-6 col-md-4\">\n      <h3>Bibliografi</h3>\n      <div class=\"row\">\n        <div class=\"col-sm-2\"><a class=\"icon biblioIcon notAJAX\" href=\"index.php?mod=bibliography\"></a></div>\n        <div class=\"col-sm-8\">Modul Bibliografi digunakan untuk mengelola katalog data buku, input judul baru, nomor ISBN, pengarang, penerbit, cetak barcode eksemplar, dan label punggung buku.</div>\n      </div>\n    </div>\n    <div class=\"col-xs-6 col-md-4\">\n      <h3>Sirkulasi</h3>\n      <div class=\"row\">\n        <div class=\"col-sm-2\"><a class=\"icon circulationIcon notAJAX\" href=\"index.php?mod=circulation\"></a></div>\n        <div class=\"col-sm-8\">Layanan transaksi sirkulasi perpustakaan meliputi peminjaman buku oleh siswa/guru, pengembalian buku, perpanjangan masa pinjam, serta pencatatan denda keterlambatan.</div>\n      </div>\n    </div>\n    <div class=\"col-xs-6 col-md-4\">\n      <h3>Keanggotaan</h3>\n      <div class=\"row\">\n        <div class=\"col-sm-2\"><a class=\"icon memberIcon notAJAX\" href=\"index.php?mod=membership\"></a></div>\n        <div class=\"col-sm-8\">Pengelolaan data seluruh anggota perpustakaan (Siswa Kelas 7, 8, 9, Guru, dan Staf). Termasuk fitur cetak kartu anggota standar PVC (CR-80) dengan barcode NISN.</div>\n      </div>\n    </div>\n  </div>\n  <div class=\"row mt-4\">\n    <div class=\"col-xs-6 col-md-4\">\n      <h3>Inventarisasi (Stock Opname)</h3>\n      <div class=\"row\">\n        <div class=\"col-sm-2\"><a class=\"icon stockTakeIcon notAJAX\" href=\"index.php?mod=stock_take\"></a></div>\n        <div class=\"col-sm-8\">Fitur Stock Take mempermudah sensus berkala seluruh koleksi buku fisik di rak perpustakaan untuk mendeteksi buku yang hilang atau rusak secara sistematis.</div>\n      </div>\n    </div>\n    <div class=\"col-xs-6 col-md-4\">\n      <h3>Terbitan Berseri</h3>\n      <div class=\"row\">\n        <div class=\"col-sm-2\"><a class=\"icon serialIcon notAJAX\" href=\"index.php?mod=serial_control\"></a></div>\n        <div class=\"col-sm-8\">Modul Terbitan Berseri membantu pustakawan mencatat langganan terbitan berkala seperti majalah dinding sekolah, buletin pendidikan, koran, dan jurnal berkala.</div>\n      </div>\n    </div>\n    <div class=\"col-xs-6 col-md-4\">\n      <h3>Pelaporan & Statistik</h3>\n      <div class=\"row\">\n        <div class=\"col-sm-2\"><a class=\"icon reportIcon notAJAX\" href=\"index.php?mod=reporting\"></a></div>\n        <div class=\"col-sm-8\">Menyajikan laporan statistik lengkap mulai dari rekap peminjaman buku harian/bulanan, statistik kunjungan siswa, daftar buku terlaris dipinjam, hingga denda terhimpun.</div>\n      </div>\n    </div>\n  </div>\n  <div class=\"row mt-4\">\n    <div class=\"col-xs-6 col-md-4\">\n      <h3>Master File</h3>\n      <div class=\"row\">\n        <div class=\"col-sm-2\"><a class=\"icon masterFileIcon notAJAX\" href=\"index.php?mod=master_file\"></a></div>\n        <div class=\"col-sm-8\">Mengelola data rujukan standar perpustakaan seperti daftar pengarang, penerbit, subjek mata pelajaran, format fisik (GMD), dan penataan lokasi kode rak buku.</div>\n      </div>\n    </div>\n    <div class=\"col-xs-6 col-md-4\">\n      <h3>Sistem</h3>\n      <div class=\"row\">\n        <div class=\"col-sm-2\"><a class=\"icon systemIcon notAJAX\" href=\"index.php?mod=system\"></a></div>\n        <div class=\"col-sm-8\">Konfigurasi global otomasi perpustakaan, pengaturan akun staf pustakawan, kelola konten web informasi perpus, tema OPAC, dan backup database otomatis.</div>\n      </div>\n    </div>\n  </div>\n</div>','adminhome',NULL,0,NULL,'2009-09-13 19:48:16','2026-09-23 12:45:51','1'),
(4,'Informasi Beranda','<p>Selamat datang di Katalog Akses Publik Daring (OPAC) <strong>Perpustakaan SMP Negeri 3 Cibungbulang</strong>. Temukan buku pelajaran, ensiklopedia referensi, dan karya fiksi untuk memperkaya ilmu dan wawasan Anda.</p>','headerinfo',NULL,0,NULL,'2009-09-13 19:48:16','2026-09-23 12:45:51','1'),
(5,'Tentang SLiMS','<p><!--intro_awal--><strong>SLiMS</strong> adalah akronim dari Senayan Library Management System. Awalnya dikembangkan oleh Perpustakaan Kementerian Pendidikan Nasional untuk menggantikan Alice (http://www2.softlinkint.com). Tujuan utamanya agar Perpustakaan Kemdiknas mempunyai kebebasan untuk menggunakan, mempelajari, memodifikasi dan mendistribusikan perangkat lunak yang digunakan. SLiMS, maka dirilis dengan lisensi GPL dan sekarang pengembangan SLiMS dilakukan oleh komunitas penggunanya.<!--intro_akhir--></p>\r\n<p><strong>Asal Mula</strong></p>\r\n<p>Setelah beroperasi 50 tahun lebih, karena beberapa alasan Perpustakaan BC Indonesia yang telah selama bertahun-tahun menjadi andalan layanan BC di Indonesia harus ditutup. Pengelola BC Indonesia kemudian berinisiatif untuk menghibahkan pengelolaan aset perpustakaanya ke tangan institusi pemerintah. Dalam hal ini, institusi pemerintah yang dianggap sesuai bidangnya dan strategis tempatnya, adalah Departemen Pendidikan Nasional (Depdiknas). Yang dihibahkan tidak hanya koleksi, tetapi juga rak koleksi, hardware (server dan workstation) serta sistem termasuk untuk aplikasi manajemen administrasi perpustakaan (Alice).</p>\r\n<p>Seiring dengan berjalannya waktu, manajemen Perpustakaan Depdiknas mulai menghadapi beberapa kendala dalam penggunaan sistem Alice. Pertama, keterbatasan dalam menambahkan fitur-fitur baru. Antara lain: kebutuhan manajemen serial, meng-online-kan katalog di web dan kustomisasi report yang sering berubah-ubah kebutuhannya. Penambahan fitur jika harus meminta modul resmi dari developer Alice, berarti membutuhkan dana tambahan yang tidak kecil. Apalagi tidak ada distributor resminya di Indonesia sehingga harus mengharapkan support dari Inggris. Ditambah lagi beberapa persyaratan yang membutuhkan infrastruktur biaya mahal seperti dedicated public IP agar bisa meng-online-kan Alice di web.<br /><br />Saat itu untuk mengatasi sebagian kebutuhan (utamanya kustomisasi report), dilakukan dengan ujicoba mengakses langsung database yang disimpan dalam format DBase. Terkadang berhasil terkadang tidak karena struktur datanya proprietary dan kompleks serta jumlah rekodnya banyak. Untuk mempelajari struktur database, dicoba melakukan kontak via email ke developer Alice. Tetapi tidak ada respon sama sekali. Disini muncul masalah kedua. Sulitnya mempelajari lebih mendalam cara kerja perangkat lunak Alice. Karena Alice merupakan sistem proprietary yang serba tertutup, segala sesuatunya sangat tergantung vendor. Dibutuhkan sejumlah uang untuk mendapatkan layanan resmi untuk kustomisasi.<br /><br />Perpustakaan Depdiknas salah satu tupoksinya adalah melakukan koordinasi pengelolaan perpustakaan unit kerja dibawah lingkungan Depdiknas. Dalam implementasinya, seringkali muncul kebutuhan untuk bisa mendistribusikan perangkat lunak sistem perpustakaan ke berbagai unit kerja tersebut. Disini masalah ketiga: sulit (atau tidak mungkin) untuk melakukan redistribusi sistem Alice. Alice merupakan perangkat lunak yang secara lisensi tidak memungkinkan diredistribusi oleh pengelola Perpustakaan Depdiknas secara bebas. Semuanya harus ijin dan membutuhkan biaya.<br /><br />November 2006, perpustakaan dihadapkan oleh sebuah masalah mendasar. Sistem Alice tiba-tiba tidak bisa digunakan. Ternyata Alice yang digunakan selama ini diimplementasikan dengan sistem sewa. Pantas saja biayanya relatif murah. Tiap tahun pengguna harus membayar kembali untuk memperpanjang masa sewa pakainya. Tetapi yang mengkhawatirkan adalah fakta bahwa perpustakaan harus menyimpan semua informasi penting dan kritikal di sebuah sistem yang tidak pernah dimiliki. Yang kalau lupa atau tidak mau membayar sewa lagi, hilanglah akses terhadap data kita sendiri. Konyol sekali. Itu sama saja dengan bunuh diri kalau masih tergantung dengan sistem berlisensi seperti itu.<br /><br />Akhirnya pengelola Perpustakaan Depdiknas me-review kembali penggunaan sistem Alice di perpustakaan Depdiknas. Beberapa poin pentingnya antara lain:<br />&bull;&nbsp;&nbsp;&nbsp; Alice memang handal (reliable), tapi punya banyak keterbatasan. Biaya sewanya memang relatif murah, tetapi kalau membutuhkan support tambahan, baik sederhana ataupun kompleks, sangat tergantung dengan developer Alice yang berpusat di Inggris. Butuh biaya yang kalau di total juga tidak murah.<br />&bull;&nbsp;&nbsp;&nbsp; Model lisensi proprietary yang digunakan developer Alice tidak cocok dengan kondisi kebanyakan perpustakaan di Indonesia. Padahal pengelola Perpustakaan Depdiknas sebagai koordinator banyak perpustakaan di lingkungan Depdiknas, punya kepentingan untuk bisa dengan bebas melakukan banyak hal terhadap software yang digunakan.<br />&bull;&nbsp;&nbsp;&nbsp; Menyimpan data penting dan kritikal untuk operasional perpustakaan di suatu software yang proprietary dan menggunakan sistem sewa, dianggap sesuatu yang konyol dan mengancam independensi dan keberlangsungan perpustakaan itu sendiri.<br />&bull;&nbsp;&nbsp;&nbsp; Alice berjalan diatas sistem operasi Windows yang juga proprietary padahal pengelola Perpustakaan Depdiknas ingin beralih menggunakan Sistem Operasi open source (seperti GNU/Linux dan FreeBSD).<br />&bull;&nbsp;&nbsp;&nbsp; Masalah devisa negara yang terbuang untuk membayar software yang tidak pernah dimiliki.<br />&bull;&nbsp;&nbsp;&nbsp; Intinya: pengelola Perpustakaan Depdiknas ingin menggunakan software yang memberikan dan menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Lisensi Alice tidak memungkinkan untuk itu.<br /><br />Setelah memutuskan untuk hijrah menggunakan sistem yang lain, maka langkah berikutnya adalah mencari sistem yang ada untuk digunakan atau mengembangkan sendiri sistem yang dibutuhkan. Beberapa pertimbangan yang harus dipenuhi:<br />&bull;&nbsp;&nbsp;&nbsp; Dirilis dibawah lisensi yang menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Model lisensi open source (www.openosurce.org) dianggap sebagai model yang paling ideal dan sesuai.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan untuk membangun sistem juga harus berlisensi open source.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan haruslah teknologi yang relatif mudah dipelajari oleh pengelola perpustakaan Depdiknas yang berlatarbelakang pendidiknas pustakawan, seperti PHP (scripting language) dan MySQL (database). Jika tidak menguasai sisi teknis teknologi, maka akan terjebak kembali terhadap ketergantungan pada developer.<br /><br />Langkah berikutnya adalah melakukan banding software sistem perpustakaan open source yang bisa diperoleh di internet. Beberapa software yang dicoba antara lain: phpMyLibrary, OpenBiblio, KOHA, EverGreen. Pengelola perpustakaan Depdiknas merasa tidak cocok dengan software yang ada, dengan beberapa alasan:<br />&bull;&nbsp;&nbsp;&nbsp; Desain aplikasi dan database yang tidak baik atau kurang menerapkan secara serius prinsip-prinsip pengembangan aplikasi dan database yang baik sesuai dengan teori yang ada (PHPMyLibrary, OpenBiblio).<br />&bull;&nbsp;&nbsp;&nbsp; Menggunakan teknologi yang sulit dikuasai oleh pengelola perpustakaan Depdiknas (KOHA dan EverGreen dikembangkan menggunakan Perl dan C++ Language yang relatif lebih sulit dipelajari).<br />&bull;&nbsp;&nbsp;&nbsp; Beberapa sudah tidak aktif atau lama sekali tidak di rilis versi terbarunya (PHPMyLibrary dan OpenBiblio).<br /><br />Karena tidak menemukan sistem yang dibutuhkan, maka diputuskan untuk mengembangkan sendiri aplikasi sistem perpustakaan yang dibutuhkan. Dalam dunia pengembangan software, salah satu best practice-nya adalah memberikan nama kode (codename) pengembangan. Nama kode berbeda dengan nama aplikasinya itu sendiri. Nama kode biasanya berbeda-beda tiap versi. Misalnya kode nama &ldquo;Hardy Heron&rdquo; untuk Ubuntu Linux 8.04 dan &ldquo;Jaunty Jackalope&rdquo; untuk Ubuntu Linux 9.04. Pengelola perpustakaan Depdiknas Untuk versi awal (1.0) aplikasi yang akan dikembangkan, memberikan nama kode &ldquo;Senayan&rdquo;. Alasannya sederhana, karena awal dikembangkan di perpustakaan Depdiknas yang berlokasi di Senayan. Apalagi Perpustakaan Depdiknas mempunyai brand sebagai library@senayan. Belakangan karena dirasa nama &ldquo;Senayan&rdquo; dirasa cocok dan punya nilai marketing yang bagus, maka nama &ldquo;Senayan&rdquo; dijadikan nama resmi aplikasi sistem perpustakaan yang dikembangkan.<br /><br />Mengembangkan Senayan<br /><br />Sebelum mulai mengembangkan Senayan, ada beberapa keputusan desain aplikasi yang harus dibuat. Aspek desain ini penting diantaranya untuk pengambilankeputusan dari berbagai masukan yang datang dari komunitas. Antara lain:<br /><br />Pertama,&nbsp; Senayan adalah aplikasi untuk kebutuhan administrasi dan konten perpustakaan (Library Automation System). Senayan didesain untuk kebutuhan skala menengah maupun besar. Cocok untuk perpustakaan yang memiliki koleksi, anggota dan staf banyak di lingkungan jaringan, baik itu lokal (intranet) dan internet.<br /><br />Kedua, Senayan dibangun dengan memperhatikan best practice dalam pengembangan software seperti dalam hal penulisan source code, dokumentasi, dan desain database.<br /><br />Ketiga, Senayan dirancang untuk compliant dengan standar pengelolaan koleksi di perpustakaan. Untuk standar pengatalogan minimal memenuhi syarat AACR 2 level 2 (Anglo-American Cataloging Rules). Kebutuhan untuk kesesuaian dengan standar di perpustakaan terus berkembang dan pengelola perpustakaan Depdiknas dan developer Senayan berkomitmen untuk terus mengembangkan Senayan agar mengikuti standar-standar tersebut.<br /><br />Keempat, Senayan didesain agar bisa juga menjadi middleware bagi aplikasi lain untuk menggunakan data yang ada didalam Senayan. Untuk itu Senayan akan menyediakan API (application programming Interface) yang berbasis web service.<br /><br />Kelima, Senayan merupakan aplikasi yang cross-platform, baik dari sisi aplikasinya itu sendiri dan akses terhadap aplikasi. Untuk itu basis yang paling tepat ada basis web.<br /><br />Keenam, teknologi yang digunakan untuk membangun Senayan, haruslah terbukti bisa diinstall di banyak platform sistem operasi, berlisensi open source dan mudah dipelajari oleh pengelola perpustakaan Depdiknas. Diputuskan untuk menggunakan PHP (www.php.net) untuk web scripting languange dan MySQL (www.mysql.com) untuk server database.<br /><br />Ketujuh, diputuskan untuk mengembangkan library PHP sendiri yang didesain spesifik untuk kebutuhan membangun library automation system. Tidak menggunakan library PHP yang sudah terkenal seperti PEAR (pear.php.net) karena alasan penguasaan terhadap teknologi dan kesederhanaan. Library tersebut diberinama &ldquo;simbio&rdquo;.<br /><br />Kedelapan, untuk mempercepat proses pengembangan, beberapa modul atau fungsi yang dibutuhkan yang dirasa terlalu lama dan rumit untuk dikembangkan sendiri, akan menggunakan software open source yang berlisensi open source juga. Misalnya: flowplayer untuk dukungan multimedia, jQuery untuk dukungan AJAX (Asynchronous Javascript and XML), genbarcode untuk dukungan pembuatan barcode, PHPThumb untuk dukungan generate image on-the-fly, tinyMCE untuk web-based text editor, dan lain-lain.<br /><br />Kesembilan, untuk menjaga spirit open source, proses pengembangan Senayan dilakukan dengan infrastruktur yang berbasis open source. Misalnya: server web menggunakan Apache, server produksi menggunakan OS Linux Centos dan OpenSuse, para developer melakukan pengembangan dengan OS Ubuntu Linux, manajemen source code menggunakan software git, dan lain-lain.<br /><br />Kesepuluh, Senayan dirilis ke masyarakat umum dengan lisensi GNU/GPL versi 3 yang menjamin kebebasan penggunanya untuk mempelajari, menggunakan, memodifikasi dan redistribusi Senayan.<br /><br />Kesebelas, para developer dan pengelola perpustakaan Depdiknas berkomitmen untuk terus mengembangkan Senayan dan menjadikannya salah satu contoh software perpustakaan yang open source, berbasis di indonesia dan menjadi salah satu contoh bagi model pengembangan open source yang terbukti berjalan dengan baik.<br /><br />Keduabelas, model pengembangan Senayan adalah open source yang artinya setiap orang dipersilahkan memberikan kontribusinya. Baik dari sisi pemrogaman, template, dokumentasi, dan lain-lain. Tentu saja ada mekanisme mana kontribusi yang bagus untuk dimasukkan dalam rilis resmi, mana yang tidak. Mengacu ke dokumen &hellip; (TAMBAHKAN DENGAN TULISAN ERIC S RAYMOND)<br /><br />Model pengembangan senayan<br /><br />Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.<br />Fitur Senayan<br />Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN adalah sebagai berikut:<br />Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.<br /><br />Roadmap Pengembangan Senayan<br />SENAYAN akan terus dikembangkan oleh para pengembangnya beserta komunitas pengguna SENAYAN lainnya. Berikut adalah Roadmap pengembangan SENAYAN ke depannya:<br /><br />Pengembangan aplikasi:<br />1.&nbsp;&nbsp;&nbsp; Kompatibilitas dengan MARC dan standar pertukaran data yang komplit. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Memastikan bahwa format data bibliografi kompatibel dengan MARC secara lebih baik (minimal MARC light).<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap RFID.<br />&bull;&nbsp;&nbsp;&nbsp; Fitur untuk impor / ekspor rekod dari The Online Computer Library Centre (OCLC), Research Libraries Information Network (RLIN), vendor sistem lain yang compliant dengan MARC.<br />&bull;&nbsp;&nbsp;&nbsp; Validasi data ISBN menggunakan modulus seven.<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap standar di perpustakaan, seperti: Library of Congress Subject Headings, Library of Congress Classification, ALA filing rules, International Standard Bibliographic Description, ANSI Standard for Bibliographic Information Exchange on magnetic tape, Common communication format (ISO 2709).<br />2.&nbsp;&nbsp;&nbsp; Katalog induk/bersama (union catalog)<br />3.&nbsp;&nbsp;&nbsp; Implementasi Thesaurus. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pengatalogan.<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pencarian, misalnya memberikan advis pencarian menggunakan knowledge base yang dibangun dengan sistem tesaurus.<br />4.&nbsp;&nbsp;&nbsp; Implementasi Library 2.0. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; User bisa login dan mempunyai halaman personalisasi.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan reservasi koleksi dan memperpanjang peminjaman.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan komunikasi dengan pustakawan via messaging system.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan tagging, rekomendasi koleksi dan menyimpannya didalam daftar koleksi favoritnya.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa memberikan komentar terhadap koleksi.<br />&bull;&nbsp;&nbsp;&nbsp; Pustakawan bisa memasukkan preferensi pemakai didalam data keanggotaan. Preferensi tersebut bisa dimanfaatkan salah satunya untuk men-generate semacam daftar koleksi terpilih untuk dicetak atau ditampilkan ketika user login.<br />5.&nbsp;&nbsp;&nbsp; Peningkatan dukungan manajemen konten digital dan entri analitikal<br /><br />Pengembangan basis komunitas pengguna:<br />&bull;&nbsp;&nbsp;&nbsp; Membangun komunitas pengguna di berbagai kota <br />&bull;&nbsp;&nbsp;&nbsp; Mengadakan Senayan Developers Day untuk silaturahmi antar developer Senayan, update dokumentasi, penambahan fitur baru dan bug fixing dan mencari bibit pengembang yang baru.<br />&bull;&nbsp;&nbsp;&nbsp; Workshop/Seminar Nasional Tahunan<br />&bull;&nbsp;&nbsp;&nbsp; Jam Sessions rutin setiap 3 bulan</p>','about_slims',NULL,0,NULL,'2010-08-28 23:29:55','2010-11-12 18:21:01','1'),
(6,'Modul yang Tersedia','<p><!--intro_awal-->Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN antara lain: pengatalogan/bibliografi, keanggotaan, sirkulasi, masterfile, stock opname (inventarisasi koleksi), pelaporan/reporting, manajemen kontrol serial, digital library, dan lain-lain.<!--intro_akhir--></p>\r\n<p>Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.</p>','modul_tersedia',NULL,0,NULL,'2010-08-29 04:03:09','2010-08-29 04:05:49','1'),
(7,'Lisensi SLiMS','<p><!--intro_awal--><strong>SLiMS</strong> dilisensikan dibawah GNU/GPL (http://www.gnu.org/licenses/gpl.html) untuk menjamin kebebasan pengguna dalam menggunakannya. GNU General Public License (disingkat GNU GPL atau cukup GPL) merupakan suatu lisensi perangkat lunak bebas yang aslinya ditulis oleh Richard Stallman untuk proyek GNU. Lisensi GPL memberikan penerima salinan perangkat lunak hak dari perangkat lunak bebas dan menggunakan copyleft&nbsp; untuk memastikan kebebasan yang sama diterapkan pada versi berikutnya dari karya tersebut.<!--intro_akhir--></p>\r\n<p>&nbsp;GNU LESSER GENERAL PUBLIC LICENSE<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version 3, 29 June 2007<br /><br />&nbsp;Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt;<br />&nbsp;Everyone is permitted to copy and distribute verbatim copies<br />&nbsp;of this license document, but changing it is not allowed.<br /><br /><br />&nbsp; This version of the GNU Lesser General Public License incorporates<br />the terms and conditions of version 3 of the GNU General Public<br />License, supplemented by the additional permissions listed below.<br /><br />&nbsp; 0. Additional Definitions.<br /><br />&nbsp; As used herein, \"this License\" refers to version 3 of the GNU Lesser<br />General Public License, and the \"GNU GPL\" refers to version 3 of the GNU<br />General Public License.<br /><br />&nbsp; \"The Library\" refers to a covered work governed by this License,<br />other than an Application or a Combined Work as defined below.<br /><br />&nbsp; An \"Application\" is any work that makes use of an interface provided<br />by the Library, but which is not otherwise based on the Library.<br />Defining a subclass of a class defined by the Library is deemed a mode<br />of using an interface provided by the Library.<br /><br />&nbsp; A \"Combined Work\" is a work produced by combining or linking an<br />Application with the Library.&nbsp; The particular version of the Library<br />with which the Combined Work was made is also called the \"Linked<br />Version\".<br /><br />&nbsp; The \"Minimal Corresponding Source\" for a Combined Work means the<br />Corresponding Source for the Combined Work, excluding any source code<br />for portions of the Combined Work that, considered in isolation, are<br />based on the Application, and not on the Linked Version.<br /><br />&nbsp; The \"Corresponding Application Code\" for a Combined Work means the<br />object code and/or source code for the Application, including any data<br />and utility programs needed for reproducing the Combined Work from the<br />Application, but excluding the System Libraries of the Combined Work.<br /><br />&nbsp; 1. Exception to Section 3 of the GNU GPL.<br /><br />&nbsp; You may convey a covered work under sections 3 and 4 of this License<br />without being bound by section 3 of the GNU GPL.<br /><br />&nbsp; 2. Conveying Modified Versions.<br /><br />&nbsp; If you modify a copy of the Library, and, in your modifications, a<br />facility refers to a function or data to be supplied by an Application<br />that uses the facility (other than as an argument passed when the<br />facility is invoked), then you may convey a copy of the modified<br />version:<br /><br />&nbsp;&nbsp; a) under this License, provided that you make a good faith effort to<br />&nbsp;&nbsp; ensure that, in the event an Application does not supply the<br />&nbsp;&nbsp; function or data, the facility still operates, and performs<br />&nbsp;&nbsp; whatever part of its purpose remains meaningful, or<br /><br />&nbsp;&nbsp; b) under the GNU GPL, with none of the additional permissions of<br />&nbsp;&nbsp; this License applicable to that copy.<br /><br />&nbsp; 3. Object Code Incorporating Material from Library Header Files.<br /><br />&nbsp; The object code form of an Application may incorporate material from<br />a header file that is part of the Library.&nbsp; You may convey such object<br />code under terms of your choice, provided that, if the incorporated<br />material is not limited to numerical parameters, data structure<br />layouts and accessors, or small macros, inline functions and templates<br />(ten or fewer lines in length), you do both of the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the object code that the<br />&nbsp;&nbsp; Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the object code with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp; 4. Combined Works.<br /><br />&nbsp; You may convey a Combined Work under terms of your choice that,<br />taken together, effectively do not restrict modification of the<br />portions of the Library contained in the Combined Work and reverse<br />engineering for debugging such modifications, if you also do each of<br />the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the Combined Work that<br />&nbsp;&nbsp; the Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the Combined Work with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp;&nbsp; c) For a Combined Work that displays copyright notices during<br />&nbsp;&nbsp; execution, include the copyright notice for the Library among<br />&nbsp;&nbsp; these notices, as well as a reference directing the user to the<br />&nbsp;&nbsp; copies of the GNU GPL and this license document.<br /><br />&nbsp;&nbsp; d) Do one of the following:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0) Convey the Minimal Corresponding Source under the terms of this<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License, and the Corresponding Application Code in a form<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; suitable for, and under terms that permit, the user to<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; recombine or relink the Application with a modified version of<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Linked Version to produce a modified Combined Work, in the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; manner specified by section 6 of the GNU GPL for conveying<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Corresponding Source.<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1) Use a suitable shared library mechanism for linking with the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Library.&nbsp; A suitable mechanism is one that (a) uses at run time<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a copy of the Library already present on the user\'s computer<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; system, and (b) will operate properly with a modified version<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the Library that is interface-compatible with the Linked<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version.<br /><br />&nbsp;&nbsp; e) Provide Installation Information, but only if you would otherwise<br />&nbsp;&nbsp; be required to provide such information under section 6 of the<br />&nbsp;&nbsp; GNU GPL, and only to the extent that such information is<br />&nbsp;&nbsp; necessary to install and execute a modified version of the<br />&nbsp;&nbsp; Combined Work produced by recombining or relinking the<br />&nbsp;&nbsp; Application with a modified version of the Linked Version. (If<br />&nbsp;&nbsp; you use option 4d0, the Installation Information must accompany<br />&nbsp;&nbsp; the Minimal Corresponding Source and Corresponding Application<br />&nbsp;&nbsp; Code. If you use option 4d1, you must provide the Installation<br />&nbsp;&nbsp; Information in the manner specified by section 6 of the GNU GPL<br />&nbsp;&nbsp; for conveying Corresponding Source.)<br /><br />&nbsp; 5. Combined Libraries.<br /><br />&nbsp; You may place library facilities that are a work based on the<br />Library side by side in a single library together with other library<br />facilities that are not Applications and are not covered by this<br />License, and convey such a combined library under terms of your<br />choice, if you do both of the following:<br /><br />&nbsp;&nbsp; a) Accompany the combined library with a copy of the same work based<br />&nbsp;&nbsp; on the Library, uncombined with any other library facilities,<br />&nbsp;&nbsp; conveyed under the terms of this License.<br /><br />&nbsp;&nbsp; b) Give prominent notice with the combined library that part of it<br />&nbsp;&nbsp; is a work based on the Library, and explaining where to find the<br />&nbsp;&nbsp; accompanying uncombined form of the same work.<br /><br />&nbsp; 6. Revised Versions of the GNU Lesser General Public License.<br /><br />&nbsp; The Free Software Foundation may publish revised and/or new versions<br />of the GNU Lesser General Public License from time to time. Such new<br />versions will be similar in spirit to the present version, but may<br />differ in detail to address new problems or concerns.<br /><br />&nbsp; Each version is given a distinguishing version number. If the<br />Library as you received it specifies that a certain numbered version<br />of the GNU Lesser General Public License \"or any later version\"<br />applies to it, you have the option of following the terms and<br />conditions either of that published version or of any later version<br />published by the Free Software Foundation. If the Library as you<br />received it does not specify a version number of the GNU Lesser<br />General Public License, you may choose any version of the GNU Lesser<br />General Public License ever published by the Free Software Foundation.<br /><br />&nbsp; If the Library as you received it specifies that a proxy can decide<br />whether future versions of the GNU Lesser General Public License shall<br />apply, that proxy\'s public statement of acceptance of any version is<br />permanent authorization for you to choose that version for the<br />Library.</p>','lisensi_slims',NULL,0,NULL,'2010-08-29 04:04:33','2010-11-12 22:15:43','1'),
(8,'Model Pengembangan Open Source','<p><!--intro_awal-->Sumber terbuka (Inggris: open source) adalah sistem pengembangan yang tidak dikoordinasi oleh suatu individu / lembaga pusat, tetapi oleh para pelaku yang bekerja sama dengan memanfaatkan kode sumber (source-code) yang tersebar dan tersedia bebas (biasanya menggunakan fasilitas komunikasi internet). Pola pengembangan ini mengambil model ala bazaar, sehingga pola Open Source ini memiliki ciri bagi komunitasnya yaitu adanya dorongan yang bersumber dari budaya memberi.<!--intro_akhir--><br /><br />Pola Open Source lahir karena kebebasan berkarya, tanpa intervensi berpikir dan mengungkapkan apa yang diinginkan dengan menggunakan pengetahuan dan produk yang cocok. Kebebasan menjadi pertimbangan utama ketika dilepas ke publik. Komunitas yang lain mendapat kebebasan untuk belajar, mengutak-ngatik, merevisi ulang, membenarkan ataupun bahkan menyalahkan, tetapi kebebasan ini juga datang bersama dengan tanggung jawab, bukan bebas tanpa tanggung jawab.<br /><br />Pada intinya konsep sumber terbuka adalah membuka \"kode sumber\" dari sebuah perangkat lunak. Konsep ini terasa aneh pada awalnya dikarenakan kode sumber merupakan kunci dari sebuah perangkat lunak. Dengan diketahui logika yang ada di kode sumber, maka orang lain semestinya dapat membuat perangkat lunak yang sama fungsinya. Sumber terbuka hanya sebatas itu. Artinya, dia tidak harus gratis. Definisi sumber terbuka yang asli adalah seperti tertuang dalam OSD (Open Source Definition)/Definisi sumber terbuka.</p>\r\n<p>Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.</p>','opensource',NULL,0,NULL,'2010-08-29 04:05:16','2010-08-29 04:34:04','1');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `files`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `files_read`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `files_read` WRITE;
/*!40000 ALTER TABLE `files_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_read` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `fines`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `fines` WRITE;
/*!40000 ALTER TABLE `fines` DISABLE KEYS */;
/*!40000 ALTER TABLE `fines` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `group_access`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `group_access` WRITE;
/*!40000 ALTER TABLE `group_access` DISABLE KEYS */;
INSERT INTO `group_access` (`group_id`, `module_id`, `menus`, `r`, `w`) VALUES (1,1,NULL,1,1),
(1,2,NULL,1,1),
(1,3,NULL,1,1),
(1,4,NULL,1,1),
(1,5,NULL,1,1),
(1,6,NULL,1,1),
(1,7,NULL,1,1),
(1,8,NULL,1,1);
/*!40000 ALTER TABLE `group_access` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `holiday`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `holiday` WRITE;
/*!40000 ALTER TABLE `holiday` DISABLE KEYS */;
INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES (1,'Mon','2009-06-01','Tes Libur'),
(2,'Tue','2009-06-02','Tes Libur'),
(3,'Wed','2009-06-03','Tes Libur'),
(4,'Thu','2009-06-04','Tes Libur'),
(5,'Fri','2009-06-05','Tes Libur'),
(6,'Sat','2009-06-06','Tes Libur');
/*!40000 ALTER TABLE `holiday` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `index_documents`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `index_documents` WRITE;
/*!40000 ALTER TABLE `index_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_documents` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `index_words`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `index_words` WRITE;
/*!40000 ALTER TABLE `index_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_words` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `item`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` (`item_id`, `biblio_id`, `call_number`, `coll_type_id`, `item_code`, `inventory_code`, `received_date`, `supplier_id`, `order_no`, `location_id`, `order_date`, `item_status_id`, `site`, `source`, `invoice`, `price`, `price_currency`, `invoice_date`, `input_date`, `last_update`, `uid`) VALUES (1,1,'510 MAT k.7',1,'SMPN3-MAT07-001',NULL,NULL,NULL,NULL,'R01',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(2,1,'510 MAT k.7',1,'SMPN3-MAT07-002',NULL,NULL,NULL,NULL,'R01',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(3,1,'510 MAT k.7',1,'SMPN3-MAT07-003',NULL,NULL,NULL,NULL,'R01',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(4,2,'500 IPA k.7',1,'SMPN3-IPA07-001',NULL,NULL,NULL,NULL,'R01',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(5,2,'500 IPA k.7',1,'SMPN3-IPA07-002',NULL,NULL,NULL,NULL,'R01',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(6,3,'410 IND k.8',1,'SMPN3-IND08-001',NULL,NULL,NULL,NULL,'R02',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(7,3,'410 IND k.8',1,'SMPN3-IND08-002',NULL,NULL,NULL,NULL,'R02',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(8,4,'813 FUA n',3,'SMPN3-NVL-001',NULL,NULL,NULL,NULL,'R05',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(9,4,'813 FUA n',3,'SMPN3-NVL-002',NULL,NULL,NULL,NULL,'R05',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(10,5,'813 HIR l',3,'SMPN3-NVL-003',NULL,NULL,NULL,NULL,'R05',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(11,5,'813 HIR l',3,'SMPN3-NVL-004',NULL,NULL,NULL,NULL,'R05',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(12,6,'813 TER s',3,'SMPN3-NVL-005',NULL,NULL,NULL,NULL,'R05',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1),
(13,7,'R 503 SUR e',2,'SMPN3-REF-001',NULL,NULL,NULL,NULL,'RTD',NULL,'NL',NULL,0,NULL,NULL,NULL,NULL,'2026-09-23 13:01:04','2026-09-23 13:01:04',1);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `item_custom`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `item_custom` WRITE;
/*!40000 ALTER TABLE `item_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_custom` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `kardex`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `kardex` WRITE;
/*!40000 ALTER TABLE `kardex` DISABLE KEYS */;
/*!40000 ALTER TABLE `kardex` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `loan`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `loan_history`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `loan_history` WRITE;
/*!40000 ALTER TABLE `loan_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_history` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `member`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`member_id`, `member_name`, `gender`, `birth_date`, `member_type_id`, `member_address`, `member_mail_address`, `member_email`, `postal_code`, `inst_name`, `is_new`, `member_image`, `pin`, `member_phone`, `member_fax`, `member_since_date`, `register_date`, `expire_date`, `member_notes`, `is_pending`, `mpasswd`, `last_login`, `last_login_ip`, `input_date`, `last_update`) VALUES ('202607001','Ahmad Fauzi',1,NULL,1,NULL,NULL,'ahmad.fauzi@smpn3cibungbulang.sch.id',NULL,NULL,NULL,NULL,NULL,'08123456701',NULL,'2026-09-23','2026-09-23','2027-09-23',NULL,0,'$2y$10$KVhSMylCgzVA6KZ4NueskeVP16e8qUNAisOMhmfefDgagny0MMJ1S',NULL,NULL,'2026-09-23','2026-09-23'),
('202608001','Siti Aisyah',0,NULL,2,NULL,NULL,'siti.aisyah@smpn3cibungbulang.sch.id',NULL,NULL,NULL,NULL,NULL,'08123456702',NULL,'2026-09-23','2026-09-23','2027-09-23',NULL,0,'$2y$10$KVhSMylCgzVA6KZ4NueskeVP16e8qUNAisOMhmfefDgagny0MMJ1S',NULL,NULL,'2026-09-23','2026-09-23'),
('202609001','Rizky Ramadhan',1,NULL,3,NULL,NULL,'rizky.ramadhan@smpn3cibungbulang.sch.id',NULL,NULL,NULL,NULL,NULL,'08123456703',NULL,'2026-09-23','2026-09-23','2027-09-23',NULL,0,'$2y$10$KVhSMylCgzVA6KZ4NueskeVP16e8qUNAisOMhmfefDgagny0MMJ1S',NULL,NULL,'2026-09-23','2026-09-23'),
('198501152010011002','Budi Santoso, S.Pd.',1,NULL,4,NULL,NULL,'budi.santoso@smpn3cibungbulang.sch.id',NULL,NULL,NULL,NULL,NULL,'08123456704',NULL,'2026-09-23','2026-09-23','2028-09-22',NULL,0,'$2y$10$KVhSMylCgzVA6KZ4NueskeVP16e8qUNAisOMhmfefDgagny0MMJ1S',NULL,NULL,'2026-09-23','2026-09-23'),
('199003202015022001','Nurul Hidayah, S.Kom.',0,NULL,5,NULL,NULL,'nurul.hidayah@smpn3cibungbulang.sch.id',NULL,NULL,NULL,NULL,NULL,'08123456705',NULL,'2026-09-23','2026-09-23','2028-09-22',NULL,0,'$2y$10$KVhSMylCgzVA6KZ4NueskeVP16e8qUNAisOMhmfefDgagny0MMJ1S',NULL,NULL,'2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `member_custom`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `member_custom` WRITE;
/*!40000 ALTER TABLE `member_custom` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_custom` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_author`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_author` WRITE;
/*!40000 ALTER TABLE `mst_author` DISABLE KEYS */;
INSERT INTO `mst_author` (`author_id`, `author_name`, `author_year`, `authority_type`, `auth_list`, `input_date`, `last_update`) VALUES (1,'Kemendikbudristek RI',NULL,'p',NULL,'2026-09-23','2026-09-23'),
(2,'Tere Liye',NULL,'p',NULL,'2026-09-23','2026-09-23'),
(3,'Andrea Hirata',NULL,'p',NULL,'2026-09-23','2026-09-23'),
(4,'Ahmad Fuadi',NULL,'p',NULL,'2026-09-23','2026-09-23'),
(5,'Tim Abdi Guru',NULL,'p',NULL,'2026-09-23','2026-09-23'),
(6,'Prof. Yohanes Surya, Ph.D.',NULL,'p',NULL,'2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_author` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_carrier_type`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_carrier_type` WRITE;
/*!40000 ALTER TABLE `mst_carrier_type` DISABLE KEYS */;
INSERT INTO `mst_carrier_type` (`id`, `carrier_type`, `code`, `code2`, `input_date`, `last_update`) VALUES (1,'audio cartridge','sg','g','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(2,'audio cylinder','se','e','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(3,'audio disc','sd','d','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(4,'sound track reel','si','i','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(5,'audio roll','sq','q','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(6,'audiocassette','ss','s','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(7,'audiotape reel','st','t','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(8,'other (audio)','sz','z','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(9,'computer card','ck','k','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(10,'computer chip cartridge','cb','b','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(11,'computer disc','cd','d','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(12,'computer disc cartridge','ce','e','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(13,'computer tape cartridge','ca','a','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(14,'computer tape cassette','cf','f','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(15,'computer tape reel','ch','h','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(16,'online resource','cr','r','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(17,'other (computer)','cz','z','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(18,'aperture card','ha','a','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(19,'microfiche','he','e','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(20,'microfiche cassette','hf','f','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(21,'microfilm cartridge','hb','b','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(22,'microfilm cassette','hc','c','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(23,'microfilm reel','hd','d','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(24,'microfilm roll','hj','j','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(25,'microfilm slip','hh','h','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(26,'microopaque','hg','g','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(27,'other (microform)','hz','z','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(28,'microscope slide','pp','p','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(29,'other (microscope)','pz','z','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(30,'film cartridge','mc','c','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(31,'film cassette','mf','f','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(32,'film reel','mr','r','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(33,'film roll','mo','o','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(34,'filmslip','gd','d','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(35,'filmstrip','gf','f','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(36,'filmstrip cartridge','gc','c','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(37,'overhead transparency','gt','t','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(38,'slide','gs','s','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(39,'other (projected image)','mz','z','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(40,'stereograph card','eh','h','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(41,'stereograph disc','es','s','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(42,'other (stereographic)','ez','z','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(43,'card','no','o','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(44,'flipchart','nn','n','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(45,'roll','na','a','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(46,'sheet','nb','b','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(47,'volume','nc','c','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(48,'object','nr','r','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(49,'other (unmediated)','nz','','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(50,'video cartridge','vc','','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(51,'videocassette','vf','','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(52,'videodisc','vd','','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(53,'videotape reel','vr','','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(54,'other (video)','vz','','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(55,'unspecified','zu','u','2026-09-23 11:42:01','2026-09-23 11:42:01');
/*!40000 ALTER TABLE `mst_carrier_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_coll_type`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_coll_type` WRITE;
/*!40000 ALTER TABLE `mst_coll_type` DISABLE KEYS */;
INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES (1,'Buku Pelajaran Paket','2007-11-29','2026-09-23'),
(2,'Buku Referensi','2007-11-29','2026-09-23'),
(3,'Fiksi & Sastra Remaja','2007-11-29','2026-09-23'),
(4,'Non-Fiksi Populer','2026-09-23','2026-09-23'),
(5,'Koleksi Digital PDF','2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_coll_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_content_type`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_content_type` WRITE;
/*!40000 ALTER TABLE `mst_content_type` DISABLE KEYS */;
INSERT INTO `mst_content_type` (`id`, `content_type`, `code`, `code2`, `input_date`, `last_update`) VALUES (1,'cartographic dataset','crd','e','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(2,'cartographic image','cri','e','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(3,'cartographic moving image','crm','e','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(4,'cartographic tactile image','crt','e','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(5,'cartographic tactile three-dimensional form','crn','e','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(6,'cartographic three-dimensional form','crf','e','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(7,'computer dataset','cod','m','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(8,'computer program','cop','m','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(9,'notated movement','ntv','a','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(10,'notated music','ntm','c','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(11,'performed music','prm','j','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(12,'sounds','snd','i','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(13,'spoken word','spw','i','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(14,'still image','sti','k','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(15,'tactile image','tci','k','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(16,'tactile notated music','tcm','c','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(17,'tactile notated movement','tcn','a','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(18,'tactile text','tct','a','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(19,'tactile three-dimensional form','tcf','r','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(20,'text','txt','a','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(21,'three-dimensional form','tdf','r','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(22,'three-dimensional moving image','tdm','g','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(23,'two-dimensional moving image','tdi','g','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(24,'other','xxx','o','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(25,'unspecified','zzz','','2026-09-23 11:42:01','2026-09-23 11:42:01');
/*!40000 ALTER TABLE `mst_content_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_custom_field`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_custom_field` WRITE;
/*!40000 ALTER TABLE `mst_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_custom_field` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_frequency`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_frequency` WRITE;
/*!40000 ALTER TABLE `mst_frequency` DISABLE KEYS */;
INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES (1,'Weekly','en',1,'week','2009-05-23','2009-05-23'),
(2,'Bi-weekly','en',2,'week','2009-05-23','2009-05-23'),
(3,'Fourth-Nightly','en',14,'day','2009-05-23','2009-05-23'),
(4,'Monthly','en',1,'month','2009-05-23','2009-05-23'),
(5,'Bi-Monthly','en',2,'month','2009-05-23','2009-05-23'),
(6,'Quarterly','en',3,'month','2009-05-23','2009-05-23'),
(7,'3 Times a Year','en',4,'month','2009-05-23','2009-05-23'),
(8,'Annualy','en',1,'year','2009-05-23','2009-05-23');
/*!40000 ALTER TABLE `mst_frequency` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_gmd`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_gmd` WRITE;
/*!40000 ALTER TABLE `mst_gmd` DISABLE KEYS */;
INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES (1,'TE','Text',NULL,'2026-09-23','2026-09-23'),
(2,'AR','Art Original',NULL,'2026-09-23','2026-09-23'),
(3,'CH','Chart',NULL,'2026-09-23','2026-09-23'),
(4,'CO','Computer Software',NULL,'2026-09-23','2026-09-23'),
(5,'DI','Diorama',NULL,'2026-09-23','2026-09-23'),
(6,'FI','Filmstrip',NULL,'2026-09-23','2026-09-23'),
(7,'FL','Flash Card',NULL,'2026-09-23','2026-09-23'),
(8,'GA','Game',NULL,'2026-09-23','2026-09-23'),
(9,'GL','Globe',NULL,'2026-09-23','2026-09-23'),
(10,'KI','Kit',NULL,'2026-09-23','2026-09-23'),
(11,'MA','Map',NULL,'2026-09-23','2026-09-23'),
(12,'MI','Microform',NULL,'2026-09-23','2026-09-23'),
(13,'MN','Manuscript',NULL,'2026-09-23','2026-09-23'),
(14,'MO','Model',NULL,'2026-09-23','2026-09-23'),
(15,'MP','Motion Picture',NULL,'2026-09-23','2026-09-23'),
(16,'MS','Microscope Slide',NULL,'2026-09-23','2026-09-23'),
(17,'MU','Music',NULL,'2026-09-23','2026-09-23'),
(18,'PI','Picture',NULL,'2026-09-23','2026-09-23'),
(19,'RE','Realia',NULL,'2026-09-23','2026-09-23'),
(20,'SL','Slide',NULL,'2026-09-23','2026-09-23'),
(21,'SO','Sound Recording',NULL,'2026-09-23','2026-09-23'),
(22,'TD','Technical Drawing',NULL,'2026-09-23','2026-09-23'),
(23,'TR','Transparency',NULL,'2026-09-23','2026-09-23'),
(24,'VI','Video Recording',NULL,'2026-09-23','2026-09-23'),
(25,'EQ','Equipment',NULL,'2026-09-23','2026-09-23'),
(26,'CF','Computer File',NULL,'2026-09-23','2026-09-23'),
(27,'CA','Cartographic Material',NULL,'2026-09-23','2026-09-23'),
(28,'CD','CD-ROM',NULL,'2026-09-23','2026-09-23'),
(29,'MV','Multimedia',NULL,'2026-09-23','2026-09-23'),
(30,'ER','Electronic Resource',NULL,'2026-09-23','2026-09-23'),
(31,'DVD','Digital Versatile Disc',NULL,'2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_gmd` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_item_status`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_item_status` WRITE;
/*!40000 ALTER TABLE `mst_item_status` DISABLE KEYS */;
INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES ('R','Repair','a:1:{i:0;s:1:\"1\";}',1,0,'2026-09-23','2026-09-23'),
('NL','No Loan','a:1:{i:0;s:1:\"1\";}',1,0,'2026-09-23','2026-09-23'),
('MIS','Missing',NULL,1,1,'2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_item_status` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_label`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_label` WRITE;
/*!40000 ALTER TABLE `mst_label` DISABLE KEYS */;
INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES (1,'label-new','New Title','label-new.png','2026-09-23','2026-09-23'),
(2,'label-favorite','Favorite Title','label-favorite.png','2026-09-23','2026-09-23'),
(3,'label-multimedia','Multimedia','label-multimedia.png','2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_label` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_language`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_language` WRITE;
/*!40000 ALTER TABLE `mst_language` DISABLE KEYS */;
INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES ('id','Indonesia','2026-09-23','2026-09-23'),
('en','English','2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_language` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_loan_rules`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_loan_rules` WRITE;
/*!40000 ALTER TABLE `mst_loan_rules` DISABLE KEYS */;
INSERT INTO `mst_loan_rules` (`loan_rules_id`, `member_type_id`, `coll_type_id`, `gmd_id`, `loan_limit`, `loan_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES (1,1,1,1,3,7,1,500,1,'2026-09-23','2026-09-23'),
(2,1,3,1,2,7,1,500,1,'2026-09-23','2026-09-23'),
(3,2,1,1,3,7,1,500,1,'2026-09-23','2026-09-23'),
(4,2,3,1,2,7,1,500,1,'2026-09-23','2026-09-23'),
(5,3,1,1,3,7,1,500,1,'2026-09-23','2026-09-23'),
(6,3,3,1,2,7,1,500,1,'2026-09-23','2026-09-23'),
(7,4,1,1,10,30,2,0,3,'2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_loan_rules` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_location`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_location` WRITE;
/*!40000 ALTER TABLE `mst_location` DISABLE KEYS */;
INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES ('SL','My Library','2026-09-23','2026-09-23'),
('R01','Rak 01 - Buku Pelajaran IPA & Matematika','2026-09-23','2026-09-23'),
('R02','Rak 02 - Buku Pelajaran Bahasa Indonesia & Inggris','2026-09-23','2026-09-23'),
('R03','Rak 03 - Buku IPS, PPKn, Sejarah, & Agama','2026-09-23','2026-09-23'),
('R04','Rak 04 - Karya Umum, Ensiklopedia, & Kamus Referensi','2026-09-23','2026-09-23'),
('R05','Rak 05 - Koleksi Fiksi, Komik Pendidikan, & Cerpen','2026-09-23','2026-09-23'),
('RTD','Rak Tandon - Koleksi Khusus Baca di Tempat','2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_location` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_media_type`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_media_type` WRITE;
/*!40000 ALTER TABLE `mst_media_type` DISABLE KEYS */;
INSERT INTO `mst_media_type` (`id`, `media_type`, `code`, `code2`, `input_date`, `last_update`) VALUES (1,'audio','s','s','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(2,'computer','c','c','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(3,'microform','h','h','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(4,'microscopic','p','','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(5,'projected','g','g','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(6,'stereographic','e','','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(7,'unmediated','n','t','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(8,'video','v','v','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(9,'other','x','z','2026-09-23 11:42:01','2026-09-23 11:42:01'),
(10,'unspecified','z','z','2026-09-23 11:42:01','2026-09-23 11:42:01');
/*!40000 ALTER TABLE `mst_media_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_member_type`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_member_type` WRITE;
/*!40000 ALTER TABLE `mst_member_type` DISABLE KEYS */;
INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES (1,'Siswa Kelas 7',3,7,1,2,365,1,500,0,'2026-09-23','2026-09-23'),
(2,'Siswa Kelas 8',3,7,1,1,365,1,500,1,'2026-09-23','2026-09-23'),
(3,'Siswa Kelas 9',3,7,1,1,365,1,500,1,'2026-09-23','2026-09-23'),
(4,'Guru / Tenaga Pendidik',10,30,1,3,730,2,0,3,'2026-09-23','2026-09-23'),
(5,'Tenaga Kependidikan / TU',5,14,1,2,730,1,200,2,'2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_member_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_module`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_module` WRITE;
/*!40000 ALTER TABLE `mst_module` DISABLE KEYS */;
INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES (1,'bibliography','bibliography','Manage your bibliographic/catalog and items/copies database'),
(2,'circulation','circulation','Module for doing library items circulation such as loan and return'),
(3,'membership','membership','Manage your library membership and membership type'),
(4,'master_file','master_file','Manage your referential data that will be used by other modules'),
(5,'stock_take','stock_take','Ease your pain in doing library stock opname process'),
(6,'system','system','Configure system behaviour, user and backups'),
(7,'reporting','reporting','Real time and dynamic report about library collections and circulation'),
(8,'serial_control','serial_control','Serial publication management');
/*!40000 ALTER TABLE `mst_module` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_place`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_place` WRITE;
/*!40000 ALTER TABLE `mst_place` DISABLE KEYS */;
INSERT INTO `mst_place` (`place_id`, `place_name`, `input_date`, `last_update`) VALUES (1,'Jakarta','2026-09-23','2026-09-23'),
(2,'Bandung','2026-09-23','2026-09-23'),
(3,'Bogor','2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_place` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_publisher`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_publisher` WRITE;
/*!40000 ALTER TABLE `mst_publisher` DISABLE KEYS */;
INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES (1,'Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi RI','2026-09-23','2026-09-23'),
(2,'Balai Pustaka','2026-09-23','2026-09-23'),
(3,'Penerbit Erlangga','2026-09-23','2026-09-23'),
(4,'Gramedia Pustaka Utama','2026-09-23','2026-09-23'),
(5,'Republika Penerbit','2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_publisher` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_relation_term`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_relation_term` WRITE;
/*!40000 ALTER TABLE `mst_relation_term` DISABLE KEYS */;
INSERT INTO `mst_relation_term` (`ID`, `rt_id`, `rt_desc`) VALUES (1,'U','Use'),
(2,'UF','Use For'),
(3,'BT','Broader Term'),
(4,'NT','Narrower Term'),
(5,'RT','Related Term'),
(6,'SA','See Also');
/*!40000 ALTER TABLE `mst_relation_term` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_servers`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_servers` WRITE;
/*!40000 ALTER TABLE `mst_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_servers` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_supplier`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_supplier` WRITE;
/*!40000 ALTER TABLE `mst_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_supplier` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_topic`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_topic` WRITE;
/*!40000 ALTER TABLE `mst_topic` DISABLE KEYS */;
INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES (1,'Matematika SMP','t',NULL,'510','2026-09-23','2026-09-23'),
(2,'Ilmu Pengetahuan Alam (IPA)','t',NULL,'500','2026-09-23','2026-09-23'),
(3,'Bahasa Indonesia','t',NULL,'410','2026-09-23','2026-09-23'),
(4,'Bahasa Inggris','t',NULL,'420','2026-09-23','2026-09-23'),
(5,'Pendidikan Pancasila & Kewarganegaraan','t',NULL,'320','2026-09-23','2026-09-23'),
(6,'Fiksi Remaja & Sastra Indonesia','t',NULL,'813','2026-09-23','2026-09-23'),
(7,'Ensiklopedia Sains & Teknologi','t',NULL,'503','2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `mst_topic` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_visitor_room`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_visitor_room` WRITE;
/*!40000 ALTER TABLE `mst_visitor_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_visitor_room` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `mst_voc_ctrl`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `mst_voc_ctrl` WRITE;
/*!40000 ALTER TABLE `mst_voc_ctrl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mst_voc_ctrl` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `plugins`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `reserve`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `reserve` WRITE;
/*!40000 ALTER TABLE `reserve` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserve` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `search_biblio`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `search_biblio` WRITE;
/*!40000 ALTER TABLE `search_biblio` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_biblio` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `serial`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `serial` WRITE;
/*!40000 ALTER TABLE `serial` DISABLE KEYS */;
/*!40000 ALTER TABLE `serial` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `setting`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES (1,'library_name','s:19:\"SMPN 3 CIBUNGBULANG\";'),
(2,'library_subname','s:43:\"Perpustakaan Digital & Pusat Sumber Belajar\";'),
(3,'template','a:2:{s:5:\"theme\";s:12:\"smpn3_bulian\";s:3:\"css\";s:31:\"template/smpn3_bulian/style.css\";}'),
(4,'admin_template','a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:32:\"admin_template/default/style.css\";}'),
(5,'default_lang','s:5:\"id_ID\";'),
(6,'opac_result_num','s:2:\"10\";'),
(7,'enable_promote_titles','N;'),
(8,'quick_return','b:1;'),
(9,'allow_loan_date_change','b:0;'),
(10,'loan_limit_override','b:0;'),
(11,'enable_xml_detail','b:1;'),
(12,'enable_xml_result','b:1;'),
(13,'allow_file_download','b:1;'),
(14,'session_timeout','s:4:\"7200\";'),
(15,'circulation_receipt','b:0;'),
(16,'barcode_encoding','s:7:\"code128\";'),
(17,'ignore_holidays_fine_calc','b:0;'),
(18,'barcode_print_settings','a:12:{s:19:\"barcode_page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:21:\"barcode_items_per_row\";i:3;s:20:\"barcode_items_margin\";d:0.1000000000000000055511151231257827021181583404541015625;s:17:\"barcode_box_width\";i:7;s:18:\"barcode_box_height\";i:5;s:27:\"barcode_include_header_text\";i:1;s:17:\"barcode_cut_title\";i:50;s:19:\"barcode_header_text\";s:0:\"\";s:13:\"barcode_fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:17:\"barcode_font_size\";i:11;s:13:\"barcode_scale\";i:70;s:19:\"barcode_border_size\";i:1;}'),
(19,'label_print_settings','a:10:{s:11:\"page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:13:\"items_per_row\";i:3;s:12:\"items_margin\";d:0.05000000000000000277555756156289135105907917022705078125;s:9:\"box_width\";i:8;s:10:\"box_height\";d:3.29999999999999982236431605997495353221893310546875;s:19:\"include_header_text\";i:1;s:11:\"header_text\";s:0:\"\";s:5:\"fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:9:\"font_size\";i:11;s:11:\"border_size\";i:1;}'),
(20,'membercard_print_settings','a:1:{s:5:\"print\";a:1:{s:10:\"membercard\";a:61:{s:11:\"card_factor\";s:12:\"37.795275591\";s:21:\"card_include_id_label\";i:1;s:23:\"card_include_name_label\";i:1;s:22:\"card_include_pin_label\";i:1;s:23:\"card_include_inst_label\";i:0;s:24:\"card_include_email_label\";i:0;s:26:\"card_include_address_label\";i:1;s:26:\"card_include_barcode_label\";i:1;s:26:\"card_include_expired_label\";i:1;s:14:\"card_box_width\";d:8.5999999999999996447286321199499070644378662109375;s:15:\"card_box_height\";d:5.4000000000000003552713678800500929355621337890625;s:9:\"card_logo\";s:8:\"logo.png\";s:21:\"card_front_logo_width\";s:0:\"\";s:22:\"card_front_logo_height\";s:0:\"\";s:20:\"card_front_logo_left\";s:0:\"\";s:19:\"card_front_logo_top\";s:0:\"\";s:20:\"card_back_logo_width\";s:0:\"\";s:21:\"card_back_logo_height\";s:0:\"\";s:19:\"card_back_logo_left\";s:0:\"\";s:18:\"card_back_logo_top\";s:0:\"\";s:15:\"card_photo_left\";s:0:\"\";s:14:\"card_photo_top\";s:0:\"\";s:16:\"card_photo_width\";d:1.5;s:17:\"card_photo_height\";d:1.8000000000000000444089209850062616169452667236328125;s:23:\"card_front_header1_text\";s:19:\"Library Member Card\";s:28:\"card_front_header1_font_size\";s:2:\"12\";s:23:\"card_front_header2_text\";s:10:\"My Library\";s:28:\"card_front_header2_font_size\";s:2:\"12\";s:22:\"card_back_header1_text\";s:10:\"My Library\";s:27:\"card_back_header1_font_size\";s:2:\"12\";s:22:\"card_back_header2_text\";s:35:\"My Library Full Address and Website\";s:27:\"card_back_header2_font_size\";s:1:\"5\";s:17:\"card_header_color\";s:7:\"#0066FF\";s:18:\"card_bio_font_size\";s:2:\"11\";s:20:\"card_bio_font_weight\";s:4:\"bold\";s:20:\"card_bio_label_width\";s:3:\"100\";s:9:\"card_city\";s:9:\"City Name\";s:10:\"card_title\";s:15:\"Library Manager\";s:14:\"card_officials\";s:14:\"Librarian Name\";s:17:\"card_officials_id\";s:12:\"Librarian ID\";s:15:\"card_stamp_file\";s:9:\"stamp.png\";s:19:\"card_signature_file\";s:13:\"signature.png\";s:15:\"card_stamp_left\";s:0:\"\";s:14:\"card_stamp_top\";s:0:\"\";s:16:\"card_stamp_width\";s:0:\"\";s:17:\"card_stamp_height\";s:0:\"\";s:13:\"card_exp_left\";s:0:\"\";s:12:\"card_exp_top\";s:0:\"\";s:14:\"card_exp_width\";s:0:\"\";s:15:\"card_exp_height\";s:0:\"\";s:18:\"card_barcode_scale\";i:100;s:17:\"card_barcode_left\";s:0:\"\";s:16:\"card_barcode_top\";s:0:\"\";s:18:\"card_barcode_width\";s:0:\"\";s:19:\"card_barcode_height\";s:0:\"\";s:10:\"card_rules\";s:120:\"<ul><li>This card is published by Library.</li><li>Please return this card to its owner if you found it.</li></ul>\";s:20:\"card_rules_font_size\";s:1:\"8\";s:12:\"card_address\";s:76:\"My Library<br />website: http://slims.web.id, email : librarian@slims.web.id\";s:22:\"card_address_font_size\";s:1:\"7\";s:17:\"card_address_left\";s:0:\"\";s:16:\"card_address_top\";s:0:\"\";}}}'),
(21,'enable_visitor_limitation','s:1:\"0\";'),
(22,'time_visitor_limitation','s:2:\"60\";'),
(23,'library_address','s:82:\"Jl. Kapten Dasuki Bakri, Cibatok 1, Kec. Cibungbulang, Kab. Bogor, Jawa Barat 16630\";'),
(24,'library_phone','s:14:\"(0251) 8645000\";'),
(25,'library_email','s:36:\"perpustakaan@smpn3cibungbulang.sch.id\";'),
(26,'library_website','s:32:\"http://smpn3cibungbulang.sch.id\";'),
(27,'auto_coll_type','s:1:\"1\";'),
(28,'allow_loan_fine','s:1:\"1\";'),
(29,'visitor_counter','s:1:\"1\";'),
(34,'remember_me_timeout','i:30;'),
(30,'init_info','a:3:{s:7:\"version\";s:22:\"SLiMS 9 (Bulian D Ace)\";s:3:\"tag\";s:6:\"v9.8.0\";s:9:\"admin_url\";s:6:\"/admin\";}'),
(31,'static_file_version','i:241441031;'),
(32,'timezone','s:12:\\\"Asia/Jakarta\\\";'),
(33,'search_engine','s:34:\\\"SLiMS\\\\\\\\SearchEngine\\\\\\\\DefaultEngine\\\";'),
(35,'enable_counter_by_ip','s:1:\\\"1\\\";'),
(36,'allowed_counter_ip','a:1:{i:0;s:0:\\\"\\\";}'),
(37,'reserve_direct_database','s:1:\\\"1\\\";'),
(38,'reserve_on_loan_only','s:1:\\\"0\\\";'),
(39,'spellchecker_enabled','b:1;'),
(40,'enable_chbox_confirm','i:1;'),
(41,'http','a:2:{s:6:\\\"client\\\";a:2:{s:6:\\\"verify\\\";b:1;s:7:\\\"timeout\\\";i:60;}s:5:\\\"cache\\\";a:1:{s:8:\\\"lifetime\\\";i:300;}}'),
(42,'simplified_simple_search','b:0;'),
(43,'password_policy_strong','b:1;'),
(44,'password_policy_min_length','i:8;');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `stock_take`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `stock_take` WRITE;
/*!40000 ALTER TABLE `stock_take` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_take` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `stock_take_item`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `stock_take_item` WRITE;
/*!40000 ALTER TABLE `stock_take_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_take_item` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `system_log`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `system_log` WRITE;
/*!40000 ALTER TABLE `system_log` DISABLE KEYS */;
INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `sub_module`, `action`, `log_msg`, `log_date`) VALUES (1,'staff','admin','Login','','','Login FAILED for user admin from address 172.23.0.1','2026-09-23 18:43:11'),
(2,'staff','admin','Login','','','Login FAILED for user admin from address 172.23.0.1','2026-09-23 18:43:29'),
(3,'staff','superadmin@admin.com','Login','','','Login success for user superadmin@admin.com from address 172.23.0.1','2026-09-23 18:56:15'),
(4,'staff','admin','Login','','','Login success for user admin from address 172.23.0.1','2026-09-23 18:56:33'),
(5,'staff','superadmin@admin.com','Login','','','Login success for user superadmin@admin.com from address 172.23.0.1','2026-09-23 18:56:34'),
(6,'staff','admin','Login','','','Login success for user admin from address 172.23.0.1','2026-09-23 19:02:01'),
(7,'staff','superadmin@admin.com','Login','','','Login success for user superadmin@admin.com from address 172.23.0.1','2026-09-23 19:02:03'),
(8,'staff','admin','Login','','','Login success for user admin from address 172.23.0.1','2026-09-23 19:04:38'),
(9,'staff','superadmin@admin.com','Login','','','Login success for user superadmin@admin.com from address 172.23.0.1','2026-09-23 19:04:40'),
(10,'staff','admin','Login','','','Login success for user admin from address 172.23.0.1','2026-09-23 19:38:19'),
(11,'staff','admin','Login','','','Login success for user admin from address 172.23.0.1','2026-09-23 19:46:46'),
(12,'staff','admin','Login','','','Login success for user admin from address 172.23.0.1','2026-09-23 19:47:26'),
(13,'staff','admin','Login','','','Login success for user admin from address 172.23.0.1','2026-09-23 19:48:19'),
(14,'staff','1','system','Global Config','Update','Administrator change application global configuration','2026-09-23 19:54:26'),
(15,'staff','admin','Login','','','Login success for user admin from address 172.23.0.1','2026-09-23 20:06:16');
/*!40000 ALTER TABLE `system_log` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `user`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `2fa`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `forgot`, `admin_template`, `input_date`, `last_update`) VALUES (1,'admin','Administrator','$2y$10$CzAgfORJtlHFxBPW.VaQyeou89/h8bbF0ICrGYcaurVx9C.pvclLa',NULL,'superadmin@admin.com',NULL,NULL,NULL,NULL,'127.0.0.1','a:1:{i:0;s:1:\"1\";}',NULL,'a:3:{s:5:\"theme\";s:9:\"nightmode\";s:3:\"css\";s:34:\"admin_template/nightmode/style.css\";s:12:\"default_lang\";s:5:\"id_ID\";}','2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `user_group`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES (1,'Administrator','2026-09-23','2026-09-23');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `user_tokens`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `user_tokens` WRITE;
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Dumping data for table `visitor_count`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `visitor_count` WRITE;
/*!40000 ALTER TABLE `visitor_count` DISABLE KEYS */;
INSERT INTO `visitor_count` (`visitor_id`, `member_id`, `member_name`, `institution`, `room_code`, `checkin_date`) VALUES (1,'SMPN3-001','Tamu (SMPN3-001)','Tamu Luar / Umum',NULL,'2026-09-23 11:57:07'),
(2,'202607001','Ahmad Fauzi',NULL,NULL,'2026-09-23 13:01:22'),
(3,'202607001','Ahmad Fauzi',NULL,NULL,'2026-09-23 13:05:49');
/*!40000 ALTER TABLE `visitor_count` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-09-23 13:12:13
