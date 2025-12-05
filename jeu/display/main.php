<?php
include '../header.php';
require 'logic/C_JeuGestion.php';
calculateScores();
?>

<div class="h-100 d-flex flex-column">
    <section class="bg-dark text-light sticky-top d-flex flex-column flex-md-row align-items-md-center justify-content-md-between gap-3 p-3 py-md-4b">
        <div class="d-flex flex-row align-items-center justify-content-between w-100 gap-5">
            <h1 class="m-0 me-md-5 flex-grow-1 text-md-center">Établissement NIRD Campus</h1>
            <a href="?reset=true" class="btn btn-danger ms-md-5 d-md-none text-end">Recommencer</a>
        </div>
        <div class="d-none d-md-block w-25 text-center"></div>
        <div class="d-md-none w-100 d-flex flex-column">
            <div class="d-flex flex-row align-items-end justify-content-center gap-3 c-w-30">
                <?php
                include 'display/_component_scores.php';
                ?>
            </div>
        </div>
    </section>
    <section class="flex-grow-1 d-flex flex-column flex-md-row justify-content-md-end">
        <div class="w-md-75 flex-grow-1 p-5">
            <?php
            if (isset($_GET["rid"]) && !empty($_GET["rid"])) {
                include 'display/_component_question.php';
            } else if (solvedCount() >= 7) {
                include 'display/_component_victory.php';
            } else {
                include 'display/_component_map.php';
            }
            ?>
        </div>
        <div class="w-md-25 bg-dark text-light d-none d-md-flex flex-column text-md-center">
            <div class="flex-grow-1 p-4 p-lg-5 d-none d-md-flex flex-column align-content-center justify-content-center gap-5">
                <?php
                include 'display/_component_scores.php';
                ?>
            </div>
            <div class="d-none d-md-block text-center mb-5">
                <a href="?reset=true" class="btn btn-danger">Recommencer</a>
            </div>
        </div>
    </section>
</div>

<script>
    document.querySelectorAll(".map > div").forEach(r => {
        r.onclick = function() {
            this.classList.add("solved");
        }
    })
</script>

<?php include '../footer.php' ?>