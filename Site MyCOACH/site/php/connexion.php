<?php

$login="root";
$password="";

try
{
        $db = new PDO('mysql:host=localhost;dbname=mycoachbdd;charset=utf8', $login, $password);
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
        
}
?>