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
    </body>
       <script src="./scripts/partials/navbar.js" type="text/javascript"></script>
       <script src="./scripts/generate-product-items.js" type="text/javascript"></script>
       <script src="./scripts/menu.js" type="text/javascript"></script>
   </body>
   <?php 
        if (isset($_GET["page"])) {
            $nummer = $_GET["page"];
                } else {
                    $nummer = 1;
                }
                switch ($nummer) {
                    case 1:
                        readfile("basics.html");
                        break;
                    default:
                        readfile('basics.html');
   ?>
</html>