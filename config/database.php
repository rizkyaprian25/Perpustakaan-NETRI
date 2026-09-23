<?php
/**
 * Konfigurasi Basis Data SLiMS 9 Bulian - SMPN 3 CIBUNGBULANG
 * Dirancang agar 100% kompatibel baik di Windows Server (Fisik) maupun Docker (Testing)
 */

// 1. Prioritas Utama: Baca dari file konfigurasi lokal jika ada
if (file_exists(__DIR__ . DIRECTORY_SEPARATOR . 'sysconfig.local.inc.php')) {
    include_once __DIR__ . DIRECTORY_SEPARATOR . 'sysconfig.local.inc.php';
}

// 2. Deteksi Lingkungan: Docker vs Native Windows Server
$is_docker = file_exists('/.dockerenv') || (getenv('DOCKER_ENV') !== false) || (@gethostbyname('db') !== 'db');

$db_host = defined('DB_HOST') ? DB_HOST : (getenv('DB_HOST') ?: ($is_docker ? 'db' : '127.0.0.1'));
$db_port = defined('DB_PORT') ? (string)DB_PORT : (getenv('DB_PORT') ?: '3306');
$db_name = defined('DB_NAME') ? DB_NAME : (getenv('DB_NAME') ?: 'db_perpus_smpn3');
$db_user = defined('DB_USERNAME') ? DB_USERNAME : (getenv('DB_USERNAME') ?: 'root');
$db_pass = defined('DB_PASSWORD') ? DB_PASSWORD : (getenv('DB_PASSWORD') !== false ? getenv('DB_PASSWORD') : ($is_docker ? 'root123' : ''));

return [
    'default_profile' => 'SLiMS',
    'proxy' => false,
    'nodes' => [
        'SLiMS' => [
            'host' => $db_host,
            'database' => $db_name,
            'port' => $db_port,
            'username' => $db_user,
            'password' => $db_pass,
            'options' => [
                'storage_engine' => 'MyISAM'
            ]
        ]
    ]
];
