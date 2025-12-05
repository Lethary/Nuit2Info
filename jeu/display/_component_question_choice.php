<a
    class="btn btn-primary <?php echo (isset($_GET["c"]) && !empty($_GET["c"]) && $_GET["c"] == $choiceId) ? ($isCorrect == $choiceId ? "bg-success" : "bg-danger") : "" ?>"
    href="?rid=<?php echo $roomId ?>&c=<?php echo $choiceId++ ?>"
>
    <?php echo $choice ?>
</a>