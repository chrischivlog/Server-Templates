-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Dez 2021 um 20:45
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `server`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `knockit`
--

CREATE TABLE `knockit` (
  `UUID` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `KILLS` int(11) DEFAULT NULL,
  `DEATHS` int(11) DEFAULT NULL,
  `WIN` int(11) DEFAULT NULL,
  `LOSE` int(11) DEFAULT NULL,
  `COINS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `knockit`
--

INSERT INTO `knockit` (`UUID`, `NAME`, `KILLS`, `DEATHS`, `WIN`, `LOSE`, `COINS`) VALUES
('b6fe8bea-48f3-4def-b64c-2026455e4056', 'ChrischiMc', 0, 9, 0, 0, 100);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stats`
--

CREATE TABLE `stats` (
  `UUID` varchar(100) DEFAULT NULL,
  `POINTS` int(255) DEFAULT NULL,
  `KILLS` int(255) DEFAULT NULL,
  `DEATHS` int(255) DEFAULT NULL,
  `MAXLVL` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `stats`
--

INSERT INTO `stats` (`UUID`, `POINTS`, `KILLS`, `DEATHS`, `MAXLVL`) VALUES
('b6fe8bea-48f3-4def-b64c-2026455e4056', 0, 0, 11, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
