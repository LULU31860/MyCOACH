<?php
include("..\php\connection.php");

$reqSQL = "SELECT * FROM seances"
$resultat = $db -> query($reqSQL);
$ligne = $resultat -> fetch();

echo $ligne;
?>