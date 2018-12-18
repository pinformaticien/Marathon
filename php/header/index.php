<?php
    try{
        $bdd = new PDO("mysql:host=localhost;dbname=infos;charset=UTF8","root","");
    }catch(PDOException $e){
        die($e->getMessage());
    }
?>

<!-- DEBUT HEADER ( en-tete de navigation) -->	
<header>
    <nav>
        <div class="nav-nom">
            <h1><a href="">Marathon de l'Info</a></h1>
        </div>
        <div class="nav-other">
            <div class="reseau-sociaux">
                <a href=""><img src="images/fb.jpg"></a>
                <a href=""><img src="images/twitter.png"></a>
                <a href=""><img src="images/instagram.jpg"></a>
                <a href=""><img src="images/rss.jpg"></a>
                <form method="POST">
                    <?php
                        if (isset($bool_auth) AND ($_SESSION['id'])) {                      
                    ?>
                            <?php
                                if(($_SESSION['id'] == 1) || ($_SESSION['id'] == 2) || ($_SESSION['id'] == 3)){
                            ?>
                                    <input type="submit" name="h_parametre" value="Parametre">
                            <?php
                                }
                            ?>
                            <input type="submit" name="h_deconnexion" value="Deconnexion">
                    <?php
                        }else{
                    ?>
                            <input type="submit" name="h_inscription" value="S'Inscrire">
                            <input type="submit" name="h_connexion" value="Se Connecter">
                    <?php
                        }
                    ?>
                </form>
            </div>
            <div class="nav-o-menu">
                <nav class="nav-menu">
                    <ul>
                        <li>
                            <a href="">Actualité</a>
                        </li>
                        <li>
                            <a href="">Sénégal</a>
                        </li>
                        <li>
                            <a href="">Afrique</a>
                        </li>
                        <li>
                            <a href="">Monde</a>
                        </li>
                        <li>
                            <a href="">économie</a>
                        </li>
                        <li>
                            <a href="">Politique</a>
                        </li>
                        <li>
                            <a href="">Culture</a>
                        </li>
                        <li>
                            <a href="">Sport</a>
                        </li>
                        <li>
                            <a href="">Vidéos</a>
                        </li>
                        <li>
                            <a href="">Faits-Divers</a>
                        </li>
                        <li>
                            <a href="">Buzz</a>
                        </li>
                        <li>
                            <a href="">Forum</a>
                        </li>						
                    </ul>
                </nav>
            </div>
        </div>
    </nav>
    
</header>
<!-- FIN HEADER ( en-tete de navigation) -->