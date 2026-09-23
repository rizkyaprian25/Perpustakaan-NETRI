@echo off
setlocal enabledelayedexpansion

REM ==============================================================================
REM Skrip Cadangan Basis Data Otomatis Windows (Task Scheduler Ready)
REM Perpustakaan SMPN 3 CIBUNGBULANG - SLiMS 9 Bulian
REM Standar Rekayasa: SoftwareEngineer.md (Resiliensi & Pemulihan Bencana)
REM ==============================================================================

set "DB_NAME=db_perpus_smpn3"
set "BACKUP_DIR=C:\perpus_backups"
if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"

REM 1. Format Timestamp menggunakan PowerShell (Kompatibel Windows 10, 11, Server 2019/2022)
for /f "tokens=*" %%t in ('powershell -NoProfile -Command "Get-Date -Format 'yyyyMMdd_HHmmss'"') do set "TIMESTAMP=%%t"

REM 2. Deteksi executable mysqldump / mariadb-dump
set "MYSQLDUMP_EXE="

where mysqldump.exe >nul 2>nul
if %errorlevel% equ 0 (
    set "MYSQLDUMP_EXE=mysqldump.exe"
    goto :dump_found
)

where mariadb-dump.exe >nul 2>nul
if %errorlevel% equ 0 (
    set "MYSQLDUMP_EXE=mariadb-dump.exe"
    goto :dump_found
)

REM Cari di Laragon
for /d %%D in ("C:\laragon\bin\mysql\*") do (
    if exist "%%D\bin\mysqldump.exe" (
        set "MYSQLDUMP_EXE=%%D\bin\mysqldump.exe"
        goto :dump_found
    )
)
for /d %%D in ("C:\laragon\bin\mariadb\*") do (
    if exist "%%D\bin\mariadb-dump.exe" (
        set "MYSQLDUMP_EXE=%%D\bin\mariadb-dump.exe"
        goto :dump_found
    )
    if exist "%%D\bin\mysqldump.exe" (
        set "MYSQLDUMP_EXE=%%D\bin\mysqldump.exe"
        goto :dump_found
    )
)

REM Cari di XAMPP
if exist "C:\xampp\mysql\bin\mysqldump.exe" (
    set "MYSQLDUMP_EXE=C:\xampp\mysql\bin\mysqldump.exe"
    goto :dump_found
)

REM Cari di Program Files
for /d %%D in ("C:\Program Files\MariaDB*") do (
    if exist "%%D\bin\mariadb-dump.exe" (
        set "MYSQLDUMP_EXE=%%D\bin\mariadb-dump.exe"
        goto :dump_found
    )
    if exist "%%D\bin\mysqldump.exe" (
        set "MYSQLDUMP_EXE=%%D\bin\mysqldump.exe"
        goto :dump_found
    )
)
for /d %%D in ("C:\Program Files\MySQL\MySQL Server*") do (
    if exist "%%D\bin\mysqldump.exe" (
        set "MYSQLDUMP_EXE=%%D\bin\mysqldump.exe"
        goto :dump_found
    )
)

:dump_found
if "%MYSQLDUMP_EXE%"=="" (
    echo [ERROR] mysqldump.exe / mariadb-dump.exe tidak ditemukan!
    exit /b 1
)

set "OUTPUT_FILE=%BACKUP_DIR%\%DB_NAME%_backup_%TIMESTAMP%.sql"

echo [%date% %time%] Membuat cadangan database ke %OUTPUT_FILE%...
"%MYSQLDUMP_EXE%" -u root --single-transaction --quick %DB_NAME% > "%OUTPUT_FILE%"

if %errorlevel% equ 0 (
    echo [%date% %time%] Cadangan basis data berhasil disimpan: %OUTPUT_FILE%
) else (
    echo [%date% %time%] [ERROR] Terjadi kegagalan saat membuat cadangan basis data!
    exit /b 1
)

REM 3. Rotasi Otomatis: Hapus file cadangan yang berumur lebih dari 30 hari
powershell -NoProfile -Command "Get-ChildItem -Path '%BACKUP_DIR%' -Filter *.sql | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-30) } | Remove-Item -Force" >nul 2>nul
echo [%date% %time%] Pembersihan file cadangan lama (>30 hari) selesai.
