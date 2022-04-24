-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 08:17 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silat`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `ID` int(11) NOT NULL,
  `Nama_Cabang` varchar(100) NOT NULL,
  `PJ` varchar(40) NOT NULL,
  `Jumlah_Anggota` int(11) NOT NULL,
  `Jadwal_Latihan` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`ID`, `Nama_Cabang`, `PJ`, `Jumlah_Anggota`, `Jadwal_Latihan`) VALUES
(1, 'Petamburan RW.1', 'Rizki Muhammad Ridwan', 0, 'Rabu, dan Jumat'),
(2, 'Petamburan RPTRA', 'Sarah Kartika Ningrum', 0, 'Jumat, dan Sabtu'),
(3, 'Matraman', 'Adi Kurnia Salam', 0, 'Jumat, dan Sabtu'),
(4, 'Padel', 'Muhammad Akbar Asya', 0, 'Jumat, dan Sabtu'),
(5, 'Rawabunga', 'Eka Santika Putri', 0, 'Rabu, dan Jumat'),
(6, 'SMPN 67 Jakarta Selatan', 'Sri Dahlia', 0, 'Sabtu'),
(7, 'Al - Falah', 'Rifqih Rizqullah', 0, 'Jumat');

-- --------------------------------------------------------

--
-- Table structure for table `datakeuangan.`
--

CREATE TABLE `datakeuangan.` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Januari` varchar(30) NOT NULL,
  `Februari` varchar(30) NOT NULL,
  `Maret` varchar(30) NOT NULL,
  `April` varchar(30) NOT NULL,
  `Mei` varchar(30) NOT NULL,
  `Juni` varchar(30) NOT NULL,
  `Juli` varchar(30) NOT NULL,
  `Agustus` varchar(30) NOT NULL,
  `September` varchar(30) NOT NULL,
  `Oktober` varchar(30) NOT NULL,
  `November` varchar(30) NOT NULL,
  `Desember` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dt_pelatih`
--

CREATE TABLE `dt_pelatih` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `TTL` varchar(500) NOT NULL,
  `JK` varchar(2) NOT NULL,
  `Sabuk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_pelatih`
--

INSERT INTO `dt_pelatih` (`ID`, `Nama`, `TTL`, `JK`, `Sabuk`) VALUES
(1, 'Abdullah Dzaki', 'Jakarta, 21 Juli 2005', 'L', 'Merah'),
(2, 'Adi Kurnia Salam', 'Jakarta, 17 November 2003', 'L', 'Merah'),
(3, 'Dimas Prayoga', 'Jakarta, 13 Februari 2004', 'L', 'Merah'),
(4, 'Evelyn Efriliani', 'Jakarta, 15 April 2005', 'P', 'Biru'),
(5, 'Medina Dwi Hamid', 'Jakarta, 07 Februari 2005', 'P', 'Biru'),
(6, 'Mochammad Zidan Alfiandy', 'Jakarta, 20 Juli 2003', 'L', 'Merah Strip 1'),
(7, 'Muhammad Rizal Alfarizi', 'Jakarta, 02 September 2004', 'L', 'Merah Strip 2'),
(8, 'Muhammad Akbar Asya', 'Jakarta, 12 November 2003', 'L', 'Merah'),
(9, 'Nailah Labibah', 'Jakarta, 08 Agustus 2005', 'P', 'Merah'),
(10, 'Nazla Shofana Monri', 'Jakarta, 07 Maret 2004', 'P', 'Merah'),
(11, 'Rizki Muhammad Ridwan', 'Jakarta, 06 Mei 2003', 'L', 'Merah Strip 2'),
(12, 'Sarah Hartika Ningrum', 'Jakarta, 12 Juni 2002', 'P', 'Merah Strip 2'),
(13, 'Sri Dahlia', 'Jakarta, 13 September 2002', 'P', 'Merah Strip 1'),
(14, 'Yasha Hidayah', 'Jakarta, 13 Maret 2005', 'P', 'Merah'),
(15, 'Zakiyah Annisa Bahtiar', 'Jakarta, 21 Februari 2005', 'P', 'Merah');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `ID` int(3) NOT NULL,
  `Nama` varchar(35) NOT NULL,
  `JK` varchar(2) NOT NULL,
  `Cabang` varchar(100) NOT NULL,
  `Sabuk` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`ID`, `Nama`, `JK`, `Cabang`, `Sabuk`) VALUES
(1, 'Evelyn Efriliani', 'P', 'Jakarta, 15 April 2005', 'Biru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `datakeuangan.`
--
ALTER TABLE `datakeuangan.`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dt_pelatih`
--
ALTER TABLE `dt_pelatih`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabang`
--
ALTER TABLE `cabang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `datakeuangan.`
--
ALTER TABLE `datakeuangan.`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dt_pelatih`
--
ALTER TABLE `dt_pelatih`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
