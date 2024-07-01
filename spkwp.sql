-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jul 2024 pada 15.51
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spkwp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` int(11) NOT NULL,
  `nama_sepatu` varchar(55) NOT NULL,
  `harga` int(11) NOT NULL,
  `desain` int(11) NOT NULL,
  `kualitas` int(11) NOT NULL,
  `kenyaman` int(11) NOT NULL,
  `ukuran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama_sepatu`, `harga`, `desain`, `kualitas`, `kenyaman`, `ukuran`) VALUES
(1, 'Nike', 300000, 4, 5, 4, 41),
(2, 'Adidas', 250000, 5, 4, 5, 44),
(3, 'Puma', 200000, 3, 4, 4, 42),
(4, 'Converse', 350000, 5, 3, 3, 45),
(5, 'Vans', 350000, 4, 3, 5, 43);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id` int(11) NOT NULL,
  `nama_sepatu` varchar(55) NOT NULL,
  `preferensi` double(11,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id`, `nama_sepatu`, `preferensi`) VALUES
(1, 'Nike', 0.202),
(2, 'Adidas', 0.227),
(3, 'Puma', 0.201),
(4, 'Converse', 0.178),
(5, 'Vans', 0.193);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `kode` varchar(55) NOT NULL,
  `nama_kriteria` varchar(55) NOT NULL,
  `bobot` int(11) NOT NULL,
  `label` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `kode`, `nama_kriteria`, `bobot`, `label`) VALUES
(1, 'C1', 'Harga', 4, 'cost'),
(2, 'C2', 'Desain', 4, 'benefit'),
(3, 'C3', 'Kualitas', 3, 'benefit'),
(4, 'C4', 'Kenyamanan', 5, 'benefit'),
(5, 'C5', 'Ukuran', 3, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `normalisasi`
--

CREATE TABLE `normalisasi` (
  `id` int(11) NOT NULL,
  `kode_kriteria` varchar(11) NOT NULL,
  `bobot` double(11,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `normalisasi`
--

INSERT INTO `normalisasi` (`id`, `kode_kriteria`, `bobot`) VALUES
(1, 'C1', -0.210),
(2, 'C2', 0.210),
(3, 'C3', 0.158),
(4, 'C4', 0.263),
(5, 'C5', 0.158),
(6, 'C1', -0.210),
(7, 'C2', 0.210),
(8, 'C3', 0.158),
(9, 'C4', 0.263),
(10, 'C5', 0.158),
(11, 'C1', -0.210),
(12, 'C2', 0.210),
(13, 'C3', 0.158),
(14, 'C4', 0.263),
(15, 'C5', 0.158),
(16, 'C1', -0.210),
(17, 'C2', 0.210),
(18, 'C3', 0.158),
(19, 'C4', 0.263),
(20, 'C5', 0.158),
(21, 'C1', -0.210),
(22, 'C2', 0.210),
(23, 'C3', 0.158),
(24, 'C4', 0.263),
(25, 'C5', 0.158),
(26, 'C1', -0.210),
(27, 'C2', 0.210),
(28, 'C3', 0.158),
(29, 'C4', 0.263),
(30, 'C5', 0.158),
(31, 'C1', -0.210),
(32, 'C2', 0.210),
(33, 'C3', 0.158),
(34, 'C4', 0.263),
(35, 'C5', 0.158),
(36, 'C1', -0.210),
(37, 'C2', 0.210),
(38, 'C3', 0.158),
(39, 'C4', 0.263),
(40, 'C5', 0.158),
(41, 'C1', -0.210),
(42, 'C2', 0.210),
(43, 'C3', 0.158),
(44, 'C4', 0.263),
(45, 'C5', 0.158),
(46, 'C1', -0.210),
(47, 'C2', 0.210),
(48, 'C3', 0.158),
(49, 'C4', 0.263),
(50, 'C5', 0.158),
(51, 'C1', -0.210),
(52, 'C2', 0.210),
(53, 'C3', 0.158),
(54, 'C4', 0.263),
(55, 'C5', 0.158),
(56, 'C1', -0.210),
(57, 'C2', 0.210),
(58, 'C3', 0.158),
(59, 'C4', 0.263),
(60, 'C5', 0.158),
(61, 'C1', -0.210),
(62, 'C2', 0.210),
(63, 'C3', 0.158),
(64, 'C4', 0.263),
(65, 'C5', 0.158),
(66, 'C1', -0.210),
(67, 'C2', 0.210),
(68, 'C3', 0.158),
(69, 'C4', 0.263),
(70, 'C5', 0.158),
(71, 'C1', -0.210),
(72, 'C2', 0.210),
(73, 'C3', 0.158),
(74, 'C4', 0.263),
(75, 'C5', 0.158),
(76, 'C1', -0.210),
(77, 'C2', 0.210),
(78, 'C3', 0.158),
(79, 'C4', 0.263),
(80, 'C5', 0.158),
(81, 'C1', -0.210),
(82, 'C2', 0.210),
(83, 'C3', 0.158),
(84, 'C4', 0.263),
(85, 'C5', 0.158),
(86, 'C1', -0.210),
(87, 'C2', 0.210),
(88, 'C3', 0.158),
(89, 'C4', 0.263),
(90, 'C5', 0.158),
(91, 'C1', -0.210),
(92, 'C2', 0.210),
(93, 'C3', 0.158),
(94, 'C4', 0.263),
(95, 'C5', 0.158),
(96, 'C1', -0.210),
(97, 'C2', 0.210),
(98, 'C3', 0.158),
(99, 'C4', 0.263),
(100, 'C5', 0.158),
(101, 'C1', -0.210),
(102, 'C2', 0.210),
(103, 'C3', 0.158),
(104, 'C4', 0.263),
(105, 'C5', 0.158),
(106, 'C1', -0.210),
(107, 'C2', 0.210),
(108, 'C3', 0.158),
(109, 'C4', 0.263),
(110, 'C5', 0.158),
(111, 'C1', -0.210),
(112, 'C2', 0.210),
(113, 'C3', 0.158),
(114, 'C4', 0.263),
(115, 'C5', 0.158),
(116, 'C1', -0.210),
(117, 'C2', 0.210),
(118, 'C3', 0.158),
(119, 'C4', 0.263),
(120, 'C5', 0.158),
(121, 'C1', -0.210),
(122, 'C2', 0.210),
(123, 'C3', 0.158),
(124, 'C4', 0.263),
(125, 'C5', 0.158),
(126, 'C1', -0.210),
(127, 'C2', 0.210),
(128, 'C3', 0.158),
(129, 'C4', 0.263),
(130, 'C5', 0.158),
(131, 'C1', -0.210),
(132, 'C2', 0.210),
(133, 'C3', 0.158),
(134, 'C4', 0.263),
(135, 'C5', 0.158),
(136, 'C1', -0.210),
(137, 'C2', 0.210),
(138, 'C3', 0.158),
(139, 'C4', 0.263),
(140, 'C5', 0.158);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vektor`
--

CREATE TABLE `vektor` (
  `id` int(11) NOT NULL,
  `nama_sepatu` varchar(55) NOT NULL,
  `score` double(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `vektor`
--

INSERT INTO `vektor` (`id`, `nama_sepatu`, `score`) VALUES
(1, 'Nike', 0.316),
(2, 'Adidas', 0.356),
(3, 'Puma', 0.314),
(4, 'Converse', 0.278),
(5, 'Vans', 0.302);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `normalisasi`
--
ALTER TABLE `normalisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vektor`
--
ALTER TABLE `vektor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `normalisasi`
--
ALTER TABLE `normalisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
