<!DOCTYPE html>
<html>
<head>
  <title>ADMIN_NUMERIQUE</title>
   <meta charset="utf-8">
</head>
<body> 
    <div class="content">
       
    <h1>Ajout d'un personnage<h1>
    
        <form method="post" class="box" enctype="multipart/form-data">
            <p>
                <label for="nom"> Nom</label><br>
                <input type="text" name="nom">
            </p>

            <p>
                <label for="titre"> Poste </label><br>
                <input type="text" name="titre">
            </p>

            <p>
                <label for="photo"> Photo</label><br>
                <input type="file" name="photo">
            </p>
           
            <p>
                <label for="historique">Historique</label><br>
                <input type="textarea" name="historique">
            </p>
            
            <br>
            <input type="submit" name="submit" value="AJOUTER">
        </form>
    </div>
</body>
</html>


<?php

include './bd.php';

 $nom = $_POST["nom"];
 $titre = $_POST["titre"];
 $historique = $_POST["historique"];

if(isset($_FILES['photo'])){
    $tmpName = $_FILES['photo']['tmp_name'];
    $name = $_FILES['photo']['name'];
    $size = $_FILES['photo']['size'];
    $error = $_FILES['photo']['error'];

   

    //on  recupère l'extension du fichier uploadé
    $tabExtension = explode('.', $name);

    //on met les extensions du fichier en miniscule
    $extension = strtolower(end($tabExtension));

    //Tableau des extensions que l'on accepte
    $extensions = ['jpg', 'png', 'jpeg', 'gif'];

    //Taille max que l'on accepte
    $maxSize = 400000;

    if(in_array($extension, $extensions) && $size <= $maxSize && $error == 0){

        //rendre le nom d'un fichier unique
        $uniqueName = uniqid('', true);

        //uniqid génère quelque chose comme ca : 5f586bf96dcd38.73540086
        $file = $uniqueName.".".$extension;

        //on upload le fichier vers notre dossier upload
        move_uploaded_file($tmpName, './upload/'.$file);

        // insertion des données dans la base de données
       // $req = $db->prepare('INSERT INTO personnages (nom_complet, nom_image, historique) VALUES (?, ?, ?)');

        $req = "INSERT INTO personnages(nom_complet,titre,nom_image,historique) 
                VALUES(:nom_complet, :titre, :nom_image, :historique)";

        $query = $conn->prepare($req);

        $datas = array(":nom_complet"=>$nom, ":titre"=>$titre, ":nom_image"=>$file, "historique"=>$historique);
        $query->execute($datas);

        echo "Personnage enregistré";
    }
    else{
        echo "Une erreur est survenue";
    }
}
var_dump($_POST);
var_dump($_FILES);
             
?>
