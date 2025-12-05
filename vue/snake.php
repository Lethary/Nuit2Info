<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Snake Arcade</title>
    <link rel="stylesheet" href="../css/style_snake.css">
</head>
<body>

<div class="layout">

    <!-- IMAGE GAUCHE -->
    <img src="../img/homme.png" class="side-img" alt="image gauche">

    <!-- Borne arcade au centre -->
    <div class="arcade-border">
        <h1 class="title">SNAKE <span>GAFAM</span></h1>
        
        <div id="game-container">
    <div id="hud">
        <div id="score">💰 Valorisation : 0 Milliards $</div>
        <div id="message"></div>
    </div>
    <canvas id="game" width="500" height="500"></canvas>
</div>

        </div>

    <!-- IMAGE DROITE -->
    <img src="../img/femme.png" class="side-img" alt="image droite">

</div>

<script src="../script/snake.js"></script>
</body>
</html>



