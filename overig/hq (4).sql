-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 01 mrt 2023 om 08:17
-- Serverversie: 10.4.24-MariaDB
-- PHP-versie: 8.1.6

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
-- Tabelstructuur voor tabel `eten2`
--

CREATE TABLE `eten2` (
  `soorten` text DEFAULT NULL,
  `gerechten` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `eten2`
--

INSERT INTO `eten2` (`soorten`, `gerechten`, `id`) VALUES
('vlees', 'Sangria', 1),
('vlees', 'Crostini met tapenade en mozzarella', 2),
('vlees', 'Ciabatta met tomaten, jam en ansjovis', 3),
('vlees', 'Perzik met serranoham hapje', 4),
('vlees', 'Gazpacho', 5),
('vlees', 'Gemarineerde olijven', 6),
('vlees', 'Pincho\'s met geitenkaas', 7),
('vlees', 'Calamaris (inktvisringen)', 8),
('vlees', 'Serranoham met mozzarella hapje', 9),
('vlees', 'Spaanse Torlillia de Patatas', 10),
('vlees', 'Crema Catalana', 11),
('vlees', 'Empanadillas', 12),
('vlees', 'Groene pepers met roomkaas', 13),
('vlees', 'Albondigas', 14),
('vlees', 'Patatas Bravas', 15),
('vlees', 'Churros met kaneel', 16),
('warm', 'Crostini met tapenade en mozzarella', 17),
('warm', 'Calamaris (inktvisringen)', 18),
('warm', 'Spaanse Torlillia de Patatas', 19),
('warm', 'Empanadillas', 20),
('warm', 'Albondigas', 21),
('warm', 'Patatas Bravas', 22),
('warm', 'Churros met kaneel', 23),
('warm', 'Kip teriyaki', 24),
('warm', 'Kip fajitas', 25),
('warm', 'Nacho\'s met pulled pork', 26),
('warm', 'Gnocchi di patata', 27),
('warm', 'Garnalen kroketten', 28),
('warm', 'Brushetta', 29),
('koud', 'Sangria', 30),
('koud', 'Ciabatta met tomaten jam en ansjovis', 31),
('koud', 'Perzik met serranoham hapje', 32),
('koud', 'Gazpacho', 33),
('koud', 'Gemarineerde olijven', 34),
('koud', 'Pincho\'s met geitenkaas', 35),
('vega', 'Sangria', 36),
('vega', 'Gazpacho', 37),
('vega', 'Gemarineerde olijven', 38),
('vega', 'Groene pepers met roomkaas', 39),
('vega', 'Churros met kaneel', 40),
('vega', 'Gnocchi di patata', 41),
('vega', 'Brushetta', 42),
('vega', 'Caprese salade', 43),
('vega', 'Filodeeg pizzaatjes', 44),
('vega', 'Guacamole', 45);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `handelingen`
--

CREATE TABLE `handelingen` (
  `Handeling_1` int(11) NOT NULL,
  `Handeling_2` int(11) NOT NULL,
  `Handeling_3` int(11) NOT NULL,
  `Handeling_4` int(11) NOT NULL,
  `Handeling_5` int(11) NOT NULL,
  `Handeling_6` int(11) NOT NULL,
  `Handeling_7` int(11) NOT NULL,
  `Handeling_8` int(11) NOT NULL,
  `Handeling_9` int(11) NOT NULL,
  `Handeling_10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `handelingen`
--

INSERT INTO `handelingen` (`Handeling_1`, `Handeling_2`, `Handeling_3`, `Handeling_4`, `Handeling_5`, `Handeling_6`, `Handeling_7`, `Handeling_8`, `Handeling_9`, `Handeling_10`) VALUES
(232, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tafels`
--

CREATE TABLE `tafels` (
  `Tafel_1` int(11) NOT NULL,
  `Tafel_2` int(11) NOT NULL,
  `Tafel_3` int(11) NOT NULL,
  `Tafel_4` int(11) NOT NULL,
  `Tafel_5` int(11) NOT NULL,
  `Tafel_6` int(11) NOT NULL,
  `Tafel_7` int(11) NOT NULL,
  `Tafel_8` int(11) NOT NULL,
  `Tafel_9` int(11) NOT NULL,
  `Tafel_10` int(11) NOT NULL,
  `Tafel_11` int(11) NOT NULL,
  `Tafel_12` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `eten2`
--
ALTER TABLE `eten2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `eten2`
--
ALTER TABLE `eten2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
