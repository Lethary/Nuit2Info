<?php include './header.php'; ?>
<section class="hero theme-zone-ux">
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
 <h1 class="theme-title-ux">Bienvenue sur le jeu interactif <span>de aFutaie.</span></h1>
    <p class="theme-subtext-ux">Choisis un thème et découvre comment réduire ton impact numérique :</p>

    <div class="theme-flex-container">
        <?php afficherTheme($db); ?>
    </div>
</section>

<?php include 'footer.php'; ?>