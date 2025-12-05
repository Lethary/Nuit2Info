<?php
function afficherTheme(PDO $db)
{
    $sql = "SELECT * FROM ni_themes ORDER BY libelle";

    $statement = $db->prepare($sql);
    $statement->execute();

    while ($row = $statement->fetch()) {
        echo "<p><a href='scene.php?id_theme=" . $row['id_theme'] . "'>" . $row['libelle'] . "</a></p>";
    }

    $statement->closeCursor();
}
function recupererScenes(PDO $db, $id_theme)
{
    $stmt = $db->prepare('SELECT SC.id_scene, SC.titre, SC.ordre, SC.id_theme, SC.contenu, IM.lien as lien FROM ni_scenes SC 
                         LEFT JOIN ni_images IM ON SC.id_image = IM.id_image   
                        WHERE  id_theme = :id_theme');
    $stmt->bindParam('id_theme', $id_theme);
    $stmt->execute();

    if (!isset($_SESSION['nbScene']) || empty($_SESSION['nbScene'])) {
        $_SESSION['nbScene'] = $stmt->rowCount();
    }

    while ($row = $stmt->fetch()) {
        $scences[] = $row;
    }
    $stmt->closeCursor();   

    return $scences;
}

function recupererQuestion(PDO $db, $questionID){
    $sql = "SELECT RE.id_reponse, QE.libelle, RE.contenu, CO.est_vrai, QE.explication  FROM ni_questions QE
            INNER JOIN ni_contenir CO ON QE.id_question = CO.id_question
            INNER JOIN ni_reponses RE ON CO.id_reponse = RE.id_reponse 
            WHERE QE.id_question = :id_question";
    $stmt = $db->prepare($sql);
    $stmt->bindParam('id_question', $questionID);
    $stmt->execute();

    while ($row = $stmt->fetch()){
        $questions[] = $row;
    }

    $stmt->closeCursor();

    return $questions;
}

function questionID($db, $idScene){
    $sql = "SELECT QE.id_question FROM ni_questions QE 
            INNER JOIN ni_afficher AF ON QE.id_question = AF.id_question
            WHERE AF.id_scene = :idscene ";
    
    $stmt = $db->prepare($sql);
    $stmt->bindParam('idscene', $idScene);
    $stmt->execute();
    
    $row = $stmt->fetch();

    $idquestion = $row['id_question'];
    return $idquestion;
}

function win($db, $idTheme){
    $sql = "SELECT libelle from ni_themes WHERE id_theme = :idtheme";
    $stmt = $db->prepare($sql);
    $stmt->bindParam('idtheme', $idTheme);
    $stmt->execute();

    $row=$stmt->fetch();

    return $row;
}

function recuperer_question($db, $id_question)
{
    $stmt = $db->prepare('SELECT * FROM ni_questions WHERE  id_question = :id_question');
    $stmt->bindParam('id_question', $id_question);
    $stmt->execute();
    while ($row = $stmt->fetch()) {
        $scences[] = $row;
    }
    $stmt->closeCursor();
    return $scences;
}
