<?php

    $serverNaam = "192.168.1.186";
    $gebruikersNaam = "sussy";
    $wachtwoord = "nigga1234";
    $databaseNaam = "hg";
    
    $verbinding = mysqli_connect($serverNaam, $gebruikersNaam, $wachtwoord);

    if(!$verbinding) die("Kan geen verbinding maken met database server." . mysqli_error($verbinding));

    $database = mysqli_select_db($verbinding, $databaseNaam);

    if(!$database) die("Kan geen verbinding maken met database." . mysqli_error($verbinding));

?>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Kies tafel</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta name="copyright" content="� W3C" />
    <meta name="author" lang="en" content="Kay, Jasper, Rohan" />
    <meta name="robots" content="Thingy" />
    <meta name="description" content="Menu" />
    <meta name="keyword" content="Gekkke digitale menukaart jwz" />
    <meta name="viewport" content="width=device-width" />

    <link href="./resources/fonts/fonts.css" rel="stylesheet" type="text/css" />
    <link href="./styles/index.css" rel="stylesheet" type="text/css" />
    <link href="./styles/navbar.css" rel="stylesheet" type="text/css" />
    <link href="./styles/tabs.css" rel="stylesheet" type="text/css" />
    <link href="./styles/products.css" rel="stylesheet" type="text/css" />

    <link href="./styles/pages/kies-tafel.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="app">
        <div class="container">
            
            <div class="app-navbar">
	            <div class="navbar-logo can-animate">
		            <img src="./resources/images/avocado.png" alt="Logo" />
	            </div>
	            <div class="navbar-description can-animate">
		            <span>Selecteer een tafel</span>
	            </div>
	            <div class="navbar-vl"></div>
	            <ul class="navbar-links">
		            <li><a href="/public/index.php" class="can-animate">Home pagina</a></li>
		            <li><a href="/public/menu.php" class="can-animate">Menu</a></li>
		            <li><a href="/public/help.php" class="can-animate">Help</a></li>
		            <li><a href="/public/overons.php" class="can-animate">Over ons</a></li>
		            <li><a href="/public/winkelwagen.php" class="can-animate"><img src="./resources/icons/cart-shopping-solid.svg" alt="Winkelwagen"></a></li>
	            </ul>
	            <div class="navbar-hamburger closed">
		            <div></div>
		            <div></div>
		            <div></div>
	            </div>
            </div>

            <div class="app-content">
                <div class="container scroller">
                    <div class="app-table-container">
                    
                        <?php

                        $tafels = mysqli_query($verbinding, "SELECT `TafelNummer`, `IsBeschikbaar`, `TafelGrootte`, `TafelBestellingen` FROM `tafels`;");
                        $aantalTafels = mysqli_num_rows($tafels);

                        $afbeeldingen = [
                            "epic-bloemen.jpeg",
                            "tafel-ding.jpeg",
                            "ding.jpeg",
                            "glasofzo.webp",
                            "biieer.webp",
                        ];

                        if($aantalTafels > 0) {

                            while($tafel = mysqli_fetch_assoc($tafels)) {
                                    
                                $tafelNummer = $tafel["TafelNummer"];
                                $tafelBeschikbaarheid = $tafel["IsBeschikbaar"];

                                $tafelAfbeelding = $afbeeldingen[array_rand($afbeeldingen)];

                                $beschikbaarHeidTekst = $tafelBeschikbaarheid == 0 ? "Momenteel beschikbaar" : "Niet beschikbaar";
                                $beschikbaarHeidStijl = $tafelBeschikbaarheid == 0 ? "available" : "unavailable";
                                echo "
                                <a href='./menu.php?tafel=$tafelNummer'>
                                    <div class='app-table-item $beschikbaarHeidStijl'>
                                        <div class='background'>
                                            <img src='/public/resources/images/achtergronden/$tafelAfbeelding' alt='Jaman' />
                                        </div>
                                        <div class='foreground'>
                                            <div class='container'>
                                                <div class='title'>Tafel $tafelNummer</div>
                                                <div class='space'>Ruimte voor 6 personen.</div>
                                                <div class='status $beschikbaarHeidStijl'>
                                                    <span>$beschikbaarHeidTekst</span>
                                                </div>
                                                <div class='horizontal-line'></div>
                                                <div class='description'>
                                                    <span>Deze tafel heeft momenteel geen beschrijvingen. Het enige wat wij kunnen omschrijven, is dat het een epische plek is, net zoals elk ander tafel!</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                ";
                            }

                        } else echo "Geen resultaat";

                        ?>
                    </div>    
                </div>
            </div>

        </div>
    </div>

    <script src="./scripts/generate-product-items.js" type="text/javascript"></script>
</body>
</html>