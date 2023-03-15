-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 15 mrt 2023 om 09:06
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
-- Database: `hq`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestellingen`
--

DROP TABLE IF EXISTS `bestellingen`;
CREATE TABLE IF NOT EXISTS `bestellingen` (
  `BestellingID` int NOT NULL AUTO_INCREMENT,
  `TafelID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Aantal` int NOT NULL,
  `Datum` int NOT NULL,
  `IsVerwerkt` tinyint(1) NOT NULL,
  `IsBetaald` tinyint(1) NOT NULL,
  PRIMARY KEY (`BestellingID`),
  KEY `fk_bestellingen_tafels` (`TafelID`),
  KEY `fk_bestellingen` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `producten`
--

DROP TABLE IF EXISTS `producten`;
CREATE TABLE IF NOT EXISTS `producten` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `SoortProdID` int NOT NULL,
  `ProductNaam` text NOT NULL,
  `IsVega` int NOT NULL,
  `IsDrinken` int NOT NULL,
  `ProductPrijs` int NOT NULL,
  `ProductThumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `fk_SoortProdID` (`SoortProdID`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `producten`
--

INSERT INTO `producten` (`ProductID`, `SoortProdID`, `ProductNaam`, `IsVega`, `IsDrinken`, `ProductPrijs`, `ProductThumbnail`) VALUES
(182, 6, 'Sangria', 0, 0, 3, 'Sangria.jpg'),
(183, 7, 'Crostini met tapenade en mozzarella', 0, 0, 22, 'Cronstini.jpg'),
(184, 8, 'Ciabatta met tomaten jam en ansjovis', 0, 0, 16, 'Ciabatta.jpg'),
(185, 8, 'Perzik met serranoham hapje', 0, 0, 13, 'Perzik.jpg'),
(186, 6, 'Gazpacho', 0, 0, 16, 'Gazapacho.jpg'),
(187, 6, 'Gemarineerde olijven', 0, 0, 8, 'Pincho\'s.jpg'),
(188, 7, 'Pincho\'s met geitenkaas', 0, 0, 22, 'Calamaris.jpg'),
(189, 8, 'Calamaris (inktvisringen)', 0, 0, 24, 'Serranoham.jpg'),
(190, 7, 'Serranoham met mozzarella hapje', 0, 0, 23, 'Torlillia.jpg'),
(191, 8, 'Spaanse Torlillia de Patatas', 0, 0, 15, 'Crema Catalana.jpg'),
(192, 8, 'Crema Catalana', 0, 0, 4, 'Serranoham.jpg'),
(193, 7, 'Empanadillas', 0, 0, 2, 'Torlillia.jpg'),
(194, 8, 'Groene pepers met roomkaas', 0, 0, 27, 'Catalana.jpg'),
(195, 7, 'Albondigas', 0, 0, 9, 'Empanadillias.jpg'),
(196, 9, 'Patatas Bravas', 0, 0, 20, 'Groene Pepers.jpg'),
(197, 7, 'Churros met kaneel', 0, 0, 14, 'Albondigas.jpg'),
(198, 7, 'Crostini met tapenade en mozzarella', 0, 0, 10, 'Patatas.jpg'),
(199, 9, 'Calamaris (inktvisringen)', 0, 0, 6, 'Churros.jpg'),
(200, 2, 'Spaanse Torlillia de Patatas', 0, 0, 28, 'Teriyaki.jpg'),
(201, 2, 'Empanadillas', 0, 0, 4, 'Fajitas.jpg'),
(202, 2, 'Albondigas', 0, 0, 22, 'Natchos.jpg'),
(203, 10, 'Patatas Bravas', 0, 0, 7, 'Gnocchi.jpg'),
(204, 2, 'Churros met kaneel', 0, 0, 28, 'Garnalen.jpg'),
(205, 11, 'Kip teriyaki', 0, 0, 29, 'Brushetta.jpg'),
(206, 12, 'Kip fajitas', 0, 0, 3, 'Caprese.jpg'),
(207, 10, 'Nacho\'s met pulled pork', 0, 0, 12, 'Filodeeg.jpg'),
(208, 12, 'Gnocchi di patata', 0, 0, 22, 'Guacamole.jpg'),
(209, 2, 'Garnalen kroketten', 0, 0, 14, '0'),
(210, 2, 'Brushetta', 0, 0, 30, '0'),
(211, 2, 'Filodeeg pizzaatjes', 0, 0, 18, '0'),
(212, 3, 'Sangria', 0, 0, 2, '0'),
(213, 3, 'Ciabatta met tomaten jam en ansjovis', 0, 0, 13, '0'),
(214, 3, 'Perzik met serranoham hapje', 0, 0, 26, '0'),
(215, 3, 'Gazpacho', 0, 0, 2, '0'),
(216, 3, 'Gemarineerde olijven', 0, 0, 19, '0'),
(217, 3, 'Pincho\'s met geitenkaas', 0, 0, 27, '0'),
(218, 3, 'Serranoham met mozzarella hapje', 0, 0, 21, '0'),
(219, 3, 'Crema Catalana', 0, 0, 20, '0'),
(220, 3, 'Groene pepers met roomkaas', 0, 0, 8, '0'),
(221, 3, 'Brushetta', 0, 0, 6, '0'),
(222, 3, 'Caprese salade', 0, 0, 6, '0'),
(223, 3, 'Guacamole', 0, 0, 11, '0'),
(224, 4, 'Sangria', 1, 0, 5, '0'),
(225, 4, 'Gazpacho', 1, 0, 20, '0'),
(226, 4, 'Gemarineerde olijven', 1, 0, 25, '0'),
(227, 4, 'Groene pepers met roomkaas', 1, 0, 7, '0'),
(228, 4, 'Churros met kaneel', 1, 0, 16, '0'),
(229, 4, 'Gnocchi di patata', 1, 0, 28, '0'),
(230, 4, 'Brushetta', 1, 0, 4, '0'),
(231, 4, 'Caprese salade', 1, 0, 22, '0'),
(232, 4, 'Filodeeg pizzaatjes', 1, 0, 9, '0'),
(233, 4, 'Guacamole', 1, 0, 6, '0'),
(234, 5, 'Hertog Jan', 0, 1, 30, '0'),
(235, 5, 'Gemberthee', 0, 1, 13, '0'),
(236, 5, 'Koffie', 0, 1, 5, '0'),
(237, 5, 'Cola', 0, 1, 13, '0'),
(238, 5, 'Sinas', 0, 1, 20, '0'),
(239, 5, '7UP', 0, 1, 2, '0'),
(240, 5, 'Spa Blauw', 0, 1, 5, '0'),
(241, 5, 'Spa Rood', 0, 1, 18, '0');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `soortprod`
--

DROP TABLE IF EXISTS `soortprod`;
CREATE TABLE IF NOT EXISTS `soortprod` (
  `SoortProdID` int NOT NULL,
  `SoortProdNaam` text NOT NULL,
  PRIMARY KEY (`SoortProdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `soortprod`
--

INSERT INTO `soortprod` (`SoortProdID`, `SoortProdNaam`) VALUES
(1, 'vlees'),
(2, 'warm'),
(3, 'koud'),
(4, 'vega'),
(5, 'drinken'),
(6, 'Spaans, Koud, Vega'),
(7, 'Spaans+Warm'),
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
  `Tafelnr` int NOT NULL,
  PRIMARY KEY (`TafelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `bestellingen`
--
ALTER TABLE `bestellingen`
  ADD CONSTRAINT `fk_bestellingen` FOREIGN KEY (`ProductID`) REFERENCES `producten` (`ProductID`),
  ADD CONSTRAINT `fk_bestellingen_tafels` FOREIGN KEY (`TafelID`) REFERENCES `tafels` (`TafelID`);

--
-- Beperkingen voor tabel `producten`
--
ALTER TABLE `producten`
  ADD CONSTRAINT `fk_SoortProdID` FOREIGN KEY (`SoortProdID`) REFERENCES `soortprod` (`SoortProdID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
