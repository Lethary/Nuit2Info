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

function recupererScenes($db, $id_theme)
{
    $stmt = $db->prepare('SELECT * FROM ni_scenes WHERE  id_theme = :id_theme');
    $stmt->bindParam('id_theme', $id_theme);
    $stmt->execute();
    while ($row = $stmt->fetch()) {
        $scences[] = $row;
    }
    $stmt->closeCursor();
    return $scences;
}

function recuperer_image($db, $id_image)
{
    $stmt = $db->prepare('SELECT * FROM ni_images WHERE  id_image = :id_image');
    $stmt->bindParam('id_image', $id_image);
    $stmt->execute();
    $row = $stmt->fetch();
    return $row['lien'];
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
