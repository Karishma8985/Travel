-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 03:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travello`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add destination', 1, 'add_destination'),
(2, 'Can change destination', 1, 'change_destination'),
(3, 'Can delete destination', 1, 'delete_destination'),
(4, 'Can view destination', 1, 'view_destination'),
(5, 'Can add detailed_desc', 2, 'add_detailed_desc'),
(6, 'Can change detailed_desc', 2, 'change_detailed_desc'),
(7, 'Can delete detailed_desc', 2, 'delete_detailed_desc'),
(8, 'Can view detailed_desc', 2, 'view_detailed_desc'),
(9, 'Can add pessanger_detail', 3, 'add_pessanger_detail'),
(10, 'Can change pessanger_detail', 3, 'change_pessanger_detail'),
(11, 'Can delete pessanger_detail', 3, 'delete_pessanger_detail'),
(12, 'Can view pessanger_detail', 3, 'view_pessanger_detail'),
(13, 'Can add cards', 4, 'add_cards'),
(14, 'Can change cards', 4, 'change_cards'),
(15, 'Can delete cards', 4, 'delete_cards'),
(16, 'Can view cards', 4, 'view_cards'),
(17, 'Can add transactions', 5, 'add_transactions'),
(18, 'Can change transactions', 5, 'change_transactions'),
(19, 'Can delete transactions', 5, 'delete_transactions'),
(20, 'Can view transactions', 5, 'view_transactions'),
(21, 'Can add net banking', 6, 'add_netbanking'),
(22, 'Can change net banking', 6, 'change_netbanking'),
(23, 'Can delete net banking', 6, 'delete_netbanking'),
(24, 'Can view net banking', 6, 'view_netbanking'),
(25, 'Can add log entry', 7, 'add_logentry'),
(26, 'Can change log entry', 7, 'change_logentry'),
(27, 'Can delete log entry', 7, 'delete_logentry'),
(28, 'Can view log entry', 7, 'view_logentry'),
(29, 'Can add permission', 8, 'add_permission'),
(30, 'Can change permission', 8, 'change_permission'),
(31, 'Can delete permission', 8, 'delete_permission'),
(32, 'Can view permission', 8, 'view_permission'),
(33, 'Can add group', 9, 'add_group'),
(34, 'Can change group', 9, 'change_group'),
(35, 'Can delete group', 9, 'delete_group'),
(36, 'Can view group', 9, 'view_group'),
(37, 'Can add user', 10, 'add_user'),
(38, 'Can change user', 10, 'change_user'),
(39, 'Can delete user', 10, 'delete_user'),
(40, 'Can view user', 10, 'view_user'),
(41, 'Can add content type', 11, 'add_contenttype'),
(42, 'Can change content type', 11, 'change_contenttype'),
(43, 'Can delete content type', 11, 'delete_contenttype'),
(44, 'Can view content type', 11, 'view_contenttype'),
(45, 'Can add session', 12, 'add_session'),
(46, 'Can change session', 12, 'change_session'),
(47, 'Can delete session', 12, 'delete_session'),
(48, 'Can view session', 12, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$qlW0sMHHtY4lxnjGFpGu25$nmJuNToJp4/RsJjIHC0R8qn9KQPXviIIKgkzs50piBg=', '2024-04-13 10:11:10.793301', 0, '8798654543', 'kavya', 'Joshi', 'kavya@gmail.com', 0, 1, '2024-04-10 11:19:29.358664'),
(2, 'pbkdf2_sha256$600000$Wbbq27qNsWeGw366BNVuVK$NK+QQSBl+B0XiOAaOwBogyk/7hMNDTH66A/oD7BdT6g=', '2024-04-10 11:23:39.910680', 0, '9874561230', 'joshi_123', 'shah', 'joshi@gmail.com', 0, 1, '2024-04-10 11:21:29.930514'),
(3, 'pbkdf2_sha256$600000$Sr7eMFBRngMOi82E4QqaOc$IyOy+EptEzRGboaUVoTcM+qmn5l30+hGTAHnJnMX9vM=', '2024-04-10 13:37:48.304773', 0, '9898989876', 'Sanarth', 'patel', 'sanarth@gmail.com', 0, 1, '2024-04-10 13:26:47.785454'),
(5, 'pbkdf2_sha256$600000$lErJ30C9Fm9dfevQS75ETg$e/vWX916hC3K4n91/GHg4jUaUoeBAVDo3L7U5EnGKmg=', '2024-04-13 16:10:13.763256', 0, '6351483388', 'misty', 'patel', 'parmars@gmail.com', 0, 1, '2024-04-13 13:47:34.662488'),
(6, 'pbkdf2_sha256$600000$plXX4Akek9obEAeqCf39fx$cbZUCP3IFt51MnupTE4D7MrndaMxHTc8eWxKuDvh0uQ=', '2024-04-13 16:47:48.819821', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-04-13 16:47:21.373001'),
(8, 'pbkdf2_sha256$600000$KVN8bo6uk1I8hOSSe6U38H$DjoEOIKqjfwIMY+LaFoR3Nj1FRBxUs93pSRLQsLHB1M=', '2024-04-15 11:06:20.298371', 0, '8789456789', 'karishma', 'patel', 'atel2003@gmail.com', 0, 1, '2024-04-15 11:06:10.064916');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-15 09:10:38.027241', '7', 'Destination object (7)', 1, '[{\"added\": {}}]', 1, 6),
(2, '2024-04-15 09:24:50.306268', '15', 'Detailed_desc object (15)', 1, '[{\"added\": {}}]', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(9, 'auth', 'group'),
(8, 'auth', 'permission'),
(10, 'auth', 'user'),
(11, 'contenttypes', 'contenttype'),
(12, 'sessions', 'session'),
(4, 'travello', 'cards'),
(1, 'travello', 'destination'),
(2, 'travello', 'detailed_desc'),
(6, 'travello', 'netbanking'),
(3, 'travello', 'pessanger_detail'),
(5, 'travello', 'transactions');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-10 11:09:50.494116'),
(2, 'auth', '0001_initial', '2024-04-10 11:10:07.097040'),
(3, 'admin', '0001_initial', '2024-04-10 11:10:10.978630'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-10 11:10:11.059866'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-10 11:10:11.196837'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-10 11:10:12.191386'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-10 11:10:12.769515'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-10 11:10:12.923440'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-10 11:10:12.958817'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-10 11:10:13.640900'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-10 11:10:13.672152'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-10 11:10:13.753191'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-10 11:10:13.845224'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-10 11:10:13.919775'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-10 11:10:14.011525'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-10 11:10:14.066944'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-10 11:10:14.163589'),
(18, 'sessions', '0001_initial', '2024-04-10 11:10:15.257324'),
(19, 'travello', '0001_initial', '2024-04-10 11:10:15.785932'),
(20, 'travello', '0002_destination_number', '2024-04-10 11:10:16.007215'),
(21, 'travello', '0003_detailed_desc', '2024-04-10 11:10:16.377017'),
(22, 'travello', '0004_auto_20200327_0912', '2024-04-10 11:10:17.289067'),
(23, 'travello', '0005_auto_20200329_1742', '2024-04-10 11:10:17.786776'),
(24, 'travello', '0006_pessanger_detail', '2024-04-10 11:10:18.849365'),
(25, 'travello', '0007_pessanger_detail_city', '2024-04-10 11:10:18.986854'),
(26, 'travello', '0008_pessanger_all_detail', '2024-04-10 11:10:20.425660'),
(27, 'travello', '0009_auto_20200428_1631', '2024-04-10 11:10:26.038964'),
(28, 'travello', '0010_auto_20200430_1117', '2024-04-10 11:10:26.506652'),
(29, 'travello', '0011_auto_20200501_1100', '2024-04-10 11:10:26.610467'),
(30, 'travello', '0012_transactions', '2024-04-10 11:10:26.836376'),
(31, 'travello', '0013_auto_20200503_1254', '2024-04-10 11:10:27.059194'),
(32, 'travello', '0014_auto_20200516_0939', '2024-04-10 11:10:27.204848'),
(33, 'travello', '0015_auto_20200516_1003', '2024-04-10 11:10:28.071215'),
(34, 'travello', '0016_alter_transactions_date_time', '2024-04-10 11:10:28.118090');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6lm1tq05c5z6z19h3frfnvnt0utv0qi5', '.eJxVkLtuwzAMRX_F0GwYkiw5kqciaxG0Q3aDoulYqV-Q5SEo-u-VigwNBw7kvYePb9bBEcfu2Cl0vmct06z8X3OAX7TkRn-H5bZWuC4xeFdlSfXs7tVl7Wk6P7UvgBH2Mbm5aJrmpBDJNA0X2jilLAkUtibRa-BmAE2qdjRI6QYriTQMSMjRERpKUJrBTwm1QZgh7HSHSchavd1yPe01J80WPBJrhdAna0uGPj6S491HKs4EOBbuUVwoAOxJfA1-63aY6e9yZUq2JGuCwKODeT2WyFpplTWVkSXrEUL-Q55ZvKbEimuEKX1rgiUvILnhOUr2cf1kba2UEurnF7vHcOU:1rveKU:JcB-3hmYzA-_WLcq-V1n2dqGyh-etr_f3quHPXdPBVc', '2024-04-27 14:26:06.095818'),
('7iymui4ye6u9pm9suwrhjlw2zvvzq1ex', 'eyJwcmljZSI6MTU3OTksImNpdHkiOiJTd2l0emVybGFuZCJ9:1rvfR6:gQxrzxFW5FuDOs50T1B22CyJ9Jya-tPhZ_20xyQKzVo', '2024-04-27 15:37:00.472001'),
('ngt5om2brh70gbaar97ws1z2zf405p9t', '.eJxVkM1uhSAQRl_FsDaGPxVcNd023bVrM8Ko9CoaxYVp-u4db2-TlgUhM-c7wHyyFo40tseOWxs8a5hl-d9aB-6G8Wr4D4jDUrglpi10xYUUj-5evC4ep-cH-08wwj5SuuuEqbjTqrYaleW6qwznouprD31d9lzUJfrS1Kh61BYrYbVxkqOX1nDJSYozhIlUK0SP5-ARV7gZ8TRcdXrXTMy6BYeskdpamzMX0kmB9xgS-uwlxMHfqbctrO0OM96_XBIZWSMoDWcL83LERAqrrSmMzJl3sF0DEFLpjLYq-z1pcqUlwURjmiBeNyv-s76-AR_7atU:1ryvjr:IguSxc_Bvf1lhlrueVp_Qn5S_Ae5u6U9CxGWDardmO0', '2024-05-06 15:37:51.109366'),
('t9pfz50mk50oqqsskrmme89rxc2i8xmc', '.eJxVkLFuhDAMQH8FZUYoJEAOpqpShxtu646cxBwpkKAQhlPVf69T3dDzkMF-fnb8zUY40zyeB8bRWTawCyv_5zSYBX0u2C_w91CZ4FN0uspI9awe1S1YXN-f7ItghmPOWtEqi7pTuqutxVb1ICViD7rTupdgJRdKcNNgz9HU0rSmmxoxCd5PBuqGpLiBW0m1YFrcDglXwbl8u-c0rbURskdnkA0dpyiZcelBvA8xzcUHHKm4euuAuM_o9vGADf_-3KqSeTbU1A-PEbZw-sQGxS-cV6SxBmI-QC1kU7w-pEohwUpnWsHn0SJ3Ufz8Aulka5w:1rwKPH:17Sk-cdXuYIMkxlU1ROTglDouJ0TRaXExez8CDSdN18', '2024-04-29 11:21:51.042311');

-- --------------------------------------------------------

--
-- Table structure for table `travello_cards`
--

CREATE TABLE `travello_cards` (
  `Card_number` varchar(30) NOT NULL,
  `Ex_month` varchar(2) NOT NULL,
  `Ex_Year` varchar(2) NOT NULL,
  `CVV` varchar(3) NOT NULL,
  `Balance` bigint(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travello_cards`
--

INSERT INTO `travello_cards` (`Card_number`, `Ex_month`, `Ex_Year`, `CVV`, `Balance`, `email`) VALUES
('1234 1236 1234 1234', '12', '25', '235', 29834805, 'pandeygdeepak81@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `travello_destination`
--

CREATE TABLE `travello_destination` (
  `id` int(11) NOT NULL,
  `country` varchar(20) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travello_destination`
--

INSERT INTO `travello_destination` (`id`, `country`, `img1`, `img2`, `number`) VALUES
(1, 'Italy', 'pics/1.png', 'pics/mesut-kaya-eOcyhe5-9sQ-unsplash.jpg', 5),
(2, 'Dubai', 'pics/Dubai_w2bRsjW.jpg', 'pics/images.jfif', 4),
(3, 'USA', 'pics/1.png', 'pics/banner2.png', 2),
(4, 'Australia', 'pics/3.png', 'pics/banner3.png', 2),
(5, 'Europe', 'pics/urop.jpg', 'pics/hero_1.jpg', 5),
(6, 'Indonesia', 'pics/2.png', 'pics/banner.png', 5),
(7, 'India', 'pics/nagaland_uFjycNP.jpg', 'pics/northeast_u3bNJDM.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `travello_detailed_desc`
--

CREATE TABLE `travello_detailed_desc` (
  `dest_id` int(11) NOT NULL,
  `country` varchar(20) NOT NULL,
  `days` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `dest_name` varchar(25) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `desc` longtext NOT NULL,
  `day1` varchar(200) NOT NULL,
  `day2` varchar(200) NOT NULL,
  `day3` varchar(200) NOT NULL,
  `day4` varchar(200) NOT NULL,
  `day5` varchar(200) NOT NULL,
  `day6` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travello_detailed_desc`
--

INSERT INTO `travello_detailed_desc` (`dest_id`, `country`, `days`, `price`, `rating`, `dest_name`, `img1`, `img2`, `desc`, `day1`, `day2`, `day3`, `day4`, `day5`, `day6`) VALUES
(1, 'Italy', 4, 69998, 4, 'Rome', 'pics/Rome_t2gGFuC.PNG', 'pics/Rome.PNG', 'Rome, Italy’s capital, is a sprawling, cosmopolitan city with nearly 3,000 years of globally influential art, architecture and culture on display. Ancient ruins such as the Forum and the Colosseum evoke the power of the former Roman Empire. Vatican City, headquarters of the Roman Catholic Church, has St. Peter’s Basilica and the Vatican Museums, which house masterpieces such as Michelangelo’s Sistine Chapel frescoes.', 'The Pantheon is a former Roman temple, now a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.', 'The Vatican Museums are the public art and sculpture museums in the Vatican City. They display works from the immense collection amassed by the Roman Catholic Church.', 'The Pantheon is a former Roman temple, now a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.', 'Piazza Navona is a public space/plaza in Rome, Italy. It is built on the site of the Stadium of Domitian, built in the 1st century AD, and follows the form of the open space of the stadium.', 'NULL', 'NULL'),
(2, 'Italy', 3, 89998, 5, 'Venice', 'pics/venice1.jpg', 'pics/venice2.jpg', 'Venice, the capital of northern Italy’s Veneto region, is built on more than 100 small islands in a lagoon in the Adriatic Sea. It has no roads, just canals – including the Grand Canal thoroughfare – lined with Renaissance and Gothic palaces. The central square, Piazza San Marco, contains St. Mark’s Basilica, which is tiled with Byzantine mosaics, and the Campanile bell tower offering views of the city’s red roofs.', 'The Pantheon is a former Roman temple, now a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.', 'The Vatican Museums are the public art and sculpture museums in the Vatican City. They display works from the immense collection amassed by the Roman Catholic Church.', 'The Pantheon is a former Roman temple, now a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.', 'NULL', 'NULL', 'NULL'),
(3, 'Italy', 4, 129498, 5, 'Florence', 'pics/florence1.jpg', 'pics/florence2.jpg', 'Florence, capital of Italy’s Tuscany region, is home to many masterpieces of Renaissance art and architecture. One of its most iconic sights is the Duomo, a cathedral with a terracotta-tiled dome engineered by Brunelleschi and a bell tower by Giotto. The Galleria dell\'Accademia displays Michelangelo’s “David” sculpture. The Uffizi Gallery exhibits Botticelli’s “The Birth of Venus” and da Vinci’s “Annunciation.”', 'The Palazzo Pitti, in English sometimes called the Pitti Palace, is a vast, mainly Renaissance, palace in Florence, Italy. It is situated on the south side of the River Arno, a short distance from the', 'The Vatican Museums are the public art and sculpture museums in the Vatican City. They display works from the immense collection amassed by the Roman Catholic Church.', 'The Pantheon is a former Roman temple, now a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.', 'Piazza Navona is a public space/plaza in Rome, Italy. It is built on the site of the Stadium of Domitian, built in the 1st century AD, and follows the form of the open space of the stadium.', 'NULL', 'NULL'),
(4, 'Italy', 5, 99959, 5, 'Pisa', 'pics/pida1.jpg', 'pics/pisa2.jpg', 'The Leaning Tower of Pisa or simply the Tower of Pisa is the campanile, or freestanding bell tower, of the cathedral of the Italian city of Pisa, known worldwide for its nearly four-degree lean, the result of an unstable foundation.The tower began to lean during construction in the 12th century, due to soft ground which could not properly support the structure\'s weight, and it worsened through the completion of construction in the 14th century. By 1990 the tilt had reached 5.5 degrees.', 'The Leaning Tower of Pisa: all the facts and informations about the famous tower in Italy. Tickets and Guided Tours reservation, Book now & Skip the Line.', 'The Vatican Museums are the public art and sculpture museums in the Vatican City. They display works from the immense collection amassed by the Roman Catholic Church.', 'The Pantheon is a former Roman temple, now a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.', 'Piazza Navona is a public space/plaza in Rome, Italy. It is built on the site of the Stadium of Domitian, built in the 1st century AD, and follows the form of the open space of the stadium.', 'The Leaning Tower of Pisa may be the world\'s greatest spot for a tourist photo, but there\'s a lot more to this centuries-old icon than lighthearted images of your friends and family \"holding up\" the t', 'NULL'),
(5, 'Dubai', 2, 139499, 5, 'The Dubai Mall', 'pics/1.jpg', 'pics/3.jfif', 'The Dubai Mall is a shopping mall in Dubai. It is the second largest mall by total land area, and the 26th-largest shopping mall in the world by gross leasable area, tying with West Edmonton Mall and Fashion Island —both of which are older than it. It has a total retail floor area of 502,000 square metres. Located in Dubai, United Arab Emirates, it is part of the 20-billion-dollar Downtown complex, and includes over 1,200 shops. In 2011, it was the most visited building on the planet, attracting over 54 million visitors each year. Access to the mall is provided via Doha Street, rebuilt as a double-decker road in April 2009. Twice delayed, Dubai Mall opened on 4 November 2008,.', 'The Pantheon is a former Roman temple, now a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.', 'The Vatican Museums are the public art and sculpture museums in the Vatican City. They display works from the immense collection amassed by the Roman Catholic Church.', 'NULL', 'NULL', 'NULL', 'NULL'),
(6, 'Dubai', 2, 125699, 4, 'Burj Khalifa', 'pics/unnamed2.jpg', 'pics/images_eUWNjt6.jfif', 'The Burj Khalifa, known as the Burj Dubai prior to its inauguration in 2010, is a skyscraper in Dubai, United Arab Emirates. With a total height of 829.8 m and a roof height of 828 m, the Burj Khalifa has been the tallest structure and building in the world since its topping out in 2009. Construction of the Burj Khalifa began in 2004, with the exterior completed five years later in 2009. The primary structure is reinforced concrete. The building was opened in 2010 as part of a new development called Downtown Dubai. It is designed to be the centrepiece of large-scale, mixed-use development.', 'The Palazzo Pitti, in English sometimes called the Pitti Palace, is a vast, mainly Renaissance, palace in Florence, Italy. It is situated on the south side of the River Arno, a short distance from the', 'The Vatican Museums are the public art and sculpture museums in the Vatican City. They display works from the immense collection amassed by the Roman Catholic Church.', 'NULL', 'NULL', 'NULL', 'NULL'),
(7, 'Dubai', 3, 120000, 5, 'Dubai Marina', 'pics/unnamed3.jpg', 'pics/4.jfif', 'Dubai Marina is a district in Dubai, United Arab Emirates. Dubai Marina is an artificial canal city, built along a 3-kilometre stretch of Persian Gulf shoreline. As of 2016, it has a population of 45,395. When the entire development is complete, it will accommodate more than 120,000 people in residential towers and villas. It is located on Interchange 5 between Jebel Ali Port and the area which hosts Dubai Internet City, Dubai Media City, and the American University in Dubai. The first phase of this project has been completed.', 'The Pantheon is a former Roman temple, now a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.', 'The Vatican Museums are the public art and sculpture museums in the Vatican City. They display works from the immense collection amassed by the Roman Catholic Church.', 'The Pantheon is a former Roman temple, now a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.', 'NULL', 'NULL', 'NULL'),
(8, 'Dubai', 2, 115799, 5, 'Kite Beach by Meraas', 'pics/kit.jfif', 'pics/kiy1.jfif', 'Kite Beach is one of the most dynamic beaches in Dubai, with calm family-friendly waters in the mornings and rolling blue waves in the afternoons that make for perfect water sports conditions.\r\nYou can also see the Burj al Arab from a distance.', 'The Palazzo Pitti, in English sometimes called the Pitti Palace, is a vast, mainly Renaissance, palace in Florence, Italy. It is situated on the south side of the River Arno, a short distance from the', 'The Vatican Museums are the public art and sculpture museums in the Vatican City. They display works from the immense collection amassed by the Roman Catholic Church.', 'NULL', 'NULL', 'NULL', 'NULL'),
(9, 'USA', 4, 115699, 5, 'New York', 'pics/newyork.jpg', 'pics/newyork_dSF7hzL.jpg', 'New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park.', 'you will see the Statue of Liberty.The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York, in the United States.', 'This day you will explore the very large city Times square,Where you are meet with local public and religion of city.', 'You are visiting Empire State Building,Which has very high popularity.It,s very high skyscrapper.', 'On This Day you will see Rockefeller Center.Rockefeller Center is a large complex consisting of 19 commercial buildings covering 22 acres between 48th Street and 51st Street in Midtown Manhattan.', 'NULL', 'NULL'),
(10, 'USA', 3, 125499, 5, 'Las Vegas', 'pics/las_vegsa_370x253.jpg', 'pics/las_vegas.jpg', 'Las Vegas, officially the City of Las Vegas and often known simply as Vegas, is the 28th-most populated city in the United States, the most populated city in the state of Nevada, and the county seat of Clark County.It is the also known as agrumbling home.It is the city of hotels and casino,s but it is also good for trip with familyas well as couples.', 'First day you will Stay at Luxor Hotel& casino.Housed in a 30-story pyramid topped with a 315,000-watt light beam, this vibrant Egypt-themed casino resort on the south end of the Strip is 2 miles.', 'Second day You will visit spring valley in Las vegas which has long history of acient time.Las vegass is also known as grumbler home.', 'Third day you will visit local mall and city and explore it and know the religion and culture of city.', 'NULL', 'NULL', 'NULL'),
(11, 'Australia', 5, 119998, 5, 'Isaland', 'pics/unnamed13.jpg', 'pics/unnamed6.jpg', 'Australia is a country and continent surrounded by the Indian and Pacific oceans. Its major cities – Sydney, Brisbane, Melbourne, Perth, Adelaide – are coastal. Its capital, Canberra, is inland. The country is known for its Sydney Opera House, the Great Barrier Reef, a vast interior desert wilderness called the Outback, and unique animal.', 'The Whitsunday Islands are a collection of 74 continental islands of various sizes off the central coast of Queensland, Australia, approximately 900 kilometres north of Brisbane.', 'Port Jackson, consisting of the waters of Sydney Harbour, Middle Harbour, North Harbour and the Lane Cove and Parramatta Rivers, is the ria or natural harbour of Sydney, New South Wales, Australia.', 'Cape Tribulation is a headland and coastal locality in the Shire of Douglas in northern Queensland, Australia.It is one of the Isaland of Australia.', 'The Daintree Rainforest is a region on the northeast coast of Queensland, Australia, north of Mossman and Cairns.It is very huge forest.', 'Sea World is a marine mammal park, oceanarium, and theme park located on the Gold Coast, Queensland.Here you can enjoy watch of Dolphines.', 'NULL'),
(12, 'Australia', 4, 159999, 5, 'Lord Howe Island', 'pics/unnamed15.jpg', 'pics/unnamed.jpg', 'Lord Howe Island is an irregularly crescent-shaped volcanic remnant in the Tasman Sea between Australia and New Zealand, 600 km directly east of mainland Port Macquarie, 780 km northeast of Sydney, and about 900 km southwest of Norfolk Island. It is about 10 km long and between 0.3 and 2.0 km wide with an area of 14.55 km², though just 3.98 km² of that comprise the low-lying developed part of the island.', 'First day you have to rest in hotel and enjoy it\'s local food.', 'From Second day you are staying and outing in the Island .', 'You are going to Beach party and playing games ,eating food and Enjoy holidays.', 'Last day you are explore the local market of the Island and free to go to beach and do whatever you want.', 'NULL', 'NULL'),
(13, 'Europe', 6, 15799, 5, 'Switzerland', 'pics/swit.jpg', 'pics/swit_aSUsOoc.jpg', 'Switzerland is a mountainous Central European country, home to numerous lakes, villages and the high peaks of the Alps. Its cities contain medieval quarters, with landmarks like capital Bern’s Zytglogge clock tower and Lucerne’s wooden chapel bridge. The country is also known for its ski resorts and hiking trails.', 'Lucerne, a compact city in Switzerland known for its preserved medieval architecture, sits amid snowcapped mountains on Lake Lucerne. Its colorful Altstadt (Old Town) is bordered on the north by 870m', 'Bern, the capital city of Switzerland, is built around a crook in the Aare River. It traces its origins back to the 12th century, with medieval architecture preserved in the Altstadt (Old Town).', 'Zermatt, in southern Switzerland’s Valais canton, is a mountain resort renowned for skiing, climbing and hiking. The town, at an elevation of around 1,600m, lies below the iconic, pyramid-shaped.', 'nterlaken is a traditional resort town in the mountainous Bernese Oberland region of central Switzerland. Built on a narrow stretch of valley, between the emerald-colored waters of Lake Thun and Lake.', 'Grindelwald, a village in Switzerland’s Bernese Alps, is a popular gateway for the Jungfrau Region, with skiing in winter and hiking in summer.', 'Lauterbrunnen is a municipality in the Swiss Alps. It encompasses the village of Lauterbrunnen, set in a valley featuring rocky cliffs and the roaring, 300m-­high Staubbach Falls.'),
(14, 'Europe', 6, 24999, 5, 'United Kingdom', 'pics/unnamed_1.jpg', 'pics/urop_17Y5Bhy.jpg', 'The United Kingdom, made up of England, Scotland, Wales and Northern Ireland, is an island nation in northwestern Europe. England – birthplace of Shakespeare and The Beatles – is home to the capital, London, a globally influential centre of finance and culture. England is also site of Neolithic Stonehenge, Bath’s Roman spa and centuries-old universities.', 'London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times. At its centre stand the imposing Houses of Parliament.', 'Manchester is a major city in the northwest of England with a rich industrial heritage. The Castlefield conservation area’s 18th-century canal system recalls the city’s days as a textile powerhouse.', 'Liverpool is a maritime city in northwest England, where the River Mersey meets the Irish Sea. A key trade and migration port from the 18th to the early 20th centuries.', 'At London\'s centre stand the imposing Houses of Parliament, the iconic ‘Big Ben’ clock tower and Westminster Abbey, site of British monarch coronations.', 'York is a walled city in northeast England that was founded by the ancient Romans. Its huge 13th-century Gothic cathedral, York Minster.', 'Looming over the city is Edinburgh Castle, home to Scotland’s crown jewels and the Stone of Destiny, used in the coronation of Scottish rulers.'),
(15, 'India', 5, 60000, 5, 'north East India', 'pics/a_hjQyFC9.png', 'pics/shilong.jpg_UyZUzfF.png', 'Explore Meghalaya\'s lush landscapes and vibrant culture, where every step unveils a world of natural wonders and rich traditions.\r\n\r\nWitness the majestic one-horned rhinoceros, an iconic symbol of Kaziranga National Park, as you embark on thrilling safaris through its vast grasslands and wetlands.\r\n\r\nMarvel at the breathtaking views of Mawkdok Dympep Valley\'s lush hills and cascading waterfalls, offering an escape from the hustle and bustle of city life.\r\n\r\nDiscover the rich history of Arwah Cave, which served as a natural shelter for indigenous tribes and holds archaeological treasures dating back thousands of years.', 'Arrival in Guwahati | Transfer to Kaziranga Khublei! Welcome to Meghalaya. After touchdown at Guwahati airport, you will board your transfer for a scenic journey, passing by tea plantations, to your p', 'Kaziranga National Park Safari Experience | Transfer to Shillong After check-out from camp/lodge in Kaziranga, you\'ll embark on a thrilling jeep safari at Kaziranga National Park, where you\'ll have th', 'Shillong Sightseeing Tour | Transfer to Cherrapunji Check-out and hop on your transfer for a sightseeing tour of Shillong. Discover the majestic  Elephant Falls  and enjoy the panoramic views at Mawkd', 'Trekking at Nongriat In the morning, board your transfer for an exciting Nongriat Trek. As you ascend the trek, along the journey, experience the beauty of Tyrna Village and discover Meghalaya\'s rich', 'Mawlynnong Sightseeing Tour | Transfer to Dawki In the morning, check-out from your hotel in Cherrapunji and board your transfer to Dawki. En route you will visit Mawlynnong, acclaimed as the cleanest', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `travello_netbanking`
--

CREATE TABLE `travello_netbanking` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(14) NOT NULL,
  `Bank` varchar(25) NOT NULL,
  `Balance` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travello_netbanking`
--

INSERT INTO `travello_netbanking` (`Username`, `Password`, `Bank`, `Balance`) VALUES
('1234 1234 1234 1234', '11111111', 'Bank of Baroda', '1000000'),
('2345 2345 2345 2345', '12121212', 'Bank of India', '5000000'),
('6351483388', '123456', 'State Bank of India', '148324'),
('8160668792', 'jay1234', 'Bank of Baroda', '70800'),
('8218077221', 'deepak123', 'Bank of Baroda', '29498'),
('9712345678', '123456', 'State Bank of India', '18642');

-- --------------------------------------------------------

--
-- Table structure for table `travello_pessanger_detail`
--

CREATE TABLE `travello_pessanger_detail` (
  `Trip_id` int(11) NOT NULL,
  `Trip_same_id` int(11) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `age` int(11) NOT NULL,
  `Trip_date` date NOT NULL,
  `payment` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pay_done` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travello_pessanger_detail`
--

INSERT INTO `travello_pessanger_detail` (`Trip_id`, `Trip_same_id`, `first_name`, `last_name`, `age`, `Trip_date`, `payment`, `username`, `city`, `pay_done`) VALUES
(1, 60, 'joshi_123', 'shah', 24, '2024-04-11', 43000, 'sejal', 'ahm', 3800028),
(99, 59, 'deepak', 'pandey', 20, '2024-04-25', 24999, '8218077221', 'United Kingdom', 0);

-- --------------------------------------------------------

--
-- Table structure for table `travello_transactions`
--

CREATE TABLE `travello_transactions` (
  `Transactions_ID` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `Trip_same_id` int(11) NOT NULL,
  `Amount` varchar(8) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Payment_method` varchar(15) NOT NULL,
  `Date_Time` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travello_transactions`
--

INSERT INTO `travello_transactions` (`Transactions_ID`, `username`, `Trip_same_id`, `Amount`, `Status`, `Payment_method`, `Date_Time`) VALUES
(1, '9712345678', 39, '18642', 'Successfull', 'NetBanking', '2024-04-13 11:10:35'),
(2, '6351483388', 46, '148324', 'Successfull', 'Debit card', '2024-04-13 13:43:30');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `travello_cards`
--
ALTER TABLE `travello_cards`
  ADD PRIMARY KEY (`Card_number`);

--
-- Indexes for table `travello_destination`
--
ALTER TABLE `travello_destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travello_detailed_desc`
--
ALTER TABLE `travello_detailed_desc`
  ADD PRIMARY KEY (`dest_id`);

--
-- Indexes for table `travello_netbanking`
--
ALTER TABLE `travello_netbanking`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `travello_pessanger_detail`
--
ALTER TABLE `travello_pessanger_detail`
  ADD PRIMARY KEY (`Trip_id`);

--
-- Indexes for table `travello_transactions`
--
ALTER TABLE `travello_transactions`
  ADD PRIMARY KEY (`Transactions_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `travello_detailed_desc`
--
ALTER TABLE `travello_detailed_desc`
  MODIFY `dest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `travello_pessanger_detail`
--
ALTER TABLE `travello_pessanger_detail`
  MODIFY `Trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `travello_transactions`
--
ALTER TABLE `travello_transactions`
  MODIFY `Transactions_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
