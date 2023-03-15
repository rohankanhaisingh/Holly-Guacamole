<?php 
    $serverNaam = "localhost";
    $gebruikersNaam = "frontend";
    $wachtwoord = "sussy1234";
    $databaseNaam = "holly_guacamoly";
    
    $verbinding = mysqli_connect($serverNaam, $gebruikersNaam, $wachtwoord);

    if(!$verbinding) die("Kan geen verbinding maken met database server." . mysqli_error($verbinding));

    $database = mysqli_select_db($verbinding, $databaseNaam);

    if(!$database) die("Kan geen verbinding maken met database." . mysqli_error($verbinding));

    function createProductItem($product) {

        $productNaam = $product["ProductNaam"];
        $productId = $product["ProductID"];
        $productPrijs = $product["ProductPrijs"];
        $productThumbnail = $product["ProductThumbnail"];
        return "
        <div class='product-container product-item' data-type='" . $productThumbnail . "' data-id='" . $productId . "' data-name='" . $productNaam . "' data-price='" . $productPrijs . "'>
            <div class='product-item-thumbnail'>
                <img src='./resources/images/gerechten/" . $productThumbnail . "' alt='Zoetzure kip' />
            </div>
            <div class='product-item-title'>
                <span class='title'>" . $productNaam . "</span>
                <div class='price'>€" . str_replace(".", ',', (string) $productPrijs). "</div>
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

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Menu</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta name="copyright" content="� W3C" />
    <meta name="author" lang="en" content="Kay, Jasper, Rohan" />
    <meta name="robots" content="Thingy" />
    <meta name="description" content="Menu" />
    <meta name="keyword" content="Gekkke digitale menukaart jwz" />
    <meta name="viewport" content="width=device-width" />

    <link href="./resources/fonts/fonts.css" rel="stylesheet" type="text/css"/>
    <link href="./styles/index.css" rel="stylesheet" type="text/css"/>
    <link href="./styles/navbar.css" rel="stylesheet" type="text/css"/>
    <link href="./styles/tabs.css" rel="stylesheet" type="text/css"/>
    <link href="./styles/products.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="app">
        <div class="container">

            <div class="app-navbar">
                <div class="navbar-logo">
                    <img src="./resources/images/avocado.png" alt="Logo" />
                </div>
                <div class="navbar-description">
                    <span>Interactieve menu</span>
                </div>
                <div class="navbar-vl"></div>
                <ul class="navbar-links">
                    <li><a href="#">Home pagina</a></li>
                    <li><a href="#">Geschiedenis</a></li>
                    <li><a href="#">Help</a></li>
                    <li><a href="#">Winkelmand</a></li>
                    <li><a href="#">Mijn account</a></li>
                </ul>
                <div class="navbar-hamburger closed">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>

            <div class="app-content">
                <div class="container">
                    
                    <div class="app-tabs">

                        <div class="tabs-button active"><span>Alle producten</span></div>

                        <div class="tabs-hl"></div>

                        <div class="tabs-button"><span>Spaanse gerechten</span></div>
                        <div class="tabs-button"><span>Warme gerechten</span></div>
                        <div class="tabs-button"><span>Koude gerechten</span></div>
                        <div class="tabs-button"><span>Vega gerechten</span></div>

                        <div class="tabs-hl"></div>

                        <div class="tabs-button"><span>Snacks</span></div>
                        <div class="tabs-button"><span>Nagerechten</span></div>
                        <div class="tabs-button"><span>Lunch</span></div>

                        <div class="tabs-hl"></div>

                        <div class="tabs-button"><span>Koude drank</span></div>
                        <div class="tabs-button"><span>Warme drank</span></div>
                        <div class="tabs-button"><span>Fris drank</span></div>

                        <div class="tabs-hl"></div>

                        <div class="tabs-button"><span>Overige producten</span></div>
                        <div class="tabs-button"><span>Informatie</span></div>
                        <div class="tabs-button"><span>Contact</span></div>
                        <div class="tabs-button"><span>Instellingen</span></div>

                    </div>

                    <div class="app-products">
                        <div class="products-grid-container">

                            <?php

                            $producten = mysqli_query($verbinding, "SELECT * FROM `producten`");
                            $aantalProducten = mysqli_num_rows($producten);

                            if($aantalProducten > 0) {

                                while($rij = mysqli_fetch_assoc($producten)) {
                                    
                                    echo createProductItem($rij);
                                }

                            } else echo "Geen resultaat";

                            ?>
                        </div> 
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="./scripts/partials/navbar.js" type="text/javascript"></script>
    <script src="./scripts/generate-product-items.js" type="text/javascript"></script>
</body>
</html>