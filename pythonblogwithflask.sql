-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2019 at 07:27 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pythonblogwithflask`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sid` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sid`, `name`, `phone`, `email`, `msg`, `date`) VALUES
(1, 'a', '0', 'a@gmail.com', 'a', '2019-09-04 08:20:45'),
(2, 'shahbaz akhtar javed', '03327195514', 'aw84772@gmail.com', 'mbjh', NULL),
(3, 'shahbaz akhtar javed', '+923463806125', 'aw84772@gmail.com', 'hello', '2019-09-04 18:21:35'),
(4, 'shahbaz akhtar javed', '+923463806125', 'aw84772@gmail.com', 'hello', '2019-09-05 07:07:31'),
(5, 'shahbaz akhtar javed', '3327195514', 'aw84772@gmail.com', 'hello', '2019-09-08 20:08:48'),
(6, 'shahbaz akhtar javed', '+923327195514', 'frankover17@gmail.com', 'hello', '2019-09-14 18:25:32'),
(7, 'shahbaz akhtar javed', '+923327195514', 'shahbazakhtarjaved@gmail.com', 'hello', '2019-09-14 18:27:07'),
(8, 'shahbaz akhtar javed', '+923327195514', 'shahbazakhtarjaved@gmail.com', 'hello', '2019-09-14 18:30:07'),
(9, 'shahbaz akhtar javed', '+923327195514', 'frankover17@gmail.com', '123', '2019-09-23 22:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` text NOT NULL,
  `content` text NOT NULL,
  `img_file` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'imam ali ibn abi talib', 'biography', 'imam-ali-ibn-abi-talib ', 'Ali ibn Abi Talib was the cousin and son-in-law of Muhammad, the last prophet of Islam. He ruled as the fourth caliph from 656 to 661, but is regarded as the rightful immediate successor to Muhammad as an Imam by Shia Muslims. \r\nBorn: September 15, 601 AD, Mecca, Saudi Arabia\r\nAssassinated: January 29, 661 AD, Great Mosque of Kufa, Kufa, Iraq\r\nChildren: Husayn ibn Ali, Hasan ibn Ali, Abbas ibn Ali', '4.jpg', '2019-09-24 01:45:36'),
(2, 'imam hasan ibn ali ', 'biography', 'imam-hasan-ibn-ali ', 'Al-Hasan ibn Ali ibn Abi Talib, commonly known as Hasan or Hassan, was the eldest son of Ali and Muhammad\'s daughter Fatimah, and was the older brother of Husayn. Muslims respect him as a grandson of the Islamic Prophet Muhammad. Among Shia Muslims, Hasan is revered as the second Imam. \r\nBorn: December 1, 624 AD, Saudi Arabia\r\nDied: April 1, 670 AD, Medina, Saudi Arabia\r\nFull name: Al-Hasan ibn ‘Al? ibn Ab? T?lib\r\nBuried: Al-Baqi\', Medina, Saudi Arabia\r\nChildren: Qasim ibn Hasan, Abdullah ibn Hasan, ', '2.jpg', '2019-09-17 08:11:24'),
(3, 'imam hussain ibn ali ', 'biography', 'imam-hussain-ibn-ali ', 'Al-Husayn ibn Ali ibn Abi Talib was a grandson of the Islamic prophet Muhammad and a son of Ali ibn Abi Talib and Muhammad\'s daughter Fatimah. He is an important figure in Islam as he was a member of the Household of Muhammad and the People of the Cloak, as well as the third Shia Imam. \r\nBorn: January 8, 626 AD, Medina, Saudi Arabia\r\nDied: October 10, 680 AD, Karbala, Iraq\r\nFull name: Al-Hussein ibn Ali ibn Abi Talib\r\nBuried: The Holy Shrine of Imam Hussain (as), Karbala, Iraq\r\nSpouse: Shahrbanu (680 AD)\r\nChildren: Ali ibn Husayn Zayn al-Abidin, Sukayna bint Husayn', '3.jpg', '2019-09-17 08:11:24'),
(4, 'imam zain ul abideen ibn hussain', 'biography', 'imam-zain-ul-abideen-ibn-hussain', 'Ali ibn Husayn, also known as Zayn al-Abidin and Imam al-Sajjad, was the fourth Muslim Imam from AhleBait, after his father Husayn ibn Ali, his uncle Hasan ibn Ali, and his grandfather Ali ibn Abi Talib. \r\nBorn: January 6, 659 AD, Medina, Saudi Arabia\r\nDied: October 20, 713 AD, Medina, Saudi Arabia\r\nSpouse: Fatimah bint Hasan\r\nBuried: Al-Baqi\', Medina, Saudi Arabia\r\nChildren: Muhammad al-Baqir, Zayd ibn Ali, ', '4.jpg', '2019-09-17 08:11:24'),
(5, 'imam muhammad baqir ibn imam zain ul abideen', 'biography', 'imam-muhammad-baqir-ibn-imam-zain-ul-abideen', 'Mu?ammad al-Baqir, full name Muhammad bin \'Ali bin al-Husayn bin Ali bin Abi Talib, also known as Abu Ja\'far or simply al-Baqir was the fifth Shia Imam, succeeding his father Zayn al-Abidin and succeeded by his son Ja\'far al-Sadiq. \r\nBorn: May 10, 677 AD, Medina, Saudi Arabia\r\nDied: January 28, 733 AD, Medina, Saudi Arabia\r\nBuried: Al-Baqi\', Medina, Saudi Arabia\r\nTitle: List: al-B?qir; (Arabic for Revealer); Be?inci Ali; (Turkish for Fifth Ali)\r\nChildren: Ja\'far al-Sadiq, Ali bin Muhammad al-Baqir, ', '5.jpg', '2019-09-17 08:11:24'),
(6, 'imam jafar sadiq ibn imam muhammad baqir', 'biography', 'imam-jafar-sadiq-ibn-imam-muhammad-baqir', 'Ja?far ibn Mu?ammad, commonly known as Jafar al-Sadiq or simply as-Sadiq, was the sixth Sh?\'ah Imam, and a major figure in the Hanafi and Maliki schools of Sunni jurisprudence.\r\nBorn: April 20, 702 AD, Medina, Saudi Arabia\r\nDied: December 14, 765 AD, Medina, Saudi Arabia\r\nBuried: Al-Baqi\', Medina, Saudi Arabia\r\nPeriod in office: 733–765 CE\r\nChildren: Musa al-Kadhim, Isma\'il ibn Jafar, Abdullah al-Aftah', 'home-bg.jpg', '2019-09-17 08:11:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
