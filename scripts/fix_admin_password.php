<?php
/**
 * Skrip untuk mereset dan memastikan password admin SLiMS benar
 * Password: admin
 */
$pdo = new PDO('mysql:host=db;port=3306;dbname=db_perpus_smpn3;charset=utf8mb4', 'root', 'root123', [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
]);

$hash = password_hash('admin', PASSWORD_BCRYPT);
$stmt = $pdo->prepare("UPDATE `user` SET `email` = 'superadmin@admin.com', `passwd` = :hash WHERE `username` = 'admin'");
$stmt->execute([':hash' => $hash]);
$check = $pdo->query("SELECT username, email, passwd FROM `user` WHERE `username` = 'admin'")->fetch(PDO::FETCH_ASSOC);
$verified = password_verify('admin', $check['passwd']);
echo "Admin password updated successfully to 'admin'. Email: {$check['email']}. Verification result: " . ($verified ? "PASS (OK)" : "FAIL") . "\n";
