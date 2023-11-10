<?php

session_start();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyCOACH-seances</title>
    <link rel="stylesheet" href="..\css\style_seances.css">
</head>
<body>
    <!-- barre de navigation-->
    <div class="content">
        <a href="..\html\accueil.php">accueil</a>
    </div>
    <div class="titre">
        <h1>Les Seances</h1>
    </div>
    <?php
        //execution de la page de connexion et de la requête
        include_once("../php/connexion.php");
        include_once("../php/req.php");

        //variable qui contient le html de toute la table
        $table1="";
        
        //boucle tant que la base de données renvoie une informations
        while($ligne = $resultat -> fetch()){
            
            // affectation des variable
            $nom_act = $ligne["nom_act"];
            $niveau = $ligne["niveau"];
            $jour = $ligne["jour"];
            $horaire_deb = $ligne["horaire_deb"];
            $horaire_fin = $ligne["horaire_fin"];
            $nom_lieu = $ligne["nom_lieu"];
            $adresse = $ligne["adresse"];
            $cp = $ligne["cp"];
            $ville = $ligne["ville"];
            
            //cration d'une ligne avec les données
            $table ="<tr>
                        <td>$nom_act</td>
                        <td>$niveau</td>
                        <td>$jour</td>
                        <td>$horaire_deb</td>
                        <td>$horaire_fin</td>
                        <td>$nom_lieu</td>
                        <td>$adresse</td>
                        <td>$cp</td>
                        <td>$ville</td>
                    </tr>";
            
            //ajout de la partie html a la table complète
            $table1 = $table1.$table;

        }
        //première ligne du tableau avec le nom des colonnes
        $nom_colonne="<tr>
                        <td><strong>Nom de l'activité</strong></td>
                        <td><strong>Niveau</strong></td>
                        <td><strong>Jour</strong></td>
                        <td><strong>Horaire de début</strong></td>
                        <td><strong>Horaire de fin</strong></td>
                        <td><strong>Lieu</strong></td>
                        <td><strong>Adresse</strong></td>
                        <td><strong>Code postale</strong></td>
                        <td><strong>Ville</strong></td>
                    </tr>";
        
        //affichage du tableau
        echo "<table border=1>".$nom_colonne.$table1."</table>";
    ?>
    <caption></caption>
</body>
</html>