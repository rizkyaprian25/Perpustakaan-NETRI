<?php
$env = "development";
$conditional_environment = "development";
$based_on_ip = false;
$range_ip = [''];
if ($based_on_ip) {
    if (array_key_exists('HTTP_X_FORWARDED_FOR', $_SERVER) && in_array($_SERVER['HTTP_X_FORWARDED_FOR'], $range_ip)) {
        $env = $conditional_environment;
    } else if (in_array($_SERVER['REMOTE_ADDR'], $range_ip)) {
        $env = $conditional_environment;
    }   
}
