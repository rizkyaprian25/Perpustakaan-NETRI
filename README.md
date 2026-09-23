# Sistem Otomasi Perpustakaan SMPN 3 CIBUNGBULANG
## Berbasis SLiMS 9 (Senayan Library Management System) Bulian D Ace

![Status](https://img.shields.io/badge/Status-Siap_Pakai_Produksi-22c55e?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-Server_Fisik_Sekolah_(On--Premise_LAN)-0284c7?style=for-the-badge)
![Target](https://img.shields.io/badge/Institusi-SMPN_3_CIBUNGBULANG-0f172a?style=for-the-badge)
![Core](https://img.shields.io/badge/Core-SLiMS_9.8.0_Bulian-f59e0b?style=for-the-badge)

Dokumentasi resmi implementasi, kustomisasi, dan panduan operasional sistem otomasi perpustakaan terpadu untuk **SMP Negeri 3 Cibungbulang, Kabupaten Bogor, Jawa Barat**. Dirancang untuk dijalankan pada **Server Fisik On-Premise (Jaringan LAN Sekolah)** dengan keandalan tinggi, respon cepat, dan mandiri tanpa ketergantungan koneksi internet eksternal.

---

## Daftar Isi
1. [Ringkasan Eksekutif & Fitur Kustom](#1-ringkasan-eksekutif--fitur-kustom)
2. [Arsitektur Jaringan LAN Server Fisik](#2-arsitektur-jaringan-lan-server-fisik)
3. [Prasyarat Sistem Minimum](#3-prasyarat-sistem-minimum)
4. [Panduan Instalasi Server Fisik (Linux Server)](#4-panduan-instalasi-server-fisik-linux-server)
5. [Panduan Instalasi Server Fisik (Windows Server / Laragon)](#5-panduan-instalasi-server-fisik-windows-server--laragon)
6. [Fitur Kustom Khusus SMPN 3 Cibungbulang](#6-fitur-kustom-khusus-smpn-3-cibungbulang)
7. [Panduan Operasional Pustakawan](#7-panduan-operasional-pustakawan)
8. [Prosedur Cadangan Otomatis & Pemulihan Bencana](#8-prosedur-cadangan-otomatis--pemulihan-bencana)
9. [Verifikasi Sistem Mandiri (Quality Gate)](#9-verifikasi-sistem-mandiri-quality-gate)

---

## 1. Ringkasan Eksekutif & Fitur Kustom

Sistem ini mentransformasikan perpustakaan SMPN 3 Cibungbulang menjadi pusat sumber belajar modern berbasis digital dengan penyesuaian khusus:
- **Katalog Terbuka (OPAC) Modern:** Antarmuka responsif ramah siswa dengan tipografi Apple HIG (*clean, high contrast, zero bloat*).
- **Anjungan Presensi Mandiri (Visitor Kiosk):** Mode layar penuh di pintu masuk perpus untuk pencatatan kunjungan harian via scan barcode kartu / input NISN.
- **Kustomisasi Keanggotaan Jenjang SMP:** Konfigurasi siap pakai untuk Siswa Kelas 7, Siswa Kelas 8, Siswa Kelas 9, Dewan Guru, dan Tenaga Kependidikan.
- **Cetak Kartu Anggota CR-80:** Template siap cetak standar ID Card (85.6 mm x 54 mm) dengan logo resmi sekolah, foto anggota, dan barcode NISN.
- **Aturan Peminjaman Terpadu:** Perlindungan koleksi tandon/referensi, batas pinjam siswa (3 buku / 7 hari), serta penghitungan denda otomatis terkalibrasi.

---

## 2. Arsitektur Jaringan LAN Server Fisik

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
       ┌─────────────────────────┼─────────────────────────┐
       │ (Kabel Cat6 Gigabit)    │                         │
       ▼                         ▼                         ▼
┌──────────────────┐   ┌──────────────────┐   ┌──────────────────┐
│  SERVER FISIK    │   │ PC SIRKULASI     │   │ PC BUKU TAMU     │
│  PERPUSTAKAAN    │   │ (Pustakawan)     │   │ (Kiosk Masuk)    │
│  192.168.1.200   │   │ Scanner Barcode  │   │ Layar Anjungan   │
│  Apache + MariaDB│   │ Printer Kartu    │   │ Auto-Focus Input │
└──────────────────┘   └──────────────────┘   └──────────────────┘
       │
       ▼
[Klien Wi-Fi Siswa / Guru] (Akses OPAC melalui Smartphone / Laptop Lab)
```

---

## 3. Prasyarat Sistem Minimum

### Spesifikasi Hardware Server Fisik:
- **Prosesor:** Intel Core i3 / AMD Ryzen 3 generasi 6 ke atas (Quad-core direkomendasikan).
- **RAM:** Minimal 4 GB (8 GB direkomendasikan untuk stabilitas multi-user).
- **Penyimpanan:** 120 GB SSD (SATA / NVMe) + 1 TB HDD untuk arsip cadangan.
- **Kartu Jaringan (NIC):** Gigabit Ethernet 1000 Mbps terhubung kabel Cat6.
- **Daya:** Wajib menggunakan UPS (minimal 1200VA) untuk mencegah kerusakan database akibat pemadaman listrik tiba-tiba.

### Spesifikasi Software:
- **Sistem Operasi:** Ubuntu Server 22.04 / 24.04 LTS (Rekomendasi Utama) ATAU Windows Server / Windows 10/11 Pro (64-bit).
- **Web Server:** Apache 2.4 (dengan modul `rewrite` aktif).
- **PHP:** Versi 8.1 atau 8.2 (Ekstensi: `pdo_mysql`, `mysqli`, `mbstring`, `gd`, `curl`, `zip`, `fileinfo`, `intl`).
- **Basis Data:** MariaDB 10.6+ atau MySQL 8.0+.

---

## 4. Panduan Instalasi Server Fisik (Linux Server)

Gunakan skrip instalasi terotomatisasi yang telah disediakan:

```bash
# 1. Masuk ke server fisik via terminal/SSH
ssh perpusadmin@192.168.1.200

# 2. Masuk ke direktori repositori
cd /var/www/html/perpustakaan

# 3. Jalankan skrip instalasi otomatis dengan akses sudo
sudo bash scripts/install_server_linux.sh
```

Skrip di atas akan secara otomatis:
1. Memperbarui repositori dan memasang Apache, MariaDB, serta PHP 8.2 beserta seluruh ekstensi.
2. Membuat basis data `db_perpus_smpn3`.
3. Mengimpor skema dasar SLiMS 9 dan seeder SMPN 3 Cibungbulang (`database/schema_smpn3.sql` dan `database/seed_smpn3.sql`).
4. Mengonfigurasi VirtualHost Apache dan mengaktifkan auto-start service (`systemctl enable apache2 mariadb`).
5. Memasang jadwal cadangan basis data otomatis harian pada pukul 16.00 WIB via `crontab`.

---

## 5. Panduan Instalasi Server Fisik (Windows Server / Laragon)

Jika server fisik sekolah menggunakan sistem operasi Windows dengan Laragon:

1. **Tempatkan Folder Proyek:**
   Salin seluruh folder ini ke direktori web root Laragon:
   ```text
   C:\laragon\www\perpustakaan\
   ```
2. **Jalankan Skrip Instalasi Basis Data:**
   Buka Command Prompt sebagai Administrator, lalu jalankan:
   ```cmd
   cd C:\laragon\www\perpustakaan\scripts
   install_server_windows.bat
   ```
3. **Konfigurasi File Lokal:**
   Salin file `config/sysconfig.local.inc.php.example` menjadi `config/sysconfig.local.inc.php`.
4. **Mulai Layanan:**
   Buka aplikasi Laragon, lalu klik tombol **Start All**.

---

## 6. Fitur Kustom Khusus SMPN 3 Cibungbulang

| Fitur | Lokasi Berkas | Deskripsi |
| :--- | :--- | :--- |
| **SSOT Metadata Sekolah** | `config/school_config.json` | Konfigurasi tunggal identitas resmi, jam buka, kontak, dan aturan sirkulasi sekolah. |
| **Tema OPAC Kustom** | `template/smpn3_bulian/` | Antarmuka publik modern berbasis Apple HIG, navbar institusi, dan pencarian cepat. |
| **Anjungan Presensi (Kiosk)** | `visitor_kiosk.php` | Halaman layar penuh mandiri khusus PC pintu masuk perpus untuk rekapitulasi kehadiran siswa. |
| **Cetak Kartu Anggota CR-80** | `files/membercard/smpn3_card/` | Tata letak cetak kartu anggota standar PVC dengan barcode NISN dan tata tertib perpus. |
| **Seeder Data Sekolah** | `database/seed_smpn3.sql` | Inisialisasi otomatis tipe anggota (Kelas 7, 8, 9, Guru), rak buku, dan matriks denda. |
| **Skrip Verifikasi Mandiri** | `scripts/verify_system.php` | Pengujian kesiapan sistem (ekstensi PHP, izin direktori, aset) sebelum go-live. |
| **Skrip Uji Sirkulasi** | `scripts/smoke_test_sirkulasi.php` | Validasi perhitungan jatuh tempo, batas pinjam, dan denda keterlambatan. |

---

## 7. Panduan Operasional Pustakawan

### 7.1. Akses Halaman Utama
- **Katalog OPAC Siswa:** `http://192.168.1.200/` (atau `http://localhost/`)
- **Anjungan Presensi Mandiri:** `http://192.168.1.200/visitor_kiosk.php`
- **Area Masuk Pustakawan:** `http://192.168.1.200/admin/`
  - *Username Default:* `admin`
  - *Password Default:* `admin`
  - *(Wajib segera diganti pada menu Sistem -> Pengguna Sistem)*

### 7.2. Alur Transaksi Sirkulasi
1. Pustakawan membuka menu **Sirkulasi** -> **Mulai Transaksi**.
2. Scan barcode kartu siswa atau ketik NISN anggota.
3. Scan barcode pada buku yang dipinjam. Sistem akan otomatis menerapkan jatuh tempo 7 hari untuk siswa.
4. Klik **Selesai Transaksi**.

### 7.3. Cetak Barcode Buku & Kartu Anggota
- **Kartu Anggota:** Buka menu **Keanggotaan** -> **Pencetakan Kartu Anggota**, pilih anggota yang akan dicetak, lalu pilih template `smpn3_card`.
- **Barcode & Label Punggung Buku:** Buka menu **Bibliografi** -> **Pencetakan Barcode Item** atau **Pencetakan Label**.

---

## 8. Prosedur Cadangan Otomatis & Pemulihan Bencana

### 8.1. Pencadangan Otomatis Harian (Linux)
Cadangan basis data dieksekusi secara otomatis setiap hari pukul 16.00 WIB melalui skrip `scripts/backup_database.sh`. Berkas disimpan di `/var/backups/perpus_smpn3/` dengan kompresi gzip dan retensi otomatis 14 hari.

Untuk memicu pencadangan manual kapan saja:
```bash
sudo bash /var/www/html/perpustakaan/scripts/backup_database.sh
```

### 8.2. Prosedur Pemulihan Basis Data (Restore)
Jika terjadi kendala data atau penggantian server fisik:
```bash
# 1. Ekstrak dan pulihkan file cadangan terbaru
gunzip -c /var/backups/perpus_smpn3/db_perpus_smpn3_backup_TERBARU.sql.gz | mysql -u perpus_admin -p db_perpus_smpn3
```

---

## 9. Verifikasi Sistem Mandiri (Quality Gate)

Sebelum meresmikan layanan untuk siswa dan guru, jalankan pengujian mandiri berikut di terminal server:

```bash
# 1. Uji kesiapan lingkungan PHP dan izin direktori
php scripts/verify_system.php

# 2. Uji konsistensi logika sirkulasi dan denda
php scripts/smoke_test_sirkulasi.php
```

Kedua pengujian wajib menghasilkan status **LULUS 100% (Zero Errors)**.

---

## Lisensi & Atribusi
- **SLiMS (Senayan Library Management System):** Dilisensikan di bawah GNU General Public License v3 (GPL-3.0). Dikembangkan oleh Komunitas SLiMS Indonesia.
- **Kustomisasi & Implementasi SMPN 3 Cibungbulang:** Dikelola oleh Tim Pengembang & Pustakawan SMPN 3 Cibungbulang.