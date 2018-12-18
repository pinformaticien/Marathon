<?php

    try{
        $bdd = new PDO("mysql:host=localhost;dbname=infos;charset=UTF8","root","");
    }catch(PDOException $e){
        die($e->getMessage());
    }
    

    if (isset($_POST["inscription"])) {
        if (!empty($_POST["pseudo"])) {
            $pseudo = htmlspecialchars($_POST["pseudo"]);
        } else {
            $bool_pseudo = true;
        }

        if (!empty($_POST["email"])) {
            $email = htmlspecialchars($_POST["email"]);  
        } else {
            $bool_email = true;
        }
        
        if (!empty($_POST["password"])) {
            $password = htmlspecialchars($_POST["password"]);
            $password = sha1($password);
        } else {
            $bool_password = true;
        }  
        
        if (!empty($_POST["sexe"])) {
            $sexe = htmlspecialchars($_POST["sexe"]);
        } else {
            $bool_sexe = true;
        }        
    }   

    if(isset($pseudo,$email,$password,$sexe)){
        $date = date("d/m/y H:i:s");
        $insert_user = $bdd->prepare("INSERT INTO users(pseudo,email,pwd,sexe,date_inscription) VALUES(?,?,?,?,?)");
        $insert_user->execute(array($pseudo,$email,$password,$sexe,$date));
        header("location: connexion.php");
    }
        
    

?>