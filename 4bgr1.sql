-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 13, 2026 at 12:44 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4bgr1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adresy`
--

CREATE TABLE `adresy` (
  `id` int(2) NOT NULL,
  `nazwisko` varchar(100) NOT NULL,
  `imie` text NOT NULL,
  `telefon` varchar(9) NOT NULL,
  `pesel` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adresy`
--

INSERT INTO `adresy` (`id`, `nazwisko`, `imie`, `telefon`, `pesel`) VALUES
(1, 'Bartnik', 'Maciej', '867953765', '46975467893'),
(2, 'Borowik', 'Artur', '375186179', '65478954671'),
(3, 'Dąbrowski', 'Jakub', '853678964', '997');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auto`
--

CREATE TABLE `auto` (
  `auto_id` int(11) NOT NULL,
  `rocznik` int(11) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `pojemnosc` float DEFAULT NULL,
  `przebieg` int(11) DEFAULT NULL,
  `kolor` varchar(255) DEFAULT NULL,
  `typ` varchar(20) DEFAULT NULL,
  `paliwo` varchar(20) DEFAULT NULL,
  `uwagi` text DEFAULT NULL,
  `marka` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `auto`
--

INSERT INTO `auto` (`auto_id`, `rocznik`, `cena`, `pojemnosc`, `przebieg`, `kolor`, `typ`, `paliwo`, `uwagi`, `marka`) VALUES
(11, 2002, 24100, 1.8, 139000, 'granatowy metalik', '', '', 'garażowany, sprowadzany', NULL),
(13, 1996, 65000, 1.4, 251000, '', 'kombi', 'TD', '', NULL),
(14, 1995, 82100, 4.4, 249000, '', 'kombi', 'G', 'cena do uzgodnienia, możliwa wymiana, sprowadzany', NULL),
(16, 2000, 52000, 3, 28000, 'czarny', 'kabriolet', '', 'cena do uzgodnienia, garażowany, możliwa wymiana, pierwszy właściciel', NULL),
(17, 1992, 75700, 1.8, 79000, 'czarny', 'kombi', 'BG', 'garażowany, możliwa wymiana, pierwszy właściciel, sprowadzany', NULL),
(18, 1990, 43500, 1.9, 63000, 'granatowy', '', '', 'możliwa wymiana, sprowadzany', NULL),
(19, 1992, 75300, 4.3, 164000, 'bordowy metalik', 'kabriolet', 'BG', 'cena do uzgodnienia, możliwa wymiana, sprowadzany', NULL),
(31, 1990, 25400, 4, 173000, 'czarna perła', '', '', 'cena do uzgodnienia, gotowy do rejestracji, sprowadzany', NULL),
(34, 1995, 49800, 2.3, 33000, '', 'sedan', 'BG', 'garażowany, pierwszy właściciel, sprowadzany', NULL),
(35, 1994, 74500, 3.6, 66000, 'srebrny metalik', 'kombi', '', 'garażowany, gotowy do rejestracji', NULL),
(36, 2000, 76000, 1, 242000, 'czarna perła', 'kabriolet', 'G', 'cena do uzgodnienia', NULL),
(38, 1999, 76400, 4.4, 331000, 'zielony metalik', 'kabriolet', 'B', 'cena do uzgodnienia, garażowany, pierwszy właściciel, sprowadzany', NULL),
(39, 1999, 66000, 1.2, 143000, 'czarny', 'sedan', 'TD', 'garażowany', NULL),
(40, 2001, 17900, 4, 259000, 'granatowy', 'kabriolet', 'G', 'cena do uzgodnienia, gotowy do rejestracji, możliwa wymiana, sprowadzany', NULL),
(41, 2004, 15000, 2.4, 326000, 'czarny', 'kombi', '', 'garażowany, gotowy do rejestracji, możliwa wymiana, pierwszy właściciel', NULL),
(42, NULL, NULL, NULL, 150000, 'niebieski', 'kombi', NULL, NULL, NULL),
(45, 2026, 1000, 2000, 300, 'nijaki', 'kombi', 'olej z biedronki', 'brak', 'igła');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

CREATE TABLE `samochody` (
  `id` int(1) NOT NULL,
  `marka` varchar(4) DEFAULT NULL,
  `model` varchar(5) DEFAULT NULL,
  `rok` int(4) DEFAULT NULL,
  `kolor` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `samochody`
--

INSERT INTO `samochody` (`id`, `marka`, `model`, `rok`, `kolor`) VALUES
(1, 'BMW', 'E46', 2001, 'czarny'),
(2, 'Fiat', 'Panda', 1965, 'biały');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `id` int(11) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `imie` varchar(40) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `miejscowosc` varchar(60) NOT NULL,
  `kod_pocztowy` varchar(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefon` varchar(15) NOT NULL,
  `hobby` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `uczniowie`
--

INSERT INTO `uczniowie` (`id`, `nazwisko`, `imie`, `data_urodzenia`, `miejscowosc`, `kod_pocztowy`, `email`, `telefon`, `hobby`) VALUES
(1, 'Szymański', 'Igor', '2009-09-03', 'Bielsko-Biała', '43-908', 'igor.szymanski1@uczen.pl', '700144109', 'szachy'),
(2, 'Kowalski', 'Martyna', '2006-10-20', 'Częstochowa', '42-564', 'martyna.kowalski2@uczen.pl', '700281315', 'film'),
(3, 'Mazur', 'Julia', '2010-07-17', 'Kielce', '25-920', 'julia.mazur3@uczen.pl', '800312740', 'czytanie książek'),
(4, 'Woźniak', 'Piotr', '2010-08-26', 'Płock', '09-791', 'piotr.wozniak4@uczen.pl', '500448158', 'piłka nożna'),
(5, 'Kowalski', 'Antoni', '2008-10-09', 'Zielona Góra', '65-541', 'antoni.kowalski5@uczen.pl', '600590032', 'czytanie książek'),
(6, 'Wojciechowski', 'Adam', '2007-02-18', 'Toruń', '87-479', 'adam.wojciechowski6@uczen.pl', '600615507', 'jazda na rowerze'),
(7, 'Kwiatkowski', 'Maria', '2007-03-17', 'Gdynia', '81-545', 'maria.kwiatkowski7@uczen.pl', '700724176', 'motoryzacja'),
(8, 'Wiśniewski', 'Antoni', '2006-07-29', 'Kraków', '30-983', 'antoni.wisniewski8@uczen.pl', '700813957', 'szachy'),
(9, 'Lewandowski', 'Karolina', '2009-02-18', 'Szczecin', '70-452', 'karolina.lewandowski9@uczen.pl', '800927197', 'jazda konna'),
(10, 'Kowalski', 'Karolina', '2007-09-09', 'Kielce', '25-113', 'karolina.kowalski10@uczen.pl', '501030894', 'jazda na rowerze'),
(11, 'Zieliński', 'Piotr', '2008-10-21', 'Gliwice', '44-934', 'piotr.zielinski11@uczen.pl', '501133380', 'fotografia'),
(12, 'Czarnecki', 'Michał', '2008-02-09', 'Opole', '45-463', 'michal.czarnecki12@uczen.pl', '501282525', 'motoryzacja'),
(13, 'Malinowski', 'Katarzyna', '2010-03-31', 'Radom', '26-455', 'katarzyna.malinowski13@uczen.pl', '601361121', 'gitara'),
(14, 'Stępień', 'Jakub', '2010-06-20', 'Rzeszów', '35-149', 'jakub.stepien14@uczen.pl', '801447690', 'programowanie'),
(15, 'Wieczorek', 'Marcel', '2007-10-28', 'Warszawa', '00-015', 'marcel.wieczorek15@uczen.pl', '701585355', 'muzyka'),
(16, 'Krawczyk', 'Karolina', '2007-09-21', 'Łódź', '90-105', 'karolina.krawczyk16@uczen.pl', '801617365', 'jazda konna'),
(17, 'Szewczyk', 'Adam', '2008-11-05', 'Zabrze', '41-655', 'adam.szewczyk17@uczen.pl', '601799231', 'gitara'),
(18, 'Sikora', 'Bartosz', '2010-07-29', 'Rzeszów', '35-297', 'bartosz.sikora18@uczen.pl', '601860844', 'podróże'),
(19, 'Kwiatkowski', 'Łukasz', '2010-06-28', 'Zielona Góra', '65-522', 'lukasz.kwiatkowski19@uczen.pl', '501919300', 'fotografia'),
(20, 'Nowakowski', 'Szymon', '2007-04-12', 'Łódź', '90-151', 'szymon.nowakowski20@uczen.pl', '702050240', 'muzyka'),
(21, 'Olszewski', 'Michał', '2009-03-09', 'Gliwice', '44-800', 'michal.olszewski21@uczen.pl', '602169656', 'szachy'),
(22, 'Krawczyk', 'Szymon', '2006-10-24', 'Warszawa', '00-368', 'szymon.krawczyk22@uczen.pl', '502226212', 'pływanie'),
(23, 'Malinowski', 'Marcel', '2006-01-16', 'Poznań', '60-003', 'marcel.malinowski23@uczen.pl', '602364270', 'robotyka'),
(24, 'Sikora', 'Maciej', '2009-08-31', 'Warszawa', '00-736', 'maciej.sikora24@uczen.pl', '502480794', 'informatyka'),
(25, 'Piotrowski', 'Piotr', '2006-02-09', 'Lublin', '20-281', 'piotr.piotrowski25@uczen.pl', '802523242', 'robotyka'),
(26, 'Olszewski', 'Patrycja', '2007-01-20', 'Opole', '45-231', 'patrycja.olszewski26@uczen.pl', '702684769', 'film'),
(27, 'Piotrowski', 'Szymon', '2010-02-07', 'Gliwice', '44-452', 'szymon.piotrowski27@uczen.pl', '502779378', 'piłka nożna'),
(28, 'Kamiński', 'Filip', '2008-03-17', 'Opole', '45-594', 'filip.kaminski28@uczen.pl', '802817045', 'bieganie'),
(29, 'Nowak', 'Maciej', '2009-02-18', 'Szczecin', '70-243', 'maciej.nowak29@uczen.pl', '502987092', 'modelarstwo'),
(30, 'Kozłowski', 'Paweł', '2009-08-02', 'Kraków', '30-122', 'pawel.kozlowski30@uczen.pl', '603082255', 'informatyka'),
(31, 'Jabłoński', 'Natalia', '2007-11-05', 'Toruń', '87-791', 'natalia.jablonski31@uczen.pl', '503139232', 'film'),
(32, 'Krawczyk', 'Igor', '2010-11-09', 'Bielsko-Biała', '43-735', 'igor.krawczyk32@uczen.pl', '803261855', 'gotowanie'),
(33, 'Nowakowski', 'Krzysztof', '2008-12-02', 'Opole', '45-223', 'krzysztof.nowakowski33@uczen.pl', '803381014', 'gry komputerowe'),
(34, 'Bąk', 'Szymon', '2010-04-04', 'Zabrze', '41-512', 'szymon.bak34@uczen.pl', '703414724', 'koszykówka'),
(35, 'Majewski', 'Michał', '2008-01-18', 'Białystok', '15-897', 'michal.majewski35@uczen.pl', '803570639', 'piłka nożna'),
(36, 'Pawłowski', 'Filip', '2008-01-30', 'Szczecin', '70-821', 'filip.pawlowski36@uczen.pl', '703634840', 'czytanie książek'),
(37, 'Wróbel', 'Mateusz', '2006-09-19', 'Zabrze', '41-700', 'mateusz.wrobel37@uczen.pl', '503783178', 'muzyka'),
(38, 'Kamiński', 'Jakub', '2009-02-17', 'Warszawa', '00-024', 'jakub.kaminski38@uczen.pl', '603831355', 'gitara'),
(39, 'Rutkowski', 'Filip', '2006-07-02', 'Łódź', '90-093', 'filip.rutkowski39@uczen.pl', '603980396', 'film'),
(40, 'Sikora', 'Szymon', '2006-11-12', 'Kielce', '25-945', 'szymon.sikora40@uczen.pl', '704079320', 'pływanie'),
(41, 'Stępień', 'Magdalena', '2007-12-28', 'Lublin', '20-392', 'magdalena.stepien41@uczen.pl', '604190290', 'film'),
(42, 'Jaworski', 'Dominika', '2010-07-10', 'Kielce', '25-024', 'dominika.jaworski42@uczen.pl', '504278915', 'muzyka'),
(43, 'Bąk', 'Tomasz', '2008-06-01', 'Płock', '09-432', 'tomasz.bak43@uczen.pl', '704361906', 'piłka nożna'),
(44, 'Czarnecki', 'Martyna', '2007-01-08', 'Bielsko-Biała', '43-079', 'martyna.czarnecki44@uczen.pl', '804426769', 'modelarstwo'),
(45, 'Górski', 'Łukasz', '2009-10-11', 'Kielce', '25-385', 'lukasz.gorski45@uczen.pl', '704545118', 'podróże'),
(46, 'Szymański', 'Igor', '2010-04-23', 'Białystok', '15-096', 'igor.szymanski46@uczen.pl', '604619692', 'muzyka'),
(47, 'Kozłowski', 'Zuzanna', '2006-02-23', 'Wrocław', '50-371', 'zuzanna.kozlowski47@uczen.pl', '604755051', 'modelarstwo'),
(48, 'Jabłoński', 'Aleksandra', '2007-08-29', 'Łódź', '90-494', 'aleksandra.jablonski48@uczen.pl', '704861264', 'film'),
(49, 'Woźniak', 'Michał', '2006-10-20', 'Wrocław', '50-018', 'michal.wozniak49@uczen.pl', '504980092', 'bieganie'),
(50, 'Baran', 'Magdalena', '2007-03-04', 'Lublin', '20-238', 'magdalena.baran50@uczen.pl', '705099403', 'rysowanie'),
(51, 'Wróbel', 'Aleksandra', '2009-06-09', 'Katowice', '40-648', 'aleksandra.wrobel51@uczen.pl', '505134350', 'gitara'),
(52, 'Jabłoński', 'Łukasz', '2006-06-29', 'Gdańsk', '80-486', 'lukasz.jablonski52@uczen.pl', '705291444', 'gotowanie'),
(53, 'Jankowski', 'Antoni', '2010-01-10', 'Sopot', '81-884', 'antoni.jankowski53@uczen.pl', '505370836', 'tenis'),
(54, 'Jaworski', 'Tomasz', '2007-10-27', 'Bydgoszcz', '85-706', 'tomasz.jaworski54@uczen.pl', '605466603', 'jazda konna'),
(55, 'Nowak', 'Weronika', '2009-12-21', 'Katowice', '40-642', 'weronika.nowak55@uczen.pl', '605575754', 'siatkówka'),
(56, 'Wójcik', 'Łukasz', '2008-04-20', 'Wrocław', '50-090', 'lukasz.wojcik56@uczen.pl', '805684293', 'gry komputerowe'),
(57, 'Olszewski', 'Bartosz', '2009-09-20', 'Wrocław', '50-973', 'bartosz.olszewski57@uczen.pl', '805763184', 'gry komputerowe'),
(58, 'Mazur', 'Łukasz', '2008-12-12', 'Sopot', '81-660', 'lukasz.mazur58@uczen.pl', '805810116', 'tenis'),
(59, 'Kaczmarek', 'Paweł', '2009-07-24', 'Zabrze', '41-273', 'pawel.kaczmarek59@uczen.pl', '505938325', 'koszykówka'),
(60, 'Olszewski', 'Jan', '2008-09-24', 'Białystok', '15-986', 'jan.olszewski60@uczen.pl', '806087984', 'tenis'),
(61, 'Grabowski', 'Maria', '2010-09-02', 'Wrocław', '50-705', 'maria.grabowski61@uczen.pl', '506166889', 'malarstwo'),
(62, 'Kozłowski', 'Szymon', '2006-04-13', 'Kraków', '30-362', 'szymon.kozlowski62@uczen.pl', '606248641', 'bieganie'),
(63, 'Czarnecki', 'Dawid', '2009-02-24', 'Warszawa', '00-210', 'dawid.czarnecki63@uczen.pl', '706317160', 'rysowanie'),
(64, 'Górski', 'Jakub', '2008-07-11', 'Łódź', '90-388', 'jakub.gorski64@uczen.pl', '506481094', 'rysowanie'),
(65, 'Olszewski', 'Piotr', '2008-02-11', 'Rzeszów', '35-981', 'piotr.olszewski65@uczen.pl', '506557999', 'siatkówka'),
(66, 'Mazur', 'Mateusz', '2010-10-03', 'Poznań', '60-613', 'mateusz.mazur66@uczen.pl', '806662387', 'jazda konna'),
(67, 'Pawłowski', 'Agnieszka', '2007-06-16', 'Gliwice', '44-996', 'agnieszka.pawlowski67@uczen.pl', '506779313', 'podróże'),
(68, 'Majewski', 'Piotr', '2009-06-22', 'Gdynia', '81-986', 'piotr.majewski68@uczen.pl', '606841114', 'koszykówka'),
(69, 'Szewczyk', 'Karolina', '2008-12-02', 'Opole', '45-374', 'karolina.szewczyk69@uczen.pl', '606923355', 'programowanie'),
(70, 'Lewandowski', 'Maja', '2006-12-09', 'Rzeszów', '35-896', 'maja.lewandowski70@uczen.pl', '807051037', 'robotyka'),
(71, 'Michalski', 'Magdalena', '2010-05-17', 'Białystok', '15-061', 'magdalena.michalski71@uczen.pl', '807166769', 'czytanie książek'),
(72, 'Rutkowski', 'Tomasz', '2007-07-07', 'Bielsko-Biała', '43-002', 'tomasz.rutkowski72@uczen.pl', '707290972', 'film'),
(73, 'Woźniak', 'Igor', '2007-03-23', 'Wrocław', '50-554', 'igor.wozniak73@uczen.pl', '707366174', 'tenis'),
(74, 'Sikora', 'Paweł', '2006-09-14', 'Gdynia', '81-824', 'pawel.sikora74@uczen.pl', '807462133', 'informatyka'),
(75, 'Zieliński', 'Marcel', '2010-08-01', 'Sopot', '81-626', 'marcel.zielinski75@uczen.pl', '507598000', 'czytanie książek'),
(76, 'Nowak', 'Adam', '2009-09-21', 'Bydgoszcz', '85-716', 'adam.nowak76@uczen.pl', '607657390', 'taniec'),
(77, 'Michalski', 'Monika', '2007-09-04', 'Zielona Góra', '65-576', 'monika.michalski77@uczen.pl', '807752479', 'robotyka'),
(78, 'Wojciechowski', 'Martyna', '2009-09-10', 'Sopot', '81-855', 'martyna.wojciechowski78@uczen.pl', '507893505', 'film'),
(79, 'Kozłowski', 'Karolina', '2007-04-16', 'Poznań', '60-337', 'karolina.kozlowski79@uczen.pl', '607917564', 'taniec'),
(80, 'Kaczmarek', 'Szymon', '2010-05-13', 'Płock', '09-053', 'szymon.kaczmarek80@uczen.pl', '808093919', 'piłka nożna'),
(81, 'Wiśniewski', 'Łukasz', '2009-08-05', 'Bielsko-Biała', '43-151', 'lukasz.wisniewski81@uczen.pl', '508178195', 'informatyka'),
(82, 'Mazur', 'Franciszek', '2008-07-23', 'Opole', '45-413', 'franciszek.mazur82@uczen.pl', '808216774', 'gotowanie'),
(83, 'Kozłowski', 'Katarzyna', '2009-03-31', 'Opole', '45-642', 'katarzyna.kozlowski83@uczen.pl', '808335304', 'rysowanie'),
(84, 'Rutkowski', 'Kamil', '2008-03-22', 'Płock', '09-907', 'kamil.rutkowski84@uczen.pl', '808474149', 'gotowanie'),
(85, 'Bąk', 'Agnieszka', '2006-10-27', 'Łódź', '90-401', 'agnieszka.bak85@uczen.pl', '708544908', 'film'),
(86, 'Wieczorek', 'Natalia', '2008-04-29', 'Katowice', '40-349', 'natalia.wieczorek86@uczen.pl', '708680978', 'piłka nożna'),
(87, 'Wieczorek', 'Oliwia', '2009-03-15', 'Płock', '09-798', 'oliwia.wieczorek87@uczen.pl', '608748380', 'siatkówka'),
(88, 'Wojciechowski', 'Adam', '2006-08-05', 'Radom', '26-149', 'adam.wojciechowski88@uczen.pl', '708865736', 'malarstwo'),
(89, 'Stępień', 'Nikola', '2008-09-15', 'Łódź', '90-278', 'nikola.stepien89@uczen.pl', '808930475', 'czytanie książek'),
(90, 'Krawczyk', 'Igor', '2007-10-29', 'Warszawa', '00-014', 'igor.krawczyk90@uczen.pl', '509093406', 'film'),
(91, 'Wieczorek', 'Anna', '2006-12-19', 'Szczecin', '70-407', 'anna.wieczorek91@uczen.pl', '709135424', 'koszykówka'),
(92, 'Nowakowski', 'Martyna', '2006-04-14', 'Olsztyn', '10-178', 'martyna.nowakowski92@uczen.pl', '609274068', 'malarstwo'),
(93, 'Dąbrowski', 'Dawid', '2008-04-13', 'Łódź', '90-233', 'dawid.dabrowski93@uczen.pl', '609367744', 'jazda konna'),
(94, 'Baran', 'Igor', '2009-02-09', 'Białystok', '15-334', 'igor.baran94@uczen.pl', '809499850', 'gry komputerowe'),
(95, 'Jaworski', 'Wiktoria', '2009-02-11', 'Opole', '45-192', 'wiktoria.jaworski95@uczen.pl', '509570301', 'gotowanie'),
(96, 'Lis', 'Franciszek', '2008-10-03', 'Gdańsk', '80-242', 'franciszek.lis96@uczen.pl', '709657284', 'pływanie'),
(97, 'Lis', 'Krzysztof', '2008-09-14', 'Lublin', '20-022', 'krzysztof.lis97@uczen.pl', '809756923', 'gotowanie'),
(98, 'Lewandowski', 'Magdalena', '2006-09-24', 'Sopot', '81-747', 'magdalena.lewandowski98@uczen.pl', '609844847', 'modelarstwo'),
(99, 'Michalski', 'Jakub', '2007-02-04', 'Bydgoszcz', '85-667', 'jakub.michalski99@uczen.pl', '809978485', 'film'),
(100, 'Lewandowski', 'Kamil', '2008-09-10', 'Białystok', '15-814', 'kamil.lewandowski100@uczen.pl', '810070014', 'tenis'),
(101, 'Bąk', 'Agnieszka', '2006-10-09', 'Warszawa', '00-986', 'agnieszka.bak101@uczen.pl', '710182756', 'gry komputerowe'),
(102, 'Wiśniewski', 'Szymon', '2009-07-25', 'Opole', '45-627', 'szymon.wisniewski102@uczen.pl', '810236762', 'jazda konna'),
(103, 'Wróbel', 'Antoni', '2009-03-08', 'Białystok', '15-114', 'antoni.wrobel103@uczen.pl', '510394997', 'taniec'),
(104, 'Piotrowski', 'Dawid', '2008-03-21', 'Rzeszów', '35-448', 'dawid.piotrowski104@uczen.pl', '710458483', 'piłka nożna'),
(105, 'Rutkowski', 'Maja', '2008-03-03', 'Wrocław', '50-966', 'maja.rutkowski105@uczen.pl', '610517917', 'malarstwo'),
(106, 'Jaworski', 'Szymon', '2009-01-04', 'Opole', '45-664', 'szymon.jaworski106@uczen.pl', '510635560', 'czytanie książek'),
(107, 'Zieliński', 'Maja', '2006-01-17', 'Szczecin', '70-847', 'maja.zielinski107@uczen.pl', '710710732', 'taniec'),
(108, 'Wróbel', 'Amelia', '2008-10-05', 'Warszawa', '00-021', 'amelia.wrobel108@uczen.pl', '510868684', 'programowanie'),
(109, 'Nowak', 'Filip', '2006-07-28', 'Gliwice', '44-396', 'filip.nowak109@uczen.pl', '810956103', 'bieganie'),
(110, 'Kozłowski', 'Filip', '2010-01-20', 'Toruń', '87-161', 'filip.kozlowski110@uczen.pl', '711059446', 'robotyka'),
(111, 'Górski', 'Antoni', '2007-06-04', 'Rzeszów', '35-099', 'antoni.gorski111@uczen.pl', '711199088', 'szachy'),
(112, 'Mazur', 'Monika', '2010-04-13', 'Płock', '09-826', 'monika.mazur112@uczen.pl', '711225282', 'jazda na rowerze'),
(113, 'Dąbrowski', 'Anna', '2010-12-28', 'Kraków', '30-163', 'anna.dabrowski113@uczen.pl', '511374802', 'czytanie książek'),
(114, 'Majewski', 'Piotr', '2009-06-07', 'Warszawa', '00-082', 'piotr.majewski114@uczen.pl', '811449658', 'malarstwo'),
(115, 'Wieczorek', 'Natalia', '2009-02-04', 'Szczecin', '70-057', 'natalia.wieczorek115@uczen.pl', '611515538', 'siatkówka'),
(116, 'Kwiatkowski', 'Maria', '2007-08-10', 'Opole', '45-474', 'maria.kwiatkowski116@uczen.pl', '611653148', 'jazda konna'),
(117, 'Kozłowski', 'Monika', '2007-12-17', 'Sopot', '81-060', 'monika.kozlowski117@uczen.pl', '811731231', 'gotowanie'),
(118, 'Górski', 'Dawid', '2010-11-05', 'Kraków', '30-351', 'dawid.gorski118@uczen.pl', '711893199', 'robotyka'),
(119, 'Kaczmarek', 'Zuzanna', '2010-10-30', 'Wrocław', '50-452', 'zuzanna.kaczmarek119@uczen.pl', '711986043', 'informatyka'),
(120, 'Szewczyk', 'Julia', '2006-03-31', 'Kielce', '25-084', 'julia.szewczyk120@uczen.pl', '812083438', 'rysowanie'),
(121, 'Woźniak', 'Maciej', '2007-09-12', 'Radom', '26-651', 'maciej.wozniak121@uczen.pl', '712123931', 'jazda konna'),
(122, 'Kwiatkowski', 'Oliwia', '2007-04-14', 'Gdynia', '81-372', 'oliwia.kwiatkowski122@uczen.pl', '512271667', 'malarstwo'),
(123, 'Wójcik', 'Bartosz', '2008-07-30', 'Toruń', '87-958', 'bartosz.wojcik123@uczen.pl', '812318823', 'szachy'),
(124, 'Szymański', 'Dominika', '2009-09-27', 'Kielce', '25-420', 'dominika.szymanski124@uczen.pl', '712467442', 'malarstwo'),
(125, 'Olszewski', 'Maria', '2007-01-20', 'Gliwice', '44-885', 'maria.olszewski125@uczen.pl', '712571004', 'motoryzacja'),
(126, 'Kaczmarek', 'Jan', '2009-09-07', 'Białystok', '15-669', 'jan.kaczmarek126@uczen.pl', '712643132', 'siatkówka'),
(127, 'Jabłoński', 'Tomasz', '2010-06-21', 'Płock', '09-902', 'tomasz.jablonski127@uczen.pl', '812722690', 'gry komputerowe'),
(128, 'Zieliński', 'Łukasz', '2009-04-13', 'Białystok', '15-561', 'lukasz.zielinski128@uczen.pl', '712896923', 'robotyka'),
(129, 'Baran', 'Martyna', '2009-08-05', 'Częstochowa', '42-959', 'martyna.baran129@uczen.pl', '812979928', 'bieganie'),
(130, 'Krawczyk', 'Antoni', '2008-06-11', 'Rzeszów', '35-054', 'antoni.krawczyk130@uczen.pl', '813030314', 'informatyka'),
(131, 'Szewczyk', 'Szymon', '2008-01-13', 'Zielona Góra', '65-458', 'szymon.szewczyk131@uczen.pl', '713155548', 'film'),
(132, 'Wójcik', 'Piotr', '2010-03-23', 'Rzeszów', '35-779', 'piotr.wojcik132@uczen.pl', '813230588', 'robotyka'),
(133, 'Jabłoński', 'Mateusz', '2006-05-01', 'Bielsko-Biała', '43-032', 'mateusz.jablonski133@uczen.pl', '513324918', 'fotografia'),
(134, 'Stępień', 'Krzysztof', '2007-04-02', 'Gdańsk', '80-764', 'krzysztof.stepien134@uczen.pl', '713440882', 'programowanie'),
(135, 'Wójcik', 'Maria', '2006-02-08', 'Lublin', '20-310', 'maria.wojcik135@uczen.pl', '713574067', 'rysowanie'),
(136, 'Sikora', 'Maciej', '2007-05-13', 'Poznań', '60-175', 'maciej.sikora136@uczen.pl', '713699398', 'gitara'),
(137, 'Lis', 'Tomasz', '2007-02-23', 'Zielona Góra', '65-048', 'tomasz.lis137@uczen.pl', '613725586', 'programowanie'),
(138, 'Krawczyk', 'Weronika', '2009-07-29', 'Lublin', '20-349', 'weronika.krawczyk138@uczen.pl', '513839967', 'taniec'),
(139, 'Kwiatkowski', 'Maciej', '2008-12-06', 'Olsztyn', '10-809', 'maciej.kwiatkowski139@uczen.pl', '713915355', 'bieganie'),
(140, 'Rutkowski', 'Igor', '2006-11-06', 'Toruń', '87-999', 'igor.rutkowski140@uczen.pl', '614044617', 'modelarstwo'),
(141, 'Król', 'Kamil', '2007-07-15', 'Gliwice', '44-911', 'kamil.krol141@uczen.pl', '514173857', 'malarstwo'),
(142, 'Jabłoński', 'Antoni', '2008-06-04', 'Katowice', '40-219', 'antoni.jablonski142@uczen.pl', '514251252', 'gotowanie'),
(143, 'Wójcik', 'Kamil', '2007-04-27', 'Gdynia', '81-498', 'kamil.wojcik143@uczen.pl', '614382119', 'koszykówka'),
(144, 'Sikora', 'Maria', '2008-05-04', 'Toruń', '87-516', 'maria.sikora144@uczen.pl', '814484934', 'muzyka'),
(145, 'Bąk', 'Antoni', '2008-06-23', 'Białystok', '15-836', 'antoni.bak145@uczen.pl', '614547156', 'modelarstwo'),
(146, 'Piotrowski', 'Paweł', '2007-01-30', 'Bydgoszcz', '85-892', 'pawel.piotrowski146@uczen.pl', '514694983', 'szachy'),
(147, 'Piotrowski', 'Maciej', '2008-12-15', 'Opole', '45-541', 'maciej.piotrowski147@uczen.pl', '514724236', 'taniec'),
(148, 'Dąbrowski', 'Martyna', '2008-10-05', 'Zielona Góra', '65-330', 'martyna.dabrowski148@uczen.pl', '814833960', 'pływanie'),
(149, 'Kaczmarek', 'Nikola', '2009-11-21', 'Gliwice', '44-016', 'nikola.kaczmarek149@uczen.pl', '514943888', 'szachy'),
(150, 'Kwiatkowski', 'Paweł', '2008-03-15', 'Gdynia', '81-638', 'pawel.kwiatkowski150@uczen.pl', '515079869', 'siatkówka'),
(151, 'Stępień', 'Wiktoria', '2006-02-22', 'Sopot', '81-271', 'wiktoria.stepien151@uczen.pl', '515147332', 'motoryzacja'),
(152, 'Kamiński', 'Piotr', '2008-12-17', 'Sopot', '81-710', 'piotr.kaminski152@uczen.pl', '515259868', 'modelarstwo'),
(153, 'Król', 'Julia', '2010-12-19', 'Katowice', '40-379', 'julia.krol153@uczen.pl', '715393453', 'motoryzacja'),
(154, 'Zieliński', 'Szymon', '2007-02-22', 'Olsztyn', '10-504', 'szymon.zielinski154@uczen.pl', '815411120', 'podróże'),
(155, 'Lewandowski', 'Adam', '2010-12-23', 'Rzeszów', '35-277', 'adam.lewandowski155@uczen.pl', '515510481', 'programowanie'),
(156, 'Stępień', 'Katarzyna', '2009-04-24', 'Zielona Góra', '65-311', 'katarzyna.stepien156@uczen.pl', '515680961', 'taniec'),
(157, 'Wieczorek', 'Oliwia', '2007-09-11', 'Łódź', '90-445', 'oliwia.wieczorek157@uczen.pl', '715742879', 'siatkówka'),
(158, 'Baran', 'Szymon', '2007-01-22', 'Gdynia', '81-047', 'szymon.baran158@uczen.pl', '815812491', 'robotyka'),
(159, 'Bąk', 'Patrycja', '2006-05-12', 'Sopot', '81-584', 'patrycja.bak159@uczen.pl', '515945908', 'podróże'),
(160, 'Michalski', 'Łukasz', '2006-12-03', 'Kielce', '25-678', 'lukasz.michalski160@uczen.pl', '816055070', 'taniec'),
(161, 'Górski', 'Paweł', '2006-07-24', 'Wrocław', '50-085', 'pawel.gorski161@uczen.pl', '516153982', 'bieganie'),
(162, 'Górski', 'Amelia', '2006-09-23', 'Kraków', '30-384', 'amelia.gorski162@uczen.pl', '516231530', 'czytanie książek'),
(163, 'Baran', 'Antoni', '2006-11-14', 'Gliwice', '44-201', 'antoni.baran163@uczen.pl', '616325502', 'robotyka'),
(164, 'Szewczyk', 'Agnieszka', '2006-10-06', 'Poznań', '60-775', 'agnieszka.szewczyk164@uczen.pl', '816458226', 'podróże'),
(165, 'Mazur', 'Antoni', '2010-06-26', 'Gdańsk', '80-111', 'antoni.mazur165@uczen.pl', '516525156', 'programowanie'),
(166, 'Wiśniewski', 'Zuzanna', '2006-10-26', 'Kraków', '30-314', 'zuzanna.wisniewski166@uczen.pl', '816640916', 'gry komputerowe'),
(167, 'Kamiński', 'Szymon', '2007-11-14', 'Katowice', '40-293', 'szymon.kaminski167@uczen.pl', '516711945', 'muzyka'),
(168, 'Lewandowski', 'Weronika', '2006-08-18', 'Opole', '45-327', 'weronika.lewandowski168@uczen.pl', '816891660', 'taniec'),
(169, 'Czarnecki', 'Patrycja', '2006-06-27', 'Szczecin', '70-260', 'patrycja.czarnecki169@uczen.pl', '616946879', 'bieganie'),
(170, 'Lis', 'Jakub', '2008-01-25', 'Gdańsk', '80-728', 'jakub.lis170@uczen.pl', '717035478', 'pływanie'),
(171, 'Sikora', 'Monika', '2009-07-13', 'Bydgoszcz', '85-649', 'monika.sikora171@uczen.pl', '617131158', 'jazda na rowerze'),
(172, 'Nowak', 'Julia', '2008-01-03', 'Częstochowa', '42-991', 'julia.nowak172@uczen.pl', '517237745', 'muzyka'),
(173, 'Kowalski', 'Maciej', '2008-05-03', 'Wrocław', '50-350', 'maciej.kowalski173@uczen.pl', '717350999', 'gotowanie'),
(174, 'Majewski', 'Wiktoria', '2008-08-19', 'Bydgoszcz', '85-123', 'wiktoria.majewski174@uczen.pl', '817455122', 'gotowanie'),
(175, 'Zieliński', 'Amelia', '2008-09-20', 'Zielona Góra', '65-467', 'amelia.zielinski175@uczen.pl', '817539935', 'robotyka'),
(176, 'Olszewski', 'Franciszek', '2009-01-03', 'Zabrze', '41-361', 'franciszek.olszewski176@uczen.pl', '717653738', 'robotyka'),
(177, 'Dąbrowski', 'Filip', '2009-02-01', 'Sopot', '81-652', 'filip.dabrowski177@uczen.pl', '817745917', 'motoryzacja'),
(178, 'Król', 'Dominika', '2006-10-25', 'Wrocław', '50-805', 'dominika.krol178@uczen.pl', '617874279', 'rysowanie'),
(179, 'Szewczyk', 'Katarzyna', '2010-07-03', 'Katowice', '40-656', 'katarzyna.szewczyk179@uczen.pl', '517992631', 'informatyka'),
(180, 'Majewski', 'Wiktoria', '2006-01-15', 'Wrocław', '50-654', 'wiktoria.majewski180@uczen.pl', '518078388', 'pływanie'),
(181, 'Nowak', 'Amelia', '2007-08-05', 'Zabrze', '41-040', 'amelia.nowak181@uczen.pl', '818185390', 'siatkówka'),
(182, 'Górski', 'Piotr', '2007-05-25', 'Wrocław', '50-972', 'piotr.gorski182@uczen.pl', '818276881', 'programowanie'),
(183, 'Kaczmarek', 'Oliwia', '2008-12-14', 'Olsztyn', '10-686', 'oliwia.kaczmarek183@uczen.pl', '818370791', 'robotyka'),
(184, 'Lewandowski', 'Zuzanna', '2008-08-18', 'Częstochowa', '42-992', 'zuzanna.lewandowski184@uczen.pl', '818459881', 'fotografia'),
(185, 'Szymański', 'Marcel', '2008-10-05', 'Opole', '45-985', 'marcel.szymanski185@uczen.pl', '818597683', 'muzyka'),
(186, 'Kwiatkowski', 'Wiktoria', '2006-09-18', 'Szczecin', '70-845', 'wiktoria.kwiatkowski186@uczen.pl', '518653947', 'koszykówka'),
(187, 'Nowakowski', 'Dominika', '2008-06-25', 'Kielce', '25-261', 'dominika.nowakowski187@uczen.pl', '518781335', 'koszykówka'),
(188, 'Czarnecki', 'Michał', '2006-03-28', 'Olsztyn', '10-430', 'michal.czarnecki188@uczen.pl', '818822847', 'rysowanie'),
(189, 'Michalski', 'Kamil', '2009-03-07', 'Wrocław', '50-528', 'kamil.michalski189@uczen.pl', '818934422', 'podróże'),
(190, 'Nowakowski', 'Szymon', '2006-04-07', 'Płock', '09-666', 'szymon.nowakowski190@uczen.pl', '619016697', 'jazda na rowerze'),
(191, 'Nowakowski', 'Krzysztof', '2007-03-09', 'Kraków', '30-097', 'krzysztof.nowakowski191@uczen.pl', '619112378', 'rysowanie'),
(192, 'Nowakowski', 'Franciszek', '2009-07-21', 'Kielce', '25-478', 'franciszek.nowakowski192@uczen.pl', '619210693', 'gry komputerowe'),
(193, 'Jaworski', 'Adam', '2010-02-05', 'Kraków', '30-117', 'adam.jaworski193@uczen.pl', '819368703', 'gotowanie'),
(194, 'Olszewski', 'Dominika', '2008-06-26', 'Toruń', '87-347', 'dominika.olszewski194@uczen.pl', '519425936', 'rysowanie'),
(195, 'Król', 'Nikola', '2008-10-30', 'Opole', '45-518', 'nikola.krol195@uczen.pl', '619573589', 'programowanie'),
(196, 'Szewczyk', 'Martyna', '2009-09-14', 'Poznań', '60-320', 'martyna.szewczyk196@uczen.pl', '619616393', 'gotowanie'),
(197, 'Baran', 'Dawid', '2009-12-19', 'Zabrze', '41-136', 'dawid.baran197@uczen.pl', '719777405', 'fotografia'),
(198, 'Kaczmarek', 'Szymon', '2007-02-02', 'Olsztyn', '10-553', 'szymon.kaczmarek198@uczen.pl', '519870268', 'fotografia'),
(199, 'Wieczorek', 'Igor', '2006-12-01', 'Radom', '26-520', 'igor.wieczorek199@uczen.pl', '619914720', 'taniec'),
(200, 'Kozłowski', 'Monika', '2009-11-13', 'Częstochowa', '42-894', 'monika.kozlowski200@uczen.pl', '720071217', 'informatyka'),
(201, 'Mazur', 'Maja', '2009-07-06', 'Kielce', '25-116', 'maja.mazur201@uczen.pl', '620133181', 'czytanie książek'),
(202, 'Majewski', 'Maria', '2010-02-12', 'Szczecin', '70-439', 'maria.majewski202@uczen.pl', '620233840', 'taniec'),
(203, 'Sikora', 'Martyna', '2008-06-02', 'Bielsko-Biała', '43-299', 'martyna.sikora203@uczen.pl', '520381406', 'programowanie'),
(204, 'Jankowski', 'Zuzanna', '2007-11-17', 'Zielona Góra', '65-542', 'zuzanna.jankowski204@uczen.pl', '720481464', 'malarstwo'),
(205, 'Grabowski', 'Kamil', '2007-02-12', 'Lublin', '20-991', 'kamil.grabowski205@uczen.pl', '720573625', 'gry komputerowe'),
(206, 'Nowak', 'Igor', '2009-08-24', 'Lublin', '20-277', 'igor.nowak206@uczen.pl', '620653888', 'czytanie książek'),
(207, 'Majewski', 'Jan', '2006-10-04', 'Gdańsk', '80-200', 'jan.majewski207@uczen.pl', '720760585', 'czytanie książek'),
(208, 'Lis', 'Wiktoria', '2006-05-05', 'Radom', '26-962', 'wiktoria.lis208@uczen.pl', '620875196', 'programowanie'),
(209, 'Jankowski', 'Patrycja', '2007-01-06', 'Zabrze', '41-526', 'patrycja.jankowski209@uczen.pl', '520961605', 'robotyka'),
(210, 'Kaczmarek', 'Igor', '2009-01-16', 'Toruń', '87-147', 'igor.kaczmarek210@uczen.pl', '521021656', 'malarstwo'),
(211, 'Jabłoński', 'Piotr', '2009-12-15', 'Lublin', '20-879', 'piotr.jablonski211@uczen.pl', '621168231', 'czytanie książek'),
(212, 'Nowak', 'Łukasz', '2008-04-13', 'Zielona Góra', '65-700', 'lukasz.nowak212@uczen.pl', '521231633', 'piłka nożna'),
(213, 'Wójcik', 'Maria', '2007-07-05', 'Łódź', '90-760', 'maria.wojcik213@uczen.pl', '821315917', 'fotografia'),
(214, 'Nowak', 'Michał', '2006-08-26', 'Częstochowa', '42-075', 'michal.nowak214@uczen.pl', '721435645', 'gry komputerowe'),
(215, 'Jaworski', 'Anna', '2008-06-16', 'Częstochowa', '42-478', 'anna.jaworski215@uczen.pl', '621515932', 'koszykówka'),
(216, 'Kwiatkowski', 'Weronika', '2009-06-04', 'Bielsko-Biała', '43-213', 'weronika.kwiatkowski216@uczen.pl', '521666742', 'gry komputerowe'),
(217, 'Nowakowski', 'Tomasz', '2006-01-16', 'Warszawa', '00-475', 'tomasz.nowakowski217@uczen.pl', '721743693', 'tenis'),
(218, 'Stępień', 'Franciszek', '2006-03-16', 'Wrocław', '50-397', 'franciszek.stepien218@uczen.pl', '621832923', 'muzyka'),
(219, 'Wieczorek', 'Karolina', '2010-08-25', 'Kraków', '30-404', 'karolina.wieczorek219@uczen.pl', '521967176', 'pływanie'),
(220, 'Lis', 'Mateusz', '2006-05-01', 'Gdańsk', '80-799', 'mateusz.lis220@uczen.pl', '622060147', 'muzyka'),
(221, 'Sikora', 'Maciej', '2008-04-25', 'Szczecin', '70-922', 'maciej.sikora221@uczen.pl', '722167230', 'motoryzacja'),
(222, 'Woźniak', 'Mateusz', '2006-05-14', 'Płock', '09-042', 'mateusz.wozniak222@uczen.pl', '822273925', 'tenis'),
(223, 'Jankowski', 'Jakub', '2010-07-20', 'Warszawa', '00-368', 'jakub.jankowski223@uczen.pl', '822319980', 'pływanie'),
(224, 'Wiśniewski', 'Magdalena', '2007-02-01', 'Opole', '45-359', 'magdalena.wisniewski224@uczen.pl', '722413348', 'malarstwo'),
(225, 'Wojciechowski', 'Wiktoria', '2007-11-05', 'Gdańsk', '80-311', 'wiktoria.wojciechowski225@uczen.pl', '822562325', 'szachy'),
(226, 'Jankowski', 'Michał', '2010-07-26', 'Poznań', '60-926', 'michal.jankowski226@uczen.pl', '522624054', 'rysowanie'),
(227, 'Jaworski', 'Maciej', '2008-09-12', 'Kraków', '30-204', 'maciej.jaworski227@uczen.pl', '622768611', 'motoryzacja'),
(228, 'Zieliński', 'Piotr', '2010-10-21', 'Sopot', '81-361', 'piotr.zielinski228@uczen.pl', '622887135', 'jazda konna'),
(229, 'Rutkowski', 'Bartosz', '2007-03-29', 'Częstochowa', '42-181', 'bartosz.rutkowski229@uczen.pl', '722912631', 'tenis'),
(230, 'Wojciechowski', 'Dawid', '2009-03-25', 'Lublin', '20-212', 'dawid.wojciechowski230@uczen.pl', '823024380', 'koszykówka'),
(231, 'Kowalski', 'Bartosz', '2010-05-20', 'Zabrze', '41-104', 'bartosz.kowalski231@uczen.pl', '723149674', 'taniec'),
(232, 'Wójcik', 'Patrycja', '2007-08-16', 'Bielsko-Biała', '43-362', 'patrycja.wojcik232@uczen.pl', '823247836', 'taniec'),
(233, 'Sikora', 'Antoni', '2007-03-05', 'Sopot', '81-029', 'antoni.sikora233@uczen.pl', '723365345', 'motoryzacja'),
(234, 'Majewski', 'Filip', '2008-06-17', 'Kielce', '25-969', 'filip.majewski234@uczen.pl', '623436376', 'tenis'),
(235, 'Jaworski', 'Paweł', '2009-05-30', 'Kraków', '30-428', 'pawel.jaworski235@uczen.pl', '623527746', 'muzyka'),
(236, 'Pawłowski', 'Adam', '2006-03-02', 'Opole', '45-498', 'adam.pawlowski236@uczen.pl', '823615567', 'rysowanie'),
(237, 'Jankowski', 'Franciszek', '2010-08-20', 'Katowice', '40-888', 'franciszek.jankowski237@uczen.pl', '523734391', 'muzyka'),
(238, 'Wieczorek', 'Piotr', '2009-04-17', 'Zielona Góra', '65-398', 'piotr.wieczorek238@uczen.pl', '623831538', 'gotowanie'),
(239, 'Kamiński', 'Maja', '2006-08-19', 'Lublin', '20-119', 'maja.kaminski239@uczen.pl', '723950527', 'gry komputerowe'),
(240, 'Olszewski', 'Patrycja', '2006-03-04', 'Rzeszów', '35-770', 'patrycja.olszewski240@uczen.pl', '624084458', 'programowanie'),
(241, 'Jankowski', 'Katarzyna', '2009-09-28', 'Gliwice', '44-792', 'katarzyna.jankowski241@uczen.pl', '824152273', 'pływanie'),
(242, 'Lewandowski', 'Łukasz', '2007-10-21', 'Zabrze', '41-236', 'lukasz.lewandowski242@uczen.pl', '724233692', 'gotowanie'),
(243, 'Pawłowski', 'Jakub', '2009-08-22', 'Gdynia', '81-203', 'jakub.pawlowski243@uczen.pl', '724316335', 'fotografia'),
(244, 'Malinowski', 'Martyna', '2007-07-22', 'Zabrze', '41-739', 'martyna.malinowski244@uczen.pl', '724484776', 'informatyka'),
(245, 'Rutkowski', 'Szymon', '2008-04-16', 'Warszawa', '00-781', 'szymon.rutkowski245@uczen.pl', '624572800', 'jazda konna'),
(246, 'Czarnecki', 'Patrycja', '2008-06-30', 'Szczecin', '70-652', 'patrycja.czarnecki246@uczen.pl', '724666254', 'gotowanie'),
(247, 'Krawczyk', 'Igor', '2006-03-05', 'Lublin', '20-067', 'igor.krawczyk247@uczen.pl', '624749872', 'film'),
(248, 'Szymański', 'Oliwia', '2008-07-29', 'Gliwice', '44-196', 'oliwia.szymanski248@uczen.pl', '524815304', 'koszykówka'),
(249, 'Olszewski', 'Agnieszka', '2008-03-11', 'Radom', '26-029', 'agnieszka.olszewski249@uczen.pl', '724948354', 'robotyka'),
(250, 'Jankowski', 'Adam', '2010-04-24', 'Lublin', '20-945', 'adam.jankowski250@uczen.pl', '625049120', 'muzyka'),
(251, 'Wiśniewski', 'Patrycja', '2010-06-09', 'Poznań', '60-437', 'patrycja.wisniewski251@uczen.pl', '825140469', 'robotyka'),
(252, 'Kowalczyk', 'Patrycja', '2006-03-11', 'Lublin', '20-747', 'patrycja.kowalczyk252@uczen.pl', '725237196', 'szachy'),
(253, 'Kowalski', 'Magdalena', '2009-01-20', 'Warszawa', '00-791', 'magdalena.kowalski253@uczen.pl', '625353183', 'taniec'),
(254, 'Baran', 'Michał', '2009-06-18', 'Toruń', '87-618', 'michal.baran254@uczen.pl', '725483641', 'rysowanie'),
(255, 'Dąbrowski', 'Agnieszka', '2008-11-19', 'Bielsko-Biała', '43-540', 'agnieszka.dabrowski255@uczen.pl', '725577533', 'taniec'),
(256, 'Grabowski', 'Magdalena', '2010-04-19', 'Zielona Góra', '65-591', 'magdalena.grabowski256@uczen.pl', '825624688', 'fotografia'),
(257, 'Nowak', 'Antoni', '2007-02-17', 'Płock', '09-630', 'antoni.nowak257@uczen.pl', '625756732', 'tenis'),
(258, 'Stępień', 'Weronika', '2009-05-24', 'Bydgoszcz', '85-943', 'weronika.stepien258@uczen.pl', '725840296', 'bieganie'),
(259, 'Zieliński', 'Szymon', '2006-05-17', 'Toruń', '87-380', 'szymon.zielinski259@uczen.pl', '525963376', 'robotyka'),
(260, 'Kamiński', 'Aleksandra', '2009-07-20', 'Szczecin', '70-656', 'aleksandra.kaminski260@uczen.pl', '526086310', 'taniec'),
(261, 'Krawczyk', 'Jakub', '2010-12-05', 'Białystok', '15-889', 'jakub.krawczyk261@uczen.pl', '726132221', 'szachy'),
(262, 'Kozłowski', 'Natalia', '2006-08-11', 'Bielsko-Biała', '43-290', 'natalia.kozlowski262@uczen.pl', '826224237', 'bieganie'),
(263, 'Wojciechowski', 'Weronika', '2007-02-04', 'Kielce', '25-047', 'weronika.wojciechowski263@uczen.pl', '626315480', 'szachy'),
(264, 'Nowakowski', 'Monika', '2008-07-14', 'Zabrze', '41-693', 'monika.nowakowski264@uczen.pl', '826497083', 'programowanie'),
(265, 'Rutkowski', 'Martyna', '2006-04-18', 'Warszawa', '00-344', 'martyna.rutkowski265@uczen.pl', '526562150', 'gry komputerowe'),
(266, 'Sikora', 'Bartosz', '2009-03-07', 'Płock', '09-786', 'bartosz.sikora266@uczen.pl', '726668694', 'film'),
(267, 'Sikora', 'Monika', '2009-11-30', 'Białystok', '15-436', 'monika.sikora267@uczen.pl', '826782683', 'robotyka'),
(268, 'Kwiatkowski', 'Weronika', '2008-11-09', 'Szczecin', '70-949', 'weronika.kwiatkowski268@uczen.pl', '526855129', 'czytanie książek'),
(269, 'Stępień', 'Maciej', '2010-01-09', 'Radom', '26-957', 'maciej.stepien269@uczen.pl', '626976252', 'informatyka'),
(270, 'Wojciechowski', 'Zuzanna', '2009-05-10', 'Białystok', '15-804', 'zuzanna.wojciechowski270@uczen.pl', '527053651', 'muzyka'),
(271, 'Szymański', 'Julia', '2010-04-26', 'Zabrze', '41-402', 'julia.szymanski271@uczen.pl', '627140957', 'bieganie'),
(272, 'Bąk', 'Anna', '2009-10-29', 'Radom', '26-344', 'anna.bak272@uczen.pl', '627298524', 'robotyka'),
(273, 'Kamiński', 'Dawid', '2009-10-07', 'Białystok', '15-318', 'dawid.kaminski273@uczen.pl', '827334703', 'piłka nożna'),
(274, 'Kowalski', 'Igor', '2006-10-08', 'Kraków', '30-287', 'igor.kowalski274@uczen.pl', '727477369', 'muzyka'),
(275, 'Rutkowski', 'Łukasz', '2008-08-26', 'Częstochowa', '42-955', 'lukasz.rutkowski275@uczen.pl', '727528704', 'gitara'),
(276, 'Piotrowski', 'Weronika', '2010-05-06', 'Gdynia', '81-031', 'weronika.piotrowski276@uczen.pl', '527633465', 'rysowanie'),
(277, 'Malinowski', 'Maciej', '2009-09-18', 'Zielona Góra', '65-754', 'maciej.malinowski277@uczen.pl', '727771742', 'muzyka'),
(278, 'Jabłoński', 'Dominika', '2006-10-24', 'Toruń', '87-266', 'dominika.jablonski278@uczen.pl', '627825872', 'jazda na rowerze'),
(279, 'Woźniak', 'Natalia', '2008-01-13', 'Toruń', '87-986', 'natalia.wozniak279@uczen.pl', '827954584', 'czytanie książek'),
(280, 'Kamiński', 'Anna', '2009-07-13', 'Bielsko-Biała', '43-249', 'anna.kaminski280@uczen.pl', '728038800', 'motoryzacja'),
(281, 'Pawłowski', 'Anna', '2010-03-11', 'Lublin', '20-692', 'anna.pawlowski281@uczen.pl', '728186038', 'malarstwo'),
(282, 'Rutkowski', 'Bartosz', '2007-08-02', 'Poznań', '60-591', 'bartosz.rutkowski282@uczen.pl', '828299315', 'koszykówka'),
(283, 'Górski', 'Julia', '2007-03-09', 'Częstochowa', '42-438', 'julia.gorski283@uczen.pl', '528328623', 'szachy'),
(284, 'Pawłowski', 'Adam', '2006-12-15', 'Sopot', '81-046', 'adam.pawlowski284@uczen.pl', '728497889', 'podróże'),
(285, 'Lis', 'Dawid', '2010-07-06', 'Warszawa', '00-496', 'dawid.lis285@uczen.pl', '628560112', 'informatyka'),
(286, 'Woźniak', 'Franciszek', '2010-03-27', 'Szczecin', '70-877', 'franciszek.wozniak286@uczen.pl', '528613297', 'bieganie'),
(287, 'Sikora', 'Natalia', '2008-07-04', 'Płock', '09-252', 'natalia.sikora287@uczen.pl', '728730545', 'jazda na rowerze'),
(288, 'Wiśniewski', 'Aleksandra', '2008-01-04', 'Szczecin', '70-045', 'aleksandra.wisniewski288@uczen.pl', '728830130', 'fotografia'),
(289, 'Wiśniewski', 'Kamil', '2009-01-27', 'Poznań', '60-957', 'kamil.wisniewski289@uczen.pl', '628964263', 'film'),
(290, 'Zieliński', 'Nikola', '2009-10-03', 'Płock', '09-777', 'nikola.zielinski290@uczen.pl', '629071980', 'jazda na rowerze'),
(291, 'Krawczyk', 'Amelia', '2007-04-21', 'Warszawa', '00-062', 'amelia.krawczyk291@uczen.pl', '529144543', 'siatkówka'),
(292, 'Lis', 'Martyna', '2010-03-04', 'Zielona Góra', '65-083', 'martyna.lis292@uczen.pl', '529231208', 'motoryzacja'),
(293, 'Kozłowski', 'Filip', '2009-01-26', 'Poznań', '60-187', 'filip.kozlowski293@uczen.pl', '529367858', 'taniec'),
(294, 'Baran', 'Szymon', '2010-12-26', 'Gdynia', '81-909', 'szymon.baran294@uczen.pl', '529482098', 'robotyka'),
(295, 'Zieliński', 'Monika', '2009-08-24', 'Rzeszów', '35-253', 'monika.zielinski295@uczen.pl', '529556780', 'jazda na rowerze'),
(296, 'Krawczyk', 'Michał', '2007-05-22', 'Bydgoszcz', '85-421', 'michal.krawczyk296@uczen.pl', '829628259', 'taniec'),
(297, 'Michalski', 'Łukasz', '2010-08-29', 'Radom', '26-032', 'lukasz.michalski297@uczen.pl', '529740384', 'szachy'),
(298, 'Mazur', 'Weronika', '2009-10-11', 'Szczecin', '70-757', 'weronika.mazur298@uczen.pl', '829820860', 'motoryzacja'),
(299, 'Kaczmarek', 'Adam', '2006-07-11', 'Kielce', '25-954', 'adam.kaczmarek299@uczen.pl', '829963878', 'modelarstwo'),
(300, 'Rutkowski', 'Igor', '2010-12-30', 'Poznań', '60-543', 'igor.rutkowski300@uczen.pl', '630025492', 'podróże'),
(301, 'Nowak', 'Marek', '2006-10-11', 'Łódź', '00-000', 'marek_nowak301@uczen.pl', '111111111', 'Bieganie'),
(302, 'Krawczyk', 'Szymon', '2007-09-10', 'Warszawa', '00-001', 'szymon_krawczyk302@uczen.pl', '222222222', 'Jazda na rowerze'),
(303, 'Linda', 'Bogusław', '2005-05-06', 'Wrocław', '10-000', 'boguslaw_linda303@uczen.pl', '333333333', 'Programowanie'),
(304, 'Lewandowski', 'Robert', '2009-06-12', 'Gdańsk', '00-100', 'robert_lewandowski304@uczen.pl', '999999999', 'Pływanie'),
(305, 'Szymczyk', 'Szymon', '2010-04-21', 'Szczecin', '04-050', 'szymon_szymczyk305@uczen.pl', '741278459', 'Bieganie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `adresy`
--
ALTER TABLE `adresy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`auto_id`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adresy`
--
ALTER TABLE `adresy`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auto`
--
ALTER TABLE `auto`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `uczniowie`
--
ALTER TABLE `uczniowie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
