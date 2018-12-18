<?php
	//session_start();
	try{
		$bdd = new PDO("mysql:host=localhost;dbname=infos;charset=UTF8","root","");
	}catch(PDOExeption $e){
		die("Error: ".$e->getMessage());
	}

	if (!isset($_SESSION['id'])) {
		header("location: ../../index.php");
	}
    
    
    if(isset($_GET["id_article"],$_SESSION['id'])){
        $select_if_exist = $bdd->prepare("DELETE FROM articles WHERE id =?");
        $select_if_exist->execute(array($_GET["id_article"]));
        
        header("location: ../../php/admin/supprPost.php");
    }
?>