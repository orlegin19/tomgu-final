-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 06:19 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rios_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert_msg`
--

CREATE TABLE `alert_msg` (
  `id` int(30) NOT NULL,
  `form_id` int(30) NOT NULL,
  `alert_type` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `voucher_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('eb2e77deffmq0aukdnovdndqqc1b6u94', '::1', 1690632945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303633323934353b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b),
('hmu514u3q255u05ba203a797plm7qcmb', '::1', 1690633248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303633333234383b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b),
('75o7rqmqli566tgdp2kcpji3lcrkdath', '::1', 1690634149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303633343134393b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b),
('bs3st29ovhdc3to36q6v62vgr1ttltmv', '::1', 1690634922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303633343932323b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b),
('0ojgqptq5gdmashr39h3ejvq3qfon4d6', '::1', 1690635244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303633353234343b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b),
('l7foipifns1rhte3pf69rq6763pjofoe', '::1', 1690635729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303633353732393b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b),
('6i4godpipgak4h3j9272v422h52fljqb', '::1', 1690636139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303633363133393b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b),
('cj3e2o7ugo27qou48umvf7pce7rve4cs', '::1', 1690636483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303633363438333b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b),
('fq24gtdfs23d56schveaqdaslerspld7', '::1', 1690637316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303633373331363b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b),
('gpfco40tmcps7svaa3m79u0g10nem1v0', '::1', 1690637421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303633373432313b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d),
('67cdmndr444964aqbhsj7i4u479v5sq4', '::1', 1690690063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303639303036333b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b),
('dhmoi3h3r8l2l44k8qp248b45u1b6453', '::1', 1690690499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303639303439393b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b),
('l7ul3fba5irf73akso86gq4k38jlcspm', '::1', 1690690683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639303639303439393b73797374656d7c613a363a7b733a343a226e616d65223b733a303a22223b733a353a227469746c65223b733a31303a2243616c6c65204c756e61223b733a373a2261646472657373223b733a36333a22506c61726964656c2d416e746f6e696f204c756e612053742e2c20427267792e20312c2053696c617920436974792c204e65672e204f63632e2c2036313136223b733a363a2266625f75726c223b733a33393a2268747470733a2f2f7777772e66616365626f6f6b2e636f6d2f63616c6c656c756e61303832312f223b733a353a22656d61696c223b733a32333a2263616c6c656c756e6130383231407961686f6f2e636f6d223b733a343a226c6f676f223b733a33363a2275706c6f6164732f32303230313231393037343634365f72696f735f6c6f676f2e69636f223b7d757365725f69647c733a313a2238223b66697273746e616d657c733a363a22546f6d677520223b6c6173746e616d657c733a363a22537175617265223b6163636573735f746f6b656e7c733a303a22223b70686f6e655f6e756d6265727c733a303a22223b656d61696c7c733a353a2261646d696e223b747970657c733a313a2231223b7374617475737c733a313a2231223b64656c6574655f666c61677c733a313a2230223b646174655f637265617465647c733a31393a22323032302d30352d30362030303a30343a3137223b);

-- --------------------------------------------------------

--
-- Table structure for table `for_delivery`
--

CREATE TABLE `for_delivery` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unread,1=read',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = user to admin, 1 = admin to user\r\n',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `ref_id` text NOT NULL,
  `onum` text NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=dine-in, 2=take-out, 3=Delivery, 4= pickup',
  `status` int(11) NOT NULL,
  `amount` text NOT NULL,
  `location` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `landmark` text NOT NULL,
  `discount` text NOT NULL,
  `total_amount` text NOT NULL,
  `remarks` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_id`, `onum`, `type`, `status`, `amount`, `location`, `user_id`, `landmark`, `discount`, `total_amount`, `remarks`, `created_date`) VALUES
(1, 'ZEN-2148', '', 1, 0, '275.00', '', 8, '', '', '275.00', '', '2023-07-27 20:35:02'),
(2, 'HBF-1724', '', 1, 0, '275.00', '', 8, '', '', '275.00', '', '2023-07-28 09:28:37'),
(3, 'OMG-4574', '', 1, 0, '245.00', '', 8, '', '', '245.00', '', '2023-07-28 09:29:17'),
(4, 'OQD-2475', '', 1, 0, '510.00', '', 8, '', '', '510.00', '', '2023-07-28 09:37:31'),
(7, 'RVO-5597', '', 1, 0, '785.00', '', 8, '', '', '785.00', '', '2023-07-29 14:10:05'),
(8, 'PRD-1174', '', 1, 0, '20.00', '', 8, '', '', '20.00', '', '2023-07-29 14:24:04'),
(9, 'GAV-7095', '', 1, 0, '285.00', '', 8, '', '', '285.00', '', '2023-07-30 12:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `price` text NOT NULL,
  `qty` int(30) NOT NULL,
  `total_amount` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `price`, `qty`, `total_amount`, `status`, `date_created`) VALUES
(1, 1, 5, '65', 1, '65', 1, '2023-07-27 20:35:02'),
(2, 1, 3, '210', 1, '210', 1, '2023-07-27 20:35:02'),
(3, 2, 5, '65', 1, '65', 1, '2023-07-28 09:28:37'),
(4, 2, 3, '210', 1, '210', 1, '2023-07-28 09:28:37'),
(5, 3, 8, '35', 1, '35', 1, '2023-07-28 09:29:17'),
(6, 3, 3, '210', 1, '210', 1, '2023-07-28 09:29:17'),
(7, 4, 11, '300', 1, '300', 1, '2023-07-28 09:37:31'),
(8, 4, 3, '210', 1, '210', 1, '2023-07-28 09:37:31'),
(11, 7, 20, '35', 1, '35', 1, '2023-07-29 14:10:05'),
(12, 7, 23, '20', 1, '20', 1, '2023-07-29 14:10:05'),
(13, 7, 49, '180', 1, '180', 1, '2023-07-29 14:10:05'),
(14, 7, 67, '220', 1, '220', 1, '2023-07-29 14:10:05'),
(15, 7, 56, '160', 1, '160', 1, '2023-07-29 14:10:05'),
(16, 7, 39, '170', 1, '170', 1, '2023-07-29 14:10:05'),
(17, 8, 19, '20', 1, '20', 1, '2023-07-29 14:24:04'),
(18, 9, 18, '250', 1, '250', 1, '2023-07-30 12:03:31'),
(19, 9, 20, '35', 1, '35', 1, '2023-07-30 12:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `pt_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` text NOT NULL,
  `img_path` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `pt_id`, `status`, `price`, `img_path`, `date_created`) VALUES
(18, 'GRILLED TUNA PANGA', 'Seafood', 7, 1, '250', 'uploads/products/202307290746_tomgu.jpg', '2023-07-28 21:04:38'),
(19, 'WATER', 'Drink', 2, 1, '20', 'uploads/products/202307291027_WATER.jpg', '2023-07-29 11:20:16'),
(20, 'VITAMILK', 'Drink', 2, 1, '35', 'uploads/products/202307291030_vitamilk.jpg', '2023-07-29 11:24:15'),
(21, 'COBRA', 'Drink', 2, 1, '20', 'uploads/products/202307291029_cobra.webp', '2023-07-29 11:26:31'),
(22, 'COKE', 'Drink', 2, 1, '20', 'uploads/products/202307291032_coke.webp', '2023-07-29 11:27:29'),
(23, 'ROYAL', 'Drink', 2, 1, '20', 'uploads/products/202307291033_royal.webp', '2023-07-29 11:28:34'),
(24, 'NESTEA', 'Drink', 2, 1, '35', 'uploads/products/202307291033_nestea.webp', '2023-07-29 11:31:26'),
(25, 'HEINEKEN', 'Drink', 2, 1, '70', 'uploads/products/202307291036_hiekin.webp', '2023-07-29 11:33:00'),
(26, 'TIGER CAN', 'Drink', 2, 1, '65', 'uploads/products/202307291457_tiger.webp', '2023-07-29 11:34:19'),
(27, 'BREW KETTLE', 'Drink', 2, 1, '65', 'uploads/products/202307291456_brewbeeer.webp', '2023-07-29 11:35:26'),
(28, 'TANDUAY ICE', 'Drink', 2, 1, '45', 'uploads/products/202307291454_tanduayice.jpg', '2023-07-29 11:36:40'),
(29, 'COLT 45', 'Drink', 2, 1, '50', 'uploads/products/202307291450_colt45.jpg', '2023-07-29 11:37:20'),
(30, 'BEER NA BEER (LITRO)', 'Drink', 2, 1, '100', 'uploads/products/202307291502_beer.jpg', '2023-07-29 11:38:21'),
(31, 'RH LITRO', 'Drink', 2, 1, '140', 'uploads/products/202307291508_rh.jpg', '2023-07-29 11:39:37'),
(32, 'SAN MIG LIGHT ', 'Drink', 2, 1, '65', 'uploads/products/202307291510_sanmig.webp', '2023-07-29 11:40:40'),
(33, 'SAN MIG FLAVORED', 'Drink', 2, 1, '60', 'uploads/products/202307291512_san.jpg', '2023-07-29 11:41:38'),
(34, 'PILSEN', 'Drink', 2, 1, '60', 'uploads/products/202307291514_pilsen.jpg', '2023-07-29 11:42:30'),
(35, 'GRANDE ', 'Drink', 2, 1, '140', 'uploads/products/202307291024_GRANDE.webp', '2023-07-29 11:43:05'),
(36, 'PORNSTAR', 'Drink', 2, 1, '190', 'uploads/products/202307291528_pornstar.jpg', '2023-07-29 11:45:03'),
(37, 'C2', 'Drink', 2, 1, '20', 'uploads/products/202307291515_c2.jpg', '2023-07-29 11:45:50'),
(38, 'CHOP SUEY ', 'Vegetable', 14, 1, '200', 'uploads/products/202307290554_tomgu.jpg', '2023-07-29 11:47:17'),
(39, 'BAM-I', 'Noodles', 14, 1, '170', 'uploads/products/202307290550_tomgu.jpg', '2023-07-29 11:50:19'),
(40, 'BIHON', 'Noodle', 14, 1, '170', 'uploads/products/202307290555_tomgu.jpg', '2023-07-29 11:55:17'),
(41, 'LOMI', 'Noodles', 14, 1, '170', 'uploads/products/202307290556_tomgu.jpg', '2023-07-29 11:56:40'),
(42, 'FRIES', 'Snack', 9, 1, '65', 'uploads/products/202307290558_tomgu.jpg', '2023-07-29 11:58:44'),
(43, 'SPAGHETTI', 'Snack', 9, 1, '80', 'uploads/products/202307290600_tomgu.jpg', '2023-07-29 12:00:14'),
(44, 'CARBONARA', 'Snack', 9, 1, '110', 'uploads/products/202307290601_tomgu.jpg', '2023-07-29 12:01:44'),
(45, 'CHICKEN NUGGETS', 'Snack', 9, 1, '90', 'uploads/products/202307290602_tomgu.jpg', '2023-07-29 12:02:40'),
(46, 'GRILLED CHEESE', 'Snacks', 9, 1, '80', 'uploads/products/202307290606_tomgu.jpg', '2023-07-29 12:06:29'),
(47, 'TUNA PASTA', 'Snacks', 9, 1, '130', 'uploads/products/202307290607_tomgu.jpg', '2023-07-29 12:07:25'),
(48, 'NACHOS', 'Snacks', 9, 1, '200', 'uploads/products/202307291012_nachos.jpg', '2023-07-29 12:08:27'),
(49, 'MOZA BALLS', 'Snacks', 9, 1, '180', 'uploads/products/202307290609_tomgu.jpg', '2023-07-29 12:09:55'),
(50, 'QUESADILLA', 'Snacks', 9, 1, '220', 'uploads/products/202307290611_tomgu.jpg', '2023-07-29 12:11:04'),
(51, 'TUNA WRAP', 'Snacks', 9, 1, '100', 'uploads/products/202307290611_tomgu.jpg', '2023-07-29 12:11:56'),
(52, 'CHICKEN WRAP', 'Snacks', 9, 1, '100', 'uploads/products/202307290612_tomgu.jpg', '2023-07-29 12:12:32'),
(53, 'BURGER STEAK', 'Pork', 11, 1, '130', 'uploads/products/202307290954_burgersteak.jpg', '2023-07-29 13:01:26'),
(54, 'PORK SISIG', 'Pork', 11, 1, '160', 'uploads/products/202307290954_porksisig.jpg', '2023-07-29 13:03:06'),
(55, 'PORK STEAK', 'Pork', 11, 1, '220', 'uploads/products/202307290704_tomgu.jpg', '2023-07-29 13:04:01'),
(56, 'CHICKEN HALANG-HALANG', 'Poultry', 11, 1, '160', 'uploads/products/202307290736_tomgu.jpg', '2023-07-29 13:07:43'),
(57, 'SPICY WINGS', 'Poultry', 11, 1, '250', 'uploads/products/202307291007_spicychickenwing.jpg', '2023-07-29 13:17:10'),
(58, 'LECHON KAWALI', 'Pork', 11, 1, '210', 'uploads/products/202307290737_tomgu.jpg', '2023-07-29 13:21:03'),
(59, 'CHEWY CRISPY PORK', 'Pork', 11, 1, '220', 'uploads/products/202307290955_chewycrispypork.jpg', '2023-07-29 13:23:52'),
(60, 'SINIGANG NA  BABOY ', 'Pork', 11, 1, '280', 'uploads/products/202307290726_tomgu.jpg', '2023-07-29 13:26:10'),
(61, 'CHICKEN FEET', 'Poultry', 11, 1, '180', 'uploads/products/202307290956_chickenfeet.jpg', '2023-07-29 13:29:34'),
(62, 'LUMPIA', 'Pork', 11, 1, '190', 'uploads/products/202307290739_tomgu.jpg', '2023-07-29 13:32:19'),
(63, 'TOMGU RIBS', 'Pork', 11, 1, '280', 'uploads/products/202307290733_tomgu.jpg', '2023-07-29 13:33:21'),
(64, 'DYNAMITE', 'Pork', 11, 1, '160', 'uploads/products/202307290955_dynamite.jpg', '2023-07-29 13:34:35'),
(65, 'GRILLED TUNA BELLY', 'Seafood', 7, 1, '250', 'uploads/products/202307290745_tomgu.jpg', '2023-07-29 13:45:22'),
(66, 'FISH KANGKONG (STIR FRY)', 'Seafood', 7, 1, '220', 'uploads/products/202307290747_tomgu.jpg', '2023-07-29 13:47:17'),
(67, 'KALAMARES ORIGINAL', 'Seafood', 7, 1, '220', 'uploads/products/202307290747_tomgu.jpg', '2023-07-29 13:47:53'),
(68, 'KALAMARIS SWEET AND SPICY', 'Seafood', 7, 1, '230', 'uploads/products/202307291010_sweetandspicykalamaris.jpg', '2023-07-29 13:48:34'),
(69, 'CREAMY SPICY SCALLOP', 'Seafood', 7, 1, '160', 'uploads/products/202307291002_creamyspicyscallop.jpg', '2023-07-29 13:49:10'),
(70, 'SOUP NO.8 (SEA CUCUMBER)', 'Seafood', 7, 1, '220', 'uploads/products/202307290749_tomgu.jpg', '2023-07-29 13:49:53'),
(71, 'CHILLI CRAB (alimasag)', 'Seafood', 7, 1, '250', 'uploads/products/202307291006_tomgu.jpg.jpg', '2023-07-29 13:51:02'),
(72, 'CHILLI CRAB (kasag)', 'Seafood', 7, 1, '270', 'uploads/products/202307291007_chilicrab.jpg', '2023-07-29 13:53:30'),
(73, 'BRAISED SEA CUCUMBER', 'Seafood', 7, 1, '300', 'uploads/products/202307290755_tomgu.jpg', '2023-07-29 13:55:20'),
(74, 'SPICY BINGA', 'Seafood', 7, 1, '160', 'uploads/products/202307291005_spicybinga.jpg', '2023-07-29 13:56:34'),
(75, 'SPICY BILABID', 'Seafood', 7, 1, '160', 'uploads/products/202307291004_spicybilabid.jpg', '2023-07-29 13:57:59'),
(76, 'SHRIMP SINIGANG', 'Seafood', 7, 1, '300', 'uploads/products/202307290758_tomgu.jpg', '2023-07-29 13:58:50'),
(77, 'CRAB OMELETTE', 'Seafood', 7, 1, '140', 'uploads/products/202307290800_tomgu.jpg', '2023-07-29 14:00:03'),
(78, 'CREAMY FISH FILLET', 'Seafood', 7, 1, '190', 'uploads/products/202307291015_creamyfishfillet.jpg', '2023-07-29 14:01:10'),
(79, 'BAKED SCALLOP', 'Seafood', 7, 1, '190', 'uploads/products/202307291302_TUMGO.jpg', '2023-07-29 14:02:34'),
(80, 'CRISPY BANGUS', 'Seafood', 7, 1, '230', 'uploads/products/202307291014_bangus.jpg', '2023-07-29 14:03:35'),
(81, 'CRISPY COCONUT SHRIMP', 'Seafood', 7, 1, '280', 'uploads/products/202307290806_tomgu.jpg', '2023-07-29 14:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `status`, `date_created`) VALUES
(2, 'DRINKS', 1, '2020-04-04 23:50:23'),
(7, 'SEAFOOD ', 1, '2020-04-05 13:32:16'),
(9, 'SNACKS', 1, '2020-04-05 17:12:05'),
(11, 'PORK/POULTRY', 1, '2020-12-17 08:32:11'),
(14, 'NOODLES/VEG', 1, '2020-12-17 08:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `queue_list`
--

CREATE TABLE `queue_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `queue` int(30) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `queue_list`
--

INSERT INTO `queue_list` (`id`, `order_id`, `queue`, `status`, `date_created`) VALUES
(1, 1, 1, 1, '2023-07-27 12:35:02'),
(2, 2, 1, 1, '2023-07-28 01:28:37'),
(3, 3, 2, 1, '2023-07-28 01:29:17'),
(4, 4, 3, 1, '2023-07-28 01:37:31'),
(7, 7, 1, 1, '2023-07-29 06:10:05'),
(8, 8, 2, 1, '2023-07-29 06:24:04'),
(9, 9, 1, 1, '2023-07-30 04:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `ref_id` text NOT NULL,
  `order_id` int(30) NOT NULL,
  `receipt_no` text NOT NULL,
  `total_amount` text NOT NULL,
  `amount_tendered` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `ref_id`, `order_id`, `receipt_no`, `total_amount`, `amount_tendered`, `date_created`) VALUES
(1, 'ZEN-2148', 1, 'jHxvwBl5f2FJ', '275.00', '300', '2023-07-27 20:35:02'),
(2, 'HBF-1724', 2, 'irnDgzFAjdSN', '275.00', '300', '2023-07-28 09:28:37'),
(3, 'OMG-4574', 3, 'OEQv2SIN7x3d', '245.00', '300', '2023-07-28 09:29:17'),
(4, 'OQD-2475', 4, 'yUujAI6J2nWl', '510.00', '520', '2023-07-28 09:37:31'),
(7, 'RVO-5597', 7, 'jBvzs7bt0QkL', '785.00', '1000', '2023-07-29 14:11:15'),
(8, 'PRD-1174', 8, 'zNAf3atMp47G', '20.00', '50', '2023-07-29 20:21:43'),
(9, 'GAV-7095', 9, '4xWi2zm6OewU', '285.00', '300', '2023-07-30 12:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `meta_name` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`meta_name`, `meta_value`) VALUES
('system_name', ''),
('system_title', 'Calle Luna'),
('system_address', 'Plaridel-Antonio Luna St., Brgy. 1, Silay City, Neg. Occ., 6116'),
('system_fb_url', 'https://www.facebook.com/calleluna0821/'),
('system_email', 'calleluna0821@yahoo.com'),
('system_logo', 'uploads/20201219074646_rios_logo.ico');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `access_token` text NOT NULL,
  `phone_number` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1= admin,2=kitchen,3=cashier,4=delivery,5=client,6=Guest Self service',
  `status` int(11) DEFAULT '1' COMMENT '1= active, 2=blocked',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0= active , 1= deleted',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `access_token`, `phone_number`, `email`, `password`, `type`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'super', 'admin', '', '', 'super_admin', '5da283a2d990e8d8512cf967df5bc0d0', 1, 1, 0, '2020-05-03 01:12:53'),
(4, 'Carlo', 'Montero', '', '09171742306', 'oretnom23@gmail.com', '0192023a7bbd73250516f069df18b500', 5, 1, 0, '2020-05-03 19:38:20'),
(6, 'asdasd', 'asdasd', '', '456465', 'gbnebria14@gmail.com', '0192023a7bbd73250516f069df18b500', 5, 1, 0, '2020-05-03 23:02:08'),
(7, 'Kitchen', 'Side', '', '', 'kitchen', '68a7b18d11156c6e806161741f55dc91', 2, 1, 0, '2020-05-05 23:53:40'),
(8, 'Tomgu ', 'Square', '', '', 'admin', '0192023a7bbd73250516f069df18b500', 1, 1, 0, '2020-05-06 00:04:17'),
(9, 'Driver', 'Test', '', '', 'driver', 'c974f63abee678d0e103167ad9c813a5', 4, 1, 0, '2020-05-06 00:05:39'),
(10, 'test', 'test', '', '', 'test@sample.com', '0192023a7bbd73250516f069df18b500', 5, 1, 0, '2020-05-06 00:24:01'),
(11, 'Cashier', 'Side', '', '', 'cashier', 'dbb8c54ee649f8af049357a5f99cede6', 3, 1, 0, '2020-05-06 00:52:06'),
(12, 'John', 'Smith', '', '2312331123', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 5, 1, 0, '2020-12-17 08:40:26'),
(13, 'Guest', ' ', '', '', 'guest', 'fcf41657f02f88137a1bcf068a32c0a3', 6, 1, 0, '2020-12-19 16:13:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alert_msg`
--
ALTER TABLE `alert_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `for_delivery`
--
ALTER TABLE `for_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_list`
--
ALTER TABLE `queue_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `alert_msg`
--
ALTER TABLE `alert_msg`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `for_delivery`
--
ALTER TABLE `for_delivery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `queue_list`
--
ALTER TABLE `queue_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
