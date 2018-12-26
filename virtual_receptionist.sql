-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2018. Dec 26. 23:29
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
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AccomodationName` (`AccomodationName`,`CompanyName`,`VATNumber`,`PhoneNumber`,`EmailAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `accomodation`
--

INSERT INTO `accomodation` (`ID`, `AccomodationName`, `CompanyName`, `Contact`, `VATNumber`, `Headquarters`, `Site`, `PhoneNumber`, `EmailAddress`) VALUES
(1, 'Autós Panzió', 'Autóscsárda-Panzió Vendéglátó és Kereskedelmi Kft.', 'Szabó Norbert', '13542199206', '6900 Makó, Deák Ferenc u. 28/B', '6900 Makó, Báló liget', '06 (62) 510 298', 'info@autospanzio.hu');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `accomodation_registration`
--

DROP TABLE IF EXISTS `accomodation_registration`;
CREATE TABLE IF NOT EXISTS `accomodation_registration` (
  `Accomodation` int(11) NOT NULL AUTO_INCREMENT,
  `AccomodationID` varchar(8) COLLATE utf8_hungarian_ci NOT NULL,
  `Password` varchar(8) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`Accomodation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `accomodation_registration`
--

INSERT INTO `accomodation_registration` (`Accomodation`, `AccomodationID`, `Password`) VALUES
(1, 'AUTSPNZ', 'norci71');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `billing_item`
--

DROP TABLE IF EXISTS `billing_item`;
CREATE TABLE IF NOT EXISTS `billing_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Item` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `Category` int(11) NOT NULL,
  `Price` varchar(10) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `category` (`Category`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `billing_item`
--

INSERT INTO `billing_item` (`ID`, `Item`, `Category`, `Price`) VALUES
(1, '1 szoba 1 főre', 1, '8700'),
(2, '1 szoba 2 főre', 1, '11400'),
(3, '1 szoba 3 főre', 1, '14100'),
(4, 'Apartman', 1, '16800'),
(5, 'Idegenforgalmi adó', 4, '300'),
(6, 'Idegenforgalmi adó mentes', 4, '0'),
(7, 'Reggeli', 3, '1500'),
(8, 'Mosás', 2, '1000');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `billing_item_category`
--

DROP TABLE IF EXISTS `billing_item_category`;
CREATE TABLE IF NOT EXISTS `billing_item_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  `VAT` float NOT NULL,
  `Unit` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `billing_item_category`
--

INSERT INTO `billing_item_category` (`ID`, `Name`, `VAT`, `Unit`) VALUES
(1, 'Szállás', 18, 'éjszaka'),
(2, 'Egyéb', 27, 'alkalom'),
(3, 'Fogyasztás (étel, ital)', 18, 'alkalom'),
(4, 'Tárgyi adó mentes', 0, 'darab');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `Code` varchar(2) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Code` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `country`
--

INSERT INTO `country` (`ID`, `Name`, `Code`) VALUES
(1, 'Andorra', 'AD'),
(2, 'United Arab Emirates', 'AE'),
(3, 'Afghanistan', 'AF'),
(4, 'Antigua and Barbuda', 'AG'),
(5, 'Anguilla', 'AI'),
(6, 'Albania', 'AL'),
(7, 'Armenia', 'AM'),
(8, 'Angola', 'AO'),
(9, 'Antarctica', 'AQ'),
(10, 'Argentina', 'AR'),
(11, 'American Samoa', 'AS'),
(12, 'Austria', 'AT'),
(13, 'Australia', 'AU'),
(14, 'Aruba', 'AW'),
(15, 'Åland Islands', 'AX'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bosnia and Herzegovina', 'BA'),
(18, 'Barbados', 'BB'),
(19, 'Bangladesh', 'BD'),
(20, 'Belgium', 'BE'),
(21, 'Burkina Faso', 'BF'),
(22, 'Bulgaria', 'BG'),
(23, 'Bahrain', 'BH'),
(24, 'Burundi', 'BI'),
(25, 'Benin', 'BJ'),
(26, 'Saint Barthélemy', 'BL'),
(27, 'Bermuda', 'BM'),
(28, 'Brunei Darussalam', 'BN'),
(29, 'Bolivia', 'BO'),
(30, 'Bonaire, Sint Eustatius and Saba', 'BQ'),
(31, 'Brazil', 'BR'),
(32, 'Bahamas', 'BS'),
(33, 'Bhutan', 'BT'),
(34, 'Bouvet Island', 'BV'),
(35, 'Botswana', 'BW'),
(36, 'Belarus', 'BY'),
(37, 'Belize', 'BZ'),
(38, 'Canada', 'CA'),
(39, 'Cocos [Keeling] Islands', 'CC'),
(40, 'Democratic Republic of the Congo', 'CD'),
(41, 'Central African Republic', 'CF'),
(42, 'Republic of the Congo', 'CG'),
(43, 'Switzerland', 'CH'),
(44, 'Ivory Coast', 'CI'),
(45, 'Cook Islands', 'CK'),
(46, 'Chile', 'CL'),
(47, 'Cameroon', 'CM'),
(48, 'China', 'CN'),
(49, 'Colombia', 'CO'),
(50, 'Costa Rica', 'CR'),
(51, 'Cuba', 'CU'),
(52, 'Cape Verde', 'CV'),
(53, 'Curaçao', 'CW'),
(54, 'Christmas Island', 'CX'),
(55, 'Cyprus', 'CY'),
(56, 'Czech Republic', 'CZ'),
(57, 'Germany', 'DE'),
(58, 'Djibouti', 'DJ'),
(59, 'Denmark', 'DK'),
(60, 'Dominica', 'DM'),
(61, 'Dominican Republic', 'DO'),
(62, 'Algeria', 'DZ'),
(63, 'Ecuador', 'EC'),
(64, 'Estonia', 'EE'),
(65, 'Egypt', 'EG'),
(66, 'Western Sahara', 'EH'),
(67, 'Eritrea', 'ER'),
(68, 'Spain', 'ES'),
(69, 'Ethiopia', 'ET'),
(70, 'Finland', 'FI'),
(71, 'Fiji', 'FJ'),
(72, 'Falkland Islands', 'FK'),
(73, 'Micronesia', 'FM'),
(74, 'Faroe Islands', 'FO'),
(75, 'France', 'FR'),
(76, 'Gabon', 'GA'),
(77, 'United Kingdom of Great Britain and Northern ', 'GB'),
(78, 'Grenada', 'GD'),
(79, 'Georgia', 'GE'),
(80, 'French Guiana', 'GF'),
(81, 'Guernsey', 'GG'),
(82, 'Ghana', 'GH'),
(83, 'Gibraltar', 'GI'),
(84, 'Greenland', 'GL'),
(85, 'Gambia', 'GM'),
(86, 'Guinea', 'GN'),
(87, 'Guadeloupe', 'GP'),
(88, 'Equatorial Guinea', 'GQ'),
(89, 'Greece', 'GR'),
(90, 'South Georgia and the South Sandwich Islands', 'GS'),
(91, 'Guatemala', 'GT'),
(92, 'Guam', 'GU'),
(93, 'Guinea-Bissau', 'GW'),
(94, 'Guyana', 'GY'),
(95, 'Hong Kong', 'HK'),
(96, 'Heard Island and McDonald Islands', 'HM'),
(97, 'Honduras', 'HN'),
(98, 'Croatia', 'HR'),
(99, 'Haiti', 'HT'),
(100, 'Hungary', 'HU'),
(101, 'Indonesia', 'ID'),
(102, 'Ireland', 'IE'),
(103, 'Israel', 'IL'),
(104, 'Isle of Man', 'IM'),
(105, 'India', 'IN'),
(106, 'British Indian Ocean Territory', 'IO'),
(107, 'Iraq', 'IQ'),
(108, 'Iran', 'IR'),
(109, 'Iceland', 'IS'),
(110, 'Italy', 'IT'),
(111, 'Jersey', 'JE'),
(112, 'Jamaica', 'JM'),
(113, 'Jordan', 'JO'),
(114, 'Japan', 'JP'),
(115, 'Kenya', 'KE'),
(116, 'Kyrgyzstan', 'KG'),
(117, 'Cambodia', 'KH'),
(118, 'Kiribati', 'KI'),
(119, 'Comoros', 'KM'),
(120, 'Saint Kitts and Nevis', 'KN'),
(121, 'North Korea', 'KP'),
(122, 'South Korea', 'KR'),
(123, 'Kuwait', 'KW'),
(124, 'Cayman Islands', 'KY'),
(125, 'Kazakhstan', 'KZ'),
(126, 'Laos', 'LA'),
(127, 'Lebanon', 'LB'),
(128, 'Saint Lucia', 'LC'),
(129, 'Liechtenstein', 'LI'),
(130, 'Sri Lanka', 'LK'),
(131, 'Liberia', 'LR'),
(132, 'Lesotho', 'LS'),
(133, 'Lithuania', 'LT'),
(134, 'Luxembourg', 'LU'),
(135, 'Latvia', 'LV'),
(136, 'Libya', 'LY'),
(137, 'Morocco', 'MA'),
(138, 'Monaco', 'MC'),
(139, 'Moldova', 'MD'),
(140, 'Montenegro', 'ME'),
(141, 'Saint Martin', 'MF'),
(142, 'Madagascar', 'MG'),
(143, 'Marshall Islands', 'MH'),
(144, 'Macedonia', 'MK'),
(145, 'Mali', 'ML'),
(146, 'Myanmar [Burma]', 'MM'),
(147, 'Mongolia', 'MN'),
(148, 'Macao', 'MO'),
(149, 'Northern Mariana Islands', 'MP'),
(150, 'Martinique', 'MQ'),
(151, 'Mauritania', 'MR'),
(152, 'Montserrat', 'MS'),
(153, 'Malta', 'MT'),
(154, 'Mauritius', 'MU'),
(155, 'Maldives', 'MV'),
(156, 'Malawi', 'MW'),
(157, 'Mexico', 'MX'),
(158, 'Malaysia', 'MY'),
(159, 'Mozambique', 'MZ'),
(160, 'Namibia', 'NA'),
(161, 'New Caledonia', 'NC'),
(162, 'Niger', 'NE'),
(163, 'Norfolk Island', 'NF'),
(164, 'Nigeria', 'NG'),
(165, 'Nicaragua', 'NI'),
(166, 'Netherlands', 'NL'),
(167, 'Norway', 'NO'),
(168, 'Nepal', 'NP'),
(169, 'Nauru', 'NR'),
(170, 'Niue', 'NU'),
(171, 'New Zealand', 'NZ'),
(172, 'Oman', 'OM'),
(173, 'Panama', 'PA'),
(174, 'Peru', 'PE'),
(175, 'French Polynesia', 'PF'),
(176, 'Papua New Guinea', 'PG'),
(177, 'Philippines', 'PH'),
(178, 'Pakistan', 'PK'),
(179, 'Poland', 'PL'),
(180, 'Saint Pierre and Miquelon', 'PM'),
(181, 'Pitcairn Islands', 'PN'),
(182, 'Puerto Rico', 'PR'),
(183, 'Palestine', 'PS'),
(184, 'Portugal', 'PT'),
(185, 'Palau', 'PW'),
(186, 'Paraguay', 'PY'),
(187, 'Qatar', 'QA'),
(188, 'Réunion', 'RE'),
(189, 'Romania', 'RO'),
(190, 'Serbia', 'RS'),
(191, 'Russia', 'RU'),
(192, 'Rwanda', 'RW'),
(193, 'Saudi Arabia', 'SA'),
(194, 'Solomon Islands', 'SB'),
(195, 'Seychelles', 'SC'),
(196, 'Sudan', 'SD'),
(197, 'Sweden', 'SE'),
(198, 'Singapore', 'SG'),
(199, 'Saint Helena', 'SH'),
(200, 'Slovenia', 'SI'),
(201, 'Svalbard and Jan Mayen', 'SJ'),
(202, 'Slovakia', 'SK'),
(203, 'Sierra Leone', 'SL'),
(204, 'San Marino', 'SM'),
(205, 'Senegal', 'SN'),
(206, 'Somalia', 'SO'),
(207, 'Suriname', 'SR'),
(208, 'South Sudan', 'SS'),
(209, 'São Tomé and Príncipe', 'ST'),
(210, 'El Salvador', 'SV'),
(211, 'Sint Maarten', 'SX'),
(212, 'Syria', 'SY'),
(213, 'Swaziland', 'SZ'),
(214, 'Turks and Caicos Islands', 'TC'),
(215, 'Chad', 'TD'),
(216, 'French Southern Territories', 'TF'),
(217, 'Togo', 'TG'),
(218, 'Thailand', 'TH'),
(219, 'Tajikistan', 'TJ'),
(220, 'Tokelau', 'TK'),
(221, 'East Timor', 'TL'),
(222, 'Turkmenistan', 'TM'),
(223, 'Tunisia', 'TN'),
(224, 'Tonga', 'TO'),
(225, 'Turkey', 'TR'),
(226, 'Trinidad and Tobago', 'TT'),
(227, 'Tuvalu', 'TV'),
(228, 'Taiwan', 'TW'),
(229, 'Tanzania', 'TZ'),
(230, 'Ukraine', 'UA'),
(231, 'Uganda', 'UG'),
(232, 'U.S. Minor Outlying Islands', 'UM'),
(233, 'United States', 'US'),
(234, 'Uruguay', 'UY'),
(235, 'Uzbekistan', 'UZ'),
(236, 'Vatican City', 'VA'),
(237, 'Saint Vincent and the Grenadines', 'VC'),
(238, 'Venezuela', 'VE'),
(239, 'British Virgin Islands', 'VG'),
(240, 'U.S. Virgin Islands', 'VI'),
(241, 'Vietnam', 'VN'),
(242, 'Vanuatu', 'VU'),
(243, 'Wallis and Futuna', 'WF'),
(244, 'Samoa', 'WS'),
(245, 'Kosovo', 'XK'),
(246, 'Yemen', 'YE'),
(247, 'Mayotte', 'YT'),
(248, 'South Africa', 'ZA'),
(249, 'Zambia', 'ZM'),
(250, 'Zimbabwe', 'ZW');

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
  `ZipCode` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `City` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `VATNumber` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  `PhoneNumber` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `EmailAddress` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PhoneNumber` (`PhoneNumber`),
  UNIQUE KEY `EmailAddress` (`EmailAddress`),
  KEY `countryid` (`Country`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `guest`
--

INSERT INTO `guest` (`ID`, `Name`, `Nationality`, `Country`, `ZipCode`, `City`, `Address`, `VATNumber`, `PhoneNumber`, `EmailAddress`) VALUES
(1, 'Dr. Friedrich Otto Beckewitz', 1, 57, '', 'München', 'Muttenthalerstraße 12.', '', '', ''),
(2, 'Binary Software Kft.', 0, 100, '6900', 'Makó', 'Kálvária u. 48/A', '13406413244', '06 (20) 294 42 80', 'juhasz.bence@outlook.hu');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `reservation`
--

INSERT INTO `reservation` (`ID`, `GuestID`, `RoomID`, `NumberOfGuests`, `ArrivalDate`, `DepartureDate`) VALUES
(1, 1, 5, 2, '2019-01-03', '2019-01-04'),
(2, 2, 15, 4, '2018-12-25', '2018-12-26');

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

--
-- A tábla adatainak kiíratása `room`
--

INSERT INTO `room` (`ID`, `Name`, `Number`, `Category`, `Capacity`) VALUES
(1, 'Háromágyas', 1, 1, 3),
(2, 'Háromágyas', 2, 1, 3),
(3, 'Családi', 3, 2, 4),
(4, 'Családi', 4, 2, 4),
(5, 'Franciaágyas', 6, 3, 2),
(6, 'Franciaágyas', 7, 3, 2),
(7, 'Franciaágyas', 8, 3, 2),
(8, 'Háromágyas', 9, 1, 3),
(9, 'Háromágyas', 10, 1, 3),
(10, 'Háromágyas', 11, 1, 3),
(11, 'Háromágyas', 12, 1, 3),
(12, 'Franciaágyas', 14, 4, 2),
(13, 'Külön ágyas', 15, 5, 2),
(14, 'Apartman', 16, 6, 4),
(15, 'Apartman', 17, 6, 4),
(16, 'Külön ágyas', 18, 5, 2),
(17, 'Franciaágyas', 19, 4, 2);

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

--
-- A tábla adatainak kiíratása `room_category`
--

INSERT INTO `room_category` (`ID`, `Name`) VALUES
(1, 'Földszinti háromágyas'),
(2, 'Földszinti családi négyágyas'),
(3, 'Földszinti franciaágyas'),
(4, 'Emeleti franciaágyas'),
(5, 'Emeleti külön ágyas'),
(6, 'Apartman');

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `accomodation_registration`
--
ALTER TABLE `accomodation_registration`
  ADD CONSTRAINT `accomodationIDOneToOne` FOREIGN KEY (`Accomodation`) REFERENCES `accomodation` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `billing_item`
--
ALTER TABLE `billing_item`
  ADD CONSTRAINT `category` FOREIGN KEY (`Category`) REFERENCES `billing_item_category` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `countryid` FOREIGN KEY (`Country`) REFERENCES `country` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `guestid` FOREIGN KEY (`GuestID`) REFERENCES `guest` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `roomid` FOREIGN KEY (`RoomID`) REFERENCES `room` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `categoryid` FOREIGN KEY (`Category`) REFERENCES `room_category` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
