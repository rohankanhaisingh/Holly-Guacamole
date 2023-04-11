<?php
    session_start();
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
            <?php
            require("./includes/nav.html");
            ?>
            <div class="app-content">
                <div class="container scroller">
                    <div class="app-table-container">
                    
                        <?php

                        $tafels = mysqli_query($verbinding, "SELECT `TafelNummer`, `IsBeschikbaar`, `TafelGrootte`, `TafelBestellingen` FROM `tafels`;");
                        $aantalTafels = mysqli_num_rows($tafels);
<<<<<<< HEAD

=======
                        // toevoegen data aan de sessie
                        
>>>>>>> Bart
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
                                $_SESSION['tafelNummerSession'] = $tafelNummer;
                                $tafelBeschikbaarheid = $tafel["IsBeschikbaar"];

                                $tafelAfbeelding = $afbeeldingen[array_rand($afbeeldingen)];
                                // tafel updaten in database
                                
                                $result = mysqli_query($verbinding, "SELECT IsBeschikbaar FROM `tafels`");
                       
                                $beschikbaarHeidTekst = $tafelBeschikbaarheid == 0 ? "Niet beschikbaar" : "Momenteel beschikbaar";
                                $beschikbaarHeidStijl = $tafelBeschikbaarheid == 0 ? "unavailable" : "available";
                                $beschikbaarHeidHref =  $tafelBeschikbaarheid == 0 ? "#" : "./menu.php?tafel=$tafelNummer";

                                echo "
                                <a href='$beschikbaarHeidHref'>
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