<?php 
    require 'connection.php'
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

                        <div class="tabs-button active" data-filter-keyword=""><span>Alle producten</span></div>

                        <div class="tabs-hl"></div>

                        <div class="tabs-button" data-filter-keyword="Spaans"><span>Spaanse gerechten</span></div>
                        <div class="tabs-button" data-filter-keyword="Warm"><span>Warme gerechten</span></div>
                        <div class="tabs-button" data-filter-keyword="Koud"><span>Koude gerechten</span></div>
                        <div class="tabs-button" data-filter-keyword="Vega"><span>Vega gerechten</span></div>

                        <div class="tabs-hl"></div>

                        <div class="tabs-button" data-filter-keyword="Snacks"><span>Snacks</span></div>
                        <div class="tabs-button" data-filter-keyword="Nagerechten"><span>Nagerechten</span></div>
                        <div class="tabs-button" data-filter-keyword="Lunch"><span>Lunch</span></div>

                        <div class="tabs-hl"></div>

                        <div class="tabs-button" data-filter-keyword="Drinken"><span>Koude drank</span></div>
                        <div class="tabs-button" data-filter-keyword="Drinken"><span>Warme drank</span></div>
                        <div class="tabs-button" data-filter-keyword="Drinken"><span>Fris drank</span></div>

                        <div class="tabs-hl"></div>

                        <div class="tabs-button"><span>Overige producten</span></div>
                        <div class="tabs-button"><span>Informatie</span></div>
                        <div class="tabs-button"><span>Contact</span></div>
                        <div class="tabs-button"><span>Instellingen</span></div>

                    </div>

                    <div class="app-products">
                        <div class="products-grid-container">

                            <?php
                            require 'products.php';                            
                            require 'bestellingen.php';
                            ?>
                        </div> 
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="./scripts/partials/navbar.js" type="text/javascript"></script>
    <script src="./scripts/generate-product-items.js" type="text/javascript"></script>
    <script src="./scripts/menu.js" type="text/javascript"></script>
</body>
</html>