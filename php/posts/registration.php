<?php
include('../connection.php');

$jsonContent = file_get_contents('php://input');
$jsonDecoded = json_decode($jsonContent, true);

$sql = "INSERT INTO `users`(`email`, `nickname`, `password`, `phone`, `user_mod`) VALUES (:email,:nickname,:password,:phone,1)";
$sqlResponse = prepareQuery($dbh, $sql, $jsonDecoded);
var_dump($sqlResponse);
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
