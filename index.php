<?php

$page = $_GET['page'] ?? 'home';

switch ($page) {

    case 'snake':
        require __DIR__ . "/vue/snake.php";
        break;
    default:
        require __DIR__ . "/vue/header.php";
        require __DIR__ . "/vue/index.php";
        require __DIR__ . "/vue/footer.php";
        break;
}
