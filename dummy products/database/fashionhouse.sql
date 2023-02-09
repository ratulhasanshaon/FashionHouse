-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 09, 2023 at 09:27 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashionhouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_account`
--

CREATE TABLE `accounts_account` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superadmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_account`
--

INSERT INTO `accounts_account` (`id`, `password`, `first_name`, `last_name`, `username`, `email`, `phone_number`, `date_joined`, `last_login`, `is_admin`, `is_staff`, `is_active`, `is_superadmin`) VALUES
(2, 'pbkdf2_sha256$390000$nPayfdu9am5W8jGdvMHAB4$8QvRULGZhvGQJgSLF6ecoHS7/xWfldP6fgbzUY6sNXE=', 'Ratul', 'Hasan', 'ratulhasanshaon', 'ratulhasanshaon@gmail.com', '', '2023-02-09 04:13:22.839969', '2023-02-09 08:37:22.689943', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofile`
--

CREATE TABLE `accounts_userprofile` (
  `id` int NOT NULL,
  `address_line_1` varchar(100) NOT NULL,
  `address_line_2` varchar(100) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts_userprofile`
--

INSERT INTO `accounts_userprofile` (`id`, `address_line_1`, `address_line_2`, `profile_picture`, `city`, `state`, `country`, `user_id`) VALUES
(2, 'Sector 11, Uttara Model Town', 'Dhaka 1230', 'userprofile/300999758_848005792832460_2535450198548564313_n_oXS4vRx.jpg', 'Uttara', 'Dhaka', 'Bangladesh', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_honeypot_loginattempt`
--

CREATE TABLE `admin_honeypot_loginattempt` (
  `id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `session_key` varchar(50) DEFAULT NULL,
  `user_agent` longtext,
  `timestamp` datetime(6) NOT NULL,
  `path` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add category', 6, 'add_category'),
(22, 'Can change category', 6, 'change_category'),
(23, 'Can delete category', 6, 'delete_category'),
(24, 'Can view category', 6, 'view_category'),
(25, 'Can add account', 7, 'add_account'),
(26, 'Can change account', 7, 'change_account'),
(27, 'Can delete account', 7, 'delete_account'),
(28, 'Can view account', 7, 'view_account'),
(29, 'Can add user profile', 8, 'add_userprofile'),
(30, 'Can change user profile', 8, 'change_userprofile'),
(31, 'Can delete user profile', 8, 'delete_userprofile'),
(32, 'Can view user profile', 8, 'view_userprofile'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add variation', 10, 'add_variation'),
(38, 'Can change variation', 10, 'change_variation'),
(39, 'Can delete variation', 10, 'delete_variation'),
(40, 'Can view variation', 10, 'view_variation'),
(41, 'Can add review rating', 11, 'add_reviewrating'),
(42, 'Can change review rating', 11, 'change_reviewrating'),
(43, 'Can delete review rating', 11, 'delete_reviewrating'),
(44, 'Can view review rating', 11, 'view_reviewrating'),
(45, 'Can add productgallery', 12, 'add_productgallery'),
(46, 'Can change productgallery', 12, 'change_productgallery'),
(47, 'Can delete productgallery', 12, 'delete_productgallery'),
(48, 'Can view productgallery', 12, 'view_productgallery'),
(49, 'Can add cart', 13, 'add_cart'),
(50, 'Can change cart', 13, 'change_cart'),
(51, 'Can delete cart', 13, 'delete_cart'),
(52, 'Can view cart', 13, 'view_cart'),
(53, 'Can add cart item', 14, 'add_cartitem'),
(54, 'Can change cart item', 14, 'change_cartitem'),
(55, 'Can delete cart item', 14, 'delete_cartitem'),
(56, 'Can view cart item', 14, 'view_cartitem'),
(57, 'Can add order', 15, 'add_order'),
(58, 'Can change order', 15, 'change_order'),
(59, 'Can delete order', 15, 'delete_order'),
(60, 'Can view order', 15, 'view_order'),
(61, 'Can add payment', 16, 'add_payment'),
(62, 'Can change payment', 16, 'change_payment'),
(63, 'Can delete payment', 16, 'delete_payment'),
(64, 'Can view payment', 16, 'view_payment'),
(65, 'Can add order product', 17, 'add_orderproduct'),
(66, 'Can change order product', 17, 'change_orderproduct'),
(67, 'Can delete order product', 17, 'delete_orderproduct'),
(68, 'Can view order product', 17, 'view_orderproduct'),
(69, 'Can add login attempt', 18, 'add_loginattempt'),
(70, 'Can change login attempt', 18, 'change_loginattempt'),
(71, 'Can delete login attempt', 18, 'delete_loginattempt'),
(72, 'Can view login attempt', 18, 'view_loginattempt');

-- --------------------------------------------------------

--
-- Table structure for table `carts_cart`
--

CREATE TABLE `carts_cart` (
  `id` int NOT NULL,
  `cart_id` varchar(250) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts_cartitem`
--

CREATE TABLE `carts_cartitem` (
  `id` int NOT NULL,
  `quantity` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `cart_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts_cartitem_variations`
--

CREATE TABLE `carts_cartitem_variations` (
  `id` int NOT NULL,
  `cartitem_id` int NOT NULL,
  `variation_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_category`
--

CREATE TABLE `category_category` (
  `id` int NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `cat_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category_category`
--

INSERT INTO `category_category` (`id`, `category_name`, `slug`, `description`, `cat_image`) VALUES
(1, 'Men', 'men', '', 'photos/categories/f_AfNr1DE.jpg'),
(2, 'women', 'women', '', 'photos/categories/f_eFgAV5x_qiYDtB5.jpg'),
(3, 'kids', 'kids', '', 'photos/categories/f_hZwhy2s.jpg'),
(4, 'lifestyle', 'lifestyle', '', 'photos/categories/f_ZKBwhdL.jpg'),
(5, 'gadgets', 'gadgets', '', 'photos/categories/accesories_kieVMtM.png');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-02-09 04:15:35.242781', '1', 'ratul.bpkwit@gmail.com', 3, '', 7, 2),
(2, '2023-02-09 04:16:56.077560', '2', 'Ratul', 1, '[{\"added\": {}}]', 8, 2),
(3, '2023-02-09 04:18:51.175507', '1', 'Men', 1, '[{\"added\": {}}]', 6, 2),
(4, '2023-02-09 04:19:03.276444', '2', 'women', 1, '[{\"added\": {}}]', 6, 2),
(5, '2023-02-09 04:19:10.026204', '3', 'kids', 1, '[{\"added\": {}}]', 6, 2),
(6, '2023-02-09 04:19:16.720539', '4', 'lifestyle', 1, '[{\"added\": {}}]', 6, 2),
(7, '2023-02-09 04:19:34.455262', '5', 'gadgets', 1, '[{\"added\": {}}]', 6, 2),
(8, '2023-02-09 04:22:11.350877', '1', 'CASUAL SHIRT RED', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"CASUAL SHIRT RED\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"CASUAL SHIRT RED\"}}]', 9, 2),
(9, '2023-02-09 04:23:21.947535', '2', 'CASUAL SHIRT CHECK', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"CASUAL SHIRT CHECK\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"CASUAL SHIRT CHECK\"}}]', 9, 2),
(10, '2023-02-09 04:31:01.046876', '3', 'CASUAL SHIRT FULL', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"CASUAL SHIRT FULL\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"CASUAL SHIRT FULL\"}}]', 9, 2),
(11, '2023-02-09 04:37:05.214171', '4', 'CASUAL SHIRT BLACK', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"CASUAL SHIRT BLACK\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"CASUAL SHIRT BLACK\"}}]', 9, 2),
(12, '2023-02-09 04:39:03.103433', '5', 'TANJIM JACKET BLACK', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TANJIM JACKET BLACK\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TANJIM JACKET BLACK\"}}]', 9, 2),
(13, '2023-02-09 04:40:29.571582', '6', 'BRANDED HOODIE', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"BRANDED HOODIE\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"BRANDED HOODIE\"}}]', 9, 2),
(14, '2023-02-09 04:41:08.674727', '6', 'BRANDED HOODIE', 2, '[{\"changed\": {\"name\": \"productgallery\", \"object\": \"BRANDED HOODIE\", \"fields\": [\"Image\"]}}]', 9, 2),
(15, '2023-02-09 04:44:12.259935', '7', 'TANJIM BLAZER STRIP', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TANJIM BLAZER STRIP\"}}]', 9, 2),
(16, '2023-02-09 04:45:16.035870', '8', 'TANJIM BLAZER RED', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TANJIM BLAZER RED\"}}]', 9, 2),
(17, '2023-02-09 04:46:03.129619', '9', 'TANJIM BLAZER OW', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TANJIM BLAZER OW\"}}]', 9, 2),
(18, '2023-02-09 04:48:13.545583', '10', 'ZARZAIN KAMEEZ YELLOW', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"ZARZAIN KAMEEZ YELLOW\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"ZARZAIN KAMEEZ YELLOW\"}}]', 9, 2),
(19, '2023-02-09 04:49:02.905738', '11', 'ZARZAIN KAMEEZ PINK', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"ZARZAIN KAMEEZ PINK\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"ZARZAIN KAMEEZ PINK\"}}]', 9, 2),
(20, '2023-02-09 04:49:47.073014', '12', 'ZARZAIN KAMEEZ WHITE', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"ZARZAIN KAMEEZ WHITE\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"ZARZAIN KAMEEZ WHITE\"}}]', 9, 2),
(21, '2023-02-09 04:51:05.626741', '13', 'ZARZAIN TOPS BLACK', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"ZARZAIN TOPS BLACK\"}}]', 9, 2),
(22, '2023-02-09 04:51:52.610730', '14', 'ZARZAIN TOPS TRANS', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"ZARZAIN TOPS TRANS\"}}]', 9, 2),
(23, '2023-02-09 04:52:20.039529', '15', 'ZARZAIN TOPS RED', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"ZARZAIN TOPS RED\"}}]', 9, 2),
(24, '2023-02-09 04:53:13.595101', '16', 'TANJIM WALLET BR', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TANJIM WALLET BR\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TANJIM WALLET BR\"}}]', 9, 2),
(25, '2023-02-09 04:53:46.032597', '17', 'TANJIM WALLET BL', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TANJIM WALLET BL\"}}]', 9, 2),
(26, '2023-02-09 04:54:15.148413', '18', 'TANJIM WALLET BLACK', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TANJIM WALLET BLACK\"}}]', 9, 2),
(27, '2023-02-09 04:55:10.709473', '19', 'ZOAN ASH PERFUME', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"ZOAN ASH PERFUME\"}}]', 9, 2),
(28, '2023-02-09 04:55:38.873685', '20', 'RARE BREED PERFUME', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"RARE BREED PERFUME\"}}]', 9, 2),
(29, '2023-02-09 04:56:44.119491', '21', 'RARE BREED Mandarin', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"RARE BREED Mandarin\"}}]', 9, 2),
(30, '2023-02-09 04:59:46.633390', '22', 'AIR POD PRO', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"AIR POD PRO\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"AIR POD PRO\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"AIR POD PRO\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"AIR POD PRO\"}}]', 9, 2),
(31, '2023-02-09 05:01:04.104212', '23', 'Beats Studio Buds', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Beats Studio Buds\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Beats Studio Buds\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"Beats Studio Buds\"}}]', 9, 2),
(32, '2023-02-09 05:02:31.219213', '24', 'iPhone 13 Pro', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"iPhone 13 Pro\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"iPhone 13 Pro\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"iPhone 13 Pro\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"iPhone 13 Pro\"}}]', 9, 2),
(33, '2023-02-09 05:03:51.663641', '25', 'GoPro HERO11', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"GoPro HERO11\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"GoPro HERO11\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"GoPro HERO11\"}}]', 9, 2),
(34, '2023-02-09 05:04:08.178359', '1', 'RED', 1, '[{\"added\": {}}]', 10, 2),
(35, '2023-02-09 05:04:17.816953', '2', 'M', 1, '[{\"added\": {}}]', 10, 2),
(36, '2023-02-09 05:04:23.777062', '3', 'XL', 1, '[{\"added\": {}}]', 10, 2),
(37, '2023-02-09 05:04:36.224201', '4', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(38, '2023-02-09 05:04:53.352158', '5', 'M', 1, '[{\"added\": {}}]', 10, 2),
(39, '2023-02-09 05:05:03.178559', '6', 'XL', 1, '[{\"added\": {}}]', 10, 2),
(40, '2023-02-09 05:05:20.675585', '7', 'OFF WHITE', 1, '[{\"added\": {}}]', 10, 2),
(41, '2023-02-09 05:05:26.520062', '8', 'M', 1, '[{\"added\": {}}]', 10, 2),
(42, '2023-02-09 05:05:38.186983', '9', 'BLACK', 1, '[{\"added\": {}}]', 10, 2),
(43, '2023-02-09 05:05:45.207173', '10', 'XL', 1, '[{\"added\": {}}]', 10, 2),
(44, '2023-02-09 05:05:55.243613', '11', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(45, '2023-02-09 05:06:02.671150', '12', 'L', 1, '[{\"added\": {}}]', 10, 2),
(46, '2023-02-09 05:06:09.143394', '13', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(47, '2023-02-09 05:06:16.320552', '14', 'XL', 1, '[{\"added\": {}}]', 10, 2),
(48, '2023-02-09 05:06:24.793462', '15', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(49, '2023-02-09 05:06:32.003884', '16', 'XL', 1, '[{\"added\": {}}]', 10, 2),
(50, '2023-02-09 05:19:09.311200', '17', 'RED', 1, '[{\"added\": {}}]', 10, 2),
(51, '2023-02-09 05:19:16.097099', '18', 'XL', 1, '[{\"added\": {}}]', 10, 2),
(52, '2023-02-09 05:19:26.269136', '19', 'OFF WHITE', 1, '[{\"added\": {}}]', 10, 2),
(53, '2023-02-09 05:19:35.871897', '20', 'XL', 1, '[{\"added\": {}}]', 10, 2),
(54, '2023-02-09 05:19:46.598749', '21', 'YELLOW', 1, '[{\"added\": {}}]', 10, 2),
(55, '2023-02-09 05:19:58.486337', '22', 'M', 1, '[{\"added\": {}}]', 10, 2),
(56, '2023-02-09 05:20:12.686078', '23', 'PINK', 1, '[{\"added\": {}}]', 10, 2),
(57, '2023-02-09 05:20:19.397532', '24', 'M', 1, '[{\"added\": {}}]', 10, 2),
(58, '2023-02-09 05:20:31.254338', '25', 'OFF WHITE', 1, '[{\"added\": {}}]', 10, 2),
(59, '2023-02-09 05:20:44.272443', '26', 'S', 1, '[{\"added\": {}}]', 10, 2),
(60, '2023-02-09 05:20:52.877789', '27', 'BLACK', 1, '[{\"added\": {}}]', 10, 2),
(61, '2023-02-09 05:21:02.928665', '28', 'L', 1, '[{\"added\": {}}]', 10, 2),
(62, '2023-02-09 05:21:51.527153', '29', 'TRANSPARENT', 1, '[{\"added\": {}}]', 10, 2),
(63, '2023-02-09 05:21:59.412948', '30', 'L', 1, '[{\"added\": {}}]', 10, 2),
(64, '2023-02-09 05:22:08.133159', '31', 'RED', 1, '[{\"added\": {}}]', 10, 2),
(65, '2023-02-09 05:22:15.816257', '32', 'M', 1, '[{\"added\": {}}]', 10, 2),
(66, '2023-02-09 05:22:30.283192', '33', 'BLACK', 1, '[{\"added\": {}}]', 10, 2),
(67, '2023-02-09 05:22:42.949758', '34', 'REGULAR', 1, '[{\"added\": {}}]', 10, 2),
(68, '2023-02-09 05:22:56.998248', '35', 'BLACK', 1, '[{\"added\": {}}]', 10, 2),
(69, '2023-02-09 05:23:03.885213', '36', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(70, '2023-02-09 05:23:11.197981', '37', 'BLACK', 1, '[{\"added\": {}}]', 10, 2),
(71, '2023-02-09 05:23:17.413376', '38', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(72, '2023-02-09 05:23:28.144139', '39', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(73, '2023-02-09 05:23:37.151016', '40', '100 ML', 1, '[{\"added\": {}}]', 10, 2),
(74, '2023-02-09 05:23:46.639786', '41', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(75, '2023-02-09 05:23:56.215258', '42', '100 ML', 1, '[{\"added\": {}}]', 10, 2),
(76, '2023-02-09 05:24:16.807328', '43', 'WHITE', 1, '[{\"added\": {}}]', 10, 2),
(77, '2023-02-09 05:24:24.029197', '44', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(78, '2023-02-09 05:24:36.045314', '45', 'BLACK', 1, '[{\"added\": {}}]', 10, 2),
(79, '2023-02-09 05:24:42.796749', '46', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(80, '2023-02-09 05:24:59.229747', '47', 'WHITE', 1, '[{\"added\": {}}]', 10, 2),
(81, '2023-02-09 05:25:13.333507', '48', 'SKY', 1, '[{\"added\": {}}]', 10, 2),
(82, '2023-02-09 05:25:28.878737', '49', 'MAX', 1, '[{\"added\": {}}]', 10, 2),
(83, '2023-02-09 05:25:35.517771', '50', 'BLACK', 1, '[{\"added\": {}}]', 10, 2),
(84, '2023-02-09 05:25:41.988904', '51', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(85, '2023-02-09 05:26:06.469311', '34', 'FIXED', 2, '[{\"changed\": {\"fields\": [\"Variation value\"]}}]', 10, 2),
(86, '2023-02-09 05:26:29.980674', '24', 'iPHONE 13 PRO', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 9, 2),
(87, '2023-02-09 05:26:53.066509', '23', 'BEATS STUDIO BUDS', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 9, 2),
(88, '2023-02-09 09:12:43.306002', '26', 'HOODY WASHED', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"HOODY WASHED\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"HOODY WASHED\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"HOODY WASHED\"}}]', 9, 2),
(89, '2023-02-09 09:15:04.614569', '27', 'MUNSTER CAMO LEO', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"MUNSTER CAMO LEO\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"MUNSTER CAMO LEO\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"MUNSTER CAMO LEO\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"MUNSTER CAMO LEO\"}}]', 9, 2),
(90, '2023-02-09 09:16:34.685470', '28', 'COSMOS DRESS DAISY', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"COSMOS DRESS DAISY\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"COSMOS DRESS DAISY\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"COSMOS DRESS DAISY\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"COSMOS DRESS DAISY\"}}]', 9, 2),
(91, '2023-02-09 09:17:51.660532', '29', 'TYLER CREW CHEETAH', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TYLER CREW CHEETAH\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TYLER CREW CHEETAH\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TYLER CREW CHEETAH\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"TYLER CREW CHEETAH\"}}]', 9, 2),
(92, '2023-02-09 09:19:02.627200', '30', 'KIDS COMEBACK', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"KIDS COMEBACK\"}}]', 9, 2),
(93, '2023-02-09 09:20:18.427349', '31', 'PUMPING TRAVEL SET', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"PUMPING TRAVEL SET\"}}]', 9, 2),
(94, '2023-02-09 09:21:54.096946', '32', 'EDWARDS & CO OSCAR', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"EDWARDS & CO OSCAR\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"EDWARDS & CO OSCAR\"}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"EDWARDS & CO OSCAR\"}}]', 9, 2),
(95, '2023-02-09 09:23:05.233688', '33', 'MINI BOARD BOOK', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"productgallery\", \"object\": \"MINI BOARD BOOK\"}}]', 9, 2),
(96, '2023-02-09 09:23:40.177524', '52', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(97, '2023-02-09 09:23:54.905029', '53', 'S', 1, '[{\"added\": {}}]', 10, 2),
(98, '2023-02-09 09:24:05.320809', '54', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(99, '2023-02-09 09:24:13.857081', '55', 'S', 1, '[{\"added\": {}}]', 10, 2),
(100, '2023-02-09 09:24:21.153750', '56', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(101, '2023-02-09 09:24:28.979014', '57', 'S', 1, '[{\"added\": {}}]', 10, 2),
(102, '2023-02-09 09:24:37.232276', '58', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(103, '2023-02-09 09:24:42.968220', '59', 's', 1, '[{\"added\": {}}]', 10, 2),
(104, '2023-02-09 09:24:54.178741', '60', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(105, '2023-02-09 09:25:01.448949', '61', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(106, '2023-02-09 09:25:07.121079', '62', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(107, '2023-02-09 09:25:12.794402', '63', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(108, '2023-02-09 09:25:20.608974', '64', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(109, '2023-02-09 09:25:27.489768', '65', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(110, '2023-02-09 09:25:53.351224', '66', 'FIXED', 1, '[{\"added\": {}}]', 10, 2),
(111, '2023-02-09 09:25:59.407703', '67', 'FIXED', 1, '[{\"added\": {}}]', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'account'),
(8, 'accounts', 'userprofile'),
(1, 'admin', 'logentry'),
(18, 'admin_honeypot', 'loginattempt'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(13, 'carts', 'cart'),
(14, 'carts', 'cartitem'),
(6, 'category', 'category'),
(4, 'contenttypes', 'contenttype'),
(15, 'orders', 'order'),
(17, 'orders', 'orderproduct'),
(16, 'orders', 'payment'),
(5, 'sessions', 'session'),
(9, 'store', 'product'),
(12, 'store', 'productgallery'),
(11, 'store', 'reviewrating'),
(10, 'store', 'variation');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2023-02-09 04:03:42.304234'),
(2, 'accounts', '0002_userprofile', '2023-02-09 04:03:44.086118'),
(3, 'contenttypes', '0001_initial', '2023-02-09 04:03:44.764893'),
(4, 'admin', '0001_initial', '2023-02-09 04:03:45.409788'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-02-09 04:03:45.443311'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-09 04:03:45.486684'),
(7, 'admin_honeypot', '0001_initial', '2023-02-09 04:03:45.630108'),
(8, 'admin_honeypot', '0002_auto_20160208_0854', '2023-02-09 04:03:45.778317'),
(9, 'contenttypes', '0002_remove_content_type_name', '2023-02-09 04:03:46.230898'),
(10, 'auth', '0001_initial', '2023-02-09 04:03:47.584564'),
(11, 'auth', '0002_alter_permission_name_max_length', '2023-02-09 04:03:47.799273'),
(12, 'auth', '0003_alter_user_email_max_length', '2023-02-09 04:03:47.822751'),
(13, 'auth', '0004_alter_user_username_opts', '2023-02-09 04:03:47.855334'),
(14, 'auth', '0005_alter_user_last_login_null', '2023-02-09 04:03:47.901565'),
(15, 'auth', '0006_require_contenttypes_0002', '2023-02-09 04:03:47.937997'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2023-02-09 04:03:47.973974'),
(17, 'auth', '0008_alter_user_username_max_length', '2023-02-09 04:03:48.014412'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2023-02-09 04:03:48.055206'),
(19, 'auth', '0010_alter_group_name_max_length', '2023-02-09 04:03:48.128319'),
(20, 'auth', '0011_update_proxy_permissions', '2023-02-09 04:03:48.224211'),
(21, 'auth', '0012_alter_user_first_name_max_length', '2023-02-09 04:03:48.255793'),
(22, 'category', '0001_initial', '2023-02-09 04:03:48.480840'),
(23, 'category', '0002_auto_20210815_2316', '2023-02-09 04:03:48.514437'),
(24, 'store', '0001_initial', '2023-02-09 04:03:49.106021'),
(25, 'store', '0002_variation', '2023-02-09 04:03:49.457913'),
(26, 'carts', '0001_initial', '2023-02-09 04:03:50.249643'),
(27, 'carts', '0002_cartitem_variations', '2023-02-09 04:03:51.650727'),
(28, 'carts', '0003_auto_20210918_1718', '2023-02-09 04:03:52.667174'),
(29, 'orders', '0001_initial', '2023-02-09 04:03:56.544516'),
(30, 'sessions', '0001_initial', '2023-02-09 04:03:57.153534'),
(31, 'store', '0003_reviewrating', '2023-02-09 04:03:58.071663'),
(32, 'store', '0004_productgallery', '2023-02-09 04:03:58.458902'),
(33, 'store', '0005_auto_20211006_2259', '2023-02-09 04:03:58.516667');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cv1y04onbocy0sbnqso567k9g6nql50v', '.eJxVjMEOwiAQBf-FsyGFdhfo0bvfQIAuFrVgCj0Z_12b9NLrm5n3YbZSralkm3JqtqWFanPL27JRoALTD8pILgxIIS7Muq3Ndqu02jSxkUl22rwLT8o7mB4u3wsPJbc1eb4r_KCV38pEr-vhng5mV-d_reWgCTrS4MH1kTxKCCSNk1rpoVOAFBAIQSOpzmAXY0DRa4EIQzSafX-_DUUK:1pQ3CK:3c7TGPhkPkyitHoc8vdKs-Pdo2_C7Fbvks5mr57k_fk', '2023-02-23 09:26:32.346402'),
('vmcdcaxuscw699wdflj1mkbxdcu0f11x', '.eJxVjEEOgyAQRe_CuiEKzjC67L5nIIBDpa3YCK6a3r01ceP2v_f-R9jCpaQl25RTtTXNXKqb31YMLRrotTZKS9VSB-oirNvqZLfCq02jGIQSp8278OS8g_Hh8n2RYcl1TV7uijxokbdl5Nf1cE8HkyvTvybVEUPDBB6cjuxRQWDVO0WGusYAckBgBEI2TY9NjAFbTS0idLEn8f0BvBhFBg:1pQ2v5:mAfGG-drdgPCQDIkQbqDOlz5l6uNMq4AmrHyolzdxeI', '2023-02-23 09:08:43.225093');

-- --------------------------------------------------------

--
-- Table structure for table `orders_order`
--

CREATE TABLE `orders_order` (
  `id` int NOT NULL,
  `order_number` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address_line_1` varchar(50) NOT NULL,
  `address_line_2` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `order_note` varchar(100) NOT NULL,
  `order_total` double NOT NULL,
  `tax` double NOT NULL,
  `status` varchar(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `is_ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders_order`
--

INSERT INTO `orders_order` (`id`, `order_number`, `first_name`, `last_name`, `phone`, `email`, `address_line_1`, `address_line_2`, `country`, `state`, `city`, `order_note`, `order_total`, `tax`, `status`, `ip`, `is_ordered`, `created_at`, `updated_at`, `payment_id`, `user_id`) VALUES
(1, '202302091', 'Ratul Hasan', 'Shaon', '01912007487', 'ratulhasanshaon@gmail.com', 'House #69, Road #19, Sector #11, Uttara', '', 'Bangladesh', 'Dhaka', 'Dhaka', 'call before you come', 30392, 4192, 'New', '127.0.0.1', 1, '2023-02-09 08:38:44.879994', '2023-02-09 08:39:09.997910', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderproduct`
--

CREATE TABLE `orders_orderproduct` (
  `id` int NOT NULL,
  `quantity` int NOT NULL,
  `product_price` double NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` int NOT NULL,
  `payment_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders_orderproduct`
--

INSERT INTO `orders_orderproduct` (`id`, `quantity`, `product_price`, `ordered`, `created_at`, `updated_at`, `order_id`, `payment_id`, `product_id`, `user_id`) VALUES
(1, 1, 26200, 1, '2023-02-09 08:39:10.041893', '2023-02-09 08:39:10.117322', 1, 1, 22, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderproduct_variations`
--

CREATE TABLE `orders_orderproduct_variations` (
  `id` int NOT NULL,
  `orderproduct_id` int NOT NULL,
  `variation_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders_orderproduct_variations`
--

INSERT INTO `orders_orderproduct_variations` (`id`, `orderproduct_id`, `variation_id`) VALUES
(1, 1, 43),
(2, 1, 44);

-- --------------------------------------------------------

--
-- Table structure for table `orders_payment`
--

CREATE TABLE `orders_payment` (
  `id` int NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders_payment`
--

INSERT INTO `orders_payment` (`id`, `payment_id`, `payment_method`, `amount_paid`, `status`, `created_at`, `user_id`) VALUES
(1, '7MX962821P196143U', 'Paypal', '30392.0', 'COMPLETED', '2023-02-09 08:39:09.932949', 2);

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` int NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `price` int NOT NULL,
  `images` varchar(100) NOT NULL,
  `stock` int NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `product_name`, `slug`, `description`, `price`, `images`, `stock`, `is_available`, `created_date`, `modified_date`, `category_id`) VALUES
(1, 'CASUAL SHIRT RED', 'casual-shirt-red', 'Relaxed Fit  \r\nSKU:  10002749\r\nPID:  PI3028', 2032, 'photos/products/mc2_1_YEuEQoi.jpg', 50, 1, '2023-02-09 04:22:11.346101', '2023-02-09 04:22:11.346101', 1),
(2, 'CASUAL SHIRT CHECK', 'casual-shirt-check', 'Relaxed Fit', 2032, 'photos/products/mc1_FYcCt0q.jpg', 50, 1, '2023-02-09 04:23:21.943544', '2023-02-09 04:23:21.943544', 1),
(3, 'CASUAL SHIRT FULL', 'casual-shirt-full', 'Relaxed fit', 1940, 'photos/products/mcj_4_J9kFgNb.jpg', 60, 1, '2023-02-09 04:31:01.042890', '2023-02-09 04:31:01.042890', 1),
(4, 'CASUAL SHIRT BLACK', 'casual-shirt-black', 'Relaxed fit', 2032, 'photos/products/mcj_6_1_qmmDmxP.jpg', 50, 1, '2023-02-09 04:37:05.210211', '2023-02-09 04:37:05.210211', 1),
(5, 'TANJIM JACKET BLACK', 'tanjim-jacket-black', 'BLACK', 4040, 'photos/products/mcj_5_1_Ia90iBd.jpg', 20, 1, '2023-02-09 04:39:03.099443', '2023-02-09 04:39:03.099443', 1),
(6, 'BRANDED HOODIE', 'branded-hoodie', 'BRANDED HOODIE', 6644, 'photos/products/mcj_1_7N1jdg4.jpg', 50, 1, '2023-02-09 04:40:29.567596', '2023-02-09 04:41:08.671735', 1),
(7, 'TANJIM BLAZER STRIP', 'tanjim-blazer-strip', 'TANJIM BLAZER STRIP', 6429, 'photos/products/blazer1_hbIXca1.jpg', 50, 1, '2023-02-09 04:44:12.257948', '2023-02-09 04:44:12.257948', 1),
(8, 'TANJIM BLAZER RED', 'tanjim-blazer-red', 'TANJIM BLAZER RED', 6429, 'photos/products/blazer2_M4sowI1.jpg', 25, 1, '2023-02-09 04:45:16.031882', '2023-02-09 04:45:16.031882', 1),
(9, 'TANJIM BLAZER OW', 'tanjim-blazer-ow', 'TANJIM BLAZER OFF WHITE', 6429, 'photos/products/blazer2cream_E0Vz7FD.jpg', 25, 1, '2023-02-09 04:46:03.125630', '2023-02-09 04:46:03.125630', 1),
(10, 'ZARZAIN KAMEEZ YELLOW', 'zarzain-kameez-yellow', 'ZARZAIN KAMEEZ YELLOW', 4838, 'photos/products/kameez_2_afUBeKz.jpg', 50, 1, '2023-02-09 04:48:13.541624', '2023-02-09 04:48:13.541624', 2),
(11, 'ZARZAIN KAMEEZ PINK', 'zarzain-kameez-pink', 'ZARZAIN KAMEEZ PINK', 4838, 'photos/products/kameez_1_2_qIB6Dk3.jpg', 60, 1, '2023-02-09 04:49:02.901748', '2023-02-09 04:49:02.901748', 2),
(12, 'ZARZAIN KAMEEZ WHITE', 'zarzain-kameez-white', 'ZARZAIN KAMEEZ WHITE', 3646, 'photos/products/kameez_3_SbRjfTR.jpg', 56, 1, '2023-02-09 04:49:47.057248', '2023-02-09 04:49:47.057248', 2),
(13, 'ZARZAIN TOPS BLACK', 'zarzain-tops-black', 'ZARZAIN TOPS BLACK', 2236, 'photos/products/wmt_2_KLs18go.jpg', 50, 1, '2023-02-09 04:51:05.623718', '2023-02-09 04:51:05.623718', 2),
(14, 'ZARZAIN TOPS TRANS', 'zarzain-tops-trans', 'ZARZAIN TOPS TRANS', 2903, 'photos/products/wmt_3_1_M8qXw7h.jpg', 90, 1, '2023-02-09 04:51:52.607739', '2023-02-09 04:51:52.607739', 2),
(15, 'ZARZAIN TOPS RED', 'zarzain-tops-red', 'ZARZAIN TOPS RED', 2909, 'photos/products/wmt_1_KqZWqsj.jpg', 28, 1, '2023-02-09 04:52:20.036536', '2023-02-09 04:52:20.036536', 2),
(16, 'TANJIM WALLET BR', 'tanjim-wallet-br', 'TANJIM WALLET BROWN', 1526, 'photos/products/wallet1_Niscz9p.jpg', 100, 1, '2023-02-09 04:53:13.591118', '2023-02-09 04:53:13.591118', 4),
(17, 'TANJIM WALLET BL', 'tanjim-wallet-bl', 'TANJIM WALLET BLACK', 1889, 'photos/products/wallet2_ojYhsj2.jpg', 20, 1, '2023-02-09 04:53:46.030603', '2023-02-09 04:53:46.030603', 4),
(18, 'TANJIM WALLET BLACK', 'tanjim-wallet-black', 'TANJIM WALLET BLACK', 1989, 'photos/products/wallet3_74cwH94.jpg', 50, 1, '2023-02-09 04:54:15.145421', '2023-02-09 04:54:15.145421', 4),
(19, 'ZOAN ASH PERFUME', 'zoan-ash-perfume', 'ZOAN ASH PERFUME (PARISIAN)', 4589, 'photos/products/RARE_BREED_PERFUME3_Ub2hkpP.jpg', 50, 1, '2023-02-09 04:55:10.707902', '2023-02-09 04:55:10.707902', 4),
(20, 'RARE BREED PERFUME', 'rare-breed-perfume', 'RARE BREED PERFUME', 2646, 'photos/products/Rare_Breed_Perfume_by_Tanjim_Squad2.jpg', 100, 1, '2023-02-09 04:55:38.869696', '2023-02-09 04:55:38.869696', 4),
(21, 'RARE BREED Mandarin', 'rare-breed-mandarin', 'Rare Breed Perfume by Tanjim Squad\r\nTop Notes: Bergamot, Mandarin\r\nMiddle Notes: Coriander seed, Jasmin, Rose, Pink pepper\r\nBase Notes: Patchouli, Moss, Vanilla, Sandalwood, Musk, Cedarwood, Dry amber\r\nPERFUME TYPE:  EAU DE PARFUM\r\n100 ml', 2426, 'photos/products/RARE_BREED_PERFUME1_x9KVXL2.jpg', 100, 1, '2023-02-09 04:56:44.117496', '2023-02-09 04:56:44.117496', 4),
(22, 'AIR POD PRO', 'air-pod-pro', 'AirPods Pro take the listening experience to a new level of individuality. Personalized Spatial Audio with dynamic head tracking works with all your devices', 26200, 'photos/products/airpod_2Dr4UTr.jpg', 49, 1, '2023-02-09 04:59:46.626437', '2023-02-09 08:39:10.173445', 5),
(23, 'BEATS STUDIO BUDS', 'beats-studio-buds', 'Beats Studio Buds - True Wireless Noise Cancelling Earbuds - Compatible with Apple & Android, Built-in Microphone, IPX4 Rating, Sweat Resistant Earphones, Class 1 Bluetooth Headphones - Black', 7899, 'photos/products/earbud_ZFXrZkh.jpg', 100, 1, '2023-02-09 05:01:04.099225', '2023-02-09 05:26:53.065545', 5),
(24, 'iPHONE 13 PRO', 'iphone-13-pro', 'A like-new experience. Backed by a one-year satisfaction guarantee.\r\nThis Renewed Premium product is shipped and sold by Amazon and has been certified by Amazon to work and look like new. With at least 90% battery life, it comes in deluxe, Amazon-branded packaging and is backed by a one-year warranty and technical support. See terms here.', 102300, 'photos/products/iphone13_prRDdwN.jpg', 20, 1, '2023-02-09 05:02:31.213227', '2023-02-09 05:26:29.979644', 5),
(25, 'GoPro HERO11', 'gopro-hero11', 'GoPro HERO11 Black - Waterproof Action Camera with 5.3K60 Ultra HD Video, 27MP Photos, 1/1.9\" Image Sensor, Live Streaming, Webcam, Stabilization', 52020, 'photos/products/gopro_0rQLj4Z.jpg', 60, 1, '2023-02-09 05:03:51.625247', '2023-02-09 05:03:51.625247', 5),
(26, 'HOODY WASHED', 'hoody-washed', 'MUNSTER CHECK ME HOODY WASHED BLACK\r\n\r\nThe Munster Kids Check Me Hoody in Washed Black is an epic new hoodie with all the details they’ll LOVE! Featuring front pouch pocket, thumbholes, and checkerboard contrast print details. Made of ultra comfy 100% Cotton Brushed Fleece 310GSM\r\n\r\nPRE ORDER – Please note that this pre order item is scheduled for dispatch mid/late Feb', 9800, 'photos/products/MUNSTER-CHECK-ME-HOODY-WASHED-BLACK---THE-KIDS-STORE_x700.webp', 200, 1, '2023-02-09 09:12:43.301044', '2023-02-09 09:12:43.301044', 3),
(27, 'MUNSTER CAMO LEO', 'munster-camo-leo', 'MUNSTER CAMO LEO CREW OLIVINE\r\n\r\nThe Munster Kids Camo Leo Crew in Olivine is a snuggly sweater featuring thumbholes, checkerboard sleeve strips and signature stitched Munster chest logo. Made of high quality 100% Cotton French Terry 310GSM\r\n\r\nPRE ORDER – Please note that this pre order item is scheduled for dispatch mid/late Feb', 9895, 'photos/products/MUNSTER-CAMO-LEO-CREW-OLIVINE_x700.webp', 200, 1, '2023-02-09 09:15:04.608582', '2023-02-09 09:15:04.608582', 3),
(28, 'COSMOS DRESS DAISY', 'cosmos-dress-daisy', 'MUNSTER COSMOS DRESS DAISY\r\n\r\nA stunning shaped dress featuring beautiful all over daisy print & tie back detail. An easy \'throw on and go\', effortlessly chic, all in one look!\r\n\r\n100% COTTON JERSEY 150GSM\r\n\r\nPRE ORDER – Please note that this pre order item is scheduled for dispatch mid/late Feb', 9895, 'photos/products/MUNSTER-COSMOS-DRESS-DAISY---THE-KIDS-STORE_x700.webp', 100, 1, '2023-02-09 09:16:34.679487', '2023-02-09 09:16:34.679487', 3),
(29, 'TYLER CREW CHEETAH', 'tyler-crew-cheetah', 'MUNSTER TYLER CREW CHEETAH\r\n\r\nThe Missie Munster Tyler Crew in Cheetah is an awesome new crew featuring all over animal print and is made from the softest 100% COTTON LOOPBACK FLEECE 310GSM making this one the piece they’ll wanna thrash all season long! This one pairs back perfectly with the Lana Pant in Cheetah too\r\n\r\nPRE ORDER – Please note that this pre order item is scheduled for dispatch mid/late Feb', 8495, 'photos/products/MUNSTERTYLERCREWCHEETAHmodelfrontshot_THEKIDSSTORE_x1400.webp', 100, 1, '2023-02-09 09:17:51.605267', '2023-02-09 09:17:51.605267', 3),
(30, 'KIDS COMEBACK', 'kids-comeback', 'KAPOW KIDS COMEBACK SWEATER ONESIE\r\n\r\nExclusive Tie dye waffle  stretchy cotton - a unisex print. Ditressed Peace sign placement print. Contrast cream rib cuffs/neckline/hem. Snap buttons at back neck and crotch. Loose baggy sloucy oversized style - so cute!', 3400, 'photos/products/Kapow_AW22_Comeback_Sweater_onesie_x1400.webp', 50, 1, '2023-02-09 09:19:02.624209', '2023-02-09 09:19:02.625206', 3),
(31, 'PUMPING TRAVEL SET', 'pumping-travel-set', 'We know busy mums have no time to be chained to the couch by their pump, so we\'ve created the ultimate on-the-go pumping set! With just one squeeze, the Haakaa pump draws out your liquid gold with the power of continuous suction - no noise, no electricity and no cords. Pump anywhere, anytime!\r\n\r\nThis set contains:\r\n\r\n1 x 150ml Gen. 2 Silicone Breast Pump with Suction Base', 5996, 'photos/products/haakaapumptravelset_2_1200x1200_0840df46-79f3-49a0-aa6b-15d1348a14ff_x700.webp', 20, 1, '2023-02-09 09:20:18.424355', '2023-02-09 09:20:18.424355', 3),
(32, 'EDWARDS & CO OSCAR', 'edwards-co-oscar', 'EDWARDS & CO OSCAR M2 - SAND \r\n\r\nOscar M2 is Edwards & Co\'s strongest three-wheeler yet. The new M2 design makes the original Oscar, more capable than ever, with increased weight capacity in the seat and basket.\r\n\r\nOscar is even more plush and luxurious than ever before featuring an upgraded seat ensuring your child will be strolling in comfort.', 9980, 'photos/products/edwards-co-oscar-m2-sand-main_x1400.webp', 100, 1, '2023-02-09 09:21:54.090934', '2023-02-09 09:21:54.090934', 3),
(33, 'MINI BOARD BOOK', 'mini-board-book', 'Mini Board Book by Kat Quin. From bestselling and award-winning author and illustrator of the Kuwi the Kiwi™ series. Based on the international favourite, ‘Kiwicorn’.\r\n\r\nA ridiculously cute (and funny) book about being unique. Gorgeous illustrations and simple writing can help parents and caregivers to convey the important message that we’re all different from each other, and being different is awesome! Also to promote a love of reading from a very young age.', 1095, 'photos/products/the-kids-store-kiwicorn-mini-board-book_x700.jpg', 50, 1, '2023-02-09 09:23:05.230693', '2023-02-09 09:23:05.230693', 3);

-- --------------------------------------------------------

--
-- Table structure for table `store_productgallery`
--

CREATE TABLE `store_productgallery` (
  `id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `store_productgallery`
--

INSERT INTO `store_productgallery` (`id`, `image`, `product_id`) VALUES
(1, 'store/products/mc2_2_9CrsSag.jpg', 1),
(2, 'store/products/mc1_2_nGgFJMg.jpg', 1),
(3, 'store/products/mc1_1_qxqjs8F.jpg', 2),
(4, 'store/products/mc1_2_96D6RID.jpg', 2),
(5, 'store/products/mcj_4_1_fHtDlwE.jpg', 3),
(6, 'store/products/mcj_3_dgwYuvY.jpg', 3),
(7, 'store/products/mcj_6_2_48asn09.jpg', 4),
(8, 'store/products/mcj_5_3_BKEquWv.png', 4),
(9, 'store/products/mcj_5_2_HHHE6Ka.jpg', 5),
(10, 'store/products/mcj_5_3_c6r8oBv.png', 5),
(11, 'store/products/mcj_2_kgDyqmm.jpg', 6),
(12, 'store/products/mcj_5_3_fUr9IxH.png', 6),
(13, 'store/products/blazer1_1_q2GgTmI.jpg', 7),
(14, 'store/products/blazer2_1_rgJyrJL.jpg', 8),
(15, 'store/products/blazer2cream1_7JGG5FQ.jpg', 9),
(16, 'store/products/kameez_2_1_qeXvjLP.jpg', 10),
(17, 'store/products/kameez_2_2.jpg', 10),
(18, 'store/products/kameez_1_WiMYAVz.jpg', 11),
(19, 'store/products/kameez_2_2_Ul7D8Md.jpg', 11),
(20, 'store/products/kameez_3_1_cZGkBnl.jpg', 12),
(21, 'store/products/kameez_2_2_pucz9PK.jpg', 12),
(22, 'store/products/wmt_2_1_qX0ISBe.jpg', 13),
(23, 'store/products/wmt_3_2_neSEQTk.jpg', 14),
(24, 'store/products/wmt_1_1_5xpAPve.jpg', 15),
(25, 'store/products/wallet1_1_bJi0HxZ.jpg', 16),
(26, 'store/products/wallet1_2_cS6rB71.jpg', 16),
(27, 'store/products/wallet2_1_zeFFtTs.jpg', 17),
(28, 'store/products/wallet3_1_AWPgWRw.jpg', 18),
(29, 'store/products/RARE_BREED_PERFUME3_4OecakK.jpg', 19),
(30, 'store/products/Rare_Breed_Perfume_by_Tanjim_Squad.jpg', 20),
(31, 'store/products/RARE_BREED_PERFUME_56sOjoG.jpg', 21),
(32, 'store/products/airpod_1_2BVcwvd.jpg', 22),
(33, 'store/products/airpod_2_M0jI5t9.jpg', 22),
(34, 'store/products/airpod_3_Kl0gNJH.jpg', 22),
(35, 'store/products/airpod_4_vsiYU7Y.jpg', 22),
(36, 'store/products/earbud_1_ME2qzJO.jpg', 23),
(37, 'store/products/earbud_2_1vopQjs.jpg', 23),
(38, 'store/products/earbud_3_IgXjcBu.jpg', 23),
(39, 'store/products/iphone13_1_IxGfjcD.jpg', 24),
(40, 'store/products/iphone13_2_qegNsLi.jpg', 24),
(41, 'store/products/iphone13_3_q7IiLLS.jpg', 24),
(42, 'store/products/iphone13_4_a6U3LpU.jpg', 24),
(43, 'store/products/gopro_3_qJTNQuS.jpg', 25),
(44, 'store/products/gopro_2_tqwjEJT.jpg', 25),
(45, 'store/products/gopro_1_OfCQief.jpg', 25),
(46, 'store/products/MUNSTERCHECKMEHOODYWASHEDBLACKMODEL_THEKIDSSTORE_x700.webp', 26),
(47, 'store/products/MUNSTERCHECKMEHOODYWASHEDBLACKSIDE_THEKIDSSTORE_x700.webp', 26),
(48, 'store/products/MK231FL03_CHARCOAL_2_2_x700.webp', 26),
(49, 'store/products/MUNSTERCAMOLEOCREWOLIVINEBACK_THEKIDSSTORE_x700.webp', 27),
(50, 'store/products/MUNSTERCAMOLEOCREWOLIVINE_THEKIDSSTORE_x700.webp', 27),
(51, 'store/products/MUNSTERCAMOLEOCREWOLIVINESIDE_THEKIDSSTORE_x700.webp', 27),
(52, 'store/products/MUNSTERCAMOLEOCREWOLIVINEBACKMODEL_THEKIDSSTORE_x700.webp', 27),
(53, 'store/products/MUNSTERCOSMOSDRESSDAISYback_THEKIDSSTORE_x700.webp', 28),
(54, 'store/products/MUNSTERCOSMOSDRESSDAISYmodelfront_THEKIDSSTORE_x1400.webp', 28),
(55, 'store/products/MUNSTERCOSMOSDRESSDAISYmodelback_THEKIDSSTORE_x1400.webp', 28),
(56, 'store/products/MUNSTERCOSMOSDRESSDAISYside_THEKIDSSTORE_x1400.webp', 28),
(57, 'store/products/MUNSTERTYLERCREWCHEETAHMODELSIDE_THEKIDSSTORE_x1400.webp', 29),
(58, 'store/products/MUNSTER-TYLER-CREW-CHEETAH---THE-KIDS-STORE_x700.webp', 29),
(59, 'store/products/MUNSTERTYLERCREWCHEETAHBACK_THEKIDSSTORE_x700.webp', 29),
(60, 'store/products/MUNSTERTYLERCREWCHEETAHMODELFRONT_THEKIDSSTORE_x1400.webp', 29),
(61, 'store/products/Kapow_AW22_Comeback_Sweater_onesie_x1400.webp', 30),
(62, 'store/products/Untitled_design_11__94587.1635810347_x700.webp', 31),
(63, 'store/products/edwards-co-oscar-m2-sand-front-left_x1400.webp', 32),
(64, 'store/products/edwards-co-oscar-m2-ls2_x1400.webp', 32),
(65, 'store/products/edwards-co-oscar-m2-ls-scaled_x1400.webp', 32),
(66, 'store/products/the-kids-store-kiwicorn-mini-board-book_x700.jpg', 33);

-- --------------------------------------------------------

--
-- Table structure for table `store_reviewrating`
--

CREATE TABLE `store_reviewrating` (
  `id` int NOT NULL,
  `subject` varchar(100) NOT NULL,
  `review` longtext NOT NULL,
  `rating` double NOT NULL,
  `ip` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_variation`
--

CREATE TABLE `store_variation` (
  `id` int NOT NULL,
  `variation_category` varchar(100) NOT NULL,
  `variation_value` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `store_variation`
--

INSERT INTO `store_variation` (`id`, `variation_category`, `variation_value`, `is_active`, `created_date`, `product_id`) VALUES
(1, 'color', 'RED', 1, '2023-02-09 05:04:08.177722', 1),
(2, 'size', 'M', 1, '2023-02-09 05:04:17.816953', 1),
(3, 'size', 'XL', 1, '2023-02-09 05:04:23.776419', 1),
(4, 'color', 'FIXED', 1, '2023-02-09 05:04:36.223203', 2),
(5, 'size', 'M', 1, '2023-02-09 05:04:53.352158', 2),
(6, 'size', 'XL', 1, '2023-02-09 05:05:03.178559', 2),
(7, 'color', 'OFF WHITE', 1, '2023-02-09 05:05:20.675585', 3),
(8, 'size', 'M', 1, '2023-02-09 05:05:26.519065', 3),
(9, 'color', 'BLACK', 1, '2023-02-09 05:05:38.185967', 4),
(10, 'size', 'XL', 1, '2023-02-09 05:05:45.206673', 4),
(11, 'color', 'FIXED', 1, '2023-02-09 05:05:55.243613', 5),
(12, 'size', 'L', 1, '2023-02-09 05:06:02.671150', 5),
(13, 'color', 'FIXED', 1, '2023-02-09 05:06:09.143394', 6),
(14, 'size', 'XL', 1, '2023-02-09 05:06:16.319553', 6),
(15, 'color', 'FIXED', 1, '2023-02-09 05:06:24.793164', 7),
(16, 'size', 'XL', 1, '2023-02-09 05:06:32.002891', 7),
(17, 'color', 'RED', 1, '2023-02-09 05:19:09.311200', 8),
(18, 'size', 'XL', 1, '2023-02-09 05:19:16.096103', 8),
(19, 'color', 'OFF WHITE', 1, '2023-02-09 05:19:26.269136', 9),
(20, 'size', 'XL', 1, '2023-02-09 05:19:35.871897', 9),
(21, 'color', 'YELLOW', 1, '2023-02-09 05:19:46.597747', 10),
(22, 'size', 'M', 1, '2023-02-09 05:19:58.485306', 10),
(23, 'color', 'PINK', 1, '2023-02-09 05:20:12.686078', 11),
(24, 'size', 'M', 1, '2023-02-09 05:20:19.397532', 11),
(25, 'color', 'OFF WHITE', 1, '2023-02-09 05:20:31.254338', 12),
(26, 'size', 'S', 1, '2023-02-09 05:20:44.271444', 12),
(27, 'color', 'BLACK', 1, '2023-02-09 05:20:52.877789', 13),
(28, 'size', 'L', 1, '2023-02-09 05:21:02.927639', 13),
(29, 'color', 'TRANSPARENT', 1, '2023-02-09 05:21:51.526595', 14),
(30, 'size', 'L', 1, '2023-02-09 05:21:59.412644', 14),
(31, 'color', 'RED', 1, '2023-02-09 05:22:08.133159', 15),
(32, 'size', 'M', 1, '2023-02-09 05:22:15.815788', 15),
(33, 'color', 'BLACK', 1, '2023-02-09 05:22:30.283192', 16),
(34, 'size', 'FIXED', 1, '2023-02-09 05:26:06.468313', 16),
(35, 'color', 'BLACK', 1, '2023-02-09 05:22:56.997252', 17),
(36, 'size', 'FIXED', 1, '2023-02-09 05:23:03.885213', 17),
(37, 'color', 'BLACK', 1, '2023-02-09 05:23:11.197012', 18),
(38, 'size', 'FIXED', 1, '2023-02-09 05:23:17.412379', 18),
(39, 'color', 'FIXED', 1, '2023-02-09 05:23:28.143647', 19),
(40, 'size', '100 ML', 1, '2023-02-09 05:23:37.150019', 19),
(41, 'color', 'FIXED', 1, '2023-02-09 05:23:46.638761', 21),
(42, 'size', '100 ML', 1, '2023-02-09 05:23:56.214940', 21),
(43, 'color', 'WHITE', 1, '2023-02-09 05:24:16.807328', 22),
(44, 'size', 'FIXED', 1, '2023-02-09 05:24:24.028698', 22),
(45, 'color', 'BLACK', 1, '2023-02-09 05:24:36.044317', 23),
(46, 'size', 'FIXED', 1, '2023-02-09 05:24:42.795723', 23),
(47, 'color', 'WHITE', 1, '2023-02-09 05:24:59.228719', 24),
(48, 'color', 'SKY', 1, '2023-02-09 05:25:13.333211', 24),
(49, 'size', 'MAX', 1, '2023-02-09 05:25:28.878737', 24),
(50, 'color', 'BLACK', 1, '2023-02-09 05:25:35.517771', 25),
(51, 'size', 'FIXED', 1, '2023-02-09 05:25:41.988904', 25),
(52, 'color', 'FIXED', 1, '2023-02-09 09:23:40.176530', 26),
(53, 'size', 'S', 1, '2023-02-09 09:23:54.904033', 26),
(54, 'color', 'FIXED', 1, '2023-02-09 09:24:05.320305', 27),
(55, 'size', 'S', 1, '2023-02-09 09:24:13.856771', 27),
(56, 'color', 'FIXED', 1, '2023-02-09 09:24:21.153100', 28),
(57, 'size', 'S', 1, '2023-02-09 09:24:28.979014', 28),
(58, 'color', 'FIXED', 1, '2023-02-09 09:24:37.231279', 29),
(59, 'size', 's', 1, '2023-02-09 09:24:42.967200', 29),
(60, 'color', 'FIXED', 1, '2023-02-09 09:24:54.178243', 30),
(61, 'size', 'FIXED', 1, '2023-02-09 09:25:01.448949', 30),
(62, 'color', 'FIXED', 1, '2023-02-09 09:25:07.121079', 31),
(63, 'size', 'FIXED', 1, '2023-02-09 09:25:12.794096', 31),
(64, 'color', 'FIXED', 1, '2023-02-09 09:25:20.608974', 32),
(65, 'size', 'FIXED', 1, '2023-02-09 09:25:27.489265', 32),
(66, 'color', 'FIXED', 1, '2023-02-09 09:25:53.350226', 33),
(67, 'size', 'FIXED', 1, '2023-02-09 09:25:59.407079', 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_account`
--
ALTER TABLE `accounts_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `admin_honeypot_loginattempt`
--
ALTER TABLE `admin_honeypot_loginattempt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `carts_cart`
--
ALTER TABLE `carts_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_cartitem_product_id_acd010e4_fk_store_product_id` (`product_id`),
  ADD KEY `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` (`user_id`),
  ADD KEY `carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id` (`cart_id`);

--
-- Indexes for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_cartitem_variations_cartitem_id_variation_id_5f8efaf5_uniq` (`cartitem_id`,`variation_id`),
  ADD KEY `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` (`variation_id`);

--
-- Indexes for table `category_category`
--
ALTER TABLE `category_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_payment_id_46928ccc_fk_orders_payment_id` (`payment_id`),
  ADD KEY `orders_order_user_id_e9b59eb1_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_orderproduct_order_id_5022a3e2_fk_orders_order_id` (`order_id`),
  ADD KEY `orders_orderproduct_payment_id_492ed997_fk_orders_payment_id` (`payment_id`),
  ADD KEY `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` (`product_id`),
  ADD KEY `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_orderproduct_vari_orderproduct_id_variatio_8c028ee7_uniq` (`orderproduct_id`,`variation_id`),
  ADD KEY `orders_orderproduct__variation_id_5dfd0e51_fk_store_var` (`variation_id`);

--
-- Indexes for table `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_payment_user_id_cfa9f321_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `store_product_category_id_574bae65_fk_category_category_id` (`category_id`);

--
-- Indexes for table `store_productgallery`
--
ALTER TABLE `store_productgallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_productgallery_product_id_f2821a49_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_reviewrating_product_id_2e1974d6_fk_store_product_id` (`product_id`),
  ADD KEY `store_reviewrating_user_id_da0ed849_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `store_variation`
--
ALTER TABLE `store_variation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_variation_product_id_e4f08cbc_fk_store_product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_account`
--
ALTER TABLE `accounts_account`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_honeypot_loginattempt`
--
ALTER TABLE `admin_honeypot_loginattempt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `carts_cart`
--
ALTER TABLE `carts_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_category`
--
ALTER TABLE `category_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_payment`
--
ALTER TABLE `orders_payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `store_productgallery`
--
ALTER TABLE `store_productgallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_variation`
--
ALTER TABLE `store_variation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD CONSTRAINT `accounts_userprofile_user_id_92240672_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD CONSTRAINT `carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  ADD CONSTRAINT `carts_cartitem_product_id_acd010e4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  ADD CONSTRAINT `carts_cartitem_varia_cartitem_id_8be23372_fk_carts_car` FOREIGN KEY (`cartitem_id`) REFERENCES `carts_cartitem` (`id`),
  ADD CONSTRAINT `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` FOREIGN KEY (`variation_id`) REFERENCES `store_variation` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_payment_id_46928ccc_fk_orders_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  ADD CONSTRAINT `orders_order_user_id_e9b59eb1_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD CONSTRAINT `orders_orderproduct_order_id_5022a3e2_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  ADD CONSTRAINT `orders_orderproduct_payment_id_492ed997_fk_orders_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  ADD CONSTRAINT `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  ADD CONSTRAINT `orders_orderproduct__orderproduct_id_0f116a3b_fk_orders_or` FOREIGN KEY (`orderproduct_id`) REFERENCES `orders_orderproduct` (`id`),
  ADD CONSTRAINT `orders_orderproduct__variation_id_5dfd0e51_fk_store_var` FOREIGN KEY (`variation_id`) REFERENCES `store_variation` (`id`);

--
-- Constraints for table `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD CONSTRAINT `orders_payment_user_id_cfa9f321_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`);

--
-- Constraints for table `store_productgallery`
--
ALTER TABLE `store_productgallery`
  ADD CONSTRAINT `store_productgallery_product_id_f2821a49_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD CONSTRAINT `store_reviewrating_product_id_2e1974d6_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_reviewrating_user_id_da0ed849_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `store_variation`
--
ALTER TABLE `store_variation`
  ADD CONSTRAINT `store_variation_product_id_e4f08cbc_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
