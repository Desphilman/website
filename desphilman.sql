-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2021 at 10:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desphilman`
--
CREATE DATABASE IF NOT EXISTS `desphilman` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `desphilman`;

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
CREATE TABLE IF NOT EXISTS `survey` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `q1` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q1other` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q2` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q3` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q3other` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q4` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q4other` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q5` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q5other` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q61` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q62` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q63` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q64` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q65` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q66` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q6other` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q7` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q7other` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q8` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q9` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q9other` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `q10` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
