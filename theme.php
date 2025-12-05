<?php include './header.php'; ?>
<section class="hero">
    <?php
    session_start();
    require_once "connect.php";
    require_once "fonctions/qcm.php";

    if(isset($_SESSION['nbScene'])){
        $_SESSION['nbScene'] = null;
    }

    if(isset($_SESSION['theme'])) {
        $_SESSION['theme'] = null;
    }
    if(isset($_SESSION['indexScene'])) {
        $_SESSION['indexScene'] = null;
    }

    if(isset($_SESSION['indexer'])){
        $_SESSION['indexer'] = null;
    }

    if(isset($_SESSION['indexer2'])){
        $_SESSION['indexer2'] =  null;
    }

    if (isset($_SESSION['question'])){
        $_SESSION['question'] = null;
    }

    if(isset($_SESSION['scenes'])){
        $_SESSION['scenes'] = null;
    }

    ?>
    <h1> Bienvenu sur le jeu interactive xxx </h1>
    <p>Voici la liste des themes possibles : </p>
    <?php
    afficherTheme($db);
    ?> 
</section>

<?php include 'footer.php'; ?>