<?php
$producten = mysqli_query($verbinding, "SELECT * FROM product JOIN soortprod ON product.SoortProdID = soortprod.SoortProdID");
$aantalProducten = mysqli_num_rows($producten);

if($aantalProducten > 0) {

    while($rij = mysqli_fetch_assoc($producten)) {
        
        echo createProductItem($rij);
    }

} else echo "Geen resultaat";
?>