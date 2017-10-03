-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 03, 2017 at 05:05 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 7.0.24-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkaffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `status`) VALUES
(1, 'Quảng cáo bên trái', 1),
(2, 'Quảng cáo bên phải', 1);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `cate_id` int(11) NOT NULL COMMENT '999 : landing page',
  `content` text,
  `is_hot` tinyint(1) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '1',
  `status` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `articles_cate`
--

CREATE TABLE `articles_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 : news, 2 services',
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `ads_url` varchar(255) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `object_type` tinyint(1) NOT NULL COMMENT '1 : danh muc cha , 2 : danh mục con',
  `type` int(11) NOT NULL COMMENT '1 : không liên kết, 2 : trỏ đến 1 trang, 3',
  `display_order` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image_url`, `ads_url`, `time_start`, `time_end`, `object_id`, `object_type`, `type`, `display_order`, `status`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(8, '2017/07/18/banner-landing-1500389797.png', '', 0, 0, 1, 4, 1, 0, 1, '2017-05-20 19:20:08', '2017-07-18 21:56:39', 1, 1),
(9, '2017/05/23/banner-slideshow-batdongsan4-1920x400-1495554794.jpg', '', 0, 0, 3, 4, 1, 0, 1, '2017-05-21 15:53:43', '2017-05-23 22:53:16', 1, 1),
(10, '2017/05/23/img-vision-1495554801.jpg', '', 0, 0, 3, 4, 1, 0, 1, '2017-05-21 15:57:11', '2017-05-23 22:53:23', 1, 1),
(11, '2017/05/24/phoi-canh-him-lam-cho-lon-1495606414.jpg', '', 0, 0, 4, 4, 1, 0, 1, '2017-05-24 13:13:37', '2017-05-24 13:13:37', 1, 1),
(12, '2017/05/24/tong-quan-du-an-can-ho-centana-thu-thiem1-1495606424.jpg', 'http://dothi9.com/du-an/du-an-can-ho-the-eastern-quan-9-3', 0, 0, 4, 4, 2, 0, 1, '2017-05-24 13:13:55', '2017-05-24 13:13:55', 1, 1),
(16, '2017/06/13/banner-loc-an-long-thanh-1497290433.jpg', '', 0, 0, 5, 4, 1, 0, 1, '2017-06-13 01:00:34', '2017-06-13 01:00:34', 1, 1),
(32, '2017/07/14/banner-slider-1500000281.gif', 'http://thanhphuthinhland.vn/du-an/kdc-an-thang-rach-kien', 0, 0, 2, 3, 2, 0, 1, '2017-07-09 22:24:11', '2017-07-16 09:15:21', 1, 1),
(33, '2017/07/14/banner-slider-1500000310.gif', 'http://thanhphuthinhland.vn/du-an/kdc-an-thang-rach-kien', 0, 0, 3, 3, 2, 0, 1, '2017-07-09 22:24:31', '2017-07-16 09:15:27', 1, 1),
(34, '2017/07/14/banner-top-an-thang-1500005035.jpg', 'http://thanhphuthinhland.vn/du-an/kdc-an-thang-rach-kien', 0, 0, 4, 3, 2, 0, 1, '2017-07-10 06:36:32', '2017-07-16 09:15:14', 1, 1),
(38, '/public/uploads/images/banner-2-min-1506613419.png', '', 0, 0, 1, 3, 1, 0, 1, '2017-09-27 07:29:45', '2017-09-28 22:43:44', 1, 1),
(39, '/public/uploads/images/banner-5-min-1506613432.png', '', 0, 0, 1, 3, 1, 0, 1, '2017-09-27 07:29:57', '2017-09-28 22:44:00', 1, 1),
(40, '/public/uploads/images/banner-giua-1506585790-1506612520.png', '', 0, 0, 5, 3, 1, 0, 1, '2017-09-27 07:30:20', '2017-09-28 22:28:45', 1, 1),
(41, '/public/uploads/images/banner-4-min-1506613461.png', '', 0, 0, 1, 3, 1, 0, 1, '2017-09-28 15:17:03', '2017-09-28 22:44:27', 1, 1),
(42, '/public/uploads/images/banner-3-min-1506613486.jpg', '', 0, 0, 1, 3, 1, 0, 1, '2017-09-28 22:26:43', '2017-09-28 22:45:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE `cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `is_widget` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`id`, `name`, `alias`, `slug`, `description`, `image_url`, `parent_id`, `display_order`, `meta_id`, `is_hot`, `is_widget`, `status`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Vietnamese Coffee', '', 'vietnamese-coffee', '', '', 1, 1, 343, 0, 0, 1, 1, 1, '2017-10-02 15:52:28', '2017-10-02 15:52:28'),
(2, 'Coffee Frappy', '', 'coffee-frappy', '', '', 1, 2, 344, 0, 0, 1, 1, 1, '2017-10-02 15:52:44', '2017-10-02 15:52:44'),
(3, 'Tea', '', 'tea', '', '', 1, 3, 345, 0, 0, 1, 1, 1, '2017-10-02 15:52:55', '2017-10-02 15:52:55'),
(4, 'Smoothies', '', 'smoothies', '', '', 1, 4, 346, 0, 0, 1, 1, 1, '2017-10-02 15:53:06', '2017-10-02 15:53:06'),
(5, 'Matcha', '', 'matcha', '', '', 1, 5, 347, 0, 0, 1, 1, 1, '2017-10-02 15:53:17', '2017-10-02 15:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `cate_parent`
--

CREATE TABLE `cate_parent` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `display_order` tinyint(4) NOT NULL DEFAULT '1',
  `meta_id` bigint(20) DEFAULT NULL,
  `is_hot` tinyint(1) DEFAULT NULL,
  `is_widget` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `created_user` tinyint(4) DEFAULT NULL,
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cate_parent`
--

INSERT INTO `cate_parent` (`id`, `name`, `alias`, `slug`, `description`, `image_url`, `display_order`, `meta_id`, `is_hot`, `is_widget`, `status`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'COFFEE', NULL, 'coffee', '', NULL, 1, 341, 0, 0, 1, 1, 1, '2017-10-02 15:49:07', '2017-10-02 15:49:07'),
(2, 'SHOP 24H', NULL, 'shop-24h', '', NULL, 1, 342, 0, 0, 1, 1, 1, '2017-10-02 15:49:22', '2017-10-02 15:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `type`, `title`, `gender`, `full_name`, `email`, `phone`, `content`, `status`, `project_id`, `created_at`, `updated_at`, `updated_user`) VALUES
(6, 2, '', 1, 'Triệu Dĩnh Trinh', 'kitty_miu_online_love@yahoo.com', '0911139978', 'Tư vấn', 1, 1, '2017-07-28 13:48:53', '2017-07-28 13:48:53', 0),
(7, 2, '', 1, 'Nguyễn Thị Ngọc Trinh ', 'ngoctrinh2279@gmail.com', '0917244108', 'Xem đất \r\n', 1, 1, '2017-07-31 11:21:39', '2017-07-31 11:21:39', 0),
(8, 2, '', 1, 'Định', 'vandinhmobi@gmail.com', '0913034268', 'Đăng ký đi xem đất', 1, 1, '2017-08-01 20:36:45', '2017-08-01 20:36:45', 0),
(9, 2, '', 1, 'Trần Ánh Hoa', 'solotran67@gmail.com', '0961244525', 'đất chia nền chưa,mỗi miếng dài? ngang?, trả góp 50% có lãi không trong bao nhiêu tháng, có xe đưa đi xem không', 1, 1, '2017-08-09 07:38:02', '2017-08-09 07:38:02', 0),
(10, 2, '', 1, 'Duyen', 'duyen_nguyen6699@yahoo.com', '01204655810', 'Công ty còn bán đất nền kdc an thắng không?\r\nTôi muốn tham quan dự án, công ty có tổ chức đưa khách đi tham quan vào thứ 7, cn không?', 1, 1, '2017-08-11 20:23:30', '2017-08-11 20:23:30', 0),
(11, 0, '', 1, 'Trần Quan Thành', 'test@gmail.com', '903171040', 'dfsaf', 1, NULL, '2017-09-13 06:42:19', '2017-09-13 06:42:19', 0),
(12, 0, '', 1, 'Nguyễn Huy Hoàng', 'hoangnhpublic@gmail.com', '0917492306', 'Test gửi liên hệ\r\n', 1, NULL, '2017-09-14 09:00:13', '2017-09-14 09:00:13', 0),
(13, 0, '', 1, 'Nguyễn Huy Hoàng', 'hoangnhpublic@gmail.com', '0917492306', 'Test gửi liên hệ\r\n', 1, NULL, '2017-09-14 09:01:08', '2017-09-14 09:01:08', 0),
(14, 0, '', 1, 'Nguyen Huy Hoang', 'hoangnhpublic@gmail.com', '0917492306', 'Hoang tesst gui lien he', 1, NULL, '2017-09-14 09:01:28', '2017-09-14 09:01:28', 0),
(15, 0, '', 1, 'Nguyen Huy Hoang', 'hoangnhpublic@gmail.com', '0917492306', 'Hoang tesst gui lien he', 1, NULL, '2017-09-14 09:02:16', '2017-09-14 09:02:16', 0),
(16, 0, '', 1, 'Lê văn sơn', 'vanson29193@gmail.com', '0906 011 038', 'gửi mẫu cho tôi', 1, NULL, '2017-09-27 21:48:38', '2017-09-27 21:48:38', 0),
(17, 0, '', 1, 'Lê Thị Cẩm Hằng', 'vanthai251292@gmail.com', '0906011038', '55555555555vvvvvvvvvvvvvvvv', 1, NULL, '2017-09-27 21:49:31', '2017-09-27 21:49:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `counter_ips`
--

CREATE TABLE `counter_ips` (
  `ip` varchar(15) NOT NULL,
  `object_id` int(11) NOT NULL,
  `object_type` tinyint(4) NOT NULL COMMENT '1 : product 2: articles 3 :home',
  `visit` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counter_ips`
--

INSERT INTO `counter_ips` (`ip`, `object_id`, `object_type`, `visit`) VALUES
('14.161.28.176', 3, 1, 1506417373),
('14.161.28.176', 2, 1, 1506565826),
('14.161.28.176', 62, 2, 1506417409),
('115.78.10.26', 15, 1, 1506419113),
('1.53.236.167', 3, 1, 1506419667),
('115.78.10.26', 16, 1, 1506420072),
('115.78.10.26', 11, 1, 1506563414),
('115.78.10.26', 3, 1, 1506420744),
('115.78.10.26', 10, 1, 1506420813),
('115.78.10.26', 9, 1, 1506420958),
('1.53.236.167', 2, 1, 1506426172),
('116.109.246.17', 17, 1, 1506426657),
('116.109.246.17', 15, 1, 1506426674),
('116.109.246.17', 16, 1, 1506426454),
('116.109.246.17', 14, 1, 1506426629),
('116.102.28.87', 2, 1, 1506438707),
('116.102.28.87', 3, 1, 1506438726),
('42.115.140.20', 2, 1, 1506477747),
('66.249.82.199', 2, 1, 1506476664),
('66.249.82.195', 2, 1, 1506504895),
('42.115.140.20', 62, 2, 1506458985),
('116.109.148.105', 17, 1, 1506466997),
('42.115.140.20', 13, 1, 1506470291),
('42.115.140.20', 11, 1, 1506476628),
('66.249.82.197', 11, 1, 1506488602),
('66.249.82.197', 2, 1, 1506504895),
('66.249.82.195', 5, 1, 1506472855),
('66.249.82.197', 5, 1, 1506472855),
('72.14.199.101', 5, 1, 1506472883),
('42.115.140.20', 5, 1, 1506472919),
('42.115.140.20', 10, 1, 1506472923),
('66.249.82.199', 111, 2, 1506485014),
('66.249.82.195', 111, 2, 1506485014),
('66.249.82.197', 113, 2, 1506473291),
('66.249.82.195', 113, 2, 1506473291),
('42.115.140.20', 113, 2, 1506478227),
('42.115.140.20', 111, 2, 1506473381),
('66.249.82.197', 100, 2, 1506474453),
('66.249.82.199', 100, 2, 1506474453),
('66.249.82.197', 107, 2, 1506474490),
('66.249.82.195', 107, 2, 1506474490),
('72.14.199.101', 107, 2, 1506474527),
('42.115.140.20', 107, 2, 1506474773),
('42.115.140.20', 20, 1, 1506476037),
('42.115.140.20', 112, 2, 1506476242),
('14.161.28.176', 11, 1, 1506503300),
('66.249.82.199', 11, 1, 1506493288),
('66.249.82.195', 11, 1, 1506504852),
('42.115.140.20', 12, 1, 1506478236),
('8.21.198.10', 107, 2, 1506481608),
('115.78.10.26', 2, 1, 1506504883),
('115.78.10.26', 22, 1, 1506482413),
('115.78.10.26', 12, 1, 1506496800),
('115.78.10.26', 21, 1, 1506484942),
('66.249.82.197', 21, 1, 1506484951),
('66.249.82.195', 21, 1, 1506484951),
('72.14.199.101', 21, 1, 1506484994),
('115.78.10.26', 111, 2, 1506497430),
('115.77.185.2', 12, 1, 1506502333),
('115.77.185.2', 11, 1, 1506500626),
('116.102.35.18', 14, 1, 1506486797),
('116.102.35.18', 11, 1, 1506487129),
('115.77.185.2', 22, 1, 1506487425),
('103.199.41.77', 2, 1, 1506488712),
('103.199.41.77', 22, 1, 1506488779),
('27.64.33.233', 22, 1, 1506488894),
('27.64.33.233', 12, 1, 1506495427),
('27.64.33.233', 11, 1, 1506490290),
('27.64.33.233', 2, 1, 1506489276),
('103.199.41.77', 19, 1, 1506490348),
('27.64.33.233', 100, 2, 1506491014),
('27.64.33.233', 101, 2, 1506491015),
('8.21.199.19', 21, 1, 1506491142),
('27.64.33.233', 111, 2, 1506492462),
('27.64.33.233', 99, 2, 1506492387),
('23.99.101.118', 99, 2, 1506492390),
('115.78.10.26', 99, 2, 1506492467),
('23.99.101.118', 111, 2, 1506492400),
('115.78.10.26', 100, 2, 1506492552),
('13.76.241.210', 12, 1, 1506495366),
('23.99.101.118', 12, 1, 1506495371),
('14.161.28.176', 12, 1, 1506504169),
('14.161.28.176', 22, 1, 1506498941),
('14.161.28.176', 113, 2, 1506498952),
('14.161.28.176', 19, 1, 1506498996),
('115.77.185.2', 111, 2, 1506500669),
('115.77.185.2', 24, 2, 1506500707),
('40.78.146.128', 12, 1, 1506503264),
('14.161.28.176', 26, 1, 1506503302),
('23.99.101.118', 2, 1, 1506503351),
('118.69.36.195', 2, 1, 1506503458),
('104.209.188.207', 12, 1, 1506503838),
('104.209.188.207', 2, 1, 1506503931),
('14.161.28.176', 17, 1, 1506504214),
('81.19.188.229', 12, 1, 1506505913),
('81.19.188.229', 11, 1, 1506505914),
('81.19.188.229', 2, 1, 1506505915),
('81.19.188.229', 26, 1, 1506505917),
('81.19.188.229', 20, 1, 1506505918),
('81.19.188.229', 19, 1, 1506505919),
('81.19.188.229', 17, 1, 1506505920),
('81.19.188.229', 16, 1, 1506505921),
('81.19.188.229', 15, 1, 1506505922),
('81.19.188.229', 111, 2, 1506505923),
('81.19.188.229', 24, 2, 1506505924),
('81.19.188.229', 112, 2, 1506505928),
('81.19.188.229', 113, 2, 1506505929),
('52.90.250.202', 5, 1, 1506505930),
('81.19.188.229', 25, 1, 1506505930),
('81.19.188.229', 24, 1, 1506505931),
('81.19.188.229', 22, 1, 1506505932),
('81.19.188.229', 21, 1, 1506505933),
('81.19.188.229', 13, 1, 1506505934),
('81.19.188.229', 10, 1, 1506505935),
('81.19.188.229', 8, 1, 1506505935),
('81.19.188.229', 5, 1, 1506505938),
('81.19.188.229', 3, 1, 1506505939),
('81.19.188.229', 14, 1, 1506505940),
('81.19.188.229', 99, 2, 1506505943),
('81.19.188.229', 100, 2, 1506505944),
('81.19.188.229', 101, 2, 1506505945),
('81.19.188.229', 102, 2, 1506505946),
('81.19.188.229', 103, 2, 1506505947),
('81.19.188.229', 104, 2, 1506505948),
('81.19.188.229', 107, 2, 1506505951),
('123.20.51.232', 12, 1, 1506506117),
('123.20.51.232', 8, 1, 1506508064),
('52.90.250.202', 107, 2, 1506510357),
('13.76.241.210', 2, 1, 1506513198),
('116.109.196.111', 12, 1, 1506518101),
('116.109.196.111', 17, 1, 1506514028),
('8.21.198.253', 5, 1, 1506514084),
('116.109.196.111', 24, 2, 1506517940),
('171.249.107.68', 12, 1, 1506514562),
('52.90.250.202', 21, 1, 1506517055),
('116.109.196.111', 102, 2, 1506517974),
('116.109.196.111', 104, 2, 1506517981),
('116.109.196.111', 103, 2, 1506518016),
('116.109.196.111', 11, 1, 1506518040),
('116.109.196.111', 27, 1, 1506518120),
('116.109.196.111', 16, 1, 1506518116),
('116.109.196.111', 2, 1, 1506518125),
('116.109.246.17', 11, 1, 1506529862),
('116.109.246.17', 24, 2, 1506520879),
('116.109.196.111', 20, 1, 1506518946),
('116.109.246.17', 103, 2, 1506610865),
('116.109.246.17', 100, 2, 1506610885),
('116.109.246.17', 19, 1, 1506529375),
('171.249.107.68', 2, 1, 1506529919),
('42.115.140.46', 11, 1, 1506531162),
('42.115.140.46', 12, 1, 1506531489),
('115.78.10.26', 24, 2, 1506563284),
('115.78.10.26', 113, 2, 1506563302),
('42.116.160.155', 12, 1, 1506565279),
('115.78.10.26', 27, 1, 1506566596),
('115.78.10.26', 37, 1, 1506572892),
('42.116.160.155', 53, 1, 1506575611),
('66.249.82.101', 53, 1, 1506575637),
('66.249.82.125', 53, 1, 1506575637),
('13.76.241.210', 53, 1, 1506575564),
('66.249.82.125', 52, 1, 1506575616),
('66.249.82.101', 52, 1, 1506575616),
('66.249.82.101', 51, 1, 1506575626),
('66.249.82.125', 51, 1, 1506575627),
('42.116.160.155', 37, 1, 1506576451),
('23.99.101.118', 53, 1, 1506576752),
('8.21.198.62', 53, 1, 1506578360),
('115.78.10.26', 47, 1, 1506580739),
('115.78.10.26', 52, 1, 1506588367),
('115.78.10.26', 114, 2, 1506591825),
('66.249.82.98', 114, 2, 1506589591),
('66.249.82.125', 114, 2, 1506589591),
('203.113.152.5', 53, 1, 1506593335),
('203.113.152.5', 37, 1, 1506593335),
('203.113.152.5', 49, 1, 1506593336),
('203.113.152.8', 54, 1, 1506593338),
('203.113.152.2', 52, 1, 1506593340),
('203.113.152.8', 51, 1, 1506593340),
('203.113.152.8', 47, 1, 1506593341),
('203.113.152.8', 46, 1, 1506593342),
('203.113.152.8', 37, 1, 1506593343),
('203.113.152.7', 49, 1, 1506593344),
('203.113.152.7', 50, 1, 1506593344),
('203.113.152.7', 54, 1, 1506593345),
('203.113.152.7', 38, 1, 1506593345),
('203.113.152.7', 41, 1, 1506593346),
('203.113.152.5', 39, 1, 1506593347),
('203.113.152.5', 52, 1, 1506593347),
('203.113.152.5', 48, 1, 1506593348),
('203.113.152.5', 44, 1, 1506593348),
('203.113.152.8', 117, 2, 1506593420),
('203.113.152.8', 114, 2, 1506593421),
('203.113.152.8', 120, 2, 1506593418),
('203.113.152.8', 119, 2, 1506593418),
('203.113.152.8', 115, 2, 1506593419),
('203.113.152.8', 121, 2, 1506593419),
('203.113.152.8', 118, 2, 1506593419),
('203.113.152.8', 116, 2, 1506593421),
('203.113.152.3', 53, 1, 1506593721),
('203.113.152.3', 47, 1, 1506593721),
('203.113.152.3', 51, 1, 1506593722),
('203.113.152.5', 46, 1, 1506593724),
('203.113.152.5', 40, 1, 1506593724),
('116.109.246.17', 121, 2, 1506612673),
('116.109.246.17', 37, 1, 1506609205),
('13.76.241.210', 99, 2, 1506610520);

-- --------------------------------------------------------

--
-- Table structure for table `counter_values`
--

CREATE TABLE `counter_values` (
  `id` bigint(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `object_type` tinyint(4) NOT NULL COMMENT '1 : product 2: articles 3 :home',
  `day_id` bigint(11) NOT NULL,
  `day_value` bigint(11) NOT NULL,
  `all_value` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counter_values`
--

INSERT INTO `counter_values` (`id`, `object_id`, `object_type`, `day_id`, `day_value`, `all_value`) VALUES
(1, 3, 1, 269, 1, 7),
(2, 2, 1, 270, 1, 32),
(3, 62, 2, 269, 1, 3),
(4, 11, 1, 270, 1, 37),
(5, 14, 1, 269, 2, 4),
(6, 15, 1, 269, 1, 4),
(7, 16, 1, 269, 2, 5),
(8, 10, 1, 269, 2, 4),
(9, 17, 1, 269, 4, 6),
(10, 9, 1, 268, 2, 2),
(11, 8, 1, 269, 2, 3),
(12, 35, 2, 268, 1, 1),
(13, 13, 1, 269, 2, 3),
(14, 108, 2, 268, 1, 1),
(15, 103, 2, 270, 1, 5),
(16, 75, 2, 269, 1, 1),
(17, 5, 1, 269, 8, 8),
(18, 111, 2, 269, 13, 13),
(19, 113, 2, 270, 1, 8),
(20, 102, 2, 269, 3, 3),
(21, 101, 2, 269, 3, 3),
(22, 100, 2, 270, 1, 8),
(23, 107, 2, 269, 8, 8),
(24, 99, 2, 270, 1, 6),
(25, 12, 1, 270, 1, 23),
(26, 20, 1, 269, 4, 4),
(27, 112, 2, 269, 3, 3),
(28, 104, 2, 269, 3, 3),
(29, 22, 1, 269, 7, 7),
(30, 21, 1, 269, 8, 8),
(31, 23, 1, 269, 1, 1),
(32, 19, 1, 269, 5, 5),
(33, 24, 2, 270, 1, 8),
(34, 26, 1, 269, 3, 3),
(35, 25, 1, 269, 2, 2),
(36, 24, 1, 269, 2, 2),
(37, 27, 1, 270, 1, 3),
(38, 22, 2, 269, 1, 1),
(39, 14, 2, 269, 1, 1),
(40, 13, 2, 269, 1, 1),
(41, 7, 1, 269, 1, 1),
(42, 6, 1, 269, 1, 1),
(43, 4, 1, 269, 1, 1),
(44, 105, 2, 269, 1, 1),
(45, 106, 2, 269, 1, 1),
(46, 37, 1, 270, 6, 6),
(47, 53, 1, 270, 9, 9),
(48, 52, 1, 270, 7, 7),
(49, 51, 1, 270, 5, 5),
(50, 47, 1, 270, 4, 4),
(51, 46, 1, 270, 3, 3),
(52, 54, 1, 270, 3, 3),
(53, 49, 1, 270, 3, 3),
(54, 114, 2, 270, 6, 6),
(55, 117, 2, 270, 2, 2),
(56, 50, 1, 270, 2, 2),
(57, 41, 1, 270, 2, 2),
(58, 38, 1, 270, 2, 2),
(59, 39, 1, 270, 2, 2),
(60, 48, 1, 270, 2, 2),
(61, 44, 1, 270, 2, 2),
(62, 40, 1, 270, 2, 2),
(63, 120, 2, 270, 2, 2),
(64, 119, 2, 270, 2, 2),
(65, 115, 2, 270, 2, 2),
(66, 121, 2, 270, 4, 4),
(67, 118, 2, 270, 2, 2),
(68, 116, 2, 270, 2, 2),
(69, 42, 1, 270, 1, 1),
(70, 45, 1, 270, 1, 1),
(71, 43, 1, 270, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `custom_link`
--

CREATE TABLE `custom_link` (
  `id` int(11) NOT NULL,
  `link_text` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `block_id` int(11) NOT NULL COMMENT '1 : lien ket noi bat'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_link`
--

INSERT INTO `custom_link` (`id`, `link_text`, `link_url`, `display_order`, `block_id`) VALUES
(1, 'Quy trình đặt món', '#', 2, 1),
(2, 'Giải quyết khiếu nại', '#', 4, 1),
(3, 'Hướng dẫn thanh toán', '#', 3, 1),
(10, 'Giới thiệu', '#', 1, 1),
(11, 'Dành cho đối tác', '#', 5, 1),
(12, 'Liên hệ', '#', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hot_cate`
--

CREATE TABLE `hot_cate` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : cha 2 : con',
  `display_order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hot_cate`
--

INSERT INTO `hot_cate` (`id`, `title`, `object_id`, `type`, `display_order`, `status`) VALUES
(1, 'Thiết kế kiến trúc', 1, 1, 1, 0),
(2, 'Thiết kế chung cư mini', 8, 2, 4, 0),
(6, 'Thi công xây dựng', 2, 1, 3, 0),
(7, 'Thiết kế biệt thự hiện đại', 2, 2, 6, 0),
(8, 'Thi Công Biệt thự', 12, 2, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `info_seo`
--

CREATE TABLE `info_seo` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `custom_text` text NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : loai  2 cha 3 con 4 page 5 articles 6 custom',
  `url` varchar(255) DEFAULT NULL,
  `title_attr` varchar(255) DEFAULT NULL,
  `menu_id` tinyint(4) NOT NULL DEFAULT '1',
  `parent_id` tinyint(4) NOT NULL DEFAULT '0',
  `display_order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `custom_text` text,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `title`, `description`, `keywords`, `custom_text`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '', 1, 1, '2017-10-03 13:06:41', '2017-10-03 13:06:41'),
(2, '', '', '', '', 1, 1, '2017-10-03 13:09:17', '2017-10-03 13:09:17'),
(3, '', '', '', '', 1, 1, '2017-10-03 13:09:38', '2017-10-03 13:09:38'),
(4, '', '', '', '', 1, 1, '2017-10-03 13:10:04', '2017-10-03 13:10:04'),
(5, '', '', '', '', 1, 1, '2017-10-03 13:10:41', '2017-10-03 13:10:41'),
(6, '', '', '', '', 1, 1, '2017-10-03 13:11:04', '2017-10-03 13:11:04'),
(7, '', '', '', '', 1, 1, '2017-10-03 13:11:40', '2017-10-03 13:11:40'),
(8, '', '', '', '', 1, 1, '2017-10-03 13:20:17', '2017-10-03 13:20:17'),
(9, '', '', '', '', 1, 1, '2017-10-03 13:20:42', '2017-10-03 13:20:42'),
(10, '', '', '', '', 1, 1, '2017-10-03 13:21:13', '2017-10-03 13:21:13'),
(11, '', '', '', '', 1, 1, '2017-10-03 13:21:37', '2017-10-03 13:21:37'),
(12, '', '', '', '', 1, 1, '2017-10-03 13:22:05', '2017-10-03 13:22:05'),
(13, '', '', '', '', 1, 1, '2017-10-03 13:22:26', '2017-10-03 13:22:26'),
(14, 'Sản phẩm 014', 'Sản phẩm 014', '', '', 1, 1, '2017-10-03 13:22:52', '2017-10-03 13:38:55'),
(15, '', '', '', '', 1, 1, '2017-10-03 13:23:28', '2017-10-03 13:23:28'),
(16, '', '', '', '', 1, 1, '2017-10-03 13:23:47', '2017-10-03 13:23:47'),
(17, '', '', '', '', 1, 1, '2017-10-03 13:24:20', '2017-10-03 13:24:20'),
(18, '', '', '', '', 1, 1, '2017-10-03 13:24:47', '2017-10-03 13:24:47'),
(19, '', '', '', '', 1, 1, '2017-10-03 13:25:12', '2017-10-03 13:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_member` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` text,
  `image_url` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` varchar(255) DEFAULT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `alias`, `description`, `content`, `image_url`, `slug`, `status`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(8, 'Giới thiệu', 'Gioi thieu', 'Giới thiệu', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n<br />\r\n&nbsp;', '/public/uploads/images/sp1-1507001972.png', 'gioi-thieu', 1, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', '', 1, 1, '2017-08-29 00:00:00', '2017-10-03 13:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `code` char(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` tinyint(4) NOT NULL,
  `cate_id` tinyint(4) NOT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `is_sale` tinyint(1) NOT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `sale_percent` tinyint(1) DEFAULT NULL,
  `content` text,
  `is_hot` tinyint(1) NOT NULL,
  `out_of_stock` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` tinyint(4) NOT NULL COMMENT 'danh cho sp hot',
  `inventory` int(11) NOT NULL DEFAULT '0',
  `amount_sold` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `code`, `name`, `alias`, `slug`, `parent_id`, `cate_id`, `description`, `image_url`, `price`, `is_sale`, `price_sale`, `sale_percent`, `content`, `is_hot`, `out_of_stock`, `display_order`, `inventory`, `amount_sold`, `status`, `meta_id`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'SP001', 'Sản phẩm 001', 'San pham 001', 'san-pham-001', 1, 5, '', '/public/uploads/images/sp1-1507001972.png', 40000, 0, 0, 0, '', 0, 0, 0, 4, 0, 1, 1, 1, 1, '2017-10-03 13:06:41', '2017-10-03 13:06:41'),
(2, 'SP002', 'Sản phẩm 002', 'San pham 002', 'san-pham-002', 1, 5, '', '/public/uploads/images/sp10-1507009981.png', 45000, 0, 0, 0, '', 0, 0, 0, 5, 0, 1, 2, 1, 1, '2017-10-03 13:09:17', '2017-10-03 13:09:17'),
(3, 'SP003', 'Sản phẩm 003', 'San pham 003', 'san-pham-003', 1, 5, '', '/public/uploads/images/sp11-1507009981.png', 35000, 0, 0, 0, '', 0, 0, 0, 5, 0, 1, 3, 1, 1, '2017-10-03 13:09:38', '2017-10-03 13:09:38'),
(4, 'SP004', 'Sản phẩm 004', 'San pham 004', 'san-pham-004', 1, 5, '', '/public/uploads/images/sp12-1507009981.png', 27000, 0, 0, 0, '', 0, 0, 0, 25, 0, 1, 4, 1, 1, '2017-10-03 13:10:04', '2017-10-03 13:10:04'),
(5, 'SP005', 'Sản phẩm 005', 'San pham 005', 'san-pham-005', 1, 5, '', '/public/uploads/images/sp13-1507009981.png', 26000, 0, 0, 0, '', 0, 0, 0, 5, 0, 1, 5, 1, 1, '2017-10-03 13:10:41', '2017-10-03 13:10:41'),
(6, 'SP006', 'Sản phẩm 006', 'San pham 006', 'san-pham-006', 1, 5, '', '/public/uploads/images/sp14-1507009981.png', 56000, 0, 0, 0, '', 0, 0, 0, 56, 0, 1, 6, 1, 1, '2017-10-03 13:11:04', '2017-10-03 13:11:04'),
(7, 'SP007', 'Sản phẩm 007', 'San pham 007', 'san-pham-007', 1, 5, '', '/public/uploads/images/sp15-1507009981.png', 52000, 0, 0, 0, '', 0, 0, 0, 23, 0, 1, 7, 1, 1, '2017-10-03 13:11:40', '2017-10-03 13:11:41'),
(8, 'SP008', 'Sản phẩm 008', 'San pham 008', 'san-pham-008', 1, 4, '', '/public/uploads/images/sp16-1507009980.png', 56000, 0, 0, 0, '', 0, 0, 0, 15, 0, 1, 8, 1, 1, '2017-10-03 13:20:17', '2017-10-03 13:20:17'),
(9, 'SP009', 'Sản phẩm 009', 'San pham 009', 'san-pham-009', 1, 4, '', '/public/uploads/images/sp17-1507009980.png', 12000, 0, 0, 0, '', 0, 0, 0, 25, 0, 1, 9, 1, 1, '2017-10-03 13:20:41', '2017-10-03 13:20:42'),
(10, 'SP010', 'Sản phẩm 010', 'San pham 010', 'san-pham-010', 1, 4, '', '/public/uploads/images/sp18-1507009980.png', 27000, 0, 0, 0, '', 0, 0, 0, 36, 0, 1, 10, 1, 1, '2017-10-03 13:21:13', '2017-10-03 13:21:13'),
(11, 'SP011', 'Sản phẩm 011', 'San pham 011', 'san-pham-011', 1, 4, '', '/public/uploads/images/sp19-1507009980.png', 29000, 0, 0, 0, '', 0, 0, 0, 36, 0, 1, 11, 1, 1, '2017-10-03 13:21:36', '2017-10-03 13:21:37'),
(12, 'SP012', 'Sản phẩm 012', 'San pham 012', 'san-pham-012', 1, 3, '', '/public/uploads/images/sp2-1507009973.png', 57000, 0, 0, 0, '', 0, 0, 0, 36, 0, 1, 12, 1, 1, '2017-10-03 13:22:05', '2017-10-03 13:22:05'),
(13, 'SP013', 'Sản phẩm 013', 'San pham 013', 'san-pham-013', 1, 3, '', '/public/uploads/images/sp3-1507009981.png', 25000, 0, 0, 0, '', 0, 0, 0, 36, 0, 1, 13, 1, 1, '2017-10-03 13:22:26', '2017-10-03 13:22:26'),
(14, 'SP014', 'Sản phẩm 014', 'San pham 014', 'san-pham-014', 1, 3, '', '/public/uploads/images/sp3-1507009981.png', 52000, 0, 0, 0, '', 0, 0, 0, 23, 0, 1, 14, 1, 1, '2017-10-03 13:22:52', '2017-10-03 13:37:53'),
(15, 'SP015', 'Sản phẩm 015', 'San pham 015', 'san-pham-015', 1, 3, '', '/public/uploads/images/sp5-1507009981.png', 21000, 0, 0, 0, '', 0, 0, 0, 32, 0, 1, 15, 1, 1, '2017-10-03 13:23:28', '2017-10-03 13:23:28'),
(16, 'SP016', 'Sản phẩm 016', 'San pham 016', 'san-pham-016', 1, 3, '', '/public/uploads/images/sp6-1507009981.png', 50000, 0, 0, 0, '', 0, 0, 0, 2, 0, 1, 16, 1, 1, '2017-10-03 13:23:47', '2017-10-03 13:23:47'),
(17, 'SP017', 'Sản phẩm 017', 'San pham 017', 'san-pham-017', 1, 3, '', '/public/uploads/images/sp7-1507009981.png', 25000, 0, 0, 0, '', 0, 0, 0, 3, 0, 1, 17, 1, 1, '2017-10-03 13:24:20', '2017-10-03 13:24:20'),
(18, 'SP018', 'Sản phẩm 018', 'San pham 018', 'san-pham-018', 1, 3, '', '/public/uploads/images/sp8-1507009981.png', 24000, 0, 0, 0, '', 0, 0, 0, 2, 0, 1, 18, 1, 1, '2017-10-03 13:24:47', '2017-10-03 13:24:47'),
(19, 'SP019', 'Sản phẩm 019', 'San pham 019', 'san-pham-019', 1, 2, '', '/public/uploads/images/sp9-1507009981.png', 28000, 0, 0, 0, '', 0, 0, 0, 3, 0, 1, 19, 1, 1, '2017-10-03 13:25:12', '2017-10-03 13:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_img`
--

CREATE TABLE `product_img` (
  `id` bigint(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `display_order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `score` tinyint(4) NOT NULL,
  `amount` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `object_type` tinyint(4) NOT NULL COMMENT '1 : product 2 : articles'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `score`, `amount`, `object_id`, `object_type`) VALUES
(1, 1, 0, 1, 1),
(2, 2, 0, 1, 1),
(3, 3, 0, 1, 1),
(4, 4, 0, 1, 1),
(5, 5, 1, 1, 1),
(6, 1, 0, 2, 1),
(7, 2, 0, 2, 1),
(8, 3, 0, 2, 1),
(9, 4, 0, 2, 1),
(10, 5, 1, 2, 1),
(11, 1, 0, 3, 1),
(12, 2, 0, 3, 1),
(13, 3, 0, 3, 1),
(14, 4, 0, 3, 1),
(15, 5, 1, 3, 1),
(16, 1, 0, 4, 1),
(17, 2, 0, 4, 1),
(18, 3, 0, 4, 1),
(19, 4, 0, 4, 1),
(20, 5, 1, 4, 1),
(21, 1, 0, 5, 1),
(22, 2, 0, 5, 1),
(23, 3, 0, 5, 1),
(24, 4, 0, 5, 1),
(25, 5, 1, 5, 1),
(26, 1, 0, 6, 1),
(27, 2, 0, 6, 1),
(28, 3, 0, 6, 1),
(29, 4, 0, 6, 1),
(30, 5, 1, 6, 1),
(31, 1, 0, 7, 1),
(32, 2, 0, 7, 1),
(33, 3, 0, 7, 1),
(34, 4, 0, 7, 1),
(35, 5, 1, 7, 1),
(36, 1, 0, 8, 1),
(37, 2, 0, 8, 1),
(38, 3, 0, 8, 1),
(39, 4, 0, 8, 1),
(40, 5, 1, 8, 1),
(41, 1, 0, 9, 1),
(42, 2, 0, 9, 1),
(43, 3, 0, 9, 1),
(44, 4, 0, 9, 1),
(45, 5, 1, 9, 1),
(46, 1, 0, 10, 1),
(47, 2, 0, 10, 1),
(48, 3, 0, 10, 1),
(49, 4, 0, 10, 1),
(50, 5, 1, 10, 1),
(51, 1, 0, 11, 1),
(52, 2, 0, 11, 1),
(53, 3, 0, 11, 1),
(54, 4, 0, 11, 1),
(55, 5, 1, 11, 1),
(56, 1, 0, 12, 1),
(57, 2, 0, 12, 1),
(58, 3, 0, 12, 1),
(59, 4, 0, 12, 1),
(60, 5, 1, 12, 1),
(61, 1, 0, 13, 1),
(62, 2, 0, 13, 1),
(63, 3, 0, 13, 1),
(64, 4, 0, 13, 1),
(65, 5, 1, 13, 1),
(66, 1, 0, 14, 1),
(67, 2, 0, 14, 1),
(68, 3, 0, 14, 1),
(69, 4, 0, 14, 1),
(70, 5, 1, 14, 1),
(71, 1, 0, 15, 1),
(72, 2, 0, 15, 1),
(73, 3, 0, 15, 1),
(74, 4, 0, 15, 1),
(75, 5, 1, 15, 1),
(76, 1, 0, 16, 1),
(77, 2, 0, 16, 1),
(78, 3, 0, 16, 1),
(79, 4, 0, 16, 1),
(80, 5, 1, 16, 1),
(81, 1, 0, 17, 1),
(82, 2, 0, 17, 1),
(83, 3, 0, 17, 1),
(84, 4, 0, 17, 1),
(85, 5, 1, 17, 1),
(86, 1, 0, 18, 1),
(87, 2, 0, 18, 1),
(88, 3, 0, 18, 1),
(89, 4, 0, 18, 1),
(90, 5, 1, 18, 1),
(91, 1, 0, 19, 1),
(92, 2, 0, 19, 1),
(93, 3, 0, 19, 1),
(94, 4, 0, 19, 1),
(95, 5, 1, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'base_url', 'http://houseland.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(2, 'site_title', 'Trang chủ Houseland', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(3, 'site_description', 'Chuyên cung cấp thông tin về nhà đất như: nhà riêng, nhà phố, đất nền, chung cư, biệt thự.  Tất cả đầy đủ pháp lý, minh bạch, rõ ràng.', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(4, 'site_keywords', 'mua ban nha dat, nha dat ho chi minh', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(5, 'admin_email', 'tungocsang88@gmail.com', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(22, 'mail_server', 'mail.example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(23, 'mail_login_name', 'login@example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(24, 'mail_password', 'password', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(105, 'site_name', 'houseland.com.vn', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(113, 'google_analystic', '<!-- Global Site Tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-88738631-22\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments)};\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-88738631-22\');\r\n</script>', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(114, 'facebook_appid', '', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(115, 'google_fanpage', '', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(116, 'facebook_fanpage', 'https://www.facebook.com/www.icare.center', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(117, 'twitter_fanpage', '', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(130, 'logo', '/public/uploads/images/logo.png', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(131, 'favicon', '2017/08/29/favicon-1504021257.ico', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(141, 'banner', '/public/uploads/images/logo.png', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(142, 'custom_text', '', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(143, 'email_cc', '', '2016-11-11 00:00:00', '2017-08-29 13:06:32'),
(144, 'thong_bao_chung', '\n', '2017-05-11 00:00:00', '2017-08-07 11:20:56'),
(145, 'cty_info', '', '0000-00-00 00:00:00', '2017-08-29 13:06:32'),
(146, 'hotline', '(08) 35 603 247 - 0909 787 111', '2017-07-27 00:00:00', '2017-09-28 08:49:44'),
(163, 'so_nam', '10', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(164, 'so_kien_truc_su', '60', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(165, 'so_cong_nhan', '900', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(166, 'so_cong_trinh', '800', '2016-07-27 14:37:52', '2017-09-28 08:49:44'),
(167, 'so_tin_lien_quan', '10', '2016-11-11 00:00:00', '2017-09-28 08:49:44'),
(168, 'gioi_thieu_chung', '', '2017-05-11 00:00:00', '2017-09-28 08:49:44'),
(169, 'gioi_thieu_tin_tuc', '', '0000-00-00 00:00:00', '2017-09-28 08:49:44'),
(170, 'email_header', 'houseland.com.vn@gmail.com', '2017-07-27 00:00:00', '2017-09-28 08:49:44'),
(171, 'su_lua_chon_dung_dan', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(172, 'chi_nhanh_phia_nam', '<p><strong>Đại diện chi nh&aacute;nh ph&iacute;a Nam:</strong></p>\r\n\r\n<p>Địa chỉ: 166 Nguyễn Ho&agrave;ng, phường An Ph&uacute;, quận 2</p>\r\n\r\n<p>Hotline: (08) 35 00 32 47 - 0909 787 111</p>\r\n\r\n<p>Email: <a href=\"mailto:#\">houseland.com.vn@gmail.com</a></p>\r\n', '2017-08-29 00:00:00', '2017-09-28 08:49:44'),
(173, 'chi_nhanh_phia_bac', '<p><strong>Đại diện chi nh&aacute;nh ph&iacute;a Bắc:</strong></p>\r\n\r\n<p>Địa chỉ: 166 Nguyễn Ho&agrave;ng, phường An Ph&uacute;, quận 2</p>\r\n\r\n<p>Hotline: (08) 35 00 32 47 - 0909 787 111</p>\r\n\r\n<p>Email: <a href=\"mailto:#\">houseland.com.vn@gmail.com</a></p>\r\n', '2017-08-29 00:00:00', '2017-09-28 08:49:44'),
(174, 'articles_per_page', '5', '2017-08-29 00:00:00', '2017-09-28 08:49:44'),
(175, 'product_related', '4', '2017-08-29 00:00:00', '2017-09-28 08:49:44'),
(176, 'mau_nen_menu', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(177, 'mau_nen_footer', '#0f1416', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(178, 'mau_nen_search', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(179, 'mau_nen_copyright', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(180, 'mau_nen_block', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(181, 'mau_nut_dang_ky', '#fb7c28', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(182, 'mau_nut_top', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(183, 'mau_menu_hover', '#ff6600', '2017-08-29 00:00:00', '2017-09-16 15:35:09'),
(184, 'icon_nam_hinh_thanh', '/public/uploads/images/ascendant-bars-graphic.png', '2017-08-29 00:00:00', '2017-09-28 08:49:44'),
(185, 'icon_kien_truc_su', '/public/uploads/images/engineer.png', '2017-08-29 00:00:00', '2017-09-28 08:49:44'),
(186, 'icon_cong_nhan', '/public/uploads/images/worker-of-construction-working-with-a-shovel-beside-material-pile.png', '2017-08-29 00:00:00', '2017-09-28 08:49:44'),
(187, 'icon_cong_trinh', '/public/uploads/images/skyline.png', '2017-08-29 00:00:00', '2017-09-28 08:49:44'),
(188, 'icon_tieu_de', '/public/uploads/images/triangle.png', '2017-08-29 00:00:00', '2017-09-28 08:49:44'),
(189, 'product_widget', '5', '0000-00-00 00:00:00', '2017-09-28 08:49:44'),
(190, 'article_related', '4', '2017-09-15 00:00:00', '2017-09-28 08:49:44'),
(191, 'mau_nen_header', '#ffffff', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(192, 'mau_header_title', '#000000', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(193, 'mau_header_value', '#000000', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(194, 'mau_header_icon', '#ff6600', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(195, 'mau_nen_header_top', '#000000', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(196, 'mau_chu_header_top', '#ffffff', '0000-00-00 00:00:00', '2017-09-16 15:35:09'),
(197, 'mau_chu_dao', '#ff6600', '0000-00-00 00:00:00', '2017-09-28 08:49:44'),
(198, 'hover_parent', '#ff781e', '0000-00-00 00:00:00', '2017-09-28 08:49:44'),
(199, 'menu_border', '#cc5608', '0000-00-00 00:00:00', '2017-09-28 08:49:44'),
(200, 'icon_mui_ten', '/public/uploads/images/arrow-1506003900.png', '0000-00-00 00:00:00', '2017-09-28 08:49:44'),
(201, 'hot_homepage', '5', '0000-00-00 00:00:00', '2017-09-28 08:49:44'),
(202, 'product_per_page', '9', '0000-00-00 00:00:00', '2017-09-28 08:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 bds 2 tin tuc 3 tien ich',
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` varchar(32) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL COMMENT 'danh cho tien ich',
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tag_objects`
--

CREATE TABLE `tag_objects` (
  `object_id` int(20) NOT NULL,
  `tag_id` int(20) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : product, 2 : tin tuc',
  `object_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 : product, 2 : album, 3 : video , 4 : tin tức'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`id`, `content`) VALUES
(1, 'TẬP ĐOÀN SIÊU THỊ 24H LIÊN KẾT K KAFFEE'),
(2, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(3, 'DỊCH VỤ CỦA CHÚNG TÔI'),
(4, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
(5, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
(6, '2017 Designed by iweb247.vn'),
(7, 'TẬP ĐOÀN SIÊU THỊ 24H LIÊN KẾT K KAFFEE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `leader_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `changed_password` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `display_name`, `email`, `password`, `role`, `leader_id`, `status`, `changed_password`, `remember_token`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@kkaffee.com', '$2y$10$cuj..B4n2qP1JXrj6ahgs.tAyOlCuPmAycKIMNqf6bOBgD8F626Mu', 3, 1, 1, 0, 'JmrTKWXB611kIgbNUZFJ0tZkIHLK12md521DpvgO8cADueRLzDQcNhPtzzXl', 1, 1, '2017-06-28 00:00:00', '2017-09-28 22:45:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles_cate`
--
ALTER TABLE `articles_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `cate_parent`
--
ALTER TABLE `cate_parent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`slug`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `full_name` (`full_name`),
  ADD KEY `email` (`email`),
  ADD KEY `phone` (`phone`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `counter_ips`
--
ALTER TABLE `counter_ips`
  ADD UNIQUE KEY `ip` (`ip`,`object_id`,`object_type`);

--
-- Indexes for table `counter_values`
--
ALTER TABLE `counter_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `object_id` (`object_id`,`object_type`);

--
-- Indexes for table `custom_link`
--
ALTER TABLE `custom_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hot_cate`
--
ALTER TABLE `hot_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_seo`
--
ALTER TABLE `info_seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `image_url` (`image_url`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `score` (`score`,`object_id`,`object_type`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`name`) USING BTREE;

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_objects`
--
ALTER TABLE `tag_objects`
  ADD PRIMARY KEY (`object_id`,`tag_id`,`type`);

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles_cate`
--
ALTER TABLE `articles_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cate`
--
ALTER TABLE `cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cate_parent`
--
ALTER TABLE `cate_parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `counter_values`
--
ALTER TABLE `counter_values`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `custom_link`
--
ALTER TABLE `custom_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hot_cate`
--
ALTER TABLE `hot_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `info_seo`
--
ALTER TABLE `info_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_img`
--
ALTER TABLE `product_img`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
