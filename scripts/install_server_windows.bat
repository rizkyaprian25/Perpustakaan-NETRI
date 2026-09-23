@echo off
REM ==============================================================================
REM Skrip Otomasi Instalasi Server Fisik Windows (Laragon / XAMPP)
REM Perpustakaan SMPN 3 CIBUNGBULANG - SLiMS 9 Bulian
REM Standar Rekayasa: SoftwareEngineer.md (Fase 5 - Runbook Rilis)
REM ==============================================================================

echo ============================================================
echo   INSTALASI PERPUSTAKAAN SMPN 3 CIBUNGBULANG (WINDOWS)
echo ============================================================

REM Deteksi direktori MySQL bawaan Laragon atau XAMPP
set MYSQL_EXE=
if exist "C:\laragon\bin\mysql\mysql-8.4.3-winx64\bin\mysql.exe" (
    set MYSQL_EXE=C:\laragon\bin\mysql\mysql-8.4.3-winx64\bin\mysql.exe
) else if exist "C:\xampp\mysql\bin\mysql.exe" (
    set MYSQL_EXE=C:\xampp\mysql\bin\mysql.exe
) else (
    set MYSQL_EXE=mysql.exe
)

echo [1/3] Membuat Basis Data MariaDB/MySQL: db_perpus_smpn3...
"%MYSQL_EXE%" -u root -e "CREATE DATABASE IF NOT EXISTS db_perpus_smpn3 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

echo [2/3] Mengimpor Skema Dasar SLiMS 9 Bulian...
"%MYSQL_EXE%" -u root db_perpus_smpn3 < "%~dp0..\database\schema_smpn3.sql"

echo [3/3] Menerapkan Data Awal & Metadata SMPN 3 Cibungbulang...
"%MYSQL_EXE%" -u root db_perpus_smpn3 < "%~dp0..\database\seed_smpn3.sql"

REM Buat file konfigurasi sysconfig.local.inc.php jika belum ada
if not exist "%~dp0..\config\sysconfig.local.inc.php" (
    copy "%~dp0..\config\sysconfig.local.inc.php.example" "%~dp0..\config\sysconfig.local.inc.php"
    echo Konfigurasi config\sysconfig.local.inc.php berhasil dibuat.
)

echo.
echo ============================================================
echo   INSTALASI BASIS DATA SELESAI!
echo ============================================================
echo   Buka browser di server atau PC klien:
echo   OPAC Katalog Siswa : http://localhost/ (atau http://IP_SERVER/)
echo   Buku Tamu Kiosk    : http://localhost/visitor_kiosk.php
echo   Login Admin        : http://localhost/admin/ (User: admin / admin)
echo ============================================================
pause
