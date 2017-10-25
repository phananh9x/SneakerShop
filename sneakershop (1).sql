-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2017 at 10:32 AM
-- Server version: 10.1.25-MariaDB
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
-- Database: `sneakershop`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `id_danhmuc` varchar(100) NOT NULL,
  `ten_danhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `id_danhmuc`, `ten_danhmuc`) VALUES
(1, 'adidas', 'adidas'),
(2, 'nike', 'nike'),
(3, 'retro', 'retro runner'),
(4, 'luxury', 'luxury'),
(5, 'phu-kien', 'phụ kiện'),
(6, 'slippers', 'slippers');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `ten` varchar(500) NOT NULL,
  `hinh` varchar(500) NOT NULL,
  `id_danhmuc` varchar(500) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten`, `hinh`, `id_danhmuc`, `gia`) VALUES
(1, 'Human Race Black', 'IMG_4524-300x240.png', 'adidas', 2190000),
(2, 'Gazelle Maroon', 'IMG_4806-300x240.png', 'adidas', 800000),
(3, 'Gazelle Black/White', 'IMG_4796-300x240.png', 'adidas', 800000),
(4, 'NMD R1 Grey', 'IMG_4675-300x240.png', 'adidas', 800000),
(5, 'Gazelle Pink', 'IMG_4803-300x240.png', 'adidas', 800000),
(6, 'Human Race Yellow', 'IMG_4528-1-300x240.png', 'adidas', 2190000),
(7, 'NMD CS2 Glitch', 'IMG_4293-min-300x240.png', 'adidas', 800000),
(8, 'NMD R2 Grey', 'IMG_4660-300x240.png', 'adidas', 800000),
(9, 'Gazelle Red', 'IMG_4800-300x240.png', 'adidas', 800000),
(10, 'NMD R2 Tokyo', 'IMG_4474-300x240.png', 'adidas', 1100000),
(11, 'Stan Smith White', 'IMG_8131-300x240.png', 'adidas', 990000),
(12, 'NMD XR1 MMJ', 'IMG_8090-1-300x240.png', 'adidas', 2500000),
(13, 'Yeezy 350 V2 Cream Rep', 'IMG_3632-min-300x240.png', 'adidas', 1200000),
(14, 'Ultra Boost Mid Grey Replica', 'IMG_4882-300x240.png', 'adidas', 1200000),
(15, 'NMD R1 PK Japan Black', 'IMG_8111-300x240.png', 'adidas', 1990000),
(16, 'Ultra Boost Khaki Replica', 'IMG_4890-1-300x240.png', 'adidas', 1200000),
(17, 'Ultra Boost Reigning Champ Replica', 'IMG_4886-300x240.png', 'adidas', 1200000),
(18, 'Ultra Boost Uncaged Haven', 'IMG_8094-300x240.png', 'adidas', 1990000),
(19, 'Ultra Boost SNS SF', 'IMG_3582-min-300x240.png', 'adidas', 800000),
(20, 'Yeezy 350 v2 Oreo Rep', 'IMG_3603-min-300x240.png', 'adidas', 1200000),
(21, 'Yeezy 350 V2 Green Rep', 'IMG_3900-min-300x240.png', 'adidas', 1100000),
(22, 'Pure Boost 2017 Blue', 'IMG_4335-300x240.png', 'adidas', 800000),
(23, 'Y-3 Pureboost All Black', 'IMG_4309-min-300x240.png', 'adidas', 1990000),
(24, 'Ultra Boost 3.0 Sakura', 'IMG_4163-300x240.png', 'adidas', 1990000),
(25, 'Pure Boost 2017 Black', 'IMG_3923-min-300x240.png', 'adidas', 800000),
(26, 'NMD R1 Raw pink', 'IMG_3995-min-300x240.png', 'adidas', 800000),
(27, 'Yeezy 350 v2 Cream', 'IMG_3632-min-300x240.png', 'adidas', 3900000),
(28, 'Ultra Boost Parley', 'IMG_4878-300x240.png', 'adidas', 2190000),
(29, 'Yeezy 350 v2 Zebra Rep', 'IMG_3627-min-300x240.png', 'adidas', 1200000),
(30, 'Ultra Boost 3.0 SNS', 'IMG_3582-min-300x240.png', 'adidas', 2190000),
(31, 'NMD R2 Panda', 'IMG_4394-300x240.png', 'adidas', 990000),
(32, 'Yeezy 350 v2 Dark/Green', 'IMG_3612-min-300x240.png', 'adidas', 3900000),
(33, 'NMD R1 PK Japan White', 'IMG_8115-300x240.png', 'adidas', 1990000),
(34, 'Yeezy 350 v2 Oreo', 'IMG_3603-min-300x240.png', 'adidas', 3400000),
(35, 'Yeezy 350 v2 Zebra', 'IMG_8107-300x240.png', 'adidas', 3900000),
(36, 'NMD XR1 Mastermind', 'IMG_3683-min-300x240.png', 'adidas', 800000),
(37, 'NMD R1 x NBHD x Invincible', 'IMG_8208-300x240.png', 'adidas', 1990000),
(38, 'Ultra Boost 3.0 Black', 'IMG_3589-min-300x240.png', 'adidas', 1990000),
(39, 'Ultra Boost 2017 Black', 'IMG_4225-min-300x240.png', 'adidas', 800000),
(40, 'Y-3 Pureboost All White', 'IMG_4321-min-300x240.png', 'adidas', 1990000),
(41, 'Yeezy 350 V2 Black Red', 'IMG_3618-min-300x240.png', 'adidas', 3900000),
(42, 'Stan Smith Leather White', 'IMG_4452-300x240.png', 'adidas', 990000),
(43, 'Swift  Run Grey', 'IMG_4347-300x240.png', 'adidas', 900000),
(44, 'NMD R2 Green', 'IMG_4029-min-300x240.png', 'adidas', 750000),
(45, 'NMD R2 Black/Red', 'IMG_4380-1-300x240.png', 'adidas', 1800000),
(46, 'Stan Smith Navy', 'IMG_8128-300x240.png', 'adidas', 990000),
(47, 'NMD R1 Olive', 'IMG_4331-300x240.png', 'adidas', 800000),
(48, 'Yeezy 350 v2 Beluga', 'IMG_8098-300x240.png', 'adidas', 3400000),
(49, 'NMD R2 PK Mint', 'IMG_3696-min-300x240.png', 'adidas', 750000),
(50, 'NMD R2 Pink', 'IMG_4300-min-300x240.png', 'adidas', 750000),
(51, 'NMD R2 White/Red', 'IMG_4384-1-300x240.png', 'adidas', 1800000),
(52, 'Yeezy 350 V2 Bred', 'IMG_8102-300x240.png', 'adidas', 3400000),
(53, 'Ultra Boost 3.0 LGBT', 'IMG_3578-min-300x240.png', 'adidas', 1200000),
(54, 'Y-3 Pureboost Black White', 'IMG_4317-min-300x240.png', 'adidas', 1990000),
(55, 'NMD R2 PK Olive', 'IMG_3679-min-300x240.png', 'adidas', 750000),
(56, 'Tennis HU Green', 'IMG_3445-min-300x240.png', 'adidas', 750000),
(57, 'Yeezy 350 V2 BR Rep', 'IMG_4541-300x240.png', 'adidas', 1200000),
(58, 'Ultra Boost 2.0 Tripple White', 'IMG_8143-2-300x240.png', 'adidas', 1990000),
(59, 'Yeezy 350 V2 Bred Rep', 'IMG_4156-min-300x240.png', 'adidas', 1200000),
(60, 'Ultra Boost 2017 Navy', 'IMG_8380-300x240.png', 'adidas', 800000),
(61, 'Tennis HU Blue', 'IMG_3699-min-300x240.png', 'adidas', 1100000),
(62, 'Ultra Boost 2.0 Core Black', 'IMG_4809-1-300x240.png', 'adidas', 1990000),
(63, 'UB 3.0 Tripple White', 'IMG_3595-min-300x240.png', 'adidas', 1990000),
(64, 'UB 3.0 Tripple Black', 'IMG_3592-min-300x240.png', 'adidas', 1990000),
(65, 'Ultra Boost 2017 Đỏ', 'IMG_4228-min-300x240.png', 'adidas', 800000),
(66, 'Y-3 Pureboost Navy', 'IMG_4313-min-300x240.png', 'adidas', 1990000),
(67, 'Tennis HU Pink', 'IMG_4305-min-300x240.png', 'adidas', 750000),
(68, 'Yeezy 350 V2 Beluga Rep', 'IMG_4455-300x240.png', 'adidas', 1200000),
(69, 'Swift Run White', 'IMG_4350-300x240.png', 'adidas', 900000),
(70, 'Swift Run Black', 'IMG_4343-300x240.png', 'adidas', 900000),
(71, 'UB 2017 All White', 'IMG_4391-300x240.png', 'adidas', 800000),
(72, 'Ub 2017 All Black', 'IMG_3720-min-300x240.png', 'adidas', 800000),
(73, 'Pure Boost 2017 All Black', 'IMG_4124-min-300x240.png', 'adidas', 800000),
(74, 'Yeezy 350 V2 Beluga 2.0', 'IMG_4354-300x240.png', 'adidas', 3900000),
(75, 'Tennis HU mint', 'IMG_4289-min-300x240.png', 'adidas', 750000),
(76, 'Alpha Bounce Blue', 'IMG_4033-min-300x240.png', 'adidas', 850000),
(77, 'Alpha Bounce Black Rep', 'IMG_8376-300x240.png', 'adidas', 1100000),
(78, 'Alpha Bounce Olive', 'IMG_3776-min-300x240.png', 'adidas', 850000),
(79, 'NMD CS2 Grey', 'IMG_4146-min-300x240.png', 'adidas', 800000),
(80, 'Alpha Bounce Pink', 'IMG_4120-min-300x240.png', 'adidas', 850000),
(81, 'Alpha Bounce Đỏ', 'IMG_3795-min-300x240.png', 'adidas', 850000),
(82, 'Dép Das B/White', 'IMG_4442-300x240.png', 'adidas', 350000),
(83, 'EQT 91/17 PK Black', 'IMG_4678-300x240.png', 'adidas', 800000),
(84, 'EQT Cushion Black', 'IMG_8212-300x240.png', 'adidas', 990000),
(85, 'EQT Cushion White/Green', 'IMG_8153-300x240.png', 'adidas', 990000),
(86, 'EQT Cushion White/Red', 'IMG_8216-300x240.png', 'adidas', 990000),
(87, 'Alpha Bounce Rep Tan', 'IMG_3780-min-300x240.png', 'adidas', 1100000),
(88, 'Alpha Bounce Navy Rep', 'IMG_8372-300x240.png', 'adidas', 1100000),
(89, 'Alpha Bounce Xám', 'IMG_3768-min-300x240.png', 'adidas', 850000),
(90, 'Alpha Bounce Xám Rep', 'IMG_4365-300x240.png', 'adidas', 1100000),
(91, 'Dép Mono Đen', 'IMG_4434-300x240.png', 'adidas', 350000),
(92, 'Dép Mono Đỏ', 'IMG_4436-300x240.png', 'adidas', 350000),
(93, 'Dép Mono Xanh', 'IMG_4432-300x240.png', 'adidas', 350000),
(94, 'Dép Mono Xám', 'IMG_4429-300x240.png', 'adidas', 350000),
(95, 'Sock Dart White', 'IMG_4117-min-300x240.png', 'nike', 800000),
(96, 'Vapormax Pure Platinum', 'IMG_8383-300x240.png', 'nike', 1700000),
(97, 'Sock Dart Silver', 'IMG_4470-300x240.png', 'nike', 800000),
(98, 'Uptempo Maroon', 'IMG_8220-300x240.png', 'nike', 1700000),
(99, 'Vapormax Triple Black', 'IMG_8387-300x240.png', 'nike', 1700000),
(100, 'Uptempo All White', 'IMG_4848-300x240.png', 'nike', 1700000),
(101, 'Uptempo Olympic', 'IMG_4852-300x240.png', 'nike', 1700000),
(102, 'Suptempo Supreme Gold', 'IMG_8138-300x240.png', 'nike', 1990000),
(103, 'Suptempo Red/White', 'IMG_8224-300x240.png', 'nike', 1990000),
(104, 'Presto Slip On Navy', 'IMG_4048-min-300x240.png', 'nike', 750000),
(105, 'Presto Slip On Cam', 'IMG_4052-min-300x240.png', 'nike', 750000),
(106, 'Air Fore 1 Jade', 'IMG_4409-300x240.png', 'nike', 1600000),
(107, 'Air Fore 1 White', 'IMG_4405-300x240.png', 'nike', 1300000),
(108, 'Presto Navy', 'IMG_4018-min-300x240.png', 'nike', 800000),
(109, 'Presto Slip On Đen', 'IMG_4058-min-300x240.png', 'nike', 750000),
(110, 'Racer Grey', 'IMG_4173-min-300x240.png', 'nike', 700000),
(111, 'Presto Slip On Rêu', 'IMG_4055-min-300x240.png', 'nike', 750000),
(112, 'Racer Mica Blue', 'IMG_4185-min-300x240.png', 'nike', 700000),
(113, 'Sock Dart Chocolate', 'IMG_4466-300x240.png', 'nike', 800000),
(114, 'Kobe Black', 'IMG_4368-300x240.png', 'nike', 850000),
(115, 'Air Max 97 Gold', 'IMG_8134-300x240.png', 'nike', 1900000),
(116, 'Sock Dart Black', 'IMG_3887-min-300x240.png', 'nike', 800000),
(117, 'Sock Dart Blue', 'IMG_4114-min-300x240.png', 'nike', 800000),
(118, 'Kobe Grey', 'IMG_4372-300x240.png', 'nike', 850000),
(119, 'Racer Violet', 'IMG_4181-min-300x240.png', 'nike', 700000),
(120, 'Racer Pink', 'IMG_4177-min-300x240.png', 'nike', 700000),
(121, 'EQT Cushion White/Green', 'IMG_8153-300x240.png', 'retro', 990000),
(122, 'Air Max 97 Gold', 'IMG_8134-300x240.png', 'retro', 1900000),
(123, 'EQT Cushion White/Red', 'IMG_8216-300x240.png', 'retro', 990000),
(124, 'EQT Cushion Black', 'IMG_8212-300x240.png', 'retro', 990000),
(125, 'NB 997 Grey', 'IMG_4200-min-300x240.png', 'retro', 900000),
(126, 'NB 997 Homeplate', 'IMG_4204-min-300x240.png', 'retro', 900000),
(127, 'NB 997 Navy', 'IMG_4196-min-300x240.png', 'retro', 900000),
(128, 'NB 997 Olive', 'IMG_4192-min-300x240.png', 'retro', 900000),
(129, 'NB 997 Rose', 'IMG_4214-min-300x240.png', 'retro', 900000),
(130, 'NB 998 Concept', 'IMG_4210-min-300x240.png', 'retro', 900000),
(131, 'Gucci Chicken', 'gucci-3-300x240.jpg', 'luxury', 2190000),
(132, 'Gucci Sneaker Ace White', 'IMG_4824-300x240.png', 'luxury', 2900000),
(133, 'Balenciaga All Black', 'IMG_4856-300x240.png', 'luxury', 2190000),
(134, 'Gucci Sneaker Bee', 'IMG_4820-300x240.png', 'luxury', 2900000),
(135, 'Balenciaga Black 1:1', 'IMG_4532-300x240.png', 'luxury', 2190000),
(136, 'Gucci Snake', 'gucci-5-300x240.png', 'luxury', 2190000),
(137, 'Rick Owens SS17 High', 'IMG_4463-300x240.png', 'luxury', 3400000),
(138, 'Balenciaga Black 2017', 'IMG_8148-300x240.png', 'luxury', 2190000),
(139, 'Rick Owens SS17 Low', 'IMG_4459-300x240.png', 'luxury', 3300000),
(140, 'Balenciaga Grey', 'IMG_4064-min-300x240.png', 'luxury', 1500000),
(141, 'Balenciaga White', 'IMG_4398-300x240.png', 'luxury', 1500000),
(142, 'Converse x KITH x Cocacola', 'IMG_4816-300x240.png', 'luxury', 1350000),
(143, 'Dép Das White', 'IMG_4440-300x240.png', 'slippers', 350000),
(144, 'Dép Das B/White', 'IMG_4442-300x240.png', 'slippers', 350000),
(145, 'Dép Fila White', 'IMG_4538-300x240.png', 'slippers', 350000),
(146, 'Dép Fila B/W Rep', 'IMG_4539-300x240.png', 'slippers', 350000),
(147, 'Dép Fila Grey Rep', 'IMG_4540-300x240.png', 'slippers', 350000),
(148, 'Dép FL Black', 'IMG_4449-300x240.png', 'slippers', 350000),
(149, 'Dép FS Trắng', 'IMG_4444-300x240.png', 'slippers', 350000),
(150, 'Dép FS Đen', 'IMG_4450-300x240.png', 'slippers', 350000),
(151, 'Dép Mono Đen', 'IMG_4434-300x240.png', 'slippers', 350000),
(152, 'Dép Mono Xanh', 'IMG_4432-300x240.png', 'slippers', 350000),
(153, 'Dép Mono Đỏ', 'IMG_4436-300x240.png', 'slippers', 350000),
(154, 'Dép FS Xám', 'IMG_4447-300x240.png', 'slippers', 350000),
(155, 'Dép Fila W/B Rep', 'IMG_4537-300x240.png', 'slippers', 350000),
(156, 'Dép Fila Black Rep', 'IMG_4535-300x240.png', 'slippers', 350000),
(157, 'Supreme Gun', '19220697_1382102938535926_23535480184242176_n-300x240.jpg', 'phu-kien', 1500000),
(158, 'Vớ Yeezy', 'IMG_4378-300x240.png', 'phu-kien', 200000),
(159, 'Vớ', 'IMG_4379-300x240.png', 'phu-kien', 20000),
(160, 'LV x Supreme Backpack Black', '20170802013982208220-300x240.jpg', 'phu-kien', 3500000),
(161, 'LV x Supreme Brazza Wallet Black', '20170802051443994399-300x240.jpg', 'phu-kien', 1200000),
(162, 'LV x Supreme Backpack Red', '20170626032390699069-300x240.jpg', 'phu-kien', 3500000),
(163, 'LV x Supreme Brazza Wallet Red', '20170802051633853385-300x240.jpg', 'phu-kien', 1200000),
(164, 'LV x Supreme Danube PM Black', '20170802180987618761-300x240.jpg', 'phu-kien', 2100000),
(165, 'Chai Tẩy Ố Đế', 'IMG_4894-300x240.png', 'phu-kien', 100000),
(166, 'LV x Supreme Black Chain Wallet', 'IMG_4602-300x240.png', 'phu-kien', 1200000),
(167, 'Chai Vệ Sinh Giày', 'IMG_4413-300x240.png', 'phu-kien', 80000),
(168, 'LV x Supreme Red Chain Wallet', 'IMG_4606-300x240.png', 'phu-kien', 1200000),
(169, 'LV x Supreme Keepall Red', '20170802012722102210-300x240.jpg', 'phu-kien', 3500000),
(170, 'LV x Supreme Slender Wallet Red', '20170802050154535453-300x240.jpg', 'phu-kien', 1000000),
(171, 'LV x Supreme Danube PPM Red', '20170802175311481148-300x240.jpg', 'phu-kien', 1900000),
(172, 'LV x Supreme Slender Wallet Black', '20170802045957555755-300x240.jpg', 'phu-kien', 1000000),
(173, 'LV x Supreme Danube PM Red', '20170802181182678267-300x240.jpg', 'phu-kien', 2100000),
(174, 'LV x Supreme Keepall Black', '20170802012476087608-300x240.jpg', 'phu-kien', 3500000),
(175, 'LV x Supreme Zippy Red', '20170802050990209020-300x240.jpg', 'phu-kien', 1300000),
(176, 'LV x Supreme Danube PPM Black', '20170802175147214721-300x240.jpg', 'phu-kien', 1900000),
(177, 'LV x Supreme Zippy Black', '20170802050676547654-300x240.jpg', 'phu-kien', 1300000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(200) NOT NULL,
  `user_name` varchar(500) NOT NULL,
  `user_pass` varchar(500) NOT NULL,
  `user_role` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_role`) VALUES
(1508867320515, 'nttt1001', '123123qqq', b'0'),
(1508867379683, 'phananh123qqq', '123123qqq', b'0'),
(1508898762086, 'phananh123', '123123qqq', b'0'),
(1508899961768, 'anh123qqq', '123123qqq', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
