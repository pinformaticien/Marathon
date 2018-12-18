<?php
    session_start();

    if (!isset($_SESSION['id'])) {
        header("location: ../../index.php");
    }
    
    /* ARTICLE */
    if (isset($_POST['article_ajout'])) {
        header("location: addPost.php");
    }
    
    if (isset($_POST['article_mod'])) {
        header("location: modifPost.php");
    }
    
    if (isset($_POST['article_suppr'])) {
        header("location: supprPost.php");
    }
    
    if (isset($_POST['user_ajout'])) {
        header("location: addUser.php");
    }
    
    if (isset($_POST['user_suppr'])) {
        header("location: supprUser.php");
    }
    
    
?>