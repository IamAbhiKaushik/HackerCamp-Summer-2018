-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2018 at 08:18 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `day` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `amount`, `type`, `comment`, `day`) VALUES
(1, '50', 'Food', 'john@example.com', '25/02/2018'),
(3, '50', 'Grocery', 'my first purchage', '24/02/2018'),
(4, '5', 'Grocery', 'my first purchage', '25/02/2018'),
(5, '50', 'Grocery', 'my first purchage', '26/02/2018'),
(6, '10', 'Vehicle', 'my first purchage', '28/04/2018'),
(7, '80', 'Entertainment', 'First tosda', '24/02/2018'),
(8, '55', 'Entertainment', 'dasgs', '24/02/2018'),
(9, '156', 'Vehicle', 'dasgs', '25/06/2018'),
(10, '15', 'Entertainment', 'dasgs', '24/03/2018'),
(11, '86', 'Miscellaneous', 'dasgs', '24/02/2018'),
(12, '1', 'Grocery', 'Boy its working', '24/02/2018'),
(13, '80', 'Entertainment', 'First tosda', '24/02/2018'),
(14, '55', 'Entertainment', 'dasgs', '24/02/2018'),
(15, '15', 'Food', 'dasgs', '24/03/2018'),
(16, '50', 'Food', 'john@example.com', '25/02/2018'),
(17, '5', 'Grocery', 'my first purchage', '26/02/2018'),
(18, '50', 'Grocery', 'my first purchage', '25/02/2018'),
(19, '80', 'Entertainment', 'First tosda', '28/04/2018'),
(20, '55', 'Entertainment', 'dasgs', '24/12/2018'),
(21, '15', 'Food', 'dasgs', '03/10/2018'),
(22, '50', 'Food', 'john@example.com', '25/02/2018'),
(23, '50', 'Grocery', 'my first purchage', '08/09/2018'),
(24, '50', 'Grocery', 'my first purchage', '17/11/2018'),
(25, '80', 'Entertainment', 'First tosda', '28/01/2018'),
(26, '55', 'Grocery', 'dasgs', '24/01/2018'),
(27, '15', 'Food', 'dasgs', '22/01/2018'),
(28, '50', 'Vehicle', 'john@example.com', '16/01/2018'),
(29, '10', 'Grocery', 'my first purchage', '11/01/2018'),
(30, '50', 'Miscellaneous', 'my first purchage', '17/01/2018'),
(31, '80', 'Entertainment', 'First tosda', '28/03/2018'),
(32, '55', 'Grocery', 'dasgs', '24/03/2018'),
(33, '15', 'Food', 'dasgs', '22/03/2018'),
(34, '50', 'Vehicle', 'john@example.com', '16/03/2018'),
(35, '10', 'Grocery', 'my first purchage', '11/03/2018'),
(36, '50', 'Miscellaneous', 'my first purchage', '17/03/2018'),
(37, '50', 'Vehicle', 'john@example.com', '16/03/2018'),
(38, '50', 'Miscellaneous', 'my first purchage', '17/03/2018'),
(39, '55', 'Grocery', 'dasgs', '24/03/2018'),
(40, '15', 'Food', 'dasgs', '24/03/2018'),
(41, '15', 'Entertainment', 'dasgs', '24/03/2018'),
(42, '50', 'Vehicle', 'john@example.com', '16/04/2018'),
(43, '50', 'Miscellaneous', 'my first purchage', '17/04/2018'),
(44, '55', 'Grocery', 'dasgs', '24/04/2018'),
(45, '15', 'Food', 'dasgs', '24/04/2018'),
(46, '15', 'Entertainment', 'dasgs', '24/04/2018'),
(47, '50', 'Vehicle', 'john@example.com', '16/05/2018'),
(48, '50', 'Miscellaneous', 'my first purchage', '17/05/2018'),
(49, '55', 'Grocery', 'dasgs', '24/05/2018'),
(50, '15', 'Food', 'dasgs', '24/05/2018'),
(51, '15', 'Entertainment', 'dasgs', '24/05/2018'),
(52, '50', 'Vehicle', 'john@example.com', '16/06/2018'),
(53, '50', 'Miscellaneous', 'my first purchage', '17/06/2018'),
(54, '55', 'Grocery', 'dasgs', '24/06/2018'),
(55, '15', 'Food', 'dasgs', '24/06/2018'),
(56, '15', 'Entertainment', 'dasgs', '24/06/2018'),
(57, '50', 'Vehicle', 'john@example.com', '16/07/2018'),
(58, '50', 'Miscellaneous', 'my first purchage', '17/07/2018'),
(59, '55', 'Grocery', 'dasgs', '24/07/2018'),
(60, '15', 'Food', 'dasgs', '24/07/2018'),
(61, '15', 'Entertainment', 'dasgs', '24/07/2018'),
(62, '50', 'Vehicle', 'john@example.com', '16/08/2018'),
(63, '50', 'Miscellaneous', 'my first purchage', '17/08/2018'),
(64, '55', 'Grocery', 'dasgs', '24/08/2018'),
(65, '15', 'Food', 'dasgs', '24/08/2018'),
(66, '15', 'Entertainment', 'dasgs', '24/08/2018'),
(67, '50', 'Vehicle', 'john@example.com', '16/09/2018'),
(68, '50', 'Miscellaneous', 'my first purchage', '17/09/2018'),
(69, '55', 'Grocery', 'dasgs', '24/09/2018'),
(70, '15', 'Food', 'dasgs', '24/09/2018'),
(71, '15', 'Entertainment', 'dasgs', '24/09/2018'),
(72, '50', 'Vehicle', 'john@example.com', '16/10/2018'),
(73, '50', 'Miscellaneous', 'my first purchage', '17/10/2018'),
(74, '55', 'Grocery', 'dasgs', '24/10/2018'),
(75, '15', 'Food', 'dasgs', '24/10/2018'),
(76, '15', 'Entertainment', 'dasgs', '24/10/2018'),
(77, '50', 'Vehicle', 'john@example.com', '16/11/2018'),
(78, '50', 'Miscellaneous', 'my first purchage', '17/11/2018'),
(79, '55', 'Grocery', 'dasgs', '24/11/2018'),
(80, '15', 'Food', 'dasgs', '24/11/2018'),
(81, '15', 'Entertainment', 'dasgs', '24/11/2018'),
(82, '50', 'Vehicle', 'john@example.com', '16/12/2018'),
(83, '50', 'Miscellaneous', 'my first purchage', '17/12/2018'),
(84, '55', 'Grocery', 'dasgs', '24/12/2018'),
(85, '15', 'Food', 'dasgs', '24/12/2018'),
(86, '15', 'Entertainment', 'dasgs', '24/12/2018'),
(87, '80', 'Food', 'Loving it', '25/02/2018'),
(88, '55', 'Food', 'love it', '24/02/2018'),
(89, '55', 'Food', 'dfgdgs', '24/02/2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
