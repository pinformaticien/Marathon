<?php
	session_start();
	try{
		$bdd = new PDO("mysql:host=localhost;dbname=infos;charset=UTF8","root","");
	}catch(PDOExeption $e){
		die("Error: ".$e->getMessage());
	}

	if (!isset($_SESSION['id'])) {
		header("location: ../../index.php");
	}
	

	if (isset($_POST['envoyer'])) {
		if (!empty($_POST["titre"])) {
			$titre = htmlspecialchars($_POST["titre"]);
		}else{
			$bool_titre = true;
		}

		if (!empty($_POST["editor"])) {
			$contenu = (trim($_POST["editor"]));
			$contenu = strip_tags($contenu,'<b></b>');
			$contenu = strip_tags($contenu,'<p></p>');
			$contenu = strip_tags($contenu,'<br></br>');
		}else{
			$bool_contenu = true;
		}

		if (!empty($_FILES)) {
			$img_name = $_FILES["image"]["name"];
			$img_type = $_FILES["image"]["type"];
			$img_error = $_FILES["image"]["error"];
			$img_size = $_FILES["image"]["size"];

			$ext = strtolower(substr($img_name, -3));
			$list_ext = array("jpg","png");

			if (isset($img_size) AND $img_size == 0) {
				$bool_fichier = true;
			}

			if ($img_error == 0) {
				if (in_array($ext, $list_ext)) {
					if ($img_size < 2*pow(10, 6)) {
						$img_tmp_name = $_FILES["image"]["tmp_name"];
						$url = "images/".$img_name;	
						move_uploaded_file($img_tmp_name, $url);
						$fichier = true;				
					} else {
						$bool_taille = true;
						//echo "taille invalide sup à 2mo";
					}
				} else {
					$bool_ext = true;
				}
			} else {
				$bool_fichier = true;
			}
		}else{
			$bool_fichier = true;
		}

		if (!empty($_POST["categorie"])) {
			$categorie = htmlspecialchars($_POST["categorie"]);
		} else {
			$bool_categorie = true;
		}
		
	}


	if (isset($titre,$contenu,$fichier,$categorie)) {
		$insert_article = $bdd->prepare("INSERT INTO articles(titre,contenu,photo,date_publication,heure_publication,id_user,id_categorie) VALUES(?,?,?,?,?,?,?)");
		$insert_article->execute(array($titre,$contenu,$url,date("Y/m/d"),date("H:i:s"),$_SESSION['id'],$categorie));
		header("location: ../../php/admin/modifPost.php");
	}
	
?>