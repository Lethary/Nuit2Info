<h3>Score actuel</h3>
<div>
    <p class="mb-0 fw-bold">Indépendance aux GAFAM</p>
    <!-- <p class="mb-0">Élevée</p> -->
    <div class="progress mt-2" role="progressbar" aria-label="Éco-score" aria-valuenow="<?php echo $independencyScore ?>" aria-valuemin="0" aria-valuemax="100">
        <div class="progress-bar <?php echo $independencyScore > 60 ? "bg-success" : ($independencyScore > 30 ? "bg-warning" : "bg-danger") ?>" style="width: <?php echo $independencyScore ?>%"></div>
    </div>
</div>
<div>
    <p class="mb-0 fw-bold">Comportement responsable</p>
    <!-- <p class="mb-0">Irresponsable</p> -->
    <div class="progress mt-2" role="progressbar" aria-label="Éco-score" aria-valuenow="<?php echo $behaviourScore ?>" aria-valuemin="0" aria-valuemax="100">
        <div class="progress-bar <?php echo $behaviourScore > 60 ? "bg-success" : ($behaviourScore > 30 ? "bg-warning" : "bg-danger") ?>" style="width: <?php echo $behaviourScore ?>%"></div>
    </div>
</div>
<div>
    <p class="mb-0 fw-bold">Respect de l'environnement</p>
    <!-- <p class="mb-0">18°C</p> -->
    <div class="progress mt-2" role="progressbar" aria-label="Éco-score" aria-valuenow="<?php echo $ecoScore ?>" aria-valuemin="0" aria-valuemax="100">
        <div class="progress-bar <?php echo $ecoScore > 60 ? "bg-success" : ($ecoScore > 30 ? "bg-warning" : "bg-danger") ?>" style="width: <?php echo $ecoScore ?>%"></div>
    </div>
</div>
<p><i><?php if (!isset($_GET["rid"]) || empty($_GET["rid"])) echo "Cliquez sur une salle pour améliorer votre score !" ?></i></p>