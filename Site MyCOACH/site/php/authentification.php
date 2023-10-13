<?php
    session_start();
    include("../php/connexion.php");

    $identifiant = $_POST['login'];
    $_SESSION['login'] = $identifiant;
    $motdepasse_taper = $_POST['password'];

    $reqSQL = "SELECT password FROM clients WHERE login='$identifiant'";
    $resultat = $db -> query($reqSQL);
    $ligne = $resultat -> fetch();

    $motdepasse_bdd = $ligne["password"];

    if ($motdepasse_taper==$motdepasse_bdd){
        header("Location: ..\html\accueil.php");
    }
    else{
        echo "Saisie éronnée";
        include("..\html\connect.php");
    }
?>