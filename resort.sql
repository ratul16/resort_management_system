-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2017 at 04:59 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resort`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_rooms`
--

DROP TABLE IF EXISTS `assigned_rooms`;
CREATE TABLE IF NOT EXISTS `assigned_rooms` (
  `customer_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assigned_rooms`
--

INSERT INTO `assigned_rooms` (`customer_id`, `room_id`) VALUES
(1, 701),
(2, 1001),
(3, 702),
(5, 1002),
(6, 1001),
(7, 101),
(7, 1002),
(8, 102),
(14, 103),
(11, 201),
(13, 202),
(10, 604);

-- --------------------------------------------------------

--
-- Stand-in structure for view `bestrating`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `bestrating`;
CREATE TABLE IF NOT EXISTS `bestrating` (
`id` int(11)
,`star` int(5)
,`comnt` varchar(225)
);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`mid`, `email`, `password`) VALUES
(1, 'sherlock@sa.com', '202cb962ac59075b964b07152d234b70'),
(2, 'admin@r.com', '202cb962ac59075b964b07152d234b70'),
(5, 'ratul@gmail.com', '202cb962ac59075b964b07152d234b70'),
(6, 'taslim@gmail.com', '250cf8b51c773f3f8dc8b4be867a9a02'),
(11, 'a', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(225) NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`mid`, `last_name`, `first_name`, `email`, `password`) VALUES
(1, 'sharlock', 'iam', 'sherlock@sa.com', '202cb962ac59075b964b07152d234b70'),
(2, 'admin', 'admin', 'admin@r.com', '202cb962ac59075b964b07152d234b70'),
(6, 'taslim', '', 'taslim@gmail.com', '250cf8b51c773f3f8dc8b4be867a9a02'),
(5, 'ratul', '', 'ratul@gmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'all', 'admin', 'a', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `coid` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `message` varchar(225) NOT NULL,
  PRIMARY KEY (`coid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`coid`, `name`, `email`, `message`) VALUES
(1, 'sherlock', 'sherlock@sa.com', 'hello !! how r u ?'),
(5, 'diya', 'diya@diya.com', 'Eagles come in all shapes and sizes, but you will recognize them chiefly by their attitudes'),
(3, 'sherlock', 'sherlock@sa.com', 'its working xD'),
(4, 'sherlock', 'sherlock@sa.com', 'helllllllllllllllllllllo');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `star` int(5) NOT NULL,
  `comnt` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `star`, `comnt`) VALUES
(1, 5, 'great service !!!'),
(5, 5, 'happy with service'),
(4, 5, 'Loved it :D'),
(7, 5, 'happy with service'),
(11, 4, 'it was satisfying '),
(12, 4, 'it was satisfying '),
(13, 4, 'it was satisfying '),
(14, 4, 'Nice :D'),
(15, 5, 'had a great time'),
(16, 5, 'had a great time'),
(17, 5, 'hello'),
(18, 5, 'great place ');

-- --------------------------------------------------------

--
-- Table structure for table `request_room`
--

DROP TABLE IF EXISTS `request_room`;
CREATE TABLE IF NOT EXISTS `request_room` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `a_date` date NOT NULL,
  `d_date` date NOT NULL,
  `people` int(10) NOT NULL,
  `room_type` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_room`
--

INSERT INTO `request_room` (`id`, `name`, `email`, `phone`, `a_date`, `d_date`, `people`, `room_type`) VALUES
(1, 'admin', 'admin@r.com', '12345', '2017-12-19', '2017-12-21', 2, 'Presidential'),
(2, 'Ratul', 'ratul@gmail.com', '01730482775', '2017-12-21', '2017-12-28', 2, 'Bungalow'),
(3, 'diya', 'diya@gmail.cm', '01638915487', '2017-12-13', '2017-12-28', 2, 'Presidential'),
(4, 'diya', 'diya@gmail.cm', '01638915487', '2017-12-13', '2017-12-28', 2, 'Presidential'),
(5, 'taslim', 'taslim@gmail.com', '013265949764', '2017-12-21', '2018-01-26', 8, 'Bungalow'),
(6, 'rabita', 'rabita@gmail.com', '01796526464', '2017-12-20', '2017-12-23', 2, 'Deluxe'),
(7, 'sabit', 'sabit@gmail.com', '019648875699', '2017-12-22', '2018-01-22', 8, 'Bungalow'),
(8, 'rohim', 'rohim@ymail.com', '015963597325', '2017-12-08', '2017-12-15', 1, 'Single'),
(9, 'korim', 'rokim@gmail.com', '019648875699', '2017-12-22', '2017-12-24', 2, 'Double'),
(10, 'shafayat', 'shafayat@gmail.com', '0173296565', '2017-12-23', '2017-12-30', 2, 'Deluxe'),
(11, 'sakib', 'sakib@gmail.com', '01964987476', '2017-12-28', '2017-12-31', 3, 'Double'),
(12, 'sakibul', 'sakibul@gmail.com', '01964987476', '2017-12-28', '2017-12-31', 2, 'Single'),
(13, 'habib', 'habib@gmail.com', '0196234476', '2017-12-04', '2017-12-08', 4, 'Double'),
(14, 't', 't@t.com', '123', '2017-12-22', '2017-12-14', 4, 'Single'),
(15, 'r', 'r@r.com', '123114', '2017-12-18', '2017-12-07', 4, 'Deluxe'),
(23, 'kuddus', 'kuddus@g.com', '8234261', '2017-12-20', '2017-12-15', 2, 'Deluxe'),
(17, 's', 's@s.com', '123', '2017-12-21', '2017-12-28', 2, 'Deluxe');

--
-- Triggers `request_room`
--
DROP TRIGGER IF EXISTS `request_delete`;
DELIMITER $$
CREATE TRIGGER `request_delete` BEFORE DELETE ON `request_room` FOR EACH ROW BEGIN
INSERT INTO request_room_delete 
VALUES (old.id,old.name,old.email,old.phone,old.a_date,old.d_date,old.people,old.room_type);
END
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `request_insert`;
DELIMITER $$
CREATE TRIGGER `request_insert` AFTER INSERT ON `request_room` FOR EACH ROW BEGIN
INSERT INTO request_room_backup VALUES (NEW.id,NEW.name,NEW.email,NEW.phone,NEW.a_date,NEW.d_date,NEW.people,NEW.room_type);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `request_room_backup`
--

DROP TABLE IF EXISTS `request_room_backup`;
CREATE TABLE IF NOT EXISTS `request_room_backup` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `a_date` date NOT NULL,
  `d_date` date NOT NULL,
  `people` int(10) NOT NULL,
  `room_type` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_room_backup`
--

INSERT INTO `request_room_backup` (`id`, `name`, `email`, `phone`, `a_date`, `d_date`, `people`, `room_type`) VALUES
(1, 'admin', 'admin@r.com', '12345', '2017-12-19', '2017-12-21', 2, 'Presidential'),
(2, 'Ratul', 'ratul@gmail.com', '01730482775', '2017-12-21', '2017-12-28', 2, 'Bungalow'),
(3, 'diya', 'diya@gmail.cm', '01638915487', '2017-12-13', '2017-12-28', 2, 'Presidential'),
(4, 'diya', 'diya@gmail.cm', '01638915487', '2017-12-13', '2017-12-28', 2, 'Presidential'),
(5, 'taslim', 'taslim@gmail.com', '013265949764', '2017-12-21', '2018-01-26', 8, 'Bungalow'),
(6, 'rabita', 'rabita@gmail.com', '01796526464', '2017-12-20', '2017-12-23', 2, 'Deluxe'),
(7, 'sabit', 'sabit@gmail.com', '019648875699', '2017-12-22', '2018-01-22', 8, 'Bungalow'),
(8, 'rohim', 'rohim@ymail.com', '015963597325', '2017-12-08', '2017-12-15', 1, 'Single'),
(9, 'korim', 'rokim@gmail.com', '019648875699', '2017-12-22', '2017-12-24', 2, 'Double'),
(10, 'shafayat', 'shafayat@gmail.com', '0173296565', '2017-12-23', '2017-12-30', 2, 'Deluxe'),
(11, 'sakib', 'sakib@gmail.com', '01964987476', '2017-12-28', '2017-12-31', 3, 'Double'),
(12, 'sakibul', 'sakibul@gmail.com', '01964987476', '2017-12-28', '2017-12-31', 2, 'Single'),
(13, 'habib', 'habib@gmail.com', '0196234476', '2017-12-04', '2017-12-08', 4, 'Double'),
(14, 't', 't@t.com', '123', '2017-12-22', '2017-12-14', 4, 'Single'),
(15, 'r', 'r@r.com', '123114', '2017-12-18', '2017-12-07', 4, 'Deluxe'),
(16, 'r', 'r@r.com', '123114', '2017-12-18', '2017-12-07', 4, 'Deluxe'),
(17, 's', 's@s.com', '123', '2017-12-21', '2017-12-28', 2, 'Deluxe'),
(18, 'asda', 'asda', '1234', '2017-12-06', '2017-12-15', 2, 'single'),
(22, 'asdag', 'ggfa', '12345', '2017-12-01', '2017-12-08', 2, 'double'),
(23, 'kuddus', 'kuddus@g.com', '8234261', '2017-12-20', '2017-12-15', 2, 'Deluxe');

-- --------------------------------------------------------

--
-- Table structure for table `request_room_delete`
--

DROP TABLE IF EXISTS `request_room_delete`;
CREATE TABLE IF NOT EXISTS `request_room_delete` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `a_date` date NOT NULL,
  `d_date` date NOT NULL,
  `people` int(10) NOT NULL,
  `room_type` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_room_delete`
--

INSERT INTO `request_room_delete` (`id`, `name`, `email`, `phone`, `a_date`, `d_date`, `people`, `room_type`) VALUES
(22, 'asdag', 'ggfa', '12345', '2017-12-01', '2017-12-08', 2, 'double'),
(21, 'asda', 'asda', '1234', '2017-12-06', '2017-12-15', 2, 'single');

-- --------------------------------------------------------

--
-- Table structure for table `resort_rooms`
--

DROP TABLE IF EXISTS `resort_rooms`;
CREATE TABLE IF NOT EXISTS `resort_rooms` (
  `Room_id` int(11) NOT NULL,
  `Type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resort_rooms`
--

INSERT INTO `resort_rooms` (`Room_id`, `Type`) VALUES
(602, 'Deluxe'),
(601, 'Deluxe'),
(603, 'Deluxe'),
(604, 'Deluxe'),
(605, 'Deluxe'),
(701, 'Presidential'),
(702, 'Presidential'),
(703, 'Presidential'),
(101, 'Single'),
(102, 'Single'),
(103, 'Single'),
(104, 'Single'),
(105, 'Single'),
(106, 'Single'),
(107, 'Single'),
(108, 'Single'),
(109, 'Single'),
(110, 'Single'),
(201, 'Double'),
(202, 'Double'),
(203, 'Double'),
(204, 'Double'),
(205, 'Double'),
(206, 'Double'),
(207, 'Double'),
(208, 'Double'),
(209, 'Double'),
(210, 'Double'),
(1001, 'Bungalow'),
(1002, 'Bungalow');

-- --------------------------------------------------------

--
-- Structure for view `bestrating`
--
DROP TABLE IF EXISTS `bestrating`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bestrating`  AS  select `rating`.`id` AS `id`,`rating`.`star` AS `star`,`rating`.`comnt` AS `comnt` from `rating` where `rating`.`star` limit 0,5 ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
