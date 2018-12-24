-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2018. Dec 24. 03:24
-- Kiszolgáló verziója: 10.1.32-MariaDB
-- PHP verzió: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `virtual_receptionist`
--

DROP DATABASE IF EXISTS `virtual_receptionist`;
CREATE DATABASE IF NOT EXISTS `virtual_receptionist` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `virtual_receptionist`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `accomodation`
--

DROP TABLE IF EXISTS `accomodation`;
CREATE TABLE IF NOT EXISTS `accomodation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AccomodationName` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `CompanyName` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `Contact` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `VATNumber` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `Headquarters` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `Site` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `PhoneNumber` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `EmailAddress` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------
--
-- Tábla szerkezet ehhez a táblához `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AccomodationID` int(11) NOT NULL,
  `Username` varchar(15) COLLATE utf8_hungarian_ci NOT NULL,
  `Password` varchar(15) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `registrationisd` (`AccomodationID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `billing_items`
--

DROP TABLE IF EXISTS `billing_items`;
CREATE TABLE IF NOT EXISTS `billing_items` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Item` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `Price` varchar(10) COLLATE utf8_hungarian_ci NOT NULL,
  `Unit` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(2) COLLATE utf8_hungarian_ci NOT NULL,
  `Name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Code` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `guest`
--

DROP TABLE IF EXISTS `guest`;
CREATE TABLE IF NOT EXISTS `guest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `Nationality` tinyint(1) NOT NULL,
  `Country` int(11) NOT NULL,
  `ZipCode` varchar(10) COLLATE utf8_hungarian_ci NOT NULL,
  `City` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `Address` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `VATNumber` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  `PhoneNumber` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `EmailAddress` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PhoneNumber` (`PhoneNumber`),
  UNIQUE KEY `EmailAddress` (`EmailAddress`),
  KEY `countryid` (`Country`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Accomodation` int(11) NOT NULL,
  `AccomodationID` varchar(8) COLLATE utf8_hungarian_ci NOT NULL,
  `Password` varchar(8) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `accomodationName` (`Accomodation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GuestID` int(11) NOT NULL,
  `RoomID` int(11) NOT NULL,
  `NumberOfGuests` int(10) NOT NULL,
  `ArrivalDate` date NOT NULL,
  `DepartureDate` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `roomid` (`RoomID`),
  KEY `guestid` (`GuestID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `Number` int(3) NOT NULL,
  `Category` int(11) NOT NULL,
  `Capacity` int(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `categoryid` (`Category`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `room_category`
--

DROP TABLE IF EXISTS `room_category`;
CREATE TABLE IF NOT EXISTS `room_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `registrationisd` FOREIGN KEY (`AccomodationID`) REFERENCES `profile` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `countryid` FOREIGN KEY (`Country`) REFERENCES `country` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `accomodationName` FOREIGN KEY (`Accomodation`) REFERENCES `accomodation` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `guestid` FOREIGN KEY (`GuestID`) REFERENCES `guest` (`ID`) ON DELETE NO ACTION,
  ADD CONSTRAINT `roomid` FOREIGN KEY (`RoomID`) REFERENCES `room` (`ID`) ON DELETE NO ACTION;

--
-- Megkötések a táblához `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `categoryid` FOREIGN KEY (`Category`) REFERENCES `room_category` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
