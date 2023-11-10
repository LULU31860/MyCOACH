<?php

session_start();
$testingvalue = $_SESSION["time"];
// 5 minutes en seconde
$inactive = 300;


$_SESSION['expire'] = time() + $inactive; //heure de fin de session


if(time() > $_SESSION['expire'])
{  
$_SESSION['time'] = '';
 session_unset();
 session_destroy();
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyCOACH-accueil</title>
    <link rel="stylesheet" href="..\css\style_accueil.css">
</head>
<body>

    <!-- header de la page-->
    <div class="header">
        <img class="imgpres" src="..\image\imagecoach.jpg" alt="image coach">
        <div class="text">
            <p class="title">MyCOACH<br>Entraîner votre corps</p>
        </div>
        <div class="bouton">
            <?php
            if(isset($_SESSION["acces"])){
                echo 
                '"<form action="..\html\connect.php" method="post">
                    <button type="submit" class="btn_connexion" style="display:none;">connexion</button>
                </form>"';
            }
            else{
                echo 
                '"<form action="..\html\connect.php" method="post">
                    <button type="submit" class="btn_connexion" style="display:;">connexion</button>
                </form>"';
            }
            ?>
        </div>
    </div>
    
    <!-- barre de navigation-->
    <div class="content">
        <?php
        if(isset($_SESSION["acces"])){
            echo '"<a href="..\html\seances.php">seances</a>"';
        }
        else{
            echo '"<a href="..\html\seances.php" style="visibility:hidden;">seances</a>"';
        }
        ?>
    </div>
    
    <!-- contenu de la page-->
    <div class="p1">
        <img class="p1img" src="..\image\imagecoach.jpg" alt="image coach">
        <p class="p1presentation">Présentation</p>
        <p class="p1text">Nom : Malik Johnson <br>
            Âge : 35 ans <br>
            Expérience en coaching sportif : 10 ans <br>
            Spécialité : Entraînement en salle de gym <br>
        </p>
    </div>
    <div class="p2">
        <img class="p2img" src="..\image\entrainement.png" alt="image coach">
        <p class="p2presentation">Activités</p>
        <ul class="p2text">
            <li>Entraînement en musculation et en force</li>
            <li>Entraînement cardiovasculaire</li>
            <li>Perte de poids et gestion de la composition corporelle</li>
            <li>Amélioration de la flexibilité et de la mobilité</li>
            <li>Développement de la confiance en soi et de la motivation</li>
        </ul>
    </div>

    <!-- pied de page-->
    <footer>
        <p class="apropos">
            À propos:<br></p>
        <p class="pers_info"><strong>Nom: Johnson<br>
            Adresse mail: johnson.ml@gmail.com</strong></p>
    </footer>
</body>
</html>