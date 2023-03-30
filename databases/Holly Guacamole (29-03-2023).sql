-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 29 mrt 2023 om 15:05
-- Serverversie: 10.4.27-MariaDB
-- PHP-versie: 8.2.0

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

CREATE TABLE `bestelling` (
  `BestellingID` int(11) NOT NULL,
  `TafelID` int(11) NOT NULL,
  `BestelRegel-ID` int(11) NOT NULL,
  `Datum` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsBetaald` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestelregel`
--

CREATE TABLE `bestelregel` (
  `BestelRegel-ID` int(11) NOT NULL,
  `Product` text NOT NULL,
  `Aantal` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `IsVerwerkt` tinyint(1) DEFAULT NULL,
  `Tijdstempel` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `bestelregel`
--

INSERT INTO `bestelregel` (`BestelRegel-ID`, `Product`, `Aantal`, `ProductID`, `IsVerwerkt`, `Tijdstempel`) VALUES
(1045, 'Spaanse Torlillia de Patatas', 1, 251, 0, 2147483647),
(1046, 'Gnocchi di patata', 1, 261, 0, 2147483647),
(1047, 'Hertog Jan', 1, 234, 0, 2147483647),
(1048, 'Sinas', 1, 238, 0, 2147483647),
(1049, 'Cola', 1, 237, 0, 2147483647),
(1050, 'Koffie', 1, 236, 0, 2147483647),
(1051, 'Spa Blauw', 1, 240, 0, 2147483647),
(1052, 'Spa Rood', 1, 241, 0, 2147483647),
(1053, 'Sangria', 1, 242, 0, 2147483647),
(1054, 'Gazpacho', 1, 246, 0, 2147483647),
(1055, 'Serranoham met mozzarella hapje', 1, 250, 0, 2147483647),
(1056, 'Pincho', 1, 248, 0, 2147483647),
(1057, 'Crostini met tapenade en mozzarella', 1, 243, 0, 2147483647),
(1058, 'Gemarineerde olijven', 1, 247, 0, 2147483647);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `SoortProdID` int(11) NOT NULL,
  `ProductNaam` text CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `IsVega` int(11) NOT NULL,
  `IsDrinken` int(11) NOT NULL,
  `ProductPrijs` int(11) NOT NULL,
  `ProductThumbnail` text CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL
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

CREATE TABLE `soortprod` (
  `SoortProdID` int(11) NOT NULL,
  `SoortProdNaam` text CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL
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

CREATE TABLE `tafels` (
  `TafelNummer` int(11) NOT NULL,
  `IsBeschikbaar` tinyint(1) NOT NULL DEFAULT 0,
  `TafelGrootte` int(11) NOT NULL DEFAULT 0,
  `TafelBestellingen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `tafels`
--

INSERT INTO `tafels` (`TafelNummer`, `IsBeschikbaar`, `TafelGrootte`, `TafelBestellingen`) VALUES
(1, 0, 0, 0),
(2, 0, 0, 0),
(3, 0, 0, 0),
(4, 0, 0, 0),
(5, 0, 0, 0),
(6, 0, 0, 0),
(7, 0, 0, 0),
(8, 0, 0, 0),
(9, 0, 0, 0),
(10, 0, 0, 0),
(11, 0, 0, 0),
(12, 0, 0, 0),
(13, 0, 0, 0);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `bestelling`
--
ALTER TABLE `bestelling`
  ADD PRIMARY KEY (`BestellingID`),
  ADD KEY `fk_bestellingen_tafels` (`TafelID`),
  ADD KEY `fk_opslaanproducten` (`BestelRegel-ID`);

--
-- Indexen voor tabel `bestelregel`
--
ALTER TABLE `bestelregel`
  ADD PRIMARY KEY (`BestelRegel-ID`),
  ADD KEY `fk_ProductID` (`ProductID`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `fk_SoortProdID` (`SoortProdID`);

--
-- Indexen voor tabel `soortprod`
--
ALTER TABLE `soortprod`
  ADD PRIMARY KEY (`SoortProdID`);

--
-- Indexen voor tabel `tafels`
--
ALTER TABLE `tafels`
  ADD PRIMARY KEY (`TafelNummer`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `bestelling`
--
ALTER TABLE `bestelling`
  MODIFY `BestellingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `bestelregel`
--
ALTER TABLE `bestelregel`
  MODIFY `BestelRegel-ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1059;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT voor een tabel `tafels`
--
ALTER TABLE `tafels`
  MODIFY `TafelNummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `bestelling`
--
ALTER TABLE `bestelling`
  ADD CONSTRAINT `bestelling_ibfk_1` FOREIGN KEY (`BestelRegel-ID`) REFERENCES `bestelregel` (`BestelRegel-ID`),
  ADD CONSTRAINT `bestelling_ibfk_2` FOREIGN KEY (`TafelID`) REFERENCES `tafels` (`TafelNummer`);

--
-- Beperkingen voor tabel `bestelregel`
--
ALTER TABLE `bestelregel`
  ADD CONSTRAINT `bestelregel_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`SoortProdID`) REFERENCES `soortprod` (`SoortProdID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
