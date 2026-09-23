<?php
/**
 * Konfigurasi Database SLiMS 9 Bulian - SMPN 3 CIBUNGBULANG
 * Mendukung konfigurasi via Environment Variable / Nilai Bawaan Server Lokal
 */

return [
    /**
     * Profil node basis data default
     */
    'default_profile' => 'SLiMS',

    /**
     * Proxy database dinonaktifkan untuk server on-premise tunggal
     */
    'proxy' => false,

    /**
     * Definisi Node Basis Data MariaDB / MySQL
     */
    'nodes' => [
        'SLiMS' => [
            'host'     => getenv('DB_HOST') ?: '127.0.0.1',
            'database' => getenv('DB_NAME') ?: 'db_perpus_smpn3',
            'port'     => getenv('DB_PORT') ?: '3306',
            'username' => getenv('DB_USERNAME') ?: 'root',
            'password' => getenv('DB_PASSWORD') !== false ? getenv('DB_PASSWORD') : '',
            'options'  => [
                'storage_engine' => 'InnoDB'
            ]
        ],
    ]
];
