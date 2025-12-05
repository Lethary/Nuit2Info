<?php include './header.php'; ?>
<?php
require_once "connect.php";
require_once "fonctions/qcm.php";

if (!isset($_GET['id_theme'])){
    header('Location : theme.php');
}

if(isset($_GET['id_theme'])){
    $nomTheme = win($db, $_GET['id_theme']);
}

?>
<section class="theme-complete-page">

    <div class="theme-complete-container">

        <h1 class="theme-complete-title">
            Bravo vous avez gagné le thème de la <?php echo $nomTheme['libelle']; ?> !!!
        </h1>

        <a href="index.php" class="theme-complete-btn">Retour au menu</a>

    </div>

</section>
<?php include 'footer.php'; ?>
