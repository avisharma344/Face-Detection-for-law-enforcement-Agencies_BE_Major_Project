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
  
git commit -m "Criminal Insertion Feature added"
  INSERT INTO `criminaldata` (`Criminal-ID`, `Address`, `Phone`, `Name`, `Father's Name`, `Gender`, `DOB(yyyy-mm-dd)`, `Crimes Done`, `Date of Arrest`, `Place of Arrest`) VALUES
(123456, 'jaipur', 0, 'vivek rati', 'mahesh rathi', 'male', '2000-09-07', 'fraud', '2020-12-09', 'chhattisgarh'),
(234, 'jabalpur', 0, 'jaydeep singh', 'mahendra singh', 'male', '1970-09-08', 'fraud', '2009-08-07', 'jabalpur'),
(567432, 'delhi', 0, 'pranav verma', 'ramesh verma', 'male', '2000-05-04', 'murder', '2000-05-04', 'aagra'),
(876594, 'jharkhand', 0, 'mehul sharma', 'mahesh sharma', 'male', '1999-09-09', 'fraud', '1999-09-09', 'odisha'),
(1234, 'dfg', 0, 'bjk', 'mn', 'm', '1990-09-08', 'b,j', '2000-09-08', 'hv'),
(123456, 'h', 0, 'c', 'c', 'c', '1990-08-09', 'd', '1990-08-09', 'd'),
(89, 'gh', 0, 'nmk', ' h', 'm', '1998-09-08', 'vb', '1998-09-08', 'cgj'),
(409087, 'delhi', 0, 'rajesh yadav', 'brijesh yadav', 'male', '1978-09-08', 'fraud', '2019-08-09', 'mumbai'),
(4, 'g', 0, 'v', 'v', 'v', '2020-09-09', 'm', '2020-09-09', 'g'),
(98, 'v', 0, 'c', 'c', 'c', '2020-09-09', 'f', '2020-09-09', 'f'),
(4, 'g', 47, 'cfc', 'fre', 'm', '2020-09-09', 'm', '2020-09-09', 'v');
