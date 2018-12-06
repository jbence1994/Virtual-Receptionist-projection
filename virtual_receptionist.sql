-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2018. Dec 07. 00:12
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
-- Tábla szerkezet ehhez a táblához `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Registration` int(11) NOT NULL,
  `Username` varchar(15) COLLATE utf8_hungarian_ci NOT NULL,
  `Password` varchar(15) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `registrationisd` (`Registration`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `account`
--

INSERT INTO `account` (`ID`, `Registration`, `Username`, `Password`) VALUES
(1, 1, 'zita', 'whippet45'),
(2, 1, 'norci', 'foci12345'),
(3, 2, 'dori', 'recis'),
(4, 2, 'admin', 'sanyi'),
(5, 3, 'adminantal', 'admin'),
(6, 3, 'ilona', 'iluska');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `billing_items`
--

INSERT INTO `billing_items` (`ID`, `Item`, `Price`, `Unit`) VALUES
(1, 'Idegenforgalmi adó', '300', 'éjszaka'),
(2, '1 szoba 1 főre', '8700', 'éjszaka'),
(3, '1 szoba 2 főre', '11400', 'éjszaka'),
(4, 'Idegenforgalmi adó mentes', '0', 'éjszaka');

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

--
-- A tábla adatainak kiíratása `country`
--

INSERT INTO `country` (`ID`, `Code`, `Name`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AQ', 'Antarctica'),
(10, 'AR', 'Argentina'),
(11, 'AS', 'American Samoa'),
(12, 'AT', 'Austria'),
(13, 'AU', 'Australia'),
(14, 'AW', 'Aruba'),
(15, 'AX', 'Åland Islands'),
(16, 'AZ', 'Azerbaijan'),
(17, 'BA', 'Bosnia and Herzegovina'),
(18, 'BB', 'Barbados'),
(19, 'BD', 'Bangladesh'),
(20, 'BE', 'Belgium'),
(21, 'BF', 'Burkina Faso'),
(22, 'BG', 'Bulgaria'),
(23, 'BH', 'Bahrain'),
(24, 'BI', 'Burundi'),
(25, 'BJ', 'Benin'),
(26, 'BL', 'Saint Barthélemy'),
(27, 'BM', 'Bermuda'),
(28, 'BN', 'Brunei Darussalam'),
(29, 'BO', 'Bolivia'),
(30, 'BQ', 'Bonaire, Sint Eustatius and Saba'),
(31, 'BR', 'Brazil'),
(32, 'BS', 'Bahamas'),
(33, 'BT', 'Bhutan'),
(34, 'BV', 'Bouvet Island'),
(35, 'BW', 'Botswana'),
(36, 'BY', 'Belarus'),
(37, 'BZ', 'Belize'),
(38, 'CA', 'Canada'),
(39, 'CC', 'Cocos [Keeling] Islands'),
(40, 'CD', 'Democratic Republic of the Congo'),
(41, 'CF', 'Central African Republic'),
(42, 'CG', 'Republic of the Congo'),
(43, 'CH', 'Switzerland'),
(44, 'CI', 'Ivory Coast'),
(45, 'CK', 'Cook Islands'),
(46, 'CL', 'Chile'),
(47, 'CM', 'Cameroon'),
(48, 'CN', 'China'),
(49, 'CO', 'Colombia'),
(50, 'CR', 'Costa Rica'),
(51, 'CU', 'Cuba'),
(52, 'CV', 'Cape Verde'),
(53, 'CW', 'Curaçao'),
(54, 'CX', 'Christmas Island'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DE', 'Germany'),
(58, 'DJ', 'Djibouti'),
(59, 'DK', 'Denmark'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'DZ', 'Algeria'),
(63, 'EC', 'Ecuador'),
(64, 'EE', 'Estonia'),
(65, 'EG', 'Egypt'),
(66, 'EH', 'Western Sahara'),
(67, 'ER', 'Eritrea'),
(68, 'ES', 'Spain'),
(69, 'ET', 'Ethiopia'),
(70, 'FI', 'Finland'),
(71, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands'),
(73, 'FM', 'Micronesia'),
(74, 'FO', 'Faroe Islands'),
(75, 'FR', 'France'),
(76, 'GA', 'Gabon'),
(77, 'GB', 'United Kingdom of Great Britain and Northern '),
(78, 'GD', 'Grenada'),
(79, 'GE', 'Georgia'),
(80, 'GF', 'French Guiana'),
(81, 'GG', 'Guernsey'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GL', 'Greenland'),
(85, 'GM', 'Gambia'),
(86, 'GN', 'Guinea'),
(87, 'GP', 'Guadeloupe'),
(88, 'GQ', 'Equatorial Guinea'),
(89, 'GR', 'Greece'),
(90, 'GS', 'South Georgia and the South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(92, 'GU', 'Guam'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HK', 'Hong Kong'),
(96, 'HM', 'Heard Island and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HR', 'Croatia'),
(99, 'HT', 'Haiti'),
(100, 'HU', 'Hungary'),
(101, 'ID', 'Indonesia'),
(102, 'IE', 'Ireland'),
(103, 'IL', 'Israel'),
(104, 'IM', 'Isle of Man'),
(105, 'IN', 'India'),
(106, 'IO', 'British Indian Ocean Territory'),
(107, 'IQ', 'Iraq'),
(108, 'IR', 'Iran'),
(109, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(111, 'JE', 'Jersey'),
(112, 'JM', 'Jamaica'),
(113, 'JO', 'Jordan'),
(114, 'JP', 'Japan'),
(115, 'KE', 'Kenya'),
(116, 'KG', 'Kyrgyzstan'),
(117, 'KH', 'Cambodia'),
(118, 'KI', 'Kiribati'),
(119, 'KM', 'Comoros'),
(120, 'KN', 'Saint Kitts and Nevis'),
(121, 'KP', 'North Korea'),
(122, 'KR', 'South Korea'),
(123, 'KW', 'Kuwait'),
(124, 'KY', 'Cayman Islands'),
(125, 'KZ', 'Kazakhstan'),
(126, 'LA', 'Laos'),
(127, 'LB', 'Lebanon'),
(128, 'LC', 'Saint Lucia'),
(129, 'LI', 'Liechtenstein'),
(130, 'LK', 'Sri Lanka'),
(131, 'LR', 'Liberia'),
(132, 'LS', 'Lesotho'),
(133, 'LT', 'Lithuania'),
(134, 'LU', 'Luxembourg'),
(135, 'LV', 'Latvia'),
(136, 'LY', 'Libya'),
(137, 'MA', 'Morocco'),
(138, 'MC', 'Monaco'),
(139, 'MD', 'Moldova'),
(140, 'ME', 'Montenegro'),
(141, 'MF', 'Saint Martin'),
(142, 'MG', 'Madagascar'),
(143, 'MH', 'Marshall Islands'),
(144, 'MK', 'Macedonia'),
(145, 'ML', 'Mali'),
(146, 'MM', 'Myanmar [Burma]'),
(147, 'MN', 'Mongolia'),
(148, 'MO', 'Macao'),
(149, 'MP', 'Northern Mariana Islands'),
(150, 'MQ', 'Martinique'),
(151, 'MR', 'Mauritania'),
(152, 'MS', 'Montserrat'),
(153, 'MT', 'Malta'),
(154, 'MU', 'Mauritius'),
(155, 'MV', 'Maldives'),
(156, 'MW', 'Malawi'),
(157, 'MX', 'Mexico'),
(158, 'MY', 'Malaysia'),
(159, 'MZ', 'Mozambique'),
(160, 'NA', 'Namibia'),
(161, 'NC', 'New Caledonia'),
(162, 'NE', 'Niger'),
(163, 'NF', 'Norfolk Island'),
(164, 'NG', 'Nigeria'),
(165, 'NI', 'Nicaragua'),
(166, 'NL', 'Netherlands'),
(167, 'NO', 'Norway'),
(168, 'NP', 'Nepal'),
(169, 'NR', 'Nauru'),
(170, 'NU', 'Niue'),
(171, 'NZ', 'New Zealand'),
(172, 'OM', 'Oman'),
(173, 'PA', 'Panama'),
(174, 'PE', 'Peru'),
(175, 'PF', 'French Polynesia'),
(176, 'PG', 'Papua New Guinea'),
(177, 'PH', 'Philippines'),
(178, 'PK', 'Pakistan'),
(179, 'PL', 'Poland'),
(180, 'PM', 'Saint Pierre and Miquelon'),
(181, 'PN', 'Pitcairn Islands'),
(182, 'PR', 'Puerto Rico'),
(183, 'PS', 'Palestine'),
(184, 'PT', 'Portugal'),
(185, 'PW', 'Palau'),
(186, 'PY', 'Paraguay'),
(187, 'QA', 'Qatar'),
(188, 'RE', 'Réunion'),
(189, 'RO', 'Romania'),
(190, 'RS', 'Serbia'),
(191, 'RU', 'Russia'),
(192, 'RW', 'Rwanda'),
(193, 'SA', 'Saudi Arabia'),
(194, 'SB', 'Solomon Islands'),
(195, 'SC', 'Seychelles'),
(196, 'SD', 'Sudan'),
(197, 'SE', 'Sweden'),
(198, 'SG', 'Singapore'),
(199, 'SH', 'Saint Helena'),
(200, 'SI', 'Slovenia'),
(201, 'SJ', 'Svalbard and Jan Mayen'),
(202, 'SK', 'Slovakia'),
(203, 'SL', 'Sierra Leone'),
(204, 'SM', 'San Marino'),
(205, 'SN', 'Senegal'),
(206, 'SO', 'Somalia'),
(207, 'SR', 'Suriname'),
(208, 'SS', 'South Sudan'),
(209, 'ST', 'São Tomé and Príncipe'),
(210, 'SV', 'El Salvador'),
(211, 'SX', 'Sint Maarten'),
(212, 'SY', 'Syria'),
(213, 'SZ', 'Swaziland'),
(214, 'TC', 'Turks and Caicos Islands'),
(215, 'TD', 'Chad'),
(216, 'TF', 'French Southern Territories'),
(217, 'TG', 'Togo'),
(218, 'TH', 'Thailand'),
(219, 'TJ', 'Tajikistan'),
(220, 'TK', 'Tokelau'),
(221, 'TL', 'East Timor'),
(222, 'TM', 'Turkmenistan'),
(223, 'TN', 'Tunisia'),
(224, 'TO', 'Tonga'),
(225, 'TR', 'Turkey'),
(226, 'TT', 'Trinidad and Tobago'),
(227, 'TV', 'Tuvalu'),
(228, 'TW', 'Taiwan'),
(229, 'TZ', 'Tanzania'),
(230, 'UA', 'Ukraine'),
(231, 'UG', 'Uganda'),
(232, 'UM', 'U.S. Minor Outlying Islands'),
(233, 'US', 'United States'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VA', 'Vatican City'),
(237, 'VC', 'Saint Vincent and the Grenadines'),
(238, 'VE', 'Venezuela'),
(239, 'VG', 'British Virgin Islands'),
(240, 'VI', 'U.S. Virgin Islands'),
(241, 'VN', 'Vietnam'),
(242, 'VU', 'Vanuatu'),
(243, 'WF', 'Wallis and Futuna'),
(244, 'WS', 'Samoa'),
(245, 'XK', 'Kosovo'),
(246, 'YE', 'Yemen'),
(247, 'YT', 'Mayotte'),
(248, 'ZA', 'South Africa'),
(249, 'ZM', 'Zambia'),
(250, 'ZW', 'Zimbabwe');

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
  `PhoneNumber` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  `EmailAddress` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PhoneNumber` (`PhoneNumber`),
  UNIQUE KEY `EmailAddress` (`EmailAddress`),
  KEY `countryid` (`Country`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `guest`
--

INSERT INTO `guest` (`ID`, `Name`, `Nationality`, `Country`, `ZipCode`, `City`, `Address`, `VATNumber`, `PhoneNumber`, `EmailAddress`) VALUES
(1, 'Juhász Bence', 0, 100, '6900', 'Makó', 'Kálvária utca 48./A', '', '06 (20) / 294 42 80', 'juhasz.bence@outlook.hu');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `license`
--

DROP TABLE IF EXISTS `license`;
CREATE TABLE IF NOT EXISTS `license` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductKey` varchar(18) COLLATE utf8_hungarian_ci NOT NULL,
  `IsValid` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `license`
--

INSERT INTO `license` (`ID`, `ProductKey`, `IsValid`) VALUES
(1, '2019-AWRF4D-222FGJ', 0),
(2, '2019-SSEZ56-346EFB', 0),
(3, '2019-DDDEEE-4442FG', 0),
(4, '2019-RET999-RFGT5Z', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AccomodationName` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `AccomodationID` varchar(10) COLLATE utf8_hungarian_ci NOT NULL,
  `Password` varchar(10) COLLATE utf8_hungarian_ci NOT NULL,
  `License` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `accomodationid` (`AccomodationName`),
  KEY `licenseid` (`License`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `registration`
--

INSERT INTO `registration` (`ID`, `AccomodationName`, `AccomodationID`, `Password`, `License`) VALUES
(1, 'Autós Panzió', 'AUTSPNZ', 'autosp', 1),
(2, 'Bástya Hotel', 'BSTYHTL', 'psanyi', 2),
(3, 'Fenyő Panzió', 'FNYPNZ', 'fenyoantal', 3),
(4, 'Aranyhíd Vendégház', 'ARNYHDVNDG', 'turcsitomi', 4);

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

--
-- A tábla adatainak kiíratása `reservation`
--

INSERT INTO `reservation` (`ID`, `GuestID`, `RoomID`, `NumberOfGuests`, `ArrivalDate`, `DepartureDate`) VALUES
(1, 1, 8, 3, '2018-12-05', '2018-12-26');

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
(5, 'Franciágyas', 6, 3, 2),
(6, 'Franciágyas', 7, 3, 2),
(7, 'Franciaágyas', 8, 3, 2),
(8, 'Háromágyas', 9, 1, 3),
(9, 'Háromágyas', 10, 1, 3),
(10, 'Háromágyas', 11, 1, 3),
(11, 'Háromágyas', 12, 1, 3),
(12, 'Franciaágyas', 14, 4, 2),
(13, 'Különágyas', 15, 5, 2),
(14, 'Apartman', 16, 6, 4),
(15, 'Apartman', 17, 6, 4),
(16, 'Különágyas', 18, 5, 2),
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
(2, 'Földszinti négyágyas'),
(3, 'Földszinti franciaágyas'),
(4, 'Emeleti erkélyes franciaágyas'),
(5, 'Emeleti két különágyas'),
(6, 'Emeleti négyágyas apartman');

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `registrationisd` FOREIGN KEY (`Registration`) REFERENCES `registration` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `countryid` FOREIGN KEY (`Country`) REFERENCES `country` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Megkötések a táblához `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `licenseid` FOREIGN KEY (`License`) REFERENCES `license` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
