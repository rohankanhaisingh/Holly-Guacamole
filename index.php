<!DOCTYPE html>
<html>
<body>
    <intro>
        <div id="introtext">intro tekst<br/>
        </div>
    <intro>
    </div>

    <head>
        <title> GildeDevops</title>
        <link rel="stylesheet" href="hq.css" />
        <link rel="icon" type="image/x-icon" href="bal.png" />
        <meta name="" content="" />
        <header>
            <text>
                <h1 id="titel">GildeDevops</h1>
            </text>
        </header>
    </head>

    <section>
        <div id="">
            <a href="index.php?page=1"class="knopje">home</a>
        </div>
        <div id="">
            <div id="">
                <div id=""></div>
            </div>
            <div id="">
                <div id=""></div>
            </div>
            <div id="">
                <div id="">
                    <?php
                    if (isset($_GET["page"])) {
                        $nummer = $_GET["page"];
                    } else {
                        $nummer = 1;
                    }
                    switch ($nummer) {
                        case 1:
                            readfile("home.inc");
                            break;
                        default:
                            readfile('home.inc');
                    }
                    ?>
                </div>
            </div>
        </div>
    </section>
    <footer>
    </footer>
</body>

</html>