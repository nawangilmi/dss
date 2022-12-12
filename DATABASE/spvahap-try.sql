-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 05:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spvahap-try`
--

-- --------------------------------------------------------

--
-- Table structure for table `analisa_alternatif`
--

CREATE TABLE `analisa_alternatif` (
  `alternatif_pertama` varchar(4) NOT NULL,
  `nilai_analisa_alternatif` double NOT NULL,
  `hasil_analisa_alternatif` double NOT NULL,
  `alternatif_kedua` varchar(4) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `analisa_alternatif`
--

INSERT INTO `analisa_alternatif` (`alternatif_pertama`, `nilai_analisa_alternatif`, `hasil_analisa_alternatif`, `alternatif_kedua`, `id_kriteria`) VALUES
('A002', 0.5, 0.11111111111111, 'A003', 'C1'),
('A003', 2, 0.24990619136961, 'A002', 'C1'),
('A002', 0.333, 0.14273467638234, 'A011', 'C1'),
('A011', 3.003003003003, 0.37523452157598, 'A002', 'C1'),
('A002', 0.5, 0.11111111111111, 'A013', 'C1'),
('A013', 2, 0.24990619136961, 'A002', 'C1'),
('A003', 0.5, 0.21431633090441, 'A011', 'C1'),
('A011', 2, 0.44444444444444, 'A003', 'C1'),
('A003', 1, 0.22222222222222, 'A013', 'C1'),
('A013', 1, 0.22222222222222, 'A003', 'C1'),
('A011', 2, 0.44444444444444, 'A013', 'C1'),
('A013', 0.5, 0.21431633090441, 'A011', 'C1'),
('A002', 1, 0.1249530956848, 'A002', 'C1'),
('A003', 1, 0.22222222222222, 'A003', 'C1'),
('A011', 1, 0.42863266180883, 'A011', 'C1'),
('A013', 1, 0.22222222222222, 'A013', 'C1'),
('A002', 0.5, 0.14285714285714, 'A003', 'C2'),
('A003', 2, 0.33333333333333, 'A002', 'C2'),
('A002', 0.5, 0.14285714285714, 'A011', 'C2'),
('A011', 2, 0.33333333333333, 'A002', 'C2'),
('A002', 1, 0.25, 'A013', 'C2'),
('A013', 1, 0.16666666666667, 'A002', 'C2'),
('A003', 1, 0.28571428571429, 'A011', 'C2'),
('A011', 1, 0.28571428571429, 'A003', 'C2'),
('A003', 1, 0.25, 'A013', 'C2'),
('A013', 1, 0.28571428571429, 'A003', 'C2'),
('A011', 1, 0.25, 'A013', 'C2'),
('A013', 1, 0.28571428571429, 'A011', 'C2'),
('A002', 1, 0.16666666666667, 'A002', 'C2'),
('A003', 1, 0.28571428571429, 'A003', 'C2'),
('A011', 1, 0.28571428571429, 'A011', 'C2'),
('A013', 1, 0.25, 'A013', 'C2'),
('A002', 0.5, 0.16666666666667, 'A003', 'C3'),
('A003', 2, 0.24990619136961, 'A002', 'C3'),
('A002', 0.333, 0.11754324038122, 'A011', 'C3'),
('A011', 3.003003003003, 0.37523452157598, 'A002', 'C3'),
('A002', 0.5, 0.090909090909091, 'A013', 'C3'),
('A013', 2, 0.24990619136961, 'A002', 'C3'),
('A003', 1, 0.35298270384751, 'A011', 'C3'),
('A011', 1, 0.33333333333333, 'A003', 'C3'),
('A003', 2, 0.36363636363636, 'A013', 'C3'),
('A013', 0.5, 0.16666666666667, 'A003', 'C3'),
('A011', 2, 0.36363636363636, 'A013', 'C3'),
('A013', 0.5, 0.17649135192376, 'A011', 'C3'),
('A002', 1, 0.1249530956848, 'A002', 'C3'),
('A003', 1, 0.33333333333333, 'A003', 'C3'),
('A011', 1, 0.35298270384751, 'A011', 'C3'),
('A013', 1, 0.18181818181818, 'A013', 'C3'),
('A002', 1, 0.16658329164582, 'A003', 'C4'),
('A003', 1, 0.14279588336192, 'A002', 'C4'),
('A002', 0.5, 0.11111111111111, 'A011', 'C4'),
('A011', 2, 0.28559176672384, 'A002', 'C4'),
('A002', 0.333, 0.15373961218837, 'A013', 'C4'),
('A013', 3.003003003003, 0.42881646655232, 'A002', 'C4'),
('A003', 1, 0.22222222222222, 'A011', 'C4'),
('A011', 1, 0.16658329164582, 'A003', 'C4'),
('A003', 0.333, 0.15373961218837, 'A013', 'C4'),
('A013', 3.003003003003, 0.50025012506253, 'A003', 'C4'),
('A011', 0.5, 0.23084025854109, 'A013', 'C4'),
('A013', 2, 0.44444444444444, 'A011', 'C4'),
('A002', 1, 0.14279588336192, 'A002', 'C4'),
('A003', 1, 0.16658329164582, 'A003', 'C4'),
('A011', 1, 0.22222222222222, 'A011', 'C4'),
('A013', 1, 0.46168051708218, 'A013', 'C4');

-- --------------------------------------------------------

--
-- Table structure for table `analisa_kriteria`
--

CREATE TABLE `analisa_kriteria` (
  `kriteria_pertama` varchar(2) NOT NULL,
  `nilai_analisa_kriteria` double NOT NULL,
  `hasil_analisa_kriteria` double NOT NULL,
  `kriteria_kedua` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `analisa_kriteria`
--

INSERT INTO `analisa_kriteria` (`kriteria_pertama`, `nilai_analisa_kriteria`, `hasil_analisa_kriteria`, `kriteria_kedua`) VALUES
('C1', 1, 0.1249530956848, 'C1'),
('C2', 1, 0.16666666666667, 'C2'),
('C3', 1, 0.18181818181818, 'C3'),
('C4', 1, 0.3000300030003, 'C4'),
('C1', 1, 0.16666666666667, 'C2'),
('C2', 1, 0.1249530956848, 'C1'),
('C1', 0.5, 0.090909090909091, 'C3'),
('C3', 2, 0.24990619136961, 'C1'),
('C1', 0.333, 0.0999099909991, 'C4'),
('C4', 3.003003003003, 0.37523452157598, 'C1'),
('C2', 1, 0.18181818181818, 'C3'),
('C3', 1, 0.16666666666667, 'C2'),
('C2', 0.5, 0.15001500150015, 'C4'),
('C4', 2, 0.33333333333333, 'C2'),
('C3', 0.5, 0.15001500150015, 'C4'),
('C4', 2, 0.36363636363636, 'C3'),
('C1', 1, 0.1249530956848, 'C1'),
('C2', 1, 0.16666666666667, 'C2'),
('C3', 1, 0.18181818181818, 'C3'),
('C4', 1, 0.3000300030003, 'C4');

-- --------------------------------------------------------

--
-- Table structure for table `data_alternatif`
--

CREATE TABLE `data_alternatif` (
  `id_alternatif` varchar(4) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jumlah_sekolah` int(5) NOT NULL,
  `jumlah_guru` int(5) NOT NULL,
  `jumlah_murid` int(5) NOT NULL,
  `jumlah_tidak_bersekolah` int(5) NOT NULL,
  `hasil_akhir` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_alternatif`
--

INSERT INTO `data_alternatif` (`id_alternatif`, `nama`, `jumlah_sekolah`, `jumlah_guru`, `jumlah_murid`, `jumlah_tidak_bersekolah`, `hasil_akhir`) VALUES
('A002', 'Cibugel', 17, 145, 2415, 2418, 0.11204691071665501),
('A003', 'Cimalaka', 29, 317, 4966, 3042, 0.205127971479575),
('A011', 'Jatinangor', 31, 388, 8576, 4647, 0.282134306707841),
('A013', 'Pamulihan', 24, 242, 5380, 9415, 0.20069081109592302);

-- --------------------------------------------------------

--
-- Table structure for table `data_kriteria`
--

CREATE TABLE `data_kriteria` (
  `id_kriteria` varchar(2) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `jumlah_kriteria` double NOT NULL,
  `bobot_kriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kriteria`
--

INSERT INTO `data_kriteria` (`id_kriteria`, `nama_kriteria`, `jumlah_kriteria`, `bobot_kriteria`) VALUES
('C1', 'Jumlah Murid', 8.003003003003, 0.12147838798889218),
('C2', 'Jumlah Sekolah', 6, 0.15802392246729396),
('C3', 'Jumlah Guru', 5.5, 0.186044844634558),
('C4', 'Anak Tidak Bersekolah', 3.333, 0.334452844909254);

-- --------------------------------------------------------

--
-- Table structure for table `jum_alt_kri`
--

CREATE TABLE `jum_alt_kri` (
  `id_alternatif` varchar(4) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `jumlah_alt_kri` double NOT NULL,
  `skor_alt_kri` double NOT NULL,
  `hasil_alt_kri` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jum_alt_kri`
--

INSERT INTO `jum_alt_kri` (`id_alternatif`, `id_kriteria`, `jumlah_alt_kri`, `skor_alt_kri`, `hasil_alt_kri`) VALUES
('A002', 'C1', 8.003003003003, 0.12247749857234, 0.01487836909148),
('A003', 'C1', 4.5, 0.227166741679615, 0.027595849583929),
('A011', 'C1', 2.333, 0.42318901806842246, 0.051408319729554),
('A013', 'C1', 4.5, 0.227166741679615, 0.027595849583929),
('A002', 'C2', 6, 0.14903636833378875, 0.023551311514386),
('A003', 'C2', 3.5, 0.25792860893504627, 0.040758890500449),
('A011', 'C2', 3.5, 0.35593974712945, 0.056246995003412),
('A013', 'C2', 4, 0.23709527560171376, 0.037466725449047),
('A002', 'C3', 8.003003003003, 0.1410302533593409, 0.026237951575011),
('A003', 'C3', 3, 0.28027395530559834, 0.052143524469943),
('A011', 'C3', 2.833, 0.356058741619065, 0.066242893265295),
('A013', 'C3', 5.5, 0.22263704971599416, 0.041420475324309),
('A002', 'C4', 7.003003003003, 0.14166205866370696, 0.047379278535778),
('A003', 'C4', 6.003003003003, 0.2530392795678444, 0.084629706925254),
('A011', 'C4', 4.5, 0.3236214024101093, 0.10823609870958),
('A013', 'C4', 2.166, 0.2816772593583375, 0.094207760738638);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `jum_nilai` double NOT NULL,
  `ket_nilai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `jum_nilai`, `ket_nilai`) VALUES
(2, 9, 'Mutlak sangat penting dari'),
(3, 8, 'Mendekati mutlak dari'),
(8, 7, 'Sangat penting dari'),
(9, 6, 'Mendekati sangat penting dari'),
(10, 5, 'Lebih penting dari'),
(11, 4, 'Mendekati lebih penting dari'),
(12, 3, 'Sedikit lebih penting dari'),
(13, 2, 'Mendekati sedikit lebih penting dari'),
(14, 1, 'Sama penting dengan'),
(15, 0.5, '1 bagi mendekati sedikit lebih penting dari'),
(16, 0.333, '1 bagi sedikit lebih penting dari'),
(17, 0.25, '1 bagi mendekati lebih penting dari'),
(18, 0.2, '1 bagi lebih penting dari'),
(19, 0.167, '1 bagi mendekati sangat penting dari'),
(20, 0.143, '1 bagi sangat penting dari'),
(21, 0.125, '1 bagi mendekati mutlak dari'),
(22, 0.1, '1 bagi mutlak sangat penting dari');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_awal`
--

CREATE TABLE `nilai_awal` (
  `id_nilai_awal` int(11) NOT NULL,
  `id_alternatif` varchar(4) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_awal`
--

INSERT INTO `nilai_awal` (`id_nilai_awal`, `id_alternatif`, `nilai`) VALUES
(1, 'A001', ''),
(2, 'A002', ''),
(3, 'A003', ''),
(4, 'A004', ''),
(5, 'A005', ''),
(6, 'A006', ''),
(7, 'A007', ''),
(8, 'A008', ''),
(9, 'A009', ''),
(10, 'A010', ''),
(11, 'A011', ''),
(12, 'A012', ''),
(13, 'A013', ''),
(14, 'A014', ''),
(15, 'A015', ''),
(16, 'A016', ''),
(17, 'A017', ''),
(18, 'A018', ''),
(19, 'A019', ''),
(20, 'A020', ''),
(21, 'A021', ''),
(22, 'A022', ''),
(23, 'A023', ''),
(24, 'A024', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `role` enum('atasan','kepegawaian','manajer') NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `role`, `username`, `password`) VALUES
(1, 'Hali Putri A', 'kepegawaian', 'pegawai', 'pegawai'),
(2, 'Aulia Rahmanita', 'atasan', 'atasan', 'atasan'),
(3, 'Nawang Ilmi A', 'manajer', 'manajer', 'manajer'),
(4, 'Fasya Nurina Izzati', 'kepegawaian', 'pengurus', 'pengurus');

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `kriteria` varchar(2) NOT NULL,
  `skor_bobot` double NOT NULL,
  `alternatif` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
