@echo off
setlocal enabledelayedexpansion

REM ==============================================================================
REM Skrip Otomasi Instalasi Server Fisik Windows (Laragon / XAMPP / MariaDB Standalone)
REM Perpustakaan SMPN 3 CIBUNGBULANG - SLiMS 9 Bulian
REM Standar Rekayasa: SoftwareEngineer.md (Fase 5 - Runbook Rilis) & AGENTS.md
REM ==============================================================================

title Instalasi Perpustakaan SMPN 3 CIBUNGBULANG - Server Windows

echo ==============================================================================
echo       INSTALASI & KONFIGURASI PERPUSTAKAAN SMPN 3 CIBUNGBULANG (WINDOWS)
echo ==============================================================================
echo.

REM 1. Deteksi executable mysql.exe / mariadb.exe
set "MYSQL_EXE="

where mysql.exe >nul 2>nul
if %errorlevel% equ 0 (
    set "MYSQL_EXE=mysql.exe"
    goto :mysql_found
)

where mariadb.exe >nul 2>nul
if %errorlevel% equ 0 (
    set "MYSQL_EXE=mariadb.exe"
    goto :mysql_found
)

REM Cari di instalasi Laragon
for /d %%D in ("C:\laragon\bin\mysql\*") do (
    if exist "%%D\bin\mysql.exe" (
        set "MYSQL_EXE=%%D\bin\mysql.exe"
        goto :mysql_found
    )
)
for /d %%D in ("C:\laragon\bin\mariadb\*") do (
    if exist "%%D\bin\mariadb.exe" (
        set "MYSQL_EXE=%%D\bin\mariadb.exe"
        goto :mysql_found
    )
)

REM Cari di instalasi XAMPP
if exist "C:\xampp\mysql\bin\mysql.exe" (
    set "MYSQL_EXE=C:\xampp\mysql\bin\mysql.exe"
    goto :mysql_found
)

REM Cari di Program Files (MariaDB / MySQL Standalone)
for /d %%D in ("C:\Program Files\MariaDB*") do (
    if exist "%%D\bin\mariadb.exe" (
        set "MYSQL_EXE=%%D\bin\mariadb.exe"
        goto :mysql_found
    )
    if exist "%%D\bin\mysql.exe" (
        set "MYSQL_EXE=%%D\bin\mysql.exe"
        goto :mysql_found
    )
)

for /d %%D in ("C:\Program Files\MySQL\MySQL Server*") do (
    if exist "%%D\bin\mysql.exe" (
        set "MYSQL_EXE=%%D\bin\mysql.exe"
        goto :mysql_found
    )
)

:mysql_found
if "%MYSQL_EXE%"=="" (
    echo [ERROR] MariaDB atau MySQL tidak ditemukan di sistem!
    echo         Pastikan Laragon, XAMPP, atau MariaDB Windows Service sudah terpasang.
    echo.
    pause
    exit /b 1
)

echo [OK] Program Basis Data Terdeteksi: %MYSQL_EXE%
echo.

REM 2. Input Kredensial Root (Default kosong untuk XAMPP/Laragon)
set "DB_USER=root"
set "DB_PASS="
echo Masukkan password root MySQL/MariaDB (Tekan [ENTER] jika tanpa password):
set /p DB_PASS=

if "%DB_PASS%"=="" (
    set "MYSQL_CMD="%MYSQL_EXE%" -u %DB_USER%"
) else (
    set "MYSQL_CMD="%MYSQL_EXE%" -u %DB_USER% -p%DB_PASS%"
)

REM 3. Pembuatan Basis Data & Tabel
echo.
echo [1/6] Membuat basis data: db_perpus_smpn3...
%MYSQL_CMD% -e "CREATE DATABASE IF NOT EXISTS db_perpus_smpn3 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
if %errorlevel% neq 0 (
    echo [ERROR] Gagal membuat basis data. Periksa username/password atau pastikan MySQL sudah running.
    pause
    exit /b 1
)

echo [2/6] Mengimpor skema dasar SLiMS 9 Bulian...
%MYSQL_CMD% db_perpus_smpn3 < "%~dp0..\database\schema_smpn3.sql"

echo [3/6] Mengimpor data awal & konfigurasi resmi SMPN 3 Cibungbulang...
%MYSQL_CMD% db_perpus_smpn3 < "%~dp0..\database\seed_smpn3.sql"

REM 4. Inisialisasi File Konfigurasi
echo.
echo [4/6] Menyiapkan berkas konfigurasi lokal...
if not exist "%~dp0..\config\sysconfig.local.inc.php" (
    copy "%~dp0..\config\sysconfig.local.inc.php.example" "%~dp0..\config\sysconfig.local.inc.php" >nul
    echo       -> Berkas config\sysconfig.local.inc.php berhasil dibuat.
) else (
    echo       -> Berkas config\sysconfig.local.inc.php sudah ada (dipertahankan).
)

if not exist "%~dp0..\config\env.php" (
    (
        echo ^<?php
        echo $env = "production";
        echo $conditional_environment = "production";
        echo $based_on_ip = false;
        echo $range_ip = [''];
    ) > "%~dp0..\config\env.php"
    echo       -> Berkas config\env.php (mode production) berhasil dibuat.
) else (
    echo       -> Berkas config\env.php sudah ada (dipertahankan).
)

REM 5. Pembuatan Folder Upload & Cadangan
echo.
echo [5/6] Memeriksa struktur direktori penyimpanan berkas...
if not exist "%~dp0..\files" mkdir "%~dp0..\files"
if not exist "%~dp0..\images\persons" mkdir "%~dp0..\images\persons"
if not exist "%~dp0..\images\docs" mkdir "%~dp0..\images\docs"
if not exist "%~dp0..\repository" mkdir "%~dp0..\repository"
if not exist "C:\perpus_backups" mkdir "C:\perpus_backups"
echo       -> Direktori files, images, repository, dan C:\perpus_backups siap digunakan.

REM 6. Buka Port Firewall untuk Akses Jaringan Lokal (LAN) Sekolah
echo.
echo [6/6] Membuka port Windows Firewall (Port 80 & 8080) untuk akses LAN...
netsh advfirewall firewall show rule name="SLiMS Perpustakaan SMPN 3" >nul 2>nul
if %errorlevel% neq 0 (
    netsh advfirewall firewall add rule name="SLiMS Perpustakaan SMPN 3" dir=in action=allow protocol=TCP localport=80,8080 >nul 2>nul
    if %errorlevel% equ 0 (
        echo       -> Aturan firewall berhasil ditambahkan: Port 80 & 8080 terbuka untuk LAN sekolah.
    ) else (
        echo       -> [CATATAN] Tidak dapat menambahkan firewall rule otomatis (memerlukan Run as Administrator).
    )
) else (
    echo       -> Aturan firewall sudah terdaftar sebelumnya.
)

REM 7. Deteksi IP Address LAN Server
set "SERVER_IP=localhost"
for /f "tokens=*" %%a in ('powershell -NoProfile -Command "(Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notlike '*Loopback*' -and $_.IPAddress -notlike '169.254*' } | Select-Object -First 1).IPAddress"') do (
    if not "%%a"=="" set "SERVER_IP=%%a"
)

echo.
echo ==============================================================================
echo                     INSTALASI SERVER WINDOWS SELESAI!
echo ==============================================================================
echo.
echo   Sistem Perpustakaan SMPN 3 Cibungbulang siap digunakan di jaringan sekolah:
echo.
echo   [Akses Lokal di Server]:
echo   - OPAC Siswa       : http://localhost/ (atau http://localhost:8080/)
echo   - Presensi Kiosk   : http://localhost/visitor_kiosk.php
echo   - Login Staf       : http://localhost/admin/
echo.
echo   [Akses Perangkat Siswa & Guru di Jaringan LAN / Wi-Fi Sekolah]:
echo   - OPAC Siswa       : http://!SERVER_IP!/
echo   - Presensi Kiosk   : http://!SERVER_IP!/visitor_kiosk.php
echo   - Login Staf       : http://!SERVER_IP!/admin/
echo.
echo   [Kredensial Login Staf]:
echo   - Username         : admin (atau superadmin@admin.com)
echo   - Password         : admin
echo.
echo ==============================================================================
pause
