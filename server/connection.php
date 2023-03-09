<?php
$servername = "192.168.1.19";
$database = "HQ";
$username = "raspberry";
$password = "sussy1234";

// Create connection

$conn = mysqli_connect(
	$servername, 
	$username, 
	$password, 
	$database
);

// Check connection

if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

echo "Connected successfully";

mysqli_close($conn);

?>