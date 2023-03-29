<?php

    $serverNaam = "192.168.1.186";
    $gebruikersNaam = "sussy";
    $wachtwoord = "nigga1234";
    $databaseNaam = "hg";
    
    $verbinding = mysqli_connect($serverNaam, $gebruikersNaam, $wachtwoord);

    if(!$verbinding) die("Kan geen verbinding maken met database server." . mysqli_error($verbinding));

    $database = mysqli_select_db($verbinding, $databaseNaam);

    if(!$database) die("Kan geen verbinding maken met database." . mysqli_error($verbinding));

	$content = trim(file_get_contents("php://input"));
	$decodedArray = json_decode($content, true);

	$timestamp = $decodedArray["timestamp"];
	$text = $decodedArray["text"];

	$query = "INSERT INTO bestelregel(Product, Aantal, ProductID, IsVerwerkt) VALUES ('Sex', 13, 234, 1)";

    mysqli_query($verbinding, $query);

?>