<?php
include('../connection.php');

$jsonContent = file_get_contents('php://input');
$jsonDecoded = json_decode($jsonContent, true);

$sql = "INSERT INTO `books`(`name`, `author`, `year`, `description`, `img`, `download_url`) VALUES (:name, :author, :year, :description, :img, :book)";
$sqlResponse = prepareQuery($dbh, $sql, $jsonDecoded);

if($sqlResponse) {
    echo true;
} else {
    echo false;
}
function prepareQuery($dbh, $sql, $jsonDecoded = null)
{
    $sth = $dbh->prepare($sql);
    $sth->execute($jsonDecoded);

    return true;
}
