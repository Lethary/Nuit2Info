<?php include './header.php'; ?>
<section>
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

<h1> Bravo vous avez gangé le thème de la <?php echo $nomTheme['libelle']; ?> !!! </h1> 
</section>
<?php include 'footer.php'; ?>
