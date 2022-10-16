SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE `criminaldata` (
  `Criminal-ID` int(6) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Phone` int(12) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Father's Name` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB(yyyy-mm-dd)` date NOT NULL,
  `Crimes Done` varchar(40) NOT NULL,
  `Date of Arrest` date NOT NULL,
  `Place of Arrest` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `criminaldata` as it is
--
