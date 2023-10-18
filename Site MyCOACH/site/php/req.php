<?php
    // connexion a la base de donnees
    include("..\php\connexion.php");

    // requete SQL 
    $reqSQL = "SELECT nom_act,niveau,jour,horaire_deb,horaire_fin, nom_lieu, adresse, cp, ville
    FROM activites a, lieu l, seances s 
    WHERE a.num_act=s.num_act AND l.id_lieu=s.id_lieu;";
    $resultat = $db -> query($reqSQL);
?>