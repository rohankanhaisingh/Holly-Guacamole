<?php
    
    $isGevalideerd = false;

    $serverNaam = "localhost";
    $gebruikersNaam = "frontend";
    $wachtwoord = "sussy1234";
    
    $verbinding = new mysqli($serverNaam, $gebruikersNaam, $wachtwoord);

    if($verbinding -> connect_error) {

        $isGevalideerd = false;

        die("Verbinding mislukt: " . $verbinding->connect_error);
    } else {

        $isGevalideerd = true;
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

    <link href="./resources/default-styles.css" rel="stylesheet" type="text/css" >
    <link href="./resources/fonts/fonts.css" rel="stylesheet" type="text/css"/>
    <link href="./styles/index.css" rel="stylesheet" type="text/css"/>
    <link href="./styles/navbar.css" rel="stylesheet" type="text/css"/>
    <link href="./styles/tabs.css" rel="stylesheet" type="text/css"/>
    <link href="./styles/home.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="app">
        <div class="container">

            <div class="app-navbar">
                <div class="navbar-logo">
                    <img src="./resources/images/avocado.png" alt="Logo" />
                </div>
                <div class="navbar-description">
                    <span>Home pagina</span>
                </div>
                <div class="navbar-vl"></div>
                <ul class="navbar-links">
                    <li><a href="/public/menu.php">Menukaart</a></li>
                    <li><a href="#">Winkelmand</a></li>
                </ul>
            </div>

            <div class="app-content">
                <div class="container">
                    <div class="welcome-container grid">
                        <div class="text-content inline-grid">
                            <h1 class="big-welcome-text">WIEHOEW, JE BENT ER!</h1>
                            <h3 class="big-intro-text">En daar zijn we onwijs blij mee: voel je welkom en neem plaats…</h3>
                            
                            <div class="horizontal-line"></div>

                            <p class="intro-text">                                
                                Samen gaan we voor een geweldig gezellige avond. Samen zorgen we voor mooie herinneringen om nooit meer te vergeten!
                                <br /><br />
                                Voor jou zetten we graag wat stappen extra. Of doen we een pirouette, wat jij wilt. Want jouw wensen staan bij ons centraal.
                                Tapas of à la carte, groot of klein, thuis of bij ons op de zaak. Met onze spannende smaakcombinaties en kwaliteitsingrediënten, kom je bij ons niets tekort en laten we je keer op keer versteld staan.
                                <br /><br />
                                Onze medewerkers maken daarin het verschil. We kiezen ervoor om enkel te werken met vrolijke mensen, die weten dat gezelligheid, gastvrijheid en hard werken samen gaan.
                                Wij gaan voor een lach op jouw gezicht, pas dan zijn wij tevreden.
                            </p>
                        </div>
                        <div class="thumbnail-container inline-grid">
                            <img class="thumbnail-image thumbnail-1" src="./resources/images/gerechten/1.jpg" alt="Gekke eten jwz">
                            <img class="thumbnail-image thumbnail-2" src="./resources/images/gerechten/2.jpg" alt="Bruh">
                            <img class="thumbnail-image thumbnail-3" src="./resources/images/gerechten/20.jpg" alt="eqwe">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>