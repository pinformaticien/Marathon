<?php

    try{
        $bdd = new PDO("mysql:host=localhost;dbname=infos;charset=UTF8","root","");
    }catch(PDOException $e){
        die($e->getMessage());
    }
    

    if(isset($pseudo,$email,$password,$sexe)){
        $date = date("d/m/y H:i:s");
        $insert_user = $bdd->prepare("INSERT INTO users(pseudo,email,pwd,sexe,date_inscription) VALUES(?,?,?,?,?)");
        $insert_user->execute(array($pseudo,$email,$password,$sexe,$date));
        //header("location: connexion.php");
    }

    if (isset($_GET['id_user'])) {
        $supprimer_user = $bdd->prepare("DELETE FROM users WHERE id = ?");
        $supprimer_user->execute(array($_GET['id_user']));
    }

?>