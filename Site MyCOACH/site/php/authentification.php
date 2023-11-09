<?php
    session_start();
    $_SESSION["acces"]="";
    // connexion a la base de donnees
    include("../php/connexion.php");

    // variable qui stock les donnees renseigner dans le formulaire de connexion
    $identifiant = $_POST['login'];
    $_SESSION['login'] = $identifiant;
    $motdepasse_taper = $_POST['password'];

    // requete SQL 
    $reqSQL = "SELECT password FROM clients WHERE login='$identifiant'";
    $resultat = $db -> query($reqSQL);
    $ligne = $resultat -> fetch();

    // affectation du password recuperer dans la base de donnees
    $motdepasse_bdd = $ligne["password"];

    // condition qui verifie le login et le mdp, si vrai renvoie la page accueil
    if ($motdepasse_taper==$motdepasse_bdd){
        header("Location: ..\html\accueil.php");
        $_SESSION["acces"]="ok";
    }
    // sinon ecrit ""Saisie eronnee sur la page de connexion
    else{
        echo "Saisie éronnée";
        include("..\html\connect.php");
    }
?>