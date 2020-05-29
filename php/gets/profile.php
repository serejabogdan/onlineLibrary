<?php
header('Cache-Control: no-cache, must-revalidate');
include('../connection.php');

if(isset($_GET['e'])){

    $sql = "SELECT `id`, `email`, `nickname`,`phone` FROM `users` WHERE email = :email;";

    $result = prepareQuery($dbh, $sql);
    echo json_encode($result);
}

function prepareQuery($dbh, $sql)
{
    $sth = $dbh->prepare($sql);
    $sth->execute(array('email' => $_GET['e']));

    return $sth->fetchAll(PDO::FETCH_OBJ);
}