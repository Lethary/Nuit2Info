<?php include './header.php'; ?>
<section>
<?php 
session_start();
    require_once "connect.php";
    require_once "fonctions/qcm.php";

    if (!isset($_GET['id_theme']) || empty($_GET['id_theme'])){
        header("Location: theme.php");
    }

    if(isset($_SESSION['indexer'])){
        $_SESSION['indexer'] = null;
    }

    if(isset($_GET['id_theme'])){
        $_SESSION['theme'] = $_GET['id_theme'];
    }

    if (isset($_SESSION['question'])){
        $_SESSION['question'] = null;
    }

    if (!isset($_SESSION['scenes'])){
        $_SESSION['scenes'] = recupererScenes($db ,$_GET['id_theme']);
    }

    if (!isset($_SESSION['scenes'])){
        header("Location: theme.php");
    }

    if (!isset($_SESSION['indexScene'])) {
        $_SESSION['indexScene'] = 0;
    }

    if (isset($_SESSION['indexScene']) && isset($_SESSION['nbScene'])) {   
        if ($_SESSION['indexScene'] >= $_SESSION['nbScene']) { 
            header('Location: win.php?id_theme='.$_SESSION['theme'].'');
        }
    }

    $question = (questionID($db ,$_SESSION['scenes'][$_SESSION['indexScene']]['id_scene']));

    if (isset($question)){
        $url = "question.php?id_question=".(questionID($db ,$_SESSION['scenes'][$_SESSION['indexScene']]['id_scene']));
    }
    else{
    if (!isset($_SESSION['indexer2'])){
        $_SESSION['indexScene']++;
    }
        $url = "scene.php?id_scene=".$_SESSION['indexScene'];
    }
    
?>
<h1> <?php echo $_SESSION['scenes'][$_SESSION['indexScene']]['titre'] ?? ""; ?> </h1>

<p> <?php echo $_SESSION['scenes'][$_SESSION['indexScene']]['contenu'] ?? ""; ?> </p>  

<img src="<?php echo $_SESSION['scenes'][$_SESSION['indexScene']]['lien'] ?? ""; ?>">

 <a href="<?php echo $url ;?>"> <button> Continuer </button> </a>

</section>
<?php include 'footer.php'; ?>
