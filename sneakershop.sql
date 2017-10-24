-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2017 at 09:12 AM
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
  `id_danhmuc` varchar(100) NOT NULL,
  `ten_danhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `ten_danhmuc`) VALUES
('adidas', 'adidas'),
('nike', 'nike'),
('retro', 'retro runner'),
('luxury', 'luxury'),
('phu-kien', 'phụ kiện');

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
(1, 'Tennis HU Blue', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3699-min-300x240.png', 'adidas', 1100000),
(2, 'Tennis HU Green', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3445-min-300x240.png', 'adidas', 750000),
(3, 'Tennis HU mint', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4289-min-300x240.png', 'adidas', 750000),
(4, 'Tennis HU Pink', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4305-min-300x240.png', 'adidas', 750000),
(5, 'Ub 2017 All Black', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3720-min-300x240.png', 'adidas', 800000),
(6, 'UB 2017 All White', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4391-300x240.png', 'adidas', 800000),
(7, 'UB 3.0 Tripple Black', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3592-min-300x240.png', 'adidas', 1990000),
(8, 'UB 3.0 Tripple White', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3595-min-300x240.png', 'adidas', 1990000),
(9, 'Ultra Boost 2.0 Core Black', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4809-1-300x240.png', 'adidas', 1990000),
(10, 'Ultra Boost 2.0 Tripple White', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_8143-2-300x240.png', 'adidas', 1990000),
(11, 'Ultra Boost 2017 Black', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4225-min-300x240.png', 'adidas', 800000),
(12, 'Ultra Boost 2017 Đỏ', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4228-min-300x240.png', 'adidas', 800000),
(13, 'Ultra Boost 2017 Navy', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8380-300x240.png', 'adidas', 800000),
(14, 'Ultra Boost 3.0 Black', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3589-min-300x240.png', 'adidas', 1990000),
(15, 'Ultra Boost 3.0 LGBT', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3578-min-300x240.png', 'adidas', 1200000),
(16, 'Ultra Boost 3.0 Sakura', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4163-300x240.png', 'adidas', 1990000),
(17, 'Ultra Boost 3.0 Silver', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4387-300x240.png', 'adidas', 1990000),
(18, 'Yeezy 350 v2 Cream', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3632-min-300x240.png', 'adidas', 3900000),
(19, 'Yeezy 350 V2 Cream Rep', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3632-min-300x240.png', 'adidas', 1200000),
(20, 'Yeezy 350 v2 Dark/Green', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3612-min-300x240.png', 'adidas', 3900000),
(21, 'Yeezy 350 V2 Green Rep', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3900-min-300x240.png', 'adidas', 1100000),
(22, 'Yeezy 350 v2 Oreo', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3603-min-300x240.png', 'adidas', 3400000),
(23, 'Yeezy 350 v2 Oreo Rep', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3603-min-300x240.png', 'adidas', 1200000),
(24, 'Yeezy 350 v2 Zebra', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8107-300x240.png', 'adidas', 3900000),
(25, 'Yeezy 350 v2 Zebra Rep', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3627-min-300x240.png', 'adidas', 1200000),
(26, 'Gazelle Black/White', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4796-300x240.png', 'adidas', 800000),
(27, 'Gazelle Maroon', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4806-300x240.png', 'adidas', 800000),
(28, 'Gazelle Pink', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4803-300x240.png', 'adidas', 800000),
(29, 'Gazelle Red', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4800-300x240.png', 'adidas', 800000),
(30, 'Human Race Black', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4524-300x240.png', 'adidas', 2190000),
(31, 'Human Race Yellow', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4528-1-300x240.png', 'adidas', 2190000),
(32, 'NMD CS2 Glitch', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4293-min-300x240.png', 'adidas', 800000),
(33, 'NMD CS2 Grey', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4146-min-300x240.png', 'adidas', 800000),
(34, 'NMD R1 Grey', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4675-300x240.png', 'adidas', 800000),
(35, 'NMD R1 Olive', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4331-300x240.png', 'adidas', 800000),
(36, 'NMD R1 PK Japan Black', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8111-300x240.png', 'adidas', 1990000),
(37, 'NMD R1 PK Japan White', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_8115-300x240.png', 'adidas', 1990000),
(38, 'NMD R1 Raw pink', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3995-min-300x240.png', 'adidas', 800000),
(39, 'NMD R1 x NBHD x Invincible', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8208-300x240.png', 'adidas', 1990000),
(40, 'NMD R2 Black/Red', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4380-1-300x240.png', 'adidas', 1800000),
(41, 'NMD R2 Green', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4029-min-300x240.png', 'adidas', 750000),
(42, 'NMD R2 Grey', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4660-300x240.png', 'adidas', 800000),
(43, 'NMD R2 Navy', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4296-min-300x240.png', 'adidas', 750000),
(44, 'Ultra Boost 3.0 SNS', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3582-min-300x240.png', 'adidas', 2190000),
(45, 'Ultra Boost Khaki Replica', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4890-1-300x240.png', 'adidas', 1200000),
(46, 'Ultra Boost Mid Grey Replica', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4882-300x240.png', 'adidas', 1200000),
(47, 'Ultra Boost Parley', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4878-300x240.png', 'adidas', 2190000),
(48, 'Ultra Boost Reigning Champ Replica', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4886-300x240.png', 'adidas', 1200000),
(49, 'Ultra Boost SNS SF', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3582-min-300x240.png', 'adidas', 800000),
(50, 'Ultra Boost Uncaged Haven', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8094-300x240.png', 'adidas', 1990000),
(51, 'Y-3 Pureboost All Black', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4309-min-300x240.png', 'adidas', 1990000),
(52, 'Y-3 Pureboost All White', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4321-min-300x240.png', 'adidas', 1990000),
(53, 'Y-3 Pureboost Black White', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4317-min-300x240.png', 'adidas', 1990000),
(54, 'Y-3 Pureboost Navy', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4313-min-300x240.png', 'adidas', 1990000),
(55, 'Yeezy 350 v2 Beluga', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8098-300x240.png', 'adidas', 3400000),
(56, 'Yeezy 350 V2 Beluga 2.0', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4354-300x240.png', 'adidas', 3900000),
(57, 'Yeezy 350 V2 Beluga Rep', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4455-300x240.png', 'adidas', 1200000),
(58, 'Yeezy 350 V2 Black Red', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3618-min-300x240.png', 'adidas', 3900000),
(59, 'Yeezy 350 V2 BR Rep', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4541-300x240.png', 'adidas', 1200000),
(60, 'Yeezy 350 V2 Bred', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8102-300x240.png', 'adidas', 3400000),
(61, 'Yeezy 350 V2 Bred Rep', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4156-min-300x240.png', 'adidas', 1200000),
(62, 'Swift Run White', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4350-300x240.png', 'adidas', 900000),
(63, 'NMD R2 Panda', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4394-300x240.png', 'adidas', 990000),
(64, 'NMD R2 Pink', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4300-min-300x240.png', 'adidas', 750000),
(65, 'NMD R2 PK Mint', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3696-min-300x240.png', 'adidas', 750000),
(66, 'NMD R2 PK Olive', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3679-min-300x240.png', 'adidas', 750000),
(67, 'NMD R2 Tokyo', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4474-300x240.png', 'adidas', 1100000),
(68, 'NMD R2 White/Red', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4384-1-300x240.png', 'adidas', 1800000),
(69, 'NMD XR1 Mastermind', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3683-min-300x240.png', 'adidas', 800000),
(70, 'NMD XR1 MMJ', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8090-1-300x240.png', 'adidas', 2500000),
(71, 'Pure Boost 2017 All Black', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4124-min-300x240.png', 'adidas', 800000),
(72, 'Pure Boost 2017 Black', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3923-min-300x240.png', 'adidas', 800000),
(73, 'Pure Boost 2017 Blue', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4335-300x240.png', 'adidas', 800000),
(74, 'Stan Smith Green', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8125-300x240.png', 'adidas', 990000),
(75, 'Stan Smith Leather White', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4452-300x240.png', 'adidas', 990000),
(76, 'Stan Smith Navy', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_8128-300x240.png', 'adidas', 990000),
(77, 'Stan Smith White', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8131-300x240.png', 'adidas', 990000),
(78, 'Superstar White Gold', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4664-300x240.png', 'adidas', 1100000),
(79, 'Swift  Run Grey', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4347-300x240.png', 'adidas', 900000),
(80, 'Swift Run Black', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4343-300x240.png', 'adidas', 900000),
(81, 'Alpha Bounce Black Rep', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8376-300x240.png', 'adidas', 1100000),
(82, 'Alpha Bounce Blue', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4033-min-300x240.png', 'adidas', 850000),
(83, 'Alpha Bounce Đỏ', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3795-min-300x240.png', 'adidas', 850000),
(84, 'Alpha Bounce Navy Rep', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8372-300x240.png', 'adidas', 1100000),
(85, 'Alpha Bounce Olive', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3776-min-300x240.png', 'adidas', 850000),
(86, 'Alpha Bounce Pink', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4120-min-300x240.png', 'adidas', 850000),
(87, 'Alpha Bounce Rep Tan', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3780-min-300x240.png', 'adidas', 1100000),
(88, 'Alpha Bounce Xám', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3768-min-300x240.png', 'adidas', 850000),
(89, 'Alpha Bounce Xám Rep', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4365-300x240.png', 'adidas', 1100000),
(90, 'Dép Das B/White', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4442-300x240.png', 'adidas', 350000),
(91, 'Dép Mono Đen', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4434-300x240.png', 'adidas', 350000),
(92, 'Dép Mono Đỏ', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4436-300x240.png', 'adidas', 350000),
(93, 'Dép Mono Xám', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4429-300x240.png', 'adidas', 350000),
(94, 'Dép Mono Xanh', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4432-300x240.png', 'adidas', 350000),
(95, 'EQT 91/17 PK Black', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4678-300x240.png', 'adidas', 800000),
(96, 'EQT Cushion Black', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8212-300x240.png', 'adidas', 990000),
(97, 'EQT Cushion White/Green', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8153-300x240.png', 'adidas', 990000),
(98, 'EQT Cushion White/Red', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8216-300x240.png', 'adidas', 990000),
(99, 'Sock Dart White', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4117-min-300x240.png', 'nike', 800000),
(100, 'Suptempo Red/White', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8224-300x240.png', 'nike', 1990000),
(101, 'Suptempo Supreme Gold', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8138-300x240.png', 'nike', 1990000),
(102, 'Uptempo All White', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4848-300x240.png', 'nike', 1700000),
(103, 'Uptempo Maroon', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8220-300x240.png', 'nike', 1700000),
(104, 'Uptempo Olympic', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4852-300x240.png', 'nike', 1700000),
(105, 'Vapormax Pure Platinum', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8383-300x240.png', 'nike', 1700000),
(106, 'Vapormax Triple Black', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8387-300x240.png', 'nike', 1700000),
(107, 'Sock Dart Silver', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4470-300x240.png', 'nike', 800000),
(108, 'Air Fore 1 Jade', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4409-300x240.png', 'nike', 1600000),
(109, 'Air Fore 1 White', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4405-300x240.png', 'nike', 1300000),
(110, 'Air Max 97 Gold', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8134-300x240.png', 'nike', 1900000),
(111, 'Kobe Black', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4368-300x240.png', 'nike', 850000),
(112, 'Kobe Grey', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4372-300x240.png', 'nike', 850000),
(113, 'Presto Navy', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4018-min-300x240.png', 'nike', 800000),
(114, 'Presto Slip On Cam', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4052-min-300x240.png', 'nike', 750000),
(115, 'Presto Slip On Đen', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4058-min-300x240.png', 'nike', 750000),
(116, 'Presto Slip On Navy', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4048-min-300x240.png', 'nike', 750000),
(117, 'Presto Slip On Rêu', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4055-min-300x240.png', 'nike', 750000),
(118, 'Racer Grey', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4173-min-300x240.png', 'nike', 700000),
(119, 'Racer Mica Blue', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4185-min-300x240.png', 'nike', 700000),
(120, 'Racer Pink', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4177-min-300x240.png', 'nike', 700000),
(121, 'Racer Violet', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4181-min-300x240.png', 'nike', 700000),
(122, 'Racer White', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4401-300x240.png', 'nike', 700000),
(123, 'Sock Dart Black', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_3887-min-300x240.png', 'nike', 800000),
(124, 'Sock Dart Blue', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4114-min-300x240.png', 'nike', 800000),
(125, 'Sock Dart Chocolate', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4466-300x240.png', 'nike', 680000),
(126, 'EQT Cushion Black', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8212-300x240.png', 'retro', 990000),
(127, 'EQT Cushion White/Green', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8153-300x240.png', 'retro', 990000),
(128, 'EQT Cushion White/Red', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8216-300x240.png', 'retro', 990000),
(129, 'NB 997 Grey', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4200-min-300x240.png', 'retro', 900000),
(130, 'NB 997 Homeplate', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4204-min-300x240.png', 'retro', 900000),
(131, 'NB 997 Navy', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4196-min-300x240.png', 'retro', 900000),
(132, 'NB 997 Olive', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4192-min-300x240.png', 'retro', 900000),
(133, 'NB 997 Rose', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4214-min-300x240.png', 'retro', 900000),
(134, 'NB 998 Concept', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4210-min-300x240.png', 'retro', 900000),
(135, 'Air Max 97 Gold', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8134-300x240.png', 'retro', 1900000),
(136, 'Balenciaga Black 1:1', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4532-300x240.png', 'luxury', 2190000),
(137, 'Balenciaga Black 2017', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_8148-300x240.png', 'luxury', 2190000),
(138, 'Balenciaga Grey', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4064-min-300x240.png', 'luxury', 1500000),
(139, 'Balenciaga White', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4398-300x240.png', 'luxury', 1500000),
(140, 'Converse x KITH x Cocacola', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4816-300x240.png', 'luxury', 1350000),
(141, 'Gucci Chicken', 'http://sly1994.vn/wp-content/uploads/2017/07/gucci-3-300x240.jpg', 'luxury', 2190000),
(142, 'Gucci Snake', 'http://sly1994.vn/wp-content/uploads/2017/07/gucci-5-300x240.png', 'luxury', 2190000),
(143, 'Gucci Sneaker Ace White', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_4824-300x240.png', 'luxury', 2900000),
(144, 'Gucci Sneaker Bee', 'http://sly1994.vn/wp-content/uploads/2017/10/IMG_4820-300x240.png', 'luxury', 2900000),
(145, 'Rick Owens SS17 High', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4463-300x240.png', 'luxury', 3400000),
(146, 'Rick Owens SS17 Low', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4459-300x240.png', 'luxury', 3300000),
(147, 'Balenciaga All Black', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4856-300x240.png', 'luxury', 2190000),
(148, 'Dép Das White', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4440-300x240.png', 'slippers', 350000),
(149, 'Dép Fila B/W Rep', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4539-300x240.png', 'slippers', 350000),
(150, 'Dép Fila Black Rep', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4535-300x240.png', 'slippers', 350000),
(151, 'Dép Fila Grey Rep', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4540-300x240.png', 'slippers', 350000),
(152, 'Dép Fila W/B Rep', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4537-300x240.png', 'slippers', 350000),
(153, 'Dép Fila White', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4538-300x240.png', 'slippers', 350000),
(154, 'Dép FL Black', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4449-300x240.png', 'slippers', 350000),
(155, 'Dép FS Đen', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4450-300x240.png', 'slippers', 350000),
(156, 'Dép FS Trắng', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4444-300x240.png', 'slippers', 350000),
(157, 'Dép FS Xám', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4447-300x240.png', 'slippers', 350000),
(158, 'Dép Mono Đen', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4434-300x240.png', 'slippers', 350000),
(159, 'Dép Mono Đỏ', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4436-300x240.png', 'slippers', 350000),
(160, 'Dép Mono Xám', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4429-300x240.png', 'slippers', 350000),
(161, 'Dép Mono Xanh', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4432-300x240.png', 'slippers', 350000),
(162, 'Dép Das B/White', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4442-300x240.png', 'slippers', 350000),
(163, 'Vớ', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4379-300x240.png', 'phu-kien', 20000),
(164, 'Vớ Yeezy', 'http://sly1994.vn/wp-content/uploads/2017/07/IMG_4378-300x240.png', 'phu-kien', 200000),
(165, 'Supreme Gun', 'http://sly1994.vn/wp-content/uploads/2017/08/19220697_1382102938535926_23535480184242176_n-300x240.jpg', 'phu-kien', 1500000),
(166, 'Chai Tẩy Ố Đế', 'http://sly1994.vn/wp-content/uploads/2017/09/IMG_4894-300x240.png', 'phu-kien', 100000),
(167, 'Chai Vệ Sinh Giày', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4413-300x240.png', 'phu-kien', 80000),
(168, 'LV x Supreme Backpack Black', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802013982208220-300x240.jpg', 'phu-kien', 3500000),
(169, 'LV x Supreme Backpack Red', 'http://sly1994.vn/wp-content/uploads/2017/09/20170626032390699069-300x240.jpg', 'phu-kien', 3500000),
(170, 'LV x Supreme Black Chain Wallet', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4602-300x240.png', 'phu-kien', 1200000),
(171, 'LV x Supreme Brazza Wallet Black', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802051443994399-300x240.jpg', 'phu-kien', 1200000),
(172, 'LV x Supreme Brazza Wallet Red', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802051633853385-300x240.jpg', 'phu-kien', 1200000),
(173, 'LV x Supreme Danube PM Black', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802180987618761-300x240.jpg', 'phu-kien', 2100000),
(174, 'LV x Supreme Danube PM Red', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802181182678267-300x240.jpg', 'phu-kien', 2100000),
(175, 'LV x Supreme Danube PPM Black', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802175147214721-300x240.jpg', 'phu-kien', 1900000),
(176, 'LV x Supreme Danube PPM Red', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802175311481148-300x240.jpg', 'phu-kien', 1900000),
(177, 'LV x Supreme Keepall Black', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802012476087608-300x240.jpg', 'phu-kien', 3500000),
(178, 'LV x Supreme Keepall Red', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802012722102210-300x240.jpg', 'phu-kien', 3500000),
(179, 'LV x Supreme Red Chain Wallet', 'http://sly1994.vn/wp-content/uploads/2017/08/IMG_4606-300x240.png', 'phu-kien', 1200000),
(180, 'LV x Supreme Slender Wallet Black', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802045957555755-300x240.jpg', 'phu-kien', 1000000),
(181, 'LV x Supreme Slender Wallet Red', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802050154535453-300x240.jpg', 'phu-kien', 1000000),
(182, 'LV x Supreme Zippy Black', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802050676547654-300x240.jpg', 'phu-kien', 1300000),
(183, 'LV x Supreme Zippy Red', 'http://sly1994.vn/wp-content/uploads/2017/09/20170802050990209020-300x240.jpg', 'phu-kien', 1300000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
