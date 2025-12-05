<?php
$roomId = $_GET["rid"];
?>

<div class="h-100 d-flex flex-column gap-5">
    <h2><?php echo question($roomId); ?></h2>
    <div class="flex-grow-1 d-flex flex-column gap-2">
        <?php
        $choiceId = 1;
        foreach (choix($roomId) as $choice) {
            $isCorrect = isset($_GET["c"]) && !empty($_GET["c"]) ? verifyResponse($roomId, $_GET["c"]) : null;
            
            $roomResult = new roomResult;
            $roomResult -> solved = $isCorrect;
            $roomResult -> independencyMod = getIndependencyImpact($roomId, isset($_GET["c"]) && !empty($_GET["c"]) ? $_GET["c"] : "-1");
            $roomResult -> behaviourMod = getBehaviourImpact($roomId, isset($_GET["c"]) && !empty($_GET["c"]) ? $_GET["c"] : "-1");
            $roomResult -> ecologyMod = getEcologyImpact($roomId, isset($_GET["c"]) && !empty($_GET["c"]) ? $_GET["c"] : "-1");
            
            if (!isset($_COOKIE["resultsCookie"][$roomId]) || empty($_COOKIE["resultsCookie"][$roomId]) || !is_object($_COOKIE["resultsCookie"][$roomId]) || $_COOKIE["resultsCookie"][$roomId] != $roomResult) {
                $cookieValue = json_decode($_COOKIE["resultsCookie"], true);
                $cookieValue[$roomId] = $roomResult;
                setcookie("resultsCookie", json_encode($cookieValue), path: "/");
            }
            include '_component_question_choice.php';
        }
        ?>
    </div>
    <?php
    if (isset($_GET["c"]) && !empty($_GET["c"])) {
        echo getResponse($roomId, $_GET["c"]);
    }
    ?>
    <a href="?" class="btn btn-outline-secondary">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left me-3" viewBox="0 0 16 16" data-darkreader-inline-fill="" style="--darkreader-inline-fill: currentColor;">
            <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8"></path>
        </svg>
        Retour
    </a>
</div>