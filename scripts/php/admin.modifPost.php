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
?>