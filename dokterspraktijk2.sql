-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 26, 2024 at 06:09 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dokterspraktijk2`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultaties`
--

CREATE TABLE `consultaties` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `starttijd` datetime NOT NULL,
  `eindtijd` datetime NOT NULL,
  `klachten` varchar(128) NOT NULL,
  `diagnose` varchar(128) NOT NULL,
  `bedrag` decimal(12,0) NOT NULL,
  `betaald` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consultaties`
--

INSERT INTO `consultaties` (`id`, `patient_id`, `starttijd`, `eindtijd`, `klachten`, `diagnose`, `bedrag`, `betaald`) VALUES
(7, 7, '2024-06-21 14:12:26', '2024-06-21 14:31:47', 'aaa', 'aaa', '11', 0),
(8, 7, '2024-06-21 14:31:54', '2024-06-21 14:32:12', 'AAAAA', 'aa', '6', 0),
(9, 12, '2024-06-21 18:17:47', '2024-06-21 18:18:50', 'auw', 'pijn', '11', 0),
(10, 7, '2024-06-21 18:19:56', '2024-06-21 18:20:23', 'test', 'test', '111', 1),
(11, 7, '2024-06-21 18:23:43', '2024-06-21 18:24:19', 'test', 'test', '11', 1),
(12, 7, '2024-06-24 14:39:43', '2024-06-24 14:41:04', 'blablalbla', 'pijn', '2000', 1),
(13, 7, '2024-06-25 16:46:01', '2024-06-25 16:47:38', 'test', 'test', '35', 0),
(14, 7, '2024-06-25 16:56:05', '2024-06-25 16:56:21', 'test', 'testttt', '228', 0),
(15, 7, '2024-06-25 16:56:05', '2024-06-25 16:59:35', 'test', 'testttt', '228', 0),
(16, 7, '2024-06-25 17:10:18', '2024-06-25 17:11:39', 'Hoofdpijn , keelpijn', 'Sinusitus ', '212', 0),
(17, 7, '2024-06-25 17:10:18', '2024-06-25 17:12:11', 'Hoofdpijn , keelpijn', 'Sinusitus ', '212', 0),
(18, 7, '2024-06-25 17:10:18', '2024-06-25 17:12:13', 'Hoofdpijn , keelpijn', 'Sinusitus ', '212', 0),
(19, 7, '2024-06-25 17:10:18', '2024-06-25 17:12:31', 'Hoofdpijn , keelpijn', 'Sinusitus ', '212', 0),
(20, 7, '2024-06-25 18:43:09', '2024-06-25 18:43:46', 'azeaez', 'azeaezaeaeza', '22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `consultatie_medicatie`
--

CREATE TABLE `consultatie_medicatie` (
  `consultatie_id` int(11) NOT NULL,
  `medicatie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consultatie_medicatie`
--

INSERT INTO `consultatie_medicatie` (`consultatie_id`, `medicatie_id`) VALUES
(14, 3),
(15, 3),
(16, 8),
(17, 8),
(18, 8),
(19, 8),
(20, 13);

-- --------------------------------------------------------

--
-- Table structure for table `consultatie_onderzoeken`
--

CREATE TABLE `consultatie_onderzoeken` (
  `consultatie_id` int(11) NOT NULL,
  `onderzoek_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consultatie_onderzoeken`
--

INSERT INTO `consultatie_onderzoeken` (`consultatie_id`, `onderzoek_id`) VALUES
(14, 2),
(14, 4),
(15, 2),
(15, 4),
(16, 3),
(16, 5),
(17, 3),
(17, 5),
(18, 3),
(18, 5),
(19, 3),
(19, 5),
(20, 1),
(20, 2),
(20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `medicatie`
--

CREATE TABLE `medicatie` (
  `id` int(11) NOT NULL,
  `name` varchar(36) NOT NULL,
  `dosage` varchar(255) DEFAULT NULL,
  `description` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicatie`
--

INSERT INTO `medicatie` (`id`, `name`, `dosage`, `description`) VALUES
(1, 'Paracetamol', '600 mg', 'Pijnstiller en koortsverlagend middel'),
(2, 'Ibuprofen', '400 mg', 'Ontstekingsremmend en pijnstillend'),
(3, 'Amoxicilline', '250 mg', 'Antibioticum voor bacteriële infecties'),
(4, 'Metformine', '850 mg', 'Voor behandeling van diabetes type 2'),
(5, 'Simvastatine', '20 mg', 'Verlaagt cholesterolgehalte in het bloed'),
(6, 'Omeprazol', '20 mg', 'Maagzuurremmer'),
(7, 'Atenolol', '50 mg', 'Behandeling van hoge bloeddruk en hartklachten'),
(8, 'Cetirizine', '10 mg', 'Tegen allergische reacties'),
(9, 'Furosemide', '40 mg', 'Plasmiddel'),
(10, 'Diclofenac', '50 mg', 'Ontstekingsremmer en pijnstiller'),
(11, 'Levothyroxine', '100 mcg', 'Voor schildklierproblemen'),
(12, 'Sertraline', '50 mg', 'Antidepressivum'),
(13, 'Amlodipine', '5 mg', 'Voor hoge bloeddruk en angina pectoris'),
(14, 'Esomeprazol', '40 mg', 'Maagzuurremmer'),
(15, 'Losartan', '50 mg', 'Behandeling van hoge bloeddruk'),
(16, 'Tramadol', '100 mg', 'Pijnstiller'),
(17, 'Prednisolon', '20 mg', 'Ontstekingsremmer'),
(18, 'Claritromycine', '500 mg', 'Antibioticum voor bacteriële infecties'),
(19, 'Salbutamol', '100 mcg', 'Voor astma en andere longziekten'),
(20, 'Warfarine', '5 mg', 'Bloedverdunner'),
(21, 'Crack', '100mg', 'Cocaine');

-- --------------------------------------------------------

--
-- Table structure for table `onderzoeken`
--

CREATE TABLE `onderzoeken` (
  `id` int(11) NOT NULL,
  `nomenclatuur` int(24) DEFAULT NULL,
  `beschrijving` varchar(128) NOT NULL,
  `prijs` float NOT NULL,
  `last_patient` int(11) NOT NULL,
  `last_riziv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `onderzoeken`
--

INSERT INTO `onderzoeken` (`id`, `nomenclatuur`, `beschrijving`, `prijs`, `last_patient`, `last_riziv`) VALUES
(1, 123456, 'Routine bloedonderzoek', 45, 25, 75),
(2, 234567, 'Urineonderzoek', 30, 10, 90),
(3, 345678, 'Röntgenfoto', 80, 40, 60),
(4, 456789, 'MRI-scan', 250, 90, 10),
(5, 567890, 'CT-scan', 200, 90, 10),
(6, 678901, 'Echografie', 100, 50, 50),
(7, 789012, 'Hartslagmeter onderzoek', 60, 30, 70),
(8, 890123, 'Longfunctietest', 70, 35, 65),
(9, 901234, 'Allergietest', 55, 70, 30),
(10, 102345, 'Oogonderzoek', 40, 20, 80);

-- --------------------------------------------------------

--
-- Table structure for table `patienten`
--

CREATE TABLE `patienten` (
  `id` int(11) NOT NULL,
  `rr` varchar(255) NOT NULL,
  `familienaam` varchar(24) NOT NULL,
  `voornaam` varchar(24) NOT NULL,
  `straatnaam` varchar(64) NOT NULL,
  `huisnr` int(12) NOT NULL,
  `plaats_id` int(11) NOT NULL,
  `geslacht` varchar(12) NOT NULL,
  `geboortedatum` date NOT NULL,
  `gmd` text,
  `email` varchar(48) NOT NULL,
  `telefoon` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patienten`
--

INSERT INTO `patienten` (`id`, `rr`, `familienaam`, `voornaam`, `straatnaam`, `huisnr`, `plaats_id`, `geslacht`, `geboortedatum`, `gmd`, `email`, `telefoon`) VALUES
(7, '97110231194', 'Cedric', 'Bral', 'KorteLeemstraat', 12, 2, 'male', '1997-11-02', '', 'cedric.bral@gmail.com', '0470442166'),
(8, '12345678901', 'Marie', 'Bruins', 'KorteLeemstraat', 13, 101, 'female', '2000-04-25', '', 'mariebruins25@gmail.com', '0446456788'),
(12, '12334487754', 'Mark', 'Daems', 'Sint-Jacobsmarkt', 123, 2, 'female', '1991-11-11', '', 'cedric.bral@gmail.com', '0470442166'),
(13, '22334455668', 'testtest', 'Fatih', 'test', 123, 2, 'male', '2012-12-12', '/', 'test@mensana.be', '0470442144');

-- --------------------------------------------------------

--
-- Table structure for table `plaatsen`
--

CREATE TABLE `plaatsen` (
  `id` int(11) NOT NULL,
  `postcode` int(4) NOT NULL,
  `woonplaats` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plaatsen`
--

INSERT INTO `plaatsen` (`id`, `postcode`, `woonplaats`) VALUES
(2, 2000, 'Antwerpen'),
(3, 3000, 'Leuven'),
(4, 4000, 'Luik'),
(5, 5000, 'Namen'),
(6, 6000, 'Charleroi'),
(7, 7000, 'Mons'),
(8, 8000, 'Brugge'),
(9, 9000, 'Gent'),
(10, 1000, 'Brussel'),
(11, 1050, 'Elsene'),
(12, 1030, 'Schaarbeek'),
(13, 1180, 'Ukkel'),
(14, 1210, 'Sint-Joost-ten-Node'),
(15, 1080, 'Sint-Jans-Molenbeek'),
(16, 3500, 'Hasselt'),
(17, 8400, 'Oostende'),
(18, 9100, 'Sint-Niklaas'),
(19, 2300, 'Turnhout'),
(20, 2800, 'Mechelen'),
(21, 1500, 'Halle'),
(22, 9200, 'Dendermonde'),
(23, 3800, 'Sint-Truiden'),
(24, 3800, 'Tongeren'),
(25, 1500, 'Vilvoorde'),
(26, 9000, 'Aalst'),
(27, 1700, 'Dilbeek'),
(28, 1930, 'Zaventem'),
(29, 2200, 'Herentals'),
(30, 9300, 'Aalst'),
(31, 9100, 'Lokeren'),
(32, 8500, 'Kortrijk'),
(33, 2500, 'Lier'),
(34, 2500, 'Roeselare'),
(35, 3500, 'Genk'),
(36, 3700, 'Tongeren'),
(37, 1000, 'Anderlecht'),
(38, 3400, 'Landen'),
(39, 6000, 'La Louvière'),
(40, 6530, 'Thuin'),
(41, 8000, 'Roeselare'),
(42, 8500, 'Waregem'),
(43, 8900, 'Ieper'),
(44, 9100, 'Beveren'),
(45, 9200, 'Eeklo'),
(46, 9300, 'Aalst'),
(47, 9400, 'Ninove'),
(48, 9500, 'Geraardsbergen'),
(49, 9700, 'Oudenaarde'),
(50, 9900, 'Eeklo'),
(51, 1500, 'Asse'),
(52, 1600, 'Sint-Pieters-Leeuw'),
(53, 1800, 'Vilvoorde'),
(54, 2200, 'Geel'),
(55, 2400, 'Mol'),
(56, 2440, 'Geel'),
(57, 2500, 'Lier'),
(58, 3000, 'Tienen'),
(59, 3290, 'Diest'),
(60, 3700, 'Borgloon'),
(61, 3800, 'Sint-Truiden'),
(62, 3930, 'Hamont-Achel'),
(63, 4000, 'Seraing'),
(64, 4020, 'Waremme'),
(65, 4100, 'Seraing'),
(66, 4300, 'Waremme'),
(67, 4500, 'Huy'),
(68, 4600, 'Visé'),
(69, 4700, 'Eupen'),
(70, 4800, 'Verviers'),
(71, 4900, 'Spa'),
(72, 5000, 'Gembloux'),
(73, 5100, 'Namen'),
(74, 5300, 'Andenne'),
(75, 5500, 'Dinant'),
(76, 5600, 'Philippeville'),
(77, 5700, 'Chimay'),
(78, 5800, 'Couvin'),
(79, 6000, 'Binche'),
(80, 6200, 'Châtelet'),
(81, 6600, 'Bastogne'),
(82, 6700, 'Arlon'),
(83, 6800, 'Libramont-Chevigny'),
(84, 6900, 'Marche-en-Famenne'),
(85, 7000, 'Bergen'),
(86, 7100, 'La Louvière'),
(87, 7130, 'Binche'),
(88, 7300, 'Boussu'),
(89, 7330, 'Saint-Ghislain'),
(90, 7500, 'Tournai'),
(91, 7600, 'Péruwelz'),
(92, 7700, 'Mouscron'),
(93, 7800, 'Ath'),
(94, 7900, 'Leuze-en-Hainaut'),
(95, 8000, 'Kortrijk'),
(96, 8300, 'Knokke-Heist'),
(97, 8500, 'Deinze'),
(98, 8900, 'Poperinge'),
(99, 9500, 'Ronse'),
(100, 9700, 'Zottegem'),
(101, 2018, 'Antwerpen'),
(102, 2900, 'Schoten');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `surname` varchar(36) NOT NULL,
  `name` varchar(36) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `surname`, `name`, `password`, `email`) VALUES
(1, 'Bral', 'admin', 'godmode', 'admin@mensana.be');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultaties`
--
ALTER TABLE `consultaties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `consultatie_medicatie`
--
ALTER TABLE `consultatie_medicatie`
  ADD KEY `consultatie_id` (`consultatie_id`),
  ADD KEY `medicatie_id` (`medicatie_id`);

--
-- Indexes for table `consultatie_onderzoeken`
--
ALTER TABLE `consultatie_onderzoeken`
  ADD KEY `consultatie_id` (`consultatie_id`),
  ADD KEY `onderzoek_id` (`onderzoek_id`);

--
-- Indexes for table `medicatie`
--
ALTER TABLE `medicatie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onderzoeken`
--
ALTER TABLE `onderzoeken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patienten`
--
ALTER TABLE `patienten`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rr` (`rr`),
  ADD KEY `plaats_id` (`plaats_id`);

--
-- Indexes for table `plaatsen`
--
ALTER TABLE `plaatsen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consultaties`
--
ALTER TABLE `consultaties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `medicatie`
--
ALTER TABLE `medicatie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `onderzoeken`
--
ALTER TABLE `onderzoeken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patienten`
--
ALTER TABLE `patienten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `plaatsen`
--
ALTER TABLE `plaatsen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consultaties`
--
ALTER TABLE `consultaties`
  ADD CONSTRAINT `consultaties_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patienten` (`id`);

--
-- Constraints for table `consultatie_medicatie`
--
ALTER TABLE `consultatie_medicatie`
  ADD CONSTRAINT `consultatie_medicatie_ibfk_1` FOREIGN KEY (`consultatie_id`) REFERENCES `consultaties` (`id`),
  ADD CONSTRAINT `consultatie_medicatie_ibfk_2` FOREIGN KEY (`medicatie_id`) REFERENCES `medicatie` (`id`);

--
-- Constraints for table `consultatie_onderzoeken`
--
ALTER TABLE `consultatie_onderzoeken`
  ADD CONSTRAINT `consultatie_onderzoeken_ibfk_1` FOREIGN KEY (`consultatie_id`) REFERENCES `consultaties` (`id`),
  ADD CONSTRAINT `consultatie_onderzoeken_ibfk_2` FOREIGN KEY (`onderzoek_id`) REFERENCES `onderzoeken` (`id`);

--
-- Constraints for table `patienten`
--
ALTER TABLE `patienten`
  ADD CONSTRAINT `patienten_ibfk_1` FOREIGN KEY (`plaats_id`) REFERENCES `plaatsen` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
