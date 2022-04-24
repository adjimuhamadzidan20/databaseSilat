-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Apr 2022 pada 15.53
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

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
-- Struktur dari tabel `datakeuangan`
--

CREATE TABLE `datakeuangan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `Bulan` varchar(200) NOT NULL,
  `Keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datakeuangan`
--

INSERT INTO `datakeuangan` (`id`, `nama`, `Bulan`, `Keterangan`) VALUES
(1, 'Sifa Nur Febriani', 'Januari', 'Sudah dibayar'),
(2, 'Husen', 'Februari', 'Sudah dibayar');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datakeuangan`
--
ALTER TABLE `datakeuangan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `datakeuangan`
--
ALTER TABLE `datakeuangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
