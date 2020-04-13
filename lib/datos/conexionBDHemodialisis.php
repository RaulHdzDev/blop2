<?php
//este archivo debe estar en el servidor
    include 'Config.php';

	$conn = new Mysqli($server, $user, $pass, $db) or die (Mysqli_errno());
    $conn ->set_charset("utf8");
    
    ?>