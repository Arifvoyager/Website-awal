-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 04, 2017 at 07:21 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yiiblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `Tabel Artikel`
--

CREATE TABLE `Tabel Artikel` (
  `id_artikel` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi_artikel` tinytext NOT NULL,
  `id_kategori` int(3) NOT NULL,
  `jumlah_baca` int(5) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` varchar(10) NOT NULL,
  `upate_by` int(11) NOT NULL,
  `update_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Tabel Kategori`
--

CREATE TABLE `Tabel Kategori` (
  `id_kategori` int(3) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Tabel Komentar`
--

CREATE TABLE `Tabel Komentar` (
  `id_komentar` int(3) NOT NULL,
  `id_artikel` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `isi_komentar` tinytext NOT NULL,
  `create_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) DEFAULT NULL,
  `real_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `pasword_hash` varchar(200) NOT NULL,
  `password_reset_token` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `role` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
