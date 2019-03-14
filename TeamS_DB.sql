-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 08:32 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teams`
--
CREATE DATABASE IF NOT EXISTS `teams` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `teams`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `profileID` int(11) NOT NULL,
  `comment` tinytext NOT NULL,
  `commenterID` int(11) NOT NULL,
  `commenterUserName` varchar(50) NOT NULL,
  `commentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `profileID`, `comment`, `commenterID`, `commenterUserName`, `commentTime`) VALUES
(1, 50, 'Test comment', 24, 'funny444', '2019-03-05 19:42:24'),
(2, 45, 'test 2 comment', 24, 'funny444', '2019-03-05 19:42:53'),
(3, 0, 'Test comment', 51, 'ts526610', '2019-03-12 18:54:16'),
(4, 0, 'Test comment', 51, 'ts526610', '2019-03-12 18:54:41'),
(5, 0, 'Test comment', 51, 'ts526610', '2019-03-12 18:55:09'),
(6, 0, 'Test comment', 51, 'ts526610', '2019-03-12 18:56:08'),
(7, 1, 'Test comment', 51, 'ts526610', '2019-03-12 19:00:12'),
(8, 1, 'Horray its working', 51, 'ts526610', '2019-03-12 19:04:25'),
(9, 1, 'Horray its working again!', 51, 'ts526610', '2019-03-12 19:05:24'),
(10, 1, 'Horray its working again!', 51, 'ts526610', '2019-03-12 19:05:46'),
(11, 1, 'Last test', 51, 'ts526610', '2019-03-12 19:05:53'),
(15, 1, '<script>alert(''Hi'')</script>', 51, 'ts526610', '2019-03-12 19:13:08'),
(16, 1, '<script>alert(''hi'')</script>', 51, 'ts526610', '2019-03-12 19:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `lName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `uName` varchar(50) DEFAULT NULL,
  `pWord` varchar(120) DEFAULT NULL,
  `image` varchar(100) DEFAULT 'images/fluffy.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fName`, `lName`, `email`, `uName`, `pWord`, `image`) VALUES
(1, 'dirk', 'smithington', 'dsmith@google.com', 'ddig', 'pword', NULL),
(2, 'b', 'b', 'bb916@gmail.com', 'dirk', NULL, NULL),
(4, 'b', 'b', 'bb916@gmail.com', 'b', NULL, NULL),
(5, 'me', 'me', '14paxton@gmail.com', 'paxton@gmail.com', NULL, NULL),
(10, 'dd', 'dd', 'dirk@htomail.com', 'helloDB', NULL, NULL),
(11, 'dirk', 'diggler', 'ddiggs@hotmail.com', 'diggler', '$2y$10$OmHBwwT26Tn6o3EsvM.B0.nj/CZvBAzykDTfPV6AbAL', NULL),
(12, 'bp', 'pb', 'bpp@gmail.com', 'bpp', NULL, NULL),
(13, 'dirty', 'dirk', 'dirty@hotmail.com', 'dirty', '$2y$10$DnxhSTl2SWAaVcAQuqANRuH9K0XCazHfIhLyIzcz9eeUBIBBNswU.', 'c:\\thisdir\\thisfile.jpg'),
(14, 'me', 'you', 'you!@gmail.com', 'youme', '$2y$10$ddE86h8Ty3RmNu0C4z4cXuVh4CG5pR6Yi3EqkeZ.2Nz1XGTxqumV6', 'C:\\this\\that'),
(15, 'test1', 'test1', 'test1@gmail.com', 'test1', '$2y$10$Ywv85Dvs4.LRmEhKJNHnKuEOcA6eKfUnZ.YqCrowO87a2JAPH2CKK', 'C:\\this\\that'),
(16, 'bp', 'pb', 'bpp@gmail.com2222', 'cccccc', '$2y$10$S2V.k.uIibws5TL4m3K0oukuenHD/0r0u5ZdBKHAKFo9XwJm72Cb6', 'C:\\this\\that'),
(17, 'e3333', 'e3333', '3333@gmail.com', 'e33333', '$2y$10$zBGK.gtiAcyx.BnxyArXUeliWIv5YmzfuKA8gArfASCVLpoerxtCe', 'C:\\this\\that'),
(18, 'trem', 'will', 'email@email.com', 'Remmy', '$2y$10$wE.bZVZYP5wL3/zRYSV91.8FDuVhD7BZEVh12stzAC9QPPr6kQC7.', NULL),
(19, 'Mark', 'Mister', 'Remmy2@email.com', 'Remmy55', '$2y$10$rkL0qnJLp7sIljw9/Dg.O.ueBZ0gIUmtLPJuCQQ.oTeElcckKM5RO', 'C:\\this\\that'),
(20, 'will', 'rekl', 'Remmy1@email.com', 'funny', '$2y$10$sghPAv665ruHJJ3KPPGiB.mq7pMFskNn1QG.fAeXjtoo6BjKvgZ42', 'C:\\this\\that'),
(21, 'kill', 'will', 'rem@email.com', 'Chryst44444', '$2y$10$tCv.IXR2JXja00BZOTH.X./7V3ul8tcT27FEUV3i8zvdnYxwoioJS', 'C:\\this\\that'),
(22, 'Mark', 'mister', 'Remmy2444@email.com', 'email@me.com', '$2y$10$1raakobzQOOwBInQDJenKeXpLs0Nu9./16CxconUz636KKn5WOR4S', 'C:\\this\\that'),
(23, 'kill', 'Rem', 'email44@email.com', 'testuser', '$2y$10$xSP5uke5tb2izMnjrK8mmuzVghtcBKy197j99JAZIzMcqTFP.KQt2', 'C:\\this\\that'),
(24, 'Mark', 'Mister', 'Remmy17@email.com', 'funny444', '$2y$10$YTVQnRFilzqbA9xUYjIbouciPPLP/6A4qhMK38jxHd0Oz3kXgXfTu', 'C:\\this\\that'),
(25, 'will', 'will', 'Remmy27@email.com', 'FiftyFive', '$2y$10$vrdxifwneJgmKn2dl8FIxeRbZF4T8SPEgQ/SbYQ4JSTyjQnjnXW8q', 'C:\\this\\that'),
(26, 'will', 'will', 'Remmy267@email.com', 'FiftyFivefive', '$2y$10$sCZ1xPukdDgWpP4WRkTujOwr9Glg6bKugFGeediiBQrQJfLa.PvVu', 'C:\\this\\that'),
(27, 'Mark', 'mister', 'Remmy255@email.com', 'Oops', '$2y$10$ClNDHTUt/wVJhhb.Z2a2E.wYHhhy7sM7fMELQuD8HHSAZmlUcOWjO', 'image/fluffy.jpg'),
(28, 'trem', 'Mister', 'email444@email.com', 'Remmy123', '$2y$10$4h8vfrnDTHvFeJaeVSPwneK7o7vnq3rK2HdvjopcSnUaVaEnF.nXe', 'image/fluffy.jpg'),
(29, 'Mark', 'mister', 'Remmy222@email.com', 'funny1', '$2y$10$VIAtEK93yOcDYIypZESKFOe0QCpHTeWjeaXnbukZxJmjqTNWExiV.', '../image/fluffy.jpg'),
(30, 'Mark', 'Mister', 'Remmy111@email.com', 'misterT', '$2y$10$sIYF1LVDKxZqGS1gKCzhf.FkwsiFAbkrXJBr9iAg7e3MmosPjmQya', '../images/fluffy.jpg'),
(31, 'Mark', 'rekl', 'rem2@email.com', 'Remmy555', '$2y$10$muLBwDP/lie2Mq1nhBYXAuWCyfftSHNIhisGB4r2bUA7nazRK2k9q', 'images/fluffy.jpg'),
(32, 'Xmas', 'Huffer', 'huff1@email.com', 'XmasHuffer', '$2y$10$EuNhIEvuPGgl/.SF.Pe6E.TU/SBOMq3L/viHak6fVpMe3NCzD8G1a', 'XmasHuffer.jpg'),
(33, 'Mark', 'Mister', 'Remmy555565@email.com', 'RemmyHuffer', '$2y$10$.vdUQEXkgB1fK1MSdDpROuJt9hRF6Lpl4zDfevn4RlSpYvO.Ql4Nq', 'images/fluffy.jpg'),
(34, 'kill', 'will', 'Remmy22321@email.com', 'Oops333', '$2y$10$Ryd0P4z4/Ht7YK.Re3kjS.mz4CRjid3QHSsUsscOWRDt40DH5aIB2', 'images/fluffy.jpg'),
(35, 'trem', 'will', 'Remmy12345@email.com', 'Remmy12345', '$2y$10$/r/PyXf1M/DsjMmnuJQT1ODV//okV7xTj.ZE8EvcKtKlNPcvidREC', 'images/fluffy.jpg'),
(36, 'trem', 'will', 'Remmy123456@email.com', 'Remmy123456', '$2y$10$BYjq7IjwhrOW2RRxos36tOFjPfbRiM0UrfiwuQfmI5OEtFADqdYrO', 'images/fluffy.jpg'),
(37, 'Mark', 'will', 'huff1@email.com3', 'XmasHuffer6', '$2y$10$2JG2x0iQpQMpYA.roWAXLeCREsqq5/6qDoBAAzeXHABwxRplzp50.', 'images/download.jpg'),
(38, 'trem', 'Mister', 'huff1@email.com66', 'XmasHuffer7', '$2y$10$e4vk/mLGMmo8/ZEDDYd7PuaVbszXiedrfeGlm5HNQ5OOSl6Ubqcv2', 'images/download.jpg'),
(39, 'Mark', 'mister', 'huf99f1@email.com', 'Remmy0000', '$2y$10$RpJoM/MeC9tNESarGnLQVu4iZrUeG6GsKUnMxqUhoy7oZyL1WNBIa', 'images/download.jpg'),
(40, 'Mark', 'will', 'huff1@email.com9', 'funny9', '$2y$10$ioXTm/Iztw0VC2fmeDw5z.tYjLtSh/VhZ0H6gZvEGuBoamFybVQ5C', 'images/funny9.jpg'),
(41, 'william', 'will', 'email@email.com7', 'Oops007', '$2y$10$PW5dVuczQWQpEbdw.Q/EVug2k75G6st0RQIb/cXrBA9gjwPfsdq1C', 'images/Oops007.jpg'),
(42, 'Mark', 'will', 'huff1222@email.com', 'Oops008', '$2y$10$QS9Pt3oYQt6XLJ2Bexzlg.y6L2fFdNp3Kxz10R3dRSEQ/Ak81vQUq', 'Oops008.jpg'),
(43, 'william', 'Mister', 'Remmy2575@email.com', 'XmasHuffer007', '$2y$10$2enulPnGVhxjjhEbVmWok.DG4mf/VqWvD7CfJi/RtNxz8arlfOtV2', 'XmasHuffer007.jpg'),
(44, 'Mark', 'will', 'huff1wwww@email.com', 'a', '$2y$10$qdkLKEMZWzXOAHmUXz2u5e3NZjsZ1St6dvnOahGXybV22b7W3z.xy', 'a.png'),
(45, 'Mark', 'Mister', 'Remmy1ggg@email.com', 'Oops009', '$2y$10$sq/VZ3gZUh2SWYFmr8rIqOEb22EUmy8r5840yFNYLnGScb/2a52gO', 'images/Oops009.jpg'),
(46, 'Xting', 'Huffer', 'Remmy24tf@email.com', 'Oops101', '$2y$10$.mhGajAwxsPPuvaoRIYM1eNCjuDAeub8L1ZYFH3H7zy7ZSmvL6.pi', 'Oops101.png'),
(47, 'trem', 'will', 'emai444l@email.com', 'Remmy007', '$2y$10$YYoHZHcfQ3dTqsvdTM4ry.eSKvG4xHsb0XA1ziqObkxCdN4reuJpu', 'fluffy.jpg'),
(48, 'Huff', 'rekl', 'huf4435f1@email.com', 'XmasHuffer101', '$2y$10$wuODa59coSVQyEs51XDExuB0Pgf6fRmkWl2N9opI/I7eV37v7H05.', 'fluffy.jpg'),
(49, 'trem', 'mister', 'huff1324123@email.com', 'Oops007111', '$2y$10$K2whMv0fCf8ry.nMswtYdeKmvtVmCuadeRBGX0OBtFcM8Qlx31njW', 'images/Oops007111.png'),
(50, 'Mark', 'will', 'h3333uff1@email.com', 'XmasHuffer999', '$2y$10$V15hjNJn8EXBdHv361Z2y.MfkfBbZDdeznqJiEOkKYANh.GYQTRX2', 'fluffy.jpg'),
(51, 'Tyler', 'Stading', 'ts526610@southeast.edu', 'ts526610', '$2y$10$noN0QdvvC.xYpwGlFAZah.4Sn4kot4f61jdLbaBezZfTy7o8mac/q', 'images/ts526610.jpg'),
(52, 't', 't', 'tt@tt.ttt', 't56888', '$2y$10$6/OIgd8QV9XLCANCYvWVb.iea/8.ME4qhJi6HwlysrZwSTmeCvSOC', 'images/fluffy.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `uName` (`uName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
