@echo off
REM ==============================================================================
REM Skrip Cadangan Basis Data Otomatis Windows (Task Scheduler)
REM Perpustakaan SMPN 3 CIBUNGBULANG - SLiMS 9 Bulian
REM Standar Rekayasa: SoftwareEngineer.md (Resiliensi & Pemulihan Bencana)
REM ==============================================================================

set DB_NAME=db_perpus_smpn3
set BACKUP_DIR=C:\perpus_backups
if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set TIMESTAMP=%datetime:~0,8%_%datetime:~8,6%

set MYSQLDUMP_EXE=mysqldump.exe
if exist "C:\laragon\bin\mysql\mysql-8.4.3-winx64\bin\mysqldump.exe" (
    set MYSQLDUMP_EXE=C:\laragon\bin\mysql\mysql-8.4.3-winx64\bin\mysqldump.exe
) else if exist "C:\xampp\mysql\bin\mysqldump.exe" (
    set MYSQLDUMP_EXE=C:\xampp\mysql\bin\mysqldump.exe
)

set OUTPUT_FILE=%BACKUP_DIR%\%DB_NAME%_backup_%TIMESTAMP%.sql

echo [%date% %time%] Membuat cadangan database ke %OUTPUT_FILE%...
"%MYSQLDUMP_EXE%" -u root --single-transaction --quick %DB_NAME% > "%OUTPUT_FILE%"

echo [%date% %time%] Cadangan berhasil disimpan.
