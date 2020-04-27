-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2020 at 08:20 AM
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
-- Database: `mytrainer`
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
,`LDetails` varchar(200)
,`LContact` varchar(200)
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
  `TCID` int(11) NOT NULL,
  `engage_status` int(1) NOT NULL,
  `review_score` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engage`
--

INSERT INTO `engage` (`ENGID`, `UID`, `StartCourse`, `EndCourse`, `TCID`, `engage_status`, `review_score`) VALUES
(16, 1, NULL, '2020-04-26', 1, 4, 0),
(17, 1, '2020-04-21', NULL, 6, 2, 3),
(18, 1, NULL, '2020-04-25', 6, 4, 4),
(19, 1, NULL, NULL, 23, 3, 2),
(20, 1, NULL, NULL, 27, 2, 5),
(21, 22, NULL, NULL, 24, 2, 3),
(22, 1, '2020-04-21', '2020-04-25', 7, 4, 1),
(23, 1, '2020-04-25', '2020-04-25', 10, 4, 5),
(24, 1, '2020-04-21', NULL, 7, 3, 4),
(27, 1, '2020-04-21', NULL, 23, 2, NULL),
(28, 1, '2020-04-26', '2020-04-26', 28, 4, 5),
(29, 1, '2020-04-26', '2020-04-26', 1, 4, 3),
(30, 1, NULL, NULL, 26, 1, NULL),
(31, 1, NULL, NULL, 26, 1, NULL),
(32, 1, '2020-04-26', '2020-04-26', 6, 4, 4),
(33, 1, '2020-04-26', '2020-04-26', 3, 4, 4),
(34, 1, '2020-04-27', NULL, 3, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LID` int(11) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `LDetails` varchar(200) NOT NULL,
  `LContact` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LID`, `LName`, `LDetails`, `LContact`) VALUES
(1, 'Thai-M GYM', 'THAI-M GYM - สาขาหลังมอ\r\nเทศบาลนครขอนแก่น 40000\r\nเปิดทุกวัน เวลา 10.00 น.-24.00 น.\r\nค่าบริการ รายวัน 30 บาท\r\nรายเดือน 490 บาท\r\nราย 3 เดือน 1200 บาท\r\nราย 6 เดือน 2200 บาท\r\nรายปี 4200 บาท', 'https://www.facebook.com/thaimlungmor/'),
(2, 'Columbo GYM', 'เปิดทุกวัน เวลา 10.00 น.-23.00 น.\r\nค่าบริการ รายวัน 40 บาท\r\nรายเดือน 850 บาท\r\nราย 3 เดือน 2400 บาท\r\nราย 6 เดือน 4500 บาท\r\nรายปี 8000 บาท', 'https://www.facebook.com/Columbo-Gym-305987273120023/'),
(3, 'NP PARK', '490/1 Moo.12 Sila\r\nKhon Kaen District 40000\r\nเปิดทุกวัน เวลา 09.00 น.-00.00 น.\r\nค่าบริการ รายวัน 30 บาท', 'https://www.facebook.com/Npparkgym/');

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
  `password` varchar(100) NOT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `type` int(1) NOT NULL,
  `token_login` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางข้อมูลเทรนเนอร์';

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `firstname`, `lastname`, `nickname`, `weight`, `height`, `birthday`, `gender`, `telephone`, `email`, `password`, `contact`, `status`, `type`, `token_login`) VALUES
(1, 'พงสิทธิ์', 'กระเบา', 'ต้า', 67, 173, '1985-03-07', 'male', '0883265037', 'phongsit@hotmail.com ', '827ccb0eea8a706c4c34a16891f84e7b', 'Phongsit  Krabao', 1, 2, '291a29b848a754a2e04e45510c180e98'),
(4, 'วัชร์สิทธิ์', 'น้อยชมพู', 'นุก', 93, 183, '1987-03-17', 'male', '0643064547', 'watchasit@gmail.com ', '827ccb0eea8a706c4c34a16891f84e7b', 'Nook Watchasit', 1, 2, ''),
(5, 'สหชัย', 'ประดิษฐ์แท่น', 'ช็อปเปอร์', 90, 178, '1985-03-27', 'male', '0899456097', 'sahachai@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Sahachai  Pradidtan', 1, 2, '00364b0d5b3fb4c0b4b9a2e65793e0c6'),
(6, 'คุณณปภัช', 'เดชไพรกลา', 'ฝน', 55, 159, '1990-03-15', 'female', '0982454997', 'fon_t@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Khunnapaphach  Dechpraikla', 1, 2, '0a9f6e51857b928db4aeaa63f7a719cd'),
(7, 'ยศพนธ์', 'นิธิวัฒนศักดิ์', 'เบน', 77, 170, '1992-06-11', 'male', '0612614157', 'ben_t@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Ben  Nitiwattanasak', 1, 2, ''),
(8, 'ปรารถนา ', 'สวยสม', 'เล็ก', 55, 160, '1995-08-01', 'female', '0666666666', 'lek_t@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Prasthana  Suisom', 1, 2, ''),
(9, 'นนทิชา', 'กองพร', 'เจเจ้', 47, 161, '1990-01-14', 'female', '0875460151', 'jj_t@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Nonthicha  Kongporn', 1, 2, ''),
(10, 'นิธิกร', 'นิธิกร', 'โค้ก', 70, 175, '1988-02-10', 'male', '0870440051', 'coke_t@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Coke nitikorn', 1, 2, ''),
(11, 'ฟลุ๊ค', 'ฟลุ๊ค', 'ฟลุ๊ค', 80, 180, '1990-01-25', 'male', '0909579040', 'fluk_t@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Fluke Paeng-on', 1, 2, '724fca37fc07b8e0fca0201397ea9ff8'),
(12, 'เน็ต', 'เน็ต', 'เน็ต', 72, 172, '1993-12-17', 'male', '0622435070', 'net_t@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Theerawat Channongwaeng', 1, 2, '');

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
  `LID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainer_course_aviable`
--

INSERT INTO `trainer_course_aviable` (`TCID`, `TID`, `CID`, `TCPrice`, `TCDetails`, `LID`) VALUES
(1, 1, 1, 2500, '3-4 วัน/สัปดาห์', 1),
(2, 1, 2, 2500, '3-4 วัน/สัปดาห์', 1),
(3, 1, 3, 2500, '3-4 วัน/สัปดาห์', 1),
(4, 4, 2, 3500, 'ระยะเวลาสอนทั้งหมด 17 ชั่วโมง', 1),
(5, 4, 7, 3500, 'ระยะเวลาสอนทั้งหมด 17 ชั่วโมง', 1),
(6, 5, 1, 3500, '4-5 วัน/สัปดาห์', 1),
(7, 5, 2, 3500, '4-5 วัน/สัปดาห์', 1),
(8, 5, 6, 1500, 'ระยะเวลาสอนทั้งหมด 10 ครั้ง', 1),
(9, 5, 5, 1500, 'ระยะเวลาสอนทั้งหมด 10 ครั้ง', 1),
(10, 5, 8, 300, 'ระยะเวลาสอนทั้งหมด 1 ชั่วโมง', 1),
(11, 6, 1, 1500, 'ระยะเวลาสอนทั้งหมด 15 วัน', 1),
(12, 6, 2, 1500, 'ระยะเวลาสอนทั้งหมด 15 วัน', 1),
(13, 6, 1, 2000, 'ระยะเวลาสอนทั้งหมด 1 เดือน', 1),
(14, 6, 2, 2000, 'ระยะเวลาสอนทั้งหมด 1 เดือน', 1),
(15, 7, 1, 3000, 'ระยะเวลาสอนทั้งหมด 20-26 ครั้ง\r\nสอนครั้งละ 45-60 นาที', 2),
(16, 7, 2, 3000, 'ระยะเวลาสอนทั้งหมด 20-26 ครั้ง\r\nสอนครั้งละ 45-60 นาที', 2),
(17, 8, 1, 3500, 'ระยะเวลาสอนทั้งหมด 20 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง', 2),
(18, 8, 2, 3500, 'ระยะเวลาสอนทั้งหมด 20 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง', 2),
(19, 9, 2, 3500, 'เน้นสอนเฉพาะผู้หญิง', 2),
(20, 9, 7, 3500, 'เน้นสอนเฉพาะผู้หญิง', 2),
(21, 10, 1, 3500, 'ช่วยแนะนำโภชนาการ', 3),
(22, 10, 2, 3500, 'ช่วยแนะนำโภชนาการ', 3),
(23, 11, 1, 3200, 'ระยะเวลาสอนทั้งหมด 18 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง', 3),
(24, 11, 2, 3000, 'ระยะเวลาสอนทั้งหมด 15 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง 30 นาที', 3),
(25, 11, 6, 1200, 'ระยะเวลาสอนทั้งหมด 10 ครั้ง', 3),
(26, 12, 1, 2800, 'ระยะเวลาสอนทั้งหมด 20 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง', 3),
(27, 12, 2, 2500, 'ระยะเวลาสอนทั้งหมด 20 ครั้ง\r\nสอนครั้งละ 1 ชั่วโมง ', 3),
(28, 1, 5, 200, 'สอนครั้งละ 2 ชม.', 1);

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
  `password` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `type` int(1) NOT NULL,
  `token_login` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางข้อมูลผู้ใช้';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `nickname`, `weight`, `height`, `birthday`, `gender`, `telephone`, `email`, `password`, `status`, `type`, `token_login`) VALUES
(1, 'พชร', 'สรภูมิ', 'ปี', 60, 174, '1998-05-16', 'male', '0929179015', 'patchara_cs@kkumail.com', '63ef7d1f1d3d396a84bba4027e678f84', 1, 1, '1d9cd45b3c45d0ca5127b107a5d979a7'),
(2, 'วิษณุ', 'พลไธสง', 'เพชร', 62, 175, '1997-10-02', 'male', '0955482818', 'witsanu_cs@kkumail.com', 'dc65c48db6296dabfabc2d9ab1330914', 1, 1, '71c030e3b22ec7284ce91329ae6ce855'),
(3, 'ยุทธนา', 'รจนาสม', 'เจ', 58, 172, '1997-12-02', 'male', '0111111111', 'yuttana_cs@kkumail.com', '1bbd886460827015e5d605ed44252251', 1, 1, 'b83340d0d616138552bb3ea07ca40192'),
(4, 'พิมมี่', 'อิอิ', 'พิมพิม', 48, 164, '2000-12-14', 'female', '0956455457', 'thitimaporn@hotmail', '25f9e794323b453885f5181f1b624d0b', 1, 1, NULL),
(17, 'ศิริวัฒน์', 'สุทธิปัญโญ', 'แมน', 65, 175, '1997-03-18', 'male', '0222222222', 'man_gis@kkumail.com', 'man12345', 1, 1, NULL),
(18, 'ชิษณุพงษ์', 'ขันแก้ว', 'ซัน', 105, 175, '1998-08-07', 'male', '0333333333', 'sun_it@kkumail.com', 'sun12345', 1, 1, NULL),
(19, 'ภคพงศ์', 'สอนเอก', 'น็อต', 52, 175, '1996-10-16', 'male', '0444444444', 'not_cs@kkumail.com', 'not12345', 1, 1, NULL),
(20, 'พงศกร', 'นาคอก', 'เบ็ค', 60, 175, '1997-03-01', 'male', '0555555555', 'beck_cs@kkumail.com', 'beck12345', 1, 1, NULL),
(21, 'วะ', 'สรภูมิ', 'วะ', 70, 170, '0000-00-00', 'male', '0846855020', 'toy@hotmail.com', '10016b6ed5a5b09be08133fa2d282636', 1, 1, 'bfc946a9934999da0330d5e12815c43f'),
(22, 'ที่รัก', 'ของผม', 'รัก', 48, 165, '1996-12-01', 'female', '0830238211', 'lover@hotmail.com', '58f3907ef81dee7443834b0f76d247e5', 1, 1, '5181ffe26e78d7b32afbd92523bc1fd1');

-- --------------------------------------------------------

--
-- Structure for view `avgscore`
--
DROP TABLE IF EXISTS `avgscore`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `avgscore`  AS  select `tca`.`TID` AS `TID`,avg(`engage`.`review_score`) AS `avgscore` from (`engage` join `trainer_course_aviable` `tca`) where (`engage`.`TCID` = `tca`.`TCID`) group by `tca`.`TID` ;

-- --------------------------------------------------------

--
-- Structure for view `course_view`
--
DROP TABLE IF EXISTS `course_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `course_view`  AS  select distinct `tca`.`TCID` AS `TCID`,`t`.`id` AS `id`,`c`.`CTID` AS `CTID`,`c`.`CName` AS `CName`,`t`.`firstname` AS `firstname`,`t`.`lastname` AS `lastname`,`t`.`nickname` AS `nickname`,`t`.`gender` AS `gender`,`tca`.`TCPrice` AS `TCPrice`,`tca`.`TCDetails` AS `TCDetails`,`l`.`LName` AS `LName`,`t`.`email` AS `email`,`t`.`contact` AS `contact`,`t`.`telephone` AS `telephone`,`c`.`CID` AS `CID`,`l`.`LID` AS `LID`,`l`.`LDetails` AS `LDetails`,`l`.`LContact` AS `LContact`,`avgs`.`avgscore` AS `avgscore` from ((((`trainer_course_aviable` `tca` left join `avgscore` `avgs` on((`tca`.`TID` = `avgs`.`TID`))) join `course` `c`) join `trainer` `t`) join `location` `l`) where ((`tca`.`CID` = `c`.`CID`) and (`tca`.`TID` = `t`.`id`) and (`tca`.`LID` = `l`.`LID`)) order by `avgs`.`avgscore` desc ;

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
  ADD KEY `LID` (`LID`);

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
  MODIFY `ENGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `trainer_course_aviable`
--
ALTER TABLE `trainer_course_aviable`
  MODIFY `TCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- Constraints for table `trainer_course_aviable`
--
ALTER TABLE `trainer_course_aviable`
  ADD CONSTRAINT `trainer_course_aviable_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `course` (`CID`),
  ADD CONSTRAINT `trainer_course_aviable_ibfk_2` FOREIGN KEY (`TID`) REFERENCES `trainer` (`id`),
  ADD CONSTRAINT `trainer_course_aviable_ibfk_3` FOREIGN KEY (`LID`) REFERENCES `location` (`LID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
