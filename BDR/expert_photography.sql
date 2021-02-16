-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2018 at 08:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expert_photography`
--

-- --------------------------------------------------------

--
-- Table structure for table `albume`
--

CREATE TABLE `albume` (
  `ID_album` int(3) NOT NULL,
  `ID_fotografie` int(3) NOT NULL,
  `Cod_album` int(11) NOT NULL,
  `Forma` varchar(15) NOT NULL,
  `Dimensiune` varchar(10) NOT NULL,
  `Numar_pagini` int(5) NOT NULL,
  `Pret` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albume`
--

INSERT INTO `albume` (`ID_album`, `ID_fotografie`, `Cod_album`, `Forma`, `Dimensiune`, `Numar_pagini`, `Pret`) VALUES
(1, 1, 13035, 'Patrat', '14 x 14 cm', 8, '95 lei'),
(1, 2, 13618, 'Patrat', '14 x 14 cm', 16, '105 lei'),
(3, 3, 13900, 'Patrat', '14 x 14 cm', 24, '115 lei'),
(3, 4, 15296, 'Patrat', '20 x 20 cm', 8, '145 lei'),
(5, 5, 15600, 'Patrat', '20 x 20 cm', 16, '155 lei'),
(6, 6, 15894, 'Patrat', '20 x 20 cm', 24, '165 lei'),
(6, 7, 17052, 'Patrat', '29 x 29 cm', 8, '195 lei'),
(6, 9, 17522, 'Patrat', '29 x 29 cm', 16, '205 lei'),
(8, 10, 17710, 'Patrat', '29 x 29 cm', 24, '215 lei'),
(8, 11, 34220, 'Panoramic', '21 x 14 cm', 8, '95 lei'),
(11, 12, 34421, 'Panoramic', '21 x 14 cm', 16, '105 lei'),
(11, 13, 34792, 'Panoramic', '21 x 14 cm', 24, '115 lei'),
(18, 14, 38001, 'Panoramic', '28 x 21 cm', 8, '145 lei'),
(18, 15, 38205, 'Panoramic', '28 x 21 cm', 16, '155 lei'),
(18, 16, 38511, 'Panoramic', '28 x 21 cm', 24, '165 lei'),
(5, 17, 51049, 'Portret', '21 x 28 cm', 8, '145 lei'),
(1, 18, 55317, 'Portret', '21 x 28 cm', 16, '155 lei'),
(18, 19, 56729, 'Portret', '21 x 28 cm', 24, '165 lei'),
(17, 20, 57100, 'Portret', '21 x 28 cm', 32, '175 lei'),
(17, 8, 59333, 'Portret', '21 x 28 cm', 40, '185 lei');

-- --------------------------------------------------------

--
-- Table structure for table `clienti`
--

CREATE TABLE `clienti` (
  `ID_Client` int(11) NOT NULL,
  `Nume` varchar(20) NOT NULL,
  `Prenume` varchar(30) NOT NULL,
  `Varsta` int(3) NOT NULL,
  `Telefon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clienti`
--

INSERT INTO `clienti` (`ID_Client`, `Nume`, `Prenume`, `Varsta`, `Telefon`) VALUES
(1, 'Argint ', 'Cornel', 35, '0721 604 652'),
(2, 'Arion', 'Adrian', 44, '0755 381 990'),
(3, 'Avram', 'Vasile', 25, '0787 220 117'),
(4, 'Badea', 'Nicolae', 38, '0724 045 162'),
(5, 'Bicu', 'Aida', 30, '0742 837 901'),
(6, 'Cernat ', 'Mihai', 28, '0722 734 100'),
(7, 'Coatu', 'Sorin', 20, '0742 063 985'),
(8, 'Cobzaru ', 'Alina', 44, '0724 301 840'),
(9, 'Florea', 'Ionel', 33, '0732 591 744'),
(10, 'Giurgiu ', 'Valer', 28, '0787 193 750'),
(11, 'Lunca', 'Eduard', 30, '0742 840 054'),
(12, 'Macovei', 'Gheorghe', 34, '0742 057 221'),
(13, 'Manea', 'Lucian', 24, '0724 994 773'),
(14, 'Marinescu', 'Andrei', 29, '0787 422 007'),
(15, 'Popescu ', 'Claudia', 28, '0742 044 255'),
(16, 'Popescu', 'Mihaela', 26, '0724 918 467'),
(17, 'Racasan', 'Nicoleta', 30, '0742 661 756'),
(18, 'Simion', 'Emil', 32, '0742 118 553'),
(19, 'Ursea', 'Lucian', 28, '0722 801 734'),
(20, 'Voicu', 'Violeta', 27, '0787 442 778');

-- --------------------------------------------------------

--
-- Table structure for table `fotografi`
--

CREATE TABLE `fotografi` (
  `ID` int(11) NOT NULL,
  `Prenume` varchar(30) NOT NULL,
  `Nume` varchar(20) NOT NULL,
  `Experienta` varchar(15) NOT NULL,
  `Telefon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fotografi`
--

INSERT INTO `fotografi` (`ID`, `Prenume`, `Nume`, `Experienta`, `Telefon`) VALUES
(1, 'Adela ', 'Rusu', '1 an', '0722 502 774'),
(2, 'Adrian', 'Lupea', '1 an', '0724 057 110'),
(3, 'Alexandra ', 'Pasca', '3 ani', '0735 880 441'),
(4, 'Bogdan ', 'Octavian', '6 luni', '0724 059 443'),
(5, 'Calin-Andrei', 'Stan', '2 ani', '0787 581 003'),
(6, 'Camelia', 'Popescu', '5 ani', '0735 812 791'),
(7, 'Ciprian', 'Cenan', '2 ani', '0722 678 024'),
(8, 'Cosmin', 'Gogu', '1 an', '0724 069 981'),
(9, 'Diana', 'Stanciu', '10 luni', '0724 051773'),
(10, 'Dragos', 'Boldea', '6 luni', '0787 628 999'),
(11, 'Elena ', 'Hirtan', '2 ani', '0724 065 228'),
(12, 'Florin', 'Constantinescu', '2 ani', '0722 006 117'),
(13, 'Gabriel', 'Stanciu', '3 ani', '0735 771 336'),
(14, 'Iulian ', 'Arion', '3 ani', '0724 184 092'),
(15, 'Mihai', 'Moiceanu', '5 ani', '0787 537 865'),
(16, 'Narcis', 'Virgiliu', '3 ani', '0735 001 885'),
(17, 'Paul ', 'Padurariu', '4 ani', '0787 491 773'),
(18, 'Ramona', 'Butilca', '3 ani', '0722 938 741'),
(19, 'Steluta', 'Popescu', '8 luni', '0744 602 896'),
(20, 'Razvan', 'Trupoiu', '5 ani', '0787 852 987');

-- --------------------------------------------------------

--
-- Table structure for table `fotografii`
--

CREATE TABLE `fotografii` (
  `ID_fotografie` int(3) NOT NULL,
  `ID_fotograf` int(11) NOT NULL,
  `Denumire_fotografie` varchar(10) NOT NULL,
  `Rezolutie` varchar(10) NOT NULL,
  `Dimensiune` varchar(10) NOT NULL,
  `Data` date NOT NULL,
  `Locatie` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fotografii`
--

INSERT INTO `fotografii` (`ID_fotografie`, `ID_fotograf`, `Denumire_fotografie`, `Rezolutie`, `Dimensiune`, `Data`, `Locatie`) VALUES
(1, 5, 'ADS_0454', '6000x4000', '16.8 MB', '2018-04-01', 'Plopu, Romania'),
(2, 5, 'ADS_0517', '6000x4000', '712 kb', '2018-04-07', 'Plopu, Romania'),
(3, 5, 'ADS_0519', '6000x4000', '663 KB', '2018-04-07', 'Plopu, Romania'),
(4, 9, 'ADS_0538', '4496x3000', '7.96 MB', '2018-04-07', 'Plopu, Romania'),
(5, 9, 'ADS_0553', '6000x4000', '8.10 MB', '2018-04-07', 'Plopu, Romania'),
(6, 17, 'ADS_0583', '3000x4996', '13.3 MB', '2018-04-07', 'Plopu, Romania'),
(7, 14, 'ADS_0650', '6000x4000', '22.3 MB', '2018-04-07', 'Plopu, Romania'),
(8, 14, 'ADS_0651', '4000x6000', '16.1 MB', '2018-04-07', 'Plopu, Romania'),
(9, 17, 'ADS_0886', '6000x4000', '16.7 MB', '2018-03-31', 'Plopu, Romania'),
(10, 14, 'ADS_0728', '6000x4000', '23 MB', '2018-05-07', 'Plopu, Prahova'),
(11, 20, 'ADS_0990', '6000x4000', '15.1 MB', '2018-04-14', 'Plopu, Prahova'),
(12, 20, 'ADS_1007', '6000x4000', '36 MB', '2018-04-17', 'Ploiesti, Prahova'),
(13, 20, 'ADS_1016', '6000x4000', '25.1 MB', '2018-04-17', 'Ploiesti, Prahova'),
(14, 20, 'ADS_1041', '6000x4000', '15.2 MB', '2018-04-17', 'Ploiesti, Prahova'),
(15, 20, 'ADS_1054', '6000x4000', '34.9 MB', '2018-04-17', 'Ploiesti, Prahova'),
(16, 20, 'ADS_1067', '6000x4000', '16.3 MB', '2018-04-17', 'Ploiesti, Prahova'),
(17, 20, 'ADS_1085', '6000x4000', '18.2 MB', '2018-04-17', 'Ploiesti, Prahova'),
(18, 20, 'ADS_0056', '6000x4000', '13 MB', '2018-04-21', 'Mehedinta, Prahova'),
(19, 20, 'ADS_1073', '6000x4000', '23.5 MB', '2018-05-20', 'Seciu, Prahova'),
(20, 20, 'ADS_1072', '6000x4000', '22.9 MB', '2018-04-17', 'Ploiesti, Prahova');

-- --------------------------------------------------------

--
-- Table structure for table `sedinte_foto`
--

CREATE TABLE `sedinte_foto` (
  `ID_Sedinta_foto` int(3) NOT NULL,
  `ID_fotograf` int(11) NOT NULL,
  `Numar` int(11) NOT NULL,
  `Tip` varchar(20) NOT NULL,
  `Locatie` varchar(30) NOT NULL,
  `Pret` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sedinte_foto`
--

INSERT INTO `sedinte_foto` (`ID_Sedinta_foto`, `ID_fotograf`, `Numar`, `Tip`, `Locatie`, `Pret`) VALUES
(1, 20, 5, 'Portret/Evenimente', 'Ploiesti', '30/300 lei'),
(2, 1, 12, 'Landscapes', 'Ploiesti', '100 lei'),
(3, 2, 10, 'Portret/Evenimente', 'Ploiesti', '100/800 lei'),
(4, 3, 3, 'Portret/Evenimente', 'Ploiesti', '50/300 lei'),
(5, 4, 21, 'Portret', 'Ploiesti', '150 lei'),
(6, 5, 7, 'Landscapes', 'Bucuresti', '200 lei'),
(7, 6, 30, 'Portret', 'Bucuresti', '80 lei'),
(8, 7, 14, 'Evenimente', 'Bucuresti', '500 lei'),
(9, 8, 5, 'Portret/Evenimente', 'Bucuresti', '100/800 lei'),
(10, 9, 18, 'Evenimente', 'Bucuresti', '1000 lei'),
(11, 10, 27, 'Portret', 'Constanta', '100 lei'),
(12, 11, 4, 'Evenimente', 'Constanta', '700 lei'),
(13, 12, 22, 'Landscapes/Portret', 'Constanta', '200/200 lei'),
(14, 13, 11, 'Evenimente', 'Constanta', '1000 lei'),
(15, 14, 10, 'PortretEvenimente', 'Cluj-Napoca', '90/600 lei'),
(16, 15, 7, 'Landscapes', 'Cluj-Napoca', '150 lei'),
(17, 16, 5, 'Evenimente', 'Iasi', '450 lei'),
(18, 17, 2, 'Portret', 'Iasi', '50 lei'),
(19, 18, 17, 'Evenimente', 'Timisoara', '1000 lei'),
(20, 19, 20, 'Portret/Evenimente', 'Timisoara', '120/800 lei');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albume`
--
ALTER TABLE `albume`
  ADD PRIMARY KEY (`Cod_album`),
  ADD KEY `ID_fotografie` (`ID_album`),
  ADD KEY `ID_fotografie_2` (`ID_fotografie`);

--
-- Indexes for table `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`ID_Client`);

--
-- Indexes for table `fotografi`
--
ALTER TABLE `fotografi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fotografii`
--
ALTER TABLE `fotografii`
  ADD PRIMARY KEY (`ID_fotografie`),
  ADD KEY `ID_fotograf` (`ID_fotograf`);

--
-- Indexes for table `sedinte_foto`
--
ALTER TABLE `sedinte_foto`
  ADD PRIMARY KEY (`ID_Sedinta_foto`),
  ADD KEY `ID_fotograf` (`ID_fotograf`),
  ADD KEY `Numar` (`Numar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fotografi`
--
ALTER TABLE `fotografi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `albume`
--
ALTER TABLE `albume`
  ADD CONSTRAINT `albume_ibfk_1` FOREIGN KEY (`ID_album`) REFERENCES `clienti` (`ID_Client`);

--
-- Constraints for table `fotografii`
--
ALTER TABLE `fotografii`
  ADD CONSTRAINT `fotografii_ibfk_1` FOREIGN KEY (`ID_fotograf`) REFERENCES `fotografi` (`ID`),
  ADD CONSTRAINT `fotografii_ibfk_2` FOREIGN KEY (`ID_fotografie`) REFERENCES `albume` (`ID_fotografie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sedinte_foto`
--
ALTER TABLE `sedinte_foto`
  ADD CONSTRAINT `sedinte_foto_ibfk_1` FOREIGN KEY (`ID_fotograf`) REFERENCES `fotografi` (`ID`),
  ADD CONSTRAINT `sedinte_foto_ibfk_2` FOREIGN KEY (`ID_Sedinta_foto`) REFERENCES `clienti` (`ID_Client`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
