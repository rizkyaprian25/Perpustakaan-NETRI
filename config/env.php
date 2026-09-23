<?php
/**
 * Konfigurasi Mode Lingkungan SLiMS 9 Bulian - SMPN 3 CIBUNGBULANG
 * Standar Rekayasa: SoftwareEngineer.md
 */

// Mode default: production (silent error di web), mendukung override via environment variable
$env = getenv('APP_ENV') ?: 'production';

// Mode bersyarat (conditional)
$conditional_environment = 'development';

// Deteksi berbasis IP lokal
$based_on_ip = false;
$range_ip = ['127.0.0.1', '::1'];

if ($based_on_ip) {
    if (array_key_exists('HTTP_X_FORWARDED_FOR', $_SERVER) && in_array($_SERVER['HTTP_X_FORWARDED_FOR'], $range_ip)) {
        $env = $conditional_environment;
    } else if (in_array($_SERVER['REMOTE_ADDR'] ?? '', $range_ip)) {
        $env = $conditional_environment;
    }
}

/**
 * Mode CLI (Terminal / Cron Job)
 */
if (php_sapi_name() === 'cli') {
    $env = 'development';
}
