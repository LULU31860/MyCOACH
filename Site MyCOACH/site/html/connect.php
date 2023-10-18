<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyCOACH-connexion</title>
    <link rel="stylesheet" href="..\css\style_connect.css">
</head>
<body>

    <!-- Formulaire-->
    <div class="formulaire">
        <form action="..\php\authentification.php" method="post" class="form" onSubmit=""> 
            <label for="connexion" class="connexion">CONNEXION</label><br>
            <!-- Les champs text-->
            <div class="text">
                <input class="login" type="text" id="login" name="login" placeholder="login" style="height:25px;">
                <input class="password" type="password" id="password" name="password" placeholder="password" style="height:25px;">
            </div>
            <!-- Les boutons-->
            <div class="button">
                <input  class="envoyer" type="submit" value="CONNEXION" name="connexion">
                <input  class="annuler" type="reset" value="ANNULER" name="annuler">
            </div>
        </form>
    </div>
</body>
</html>