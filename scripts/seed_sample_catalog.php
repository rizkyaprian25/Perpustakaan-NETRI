<?php
/**
 * ==============================================================================
 * Seeder Data Sampel Katalog & Anggota SMPN 3 CIBUNGBULANG
 * Perpustakaan SMPN 3 CIBUNGBULANG - SLiMS 9 Bulian
 * Standar Rekayasa: SoftwareEngineer.md (Fase 1 - SSOT & Fase 4 - Quality Gate)
 * Idempoten: Aman dijalankan berulang kali tanpa membuat duplikasi data
 * ==============================================================================
 */

$pdo = new PDO('mysql:host=db;port=3306;dbname=db_perpus_smpn3;charset=utf8mb4', 'root', 'root123', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);

echo "====================================================================\n";
echo "   MEMUAT DATA SAMPEL PERPUSTAKAAN SMPN 3 CIBUNGBULANG              \n";
echo "====================================================================\n\n";

// 1. Data Penerbit (mst_publisher)
$publishers = [
    1 => 'Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi RI',
    2 => 'Balai Pustaka',
    3 => 'Penerbit Erlangga',
    4 => 'Gramedia Pustaka Utama',
    5 => 'Republika Penerbit'
];
foreach ($publishers as $id => $name) {
    $stmt = $pdo->prepare("INSERT INTO mst_publisher (publisher_id, publisher_name, input_date, last_update) VALUES (?, ?, NOW(), NOW()) ON DUPLICATE KEY UPDATE publisher_name = VALUES(publisher_name)");
    $stmt->execute([$id, $name]);
}
echo "[1] Data Penerbit berhasil disiapkan.\n";

// 2. Data Tempat Terbit (mst_place)
$places = [
    1 => 'Jakarta',
    2 => 'Bandung',
    3 => 'Bogor'
];
foreach ($places as $id => $name) {
    $stmt = $pdo->prepare("INSERT INTO mst_place (place_id, place_name, input_date, last_update) VALUES (?, ?, NOW(), NOW()) ON DUPLICATE KEY UPDATE place_name = VALUES(place_name)");
    $stmt->execute([$id, $name]);
}
echo "[2] Data Tempat Terbit berhasil disiapkan.\n";

// 3. Data Pengarang (mst_author)
$authors = [
    1 => 'Kemendikbudristek RI',
    2 => 'Tere Liye',
    3 => 'Andrea Hirata',
    4 => 'Ahmad Fuadi',
    5 => 'Tim Abdi Guru',
    6 => 'Prof. Yohanes Surya, Ph.D.'
];
foreach ($authors as $id => $name) {
    $stmt = $pdo->prepare("INSERT INTO mst_author (author_id, author_name, authority_type, input_date, last_update) VALUES (?, ?, 'p', NOW(), NOW()) ON DUPLICATE KEY UPDATE author_name = VALUES(author_name)");
    $stmt->execute([$id, $name]);
}
echo "[3] Data Pengarang berhasil disiapkan.\n";

// 4. Data Subjek / Topik (mst_topic)
$topics = [
    1 => ['Matematika SMP', '510'],
    2 => ['Ilmu Pengetahuan Alam (IPA)', '500'],
    3 => ['Bahasa Indonesia', '410'],
    4 => ['Bahasa Inggris', '420'],
    5 => ['Pendidikan Pancasila & Kewarganegaraan', '320'],
    6 => ['Fiksi Remaja & Sastra Indonesia', '813'],
    7 => ['Ensiklopedia Sains & Teknologi', '503']
];
foreach ($topics as $id => $row) {
    $stmt = $pdo->prepare("INSERT INTO mst_topic (topic_id, topic, topic_type, classification, input_date, last_update) VALUES (?, ?, 't', ?, NOW(), NOW()) ON DUPLICATE KEY UPDATE topic = VALUES(topic), classification = VALUES(classification)");
    $stmt->execute([$id, $row[0], $row[1]]);
}
echo "[4] Data Subjek/Topik berhasil disiapkan.\n";

// 5. Data Bibliografi Buku (biblio)
$books = [
    1 => [
        'title' => 'Matematika untuk SMP/MTs Kelas VII (Kurikulum Merdeka)',
        'isbn' => '978-602-244-883-9',
        'publisher_id' => 1,
        'publish_place_id' => 1,
        'publish_year' => '2022',
        'call_number' => '510 MAT k.7',
        'classification' => '510',
        'author_id' => 1,
        'topic_id' => 1,
        'coll_type_id' => 1,
        'location_id' => 'R01',
        'items' => ['SMPN3-MAT07-001', 'SMPN3-MAT07-002', 'SMPN3-MAT07-003'],
        'notes' => 'Buku teks utama mata pelajaran Matematika jenjang SMP/MTs Kelas 7 berbasis Kurikulum Merdeka. Membahas bilangan bulat, pecahan, aljabar, persamaan linier, kesebangunan, dan statistika dasar.'
    ],
    2 => [
        'title' => 'Ilmu Pengetahuan Alam (IPA) untuk SMP Kelas VII (Kurikulum Merdeka)',
        'isbn' => '978-602-244-785-6',
        'publisher_id' => 1,
        'publish_place_id' => 1,
        'publish_year' => '2022',
        'call_number' => '500 IPA k.7',
        'classification' => '500',
        'author_id' => 1,
        'topic_id' => 2,
        'coll_type_id' => 1,
        'location_id' => 'R01',
        'items' => ['SMPN3-IPA07-001', 'SMPN3-IPA07-002'],
        'notes' => 'Buku teks utama IPA Kelas 7 yang memadukan konsep fisika, biologi, kimia, dan kebumian dalam pembelajaran berbasis inkuiri dan proyek sains.'
    ],
    3 => [
        'title' => 'Bahasa Indonesia: Tingkat Menengah Pertama Kelas VIII (Kurikulum Merdeka)',
        'isbn' => '978-602-244-789-4',
        'publisher_id' => 1,
        'publish_place_id' => 1,
        'publish_year' => '2022',
        'call_number' => '410 IND k.8',
        'classification' => '410',
        'author_id' => 1,
        'topic_id' => 3,
        'coll_type_id' => 1,
        'location_id' => 'R02',
        'items' => ['SMPN3-IND08-001', 'SMPN3-IND08-002'],
        'notes' => 'Panduan literasi bahasa Indonesia kelas 8 mencakup teks laporan hasil observasi, iklan, slogan, poster, artikel ilmiah populer, dan ulasan karya sastra.'
    ],
    4 => [
        'title' => 'Negeri 5 Menara',
        'isbn' => '978-979-22-4861-6',
        'publisher_id' => 4,
        'publish_place_id' => 1,
        'publish_year' => '2020',
        'call_number' => '813 FUA n',
        'classification' => '813',
        'author_id' => 4,
        'topic_id' => 6,
        'coll_type_id' => 3,
        'location_id' => 'R05',
        'items' => ['SMPN3-NVL-001', 'SMPN3-NVL-002'],
        'notes' => 'Novel inspiratif karya Ahmad Fuadi tentang persahabatan enam santri dari pelosok negeri dengan tekad kuat meraih impian dengan mantra Man Jadda Wajada.'
    ],
    5 => [
        'title' => 'Laskar Pelangi',
        'isbn' => '978-979-1227-01-8',
        'publisher_id' => 2,
        'publish_place_id' => 2,
        'publish_year' => '2019',
        'call_number' => '813 HIR l',
        'classification' => '813',
        'author_id' => 3,
        'topic_id' => 6,
        'coll_type_id' => 3,
        'location_id' => 'R05',
        'items' => ['SMPN3-NVL-003', 'SMPN3-NVL-004'],
        'notes' => 'Karya legendaris Andrea Hirata mengenai perjuangan sepuluh anak di Belitung dalam menuntut ilmu di tengah keterbatasan fasilitas sekolah.'
    ],
    6 => [
        'title' => 'Si Anak Badai',
        'isbn' => '978-602-5734-93-9',
        'publisher_id' => 5,
        'publish_place_id' => 1,
        'publish_year' => '2021',
        'call_number' => '813 TER s',
        'classification' => '813',
        'author_id' => 2,
        'topic_id' => 6,
        'coll_type_id' => 3,
        'location_id' => 'R05',
        'items' => ['SMPN3-NVL-005'],
        'notes' => 'Kisah petualangan Za dan kawan-kawan di perkampungan nelayan Muara Maninjau dalam menjaga keasrian kampung halaman dari ancaman pembangunan dermaga.'
    ],
    7 => [
        'title' => 'Ensiklopedia Sains dan Teknologi: Mengenal Alam Semesta dan Fisika Modern',
        'isbn' => '978-979-015-888-2',
        'publisher_id' => 3,
        'publish_place_id' => 1,
        'publish_year' => '2021',
        'call_number' => 'R 503 SUR e',
        'classification' => '503',
        'author_id' => 6,
        'topic_id' => 7,
        'coll_type_id' => 2,
        'location_id' => 'RTD',
        'items' => ['SMPN3-REF-001'],
        'notes' => 'Koleksi referensi ilmiah tandon perpustakaan mengenai astronomi, energi terbarukan, fisika atom, dan penemuan sains mutakhir. Hanya dapat dibaca di tempat.'
    ]
];

foreach ($books as $id => $b) {
    // Insert/Update biblio
    $stmt = $pdo->prepare("
        INSERT INTO biblio (biblio_id, gmd_id, title, edition, isbn_issn, publisher_id, publish_year, call_number, language_id, publish_place_id, classification, notes, opac_hide, promoted, frequency_id, input_date, last_update, uid)
        VALUES (?, 1, ?, 'Cet. 1', ?, ?, ?, ?, 'id', ?, ?, ?, 0, 1, 0, NOW(), NOW(), 1)
        ON DUPLICATE KEY UPDATE 
            title = VALUES(title),
            isbn_issn = VALUES(isbn_issn),
            call_number = VALUES(call_number),
            notes = VALUES(notes),
            last_update = NOW()
    ");
    $stmt->execute([
        $id,
        $b['title'],
        $b['isbn'],
        $b['publisher_id'],
        $b['publish_year'],
        $b['call_number'],
        $b['publish_place_id'],
        $b['classification'],
        $b['notes']
    ]);

    // Relasi pengarang
    $stmt = $pdo->prepare("INSERT INTO biblio_author (biblio_id, author_id, level) VALUES (?, ?, 1) ON DUPLICATE KEY UPDATE level = 1");
    $stmt->execute([$id, $b['author_id']]);

    // Relasi topik
    $stmt = $pdo->prepare("INSERT INTO biblio_topic (biblio_id, topic_id, level) VALUES (?, ?, 1) ON DUPLICATE KEY UPDATE level = 1");
    $stmt->execute([$id, $b['topic_id']]);

    // Eksemplar buku (item)
    foreach ($b['items'] as $item_code) {
        $stmt = $pdo->prepare("
            INSERT INTO item (biblio_id, call_number, coll_type_id, item_code, location_id, item_status_id, source, input_date, last_update, uid)
            VALUES (?, ?, ?, ?, ?, 'NL', 0, NOW(), NOW(), 1)
            ON DUPLICATE KEY UPDATE
                call_number = VALUES(call_number),
                coll_type_id = VALUES(coll_type_id),
                location_id = VALUES(location_id),
                last_update = NOW()
        ");
        $stmt->execute([
            $id,
            $b['call_number'],
            $b['coll_type_id'],
            $item_code,
            $b['location_id']
        ]);
    }
}
echo "[5] 7 Koleksi Buku Bibliografi & 13 Eksemplar Fisik berhasil disiapkan.\n";

// 6. Data Anggota Siswa & Guru (member)
$members = [
    [
        'id' => '202607001',
        'name' => 'Ahmad Fauzi',
        'gender' => 1,
        'type_id' => 1, // Siswa Kelas 7
        'email' => 'ahmad.fauzi@smpn3cibungbulang.sch.id',
        'phone' => '08123456701',
        'expire' => date('Y-m-d', strtotime('+365 days'))
    ],
    [
        'id' => '202608001',
        'name' => 'Siti Aisyah',
        'gender' => 0,
        'type_id' => 2, // Siswa Kelas 8
        'email' => 'siti.aisyah@smpn3cibungbulang.sch.id',
        'phone' => '08123456702',
        'expire' => date('Y-m-d', strtotime('+365 days'))
    ],
    [
        'id' => '202609001',
        'name' => 'Rizky Ramadhan',
        'gender' => 1,
        'type_id' => 3, // Siswa Kelas 9
        'email' => 'rizky.ramadhan@smpn3cibungbulang.sch.id',
        'phone' => '08123456703',
        'expire' => date('Y-m-d', strtotime('+365 days'))
    ],
    [
        'id' => '198501152010011002',
        'name' => 'Budi Santoso, S.Pd.',
        'gender' => 1,
        'type_id' => 4, // Guru / Tenaga Pendidik
        'email' => 'budi.santoso@smpn3cibungbulang.sch.id',
        'phone' => '08123456704',
        'expire' => date('Y-m-d', strtotime('+730 days'))
    ],
    [
        'id' => '199003202015022001',
        'name' => 'Nurul Hidayah, S.Kom.',
        'gender' => 0,
        'type_id' => 5, // TU / Tenaga Kependidikan
        'email' => 'nurul.hidayah@smpn3cibungbulang.sch.id',
        'phone' => '08123456705',
        'expire' => date('Y-m-d', strtotime('+730 days'))
    ]
];

$password_hash = password_hash('smpn3', PASSWORD_BCRYPT);
foreach ($members as $m) {
    $stmt = $pdo->prepare("
        INSERT INTO member (member_id, member_name, gender, member_type_id, member_email, member_phone, member_since_date, register_date, expire_date, mpasswd, is_pending, input_date, last_update)
        VALUES (?, ?, ?, ?, ?, ?, CURDATE(), CURDATE(), ?, ?, 0, CURDATE(), CURDATE())
        ON DUPLICATE KEY UPDATE
            member_name = VALUES(member_name),
            member_type_id = VALUES(member_type_id),
            member_email = VALUES(member_email),
            member_phone = VALUES(member_phone),
            expire_date = VALUES(expire_date),
            last_update = CURDATE()
    ");
    $stmt->execute([
        $m['id'],
        $m['name'],
        $m['gender'],
        $m['type_id'],
        $m['email'],
        $m['phone'],
        $m['expire'],
        $password_hash
    ]);
}
echo "[6] 5 Anggota Perpustakaan (Siswa Kelas 7-9, Guru, TU) berhasil didaftarkan.\n";

echo "\n====================================================================\n";
echo "   SEMUA DATA SAMPEL PERPUSTAKAAN BERHASIL DISIAPKAN (100% READY)   \n";
echo "====================================================================\n";
