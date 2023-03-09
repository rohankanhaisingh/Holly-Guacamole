-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 mrt 2023 om 20:00
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
-- Database: `holly guacamole`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestellingen`
--

CREATE TABLE `bestellingen` (
  `BestellingID` int(11) NOT NULL,
  `TafelID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Aantal` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `IsVerwerkt` tinyint(1) NOT NULL,
  `IsBetaald` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `producten`
--

CREATE TABLE `producten` (
  `ProductID` int(11) NOT NULL,
  `SoortProdID` int(11) NOT NULL,
  `ProductNaam` text NOT NULL,
  `ProductType` text NOT NULL,
  `ProductPrijs` float NOT NULL,
  `ProductThumbnail` text NOT NULL,
  `ProductOmschrijving` text NOT NULL,
  `ProductSamenstellingen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `producten`
--

INSERT INTO `producten` (`ProductID`, `SoortProdID`, `ProductNaam`, `ProductType`, `ProductPrijs`, `ProductThumbnail`, `ProductOmschrijving`, `ProductSamenstellingen`) VALUES
(182, 1, 'Sangria (per liter)', 'Spaans, Koud, Vega', 19.5, 'Sangria.jpg', 'Sangria is een peperdure <b>cock</b>tail dat oorspronkelijk is onstaan ergens in Turkije ofzo.\r\n', ''),
(183, 1, 'Crostini met tapenade en mozzarella', 'Spaans, Warm', 14.5, 'Crostini.jpg\r\n', 'Dit product is letterlijk wat er in de titel staat.', ''),
(184, 1, 'Ciabatta met tomaten jam en ansjovis', 'Spaans, Koud', 5.2, 'Ciabatta.jpeg\r\n', '', ''),
(185, 1, 'Perzik met serranoham hapje', 'Spaans, Koud', 12.5, 'Perzik.jpg\r\n', '', ''),
(186, 1, 'Gazpacho', 'Spaans, Koud, Vega', 21, 'Gazpacho.jpg\r\n', '', ''),
(187, 1, 'Gemarineerde olijven', 'Spaans, Koud, Vega', 374, 'Olijven.jpg\r\n', '', ''),
(188, 1, 'Pincho\'s met geitenkaas', 'Spaans, Koud', 10.2, 'Pincho.jpg\r\n', '', ''),
(189, 1, 'Calamaris (inktvisringen)', 'Spaans, Warm', 5, 'Calamaris.jpg\r\n', '', ''),
(190, 1, 'Serranoham met mozzarella hapje', 'Spaans, Koud', 4.5, 'Serranoham.webp\r\n', '', ''),
(191, 1, 'Spaanse Torlillia de Patatas', 'Spaans, Warm', 5.9, 'Tortillia.webp\r\n', '', ''),
(192, 1, 'Crema Catalana', 'Spaans, Koud', 4.5, 'Crema.webp\r\n', '', ''),
(193, 1, 'Empanadillas', 'Spaans, Warm', 6.2, 'Empanadillas.webp\r\n', '', ''),
(194, 1, 'Groene pepers met roomkaas', 'Spaans, Koud, Vega', 1.5, 'Roomkaas.webp\r\n', '', ''),
(195, 1, 'Albondigas', 'Spaans, Warm', 8.9, 'Albondigas.webp\r\n', '', ''),
(196, 1, 'Patatas Bravas', 'Spaans, Warm', 12.5, 'Patatas.webp\r\n', '', ''),
(197, 1, 'Churros met kaneel', 'Spaans, Warm, Vega', 15, 'Churros.jpg\r\n', '', ''),
(205, 2, 'Kip teriyaki', 'Warm', 20.8, 'Kip1.jpg\r\n', '', ''),
(206, 2, 'Kip fajitas', 'Warm', 1, 'Kip2.jpg\r\n', '', ''),
(207, 2, 'Nacho\'s met pulled pork', 'Warm', 25.4, 'Nachos.jpeg\r\n', '', ''),
(208, 2, 'Gnocchi di patata', 'Warm, Vega', 10.45, 'Gnocchi.jpg\r\n', '', ''),
(209, 2, 'Garnalen kroketten', 'Warm', 20.85, 'Garnalen.jpg\r\n', '', ''),
(210, 2, 'Brushetta', 'Warm, Koud, Vega', 90.45, 'Brushetta.jpg\r\n', '', ''),
(211, 2, 'Filodeeg pizzaatjes', 'Warm, Vega', 6.8, 'Filodeeg.jpg\r\n', '', ''),
(216, 3, 'Broodje Oktai', 'Spaans, Warm, Koud, Vega, Turks', 1850, 'BroodjeOktai.png\r\n', '', ''),
(222, 3, 'Caprese salade', 'Koud, Vega', 8.45, 'Caprese.jpeg\r\n', '', ''),
(223, 3, 'Guacamole', 'Koud, Vega', 1, 'Guacamole.jpg\r\n', '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `soortprod`
--

CREATE TABLE `soortprod` (
  `SoortProdID` int(255) NOT NULL,
  `SoortProdNaam` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `soortprod`
--

INSERT INTO `soortprod` (`SoortProdID`, `SoortProdNaam`) VALUES
(1, 'vlees'),
(2, 'warm'),
(3, 'koud'),
(4, 'vega'),
(5, 'drinken');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tafels`
--

CREATE TABLE `tafels` (
  `TafelID` int(11) NOT NULL,
  `Tafelnr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `bestellingen`
--
ALTER TABLE `bestellingen`
  ADD PRIMARY KEY (`BestellingID`);

--
-- Indexen voor tabel `producten`
--
ALTER TABLE `producten`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexen voor tabel `soortprod`
--
ALTER TABLE `soortprod`
  ADD PRIMARY KEY (`SoortProdID`);

--
-- Indexen voor tabel `tafels`
--
ALTER TABLE `tafels`
  ADD PRIMARY KEY (`TafelID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `producten`
--
ALTER TABLE `producten`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
