-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 02:17 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `updatepj2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(64) NOT NULL,
  `telephone` int(10) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `email`, `telephone`, `id`, `firstname`, `lastname`, `status`) VALUES
('admin', '123456', 'witsanu091@gmail.com', 955482818, 1, 'petch ', 'lnw', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `avgscore`
-- (See below for the actual view)
--
CREATE TABLE `avgscore` (
`TID` int(11)
,`avgscore` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CID` int(11) NOT NULL,
  `CName` varchar(30) NOT NULL,
  `CTID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CID`, `CName`, `CTID`) VALUES
(1, 'คอร์สเพิ่มกล้ามเนื้อ', 1),
(2, 'คอร์สกระชับสัดส่วน', 2),
(3, 'คอร์สลดน้ำหนักและไขมัน', 3),
(4, 'คอร์สนักฬาวิ่ง', 4),
(5, 'คอร์สว่ายน้ำ', 4),
(6, 'คอร์สชกมวย', 4),
(7, 'คอร์สคาดิโอ', 3),
(8, 'คอร์สโยคะ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `course_type`
--

CREATE TABLE `course_type` (
  `CTID` int(11) NOT NULL,
  `CTName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_type`
--

INSERT INTO `course_type` (`CTID`, `CTName`) VALUES
(1, 'การออกกำลังกายเพื่อสร้างกล้ามเนื้อ'),
(2, 'การออกกำลังกายเพื่อกระชับสัดส่วน'),
(3, 'การออกกำลังกายเพื่อลดน้ำหนัก'),
(4, 'การออกกำลังกายประเภทกีฬา');

-- --------------------------------------------------------

--
-- Stand-in structure for view `course_view`
-- (See below for the actual view)
--
CREATE TABLE `course_view` (
`TCID` int(11)
,`id` int(11)
,`CTID` int(11)
,`CName` varchar(30)
,`firstname` varchar(20)
,`lastname` varchar(20)
,`nickname` varchar(20)
,`gender` varchar(20)
,`TCPrice` int(5)
,`TCDetails` varchar(100)
,`LName` varchar(25)
,`email` varchar(64)
,`contact` varchar(200)
,`telephone` varchar(10)
,`CID` int(11)
,`LID` int(11)
,`avgscore` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ct1`
-- (See below for the actual view)
--
CREATE TABLE `ct1` (
`id` int(11)
,`CName` varchar(30)
,`firstname` varchar(20)
,`lastname` varchar(20)
,`nickname` varchar(20)
,`gender` varchar(20)
,`TCPrice` int(5)
,`LName` varchar(25)
,`avgscore` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ct2`
-- (See below for the actual view)
--
CREATE TABLE `ct2` (
`id` int(11)
,`CName` varchar(30)
,`firstname` varchar(20)
,`lastname` varchar(20)
,`nickname` varchar(20)
,`gender` varchar(20)
,`TCPrice` int(5)
,`LName` varchar(25)
,`avgscore` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ct3`
-- (See below for the actual view)
--
CREATE TABLE `ct3` (
`id` int(11)
,`CName` varchar(30)
,`firstname` varchar(20)
,`lastname` varchar(20)
,`nickname` varchar(20)
,`gender` varchar(20)
,`TCPrice` int(5)
,`LName` varchar(25)
,`avgscore` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ct4`
-- (See below for the actual view)
--
CREATE TABLE `ct4` (
`id` int(11)
,`CName` varchar(30)
,`firstname` varchar(20)
,`lastname` varchar(20)
,`nickname` varchar(20)
,`gender` varchar(20)
,`TCPrice` int(5)
,`LName` varchar(25)
,`avgscore` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `engage`
--

CREATE TABLE `engage` (
  `ENGID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `StartCourse` date DEFAULT NULL,
  `EndCourse` date DEFAULT NULL,
  `TCID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engage`
--

INSERT INTO `engage` (`ENGID`, `UID`, `StartCourse`, `EndCourse`, `TCID`) VALUES
(16, 1, NULL, NULL, 1),
(17, 1, NULL, NULL, 6),
(18, 1, NULL, NULL, 6),
(19, 1, NULL, NULL, 23);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LID` int(11) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `LLatitude` float DEFAULT NULL,
  `LLongitude` float DEFAULT NULL,
  `LPic` varchar(200) DEFAULT NULL,
  `LDetails` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LID`, `LName`, `LLatitude`, `LLongitude`, `LPic`, `LDetails`) VALUES
(1, 'Thai-M GYM', NULL, NULL, NULL, 'THAI-M GYM - สาขาหลังมอ\r\nเทศบาลนครขอนแก่น 40000\r\nเปิดทุกวัน เวลา 10.00 น.-24.00 น.\r\nค่าบริการ รายวัน 30 บาท\r\nรายเดือน 490 บาท\r\nราย 3 เดือน 1200 บาท\r\nราย 6 เดือน 2200 บาท\r\nรายปี 4200 บาท'),
(2, 'Columbo GYM', NULL, NULL, NULL, 'เปิดทุกวัน เวลา 10.00 น.-23.00 น.\r\nค่าบริการ รายวัน 40 บาท\r\nรายเดือน 850 บาท\r\nราย 3 เดือน 2400 บาท\r\nราย 6 เดือน 4500 บาท\r\nรายปี 8000 บาท'),
(3, 'NP PARK', NULL, NULL, NULL, '490/1 Moo.12 Sila\r\nKhon Kaen District 40000\r\nเปิดทุกวัน เวลา 09.00 น.-00.00 น.\r\nค่าบริการ รายวัน 30 บาท');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `RTID` int(11) NOT NULL,
  `RTScore` int(1) NOT NULL,
  `UID` int(11) NOT NULL,
  `TID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`RTID`, `RTScore`, `UID`, `TID`) VALUES
(0, 5, 2, 1),
(1, 1, 3, 4),
(2, 1, 2, 5),
(3, 4, 1, 6),
(4, 0, 3, 7),
(7, 4, 3, 8),
(8, 4, 1, 9),
(9, 1, 2, 10),
(10, 3, 1, 11),
(11, 5, 3, 12),
(12, 0, 2, 1),
(13, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedue`
--

CREATE TABLE `schedue` (
  `SCHDID` int(11) NOT NULL,
  `SCHDDes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedue`
--

INSERT INTO `schedue` (`SCHDID`, `SCHDDes`) VALUES
(0, 'งดสอนเฉพาะวันจันทร์และวันอาทิตย์');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `type` int(1) NOT NULL,
  `token_login` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางข้อมูลเทรนเนอร์';

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `firstname`, `lastname`, `nickname`, `weight`, `height`, `birthday`, `gender`, `telephone`, `email`, `username`, `password`, `contact`, `status`, `type`, `token_login`) VALUES
(1, 'พงสิทธิ์', 'กระเบา', 'ต้า', 67, 173, '1985-03-07', 'male', '0883265037', 'phongsit@hotmail.com ', 'phongsit_t', '827ccb0eea8a706c4c34a16891f84e7b', 'Phongsit  Krabao', 1, 2, '4bb3912c0ccc798c852449b8412c2bd2'),
(4, 'วัชร์สิทธิ์', 'น้อยชมพู', 'นุก', 93, 183, '1987-03-17', 'male', '0643064547', 'watchasit@gmail.com ', 'watchasit_', '12345', 'Nook Watchasit', 1, 2, ''),
(5, 'สหชัย', 'ประดิษฐ์แท่น', 'ช็อปเปอร์', 90, 178, '1985-03-27', 'male', '0899456097', 'sahachai@gmail.com', 'sahachai_t', '12345', 'Sahachai  Pradidtan', 1, 2, ''),
(6, 'คุณณปภัช', 'เดชไพรกลา', 'ฝน', 55, 159, '1990-03-15', 'female', '0982454997', 'fon_t@hotmail.com', 'fon_t', '12345', 'Khunnapaphach  Dechpraikla', 1, 2, ''),
(7, 'ยศพนธ์', 'นิธิวัฒนศักดิ์', 'เบน', 77, 170, '1992-06-11', 'male', '0612614157', 'ben_t@hotmail.com', 'ben_t', '12345', 'Ben  Nitiwattanasak', 1, 2, ''),
(8, 'ปรารถนา ', 'สวยสม', 'เล็ก', 55, 160, '1995-08-01', 'female', '0666666666', 'lek_t@hotmail.com', 'lek_t', '12345', 'Prasthana  Suisom', 1, 2, ''),
(9, 'นนทิชา', 'กองพร', 'เจเจ้', 47, 161, '1990-01-14', 'female', '0875460151', 'jj_t@hotmail.com', 'jj_t', '12345', 'Nonthicha  Kongporn', 1, 2, ''),
(10, 'นิธิกร', 'นิธิกร', 'โค้ก', 70, 175, '1988-02-10', 'male', '0870440051', 'coke_t@hotmail.com', 'coke_t', '12345', 'Coke nitikorn', 1, 2, ''),
(11, 'ฟลุ๊ค', 'ฟลุ๊ค', 'ฟลุ๊ค', 80, 180, '1990-01-25', 'male', '0909579040', 'fluk_t@hotmail.com', 'fluke_t', '12345', 'Fluke Paeng-on', 1, 2, ''),
(12, 'เน็ต', 'เน็ต', 'เน็ต', 72, 172, '1993-12-17', 'male', '0622435070', 'net_t@hotmail.com', 'net_t', '12345', 'Theerawat Channongwaeng', 1, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `trainer_course_aviable`
--

CREATE TABLE `trainer_course_aviable` (
  `TCID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `TCPrice` int(5) DEFAULT NULL,
  `TCDetails` varchar(100) DEFAULT NULL,
  `LID` int(11) NOT NULL,
  `SCHDID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainer_course_aviable`
--

INSERT INTO `trainer_course_aviable` (`TCID`, `TID`, `CID`, `TCPrice`, `TCDetails`, `LID`, `SCHDID`) VALUES
(1, 1, 1, 2500, '3-4 วัน/สัปดาห์', 1, 0),
(2, 1, 2, 2500, '3-4 วัน/สัปดาห์', 1, 0),
(3, 1, 3, 2500, '3-4 วัน/สัปดาห์', 1, 0),
(4, 4, 2, 3500, 'ระยะเวลาสอนทั้งหมด 17 ชั่วโมง', 1, 0),
(5, 4, 7, 3500, 'ระยะเวลาสอนทั้งหมด 17 ชั่วโมง', 1, 0),
(6, 5, 1, 3500, '4-5 วัน/สัปดาห์', 1, 0),
(7, 5, 2, 3500, '4-5 วัน/สัปดาห์', 1, 0),
(8, 5, 6, 1500, 'ระยะเวลาสอนทั้งหมด 10 ครั้ง', 1, 0),
(9, 5, 5, 1500, 'ระยะเวลาสอนทั้งหมด 10 ครั้ง', 1, 0),
(10, 5, 8, 300, 'ระยะเวลาสอนทั้งหมด 1 ชั่วโมง', 1, 0),
(11, 6, 1, 1500, 'ระยะเวลาสอนทั้งหมด 15 วัน', 1, 0),
(12, 6, 2, 1500, 'ระยะเวลาสอนทั้งหมด 15 วัน', 1, 0),
(13, 6, 1, 2000, 'ระยะเวลาสอนทั้งหมด 1 เดือน', 1, 0),
(14, 6, 2, 2000, 'ระยะเวลาสอนทั้งหมด 1 เดือน', 1, 0),
(15, 7, 1, 3000, 'ระยะเวลาสอนทั้งหมด 20-26 ครั้ง\r\nสอนครั้งละ 45-60 นาที', 2, 0),
(16, 7, 2, 3000, 'ระยะเวลาสอนทั้งหมด 20-26 ครั้ง\r\nสอนครั้งละ 45-60 นาที', 2, 0),
(17, 8, 1, 3500, 'ระยะเวลาสอนทั้งหมด 20 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง', 2, 0),
(18, 8, 2, 3500, 'ระยะเวลาสอนทั้งหมด 20 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง', 2, 0),
(19, 9, 2, 3500, 'เน้นสอนเฉพาะผู้หญิง', 2, 0),
(20, 9, 7, 3500, 'เน้นสอนเฉพาะผู้หญิง', 2, 0),
(21, 10, 1, 3500, 'ช่วยแนะนำโภชนาการ', 3, 0),
(22, 10, 2, 3500, 'ช่วยแนะนำโภชนาการ', 3, 0),
(23, 11, 1, 3200, 'ระยะเวลาสอนทั้งหมด 18 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง', 3, 0),
(24, 11, 2, 3000, 'ระยะเวลาสอนทั้งหมด 15 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง 30 นาที', 3, 0),
(25, 11, 6, 1200, 'ระยะเวลาสอนทั้งหมด 10 ครั้ง', 3, 0),
(26, 12, 1, 2800, 'ระยะเวลาสอนทั้งหมด 20 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง', 3, 0),
(27, 12, 2, 2500, 'ระยะเวลาสอนทั้งหมด 20 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง ', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `weight` float NOT NULL,
  `height` float NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `email` varchar(64) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `ULatitude` float DEFAULT NULL,
  `ULongitude` float DEFAULT NULL,
  `type` int(1) NOT NULL,
  `token_login` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางข้อมูลผู้ใช้';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `nickname`, `weight`, `height`, `birthday`, `gender`, `telephone`, `email`, `username`, `password`, `status`, `ULatitude`, `ULongitude`, `type`, `token_login`) VALUES
(1, 'พชร', 'สรภูมิ', 'ปี', 60, 174, '1998-05-16', 'male', '0929179015', 'patchara_cs@kkumail.com', 'patchara_ft', '63ef7d1f1d3d396a84bba4027e678f84', 2, NULL, NULL, 1, 'a5c4b5fb13dd7c9410aa0bdddecc3540'),
(2, 'วิษณุ', 'พลไธสง', 'เพชร', 62, 175, '1997-10-02', 'male', '0955482818', 'witsanu_cs@kkumail.com', 'witsanu_ft', 'dc65c48db6296dabfabc2d9ab1330914', 1, NULL, NULL, 1, '71c030e3b22ec7284ce91329ae6ce855'),
(3, 'ยุทธนา', 'รจนาสม', 'เจ', 58, 172, '1997-12-02', 'male', '0111111111', 'yuttana_cs@kkumail.com', 'yuttana_ft', '1bbd886460827015e5d605ed44252251', 1, NULL, NULL, 1, 'b83340d0d616138552bb3ea07ca40192'),
(4, 'พิมมี่', 'อิอิ', 'พิมพิม', 48, 164, '2000-12-14', 'female', '0956455457', 'thitimaporn@hotmail', 'pim_tf', '25f9e794323b453885f5181f1b624d0b', 1, NULL, NULL, 1, NULL),
(17, 'ศิริวัฒน์', 'สุทธิปัญโญ', 'แมน', 65, 175, '1997-03-18', 'male', '0222222222', 'man_gis@kkumail.com', 'man_ft', 'dc65c48db6296dabfabc2d9ab1330914', 1, NULL, NULL, 1, NULL),
(18, 'ชิษณุพงษ์', 'ขันแก้ว', 'ซัน', 105, 175, '1998-08-07', 'male', '0333333333', 'sun_it@kkumail.com', 'sun_ft', 'dc65c48db6296dabfabc2d9ab1330914', 1, NULL, NULL, 1, NULL),
(19, 'ภคพงศ์', 'สอนเอก', 'น็อต', 52, 175, '1996-10-16', 'male', '0444444444', 'not_cs@kkumail.com', 'not_ft', 'dc65c48db6296dabfabc2d9ab1330914', 1, NULL, NULL, 1, NULL),
(20, 'พงศกร', 'นาคอก', 'เบ็ค', 60, 175, '1997-03-01', 'male', '0555555555', 'beck_cs@kkumail.com', 'beck_ft', 'dc65c48db6296dabfabc2d9ab1330914', 1, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure for view `avgscore`
--
DROP TABLE IF EXISTS `avgscore`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `avgscore`  AS  select `review`.`TID` AS `TID`,avg(`review`.`RTScore`) AS `avgscore` from `review` group by `review`.`TID` ;

-- --------------------------------------------------------

--
-- Structure for view `course_view`
--
DROP TABLE IF EXISTS `course_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `course_view`  AS  select distinct `tca`.`TCID` AS `TCID`,`t`.`id` AS `id`,`c`.`CTID` AS `CTID`,`c`.`CName` AS `CName`,`t`.`firstname` AS `firstname`,`t`.`lastname` AS `lastname`,`t`.`nickname` AS `nickname`,`t`.`gender` AS `gender`,`tca`.`TCPrice` AS `TCPrice`,`tca`.`TCDetails` AS `TCDetails`,`l`.`LName` AS `LName`,`t`.`email` AS `email`,`t`.`contact` AS `contact`,`t`.`telephone` AS `telephone`,`c`.`CID` AS `CID`,`l`.`LID` AS `LID`,`avgs`.`avgscore` AS `avgscore` from ((((`trainer_course_aviable` `tca` join `avgscore` `avgs` on((`tca`.`TID` = `avgs`.`TID`))) join `course` `c`) join `trainer` `t`) join `location` `l`) where ((`tca`.`CID` = `c`.`CID`) and (`tca`.`TID` = `t`.`id`) and (`tca`.`LID` = `l`.`LID`) and (`avgs`.`TID` = `t`.`id`)) order by `avgs`.`avgscore` desc ;

-- --------------------------------------------------------

--
-- Structure for view `ct1`
--
DROP TABLE IF EXISTS `ct1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ct1`  AS  select distinct `t`.`id` AS `id`,`c`.`CName` AS `CName`,`t`.`firstname` AS `firstname`,`t`.`lastname` AS `lastname`,`t`.`nickname` AS `nickname`,`t`.`gender` AS `gender`,`tca`.`TCPrice` AS `TCPrice`,`l`.`LName` AS `LName`,`avgs`.`avgscore` AS `avgscore` from ((((`trainer_course_aviable` `tca` join `avgscore` `avgs` on((`tca`.`TID` = `avgs`.`TID`))) join `course` `c`) join `trainer` `t`) join `location` `l`) where ((`tca`.`CID` = `c`.`CID`) and (`tca`.`TID` = `t`.`id`) and (`tca`.`LID` = `l`.`LID`) and (`avgs`.`TID` = `t`.`id`) and (`c`.`CTID` = 1)) order by `avgs`.`avgscore` desc ;

-- --------------------------------------------------------

--
-- Structure for view `ct2`
--
DROP TABLE IF EXISTS `ct2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ct2`  AS  select distinct `t`.`id` AS `id`,`c`.`CName` AS `CName`,`t`.`firstname` AS `firstname`,`t`.`lastname` AS `lastname`,`t`.`nickname` AS `nickname`,`t`.`gender` AS `gender`,`tca`.`TCPrice` AS `TCPrice`,`l`.`LName` AS `LName`,`avgs`.`avgscore` AS `avgscore` from ((((`trainer_course_aviable` `tca` join `avgscore` `avgs` on((`tca`.`TID` = `avgs`.`TID`))) join `course` `c`) join `trainer` `t`) join `location` `l`) where ((`tca`.`CID` = `c`.`CID`) and (`tca`.`TID` = `t`.`id`) and (`tca`.`LID` = `l`.`LID`) and (`avgs`.`TID` = `t`.`id`) and (`c`.`CTID` = 2)) order by `avgs`.`avgscore` desc ;

-- --------------------------------------------------------

--
-- Structure for view `ct3`
--
DROP TABLE IF EXISTS `ct3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ct3`  AS  select distinct `t`.`id` AS `id`,`c`.`CName` AS `CName`,`t`.`firstname` AS `firstname`,`t`.`lastname` AS `lastname`,`t`.`nickname` AS `nickname`,`t`.`gender` AS `gender`,`tca`.`TCPrice` AS `TCPrice`,`l`.`LName` AS `LName`,`avgs`.`avgscore` AS `avgscore` from ((((`trainer_course_aviable` `tca` join `avgscore` `avgs` on((`tca`.`TID` = `avgs`.`TID`))) join `course` `c`) join `trainer` `t`) join `location` `l`) where ((`tca`.`CID` = `c`.`CID`) and (`tca`.`TID` = `t`.`id`) and (`tca`.`LID` = `l`.`LID`) and (`avgs`.`TID` = `t`.`id`) and (`c`.`CTID` = 3)) order by `avgs`.`avgscore` desc ;

-- --------------------------------------------------------

--
-- Structure for view `ct4`
--
DROP TABLE IF EXISTS `ct4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ct4`  AS  select distinct `t`.`id` AS `id`,`c`.`CName` AS `CName`,`t`.`firstname` AS `firstname`,`t`.`lastname` AS `lastname`,`t`.`nickname` AS `nickname`,`t`.`gender` AS `gender`,`tca`.`TCPrice` AS `TCPrice`,`l`.`LName` AS `LName`,`avgs`.`avgscore` AS `avgscore` from ((((`trainer_course_aviable` `tca` join `avgscore` `avgs` on((`tca`.`TID` = `avgs`.`TID`))) join `course` `c`) join `trainer` `t`) join `location` `l`) where ((`tca`.`CID` = `c`.`CID`) and (`tca`.`TID` = `t`.`id`) and (`tca`.`LID` = `l`.`LID`) and (`avgs`.`TID` = `t`.`id`) and (`c`.`CTID` = 4)) order by `avgs`.`avgscore` desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CID`),
  ADD KEY `CTID` (`CTID`);

--
-- Indexes for table `course_type`
--
ALTER TABLE `course_type`
  ADD PRIMARY KEY (`CTID`);

--
-- Indexes for table `engage`
--
ALTER TABLE `engage`
  ADD PRIMARY KEY (`ENGID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `TCID` (`TCID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`RTID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `TID` (`TID`);

--
-- Indexes for table `schedue`
--
ALTER TABLE `schedue`
  ADD PRIMARY KEY (`SCHDID`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer_course_aviable`
--
ALTER TABLE `trainer_course_aviable`
  ADD PRIMARY KEY (`TCID`),
  ADD KEY `TID` (`TID`),
  ADD KEY `CID` (`CID`),
  ADD KEY `LID` (`LID`),
  ADD KEY `SCHDID` (`SCHDID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_login` (`token_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_type`
--
ALTER TABLE `course_type`
  MODIFY `CTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `engage`
--
ALTER TABLE `engage`
  MODIFY `ENGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `RTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `schedue`
--
ALTER TABLE `schedue`
  MODIFY `SCHDID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `trainer_course_aviable`
--
ALTER TABLE `trainer_course_aviable`
  MODIFY `TCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`CTID`) REFERENCES `course_type` (`CTID`);

--
-- Constraints for table `engage`
--
ALTER TABLE `engage`
  ADD CONSTRAINT `engage_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `engage_ibfk_2` FOREIGN KEY (`TCID`) REFERENCES `trainer_course_aviable` (`TCID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`TID`) REFERENCES `trainer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trainer_course_aviable`
--
ALTER TABLE `trainer_course_aviable`
  ADD CONSTRAINT `trainer_course_aviable_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `course` (`CID`),
  ADD CONSTRAINT `trainer_course_aviable_ibfk_2` FOREIGN KEY (`TID`) REFERENCES `trainer` (`id`),
  ADD CONSTRAINT `trainer_course_aviable_ibfk_3` FOREIGN KEY (`LID`) REFERENCES `location` (`LID`),
  ADD CONSTRAINT `trainer_course_aviable_ibfk_5` FOREIGN KEY (`SCHDID`) REFERENCES `schedue` (`SCHDID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
