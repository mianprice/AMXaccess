-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2014 at 04:37 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amx`
--
CREATE DATABASE IF NOT EXISTS `amx` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `amx`;

-- --------------------------------------------------------

--
-- Table structure for table `amxconfiguration`
--

CREATE TABLE IF NOT EXISTS `amxconfiguration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `value` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `amxconfiguration`
--

INSERT INTO `amxconfiguration` (`id`, `name`, `value`) VALUES
(1, 'website_name', 'UserCake'),
(2, 'website_url', 'localhost/'),
(3, 'email', 'noreply@ILoveUserCake.com'),
(4, 'activation', 'false'),
(5, 'resend_activation_threshold', '0'),
(6, 'language', 'models/languages/en.php'),
(7, 'template', 'models/site-templates/default.css');

-- --------------------------------------------------------

--
-- Table structure for table `amxpages`
--

CREATE TABLE IF NOT EXISTS `amxpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(150) NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `amxpages`
--

INSERT INTO `amxpages` (`id`, `page`, `private`) VALUES
(1, 'account.php', 1),
(2, 'activate-account.php', 0),
(3, 'admin_configuration.php', 1),
(4, 'admin_page.php', 1),
(5, 'admin_pages.php', 1),
(6, 'admin_permission.php', 1),
(7, 'admin_permissions.php', 1),
(8, 'admin_user.php', 1),
(9, 'admin_users.php', 1),
(10, 'forgot-password.php', 0),
(11, 'index.php', 0),
(12, 'left-nav.php', 0),
(13, 'login.php', 0),
(14, 'logout.php', 1),
(15, 'register.php', 0),
(16, 'resend-activation.php', 0),
(17, 'user_settings.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `amxpermissions`
--

CREATE TABLE IF NOT EXISTS `amxpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `amxpermissions`
--

INSERT INTO `amxpermissions` (`id`, `name`) VALUES
(1, 'New Member'),
(2, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `amxpermission_page_matches`
--

CREATE TABLE IF NOT EXISTS `amxpermission_page_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `amxpermission_page_matches`
--

INSERT INTO `amxpermission_page_matches` (`id`, `permission_id`, `page_id`) VALUES
(1, 1, 1),
(2, 1, 14),
(3, 1, 17),
(4, 2, 1),
(5, 2, 3),
(6, 2, 4),
(7, 2, 5),
(8, 2, 6),
(9, 2, 7),
(10, 2, 8),
(11, 2, 9),
(12, 2, 14),
(13, 2, 17);

-- --------------------------------------------------------

--
-- Table structure for table `amxusers`
--

CREATE TABLE IF NOT EXISTS `amxusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(150) NOT NULL,
  `activation_token` varchar(225) NOT NULL,
  `last_activation_request` int(11) NOT NULL,
  `lost_password_request` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(150) NOT NULL,
  `sign_up_stamp` int(11) NOT NULL,
  `last_sign_in_stamp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `amxuser_permission_matches`
--

CREATE TABLE IF NOT EXISTS `amxuser_permission_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `amxuser_permission_matches`
--

INSERT INTO `amxuser_permission_matches` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `presets`
--

CREATE TABLE IF NOT EXISTS `presets` (
  `id` int(11) NOT NULL,
  `audio` tinyint(1) NOT NULL,
  `lights` tinyint(1) NOT NULL,
  `allOn` tinyint(1) NOT NULL,
  `nightLight` tinyint(1) NOT NULL,
  `allOff` tinyint(1) NOT NULL,
  `brightRoom` tinyint(1) NOT NULL,
  `mediumRoom` tinyint(1) NOT NULL,
  `projectionPreset` tinyint(1) NOT NULL,
  `wallCamsOn` tinyint(1) NOT NULL,
  `boardFluoroOn` tinyint(1) NOT NULL,
  `roomFluoroOn` tinyint(1) NOT NULL,
  `podiumOn` tinyint(1) NOT NULL,
  `wallCamsOff` tinyint(1) NOT NULL,
  `boardFluoroOff` tinyint(1) NOT NULL,
  `roomFluoroOff` tinyint(1) NOT NULL,
  `podiumOff` tinyint(1) NOT NULL,
  `proj` tinyint(1) NOT NULL,
  `powerOff` tinyint(1) NOT NULL,
  `powerOn` tinyint(1) NOT NULL,
  `imageBlank` tinyint(1) NOT NULL,
  `PC1VGA1400x1050` tinyint(1) NOT NULL,
  `docCam` tinyint(1) NOT NULL,
  `laptopVGA1400x1050` tinyint(1) NOT NULL,
  `video` tinyint(1) NOT NULL,
  `laptopDVI` tinyint(1) NOT NULL,
  `up` tinyint(1) NOT NULL,
  `stop` tinyint(1) NOT NULL,
  `down` tinyint(1) NOT NULL,
  `systemReset` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `presets`
--
ALTER TABLE `presets`
  ADD CONSTRAINT `presets_ibfk_1` FOREIGN KEY (`id`) REFERENCES `amxusers` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
