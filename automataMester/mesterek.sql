-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2018. Dec 10. 22:32
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
-- Adatbázis: `mesterek`
--

DROP DATABASE IF EXISTS `mesterek`;
CREATE DATABASE IF NOT EXISTS `mesterek` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `mesterek`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mesterek`
--

DROP TABLE IF EXISTS `mesterek`;
CREATE TABLE IF NOT EXISTS `mesterek` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `telefon` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `varos` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `mesterek`
--

INSERT INTO `mesterek` (`ID`, `nev`, `telefon`, `varos`) VALUES
(1, 'Ábrahám Alajos', '(30) 2465256', 'Tapolca'),
(2, 'Ábrahám András', '(30) 4946875', 'Ózd'),
(3, 'Ábrahám György', '(30) 1478185', 'Debrecen'),
(4, 'Ábrahám József', '(30) 2568600', 'Miskolc'),
(5, 'Ábrahám Pál', '(30) 4637377', 'Hatvan'),
(6, 'Ábrahám Pál', '(70) 3064583', 'Kiskunfélegyháza'),
(7, 'Ábrahám Zoltán', '(20) 4443779', 'Miskolc'),
(8, 'Antal Attila', '(70) 3834449', 'Kiskunfélegyháza'),
(9, 'Antal Lajos', '(20) 3725237', 'Sopron'),
(10, 'Antal Lajos', '(30) 2110544', 'Kiskunfélegyháza'),
(11, 'Antal Péter', '(30) 1712082', 'Sátoraljaújhely'),
(12, 'Antal Szilárd', '(70) 3026363', 'Keszthely'),
(13, 'Balogh György', '(30) 1977571', 'Koszeg'),
(14, 'Balogh László', '(20) 3438877', 'Koszeg'),
(15, 'Baranyai Géza', '(20) 3298180', 'Szeged'),
(16, 'Baranyai Mátyás', '(30) 1353913', 'Kiskunfélegyháza'),
(17, 'Baranyai Tibor', '(70) 4516566', 'Hatvan'),
(18, 'Baranyai Tibor', '(70) 2054451', 'Gyor'),
(19, 'Békési Dénes', '(20) 2536280', 'Miskolc'),
(20, 'Boros György', '(30) 2141189', 'Hatvan'),
(21, 'Boros Lajos', '(20) 1045205', 'Pécs'),
(22, 'Boros Péter', '(30) 4787700', 'Pécs'),
(23, 'Boros Sándor', '(30) 4562652', 'Miskolc'),
(24, 'Boros Szilárd', '(70) 3023227', 'Szeged'),
(25, 'Braun Ferenc', '(20) 2950083', 'Siófok'),
(26, 'Braun György', '(30) 1954292', 'Gyor'),
(27, 'Braun Lehel', '(30) 4021645', 'Debrecen'),
(28, 'Cziglói Ferenc', '(30) 2321528', 'Pécs'),
(29, 'Cziglói Géza', '(20) 1387081', 'Debrecen'),
(30, 'Cziglói György', '(20) 2869094', 'Pécs'),
(31, 'Csala András', '(20) 1783735', 'Miskolc'),
(32, 'Csala Ferenc', '(20) 1303604', 'Hatvan'),
(33, 'Csala Pál', '(20) 3278939', 'Ózd'),
(34, 'Csala Péter', '(20) 1798080', 'Hatvan'),
(35, 'Csikós Dávid', '(30) 3201647', 'Siófok'),
(36, 'Csikós János', '(30) 1966250', 'Ózd'),
(37, 'Csikós Lajos', '(30) 3641136', 'Hatvan'),
(38, 'Csikós Sándor', '(70) 3461626', 'Szeged'),
(39, 'Csikós Zoltán', '(30) 1539015', 'Debrecen'),
(40, 'Csiszár József', '(20) 2714290', 'Sopron'),
(41, 'Darázs Alajos', '(30) 4209811', 'Keszthely'),
(42, 'Darázs Alajos', '(30) 3360512', 'Gyor'),
(43, 'Darázs Lehel', '(20) 2986100', 'Miskolc'),
(44, 'Darázs Péter', '(70) 2628841', 'Hatvan'),
(45, 'Darázs Zoltán', '(30) 1953130', 'Tapolca'),
(46, 'Faragó Alajos', '(30) 3339428', 'Gyor'),
(47, 'Faragó György', '(20) 1558332', 'Miskolc'),
(48, 'Faragó György', '(30) 3850299', 'Kiskunfélegyháza'),
(49, 'Faragó Lajos', '(30) 4475267', 'Hatvan'),
(50, 'Fekete Lajos', '(30) 2475525', 'Hatvan'),
(51, 'Galambos Dávid', '(30) 2176619', 'Szeged'),
(52, 'Galambos Dénes', '(70) 3619969', 'Koszeg'),
(53, 'Galambos György', '(70) 3416050', 'Hatvan'),
(54, 'Galambos Lehel', '(30) 3753410', 'Budapest'),
(55, 'Galambos Miklós', '(30) 1402958', 'Pécs'),
(56, 'Gutman Miklós', '(20) 1419880', 'Koszeg'),
(57, 'Gutman Péter', '(20) 1074044', 'Gyor'),
(58, 'Halmos András', '(70) 1331871', 'Sopron'),
(59, 'Halmos Ferenc', '(30) 2983456', 'Miskolc'),
(60, 'Halmos György', '(30) 3569764', 'Hatvan'),
(61, 'Halmos Miklós', '(30) 2095180', 'Pécs'),
(62, 'Halmos Sándor', '(30) 3735745', 'Gyor'),
(63, 'Hegyi Dávid', '(30) 4068061', 'Siófok'),
(64, 'Hertelendi László', '(20) 2977708', 'Tapolca'),
(65, 'Hertelendi Sándor', '(20) 2702315', 'Pécs'),
(66, 'Hertelendi Szilárd', '(70) 2390115', 'Sátoraljaújhely'),
(67, 'Horkai György', '(30) 2102710', 'Keszthely'),
(68, 'Horkai János', '(70) 3122346', 'Gyor'),
(69, 'Horkai János', '(30) 4402340', 'Siófok'),
(70, 'Horváth Dávid', '(70) 1850500', 'Gyor'),
(71, 'Horváth Dénes', '(30) 3005023', 'Pécs'),
(72, 'Horváth Dénes', '(30) 1959192', 'Sopron'),
(73, 'Horváth Géza', '(20) 2308695', 'Ózd'),
(74, 'Iharos Ferenc', '(70) 3360925', 'Sopron'),
(75, 'Iharos Pál', '(30) 1778047', 'Budapest'),
(76, 'Iharos Péter', '(30) 3888708', 'Budapest'),
(77, 'Juhász András', '(30) 2053624', 'Tapolca'),
(78, 'Juhász János', '(20) 1454551', 'Sopron'),
(79, 'Juhász Sándor', '(70) 2008828', 'Miskolc'),
(80, 'Juhász Zoltán', '(30) 2829555', 'Kiskunfélegyháza'),
(81, 'Kádár József', '(30) 1816819', 'Ózd'),
(82, 'Kádár József', '(30) 2885284', 'Miskolc'),
(83, 'Kádár Péter', '(20) 3476038', 'Keszthely'),
(84, 'Kádár Péter', '(30) 3914936', 'Hatvan'),
(85, 'Kádár Zoltán', '(20) 2511885', 'Koszeg'),
(86, 'Kalányos Attila', '(20) 1522517', 'Siófok'),
(87, 'Kalányos Dénes', '(20) 4708792', 'Tapolca'),
(88, 'Kalányos Zoltán', '(70) 4992302', 'Pécs'),
(89, 'Kallós Lajos', '(30) 2874760', 'Siófok'),
(90, 'Kalóczkai Dénes', '(30) 1938581', 'Debrecen'),
(91, 'Kalóczkai Lehel', '(70) 2827808', 'Hatvan'),
(92, 'Kalóczkai Mátyás', '(20) 2193565', 'Hatvan'),
(93, 'Karsai Miklós', '(20) 2509602', 'Gyor'),
(94, 'Kelemen József', '(30) 1128820', 'Siófok'),
(95, 'Kiss József', '(30) 2872396', 'Gyor'),
(96, 'Kiss László', '(20) 4069151', 'Keszthely'),
(97, 'Kiss Pál', '(30) 4972856', 'Budapest'),
(98, 'Kiss Sándor', '(30) 4306048', 'Pécs'),
(99, 'Kovács András', '(30) 3208074', 'Sátoraljaújhely'),
(100, 'Kovács Dávid', '(70) 4368339', 'Keszthely'),
(101, 'Kovács Lajos', '(70) 3279958', 'Budapest'),
(102, 'Kovács Sándor', '(30) 1498449', 'Koszeg'),
(103, 'Latorczai Alajos', '(70) 1593392', 'Pécs'),
(104, 'Latorczai András', '(20) 4533011', 'Sátoraljaújhely'),
(105, 'Lengyel Alajos', '(20) 1966168', 'Koszeg'),
(106, 'Lengyel Bálint', '(30) 2365347', 'Tapolca'),
(107, 'Lengyel Mátyás', '(70) 3020539', 'Koszeg'),
(108, 'Lengyel Pál', '(20) 3202571', 'Sátoraljaújhely'),
(109, 'Lukács Miklós', '(70) 2008140', 'Sátoraljaújhely'),
(110, 'Magyar Dávid', '(30) 3608829', 'Pécs'),
(111, 'Magyar Ferenc', '(30) 1814395', 'Koszeg'),
(112, 'Magyar Lehel', '(30) 4707175', 'Pécs'),
(113, 'Magyar Tibor', '(30) 2354241', 'Debrecen'),
(114, 'Máté Attila', '(20) 1122660', 'Miskolc'),
(115, 'Máté Dénes', '(20) 2077928', 'Ózd'),
(116, 'Máté János', '(30) 1511384', 'Koszeg'),
(117, 'Máté Lajos', '(20) 2224222', 'Pécs'),
(118, 'Máté Szilárd', '(30) 1809607', 'Budapest'),
(119, 'Máté Tibor', '(20) 3002807', 'Budapest'),
(120, 'Molnár Dénes', '(20) 4476091', 'Tapolca'),
(121, 'Molnár József', '(30) 4768575', 'Kiskunfélegyháza'),
(122, 'Molnár Zoltán', '(30) 2539463', 'Siófok'),
(123, 'Nagy Dávid', '(20) 4099865', 'Keszthely'),
(124, 'Nagy Mátyás', '(70) 3487512', 'Miskolc'),
(125, 'Nyári Alajos', '(30) 2938017', 'Debrecen'),
(126, 'Nyári Dávid', '(20) 3929453', 'Miskolc'),
(127, 'Nyári János', '(30) 1730439', 'Keszthely'),
(128, 'Nyári József', '(30) 3793842', 'Sátoraljaújhely'),
(129, 'Nyári Pál', '(70) 4966269', 'Kiskunfélegyháza'),
(130, 'Nyári Zoltán', '(30) 4776022', 'Pécs'),
(131, 'Salamon Miklós', '(70) 2266848', 'Debrecen'),
(132, 'Szabó Ferenc', '(30) 1171377', 'Siófok'),
(133, 'Szabó Lehel', '(20) 2819336', 'Koszeg'),
(134, 'Szabó Szilárd', '(30) 1504484', 'Siófok'),
(135, 'Szalontai Dénes', '(30) 4470489', 'Pécs'),
(136, 'Szalontai László', '(30) 4966883', 'Sopron'),
(137, 'Szikszai György', '(70) 4876609', 'Sátoraljaújhely'),
(138, 'Szikszai Gyula', '(30) 1259220', 'Hatvan'),
(139, 'Szikszai Lajos', '(70) 3650818', 'Pécs'),
(140, 'Szucs Alajos', '(30) 1248501', 'Debrecen'),
(141, 'Szucs András', '(70) 1334535', 'Kiskunfélegyháza'),
(142, 'Toller Gyula', '(30) 1206783', 'Sátoraljaújhely'),
(143, 'Toller János', '(70) 3970674', 'Szeged'),
(144, 'Toller Tibor', '(30) 2923772', 'Siófok'),
(145, 'Toller Tibor', '(70) 4054769', 'Ózd'),
(146, 'Tóth János', '(30) 1032318', 'Szeged'),
(147, 'Tóth Miklós', '(20) 3511839', 'Sopron'),
(148, 'Tóth Szilárd', '(20) 2530764', 'Tapolca'),
(149, 'Vállas Péter', '(20) 4926781', 'Tapolca'),
(150, 'Vállas Péter', '(30) 2696084', 'Tapolca'),
(151, 'Veres Dénes', '(20) 2309435', 'Kiskunfélegyháza'),
(152, 'Veres Ferenc', '(20) 3172152', 'Siófok'),
(153, 'Veres Gyula', '(20) 1463134', 'Sátoraljaújhely'),
(154, 'Veres József', '(30) 2055483', 'Keszthely'),
(155, 'Veres Zoltán', '(70) 3697474', 'Pécs'),
(156, 'Zakariás András', '(30) 2431239', 'Budapest'),
(157, 'Zakariás Bálint', '(30) 4568877', 'Sátoraljaújhely'),
(158, 'Zakariás Miklós', '(20) 1606366', 'Pécs'),
(159, 'Zanai Alajos', '(70) 2179004', 'Pécs'),
(160, 'Zanai Alajos', '(20) 4403707', 'Ózd'),
(161, 'Zanai Bálint', '(70) 4757707', 'Pécs'),
(162, 'Zanai Miklós', '(30) 4420289', 'Koszeg'),
(163, 'Zanai Sándor', '(70) 2729710', 'Miskolc'),
(164, 'Zoltai Mátyás', '(70) 1901645', 'Pécs'),
(165, 'Zoltai Sándor', '(30) 3918629', 'Debrecen'),
(166, 'Zsemle Bálint', '(30) 2247607', 'Keszthely'),
(167, 'Zsemle Bálint', '(30) 4852579', 'Gyor'),
(168, 'Zsemle Dénes', '(70) 1539849', 'Pécs'),
(169, 'Zsemle Ferenc', '(20) 4300145', 'Debrecen'),
(170, 'Zsemle Tibor', '(30) 2441057', 'Hatvan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
