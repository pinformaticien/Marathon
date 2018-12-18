<?php
    session_start();

    try{
        $bdd = new PDO("mysql:host=localhost;dbname=infos;charset=UTF8","root","");
    }catch(PDOException $e){
        die($e->getMessage());
    }

    if (isset($_POST["connexion"])) {
        if (!empty($_POST["email"])) {
            $email = htmlspecialchars($_POST["email"]);
        } else {
            $bool_email = true;
        }
        
        if (!empty($_POST["password"])) {
            $password = htmlspecialchars($_POST["password"]);
        } else {
            $bool_password = true;
        }        
    }

    if (isset($email,$password)) {
        $password = sha1($password);
        
        $verif_user = $bdd->prepare("SELECT * FROM users WHERE email = ? AND pwd = ?");
        $verif_user->execute(array($email,$password));

        $nb = $verif_user->rowCount();
       
        if ($nb == 1) {
            $all_info_user = $verif_user->fetch();
            $_SESSION["id"] = $all_info_user["id"];
            $_SESSION["pseudo"] = $all_info_user["pseudo"];
            $_SESSION["email"] = $all_info_user["email"];
            //echo "Good connexion";
            header("location:../../index.php");
        } else {
            $bool_connexion = true;
        }
    }
?>