-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 03:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_megatoys`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `Name`, `Position`, `created_at`, `updated_at`) VALUES
(1, 'slide', 'trangchu', '2020-11-13 03:35:51', NULL),
(2, 'slide-top', 'top', '2020-11-13 03:35:51', NULL),
(3, 'slide-mid', 'mid', '2020-11-13 03:35:51', NULL),
(5, 'Menu trang chủ', 'Menu trang chủ', '2020-11-14 02:16:22', '2020-11-14 02:16:22'),
(6, 'Menu mid', 'Menu mid', '2020-11-16 08:02:16', '2020-11-16 08:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `Name`, `Image`, `created_at`, `updated_at`) VALUES
(1, 'Hasbro', '5wKc-gvy2-ảnh cute.jpg', '2020-11-04 07:37:26', '2020-11-05 03:11:21'),
(2, 'Zuru', 'NtYc-KxL7-bg-404.jpg', '2020-11-04 07:37:26', '2020-11-05 03:11:36'),
(3, 'Megatoys', 'mDFx-gvy2-ảnh cute.jpg', '2020-11-04 07:37:26', '2020-11-05 03:11:50'),
(4, 'X-shot', 'Zpqb-gvy2-ảnh cute.jpg', '2020-11-04 07:37:26', '2020-11-05 03:12:14'),
(5, 'Spin Master', 'GQDI-gvy2-ảnh cute.jpg', '2020-11-04 07:37:26', '2020-11-05 03:12:24'),
(6, 'Hot Wheels', 'pUrq-1 (1)_8.jpg', '2020-11-04 07:37:26', '2020-11-05 03:12:43'),
(7, 'Bandai', 'uFmw-1 (1)_9.jpg', '2020-11-04 07:37:26', '2020-11-05 03:13:01'),
(8, 'Maisto', 'OujW-01_2.jpg', '2020-11-04 07:37:26', '2020-11-05 03:13:15'),
(9, 'Lalaloopsy', 'SREu-01 (1)_1.jpg', '2020-11-04 07:37:26', '2020-11-05 03:13:38'),
(11, 'Crayola', 'yITG-01 (1)_1.jpg', '2020-11-04 07:37:26', '2020-11-05 03:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Colorname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `Name`, `Colorname`, `created_at`, `updated_at`) VALUES
(1, 'Đỏ', 'red', '2020-11-04 07:37:26', '2020-11-05 04:06:14'),
(2, 'Xanh lá cây', 'green', '2020-11-04 07:37:26', NULL),
(3, 'Vàng', 'yellow', '2020-11-04 07:37:26', NULL),
(4, 'Be', '', '2020-11-04 07:37:26', NULL),
(5, 'Xanh da trời', 'blue', '2020-11-04 07:37:26', NULL),
(6, 'Cam', 'orange', '2020-11-04 07:37:26', NULL),
(7, 'Hồng', 'pink', '2020-11-04 07:37:26', NULL),
(8, 'Đen', 'black', '2020-11-04 07:37:26', NULL),
(9, 'Trắng', 'white', '2020-11-04 07:37:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colorproduct`
--

CREATE TABLE `colorproduct` (
  `id` int(10) UNSIGNED NOT NULL,
  `idProduct` int(10) UNSIGNED NOT NULL,
  `idColor` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colorproduct`
--

INSERT INTO `colorproduct` (`id`, `idProduct`, `idColor`, `created_at`, `updated_at`) VALUES
(67, 6, 9, '2020-11-10 09:31:02', '2020-11-10 09:31:02'),
(68, 7, 5, '2020-11-10 09:31:49', '2020-11-10 09:31:49'),
(69, 7, 6, '2020-11-10 09:31:49', '2020-11-10 09:31:49'),
(70, 8, 3, '2020-11-10 09:32:13', '2020-11-10 09:32:13'),
(71, 9, 3, '2020-11-10 09:32:31', '2020-11-10 09:32:31'),
(72, 9, 9, '2020-11-10 09:32:31', '2020-11-10 09:32:31'),
(119, 42, 2, '2020-11-16 02:47:52', '2020-11-16 02:47:52'),
(120, 42, 3, '2020-11-16 02:47:52', '2020-11-16 02:47:52'),
(139, 5, 2, '2020-11-17 03:13:02', '2020-11-17 03:13:02'),
(140, 5, 3, '2020-11-17 03:13:02', '2020-11-17 03:13:02'),
(148, 49, 2, '2020-11-18 02:01:25', '2020-11-18 02:01:25'),
(149, 49, 3, '2020-11-18 02:01:25', '2020-11-18 02:01:25'),
(150, 49, 4, '2020-11-18 02:01:25', '2020-11-18 02:01:25'),
(151, 49, 5, '2020-11-18 02:01:25', '2020-11-18 02:01:25'),
(157, 10, 5, '2020-11-18 02:02:57', '2020-11-18 02:02:57'),
(158, 10, 9, '2020-11-18 02:02:57', '2020-11-18 02:02:57'),
(161, 3, 1, '2020-11-20 04:52:04', '2020-11-20 04:52:04'),
(162, 3, 7, '2020-11-20 04:52:04', '2020-11-20 04:52:04'),
(163, 4, 1, '2020-11-21 03:42:27', '2020-11-21 03:42:27'),
(164, 4, 2, '2020-11-21 03:42:27', '2020-11-21 03:42:27'),
(165, 4, 7, '2020-11-21 03:42:27', '2020-11-21 03:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_04_093522_brand', 1),
(5, '2020_11_04_093803_color', 1),
(6, '2020_11_04_093824_old', 1),
(7, '2020_11_04_093847_type', 1),
(8, '2020_11_04_095743_product', 1),
(9, '2020_11_04_142939_color_product', 1),
(10, '2020_11_04_143050_type_product', 1),
(11, '2020_11_11_093830_topic', 2),
(13, '2020_11_11_093924_news', 3),
(17, '2020_11_13_095245_banner', 4),
(18, '2020_11_13_102842_slide', 5);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Inforgeneral` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `idTopic` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `Name`, `Image`, `Inforgeneral`, `idTopic`, `created_at`, `updated_at`) VALUES
(1, 'bí quyết chọn đồ chính hãng', '', 'fdsfsd', 1, '2020-11-11 04:35:14', NULL),
(2, 'thông tin cách chọn đồ chính hãng', '', 'dsdasd', 2, '2020-11-11 04:35:14', NULL),
(3, 'Review chọn đồ chính hãng', '', '3213123', 3, '2020-11-11 04:35:14', NULL),
(4, 'test Thành công 2', '2HgJ-file tk.png', '<p>thành công</p>\r\n\r\n<p>&nbsp;</p>', 1, '2020-11-11 04:38:25', '2020-11-11 04:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `old`
--

CREATE TABLE `old` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `old`
--

INSERT INTO `old` (`id`, `Name`, `created_at`, `updated_at`) VALUES
(1, '0-3 tuổi', '2020-11-04 07:37:26', NULL),
(2, '3-6 tuổi', '2020-11-04 07:37:26', NULL),
(3, '7-10 tuổi', '2020-11-04 07:37:26', NULL),
(4, '11-15 tuổi', '2020-11-04 07:37:26', NULL),
(5, 'trên 15 tuổi', '2020-11-04 07:37:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `idProvince` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalsProduct` int(11) NOT NULL,
  `Prices` int(11) NOT NULL,
  `Sales` int(11) NOT NULL,
  `Ship` int(11) NOT NULL DEFAULT 10000,
  `TotalPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `id` int(10) UNSIGNED NOT NULL,
  `idOrder` int(11) NOT NULL,
  `iProduct` int(11) NOT NULL,
  `Amount` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Inforgeneral` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Newprice` double(64,0) NOT NULL,
  `Oldprice` double(64,0) NOT NULL,
  `Infor` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `idBrand` int(10) UNSIGNED NOT NULL,
  `AgesRank` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Featured` tinyint(4) NOT NULL DEFAULT 0,
  `New` tinyint(4) NOT NULL DEFAULT 0,
  `Comming` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `Name`, `Image`, `Inforgeneral`, `Newprice`, `Oldprice`, `Infor`, `idBrand`, `AgesRank`, `created_at`, `updated_at`, `Featured`, `New`, `Comming`) VALUES
(3, 'robo táo', '[\"4v5P-4.1.png\",\"SYZV-file-tk.png\"]', '<p>&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;</p>', 1000000, 1000000, '<p>robo hoàn toàn được làm từ táo (lưu ý không ăn được) -APPLE -juice-mĩx</p>', 3, 1, '2020-11-04 07:39:52', '2020-11-20 04:52:04', 0, 0, 0),
(4, 'robo dưa hấu', '[\"OMO3-5.png\"]', '<p><span style=\"color:rgb(0, 0, 0); font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">Robot biến hình Transformer Bot Shots Sunstorm là một dòng thuộc bộ sưu tập Transformer do thương hiệu Hasbro đến từ Mỹ sản xuất. Các mô hình được thiết kế mô phỏng các nhân vật từ chính bộ phim nổi tiếng cùng tên được trẻ em trên toàn thế giới yêu thích. Khả năng thay đổi linh hoạt từ các mẫu robot dũng mãnh thành các mô hình ô tô hiện đại. Robot Transformers Bot Shots là dòng đồ chơi biến hình giúp tăng khả năng tư duy của trẻ để khám phá, sáng tạo.</span></p>', 220000, 400000, '<p><span style=\"color:rgb(0, 0, 0); font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px\">Robot biến hình Transformer Bot Shots Sunstorm là một dòng thuộc bộ sưu tập Transformer do thương hiệu Hasbro đến từ Mỹ sản xuất. Các mô hình được thiết kế mô phỏng các nhân vật từ chính bộ phim nổi tiếng cùng tên được trẻ em trên toàn thế giới yêu thích. Khả năng thay đổi linh hoạt từ các mẫu robot dũng mãnh thành các mô hình ô tô hiện đại. Robot Transformers Bot Shots là dòng đồ chơi biến hình giúp tăng khả năng tư duy của trẻ để khám phá, sáng tạo.</span></p>', 4, 1, '2020-11-04 07:39:52', '2020-11-21 03:42:27', 0, 0, 0),
(5, 'robo mít', '[\"ID2x-file-tk.png\"]', '<p>&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;</p>', 250000, 500000, '<p>robo hoàn toàn được làm từ mít tiêu chuẩn toàn vỏ</p>', 5, 1, '2020-11-04 07:39:52', '2020-11-16 02:03:31', 1, 1, 0),
(6, 'robo mãng cầu', '[\"oAfg-IMG_5491.jpg\",\"Iq3I-IMG_5496.jpg\",\"A5a7-IMG_5539.jpg\"]', '<p>&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;</p>', 250000, 500000, '<p>robo hoàn toàn được làm từ mãng cầu</p>', 6, 1, '2020-11-04 07:39:52', '2020-11-10 09:31:02', 1, 1, 0),
(7, 'robo đu đủ', '[\"15nz-anh-cute.jpg\",\"Wx6A-c3.jpg\",\"1mVj-hinh-nen-hoa-lan-dep-2.jpg\",\"91YJ-Hinh-nen-khung-long-(8).jpg\"]', '<p>&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;</p>', 250000, 500000, '<p>robo hoàn toàn được làm từ đu đủ</p>', 6, 1, '2020-11-04 07:39:52', '2020-11-10 09:31:49', 1, 1, 0),
(8, 'robo sầu riêng', '[\"LA5c-2.png\"]', '<p>&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;</p>', 250000, 500000, '<p>robo hoàn toàn được làm từ sầu riêng</p>', 7, 1, '2020-11-04 07:39:52', '2020-11-10 09:32:13', 1, 1, 0),
(9, 'robo Xoài', '[\"wf4t-3.png\"]', '<p>&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;</p>', 250000, 500000, '<p>robo hoàn toàn được làm từ Xoài</p>', 8, 1, '2020-11-04 07:39:52', '2020-11-10 09:32:31', 1, 1, 0),
(10, 'robo Lê', '[\"1Wwt-4.png\"]', '<p>&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;</p>', 250000, 500000, '<p>robo hoàn toàn được làm từ Lê&nbsp;&nbsp;robo làm từ Lê nguyên chất&nbsp;&nbsp;robo làm từ Lê nguyên chất&nbsp;</p>', 1, 1, '2020-11-04 07:39:52', '2020-11-18 02:02:57', 0, 0, 0),
(42, 'test Thành công', '[\"v9RE-5.png\"]', '<p>&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp; thật là chán quá đi à huhuhuhuhuh</p>', 100000, 450000, '<p>&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;&nbsp;&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 2, 1, '2020-11-09 08:54:17', '2020-11-16 02:47:52', 1, 1, 1),
(49, 'test', '[\"BfVg-1.png\",\"8Sr0-2.png\"]', '<p>&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;</p>', 321000, 231200, '<p>&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;&nbsp;&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;robo làm từ Lê nguyên chất&nbsp;</p>', 1, 1, '2020-11-10 03:22:34', '2020-11-18 02:01:25', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `name`) VALUES
('01TTT', 'Thành phố Hà Nội'),
('02TTT', 'Tỉnh Hà Giang'),
('04TTT', 'Tỉnh Cao Bằng'),
('06TTT', 'Tỉnh Bắc Kạn'),
('08TTT', 'Tỉnh Tuyên Quang'),
('10TTT', 'Tỉnh Lào Cai'),
('11TTT', 'Tỉnh Điện Biên'),
('12TTT', 'Tỉnh Lai Châu'),
('14TTT', 'Tỉnh Sơn La'),
('15TTT', 'Tỉnh Yên Bái'),
('17TTT', 'Tỉnh Hòa Bình'),
('19TTT', 'Tỉnh Thái Nguyên'),
('20TTT', 'Tỉnh Lạng Sơn'),
('22TTT', 'Tỉnh Quảng Ninh'),
('24TTT', 'Tỉnh Bắc Giang'),
('25TTT', 'Tỉnh Phú Thọ'),
('26TTT', 'Tỉnh Vĩnh Phúc'),
('27TTT', 'Tỉnh Bắc Ninh'),
('30TTT', 'Tỉnh Hải Dương'),
('31TTT', 'Thành phố Hải Phòng'),
('33TTT', 'Tỉnh Hưng Yên'),
('34TTT', 'Tỉnh Thái Bình'),
('35TTT', 'Tỉnh Hà Nam'),
('36TTT', 'Tỉnh Nam Định'),
('37TTT', 'Tỉnh Ninh Bình'),
('38TTT', 'Tỉnh Thanh Hóa'),
('40TTT', 'Tỉnh Nghệ An'),
('42TTT', 'Tỉnh Hà Tĩnh'),
('44TTT', 'Tỉnh Quảng Bình'),
('45TTT', 'Tỉnh Quảng Trị'),
('46TTT', 'Tỉnh Thừa Thiên Huế'),
('48TTT', 'Thành phố Đà Nẵng'),
('49TTT', 'Tỉnh Quảng Nam'),
('51TTT', 'Tỉnh Quảng Ngãi'),
('52TTT', 'Tỉnh Bình Định'),
('54TTT', 'Tỉnh Phú Yên'),
('56TTT', 'Tỉnh Khánh Hòa'),
('58TTT', 'Tỉnh Ninh Thuận'),
('60TTT', 'Tỉnh Bình Thuận'),
('62TTT', 'Tỉnh Kon Tum'),
('64TTT', 'Tỉnh Gia Lai'),
('66TTT', 'Tỉnh Đắk Lắk'),
('67TTT', 'Tỉnh Đắk Nông'),
('68TTT', 'Tỉnh Lâm Đồng'),
('70TTT', 'Tỉnh Bình Phước'),
('72TTT', 'Tỉnh Tây Ninh'),
('74TTT', 'Tỉnh Bình Dương'),
('75TTT', 'Tỉnh Đồng Nai'),
('77TTT', 'Tỉnh Bà Rịa - Vũng Tàu'),
('79TTT', 'Thành phố Hồ Chí Minh'),
('80TTT', 'Tỉnh Long An'),
('82TTT', 'Tỉnh Tiền Giang'),
('83TTT', 'Tỉnh Bến Tre'),
('84TTT', 'Tỉnh Trà Vinh'),
('86TTT', 'Tỉnh Vĩnh Long'),
('87TTT', 'Tỉnh Đồng Tháp'),
('89TTT', 'Tỉnh An Giang'),
('91TTT', 'Tỉnh Kiên Giang'),
('92TTT', 'Thành phố Cần Thơ'),
('93TTT', 'Tỉnh Hậu Giang'),
('94TTT', 'Tỉnh Sóc Trăng'),
('95TTT', 'Tỉnh Bạc Liêu'),
('96TTT', 'Tỉnh Cà Mau');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idPosition` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `Ten`, `Hinh`, `NoiDung`, `link`, `idPosition`, `created_at`, `updated_at`) VALUES
(4, 'trang chủ', 'JFkh-bu8v-74ca18f6e255f3402ee9eae5402ceee1_1568868296.png', '<p>đá</p>', 'https://www.youtube.com', 1, '2020-11-13 04:10:39', '2020-11-13 07:05:15'),
(5, 'trang chủ', 'vrWW-cxGA-2069069ef4f9d4ff76362a689ef00765_1590402220.png', '<p>đâsd</p>', 'https://www.youtube.com', 1, '2020-11-13 04:10:56', '2020-11-13 04:10:56'),
(6, 'trang chủ', 'cuip-dfi1-e92165cc11fc953066bf811850f2be27_1545294387.png', '<p>trang chủ</p>', 'https://www.youtube.com', 1, '2020-11-13 04:11:10', '2020-11-13 04:11:10'),
(7, 'trang chủ', 's3Ak-mBWr-4a47a0db6e60853dedfcfdf08a5ca249_1564568275.png', '<p>trang chủ</p>', 'https://www.youtube.com', 1, '2020-11-13 04:11:17', '2020-11-13 04:11:17'),
(8, 'trang chủ', 'bQkz-MoDm-5c6a37a430f1bf649a2da349f43381f4_1558598859.png', '<p>trang chủ</p>', 'https://www.youtube.com', 1, '2020-11-13 04:11:24', '2020-11-13 04:11:24'),
(9, '1', 'y2kE-menu-md9-img-1.jpg', '<p>Menu dưới slide chính</p>', 'https://www.youtube.com', 5, '2020-11-14 02:17:04', '2020-11-14 02:17:04'),
(10, '2', 'Bs7K-menu-md9-img-2.jpg', '<p>Menu dưới slide chính</p>', 'https://www.youtube.com', 5, '2020-11-14 02:17:17', '2020-11-14 02:17:17'),
(11, '3', '4pDG-menu-md9-img-3.jpg', '<p>Menu dưới slide chính</p>', 'https://www.youtube.com', 5, '2020-11-14 02:17:28', '2020-11-14 02:17:28'),
(12, 'menu 1', '58Dn-5f105ff53662e059e6cca0b1e16f4599_1539853155.jpg', '<p>menu 1</p>', 'https://www.youtube.com', 6, '2020-11-16 08:27:05', '2020-11-16 08:27:05'),
(13, 'menu 2', 'HOIw-d294f3bfb74e80124d9bc84d0f6b9ede_1539853147.jpg', '<p>menu 2</p>', 'https://www.youtube.com', 6, '2020-11-16 08:27:20', '2020-11-16 08:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `Name`, `created_at`, `updated_at`) VALUES
(1, 'Bí Quyết', '2020-11-11 02:59:40', NULL),
(2, 'Thông tin hữu ích', '2020-11-11 02:59:40', NULL),
(3, 'Riview sản phẩm', '2020-11-11 02:59:40', NULL),
(5, 'test', '2020-11-11 04:06:52', '2020-11-11 04:06:52'),
(6, 'rêrerere', '2020-11-11 04:12:02', '2020-11-11 04:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `Name`, `Alias`, `created_at`, `updated_at`) VALUES
(1, 'Đồ chơi bé trai', 'do-choi-be-trai', '2020-11-04 07:37:26', '2020-11-26 07:02:42'),
(2, 'Bé gái', 'do-choi-be-gai', '2020-11-04 07:37:26', '2020-11-18 01:54:51'),
(3, 'Thiếu niên', 'do-choi-thieu-nien', '2020-11-04 07:37:26', '2020-11-18 01:55:19'),
(4, 'Đồ chơi thông minh', 'do-choi-thong-minh', '2020-11-04 07:37:26', '2020-11-18 01:55:40'),
(5, 'Đồ chơi xếp hình', 'do-choi-xep-hinh', '2020-11-04 07:37:26', '2020-11-18 01:56:16'),
(13, 'Đồ chơi giáo dục', 'do-choi-giao-duc', '2020-11-17 01:52:12', '2020-11-18 01:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `typeproduct`
--

CREATE TABLE `typeproduct` (
  `id` int(10) UNSIGNED NOT NULL,
  `idProduct` int(10) UNSIGNED NOT NULL,
  `idType` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `typeproduct`
--

INSERT INTO `typeproduct` (`id`, `idProduct`, `idType`, `created_at`, `updated_at`) VALUES
(40, 6, 2, '2020-11-10 09:31:02', '2020-11-10 09:31:02'),
(41, 6, 4, '2020-11-10 09:31:02', '2020-11-10 09:31:02'),
(42, 7, 5, '2020-11-10 09:31:49', '2020-11-10 09:31:49'),
(43, 8, 2, '2020-11-10 09:32:13', '2020-11-10 09:32:13'),
(44, 9, 4, '2020-11-10 09:32:31', '2020-11-10 09:32:31'),
(66, 42, 2, '2020-11-16 02:47:52', '2020-11-16 02:47:52'),
(67, 42, 3, '2020-11-16 02:47:52', '2020-11-16 02:47:52'),
(85, 5, 2, '2020-11-17 03:13:02', '2020-11-17 03:13:02'),
(86, 5, 13, '2020-11-17 03:13:02', '2020-11-17 03:13:02'),
(96, 49, 1, '2020-11-18 02:01:25', '2020-11-18 02:01:25'),
(97, 49, 2, '2020-11-18 02:01:25', '2020-11-18 02:01:25'),
(98, 49, 3, '2020-11-18 02:01:25', '2020-11-18 02:01:25'),
(99, 49, 4, '2020-11-18 02:01:25', '2020-11-18 02:01:25'),
(100, 49, 5, '2020-11-18 02:01:25', '2020-11-18 02:01:25'),
(101, 49, 13, '2020-11-18 02:01:25', '2020-11-18 02:01:25'),
(112, 10, 1, '2020-11-18 02:02:57', '2020-11-18 02:02:57'),
(113, 10, 3, '2020-11-18 02:02:57', '2020-11-18 02:02:57'),
(114, 10, 4, '2020-11-18 02:02:57', '2020-11-18 02:02:57'),
(115, 10, 5, '2020-11-18 02:02:57', '2020-11-18 02:02:57'),
(116, 10, 13, '2020-11-18 02:02:57', '2020-11-18 02:02:57'),
(123, 3, 1, '2020-11-20 04:52:04', '2020-11-20 04:52:04'),
(124, 3, 2, '2020-11-20 04:52:04', '2020-11-20 04:52:04'),
(125, 3, 3, '2020-11-20 04:52:04', '2020-11-20 04:52:04'),
(126, 3, 4, '2020-11-20 04:52:04', '2020-11-20 04:52:04'),
(127, 3, 5, '2020-11-20 04:52:04', '2020-11-20 04:52:04'),
(128, 3, 13, '2020-11-20 04:52:04', '2020-11-20 04:52:04'),
(129, 4, 1, '2020-11-21 03:42:27', '2020-11-21 03:42:27'),
(130, 4, 3, '2020-11-21 03:42:27', '2020-11-21 03:42:27'),
(131, 4, 5, '2020-11-21 03:42:27', '2020-11-21 03:42:27'),
(132, 4, 13, '2020-11-21 03:42:27', '2020-11-21 03:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `quyen`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Bùi Duy Tùng', 'duytung.megabook@gmail.com', '$2y$10$H/hKvm3CEhDB3Z57pziw8OMz2X6NvfuICRQOiqsOM8nWVMzb.8DYa', 1, NULL, '2020-11-09 08:55:27', '2020-11-09 08:55:27'),
(6, 'Tùng123', 'duytung1.megabook@gmail.com', '$2y$10$QTKNpY54Oprb2hB5sBiaCOaItXFoswIt4.JRA5ez.PlFG3z6SzFTC', 0, NULL, '2020-11-10 09:36:54', '2020-11-10 09:36:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colorproduct`
--
ALTER TABLE `colorproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colorproduct_idproduct_foreign` (`idProduct`),
  ADD KEY `colorproduct_idcolor_foreign` (`idColor`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_idtopic_foreign` (`idTopic`);

--
-- Indexes for table `old`
--
ALTER TABLE `old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_idprovince_foreign` (`idProvince`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_idbrand_foreign` (`idBrand`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD UNIQUE KEY `province_provinceid_unique` (`province_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slide_idposition_foreign` (`idPosition`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typeproduct`
--
ALTER TABLE `typeproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeproduct_idproduct_foreign` (`idProduct`),
  ADD KEY `typeproduct_idtype_foreign` (`idType`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `colorproduct`
--
ALTER TABLE `colorproduct`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `old`
--
ALTER TABLE `old`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `typeproduct`
--
ALTER TABLE `typeproduct`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `colorproduct`
--
ALTER TABLE `colorproduct`
  ADD CONSTRAINT `colorproduct_idcolor_foreign` FOREIGN KEY (`idColor`) REFERENCES `color` (`id`),
  ADD CONSTRAINT `colorproduct_idproduct_foreign` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_idtopic_foreign` FOREIGN KEY (`idTopic`) REFERENCES `topic` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_idprovince_foreign` FOREIGN KEY (`idProvince`) REFERENCES `province` (`province_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_idbrand_foreign` FOREIGN KEY (`idBrand`) REFERENCES `brand` (`id`);

--
-- Constraints for table `slide`
--
ALTER TABLE `slide`
  ADD CONSTRAINT `slide_idposition_foreign` FOREIGN KEY (`idPosition`) REFERENCES `banner` (`id`);

--
-- Constraints for table `typeproduct`
--
ALTER TABLE `typeproduct`
  ADD CONSTRAINT `typeproduct_idproduct_foreign` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `typeproduct_idtype_foreign` FOREIGN KEY (`idType`) REFERENCES `type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
