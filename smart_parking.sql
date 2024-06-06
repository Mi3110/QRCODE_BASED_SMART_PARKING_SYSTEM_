-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 18, 2023 at 11:15 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_parking`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user model', 7, 'add_usermodel'),
(26, 'Can change user model', 7, 'change_usermodel'),
(27, 'Can delete user model', 7, 'delete_usermodel'),
(28, 'Can view user model', 7, 'view_usermodel'),
(29, 'Can add booking slots', 8, 'add_bookingslots'),
(30, 'Can change booking slots', 8, 'change_bookingslots'),
(31, 'Can delete booking slots', 8, 'delete_bookingslots'),
(32, 'Can view booking slots', 8, 'view_bookingslots'),
(33, 'Can add user feedback', 9, 'add_userfeedback'),
(34, 'Can change user feedback', 9, 'change_userfeedback'),
(35, 'Can delete user feedback', 9, 'delete_userfeedback'),
(36, 'Can view user feedback', 9, 'view_userfeedback'),
(37, 'Can add add parking slots', 10, 'add_addparkingslots'),
(38, 'Can change add parking slots', 10, 'change_addparkingslots'),
(39, 'Can delete add parking slots', 10, 'delete_addparkingslots'),
(40, 'Can view add parking slots', 10, 'view_addparkingslots');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_slots`
--

DROP TABLE IF EXISTS `booking_slots`;
CREATE TABLE IF NOT EXISTS `booking_slots` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `parking_date` date NOT NULL,
  `in_time` datetime(6) DEFAULT NULL,
  `out_time` datetime(6) DEFAULT NULL,
  `total_parking_time` varchar(1000) DEFAULT NULL,
  `total_charges` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `slot_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `booking_slots_slot_id_e1fbf3f5` (`slot_id`),
  KEY `booking_slots_user_id_f00a1610` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_slots`
--

INSERT INTO `booking_slots` (`booking_id`, `parking_date`, `in_time`, `out_time`, `total_parking_time`, `total_charges`, `status`, `slot_id`, `user_id`) VALUES
(4, '2023-01-18', '2023-01-18 10:34:08.006535', NULL, NULL, 0, 'checkIn', 2, 2),
(3, '2023-01-18', '2023-01-18 10:33:54.197530', '2023-01-18 10:37:23.356592', '1', 50, 'check_out', 2, 2),
(5, '2023-01-18', '2023-01-18 10:35:13.771538', '2023-01-18 10:36:02.694148', '1', 50, 'check_out', 2, 1),
(6, '2023-01-18', '2023-01-18 10:58:14.545430', '2023-01-18 10:58:39.960690', '1', 50, 'check_out', 2, 1),
(7, '2023-01-18', '2023-01-18 10:58:30.105623', '2023-01-18 11:09:05.095354', '1', 50, 'checkIn', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userapp', 'usermodel'),
(8, 'userapp', 'bookingslots'),
(9, 'userapp', 'userfeedback'),
(10, 'adminapp', 'addparkingslots');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-18 10:10:58.582547'),
(2, 'auth', '0001_initial', '2023-01-18 10:10:58.864323'),
(3, 'admin', '0001_initial', '2023-01-18 10:10:58.939710'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-18 10:10:58.946690'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-18 10:10:58.952913'),
(6, 'adminapp', '0001_initial', '2023-01-18 10:10:58.964001'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-01-18 10:10:59.010777'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-01-18 10:10:59.035695'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-01-18 10:10:59.056672'),
(10, 'auth', '0004_alter_user_username_opts', '2023-01-18 10:10:59.065615'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-01-18 10:10:59.086589'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-01-18 10:10:59.088553'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-01-18 10:10:59.095534'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-01-18 10:10:59.116946'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-01-18 10:10:59.138889'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-01-18 10:10:59.159645'),
(17, 'auth', '0011_update_proxy_permissions', '2023-01-18 10:10:59.168135'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-01-18 10:10:59.189511'),
(19, 'sessions', '0001_initial', '2023-01-18 10:10:59.217436'),
(20, 'userapp', '0001_initial', '2023-01-18 10:10:59.304206'),
(21, 'userapp', '0002_userfeedback', '2023-01-18 10:10:59.396957');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parking_slots`
--

DROP TABLE IF EXISTS `parking_slots`;
CREATE TABLE IF NOT EXISTS `parking_slots` (
  `slot_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `total_slots` int(11) DEFAULT NULL,
  `available_slots` int(11) DEFAULT NULL,
  `booked_slots` int(11) DEFAULT NULL,
  `parking_session` varchar(100) NOT NULL,
  `booking_start_time` varchar(100) NOT NULL,
  `booking_end_time` varchar(100) NOT NULL,
  `pin_number` varchar(10) NOT NULL,
  `parking_charge` int(11) DEFAULT NULL,
  `qr_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`slot_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking_slots`
--

INSERT INTO `parking_slots` (`slot_id`, `location`, `phone_number`, `total_slots`, `available_slots`, `booked_slots`, `parking_session`, `booking_start_time`, `booking_end_time`, `pin_number`, `parking_charge`, `qr_code`) VALUES
(2, 'KPHB colony', '9052078865', 16, 15, 1, '24/7', '08:00AM', '08:00PM', '500074', 50, 'qr_images/KPHB_colony_slot_qr_td7SYZ6.png'),
(3, 'Dilsukhnagar', '9052078865', 20, 20, 0, '24/7', '08:00AM', '08:00PM', '098765', 50, 'qr_images/Dilsukhnagar_slot_qr_1eGREuP.png');

-- --------------------------------------------------------

--
-- Table structure for table `user-feedback`
--

DROP TABLE IF EXISTS `user-feedback`;
CREATE TABLE IF NOT EXISTS `user-feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `feedback_sentiment` varchar(100) NOT NULL,
  `booking_experience` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `User-Feedback_slot_id_95af98e2` (`slot_id`),
  KEY `User-Feedback_user_id_86dda1bb` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user-feedback`
--

INSERT INTO `user-feedback` (`feedback_id`, `comment`, `feedback_sentiment`, `booking_experience`, `slot_id`, `user_id`) VALUES
(1, 'Not Bad nice staff', 'Positive', 2, 1, 1),
(2, 'good place to park the vehicle', 'very Positive', 2, 5, 1),
(3, 'Not good  place this is staff not responding properly', 'Negative', 2, 3, 2),
(4, 'Not bad', 'Positive', 1, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `city` varchar(200) NOT NULL,
  `vehicle_type` varchar(200) NOT NULL,
  `vehicle_number` varchar(300) NOT NULL,
  `license_number` varchar(300) NOT NULL,
  `profile` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `full_name`, `email`, `password`, `phone`, `city`, `vehicle_type`, `vehicle_number`, `license_number`, `profile`) VALUES
(1, 'vijaya kumar', 'vijayakumar.t328@gmail.com', '93mc669f', '7842505334', 'DilshuckNagar', 'truck', 'TS09PB2381', 'DLFAP022105712010', 'images/vijay_1_2.jpg'),
(2, 'Kumar', 'vijaytammisetty704@gmail.com', 'C67gs222', '7995006079', 'LB Nagar', 'car', 'TS09PB2381', 'DLFAP022105712010', 'images/IMG_20171019_181033.jpg'),
(3, 'Arjun', 'arjun@gmail.com', 'p33dKZJ1', '9087654321', 'LB Nagar', 'Bike', 'TShdn35709', '53637382njdk', 'images/nithin.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
