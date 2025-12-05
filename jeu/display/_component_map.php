<div class="h-100 border bg-light d-flex flex-column map">
    <?php
    $roomIndex = 1;
    
    $roomId = "classroom";
    $roomName = "Salle de classe";
    include '_component_map_room.php';
    
    $roomId = "hall";
    $roomName = "Grand hall";
    include '_component_map_room.php';
    
    $roomId = "servers_room";
    $roomName = "Salle des serveurs";
    include '_component_map_room.php';
    
    $roomId = "unused_room";
    $roomName = "Pièce inutilisée";
    include '_component_map_room.php';
    
    $roomId = "formation_room";
    $roomName = "Salle de formation";
    include '_component_map_room.php';
    
    $roomId = "entrance";
    $roomName = "Entrée";
    include '_component_map_room.php';
    
    $roomId = "infirmary";
    $roomName = "Infirmerie";
    include '_component_map_room.php';
    ?>
</div>