<?php
function insertBestelRegel() {
    // Voer hier de SQL-query uit om de bestelregel in te voegen in de database 
    $query = "INSERT INTO bestelregel (Product, Aantal, BestellingID, ProductID, IsVerwerkt) SELECT '', '1', BestellingID, '', '0' FROM bestelling WHERE BestellingID = '';";
    mysqli_query($connection, $query);
    alert('Bestelling is gelukt');
}
?>