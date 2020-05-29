<?php
include('../connection.php');

$jsonContent = file_get_contents('php://input');
$jsonDecoded = json_decode($jsonContent, true);

$sql = "SELECT email FROM `users` WHERE `email` = :email and `password` = :password";
$sqlResponse = prepareQuery($dbh, $sql, $jsonDecoded);

if(count($sqlResponse)) {
    echo true;
} else {
    echo false;
}
function prepareQuery($dbh, $sql, $jsonDecoded = null)
{
    $sth = $dbh->prepare($sql);
    $sth->execute($jsonDecoded);

    return $sth->fetchAll(PDO::FETCH_OBJ);
}
