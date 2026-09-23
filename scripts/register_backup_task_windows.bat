@echo off
REM ==============================================================================
REM Skrip Pendaftaran Jadwal Cadangan Harian Windows Task Scheduler
REM Perpustakaan SMPN 3 CIBUNGBULANG
REM Menjalankan backup basis data otomatis setiap malam pukul 23:00 WIB
REM ==============================================================================

echo ==============================================================================
echo   MENDAFTARKAN JADWAL CADANGAN OTOMATIS KE WINDOWS TASK SCHEDULER
echo ==============================================================================
echo.

set "TASK_NAME=Perpustakaan_SMPN3_Backup_Harian"
set "BAT_PATH=%~dp0backup_database.bat"

REM Cek apakah task sudah ada
schtasks /Query /TN "%TASK_NAME%" >nul 2>nul
if %errorlevel% equ 0 (
    echo Jadwal '%TASK_NAME%' sudah ada. Memperbarui...
)

REM Daftarkan jadwal harian setiap pukul 23:00 WIB
schtasks /Create /TN "%TASK_NAME%" /TR "\"%BAT_PATH%\"" /SC DAILY /ST 23:00 /RU "SYSTEM" /F

if %errorlevel% equ 0 (
    echo.
    echo [SUKSES] Jadwal cadangan harian berhasil didaftarkan!
    echo         Tugas '%TASK_NAME%' akan dieksekusi otomatis setiap hari jam 23:00 WIB.
    echo         Hasil cadangan disimpan di C:\perpus_backups
) else (
    echo.
    echo [CATATAN] Pendaftaran gagal. Pastikan Anda klik kanan dan pilih 'Run as administrator'.
)

echo.
pause
