<?php
try {
    $dbh = new PDO('mysql:host=localhost;dbname=library', 'root', '');
} catch (PDOException $e) {
    exit($e->getMessage());
}