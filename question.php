<?php include './header.php'; ?>
<?php
session_start();
    require_once "connect.php";
    require_once "fonctions/qcm.php";

    if(!isset($_POST['reponseQuestion'])){
        if(!isset($_GET['id_question'])) {
            header("Location: theme.php");
        }
    }

    if(isset($_SESSION['indexer2'])){
        $_SESSION['indexer2'] = null;
    }

    if(isset($_POST['reponseQuestion'])){
        if($_POST['reponseQuestion'] == 1 ) {
            $reponse = true;
        }
        else { 
            $reponse = false;
        }
    }

    if(!isset($_SESSION['question'])){
        $_SESSION['question'] = recupererQuestion($db, $_GET['id_question']);
    }

    if(!isset($_SESSION['question']) || empty($_SESSION['question'])){
        header("Location: theme.php");
    }

    ?>
<section class="scene-page">

    <div class="scene-container">

        <h1 class="scene-title"><?php echo $_SESSION['question'][0]['libelle']; ?></h1>
        <div class="scene-answers">
        <?php 
        
        for ($i = 0; $i < count($_SESSION['question']); $i++) {
            echo '
            <form action="question.php?id_question='.$_GET['id_question'].'" method="POST">
                <button class="btn-secondary" type="submit" name="reponseQuestion" value="'.$_SESSION['question'][$i]['est_vrai'].'">
                    '.$_SESSION['question'][$i]['contenu'].'
                </button>
            </form>';
        }
        ?>
        </div>
        <?php  
        if(isset($reponse) && $reponse == true){
            echo '
            <div class="hero-desc">
                <p><strong>Bonne réponse !</strong></p>
                <p>'.$_SESSION['question'][0]['explication'].'</p>
            </div>
            ';

            if(!isset($_SESSION['indexer'])){
                $_SESSION['indexer'] = true;
                $_SESSION['indexScene']++;
            }

            echo "
            <a href='scene.php?id_theme=".$_SESSION['theme']."'>
                <button class='btn-primary'>Continuer</button>
            </a>";
        }
        elseif(isset($reponse) && $reponse == false){
            echo '
            <p class="hero-desc">❌ Mauvaise réponse, réessayez.</p>
            ';
        }
        ?>

    </div>

</section>

</section>
<?php include 'footer.php'; ?>
