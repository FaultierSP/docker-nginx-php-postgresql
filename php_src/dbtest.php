<?php
$DB_HOST='postgresql';
$DB_NAME='database';
$DB_USER='username';
$DB_PASSWORD='secretpassword';

try {
$dsn="pgsql:host=$DB_HOST;port=5432;dbname=$DB_NAME";

$pdo=new PDO($dsn,$DB_USER,$DB_PASSWORD,[PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);

if($pdo) {
    echo "mkay";
}
}
catch (PDOException $e) {
	die($e->getMessage());
}
finally {
	if ($pdo) {
		$pdo = null;
	}
}