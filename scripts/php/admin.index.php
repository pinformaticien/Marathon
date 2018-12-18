<?php
	session_start();

    try{
        $bdd = new PDO("mysql:host=localhost;dbname=infos;charset=UTF8","root","");
    }catch(PDOException $e){
        die($e->getMessage());
    }

    if(isset($_POST["h_inscription"])){
        header("location: php/admin/inscription.php");
    }

    if(isset($_POST["h_connexion"])){
        header("location: php/admin/connexion.php");
	}
	
	//if ((isset($_GET['id'])) AND ($_GET['id'] == $_SESSION['id'])) {
    if(isset($_SESSION['id'])){
		$bool_auth = true;
    }
    
    if(isset($_POST["h_parametre"])){
        header("location: php/admin/admin.php");
	}
    
    if(isset($_POST["h_deconnexion"])){
        session_destroy();
        header("location: ../marathonInfo/index.php");
    }
    
?>