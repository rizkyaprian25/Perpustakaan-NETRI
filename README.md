# Sistem Otomasi Perpustakaan SMPN 3 CIBUNGBULANG
## Berbasis SLiMS 9 (Senayan Library Management System) Bulian D Ace

![Status](https://img.shields.io/badge/Status-Siap_Pakai_Produksi-22c55e?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-Server_Windows_(Fisik_LAN)-0078d7?style=for-the-badge)
![Target](https://img.shields.io/badge/Institusi-SMPN_3_CIBUNGBULANG-0f172a?style=for-the-badge)
![Core](https://img.shields.io/badge/Core-SLiMS_9.8.0_Bulian-f59e0b?style=for-the-badge)

Dokumentasi resmi implementasi, kustomisasi, dan panduan operasional sistem otomasi perpustakaan terpadu untuk **SMP Negeri 3 Cibungbulang, Kabupaten Bogor, Jawa Barat**. Dirancang khusus untuk beroperasi optimal pada **Server Fisik Windows (Jaringan LAN Sekolah)** dengan keandalan tinggi, respon cepat, dan mandiri tanpa ketergantungan koneksi internet eksternal.

---

## Daftar Isi
1. [Ringkasan Eksekutif & Fitur Kustom](#1-ringkasan-eksekutif--fitur-kustom)
2. [Arsitektur Jaringan LAN Server Fisik Sekolah](#2-arsitektur-jaringan-lan-server-fisik-sekolah)
3. [Prasyarat Sistem Minimum Windows Server](#3-prasyarat-sistem-minimum-windows-server)
4. [Panduan Instalasi Server Fisik Windows (Utama)](#4-panduan-instalasi-server-fisik-windows-utama)
5. [Pemeriksaan Diagnostik Sistem (Health Check)](#5-pemeriksaan-diagnostik-sistem-health-check)
6. [Pencadangan Otomatis Windows (Task Scheduler)](#6-pencadangan-otomatis-windows-task-scheduler)
7. [Panduan Operasional Pustakawan](#7-panduan-operasional-pustakawan)
8. [Panduan Alternatif Server Linux](#8-panduan-alternatif-server-linux)

---

## 1. Ringkasan Eksekutif & Fitur Kustom

Sistem ini mentransformasikan perpustakaan SMPN 3 Cibungbulang menjadi pusat literasi modern berbasis digital dengan penyesuaian khusus:
- **Katalog Terbuka (OPAC) Modern:** Antarmuka responsif ramah siswa dengan tipografi Apple HIG (*clean, high contrast, zero bloat*).
- **Anjungan Presensi Mandiri (Visitor Kiosk):** Mode layar penuh di pintu masuk perpus untuk pencatatan kunjungan harian via scan barcode kartu / input NISN.
- **Kustomisasi Keanggotaan Jenjang SMP:** Konfigurasi siap pakai untuk Siswa Kelas 7, Siswa Kelas 8, Siswa Kelas 9, Dewan Guru, dan Tenaga Kependidikan.
- **Cetak Kartu Anggota CR-80:** Template siap cetak standar ID Card (85.6 mm x 54 mm) dengan logo resmi sekolah, foto anggota, dan barcode NISN.
- **Aturan Peminjaman Terpadu:** Perlindungan koleksi tandon/referensi, batas pinjam siswa (3 buku / 7 hari), serta penghitungan denda otomatis terkalibrasi.
- **100% Kompatibilitas Windows:** Driver database dinamis, firewall autoconfig, dan task scheduler native Windows.

---

## 2. Arsitektur Jaringan LAN Server Fisik Sekolah

Topologi penerapan di lingkungan fisik SMPN 3 Cibungbulang:

```text
  ┌─────────────────────────────────────────────────────────────┐
  │                 JARINGAN LAN SEKOLAH (Wi-Fi & LAN)          │
  └──────────────────────────────┬──────────────────────────────┘
                                 │
                                 ▼
                 [Router Utama / Switch Core LAN]
                        (Gateway: 192.168.1.1)
                                 │
        ┌────────────────────────┼─────────────────────────┐
        │ (Kabel Cat6 Gigabit)   │                         │
        ▼                        ▼                         ▼
┌──────────────────┐   ┌──────────────────┐   ┌──────────────────┐
│  SERVER FISIK    │   │ PC SIRKULASI     │   │ PC BUKU TAMU     │
│  PERPUSTAKAAN    │   │ (Pustakawan)     │   │ (Kiosk Masuk)    │
│  (Windows OS)    │   │ Scanner Barcode  │   │ Layar Anjungan   │
│  192.168.1.200   │   │ Printer Kartu    │   │ Auto-Focus Input │
└──────────────────┘   └──────────────────┘   └──────────────────┘
       │
       ▼
[Klien Wi-Fi Siswa / Guru] (Akses OPAC melalui Smartphone / Laptop Lab)
```

---

## 3. Prasyarat Sistem Minimum Windows Server

### Spesifikasi Hardware Server Fisik:
- **Prosesor:** Intel Core i3 / AMD Ryzen 3 generasi 6 ke atas (Quad-core direkomendasikan).
- **RAM:** Minimal 4 GB (8 GB direkomendasikan untuk stabilitas multi-user).
- **Penyimpanan:** 120 GB SSD (SATA / NVMe) untuk OS & Web + 1 TB HDD untuk arsip cadangan.
- **Kartu Jaringan (NIC):** Gigabit Ethernet 1000 Mbps terhubung kabel Cat6.
- **Daya:** Wajib menggunakan UPS (minimal 1200VA) untuk mencegah kerusakan database akibat pemadaman listrik tiba-tiba.

### Spesifikasi Software Windows:
- **Sistem Operasi:** Windows Server 2019/2022/2025 ATAU Windows 10/11 Pro 64-bit.
- **Web Stack Rekomendasi:** **Laragon (Full Edition)** atau **XAMPP 8.2+**.
- **PHP:** Versi 8.1, 8.2, atau 8.3 (Ekstensi: `mysqli`, `pdo_mysql`, `gd`, `mbstring`, `curl`, `intl`, `zip`, `fileinfo`, `openssl`, `exif`).
- **Basis Data:** MariaDB 10.6+ atau MySQL 8.0+.

---

## 4. Panduan Instalasi Server Fisik Windows (Utama)

### Langkah 1: Tempatkan Direktori Web
Salin seluruh folder repositori ini ke dalam direktori web Laragon atau XAMPP:
- **Jika menggunakan Laragon:**
  `C:\laragon\www\perpustakaan\`
- **Jika menggunakan XAMPP:**
  `C:\xampp\htdocs\perpustakaan\`

### Langkah 2: Jalankan Instalasi Otomatis
1. Buka folder `scripts\`.
2. Klik kanan pada berkas **`install_server_windows.bat`** lalu pilih **"Run as administrator"**.
3. Skrip akan secara otomatis:
   - Mendeteksi MariaDB/MySQL pada sistem Anda.
   - Membuat basis data `db_perpus_smpn3`.
   - Mengimpor struktur tabel dan konfigurasi resmi SMPN 3 Cibungbulang.
   - Menyiapkan berkas `config\sysconfig.local.inc.php` dan `config\env.php`.
   - Membuat direktori upload berkas (`files`, `images`, `repository`).
   - Mendaftarkan izin firewall Windows (Port 80 & 8080) agar komputer lain di sekolah dapat mengakses web perpustakaan.
   - Menampilkan alamat IP LAN server yang siap digunakan.

### Langkah 3: Nyalakan Layanan
- Di Laragon: Klik tombol **Start All**.
- Di XAMPP: Klik tombol **Start** pada modul Apache dan MySQL.

### Langkah 4: Akses Aplikasi
- **Katalog OPAC Siswa:** `http://localhost/` (atau `http://IP_SERVER_SEKOLAH/`)
- **Presensi Kiosk Tamu:** `http://localhost/visitor_kiosk.php` (atau `http://IP_SERVER_SEKOLAH/visitor_kiosk.php`)
- **Login Staf / Pustakawan:** `http://localhost/admin/` atau `http://localhost/?p=login`
  - **Username:** `admin` (atau `superadmin@admin.com`)
  - **Password:** `admin`

---

## 5. Pemeriksaan Diagnostik Sistem (Health Check)

Untuk memastikan seluruh konfigurasi server Windows telah sempurna dan tidak ada ekstensi yang terlewat:
1. Masuk ke folder `scripts\`.
2. Klik ganda pada berkas **`check_windows_environment.bat`**.
3. Sistem akan memverifikasi kesiapan PHP, ekstensi `php.ini`, izin direktori tulis, dan koneksi basis data.

---

## 6. Pencadangan Otomatis Windows (Task Scheduler)

Untuk memastikan data buku dan siswa aman dari kerusakan perangkat keras:
1. Masuk ke folder `scripts\`.
2. Klik kanan pada berkas **`register_backup_task_windows.bat`** dan pilih **"Run as administrator"**.
3. Skrip akan mendaftarkan tugas harian pada **Windows Task Scheduler**:
   - Cadangan basis data dieksekusi otomatis setiap malam pukul **23:00 WIB**.
   - Berkas `.sql` tersimpan rapi di direktori `C:\perpus_backups\`.
   - Fitur rotasi otomatis akan membersihkan file cadangan yang berumur lebih dari 30 hari guna menghemat kapasitas SSD/HDD.

Untuk melakukan pencadangan manual sewaktu-waktu:
Cukup klik ganda berkas `scripts\backup_database.bat`.

---

## 7. Panduan Operasional Pustakawan

### 7.1. Alur Transaksi Sirkulasi
1. Pustakawan membuka menu **Sirkulasi** -> **Mulai Transaksi**.
2. Scan barcode kartu siswa atau ketik NISN anggota.
3. Scan barcode pada buku yang dipinjam. Sistem akan otomatis menerapkan jatuh tempo 7 hari untuk siswa.
4. Klik **Selesai Transaksi**.

### 7.2. Cetak Barcode Buku & Kartu Anggota
- **Kartu Anggota:** Buka menu **Keanggotaan** -> **Pencetakan Kartu Anggota**, pilih anggota yang akan dicetak, lalu pilih template `smpn3_card`.
- **Barcode & Label Punggung Buku:** Buka menu **Bibliografi** -> **Pencetakan Barcode Item** atau **Pencetakan Label**.

---

## 8. Panduan Alternatif Server Linux

Jika sewaktu-waktu sekolah memutuskan beralih ke server berbasis Linux Ubuntu Server:
```bash
# Masuk ke direktori web server
cd /var/www/html/perpustakaan

# Jalankan skrip instalasi Linux dengan hak akses sudo
sudo bash scripts/install_server_linux.sh
```

---

## Lisensi & Atribusi
- **SLiMS (Senayan Library Management System):** Dilisensikan di bawah GNU General Public License v3 (GPL-3.0). Dikembangkan oleh Komunitas SLiMS Indonesia.
- **Kustomisasi & Implementasi SMPN 3 Cibungbulang:** Dikelola oleh Tim Pengembang & Pustakawan SMPN 3 Cibungbulang.