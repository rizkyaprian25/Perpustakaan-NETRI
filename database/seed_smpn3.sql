-- ==============================================================================
-- Skrip Inisialisasi & Seeder Data SMPN 3 CIBUNGBULANG untuk SLiMS 9 Bulian
-- Dibuat sesuai Master Engineering SOP & 6-Phase Lifecycle Engine
-- Idempoten: Aman dieksekusi berulang kali tanpa merusak data yang sudah ada
-- ==============================================================================

-- 1. Pengaturan Identitas Perpustakaan Sekolah di Tabel `setting`
-- SLiMS 9 menyimpan nilai string dalam format PHP serialize: s:length:"value";
INSERT INTO `setting` (`setting_name`, `setting_value`) VALUES 
('library_name', 's:19:\"SMPN 3 CIBUNGBULANG\";'),
('library_subname', 's:43:\"Perpustakaan Digital & Pusat Sumber Belajar\";'),
('library_address', 's:82:\"Jl. Kapten Dasuki Bakri, Cibatok 1, Kec. Cibungbulang, Kab. Bogor, Jawa Barat 16630\";'),
('library_phone', 's:14:\"(0251) 8645000\";'),
('library_email', 's:36:\"perpustakaan@smpn3cibungbulang.sch.id\";'),
('library_website', 's:32:\"http://smpn3cibungbulang.sch.id\";'),
('template', 'a:2:{s:5:\"theme\";s:12:\"smpn3_bulian\";s:3:\"css\";s:31:\"template/smpn3_bulian/style.css\";}'),
('quick_return', 's:1:\"1\";'),
('auto_coll_type', 's:1:\"1\";'),
('allow_loan_fine', 's:1:\"1\";'),
('opac_result_num', 's:2:\"12\";'),
('visitor_counter', 's:1:\"1\";'),
('default_lang', 's:5:\"id_ID\";')
ON DUPLICATE KEY UPDATE `setting_value` = VALUES(`setting_value`);

-- 2. Tipe Keanggotaan Khusus Jenjang SMP (`mst_member_type`)
-- Masa berlaku siswa 365 hari (1 tahun ajaran), guru & staf 730 hari (2 tahun)
INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'Siswa Kelas 7', 3, 7, 1, 1, 365, 1, 500, 1, NOW(), NOW()),
(2, 'Siswa Kelas 8', 3, 7, 1, 1, 365, 1, 500, 1, NOW(), NOW()),
(3, 'Siswa Kelas 9', 3, 7, 1, 1, 365, 1, 500, 1, NOW(), NOW()),
(4, 'Guru / Tenaga Pendidik', 10, 30, 1, 3, 730, 2, 0, 3, NOW(), NOW()),
(5, 'Tenaga Kependidikan / TU', 5, 14, 1, 2, 730, 1, 200, 2, NOW(), NOW())
ON DUPLICATE KEY UPDATE 
  `member_type_name` = VALUES(`member_type_name`),
  `loan_limit` = VALUES(`loan_limit`),
  `loan_periode` = VALUES(`loan_periode`),
  `fine_each_day` = VALUES(`fine_each_day`),
  `last_update` = NOW();

-- 3. Tipe Koleksi Perpustakaan Sekolah (`mst_coll_type`, maks 30 karakter)
INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'Buku Pelajaran Paket', NOW(), NOW()),
(2, 'Buku Referensi', NOW(), NOW()),
(3, 'Fiksi & Sastra Remaja', NOW(), NOW()),
(4, 'Non-Fiksi Populer', NOW(), NOW()),
(5, 'Koleksi Digital PDF', NOW(), NOW())
ON DUPLICATE KEY UPDATE 
  `coll_type_name` = VALUES(`coll_type_name`),
  `last_update` = NOW();

-- 4. Lokasi Rak Buku Perpustakaan SMPN 3 Cibungbulang (`mst_location`, ID maks 3 char)
INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('R01', 'Rak 01 - Buku Pelajaran IPA & Matematika', NOW(), NOW()),
('R02', 'Rak 02 - Buku Pelajaran Bahasa Indonesia & Inggris', NOW(), NOW()),
('R03', 'Rak 03 - Buku IPS, PPKn, Sejarah, & Agama', NOW(), NOW()),
('R04', 'Rak 04 - Karya Umum, Ensiklopedia, & Kamus Referensi', NOW(), NOW()),
('R05', 'Rak 05 - Koleksi Fiksi, Komik Pendidikan, & Cerpen', NOW(), NOW()),
('RTD', 'Rak Tandon - Koleksi Khusus Baca di Tempat', NOW(), NOW())
ON DUPLICATE KEY UPDATE 
  `location_name` = VALUES(`location_name`),
  `last_update` = NOW();

-- 5. Aturan Peminjaman Lintas Tipe Anggota & Tipe Koleksi (`mst_loan_rules`)
INSERT INTO `mst_loan_rules` (`loan_rules_id`, `member_type_id`, `coll_type_id`, `gmd_id`, `loan_limit`, `loan_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 1, 1, 1, 3, 7, 1, 500, 1, NOW(), NOW()), -- Siswa 7 pinjam Buku Pelajaran
(2, 1, 3, 1, 2, 7, 1, 500, 1, NOW(), NOW()), -- Siswa 7 pinjam Fiksi
(3, 2, 1, 1, 3, 7, 1, 500, 1, NOW(), NOW()), -- Siswa 8 pinjam Buku Pelajaran
(4, 2, 3, 1, 2, 7, 1, 500, 1, NOW(), NOW()), -- Siswa 8 pinjam Fiksi
(5, 3, 1, 1, 3, 7, 1, 500, 1, NOW(), NOW()), -- Siswa 9 pinjam Buku Pelajaran
(6, 3, 3, 1, 2, 7, 1, 500, 1, NOW(), NOW()), -- Siswa 9 pinjam Fiksi
(7, 4, 1, 1, 10, 30, 2, 0, 3, NOW(), NOW())  -- Guru pinjam Buku Pelajaran
ON DUPLICATE KEY UPDATE 
  `loan_limit` = VALUES(`loan_limit`),
  `loan_periode` = VALUES(`loan_periode`),
  `fine_each_day` = VALUES(`fine_each_day`),
  `last_update` = NOW();

-- 6. Akun Administrator Perpustakaan
-- Mengizinkan login menggunakan username 'admin' maupun email 'superadmin@admin.com'
UPDATE `user` SET 
  `email` = 'superadmin@admin.com',
  `passwd` = '$2y$10$KuGrXwvfIv5wHMXbeYitC.9.EJnxwZMyHpiGVdMt7pEkBEdn5qgby',
  `last_update` = NOW()
WHERE `username` = 'admin';

-- 7. Lokalisasi Konten Web Perpustakaan ke Bahasa Indonesia
UPDATE `content` SET 
  `content_title` = 'Informasi Perpustakaan',
  `content_desc` = '<h3>Profil & Kontak Perpustakaan</h3><p><strong>Nama Sekolah :</strong> SMP Negeri 3 Cibungbulang<br /><strong>Alamat :</strong> Jl. Kapten Dasuki Bakri, Cibatok 1, Kec. Cibungbulang, Kab. Bogor, Jawa Barat 16630<br /><strong>Telepon :</strong> (0251) 8645000<br /><strong>Email :</strong> perpustakaan@smpn3cibungbulang.sch.id<br /><strong>Website :</strong> http://smpn3cibungbulang.sch.id</p><h3>Jam Layanan Perpustakaan</h3><p><strong>Senin - Kamis :</strong> 07.30 - 15.00 WIB (Istirahat: 12.00 - 13.00 WIB)<br /><strong>Jumat :</strong> 07.30 - 11.30 & 13.00 - 15.00 WIB<br /><strong>Sabtu - Minggu :</strong> Tutup / Libur</p><h3>Koleksi Perpustakaan</h3><p>Perpustakaan SMPN 3 Cibungbulang menyediakan Buku Pelajaran Paket Kurikulum Merdeka (Kelas 7, 8, 9), Buku Referensi Ensiklopedia, Karya Sastra & Fiksi Remaja, Non-Fiksi Populer, dan Koleksi Digital PDF.</p><h3>Ketentuan Keanggotaan</h3><p>Seluruh siswa dan guru terdaftar otomatis menggunakan NISN/NIP dengan hak pinjam 3 buku selama 7 hari kalender.</p>',
  `last_update` = NOW()
WHERE `content_path` = 'libinfo';

UPDATE `content` SET 
  `content_title` = 'Bantuan & Panduan Pencarian',
  `content_desc` = '<h3>Panduan Pencarian Katalog (OPAC)</h3><p>Gunakan kotak pencarian utama untuk <strong>Pencarian Sederhana</strong> dengan mengetikkan judul buku, nama pengarang, atau topik pelajaran. Untuk pencarian terarah, gunakan <strong>Pencarian Spesifik</strong> untuk menyaring berdasarkan judul, pengarang, subjek, nomor panggil/ISBN, atau lokasi rak buku.</p>',
  `last_update` = NOW()
WHERE `content_path` = 'help';

UPDATE `content` SET 
  `content_title` = 'Informasi Beranda',
  `content_desc` = '<p>Selamat datang di Katalog Akses Publik Daring (OPAC) <strong>Perpustakaan SMP Negeri 3 Cibungbulang</strong>. Temukan buku pelajaran, ensiklopedia referensi, dan karya fiksi untuk memperkaya ilmu dan wawasan Anda.</p>',
  `last_update` = NOW()
WHERE `content_path` = 'headerinfo';
