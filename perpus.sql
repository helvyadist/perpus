-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2021 at 08:21 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(10) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `jenkel` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_anggota`, `jenkel`, `alamat`, `no_hp`) VALUES
('AG001', 'Helvy Adistia', 'Laki-Laki', 'Bandung', '089686922517'),
('AG002', 'Pribadi Nugroho', 'Laki-Laki', 'Batujajar', '081234567890');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(10) NOT NULL,
  `id_pengarang` int(11) NOT NULL,
  `id_penerbit` int(11) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `tahun_terbit` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_pengarang`, `id_penerbit`, `judul_buku`, `tahun_terbit`, `jumlah`) VALUES
('BK001', 5, 4, 'Dasar-Dasar Teknik Informatika', 2020, 3),
('BK002', 6, 4, 'Pengantar teknologi informasi : teknik informatika', 2017, 2),
('BK003', 7, 4, 'Metode Penelitian Teknik Informatika', 2012, 0),
('BK004', 8, 4, 'Buku Ajar Komputer Cerdas ', 2017, 3),
('BK005', 9, 4, 'Buku Ajar Pengantar Aplikasi Komputer', 2018, 6),
('BK006', 10, 4, 'Dasar-Dasar Penguasaan Pemrograman Web', 2018, 7);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pm` varchar(10) NOT NULL,
  `id_anggota` varchar(10) NOT NULL,
  `id_buku` varchar(10) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_pm`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`) VALUES
('PM003', 'AG002', 'BK002', '2021-07-10', '2021-07-17'),
('PM004', 'AG001', 'BK006', '2021-07-10', '2021-07-17'),
('PM005', 'AG002', 'BK001', '2021-07-10', '2021-07-17'),
('PM006', 'AG001', 'BK003', '2021-07-10', '2021-07-17');

--
-- Triggers `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `jml_after_pinjam` AFTER INSERT ON `peminjaman` FOR EACH ROW update buku set buku.jumlah = buku.jumlah -1 where buku.id_buku = new.id_buku
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` int(11) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`) VALUES
(4, 'Deepublish');

-- --------------------------------------------------------

--
-- Table structure for table `pengarang`
--

CREATE TABLE `pengarang` (
  `id_pengarang` int(11) NOT NULL,
  `nama_pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengarang`
--

INSERT INTO `pengarang` (`id_pengarang`, `nama_pengarang`) VALUES
(5, 'Novega Pratama Adiputra'),
(6, 'Buhori Muslim'),
(7, 'Ade Johar Maturidi'),
(8, 'Nur Nafi’iyah'),
(9, 'Yenny Iskandar'),
(10, 'Agusriandi');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_anggota` varchar(20) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_kembalikan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `tgl_kembalikan`) VALUES
(1, 'AG001', 'BK002', '2021-07-10', '2021-07-17', '2021-07-10'),
(2, 'AG001', 'BK002', '2021-07-10', '2021-07-17', '2021-07-10'),
(3, 'AG002', 'BK002', '2021-07-10', '2021-07-17', '2021-07-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pm`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indexes for table `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`id_pengarang`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id_penerbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengarang`
--
ALTER TABLE `pengarang`
  MODIFY `id_pengarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
