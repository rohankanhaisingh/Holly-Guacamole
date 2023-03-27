<?php
$producten = mysqli_query($verbinding, "SELECT * FROM producten JOIN soortprod ON producten.SoortProdID = soortprod.SoortProdID");
$aantalProducten = mysqli_num_rows($producten);

if($aantalProducten > 0) {

    while($rij = mysqli_fetch_assoc($producten)) {
                                 
        echo createProductItem($rij);
    }

} else echo "Geen resultaat";
?>