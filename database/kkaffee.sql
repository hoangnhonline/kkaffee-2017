-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2017 at 01:03 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 'Bán nhà riêng tại TP.HCM giá rẻ | Thanh Phú Thịnh Land', 'Bán nhà riêng giá rẻ tại tp.hcm, củ chi và long an. Thanh Phú Thịnh Land chuyên mua bán nhà riêng chính chủ đứng tên sổ hồng, thủ tục sang tên nhanh gọn.', 'bán nhà riêng', '', 2, 2, '2017-07-09 08:52:06', '2017-07-12 08:49:20'),
(2, 'Cách giải quyết tranh chấp đất đai theo luật hiện nay', '', '', '', 2, 2, '2017-07-09 11:01:51', '2017-07-09 11:01:51'),
(3, 'Tranh chấp quyền sử dụng đất có sổ đỏ như thế nào', '', '', '', 2, 2, '2017-07-09 14:23:55', '2017-07-09 14:23:55'),
(4, 'Chi phí sang tên sổ đỏ nhà đất và thủ tục như thế nào', '', '', '', 2, 2, '2017-07-09 14:53:42', '2017-07-09 14:53:42'),
(5, 'Đất thổ cư có được phép đào ao hay không', '', '', '', 2, 2, '2017-07-09 15:24:31', '2017-07-09 15:24:31'),
(6, 'Nếu quý vị là người quan tâm đến phong thủy, thì những linh vật được đặt trong nhà mang lại tài lộc, may mắn cho gia đình chắc hẵn quý vị không nên bỏ qua. Sau đây là bài viết chia sẻ về linh vật Thiềm Thừ, nó là linh vật gì, tác dụng và cách đặt như thế ', '', '', '', 2, 2, '2017-07-09 16:05:04', '2017-07-09 16:05:04'),
(7, 'Cách chuyển đất trồng lâu năm thành đất thổ cư như thế nào', '', '', '', 2, 2, '2017-07-09 16:24:56', '2017-07-09 16:24:56'),
(8, 'Thừa kế thế vị là gì? Quy định thừa kế như thế nào', '', '', '', 2, 2, '2017-07-09 16:55:30', '2017-07-09 16:55:30'),
(9, 'những điều cấm kỵ trong phong thủy phòng ngủ', '', 'những điều cấm kỵ trong phong thủy phòng ngủ', '', 3, 3, '2017-07-10 08:37:51', '2017-07-10 08:37:51'),
(10, 'Bán đất thổ cư Phan Văn Mảng Bến Lức Long An giá 300 triệu', '', '', '', 2, 2, '2017-07-10 08:42:25', '2017-07-10 13:46:46'),
(11, 'Mẫu nhà phố 1 trệt 2 lầu có sân thượng', '', '', '', 2, 2, '2017-07-10 09:22:53', '2017-07-10 09:22:53'),
(12, '', '', '', '', 2, 2, '2017-07-10 10:03:52', '2017-07-10 10:03:52'),
(13, '', '', '', '', 2, 2, '2017-07-10 10:04:58', '2017-07-10 10:04:58'),
(14, '', '', '', '', 2, 2, '2017-07-10 10:07:06', '2017-07-10 10:07:06'),
(15, '', '', '', '', 2, 2, '2017-07-10 10:09:49', '2017-07-10 10:09:49'),
(16, 'Những điều cấm kỵ trong phong thủy phòng ngủ', '', 'những điều cấm kỵ trong phong thủy phòng ngủ', '', 3, 2, '2017-07-10 13:26:54', '2017-07-14 09:02:15'),
(17, 'Những điều kiêng kỵ trong phong thủy nhà ở', '', 'phong thủy nhà ở', '', 3, 2, '2017-07-10 14:03:01', '2017-07-14 09:01:56'),
(18, 'Bán đất nền dự án Gia Long River Town Cần Đước Long An giá 350 triệu', '', '', '', 2, 2, '2017-07-10 14:12:56', '2017-07-10 14:12:56'),
(19, 'Cách khắc phục hướng nhà không tốt', '', '', '', 3, 2, '2017-07-10 14:30:03', '2017-07-14 09:01:38'),
(20, 'Bán đất thổ cư xã Mỹ Lộc Cần Giuộc Long An giá 400 triệu', '', '', '', 2, 2, '2017-07-10 14:36:40', '2017-07-10 14:36:40'),
(21, 'Cách hóa giải hướng nhà xấu', '', 'cách hóa giải hướng nhà xấu', '', 3, 1, '2017-07-10 14:46:32', '2017-09-22 16:27:09'),
(22, 'Bán đất mặt tiền xã Hòa Phú Châu Thành Long An giá 1 tỷ', '', '', '', 2, 2, '2017-07-10 14:57:16', '2017-07-10 14:57:16'),
(23, 'Bán đất nền gần công viên Võ Văn Tần Đức Hòa Long An', '', '', '', 2, 2, '2017-07-10 15:16:34', '2017-07-10 15:16:34'),
(24, 'Những loại cây không nên trồng trong nhà', '', 'những loại cây không nên trồng trong nhà', '', 3, 1, '2017-07-10 15:23:38', '2017-09-22 16:26:40'),
(25, 'Thị trường giao dịch căn hộ tại TP.HCM vượt đỉnh', '', '', '', 2, 2, '2017-07-10 15:36:54', '2017-07-10 15:36:54'),
(26, 'Sóng ngầm bất động sản siêu sang trên đất vàng Hồ Chí Minh', '', '', '', 2, 2, '2017-07-10 15:44:00', '2017-07-10 15:44:00'),
(27, 'Bất động sản quận 8 đang dần trở thành điểm sáng nhờ hạ tầng', '', '', '', 2, 2, '2017-07-10 15:55:26', '2017-07-10 15:55:26'),
(28, 'Những kiêng kỵ khi nhà có tang', '', 'những kiêng kỵ khi nhà có tang', '', 3, 3, '2017-07-10 16:15:26', '2017-07-10 16:32:51'),
(29, 'Nghề môi giới bất động sản không hề dễ giàu', '', '', '', 2, 2, '2017-07-10 16:18:24', '2017-07-10 16:18:24'),
(30, 'Đua nhau đặt mục tiêu lãi nghìn tỷ của các đại gia bất động sản', '', '', '', 2, 2, '2017-07-10 16:26:52', '2017-07-10 16:26:52'),
(31, 'Bất động sản quận 8 phát triển mạnh nhờ quy hoạch', '', '', '', 2, 2, '2017-07-10 16:36:32', '2017-07-10 16:36:32'),
(32, 'Những điều cấm kỵ khi xây nhà', '', 'những điều cấm kỵ khi xây nhà', '', 3, 1, '2017-07-10 16:53:18', '2017-09-22 16:26:06'),
(33, 'Mẫu nhà 2 tầng đẹp theo phong cách Nhật Bản', '', '', '', 2, 2, '2017-07-10 17:03:03', '2017-07-10 17:03:03'),
(34, 'Cách khai quang gương bát quái', '', 'cách khai quang gương bát quái', '', 3, 1, '2017-07-10 17:10:53', '2017-09-22 16:25:01'),
(35, 'Bán biệt thự giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Bán biệt thự giá rẻ tại tp.hcm, huyện củ chi và long an. Thanh Phú Thịnh Land chuyên mua bán biệt thự cao cấp giấy tờ pháp lý rõ ràng, sang tên nhanh chóng.', 'bán biệt thự giá rẻ', '', 2, 2, '2017-07-12 08:51:13', '2017-07-12 08:51:13'),
(36, 'Bán nhà mặt phố giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Bán nhà mặt phố giá rẻ tại tp.hcm và long an. Thanh Phú Thịnh Land chuyên mua bán nhà mặt phố giá rẻ, giấy tờ pháp lý rõ ràng, sang tên nhanh chóng.', 'bán nhà mặt phố', '', 2, 2, '2017-07-12 08:53:07', '2017-07-12 08:53:07'),
(37, 'Bán đất nền giá rẻ tại TP.HCM và Long An | Thanh Phú Thịnh Land', 'Bán đất nền giá rẻ tại Tp.HCM và Long An. Thanh Phú Thịnh Land chuyên mua bán đất nền giá rẻ, giấy tờ rõ ràng, tách sổ sang tên nhanh chóng.', 'bán đất nền', '', 2, 2, '2017-07-12 08:56:45', '2017-07-12 08:56:45'),
(38, 'Bán đất thổ cư giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Bán đất thổ cư giá rẻ tại Tp.HCM và Long An. Thanh Phú Thịnh Land chuyên mua bán đất thổ cư 100%, tách sổ riêng, sang tên nhanh chóng.', 'bán đất thổ cư', '', 2, 2, '2017-07-12 09:00:30', '2017-07-12 09:00:30'),
(39, 'Bán đất nông nghiệp giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Bán đất nông nghiệp giá rẻ. Thanh Phú Thịnh Land chuyên mua bán đất nông nghiệp, đất sào, đất mẫu, bán đất lâm nghiệp, đất rẫy giá rẻ.', 'bán đất nông nghiệp', '', 2, 2, '2017-07-12 10:33:49', '2017-07-12 10:33:49'),
(40, 'Cho thuê căn hộ chung cư giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Cho thuê căn hộ chung cư giá rẻ tại TP.HCM và Long An. Thanh Phú Thịnh Land chuyên cho thuê căn hộ chung cư cao cấp, họp đồng rõ ràng.', 'cho thuê căn hộ chung cư', '', 2, 2, '2017-07-12 10:49:30', '2017-07-12 10:49:30'),
(41, 'Cho thuê nhà riêng giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Cho thuê nhà riêng giá rẻ tại TP.HCM và Long An. Thanh Phú Thịnh Land chuyên cho thuê nhà riêng với nhiều diện tích khác nhau, nhiều mẫu nhà riêng các loại.', 'cho thuê nhà riêng', '', 2, 2, '2017-07-12 10:53:19', '2017-07-12 10:53:19'),
(42, 'Cho thuê nhà mặt phố giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Cho thuê nhà mặt phố giá rẻ tại TP.HCM và Long An. Thanh Phú Thịnh Land chuyên cho thuê nhà mặt phố nhiều diện tích và mẫu các loại khác nhau.', 'cho thuê nhà mặt phố', '', 2, 2, '2017-07-12 10:54:44', '2017-07-12 10:54:44'),
(43, 'Cho thuê nhà trọ giá rẻ tại TP.HCM | Thanh Phú Thịnh Land', 'Cho thuê nhà trọ giá rẻ tại TP.HCM và Long An. Thanh Phú Thịnh Land chuyên cho thuê nhà trọ nhiều diện tích khác nhau.', 'cho thuê nhà trọ', '', 2, 2, '2017-07-12 10:57:18', '2017-07-12 10:57:18'),
(44, 'Bán đất nông nghiệp giá rẻ tại Long An | Thanh Phú Thịnh Land', 'Bán đất nông nghiệp giá rẻ tại Long An. Thanh Phú Thịnh Land chuyên mua bán  đất sào, đất mẫu, bán đất lâm nghiệp, đất rẫy giá rẻ.', 'bán đất nông nghiệp', '', 2, 2, '2017-07-12 11:03:34', '2017-07-12 11:03:34'),
(45, 'Bán đất huyện Đức Hòa giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Đức Hòa giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Đức Hòa Long An.\r\n', 'bán đất huyện đức hòa', '', 2, 2, '2017-07-12 11:25:06', '2017-07-12 11:25:06'),
(46, 'Bán đất huyện Châu Thành giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Châu Thành giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Châu Thành Long An.', 'bán đất huyện châu thành', '', 2, 2, '2017-07-12 11:27:52', '2017-07-12 11:27:52'),
(47, 'Bán đất huyện Bến Lức giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Bến Lức giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Bến Lức Long An.', 'bán đất huyện bến lức', '', 2, 2, '2017-07-12 13:17:59', '2017-07-12 13:17:59'),
(48, 'Bán đất huyện Cần Đước giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Cần Đước giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Cần Đước Long An.', 'bán đất huyện cần đước', '', 2, 2, '2017-07-12 13:18:55', '2017-07-12 13:18:55'),
(49, 'Bán đất huyện Cần Giuộc giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Cần Giuộc giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Cần Giuộc Long An.', 'bán đất huyện cần giuộc', '', 2, 2, '2017-07-12 13:19:34', '2017-07-12 13:19:34'),
(50, 'Bán đất huyện Mộc Hóa giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Mộc Hóa giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Mộc Hóa Long An.', 'bán đất huyện mộc hóa', '', 2, 2, '2017-07-12 13:21:46', '2017-07-12 13:21:46'),
(51, 'Bán đất huyện Vĩnh Hưng giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Vĩnh Hưng giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Vĩnh Hưng Long An.', 'bán đất huyện vĩnh hưng', '', 2, 2, '2017-07-12 13:24:42', '2017-07-12 13:24:42'),
(52, 'Bán đất huyện Đức Huệ giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Đức Huệ giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Đức Huệ Long An.', 'bán đất huyện đức huệ', '', 2, 2, '2017-07-12 13:26:17', '2017-07-12 13:26:17'),
(53, 'Bán đất huyện Tân trụ giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Tân Trụ giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Tân Trụ Long An.', 'bán đất huyện tân trụ', '', 2, 2, '2017-07-12 13:59:59', '2017-07-12 13:59:59'),
(54, 'Bán đất huyện Tân Thanh giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Tân Thanh giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Tân Thanh Long An.', 'bán đất huyện tân thanh', '', 2, 2, '2017-07-12 14:02:02', '2017-07-12 14:02:02'),
(55, 'Bán đất huyện Thạnh Hóa giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Thạnh Hóa giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Thạnh Hóa Long An.', 'bán đất huyện thạnh hóa', '', 2, 2, '2017-07-12 14:07:08', '2017-07-12 14:07:08'),
(56, 'Bán đất huyện Thủ Thừa giá rẻ | Thanh Phú Thịnh Land', 'Bán đất huyện Thủ Thừa  giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại huyện Thủ Thừa Long An.', 'bán đất huyện thủ thừa', '', 2, 2, '2017-07-12 14:09:09', '2017-07-12 14:09:09'),
(57, 'Bán đất thị xã Kiến Tường giá rẻ | Thanh Phú Thịnh Land', 'Bán đất thị xã Kiến Tường giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại thị xã Kiến Tường Long An.\r\n', 'bán đất thị xã kiến tường', '', 2, 2, '2017-07-12 14:12:04', '2017-07-12 14:12:04'),
(58, 'Bán đất thành phố Tân An giá rẻ | Thanh Phú Thịnh Land', 'Bán đất thành phố Tân An giá rẻ, chuyên mua bán đất với nhiều diện tích, nhiều giá bán, nhiều địa điểm và giấy tờ minh bạch tại thành phố Tân An Long An.', 'bán đất thành phố tân an', '', 2, 2, '2017-07-12 14:22:53', '2017-07-12 14:22:53'),
(59, 'Bán đất thổ cư 100% tại Long An | Thanh Phú Thịnh Land', 'Bán đất thổ cư 100% tại long an, chuyên mua bán đất thổ cư với nhiều diện tích, giá cả khác nhau.', 'bán đất thổ cư 100% tại long an', '', 2, 2, '2017-07-12 14:31:01', '2017-07-12 14:31:01'),
(60, 'Mẫu nhà đẹp bên bờ biển ở Cape Cod', '', 'mẫu nhà đẹp', '', 2, 2, '2017-07-12 14:57:00', '2017-07-12 14:57:00'),
(61, 'Mẫu nhà Residence Private Elegant mang phong cách hiện đại', '', '', '', 2, 2, '2017-07-12 15:13:42', '2017-07-12 15:13:42'),
(62, 'Mẫu nhà Wategos Residence 2 tầng thiết kế mang phong cách hiện đại', '', '', '', 2, 2, '2017-07-12 15:38:48', '2017-07-12 15:38:48'),
(63, 'Phân tích dự án khu đô thị Xuân Ngọc', '', 'khu đô thị xuân ngọc', '', 2, 2, '2017-07-12 16:23:55', '2017-07-12 16:23:55'),
(64, 'Phân tích khu đô thị Waterpoint Huyện Bến Lức Long An', '', '', '', 2, 2, '2017-07-12 16:39:40', '2017-07-12 16:39:40'),
(65, 'Phân tích khu dân cư Nam Long - Long An', '', '', '', 2, 2, '2017-07-12 16:54:05', '2017-07-12 16:54:05'),
(66, 'Phân tích dự án khu dân cư Long Hậu - Long An', '', '', '', 2, 2, '2017-07-12 17:03:17', '2017-07-12 17:03:17'),
(67, 'Phân tích dự án khu căn hộ Everluck Residence', '', '', '', 2, 2, '2017-07-12 17:10:45', '2017-07-12 17:10:45'),
(68, 'Phân tích dự án khu dân cư Hồng Phát - Long An', '', '', '', 2, 1, '2017-07-12 17:18:28', '2017-07-14 08:39:07'),
(69, 'Bán đất KDC Tân Đức - Đức Huệ - Long An giá 1,5 triệu/m2', '', '', '', 2, 2, '2017-07-13 08:58:38', '2017-07-13 08:58:38'),
(70, 'Bán đất nền mặt tiền QL62 - Tân Lập - Mộc Hóa -Long An giá 1,5 tỷ', '', '', '', 2, 2, '2017-07-13 09:14:51', '2017-07-13 09:14:51'),
(71, 'Bán đất nền huyện Tân Hưng - Long An giá 450 triệu', '', '', '', 2, 2, '2017-07-13 09:35:20', '2017-07-13 09:35:20'),
(72, 'Bán đất mặt tiền tỉnh lộ 829, Tân Thạnh - Long An', '', '', '', 2, 2, '2017-07-13 10:04:10', '2017-07-13 10:04:10'),
(73, 'Nghĩa vụ tài chính khi chuyển mục đích sử dụng đất như thế nào', '', '', '', 2, 2, '2017-07-13 13:15:06', '2017-07-13 13:15:06'),
(74, 'Người nước ngoài có được nhận hoặc tặng nhà tại Việt Nam hay không', '', '', '', 2, 2, '2017-07-13 13:55:55', '2017-07-13 13:55:55'),
(75, 'Tài sản đất chưa có sổ đỏ lập di chúc như thế nào', '', '', '', 2, 2, '2017-07-13 15:30:57', '2017-07-13 15:30:57'),
(76, 'Thủ tục chuyển nhượng đất liền kề như thế nào', '', '', '', 2, 2, '2017-07-13 16:35:01', '2017-07-13 16:35:01'),
(77, 'Chuyển đất từ sổ đỏ sang sổ hồng như thế nào', '', '', '', 2, 2, '2017-07-14 10:03:16', '2017-07-14 10:03:16'),
(78, 'Thủ tục chuyển nhượng nhà chung cư chưa có sổ đỏ như thế nào', '', '', '', 2, 2, '2017-07-14 10:22:33', '2017-07-14 10:22:33'),
(79, 'Quy định về thủ tục sang tên quyền sử dụng đất như thế nào', '', '', '', 2, 2, '2017-07-14 11:13:05', '2017-07-14 11:13:05'),
(80, 'Thủ tục sang tên đổi chủ nhà đất như thế nào', '', '', '', 2, 2, '2017-07-14 11:21:32', '2017-07-14 11:21:32'),
(81, 'Thủ tục sang tên quyền sử dụng đất từ cha mẹ cho con như thế nào', '', '', '', 2, 2, '2017-07-14 14:11:26', '2017-07-14 14:11:26'),
(82, 'Thủ tục sang tên sổ đỏ đất thổ cư như thế nào', '', '', '', 2, 2, '2017-07-14 14:24:48', '2017-07-14 14:24:48'),
(83, 'Thủ tục sang tên sổ đỏ nhà chung cư như thế nào', '', '', '', 2, 2, '2017-07-14 14:51:49', '2017-07-14 14:51:49'),
(84, 'Thủ tục chuyển nhượng nhà chung cư chưa nhận bàn giao như thế nào', '', '', '', 2, 2, '2017-07-14 15:22:54', '2017-07-14 15:22:54'),
(85, 'Cách lấy ánh sáng cho phòng khách nhà phố', '', '', '', 2, 2, '2017-07-15 09:49:06', '2017-07-15 09:49:06'),
(86, 'Cách chọn giấy dán tường cho phòng khách', '', '', '', 2, 2, '2017-07-15 10:12:36', '2017-07-15 10:12:36'),
(87, 'Thủ tục cấp lại giấy chứng nhận quyền sử dụng đất như thế nào', '', '', '', 2, 2, '2017-07-15 11:25:16', '2017-07-15 11:25:16'),
(88, '', '', '', '', 1, 1, '2017-07-15 12:09:49', '2017-07-15 12:09:49'),
(89, '', '', '', '', 1, 2, '2017-07-15 12:11:07', '2017-07-27 14:49:39'),
(90, 'Những rủi ro khi bán nhà đất bằng giấy tờ viết tay cần biết', '', '', '', 2, 2, '2017-07-15 14:07:29', '2017-07-15 14:07:29'),
(91, 'Vị Trí - Sơ Đồ Khu Dân Cư An Thắng - Rạch Kiến', '', '', '', 2, 12, '2017-07-15 14:54:50', '2017-07-19 14:32:34'),
(92, 'Tiện ích Khu Dân Cư An Thắng - Rạch Kiến', '', '', '', 2, 12, '2017-07-15 16:24:46', '2017-07-19 14:25:29'),
(93, 'Quy Mô Dự Án KDC An Thắng - Rạch Kiến', '', '', '', 2, 12, '2017-07-15 16:55:39', '2017-07-19 14:39:03'),
(94, 'Phương Thức Thanh Toán Dự Án KDC An Thắng - Rạch Kiến', '', '', '', 2, 12, '2017-07-16 00:26:06', '2017-07-21 09:58:49'),
(95, 'Bản đồ quy hoạch huyện cần giuộc mới nhất', '', '', '', 2, 12, '2017-07-16 17:05:53', '2017-07-22 12:06:41'),
(96, 'Thủ tục cấp giấy phép xây dựng như thế nào', '', '', '', 2, 2, '2017-07-17 12:06:07', '2017-07-17 12:06:07'),
(97, 'Những thủ tục cần thiết khi xây nhà mới cần nên biết', '', '', '', 2, 2, '2017-07-17 14:12:37', '2017-07-17 14:12:37'),
(98, 'Những đối tượng được cấp giấy phép chứng nhận quyền sử dụng đất', '', '', '', 2, 2, '2017-07-17 15:15:21', '2017-07-17 15:15:21'),
(99, 'Trình tự thủ tục và thời gian giải quyết tách thửa như thế nào', '', '', '', 2, 2, '2017-07-17 15:56:26', '2017-07-17 15:56:26'),
(100, 'Tách thửa chia đất cho con như thế nào', '', '', '', 2, 2, '2017-07-17 16:10:47', '2017-07-17 16:10:47'),
(101, 'Chia tài sản thừa kế cho con chung và con riêng như thế nào', '', '', '', 2, 2, '2017-07-17 17:08:43', '2017-07-17 17:08:43'),
(102, 'Cách hóa giải hướng nhà tuyệt mệnh như thế nào', '', '', '', 2, 1, '2017-07-19 09:59:53', '2017-09-12 22:35:00'),
(103, 'Đất nền Long An - Miếng mồi béo bỡ của giới đầu tư', '', '', '', 2, 2, '2017-07-19 10:25:02', '2017-07-19 10:25:02'),
(104, 'Bản đồ quy hoạch huyện Cần Đước mới nhất', '', '', '', 2, 12, '2017-07-19 16:44:23', '2017-07-22 12:06:06'),
(105, 'Mua bán nhà đất cần chuẩn bị những giấy tờ gì', '', '', '', 2, 2, '2017-07-19 21:13:12', '2017-07-19 21:13:12'),
(106, 'Xin cấp sỏ đỏ chung cư cần những thủ tục gì', '', '', '', 2, 1, '2017-07-19 21:49:00', '2017-09-22 16:23:23'),
(107, 'Bản đồ quy hoạch chung thành phố Tân An mới nhất', '', '', '', 2, 2, '2017-07-20 09:36:44', '2017-07-20 09:36:44'),
(108, 'Bản đồ quy hoạch chung Kiến Tường Long An mới nhất', '', '', '', 2, 2, '2017-07-20 10:17:39', '2017-07-20 10:17:39'),
(109, 'Bản đồ quy hoạch chung huyện Bến Lức - Long An mới nhất', '', '', '', 2, 2, '2017-07-20 10:46:19', '2017-07-20 10:46:19'),
(110, 'Bản đồ quy hoạch chung huyện Thủ Thừa - Long An mới nhất', '', '', '', 2, 2, '2017-07-20 12:03:07', '2017-07-20 12:03:07'),
(111, 'Danh sách các phòng ban đơn vị trực thuộc huyện thạnh hóa', '', '', '', 2, 2, '2017-07-20 14:14:08', '2017-07-20 14:14:08'),
(112, 'Danh sách xã phường thị trấn tại Thạnh Hóa tỉnh Long An', '', '', '', 2, 2, '2017-07-20 15:12:34', '2017-07-20 15:12:34'),
(113, 'Thủ tục đổi sổ hồng cũ sang sổ mới như thế nào', '', '', '', 2, 1, '2017-07-20 15:57:10', '2017-09-22 16:23:15'),
(114, 'Thủ tục và giấy tờ hoàn công nhà như thế nào', '', '', '', 2, 1, '2017-07-20 16:06:52', '2017-09-22 16:23:09'),
(115, 'Thủ tục làm sổ đỏ và lệ phí như thế nào', '', '', '', 2, 1, '2017-07-20 16:23:57', '2017-09-16 15:45:12'),
(116, 'Diện tích bao nhiêu mới được cấp giấy phép xây dựng nhà ở', '', '', '', 2, 1, '2017-07-20 17:10:26', '2017-09-06 10:15:30'),
(117, 'Bản đồ quy hoạch tổng thế phát triển kinh tế xã hội huyện Cần Đước', '', '', '', 2, 2, '2017-07-21 10:05:29', '2017-07-21 10:05:29'),
(118, 'Thông tin chung về huyện Cần Đước, tỉnh Long An', '', '', '', 2, 2, '2017-07-21 17:42:08', '2017-07-21 17:42:08'),
(119, 'Danh sách xã phường thị trấn tại Cần Đước tỉnh Long An mới nhất', '', '', '', 2, 2, '2017-07-22 10:32:16', '2017-07-22 10:32:16'),
(120, 'Danh sách các phòng ban đơn vị trực thuộc huyện Cần Đước mới nhất', '', '', '', 2, 2, '2017-07-22 12:13:26', '2017-07-22 12:13:26'),
(121, 'Thông tin chung về huyện Cần Giuộc, tỉnh Long An', '', '', '', 2, 2, '2017-07-22 14:05:41', '2017-07-22 14:05:41'),
(122, 'Danh sách xã phường thị trấn tại Cần Giuộc tỉnh Long An', '', '', '', 2, 2, '2017-07-22 14:37:18', '2017-07-22 14:37:18'),
(123, 'Danh sách các phòng ban đơn vị trực thuộc huyện Cần Giuộc', '', '', '', 2, 2, '2017-07-22 16:14:29', '2017-07-22 16:14:29'),
(124, 'Bản đồ xây dựng quy hoạch đô thị huyện Cần Giuộc', '', '', '', 2, 2, '2017-07-22 16:46:36', '2017-07-22 16:46:36'),
(125, 'Thông tin chung về Thành Phố Tân An mới nhất', '', '', '', 2, 2, '2017-07-22 17:10:38', '2017-07-22 17:10:38'),
(126, 'Danh sách xã phường thị trấn tại thành phố Tân An tỉnh Long An', '', '', '', 2, 2, '2017-07-23 15:39:12', '2017-07-23 15:39:12'),
(127, 'Danh sách các phòng ban đơn vị trực thuộc thành phố Tân An', '', '', '', 2, 2, '2017-07-23 16:43:04', '2017-07-23 16:43:04'),
(128, 'Thông tin chung về huyện Bến Lức, tỉnh Long An', '', '', '', 2, 2, '2017-07-24 10:12:03', '2017-07-24 10:12:03'),
(129, 'Danh sách xã phường thị trấn tại huyện Bến Lức tỉnh Long An', '', '', '', 2, 2, '2017-07-24 10:57:37', '2017-07-24 10:57:37'),
(130, 'Danh sách các phòng ban đơn vị trực thuộc huyện Bến Lức, tỉnh Long An', '', '', '', 2, 2, '2017-07-24 14:39:28', '2017-07-24 14:39:28'),
(131, 'Thông tin chung về huyện Thủ Thừa, tỉnh Long An', '', '', '', 2, 2, '2017-07-24 15:08:08', '2017-07-24 15:08:08'),
(132, 'Danh sách các phòng ban đơn vị trực thuộc huyện Thủ Thừa, tỉnh Long An', '', '', '', 2, 2, '2017-07-24 15:45:52', '2017-07-24 15:45:52'),
(133, 'Danh sách xã phường thị trấn tại huyện Thủ Thừa tỉnh Long An', '', '', '', 2, 2, '2017-07-24 16:15:54', '2017-07-24 16:15:54'),
(134, 'Công chứng giấy tờ nhà đất huyện Cần Đước ở đâu', '', '', '', 2, 2, '2017-07-24 17:03:47', '2017-07-26 08:52:15'),
(135, 'Phòng công chứng và Văn phòng công chứng khác nhau như thế nào', '', '', '', 2, 2, '2017-07-24 17:29:06', '2017-07-24 17:29:06'),
(136, 'Công chứng giấy tờ nhà đất tại thành phố Tân An ở đâu', '', '', '', 2, 2, '2017-07-26 10:02:00', '2017-07-26 10:02:00'),
(137, 'Danh sách phòng công chứng nhà nước và tư nhân tại Long An', '', '', '', 2, 2, '2017-07-26 10:22:54', '2017-07-26 10:22:54'),
(138, 'Bán Đất Nền Thành Phố Tân An Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền thành phố Tân An giá rẻ, đất thổ cư 100%, pháp lý sổ hồng chính chủ. Dat nen thanh pho tan an thích hợp cho lướt sóng đầu tư, định cư lâu dài giá rẻ.', 'đất nền thành phố tân an', '', 2, 2, '2017-07-26 11:13:07', '2017-07-26 11:13:07'),
(139, 'Bán Đất Nền Thị Xã Kiến Tường Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền thị xã Kiến Tường giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen thi xa kien tuong rất thích hợp cho đầu tư lướt sóng hoặc định cư lâu dài.', 'đất nền thị xã kiến tường', '', 2, 2, '2017-07-26 11:28:30', '2017-07-26 11:28:30'),
(140, 'Bán Đất Nền Huyện Cần Đước Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Cần Đước giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen can duoc gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện cần đước', '', 2, 2, '2017-07-26 11:31:44', '2017-07-26 11:31:44'),
(141, 'Bán Đất Nền Huyện Cần Giuộc Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Cần Giuộc giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen can giuoc gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện cần giuộc', '', 2, 2, '2017-07-26 11:34:57', '2017-07-26 11:34:57'),
(142, 'Bán Đất Nền Huyện Bến Lức Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Bến Lức giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen ben luc gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện bến lức', '', 2, 2, '2017-07-26 11:35:45', '2017-07-26 14:57:20'),
(143, 'Bán Đất Nền Huyện Thủ Thừa Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Thủ Thừa giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen thu thua gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện thủ thừa', '', 2, 2, '2017-07-26 11:36:25', '2017-07-26 11:36:25'),
(144, 'Bán Đất Nền Huyện Châu Thành Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Châu Thành giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen chau thanh gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện châu thành', '', 2, 2, '2017-07-26 11:37:13', '2017-07-26 11:37:13'),
(145, 'Bán Đất Nền Huyện Đức Hòa Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Đức Hòa giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen duc hoa gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện đức hòa', '', 2, 2, '2017-07-26 11:37:57', '2017-07-26 11:37:57'),
(146, 'Bán Đất Nền Huyện Mộc Hóa Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Mộc Hóa giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen moc hoa gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện mộc hóa', '', 2, 2, '2017-07-26 11:38:35', '2017-07-26 11:38:35'),
(147, 'Bán Đất Nền Huyện Thạnh Hóa Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Thạnh Hóa giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen thanh hoa gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện thạnh hóa', '', 2, 2, '2017-07-26 11:40:14', '2017-07-26 11:40:14'),
(148, 'Bán Đất Nền Huyện Tân Hưng Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Tân Hưng giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen tan hung gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện tân hưng', '', 2, 2, '2017-07-26 11:41:02', '2017-07-26 11:41:02'),
(149, 'Bán Đất Nền Huyện Tân Thạnh Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Tân Thạnh giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen tan thanh gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện tân thanh', '', 2, 2, '2017-07-26 11:41:47', '2017-07-27 14:45:02'),
(150, 'Bán Đất Nền Huyện Tân Trụ Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Tân Trụ giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen tan tru gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện tân trụ', '', 2, 2, '2017-07-26 11:42:37', '2017-07-26 11:42:37'),
(151, 'Bán Đất Nền Huyện Vĩnh Hưng Giá Rẻ | Thanh Phú Thịnh Land', 'Bán đất nền huyện Vĩnh Hưng giá rẻ, đất thổ cư 100%, sổ hồng chính chủ. Dat nen vinh hung gia re thích hợp cho lướt sóng đầu tư, định cư lâu dài.', 'đất nền huyện vĩnh hưng', '', 2, 2, '2017-07-26 11:43:27', '2017-07-26 11:43:27'),
(152, 'Mua bán nhà đất Long An, đất nền dự án, đất thổ cư 100% giá rẻ', 'Mua bán nhà đất long an giá rẻ, chuyên bán đất nền dự án, đất thổ cư 100%,  giấy tờ chính chủ, pháp lý rõ ràng. Dat Long An gia re đầu tư sinh lời cao.', 'nhà đất long an', 'Mua bán nhà đất long an giá rẻ, chuyên bán đất nền dự án, đất thổ cư 100%,  giấy tờ chính chủ, pháp lý rõ ràng. Dat Long An gia re đầu tư sinh lời cao.', 2, 1, '2017-07-26 11:51:37', '2017-07-26 15:57:46'),
(153, 'Bán đất nền đường Nguyễn Hữu Trí, Xã An Thạnh, Huyện Bến Lức, Tỉnh Long An', '', '', '', 2, 2, '2017-07-26 14:52:45', '2017-07-26 14:52:45'),
(154, 'Bán đất nền đường tỉnh lộ 826, Xã Long Trạch, Huyện Cần Đước', '', 'đất nền đường tỉnh lộ 826', '', 2, 2, '2017-07-26 15:52:29', '2017-07-26 15:52:29'),
(155, 'Bán đất thổ cư gần ngã 3 Tân Kim, Huyện Cần Giuộc', '', '', '', 2, 2, '2017-07-26 16:10:58', '2017-07-26 16:10:58'),
(156, 'Bán đất nền đường tỉnh 827B, Bình Quới, Huyện Châu Thành', '', '', '', 2, 2, '2017-07-26 16:26:06', '2017-07-26 16:26:06'),
(157, 'Bán đất đường tỉnh lộ 10 gần KCN Tân Đức, Huyện Đức Hòa', '', '', '', 2, 2, '2017-07-26 17:09:27', '2017-07-26 17:09:27'),
(158, 'Bán đất thổ cư xã Mỹ Thạnh Tây, Huyện Cần Đước, tỉnh Long An', '', '', '', 2, 2, '2017-07-27 10:43:20', '2017-07-27 10:43:20'),
(159, 'Bán đất nền đường quốc lộ 62, xã Bình Thạnh, Huyện Mộc Hóa', '', '', '', 2, 2, '2017-07-27 11:01:36', '2017-07-27 11:01:36'),
(160, 'Bán đất nền mặt tiền xã Bình Thạnh, Huyện Tân Hưng giá rẻ', '', '', '', 2, 2, '2017-07-27 11:36:04', '2017-07-27 11:36:04'),
(161, 'Chuyện lạ có thật đất Long An đắt hơn đất Sài Gòn', '', '', '', 2, 2, '2017-07-27 11:56:37', '2017-07-27 11:56:37'),
(162, 'Bán đất nền đường tỉnh 819 xã Tân Lập, Huyện Tân Thạnh', '', '', '', 2, 2, '2017-07-27 14:44:25', '2017-07-27 14:44:25'),
(163, 'Công chứng giấy tờ nhà đất tại huyện Cần Giuộc ở đâu', '', '', '', 2, 2, '2017-07-27 15:43:32', '2017-07-27 15:43:32'),
(164, 'Công chứng giấy tờ nhà đất tại huyện Mộc Hóa ở đâu', '', '', '', 2, 2, '2017-07-27 15:55:27', '2017-07-27 15:55:27'),
(165, 'Công chứng giấy tờ nhà đất tại huyện Đức Hòa ở đâu', '', '', '', 2, 2, '2017-07-27 16:30:35', '2017-07-27 16:30:35'),
(166, 'Văn phòng công chứng giấy tờ nhà đất huyện Thủ Thừa ở đâu', '', '', '', 2, 2, '2017-07-27 17:32:09', '2017-07-27 17:32:09'),
(167, 'Văn phòng công chứng giấy tờ nhà đất huyện Bến Lức ở đâu', '', '', '', 2, 2, '2017-07-28 13:54:43', '2017-07-28 13:54:43'),
(168, 'Văn phòng công chứng giấy tờ nhà đất huyện Đức Hòa ở đâu', '', '', '', 2, 2, '2017-07-28 14:09:49', '2017-07-28 14:09:49'),
(169, 'Diện tích tối thiểu để tách thửa đối với đất ở và đất nông nghiệp tại Long An', '', '', '', 2, 2, '2017-07-28 16:21:42', '2017-07-28 16:21:42'),
(170, 'Bán đất nền đường tỉnh 833 xã Mỹ Bình, Huyện Tân Trụ', '', '', '', 2, 2, '2017-07-31 09:23:11', '2017-07-31 09:23:11'),
(171, 'Bán đất mặt tiền quốc lộ 62 tại thị trấn Thạnh Hóa', '', '', '', 2, 2, '2017-08-02 10:42:01', '2017-08-02 10:42:01'),
(172, 'Bán đất xã Tân Thành, Huyện Thủ Thừa giá 380 triệu', '', '', '', 2, 2, '2017-08-03 09:06:57', '2017-08-03 09:06:57'),
(173, 'Bán đất nền tại 12 xã Vĩnh Bình huyện Vĩnh Hưng', '', '', '', 2, 2, '2017-08-04 10:54:24', '2017-08-04 10:54:24'),
(174, 'Bán đất hẻm 386, phường 7 thành phố Tân An, Long An', '', '', '', 2, 2, '2017-08-09 09:37:25', '2017-08-09 09:37:25'),
(175, 'dfsgsdf', 'dfhds', 'fhsdh', 'dfhds', 1, 1, '2017-08-23 21:48:25', '2017-08-23 21:48:25'),
(176, '', '', '', '', 1, 1, '2017-08-23 23:07:19', '2017-08-23 23:07:19'),
(177, 'dsfas', 'dsgasd', 'gsgasd', 'gsdgds', 1, 1, '2017-08-23 23:09:17', '2017-08-23 23:09:29'),
(178, '', '', '', '', 1, 1, '2017-08-28 15:07:03', '2017-08-28 15:07:03'),
(179, '', '', '', '', 1, 1, '2017-08-28 15:10:14', '2017-08-28 15:10:14'),
(180, '', '', '', '', 1, 1, '2017-08-28 15:10:23', '2017-08-28 15:10:23'),
(181, '', '', '', '', 1, 1, '2017-08-28 15:10:51', '2017-08-28 15:10:51'),
(182, '', '', '', '', 1, 1, '2017-08-28 15:12:25', '2017-08-28 15:12:25'),
(183, '', '', '', '', 1, 1, '2017-08-28 15:13:18', '2017-08-28 15:13:18'),
(184, '', '', '', '', 1, 1, '2017-08-28 15:13:27', '2017-08-28 15:13:27'),
(185, '', '', '', '', 1, 1, '2017-08-28 15:13:44', '2017-08-28 15:13:44'),
(186, '', '', '', '', 1, 1, '2017-08-28 15:20:46', '2017-08-28 15:20:46'),
(187, '', '', '', '', 1, 1, '2017-08-28 15:22:19', '2017-08-28 15:22:19'),
(188, '', '', '', '', 1, 1, '2017-08-28 15:22:29', '2017-08-28 15:22:29'),
(189, '', '', '', '', 1, 1, '2017-08-28 15:22:38', '2017-08-28 15:22:38'),
(190, '', '', '', '', 1, 1, '2017-08-28 15:22:47', '2017-08-28 15:22:47'),
(191, '', '', '', '', 1, 1, '2017-08-28 15:22:57', '2017-08-28 15:22:57'),
(192, '', '', '', '', 1, 1, '2017-08-28 15:23:10', '2017-08-28 15:23:10'),
(193, '', '', '', '', 1, 1, '2017-08-28 15:31:39', '2017-08-28 15:31:39'),
(194, '', '', '', '', 1, 1, '2017-08-28 15:31:57', '2017-08-28 15:31:57'),
(195, '', '', '', '', 1, 1, '2017-08-29 09:47:17', '2017-08-29 09:47:17'),
(196, '', '', '', '', 1, 1, '2017-08-29 09:48:03', '2017-08-29 09:48:03'),
(197, '', '', '', '', 1, 1, '2017-08-29 09:48:17', '2017-08-29 09:48:17'),
(198, '', '', '', '', 1, 1, '2017-08-29 09:48:29', '2017-08-29 09:48:29'),
(199, '', '', '', '', 1, 1, '2017-08-29 09:48:42', '2017-08-29 09:48:42'),
(200, '', '', '', '', 1, 1, '2017-08-29 09:48:56', '2017-08-29 09:48:56'),
(201, '', '', '', '', 1, 1, '2017-08-29 09:49:06', '2017-08-29 09:49:06'),
(202, '', '', '', '', 1, 1, '2017-08-29 09:49:19', '2017-08-29 09:49:19'),
(203, '', '', '', '', 1, 1, '2017-08-29 09:49:32', '2017-08-29 09:49:32'),
(204, '', '', '', '', 1, 1, '2017-09-07 08:50:58', '2017-09-07 08:50:58'),
(205, '', '', '', '', 1, 1, '2017-09-07 08:51:46', '2017-09-07 08:51:46'),
(206, '', '', '', '', 1, 1, '2017-09-07 08:52:49', '2017-09-07 08:52:49'),
(207, 'Thiết kế kiến trúc', 'Thiết kế kiến trúc', '', '', 1, 1, '2017-09-09 12:18:08', '2017-09-09 12:18:08'),
(208, 'Thi công xây dựng', '', '', '', 1, 1, '2017-09-09 12:18:55', '2017-09-09 12:18:55'),
(209, 'Thiết kế nội thất', '', '', '', 1, 1, '2017-09-09 12:19:03', '2017-09-09 12:19:03'),
(210, 'Kho nhà mẫu', '', '', '', 1, 1, '2017-09-09 12:19:14', '2017-09-09 12:19:14'),
(211, 'Thiết kế biệt thự cổ điển', '', '', '', 1, 1, '2017-09-09 12:21:00', '2017-09-09 12:21:00'),
(212, 'Thiết kế biệt thự hiện đại', '', '', '', 1, 1, '2017-09-09 12:22:22', '2017-09-09 12:22:22'),
(213, 'Thiết kế biệt thự phố', '', '', '', 1, 1, '2017-09-09 12:22:30', '2017-09-09 12:22:30'),
(214, 'Thiết kế biệt thự vườn', '', '', '', 1, 1, '2017-09-09 12:22:38', '2017-09-09 12:22:38'),
(215, 'Thiết kế nhà phố', '', '', '', 1, 1, '2017-09-09 12:22:46', '2017-09-09 12:22:46'),
(216, 'Thiết kế nhà hàng - Khách sạn', '', '', '', 1, 1, '2017-09-09 12:23:59', '2017-09-09 12:23:59'),
(217, 'Thiết kế resort - Khu nghĩ dưỡng', '', '', '', 1, 1, '2017-09-09 12:24:13', '2017-09-09 12:24:13'),
(218, 'Thiết kế chung cư mini', '', '', '', 1, 1, '2017-09-09 12:24:20', '2017-09-09 12:24:20'),
(219, 'Thiết kế cao ốc - Văn Phòng', '', '', '', 1, 1, '2017-09-09 12:24:28', '2017-09-09 12:24:28'),
(220, 'Thiết kế showroom', '', '', '', 1, 1, '2017-09-09 12:24:36', '2017-09-09 12:24:36'),
(221, 'Thiết kế Cafe - Khu du lịch - Homestay', '', '', '', 1, 1, '2017-09-09 12:24:44', '2017-09-09 12:24:44'),
(222, 'Thi Công Biệt thự', '', '', '', 1, 1, '2017-09-09 12:24:54', '2017-09-27 21:07:48'),
(223, 'Nhà phố', '', '', '', 1, 1, '2017-09-09 12:25:01', '2017-09-09 12:25:01'),
(224, 'Thi Công Resort', '', '', '', 1, 1, '2017-09-09 12:25:07', '2017-09-27 14:19:35'),
(225, 'Thi Công Văn phòng', '', '', '', 1, 1, '2017-09-09 12:25:14', '2017-09-27 21:11:17'),
(226, 'Thi Công Chung cư', '', '', '', 1, 1, '2017-09-09 12:25:21', '2017-09-27 21:11:35'),
(227, 'Thi Công Nhà hàng - khách sạn', '', '', '', 1, 1, '2017-09-09 12:25:32', '2017-09-27 21:11:59'),
(228, 'Nội thất biệt thự', '', '', '', 1, 1, '2017-09-09 12:25:45', '2017-09-09 12:25:45'),
(229, 'Nội thất nhà phố', '', '', '', 1, 1, '2017-09-09 12:25:53', '2017-09-09 12:25:53'),
(230, 'Nội thất văn phòng', '', '', '', 1, 1, '2017-09-09 12:26:00', '2017-09-09 12:26:00'),
(231, 'Biệt thự cổ điển', '', '', '', 1, 1, '2017-09-09 12:26:10', '2017-09-09 12:26:10'),
(232, 'Biệt thự hiện đại', '', '', '', 1, 1, '2017-09-09 12:26:23', '2017-09-09 12:26:23'),
(233, 'Biệt thự phố', '', '', '', 1, 1, '2017-09-09 12:26:29', '2017-09-09 12:26:29'),
(234, 'Biệt thự vườn', '', '', '', 1, 1, '2017-09-09 12:26:37', '2017-09-09 12:26:37'),
(235, 'Mẫu showroom', '', '', '', 1, 1, '2017-09-09 12:26:44', '2017-09-09 12:26:44'),
(236, 'Mẫu resort đẹp', '', '', '', 1, 1, '2017-09-09 12:26:53', '2017-09-09 12:26:53'),
(237, '', '', '', '', 1, 1, '2017-09-09 13:10:29', '2017-09-09 13:10:29'),
(238, '', '', '', '', 1, 1, '2017-09-09 14:04:15', '2017-09-09 14:04:15'),
(239, '', '', '', '', 1, 1, '2017-09-09 14:04:36', '2017-09-09 14:04:36'),
(240, '', '', '', '', 1, 1, '2017-09-09 14:04:56', '2017-09-09 14:04:56'),
(241, '', '', '', '', 1, 1, '2017-09-09 14:05:13', '2017-09-09 14:05:13'),
(242, '', '', '', '', 1, 1, '2017-09-09 14:05:34', '2017-09-09 14:05:34'),
(243, '', '', '', '', 1, 1, '2017-09-09 14:16:14', '2017-09-09 14:16:14'),
(244, '', '', '', '', 1, 1, '2017-09-09 14:24:29', '2017-09-09 14:24:29'),
(245, '', '', '', '', 1, 1, '2017-09-09 14:24:57', '2017-09-09 14:24:57'),
(246, '', '', '', '', 1, 1, '2017-09-09 14:25:16', '2017-09-09 14:25:16'),
(247, '', '', '', '', 1, 1, '2017-09-12 21:07:12', '2017-09-12 21:07:12'),
(248, '', '', '', '', 1, 1, '2017-09-12 21:07:58', '2017-09-12 21:07:58'),
(249, '', '', '', '', 1, 1, '2017-09-12 21:26:31', '2017-09-12 21:26:31'),
(250, '', '', '', '', 1, 1, '2017-09-12 22:14:23', '2017-09-12 22:14:23'),
(251, '', '', '', '', 1, 1, '2017-09-12 22:14:33', '2017-09-12 22:14:33'),
(252, '', '', '', '', 1, 1, '2017-09-12 22:14:41', '2017-09-12 22:14:41'),
(253, '', '', '', '', 1, 1, '2017-09-12 22:34:44', '2017-09-12 22:34:44'),
(254, '', '', '', '', 1, 1, '2017-09-13 07:12:03', '2017-09-13 07:12:03'),
(255, '', '', '', '', 1, 1, '2017-09-13 07:12:49', '2017-09-13 07:12:49'),
(256, '', '', '', '', 1, 1, '2017-09-15 09:18:46', '2017-09-15 09:18:46'),
(257, '', '', '', '', 1, 1, '2017-09-15 10:09:45', '2017-09-15 10:09:45'),
(258, '', '', '', '', 1, 1, '2017-09-15 11:58:30', '2017-09-15 11:58:30'),
(259, '', '', '', '', 1, 1, '2017-09-15 13:50:23', '2017-09-15 13:50:23'),
(260, '', '', '', '', 1, 1, '2017-09-15 16:46:49', '2017-09-15 16:46:49'),
(261, '', '', '', '', 1, 1, '2017-09-15 17:10:01', '2017-09-15 17:10:01'),
(262, '', '', '', '', 1, 1, '2017-09-15 19:06:30', '2017-09-15 19:06:30'),
(263, '', '', '', '', 1, 1, '2017-09-15 19:18:20', '2017-09-15 19:18:20'),
(264, '', '', '', '', 1, 1, '2017-09-15 19:38:11', '2017-09-15 19:38:11'),
(265, '', '', '', '', 1, 1, '2017-09-15 19:41:16', '2017-09-15 19:41:16'),
(266, '', '', '', '', 1, 1, '2017-09-16 09:22:58', '2017-09-16 09:22:58'),
(267, '', '', '', '', 1, 1, '2017-09-16 09:46:50', '2017-09-16 09:46:50'),
(268, '', '', '', '', 1, 1, '2017-09-16 09:53:55', '2017-09-16 09:53:55'),
(269, '', '', '', '', 1, 1, '2017-09-16 13:48:24', '2017-09-16 13:48:24'),
(270, '', '', '', '', 1, 1, '2017-09-18 09:08:50', '2017-09-18 09:08:50'),
(271, '', '', '', '', 1, 1, '2017-09-18 09:13:01', '2017-09-18 09:13:01'),
(272, '', '', '', '', 1, 1, '2017-09-18 11:05:40', '2017-09-18 11:05:40'),
(273, '', '', '', '', 1, 1, '2017-09-22 10:34:47', '2017-09-22 10:34:47'),
(274, 'Xu hướng thiết kế biệt thự phố độc đáo', 'Xu hướng thiết kế biệt thự phố mới nhất đang được nhiều người tìm kiếm với mong muốn có được những căn nhà độc đáo, mới nhất, thu người và đặc biệt, tạo được ấn tượng và đảm bảo tính thẩm mỹ, công năng cho ngôi nhà', 'Xu hướng thiết kế biệt thự phố', '', 1, 1, '2017-09-22 11:52:18', '2017-09-27 13:26:15'),
(275, '', '', '', '', 1, 1, '2017-09-22 14:43:24', '2017-09-22 14:43:24'),
(276, '', '', '', '', 1, 1, '2017-09-22 16:32:25', '2017-09-22 16:32:25'),
(277, '', '', '', '', 1, 1, '2017-09-23 07:36:56', '2017-09-23 07:36:56'),
(278, 'test 1', 'test 2', 'test 3', 'test 4', 1, 1, '2017-09-23 07:37:51', '2017-09-23 07:38:20'),
(279, '', '', '', '', 1, 1, '2017-09-23 11:12:59', '2017-09-23 11:12:59'),
(280, '', '', '', '', 1, 1, '2017-09-23 11:13:33', '2017-09-23 11:13:33'),
(281, '', '', '', '', 1, 1, '2017-09-23 11:14:22', '2017-09-23 11:14:22'),
(282, '', '', '', '', 1, 1, '2017-09-23 11:14:53', '2017-09-23 11:14:53'),
(283, 'Biệt thự hiện đại 3 tầng đẹp sang trọng 110m2 nhà anh Nguyên ở Phú Quốc ', 'Biệt thự hiện đại 3 tầng đẹp sang trọng 110m2 nhà anh Nguyên ở Phú Quốc. Tại Việt Nam, những ngày vừa qua Chuck II đã tạo nên một cơn sốt sục sôi trong cộng đồng các bạn trẻ. Dạo một vòng quanh Instagram và Facebook, không khó để bắt gặp những bức ảnh kho', 'Biệt thự hiện đại 3 tầng đẹp sang trọng 110m2 nhà anh Nguyên ở Phú Quốc ', '', 1, 1, '2017-09-24 21:33:11', '2017-09-27 10:30:47'),
(284, '', '', '', '', 1, 1, '2017-09-25 13:35:29', '2017-09-25 13:35:29'),
(285, '', '', '', '', 1, 1, '2017-09-25 21:28:24', '2017-09-27 14:22:41'),
(286, '', '', '', '', 1, 1, '2017-09-26 07:11:59', '2017-09-26 07:11:59'),
(287, '', '', '', '', 3, 1, '2017-09-26 09:11:07', '2017-09-27 07:19:54'),
(288, '', '', '', '', 1, 1, '2017-09-26 16:42:10', '2017-09-26 16:42:10'),
(289, '', '', '', '', 1, 1, '2017-09-26 16:43:28', '2017-09-26 16:43:28'),
(290, '', '', '', '', 1, 1, '2017-09-26 16:47:17', '2017-09-26 16:47:17'),
(291, '', '', '', '', 1, 1, '2017-09-26 16:58:37', '2017-09-26 16:58:37'),
(292, '', '', '', '', 1, 1, '2017-09-27 06:05:01', '2017-09-27 06:05:01'),
(293, 'dfsa', 'fdasfas', 'fsadf', 'dsfa', 1, 1, '2017-09-27 07:07:02', '2017-09-27 07:07:02'),
(294, '', '', '', '', 1, 1, '2017-09-27 07:08:00', '2017-09-27 07:08:00'),
(295, '', '', '', '', 1, 1, '2017-09-27 07:09:04', '2017-09-27 07:09:04'),
(296, '', '', '', '', 1, 1, '2017-09-27 07:31:43', '2017-09-27 07:31:43'),
(297, '', '', '', '', 1, 1, '2017-09-27 07:31:57', '2017-09-27 07:31:57'),
(298, '', '', '', '', 5, 5, '2017-09-27 09:40:24', '2017-09-27 09:40:24'),
(299, '', '', '', '', 6, 6, '2017-09-27 09:44:29', '2017-09-27 09:44:29'),
(300, 'Thiết kế biệt thự cổ điển pháp 3 tầng đẹp sang trọng 110m2 nhà anh Nguyên ở Phú Quốc ', 'Dự án thiết kế biệt thự cổ điển pháp 3 tầng nhà anh Nguyễn Hoàng Gia ở Quận 7, Tp. Hồ Chí Minh với diện tích 13x22m (diện tích 286m2) với 3 tầng do công ty Houseland thiết kế và xây dựng. Căn biệt thự với thiết kế sang trọng, đẳng cấp, thể hiện được bề th', 'thiết kế biệt thự cổ điển pháp 3 tầng', '', 1, 1, '2017-09-27 10:44:06', '2017-09-27 10:44:06'),
(301, '', '', '', '', 1, 1, '2017-09-27 12:15:30', '2017-09-27 12:15:30'),
(302, '', '', '', '', 1, 1, '2017-09-27 12:15:56', '2017-09-27 12:15:56'),
(303, '', '', '', '', 1, 1, '2017-09-27 12:16:40', '2017-09-27 12:16:40'),
(304, '', '', '', '', 1, 1, '2017-09-27 12:21:13', '2017-09-27 12:21:13'),
(305, '', '', '', '', 1, 1, '2017-09-28 09:32:36', '2017-09-28 09:32:36'),
(306, '', '', '', '', 1, 1, '2017-09-28 09:33:37', '2017-09-28 09:33:37'),
(307, '', '', '', '', 1, 1, '2017-09-28 09:34:12', '2017-09-28 09:34:12'),
(308, '', '', '', '', 1, 1, '2017-09-28 09:36:27', '2017-09-28 09:36:27'),
(309, '', '', '', '', 1, 1, '2017-09-28 09:41:52', '2017-09-28 09:41:52'),
(310, '', '', '', '', 1, 1, '2017-09-28 09:45:22', '2017-09-28 09:45:22'),
(311, '', '', '', '', 1, 1, '2017-09-28 09:47:28', '2017-09-28 09:47:28'),
(312, '', '', '', '', 1, 1, '2017-09-28 09:50:50', '2017-09-28 09:50:50'),
(313, '', '', '', '', 1, 1, '2017-09-28 09:54:58', '2017-09-28 09:54:58'),
(314, 'Thiết kế biệt thự cổ điển quận 1', 'Chuyên thiết kế biệt thự cổ điển, bán cổ điển, tân cổ điển, biệt thự cổ điển pháp giá rẻ nhất hiện  nay trên thị trường cùng với đội ngũ KTS giàu kinh ngiệm sẽ làm cho quý khách hàng hài lòng.', 'Thiết kế biệt thự cổ điển quận 1, Thiết kế biệt thự cổ điển tại quận 1, Thiết kế biệt thự cổ điển ở quận 1, Thiết kế biệt thự cổ điển', '', 1, 1, '2017-09-28 10:59:10', '2017-09-28 10:59:10'),
(315, '', '', '', '', 1, 1, '2017-09-28 11:27:01', '2017-09-28 11:27:01'),
(316, '', '', '', '', 1, 1, '2017-09-28 11:28:02', '2017-09-28 11:28:02'),
(317, '', '', '', '', 1, 1, '2017-09-28 11:29:11', '2017-09-28 11:29:11'),
(318, '', '', '', '', 1, 1, '2017-09-28 11:30:20', '2017-09-28 11:30:20'),
(319, '', '', '', '', 1, 1, '2017-09-28 11:30:54', '2017-09-28 11:30:54'),
(320, '', '', '', '', 1, 1, '2017-09-28 11:31:19', '2017-09-28 11:31:19'),
(321, '', '', '', '', 1, 1, '2017-09-28 11:31:45', '2017-09-28 11:31:45'),
(322, '', '', '', '', 1, 1, '2017-09-28 11:32:30', '2017-09-28 11:32:30'),
(323, '', '', '', '', 1, 1, '2017-09-28 11:33:03', '2017-09-28 11:33:03'),
(324, '', '', '', '', 1, 1, '2017-09-28 11:33:42', '2017-09-28 11:33:42'),
(325, '', '', '', '', 1, 1, '2017-09-28 11:34:27', '2017-09-28 11:34:27'),
(326, '', '', '', '', 1, 1, '2017-09-28 11:35:24', '2017-09-28 11:35:24'),
(327, '', '', '', '', 1, 1, '2017-09-28 11:35:55', '2017-09-28 11:35:55'),
(328, '', '', '', '', 1, 1, '2017-09-28 11:45:18', '2017-09-28 11:45:18'),
(329, '', '', '', '', 1, 1, '2017-09-28 11:59:18', '2017-09-28 11:59:18'),
(330, '', '', '', '', 1, 1, '2017-09-28 12:00:13', '2017-09-28 12:00:13'),
(331, '', '', '', '', 1, 1, '2017-09-28 12:01:02', '2017-09-28 12:01:02'),
(332, '', '', '', '', 1, 1, '2017-09-28 13:58:49', '2017-09-28 13:58:49'),
(333, 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Chia sẻ một số kinh nghiệm, Những Điều Bạn Cần biết Khi Xây dựng Nhà giúp gia chủ làm ăn tiền vô như nước, phát tài phát lộc.', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', '', 1, 1, '2017-09-28 16:04:21', '2017-09-28 16:04:21'),
(334, 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Chia sẻ một số kiến thức Phong Thủy Trong thiết kế thi công xây dựng nhà được các KTS và Kỹ Sư houseland đúc kết lại hôm nay chia sẻ cho quý khách hàng.', 'Phong Thủy Trong thiết kế thi công xây dựng nhà', '', 1, 1, '2017-09-28 16:22:05', '2017-09-28 16:22:05'),
(335, 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', '', 1, 1, '2017-09-28 16:25:26', '2017-09-28 16:25:26'),
(336, 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', '', 1, 1, '2017-09-28 16:26:21', '2017-09-28 16:26:21'),
(337, 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', 'Những Điều Bạn Cần biết Khi Xây dựng Nhà', '', 1, 1, '2017-09-28 16:27:19', '2017-09-28 16:27:19'),
(338, 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', '', 1, 1, '2017-09-28 16:31:56', '2017-09-28 16:31:56'),
(339, 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', '', 1, 1, '2017-09-28 16:33:51', '2017-09-28 16:33:51'),
(340, 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', 'Phong Thủy Trong thiết kế thi công xây dựng nhà bạn nên biết', '', 1, 1, '2017-09-28 16:36:04', '2017-09-28 16:36:04'),
(341, 'COFFEE', 'COFFEE', 'COFFEE', '', 1, 1, '2017-10-02 15:49:07', '2017-10-02 15:49:07'),
(342, 'SHOP 24H', '', '', '', 1, 1, '2017-10-02 15:49:22', '2017-10-02 15:49:22'),
(343, 'Vietnamese Coffee', '', '', '', 1, 1, '2017-10-02 15:52:28', '2017-10-02 15:52:28'),
(344, 'Coffee Frappy', '', '', '', 1, 1, '2017-10-02 15:52:44', '2017-10-02 15:52:44'),
(345, 'Tea', '', '', '', 1, 1, '2017-10-02 15:52:55', '2017-10-02 15:52:55'),
(346, 'Smoothies', 'Smoothies', '', '', 1, 1, '2017-10-02 15:53:06', '2017-10-02 15:53:06'),
(347, 'Matcha', '', '', '', 1, 1, '2017-10-02 15:53:17', '2017-10-02 15:53:17');

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
(8, 'Giới thiệu', 'Gioi thieu', 'Giới thiệu', '<strong>C&ocirc;ng ty Cổ phần Thiết kế X&acirc;y dựng v&agrave; Tư vấn Đầu tư Nguyễn Gia Ph&aacute;t (Houseland)&nbsp;</strong>l&agrave; một C&ocirc;ng ty chuy&ecirc;n về thiết kế, thi c&ocirc;ng x&acirc;y mới, sửa chữa, cải tạo n&acirc;ng cấp Nh&agrave; phố v&agrave; Biệt thự cao cấp. Trụ sở c&ocirc;ng ty đặt tại T&ograve;a nh&agrave; văn ph&ograve;ng số 166 đường Nguyễn Ho&agrave;ng, phường An Ph&uacute;, quận 2,Th&agrave;nh phố Hồ Ch&iacute; Minh.<br />\r\n<br />\r\nNg&agrave;y nay, c&ugrave;ng với sự ph&aacute;t triển của th&agrave;nh phố đ&ocirc; thị, nhu cầu x&acirc;y dựng mới Nh&agrave; ở của nh&acirc;n d&acirc;n ng&agrave;y c&agrave;ng tăng. Tuy nhi&ecirc;n, lĩnh vực&nbsp;Sửa chữa, Cải tạo n&acirc;ng cấp, Sơn bả ma t&iacute;t trang tr&iacute;&nbsp;c&aacute;c Nh&agrave;, Khu nh&agrave;, Khu chung cư cũng l&agrave; một nhu cầu hết sức bức thiết.<br />\r\n<br />\r\nC&ocirc;ng việc Sửa chữa, n&acirc;ng cấp cải tạo đ&ograve;i hỏi ngo&agrave;i chuy&ecirc;n m&ocirc;n, người kiến tr&uacute;c sư, kỹ sư c&ograve;n cần phải c&oacute; nhiều kinh nghiệm thực tế, sự tinh tế sắc sảo trong đ&aacute;nh gi&aacute;, đưa ra phương &aacute;n thiết kế xử l&yacute; tối ưu.Người thợ l&agrave;m c&ocirc;ng t&aacute;c Sửa chữa cần kỹ năng nghề nghiệp cao, sự chuy&ecirc;n nghiệp, l&agrave;nh nghề c&ograve;n cao hơn c&ocirc;ng t&aacute;c x&acirc;y mới. Nhận thức đ&uacute;ng đắn được điều đ&oacute;, C&ocirc;ng ty Cổ phần Thiết kế X&acirc;y dựng v&agrave; Tư vấn Đầu tư Nguyễn Gia Ph&aacute;t với đội ngũ c&aacute;n bộ l&agrave; những kiến tr&uacute;c sư, kỹ sư giỏi, c&oacute; kinh nghiệm l&acirc;u năm trong nghề v&agrave; đội ngũ thợ l&agrave;nh nghề, chuy&ecirc;n nghiệp sẽ đ&aacute;p ứng được những đ&ograve;i hỏi cao của Qu&yacute; kh&aacute;ch h&agrave;ng, kể cả những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.<br />\r\n<br />\r\nCh&uacute;ng t&ocirc;i: Kiến tr&uacute;c sư L&ecirc; Xu&acirc;n Nguy&ecirc;n &ndash; Gi&aacute;m đốc điều h&agrave;nh; Kỹ sư x&acirc;y dựng Nguyễn Xu&acirc;n Sắc &ndash; Ph&oacute; gi&aacute;m đốc kỹ thuật c&ugrave;ng với đội ngũ gần 20 kiến tr&uacute;c sư, kỹ sư x&acirc;y dựng, kỹ sư điện, cấp tho&aacute;t nước v&agrave; hơn 80 c&ocirc;ng nh&acirc;n l&agrave;nh nghề xin trung thực, nhiệt t&igrave;nh, t&acirc;m huyết phục vụ Qu&yacute; kh&aacute;ch h&agrave;ng khu vực th&agrave;nh phố Hồ Ch&iacute; Minh.<br />\r\nNội dung giới thiệu HOUSELAND', '', 'gioi-thieu', 1, 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', '', 1, 1, '2017-08-29 00:00:00', '2017-09-27 07:47:13'),
(10, 'Lịch Sử Hình Thành', 'Lich Su Hinh Thanh', '', '', '', 'lich-su-hinh-thanh', 1, 'Lịch Sử Hình Thành', '', 'Lịch Sử Hình Thành', '', 1, 1, '2017-09-28 21:40:36', '2017-09-28 21:46:12'),
(11, 'Lĩnh Vực Hoạt Động', 'Linh Vuc Hoat Dong', '', '', '', 'linh-vuc-hoat-dong', 1, 'Lĩnh Vực Hoạt Động', '', 'Lĩnh Vực Hoạt Động', '', 1, 1, '2017-09-28 21:43:29', '2017-09-28 21:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `thong_so` text,
  `thong_so_chi_tiet` text,
  `tien_do` text,
  `hoi_dap` text,
  `content` text,
  `thumbnail_id` bigint(20) NOT NULL,
  `is_slider` tinyint(1) NOT NULL DEFAULT '1',
  `video_url` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `layout` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` int(11) NOT NULL DEFAULT '1' COMMENT 'danh cho bds hot',
  `meta_id` bigint(20) NOT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_img`
--
ALTER TABLE `product_img`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
