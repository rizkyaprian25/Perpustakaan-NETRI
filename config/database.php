<?php
return [
    'default_profile' => 'SLiMS',
    'proxy' => false,
    'nodes' => [
        'SLiMS' => [
            'host' => 'db',
            'database' => 'db_perpus_smpn3',
            'port' => '3306',
            'username' => 'root',
            'password' => 'root123',
            'options' => [
                'storage_engine' => 'MyISAM'
            ]
        ]
    ]
];
