@echo off
setlocal enabledelayedexpansion

REM ==============================================================================
REM Skrip Pemeriksaan Kesiapan Server Windows
REM Perpustakaan SMPN 3 CIBUNGBULANG
REM ==============================================================================

set "PHP_EXE="

where php.exe >nul 2>nul
if %errorlevel% equ 0 (
    set "PHP_EXE=php.exe"
    goto :php_found
)

for /d %%D in ("C:\laragon\bin\php\*") do (
    if exist "%%D\php.exe" (
        set "PHP_EXE=%%D\php.exe"
        goto :php_found
    )
)

if exist "C:\xampp\php\php.exe" (
    set "PHP_EXE=C:\xampp\php\php.exe"
    goto :php_found
)

:php_found
if "%PHP_EXE%"=="" (
    echo [ERROR] PHP tidak ditemukan di sistem!
    echo         Pastikan Laragon atau XAMPP sudah terpasang di server.
    pause
    exit /b 1
)

"%PHP_EXE%" "%~dp0check_windows_environment.php"

echo.
pause
