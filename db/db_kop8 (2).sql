-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2016 at 07:20 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_kop8`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE IF NOT EXISTS `akun` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL DEFAULT '',
  `kode` varchar(5) NOT NULL DEFAULT '',
  `kelompok_akun_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pajak` tinyint(1) NOT NULL DEFAULT '1',
  `saldo_awal` bigint(20) NOT NULL DEFAULT '0',
  `saldo` bigint(20) NOT NULL DEFAULT '0',
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kelompok_akun_id` (`kelompok_akun_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `akun`
--


-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_anggota` varchar(25) NOT NULL,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `tgl_masuk` date NOT NULL,
  `alamat` varchar(100) NOT NULL DEFAULT '',
  `kota` varchar(25) NOT NULL,
  `telpon_1` varchar(30) NOT NULL DEFAULT '',
  `telpon_2` varchar(30) NOT NULL DEFAULT '',
  `pekerjaan` varchar(25) NOT NULL,
  `jns_id` varchar(5) NOT NULL,
  `no_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `website` varchar(100) NOT NULL DEFAULT '',
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `anggota`
--


-- --------------------------------------------------------

--
-- Table structure for table `f`
--

CREATE TABLE IF NOT EXISTS `f` (
  `id` tinyint(3) unsigned NOT NULL,
  `nama` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f`
--

INSERT INTO `f` (`id`, `nama`) VALUES
(1, 'Jurnal Umum'),
(2, 'Jurnal Penyesuaian'),
(3, 'Jurnal Penutup');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal`
--

CREATE TABLE IF NOT EXISTS `jurnal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(20) NOT NULL DEFAULT '',
  `tgl` date NOT NULL DEFAULT '0000-00-00',
  `f_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `keterangan` text NOT NULL,
  `proyek_id` int(10) unsigned DEFAULT NULL,
  `login_id` int(10) unsigned NOT NULL DEFAULT '0',
  `waktu_post` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `f_id` (`f_id`),
  KEY `proyek_id` (`proyek_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jurnal`
--


-- --------------------------------------------------------

--
-- Table structure for table `jurnal_detail`
--

CREATE TABLE IF NOT EXISTS `jurnal_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jurnal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item` tinyint(3) NOT NULL DEFAULT '0',
  `akun_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `debit_kredit` tinyint(1) NOT NULL DEFAULT '1',
  `nilai` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `jurnal_id` (`jurnal_id`),
  KEY `akun_id` (`akun_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jurnal_detail`
--


-- --------------------------------------------------------

--
-- Table structure for table `kelompok_akun`
--

CREATE TABLE IF NOT EXISTS `kelompok_akun` (
  `id` tinyint(3) unsigned NOT NULL,
  `nama` char(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok_akun`
--

INSERT INTO `kelompok_akun` (`id`, `nama`) VALUES
(1, 'Aktiva'),
(2, 'Kewajiban'),
(3, 'Modal'),
(4, 'Pendapatan'),
(5, 'Biaya');

-- --------------------------------------------------------

--
-- Table structure for table `klien`
--

CREATE TABLE IF NOT EXISTS `klien` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `npwp` char(15) NOT NULL DEFAULT '',
  `alamat` varchar(100) NOT NULL DEFAULT '',
  `telpon_1` varchar(30) NOT NULL DEFAULT '',
  `telpon_2` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `website` varchar(100) NOT NULL DEFAULT '',
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `klien`
--


-- --------------------------------------------------------

--
-- Table structure for table `lap_pph21`
--

CREATE TABLE IF NOT EXISTS `lap_pph21` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bulan` char(2) NOT NULL DEFAULT '00',
  `tahun` char(4) NOT NULL DEFAULT '0000',
  `penerima_1` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_2` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_3` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_4` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_4` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_4` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_5` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_5` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_5` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_6` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_6` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_6` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_7` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_7` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_7` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_8` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_8` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_8` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_9` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_9` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_9` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_10` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_10` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_10` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_11` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_11` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_11` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_12` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_12` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_12` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_13` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_13` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_13` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_14` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_14` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_14` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_15` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_15` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_15` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_16` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_16` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_16` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_17` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_17` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_17` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_18` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_18` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_18` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_19` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_19` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_19` bigint(20) unsigned NOT NULL DEFAULT '0',
  `penerima_20` int(10) unsigned NOT NULL DEFAULT '0',
  `bruto_20` bigint(20) unsigned NOT NULL DEFAULT '0',
  `pajak_20` bigint(20) unsigned NOT NULL DEFAULT '0',
  `lampiran_a` tinyint(1) NOT NULL DEFAULT '0',
  `lampiran_b` tinyint(1) NOT NULL DEFAULT '0',
  `lampiran_c` tinyint(1) NOT NULL DEFAULT '0',
  `lampiran_d` tinyint(1) NOT NULL DEFAULT '0',
  `lampiran_e` tinyint(1) NOT NULL DEFAULT '0',
  `lampiran_f` tinyint(1) NOT NULL DEFAULT '0',
  `lampiran_g` tinyint(1) NOT NULL DEFAULT '0',
  `lampiran_h` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `lap_pph21`
--


-- --------------------------------------------------------

--
-- Table structure for table `lap_ssp`
--

CREATE TABLE IF NOT EXISTS `lap_ssp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bulan` char(2) NOT NULL DEFAULT '00',
  `tahun` char(4) NOT NULL DEFAULT '0000',
  `jenis_pajak` char(6) NOT NULL,
  `kode_setoran` char(3) NOT NULL DEFAULT '',
  `keterangan` text NOT NULL,
  `jumlah` bigint(20) unsigned NOT NULL DEFAULT '0',
  `terbilang` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `lap_ssp`
--


-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(60) NOT NULL DEFAULT '',
  `nama_belakang` varchar(60) NOT NULL DEFAULT '',
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `administrator` tinyint(1) NOT NULL DEFAULT '0',
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `nama_depan`, `nama_belakang`, `username`, `password`, `administrator`, `aktif`) VALUES
(1, 'Keuangan', 'Guyub', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proyek`
--

CREATE TABLE IF NOT EXISTS `proyek` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL DEFAULT '',
  `klien_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spk_no` varchar(100) NOT NULL DEFAULT '',
  `spk_tgl` date DEFAULT NULL,
  `biaya` bigint(20) unsigned DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `status` enum('Start','Pending','Cancel','Close') NOT NULL DEFAULT 'Start',
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `klien_id` (`klien_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `proyek`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp`
--

CREATE TABLE IF NOT EXISTS `wp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `npwp` char(15) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `alamat` varchar(100) NOT NULL DEFAULT '',
  `kota` varchar(50) NOT NULL DEFAULT '',
  `telpon` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `jenis_usaha` varchar(45) NOT NULL DEFAULT '',
  `klu` char(6) NOT NULL DEFAULT '',
  `pemilik` varchar(100) NOT NULL DEFAULT '',
  `npwp_pemilik` char(15) NOT NULL DEFAULT '',
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `akun_ibfk_1` FOREIGN KEY (`kelompok_akun_id`) REFERENCES `kelompok_akun` (`id`);

--
-- Constraints for table `jurnal`
--
ALTER TABLE `jurnal`
  ADD CONSTRAINT `jurnal_ibfk_1` FOREIGN KEY (`f_id`) REFERENCES `f` (`id`),
  ADD CONSTRAINT `jurnal_ibfk_2` FOREIGN KEY (`proyek_id`) REFERENCES `proyek` (`id`);

--
-- Constraints for table `jurnal_detail`
--
ALTER TABLE `jurnal_detail`
  ADD CONSTRAINT `jurnal_detail_ibfk_1` FOREIGN KEY (`jurnal_id`) REFERENCES `jurnal` (`id`),
  ADD CONSTRAINT `jurnal_detail_ibfk_2` FOREIGN KEY (`akun_id`) REFERENCES `akun` (`id`);

--
-- Constraints for table `proyek`
--
ALTER TABLE `proyek`
  ADD CONSTRAINT `proyek_ibfk_1` FOREIGN KEY (`klien_id`) REFERENCES `klien` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
