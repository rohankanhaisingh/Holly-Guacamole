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

	$productName = $decodedArray["productName"];
	$productId = $decodedArray["productId"];
	$productType = $decodedArray["productType"];
	$productType = $decodedArray["timestamp"];

	$query = "INSERT INTO bestelregel(Product, Aantal, ProductID, IsVerwerkt) VALUES ('$productName', 1, $productId, 0)";

    mysqli_query($verbinding, $query);

?>