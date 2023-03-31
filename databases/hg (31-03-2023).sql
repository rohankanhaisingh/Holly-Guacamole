-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 31 mrt 2023 om 09:16
-- Serverversie: 8.0.31
-- PHP-versie: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hg`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestelling`
--

DROP TABLE IF EXISTS `bestelling`;
CREATE TABLE IF NOT EXISTS `bestelling` (
  `BestellingID` int NOT NULL,
  `TafelID` int NOT NULL,
  `Datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsBetaald` tinyint(1) NOT NULL,
  PRIMARY KEY (`BestellingID`),
  KEY `idx_tafelID` (`TafelID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `bestelling`
--

INSERT INTO `bestelling` (`BestellingID`, `TafelID`, `Datum`, `IsBetaald`) VALUES
(1, 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestelregel`
--

DROP TABLE IF EXISTS `bestelregel`;
CREATE TABLE IF NOT EXISTS `bestelregel` (
  `BestelRegel-ID` int NOT NULL,
  `BestellingID` int NOT NULL,
  `Product` text COLLATE utf8mb4_general_ci NOT NULL,
  `Aantal` int NOT NULL,
  `ProductID` int NOT NULL,
  `IsVerwerkt` tinyint(1) DEFAULT NULL,
  `Tijdstempel` int NOT NULL,
  PRIMARY KEY (`BestelRegel-ID`),
  KEY `idx_productID` (`ProductID`),
  KEY `idx_bestellingID` (`BestellingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `bestelregel`
--

INSERT INTO `bestelregel` (`BestelRegel-ID`, `BestellingID`, `Product`, `Aantal`, `ProductID`, `IsVerwerkt`, `Tijdstempel`) VALUES
(1066, 1, 'Kip teriyaki', 1, 258, 0, 2147483647),
(1067, 1, 'Kip teriyaki', 1, 258, 0, 2147483647),
(1068, 1, 'Kip teriyaki', 1, 258, 0, 2147483647),
(1069, 1, 'Kip teriyaki', 1, 258, 0, 2147483647),
(1070, 1, 'Kip teriyaki', 1, 258, 0, 2147483647),
(1071, 1, 'Kip teriyaki', 1, 258, 0, 2147483647),
(1072, 1, 'Kip teriyaki', 1, 258, 0, 2147483647),
(1073, 1, 'Sinas', 1, 238, 0, 2147483647),
(1074, 1, 'Sinas', 1, 238, 0, 2147483647),
(1075, 1, 'Sinas', 1, 238, 0, 2147483647),
(1076, 1, 'Sinas', 1, 238, 0, 2147483647),
(1077, 1, 'Sinas', 1, 238, 0, 2147483647),
(1078, 1, 'Sangria', 1, 242, 0, 2147483647),
(1079, 1, 'Sangria', 1, 242, 0, 2147483647),
(1080, 1, 'Sangria', 1, 242, 0, 2147483647),
(1081, 1, 'Sangria', 1, 242, 0, 2147483647),
(1082, 1, 'Kip teriyaki', 1, 258, 0, 2147483647);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `ProductID` int NOT NULL,
  `SoortProdID` int NOT NULL,
  `ProductNaam` text CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsVega` int NOT NULL,
  `IsDrinken` int NOT NULL,
  `ProductPrijs` int NOT NULL,
  `ProductThumbnail` text CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `SoortProdID` (`SoortProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`ProductID`, `SoortProdID`, `ProductNaam`, `IsVega`, `IsDrinken`, `ProductPrijs`, `ProductThumbnail`) VALUES
(234, 5, 'Hertog Jan', 0, 1, 6, 'Hertog.jpg'),
(235, 5, 'Gemberthee', 0, 1, 8, 'GemberThee.jpg'),
(236, 5, 'Koffie', 0, 1, 8, 'koffie.webp'),
(237, 5, 'Cola', 0, 1, 8, 'cola.png'),
(238, 5, 'Sinas', 0, 1, 10, 'sinas.jpg'),
(239, 5, '7UP', 0, 1, 13, '7up.webp'),
(240, 5, 'Spa Blauw', 0, 1, 9, 'SpaBlauw.jpg'),
(241, 5, 'Spa Rood', 0, 1, 13, 'SpaRood.jpg'),
(242, 6, 'Sangria', 1, 0, 12, 'Sangria.jpg'),
(243, 7, 'Crostini met tapenade en mozzarella', 0, 0, 7, 'Crostini.jpg'),
(244, 8, 'Ciabatta met tomaten jam en ansjovis', 0, 0, 5, 'Ciabatta.jpeg'),
(245, 8, 'Perzik met serranoham hapje', 0, 0, 9, 'Perzik.jpg'),
(246, 6, 'Gazpacho', 1, 0, 13, 'Gazpacho.jpg'),
(247, 6, 'Gemarineerde olijven', 1, 0, 15, 'Olijven.jpg'),
(248, 7, 'Pincho\'s met geitenkaas', 0, 0, 10, 'Pincho.png'),
(249, 9, 'Calamaris (inktvisringen)', 0, 0, 10, 'Calamaris.jpg'),
(250, 7, 'Serranoham met mozzarella hapje', 0, 0, 13, 'Serranoham.webp'),
(251, 2, 'Spaanse Torlillia de Patatas', 0, 0, 13, 'Torlillia.webp'),
(252, 2, 'Crema Catalana', 0, 0, 11, 'Crema.webp'),
(253, 2, 'Empanadillas', 0, 0, 11, 'Empanadillas.webp'),
(254, 7, 'Groene pepers met roomkaas', 1, 0, 8, 'roomkaas.webp'),
(255, 7, 'Albondigas', 0, 0, 12, 'Albondigas.webp'),
(256, 7, 'Patatas Bravas', 0, 0, 8, 'Patatas.webp'),
(257, 10, 'Churros met kaneel', 1, 0, 11, 'Churros.jpg'),
(258, 2, 'Kip teriyaki', 0, 0, 6, 'kip1.jpg'),
(259, 2, 'Kip fajitas', 0, 0, 14, 'kip2.jpg'),
(260, 10, 'Nacho\'s met pulled pork', 0, 0, 5, 'Nachos.jpeg'),
(261, 2, 'Gnocchi di patata', 1, 0, 9, 'Gnocchi.jpg'),
(262, 11, 'Garnalen kroketten', 0, 0, 14, 'Garnalen.jpg'),
(263, 12, 'Brushetta', 1, 0, 7, 'Brushetta.jpg'),
(264, 10, 'Caprese salade', 1, 0, 9, 'Caprese.jpeg'),
(265, 10, 'Filodeeg pizzaatjes', 1, 0, 8, 'filodeeg.jpg'),
(266, 7, 'Guacamole', 1, 0, 10, 'Guacamole.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `soortprod`
--

DROP TABLE IF EXISTS `soortprod`;
CREATE TABLE IF NOT EXISTS `soortprod` (
  `SoortProdID` int NOT NULL,
  `SoortProdNaam` text CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  PRIMARY KEY (`SoortProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `soortprod`
--

INSERT INTO `soortprod` (`SoortProdID`, `SoortProdNaam`) VALUES
(1, 'Vlees'),
(2, 'Warm'),
(3, 'Koud'),
(4, 'Vega'),
(5, 'Drinken'),
(6, 'Spaans, Koud, Vega'),
(7, 'Spaans, Warm'),
(8, 'Spaans, Koud'),
(9, 'Spaans, Koud, Vega'),
(10, 'Warm, Vega'),
(11, 'Warm, Koud, Vega'),
(12, 'Koud, Vega');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tafels`
--

DROP TABLE IF EXISTS `tafels`;
CREATE TABLE IF NOT EXISTS `tafels` (
  `TafelID` int NOT NULL AUTO_INCREMENT,
  `TafelNummer` int NOT NULL,
  `IsBeschikbaar` tinyint(1) NOT NULL DEFAULT '0',
  `TafelGrootte` int NOT NULL DEFAULT '0',
  `TafelBestellingen` int NOT NULL,
  PRIMARY KEY (`TafelID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `tafels`
--

INSERT INTO `tafels` (`TafelID`, `TafelNummer`, `IsBeschikbaar`, `TafelGrootte`, `TafelBestellingen`) VALUES
(1, 1, 0, 0, 0),
(2, 2, 0, 0, 0),
(3, 3, 0, 0, 0),
(4, 4, 0, 0, 0),
(5, 5, 0, 0, 0),
(6, 6, 0, 0, 0),
(7, 7, 0, 0, 0),
(8, 8, 0, 0, 0),
(9, 9, 0, 0, 0),
(10, 10, 0, 0, 0),
(11, 11, 0, 0, 0),
(12, 12, 0, 0, 0),
(13, 13, 0, 0, 0);

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `bestelling`
--
ALTER TABLE `bestelling`
  ADD CONSTRAINT `bestelling_ibfk_1` FOREIGN KEY (`TafelID`) REFERENCES `tafels` (`TafelID`);

--
-- Beperkingen voor tabel `bestelregel`
--
ALTER TABLE `bestelregel`
  ADD CONSTRAINT `bestelregel_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  ADD CONSTRAINT `bestelregel_ibfk_2` FOREIGN KEY (`BestellingID`) REFERENCES `bestelling` (`BestellingID`);

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`SoortProdID`) REFERENCES `soortprod` (`SoortProdID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
