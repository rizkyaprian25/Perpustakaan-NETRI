-- ==============================================================================
-- Skrip Inisialisasi & Seeder Data SMPN 3 CIBUNGBULANG untuk SLiMS 9 Bulian
-- Dibuat sesuai Master Engineering SOP & 6-Phase Lifecycle Engine
-- Idempoten: Aman dieksekusi berulang kali tanpa merusak data yang sudah ada
-- ==============================================================================

-- 1. Pengaturan Identitas Perpustakaan Sekolah di Tabel `setting`
INSERT INTO `setting` (`setting_name`, `setting_value`) VALUES 
('library_name', '\"SMPN 3 CIBUNGBULANG\"'),
('library_subname', '\"Perpustakaan Digital & Pusat Sumber Belajar\"'),
('library_address', '\"Jl. Kapten Dasuki Bakri, Cibatok 1, Kec. Cibungbulang, Kab. Bogor, Jawa Barat 16630\"'),
('library_phone', '\"(0251) 8645000\"'),
('library_email', '\"perpustakaan@smpn3cibungbulang.sch.id\"'),
('library_website', '\"http://smpn3cibungbulang.sch.id\"'),
('quick_return', '1'),
('auto_coll_type', '1'),
('allow_loan_fine', '1'),
('opac_result_num', '12'),
('visitor_counter', '1')
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

-- 3. Tipe Koleksi Perpustakaan Sekolah (`mst_coll_type`)
INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'Buku Pelajaran Paket (Kurikulum Merdeka)', NOW(), NOW()),
(2, 'Buku Referensi & Ensiklopedia', NOW(), NOW()),
(3, 'Fiksi / Cerita / Novel Remaja', NOW(), NOW()),
(4, 'Non-Fiksi / Pengetahuan Populer', NOW(), NOW()),
(5, 'Koleksi Digital / E-Book PDF', NOW(), NOW())
ON DUPLICATE KEY UPDATE 
  `coll_type_name` = VALUES(`coll_type_name`),
  `last_update` = NOW();

-- 4. Lokasi Rak Buku Perpustakaan SMPN 3 Cibungbulang (`mst_location`)
INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('RAK-01', 'Rak 01 - Buku Pelajaran IPA & Matematika', NOW(), NOW()),
('RAK-02', 'Rak 02 - Buku Pelajaran Bahasa Indonesia & Inggris', NOW(), NOW()),
('RAK-03', 'Rak 03 - Buku IPS, PPKn, Sejarah, & Agama', NOW(), NOW()),
('RAK-04', 'Rak 04 - Karya Umum, Ensiklopedia, & Kamus Referensi', NOW(), NOW()),
('RAK-05', 'Rak 05 - Koleksi Fiksi, Komik Pendidikan, & Cerpen', NOW(), NOW()),
('RAK-TANDON', 'Rak Tandon - Koleksi Khusus Baca di Tempat', NOW(), NOW())
ON DUPLICATE KEY UPDATE 
  `location_name` = VALUES(`location_name`),
  `last_update` = NOW();

-- 5. Aturan Peminjaman Lintas Tipe Anggota & Tipe Koleksi (`loan_rule`)
-- Siswa hanya boleh meminjam Buku Pelajaran, Fiksi, dan Non-Fiksi
-- Buku Referensi (ID 2) TIDAK BOLEH dipinjam pulang (baca di tempat)
INSERT INTO `loan_rule` (`loan_rule_id`, `member_type_id`, `coll_type_id`, `gmd_id`, `loan_limit`, `loan_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
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
