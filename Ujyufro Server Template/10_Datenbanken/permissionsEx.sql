-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Dez 2021 um 20:46
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
-- Tabellenstruktur für Tabelle `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `permission` mediumtext NOT NULL,
  `world` varchar(50) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `type`, `permission`, `world`, `value`) VALUES
(1, 'system', 2, 'schema_version', '', '2'),
(2, 'default', 0, 'modifyworld.*', '', ''),
(3, 'default', 0, 'default', '', 'true'),
(4, 'b6fe8bea-48f3-4def-b64c-2026455e4056', 1, '*', '', ''),
(5, 'b6fe8bea-48f3-4def-b64c-2026455e4056', 1, 'name', '', 'ChrischiMc');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `permissions_entity`
--

CREATE TABLE `permissions_entity` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `permissions_entity`
--

INSERT INTO `permissions_entity` (`id`, `name`, `type`, `default`) VALUES
(1, 'default', 0, 0),
(2, 'b6fe8bea-48f3-4def-b64c-2026455e4056', 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `permissions_inheritance`
--

CREATE TABLE `permissions_inheritance` (
  `id` int(11) NOT NULL,
  `child` varchar(50) NOT NULL,
  `parent` varchar(50) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `world` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`name`,`type`),
  ADD KEY `world` (`world`,`name`,`type`);

--
-- Indizes für die Tabelle `permissions_entity`
--
ALTER TABLE `permissions_entity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`type`),
  ADD KEY `default` (`default`);

--
-- Indizes für die Tabelle `permissions_inheritance`
--
ALTER TABLE `permissions_inheritance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `child` (`child`,`parent`,`type`,`world`),
  ADD KEY `child_2` (`child`,`type`),
  ADD KEY `parent` (`parent`,`type`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `permissions_entity`
--
ALTER TABLE `permissions_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `permissions_inheritance`
--
ALTER TABLE `permissions_inheritance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
