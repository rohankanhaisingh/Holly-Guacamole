<?php
    $serverNaam = "192.168.1.186";
    $gebruikersNaam = "sussy";
    $wachtwoord = "nigga1234";
    $databaseNaam = "hg";
    
    $verbinding = mysqli_connect($serverNaam, $gebruikersNaam, $wachtwoord);

    if(!$verbinding) die("Kan geen verbinding maken met database server." . mysqli_error($verbinding));

    $database = mysqli_select_db($verbinding, $databaseNaam);

    if(!$database) die("Kan geen verbinding maken met database." . mysqli_error($verbinding));

    function createProductItem($product) {

        $productNaam = $product["ProductNaam"];
        $productId = $product["ProductID"];
        $productPrijs = $product["ProductPrijs"];
        $productThumbnail = $product["ProductThumbnail"];
        $productSoort = $product["SoortProdNaam"];
        
        return "
        <div class='product-container product-item' data-type='$productSoort' data-id='$productId' data-name='$productNaam' data-price='$productPrijs'>
            <div class='product-item-thumbnail'>
                <img src='./resources/images/gerechten/$productThumbnail' alt='Zoetzure kip' />
            </div>
            <div class='product-item-title'>
                <span class='title'>" . $productNaam . "</span>
                <div class='price'>&euro;" . str_replace(".", ',', (string) $productPrijs). "</div>
            </div>
            <div class='product-item-description'>
                <span>Geen beschrijving beschikbaar</span>
            </div>
            <div class='product-item-tags'>
                <span>$productSoort</span>
            </div>
            <div class='product-item-horizontal-line'></div>
            <div class='product-item-optional-description'>
                <span>Je kunt een keuze maken uit: er zijn momenteel geen keuzes beschikbaar voor dit product. Misschien zijn er later keuzes beschikbaar, wie weet.</span>
            </div>
            <div class='product-item-buttons'>
                <div class='product-item-buttons-button'>
                    <img src='./resources/icons/icon-add.png' alt='Voeg product toe aan winkelmand' />
                </div>
                <div class='product-item-buttons-button'>
                    <img src='./resources/icons/icon-compare.png' alt='Vergelijk product met een ander' />
                </div>
                <div class='product-item-buttons-button'>
                    <img src='./resources/icons/icon-slider.png' alt='Product samenstellen' />
                </div>
                <div class='product-item-buttons-button'>
                    <img src='./resources/icons/icon-info.png' alt='Product informatie' />
                </div>
            </div>
        </div>
        ";
    }
?>