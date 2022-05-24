-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 24, 2022 at 12:10 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `rank` int(11) NOT NULL,
  `accessCode` int(11) NOT NULL,
  `ID` char(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`rank`, `accessCode`, `ID`) VALUES
(2, 7813, 'A07813'),
(2, 8948, 'A08948'),
(2, 8994, 'A08994'),
(2, 2787, 'A02787'),
(2, 7582, 'A07582'),
(1, 7998, 'A07998');

-- --------------------------------------------------------

--
-- Table structure for table `checks`
--

DROP TABLE IF EXISTS `checks`;
CREATE TABLE IF NOT EXISTS `checks` (
  `SNN` int(11) NOT NULL,
  `ID` varchar(6) NOT NULL,
  PRIMARY KEY (`SNN`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checks`
--

INSERT INTO `checks` (`SNN`, `ID`) VALUES
(107889, '107889'),
(293847538, '108472'),
(293854384, '107889'),
(593848373, '103921');

-- --------------------------------------------------------

--
-- Table structure for table `cleaning`
--

DROP TABLE IF EXISTS `cleaning`;
CREATE TABLE IF NOT EXISTS `cleaning` (
  `groupNo` int(11) NOT NULL,
  `ID` char(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cleaning`
--

INSERT INTO `cleaning` (`groupNo`, `ID`) VALUES
(1, '703921'),
(1, '704201'),
(2, '704234'),
(2, '709424');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`name`) VALUES
('Merck & Co.'),
('Novartis'),
('Roche'),
('Sanofi');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `name` varchar(11) NOT NULL,
  `number` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`name`, `number`, `rooms`) VALUES
('OPD', 1, 5),
('IP', 2, 4),
('NursingD', 3, 4),
('PharmacyD', 4, 2),
('NonProff', 5, 6),
('Personnel', 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `level` varchar(11) NOT NULL,
  `Specialization` varchar(11) NOT NULL,
  `degree` varchar(11) NOT NULL,
  `ID` char(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`level`, `Specialization`, `degree`, `ID`) VALUES
('Senior', 'cardiology', 'Medical', '107889'),
('Fresh', 'immunology', 'Medical', '107123'),
('Senior', 'surgery', 'Medical', '107782'),
('Junior', 'surgery', 'Medical', '103921'),
('Senior', 'Neurology', 'Medical', '107223'),
('Fresh', 'Family', 'Medical', '108472');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `FN` varchar(11) NOT NULL,
  `MN` varchar(11) NOT NULL,
  `LN` varchar(11) NOT NULL,
  `workHours` int(11) NOT NULL,
  `city` varchar(11) NOT NULL,
  `st` varchar(11) NOT NULL,
  `block` int(11) NOT NULL,
  `ID` char(6) NOT NULL,
  `Salary` int(11) NOT NULL,
  `employmentDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`FN`, `MN`, `LN`, `workHours`, `city`, `st`, `block`, `ID`, `Salary`, `employmentDate`) VALUES
('Ahmed', 'Hussein', 'Ziad', 5, 'Cairo', 'Tomanbai st', 4, '103921', 10000, '2011-02-01'),
('Nahed', 'Ahmed', 'Hussein', 5, 'Cairo', 'freeRoad st', 4, '107123', 10000, '2012-07-05'),
('Mustafa', 'Mohamed', 'Zeidan', 5, 'Cairo', 'SO st', 3, 'A07998', 20000, '2001-05-26'),
('Mohamed', 'Elsaeed', 'Ahmed', 5, 'Cairo', 'Old Park', 4, '107782', 10000, '2010-02-01'),
('Nahed', 'Ahmed', 'Hussein', 5, 'Cairo', 'freeRoad st', 4, '107223', 10000, '2012-07-05'),
('Hossam', 'Kamel', 'Seif', 5, 'Alexandria', 'Fit st', 2, '108472', 15625, '2004-02-28'),
('Rana', 'Mohamed', 'Walid', 5, 'Cairo', 'Round5 st', 3, 'A08994', 10000, '2011-02-05'),
('Mohamed', 'Hatem', 'Zakaria', 5, 'Cairo', 'Round6 st', 2, 'A07582', 10000, '2001-03-05'),
('Mahmoud', 'Abdalla', 'Mohaseb', 5, 'Cairo', 'Round5 st', 3, 'A02787', 10000, '2001-05-05'),
('Omar', 'Mohamed', 'Ibrahim', 5, 'Cairo', 'Round5 st', 3, 'A07813', 10000, '2011-02-05'),
('Karen', 'Alber', 'Farid', 5, 'Cairo', 'Round5 st', 1, 'A08948', 10000, '2002-03-04'),
('Makram', 'Younes', 'Ibrahim', 4, 'Alexandria', 'Fee st', 2, '209321', 10938, '2001-02-04'),
('Mariam', 'Ayyub', 'Ibrahim', 4, 'Cairo', 'Fesal st', 2, '201321', 7000, '2001-02-04'),
('Thamina', 'Mohamed', 'Nabil', 4, 'Alexandria', 'Nader st', 2, '204324', 10938, '2001-02-04'),
('Alaa', 'Ahmed', 'Hamed', 4, 'Cairo', 'Hos st', 2, '209532', 7000, '2004-02-04'),
('Ahmed', 'Ali', 'Mohamed', 4, 'Cairo', 'Lee st', 2, '201234', 7000, '2004-02-04'),
('Ahmed', 'Ibrahim', 'Harb', 4, 'Alexandria', 'Aly st', 2, '205436', 10938, '2011-02-04'),
('Said', 'Hashem', 'Said', 4, 'Alexandria', 'Omar st', 2, '209666', 10938, '2011-02-04'),
('Ali', 'Ahmed', 'Mohamed', 4, 'Cairo', 'Kat st', 2, '203465', 7000, '2012-02-04'),
('Ahmed', 'Tarek', 'Mohamed', 6, 'Cairo', 'TRee st', 6, '306572', 3000, '2003-02-01'),
('Kareem', 'Ahmed', 'Zenhom', 6, 'Alexandria', 'Groom st', 4, '302231', 4688, '2003-02-01'),
('Fathy', 'Kareem', 'Saeed', 6, 'Cairo', 'Brok st', 5, '306232', 3000, '2003-02-01'),
('Abdelrahman', 'Gamil', 'Mohamed', 6, 'Cairo', 'TRee st', 6, '303142', 3000, '2007-01-01'),
('Randa', 'Sedky', 'Fahim', 6, 'Cairo', 'SecondR', 6, '309192', 3000, '2005-02-01'),
('Osama', 'Elsayed', 'Osama', 6, 'Cairo', 'Fahmy st', 6, '306759', 3000, '2009-02-01'),
('Zein', 'Ahmed', 'Bahrawy', 6, 'Alexandria', 'Farouk st', 3, '402913', 3125, '2002-01-02'),
('Jumana', 'Hazem', 'Osama', 6, 'Cairo', 'Masry st', 1, '403213', 2000, '2002-01-02'),
('Hussein', 'Salem', 'Ahmed', 6, 'Cairo', 'Saeed st', 3, '402233', 2000, '2002-01-02'),
('Mohamed', 'Said', 'Kamel', 6, 'Cairo', 'Nader st', 3, '402833', 2000, '2002-01-02'),
('Mohamed', 'Ahmed', 'Nagy', 6, 'Cairo', 'Salem', 4, '503123', 4000, '2001-02-03'),
('Fahmy', 'Farid', 'Fady', 6, 'Cairo', 'Sobhy st', 4, '503932', 4000, '2001-02-03'),
('Maher', 'Mohamed', 'Tarek', 6, 'Cairo', 'Fathy st', 4, '508462', 4000, '2006-02-03'),
('Gamil', 'Ahmed', 'Sameh', 6, 'Cairo', 'Nagy st', 4, '508374', 4000, '2001-02-03'),
('Fahd', 'Basel', 'Mostafa', 5, 'Cairo', 'Hazem st', 6, '704234', 4000, '2004-02-04'),
('Kamel', 'Faheem', 'Ibrahim', 5, 'Cairo', 'Ibrahim st', 6, '703921', 4000, '2004-02-04'),
('Ramy', 'Fahmy', 'Saeed', 5, 'Cairo', 'Nabil st', 6, '709424', 4000, '2004-02-04'),
('Zahy', 'Farid', 'Tamer', 5, 'Cairo', 'Kamel st', 6, '704201', 4000, '2004-02-04'),
('Mohamed', 'Basel', 'Nagy', 6, 'Cairo', 'Salem st', 5, '609482', 4000, '2001-02-03'),
('Nader', 'Taha', 'Hazem', 6, 'Cairo', 'Rehab st', 5, '609281', 4000, '2001-02-03'),
('Kamel', 'Nader', 'Zahy', 6, 'Cairo', 'Salem st', 5, '609231', 4000, '2001-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `employee_phonenumber`
--

DROP TABLE IF EXISTS `employee_phonenumber`;
CREATE TABLE IF NOT EXISTS `employee_phonenumber` (
  `phoneNumber` int(11) NOT NULL,
  `ID` char(6) NOT NULL,
  PRIMARY KEY (`phoneNumber`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
CREATE TABLE IF NOT EXISTS `equipment` (
  `SerialNo` int(11) NOT NULL,
  `lastchecked` date NOT NULL DEFAULT '2022-04-05',
  `name` varchar(30) NOT NULL,
  `number` int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (`SerialNo`),
  KEY `number` (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`SerialNo`, `lastchecked`, `name`, `number`) VALUES
(219330, '2022-04-05', 'Anesthesia Machine', 2),
(302934, '2022-04-05', 'Patient Monitor', 2),
(492042, '2022-04-05', 'Sterilizers', 2),
(201932, '2022-04-05', 'EKG', 3),
(293404, '2022-04-05', 'ECG', 3);

-- --------------------------------------------------------

--
-- Table structure for table `in_patient`
--

DROP TABLE IF EXISTS `in_patient`;
CREATE TABLE IF NOT EXISTS `in_patient` (
  `lastVisit` date DEFAULT NULL,
  `room` int(11) NOT NULL DEFAULT '1',
  `medicationType` varchar(11) DEFAULT NULL,
  `SNN` int(11) NOT NULL,
  PRIMARY KEY (`SNN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `in_patient`
--

INSERT INTO `in_patient` (`lastVisit`, `room`, `medicationType`, `SNN`) VALUES
('2020-03-04', 1, 'permanent', 912031329),
('2022-03-01', 1, 'temporary', 912039283),
('2022-06-23', 1, 'permanent', 303939213),
('2021-02-03', 1, 'temporary', 954932845);

-- --------------------------------------------------------

--
-- Table structure for table `maintaines`
--

DROP TABLE IF EXISTS `maintaines`;
CREATE TABLE IF NOT EXISTS `maintaines` (
  `ID` char(6) NOT NULL,
  `SerialNo` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`SerialNo`),
  KEY `SerialNo` (`SerialNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintaines`
--

INSERT INTO `maintaines` (`ID`, `SerialNo`) VALUES
('609231', 219330),
('609281', 302934),
('609482', 201932),
('609482', 293404),
('609482', 492042);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE IF NOT EXISTS `maintenance` (
  `ID` char(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`ID`) VALUES
('609231'),
('609281'),
('609482');

-- --------------------------------------------------------

--
-- Table structure for table `makes`
--

DROP TABLE IF EXISTS `makes`;
CREATE TABLE IF NOT EXISTS `makes` (
  `surgeryCode` int(11) NOT NULL,
  `ID` varchar(6) NOT NULL,
  PRIMARY KEY (`surgeryCode`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makes`
--

INSERT INTO `makes` (`surgeryCode`, `ID`) VALUES
(29380701, '103921'),
(30390701, '107782'),
(59380707, '103921'),
(95490719, '103921');

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

DROP TABLE IF EXISTS `manages`;
CREATE TABLE IF NOT EXISTS `manages` (
  `ID` char(6) NOT NULL,
  `serialNo` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`serialNo`),
  KEY `serialNo` (`serialNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`ID`, `serialNo`) VALUES
('302231', 192938),
('302231', 321344),
('306232', 291923),
('306572', 192938),
('306759', 192938),
('306759', 212932);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
CREATE TABLE IF NOT EXISTS `medication` (
  `expDate` date NOT NULL DEFAULT '2023-01-01',
  `serialNo` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`serialNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`expDate`, `serialNo`, `name`) VALUES
('2023-01-01', 321344, 'Panadol'),
('2023-01-18', 291923, 'Alphintern'),
('2023-04-12', 192938, 'Amyril'),
('2022-12-14', 212932, 'Contrloc');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
CREATE TABLE IF NOT EXISTS `nurse` (
  `name` varchar(11) NOT NULL,
  `ID` char(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`name`, `ID`) VALUES
('assistant', '201234'),
('assistant', '203465'),
('assistant', '201321'),
('assistant', '204324'),
('Registered', '205436'),
('Registered', '209321'),
('Registered', '209532'),
('Registered', '209666');

-- --------------------------------------------------------

--
-- Table structure for table `out_patient`
--

DROP TABLE IF EXISTS `out_patient`;
CREATE TABLE IF NOT EXISTS `out_patient` (
  `ticketNo` int(11) NOT NULL DEFAULT '1',
  `longterm` tinyint(1) DEFAULT '0',
  `Mname` varchar(11) NOT NULL,
  `SNN` int(11) NOT NULL,
  PRIMARY KEY (`SNN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `out_patient`
--

INSERT INTO `out_patient` (`ticketNo`, `longterm`, `Mname`, `SNN`) VALUES
(1, 0, 'Panadol', 492932842),
(2, 0, 'Alphintern', 293854384),
(3, 1, 'Amyril', 593848373),
(4, 0, 'Contrloc', 293847538);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `FN` varchar(11) NOT NULL,
  `MN` varchar(11) NOT NULL,
  `LN` varchar(11) NOT NULL,
  `SNN` int(11) NOT NULL,
  `YearOfBirth` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`SNN`),
  KEY `number` (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`FN`, `MN`, `LN`, `SNN`, `YearOfBirth`, `number`) VALUES
('Mohamed', 'Lashen', 'Rageeb', 912039283, 1980, NULL),
('Raed', 'Eslam', 'Mostafa', 912031329, 2000, 1293920392),
('Hanya', 'Mohamed', 'Nagy', 293847538, 1969, 123553244),
('Hakeem', 'Basel', 'Mostafa', 593848373, 1986, 113331023),
('Shahen', 'Elsayed', 'Ahemd', 291923, 1956, 102033244),
('Fahd', 'Ahmed', 'Ahemd', 293854384, 1993, 11231231),
('Mohamed', 'Basel', 'Nagy', 492932842, 1999, 102031023),
('Ahmed', 'ELsaeed', 'Fathy', 303939213, 2001, NULL),
('Hany', 'Soliman', 'Abdullah', 954932845, 1975, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_phone_numer`
--

DROP TABLE IF EXISTS `patient_phone_numer`;
CREATE TABLE IF NOT EXISTS `patient_phone_numer` (
  `phone_numer` int(11) NOT NULL,
  `SNN` int(11) NOT NULL,
  PRIMARY KEY (`phone_numer`,`SNN`),
  KEY `SNN` (`SNN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

DROP TABLE IF EXISTS `pharmacist`;
CREATE TABLE IF NOT EXISTS `pharmacist` (
  `ID` char(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`ID`) VALUES
('302231'),
('303142'),
('306232'),
('306572'),
('306759'),
('309192');

-- --------------------------------------------------------

--
-- Table structure for table `receptionists`
--

DROP TABLE IF EXISTS `receptionists`;
CREATE TABLE IF NOT EXISTS `receptionists` (
  `shift` varchar(6) NOT NULL DEFAULT ':Day',
  `ID` char(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionists`
--

INSERT INTO `receptionists` (`shift`, `ID`) VALUES
(':Day', '403213'),
(':Day', '402913'),
(':Day', '402833'),
(':Day', '402233');

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

DROP TABLE IF EXISTS `security`;
CREATE TABLE IF NOT EXISTS `security` (
  `patrol` int(11) NOT NULL,
  `ID` char(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`patrol`, `ID`) VALUES
(1, '503123'),
(1, '503932'),
(2, '508374'),
(2, '508462');

-- --------------------------------------------------------

--
-- Table structure for table `surgery`
--

DROP TABLE IF EXISTS `surgery`;
CREATE TABLE IF NOT EXISTS `surgery` (
  `room` int(11) NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2022-07-01',
  `surgeryCode` int(11) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT '1',
  `SNN` int(11) DEFAULT NULL,
  PRIMARY KEY (`surgeryCode`),
  KEY `SNN` (`SNN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surgery`
--

INSERT INTO `surgery` (`room`, `date`, `surgeryCode`, `duration`, `SNN`) VALUES
(1, '2022-07-01', 30390701, 1, 303939213),
(1, '2022-07-01', 29380701, 2, 293854384),
(1, '2022-07-19', 95490719, 1, 954932845),
(1, '2022-07-07', 59380707, 3, 593848373);

-- --------------------------------------------------------

--
-- Table structure for table `works_at`
--

DROP TABLE IF EXISTS `works_at`;
CREATE TABLE IF NOT EXISTS `works_at` (
  `ID` char(6) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`ID`,`number`),
  KEY `number` (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works_at`
--

INSERT INTO `works_at` (`ID`, `number`) VALUES
('103921', 2),
('107123', 1),
('107223', 2),
('107889', 1),
('108472', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
