
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2016 at 11:30 AM
-- Server version: 10.0.22-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u829778268_kop3`
--

-- --------------------------------------------------------

--
-- Table structure for table `dyn_groups`
--

CREATE TABLE IF NOT EXISTS `dyn_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `abbrev` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Navigation groupings. Eg, header, sidebar, footer, etc' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dyn_groups`
--

INSERT INTO `dyn_groups` (`id`, `title`, `abbrev`) VALUES
(1, 'Header', 'header'),
(2, 'Sidebar', 'sidebar'),
(3, 'Footer', 'footer'),
(4, 'Topbar', 'topbar'),
(5, 'Sidebar1', 'sidebar1'),
(6, 'Sidebar2', 'sidebar2');

-- --------------------------------------------------------

--
-- Table structure for table `dyn_menu`
--

CREATE TABLE IF NOT EXISTS `dyn_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'uri',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dyn_group_id` int(11) NOT NULL DEFAULT '0',
  `position` int(5) NOT NULL DEFAULT '0',
  `target` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_parent` tinyint(1) NOT NULL DEFAULT '0',
  `show_menu` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `dyn_group_id - normal` (`dyn_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `dyn_menu`
--

INSERT INTO `dyn_menu` (`id`, `title`, `link_type`, `page_id`, `module_name`, `url`, `uri`, `dyn_group_id`, `position`, `target`, `parent_id`, `is_parent`, `show_menu`) VALUES
(1, 'Master', 'uri', 0, '', '', '', 0, 2000, NULL, 0, 1, '1'),
(2, 'Transaksi', 'uri', 0, '', '', '', 0, 3000, NULL, 0, 1, '1'),
(5, 'Anggota', 'uri', 0, '', 'anggota', '', 0, 2100, NULL, 1, 0, '1'),
(6, 'Simpanan', 'uri', 0, '', 'mst_simpanan', '', 0, 2200, NULL, 1, 0, '1'),
(17, 'Home', 'uri', 0, '', '', '', 0, 1000, NULL, 0, 1, '1'),
(18, 'Logout', 'uri', 0, '', 'auth/auth3', '', 0, 9000, NULL, 0, 0, '1'),
(19, 'Simpanan', 'uri', 0, '', 'simpanan', '', 0, 3100, NULL, 2, 0, '0'),
(20, 'COA', 'uri', 0, '', '', '', 0, 2300, NULL, 1, 1, '1'),
(21, 'Level 1', 'uri', 0, '', 'lv1', '', 0, 2310, NULL, 20, 0, '1'),
(22, 'Level 2', 'uri', 0, '', 'lv2', '', 0, 2320, NULL, 20, 0, '1'),
(23, 'Level 3', 'uri', 0, '', 'lv3', '', 0, 2330, NULL, 20, 0, '1'),
(24, 'Level 4', 'uri', 0, '', 'lv4', '', 0, 2340, NULL, 20, 0, '1'),
(25, 'Detail', 'uri', 0, '', 'mst_coa', '', 0, 2350, NULL, 20, 0, '1'),
(26, 'Setting', 'uri', 0, '', '', '', 0, 4000, NULL, 0, 1, '1'),
(27, 'Periode Akuntansi', 'uri', 0, '', 'setting_periode', '', 0, 4100, NULL, 26, 0, '1'),
(28, 'Jurnal', 'uri', 0, '', '', '', 0, 3200, NULL, 2, 1, '1'),
(29, 'Kas', 'uri', 0, '', 'kas', '', 0, 3210, NULL, 28, 0, '1'),
(30, 'Bank', 'uri', 0, '', '', '', 0, 3220, NULL, 28, 0, '1'),
(31, 'Memorial', 'uri', 0, '', '', '', 0, 3230, NULL, 28, 0, '1'),
(32, 'Masuk', 'uri', 0, '', 'kas_masuk', '', 0, 3211, NULL, 29, 0, '0'),
(33, 'Keluar', 'uri', 0, '', '', '', 0, 3212, NULL, 29, 0, '0'),
(34, 'Parameter', 'uri', 0, '', 'parameter', '', 0, 4200, NULL, 26, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `status_users`
--

CREATE TABLE IF NOT EXISTS `status_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nilai` int(11) NOT NULL,
  `keterangan` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `status_users`
--

INSERT INTO `status_users` (`id`, `nilai`, `keterangan`) VALUES
(1, 0, 'Administrator'),
(2, 1, 'Entry Data');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adj`
--

CREATE TABLE IF NOT EXISTS `tbl_adj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noper` varchar(8) DEFAULT NULL,
  `rpd` double DEFAULT NULL,
  `rpk` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anggota`
--

CREATE TABLE IF NOT EXISTS `tbl_anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_anggota` varchar(25) DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL,
  `no_telp` varchar(25) DEFAULT NULL,
  `pekerjaan` varchar(25) DEFAULT NULL,
  `jns_pengenal` varchar(5) DEFAULT NULL,
  `no_pengenal` varchar(50) DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL,
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=254 ;

--
-- Dumping data for table `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`id`, `no_anggota`, `nama`, `tgl_masuk`, `alamat`, `kota`, `no_telp`, `pekerjaan`, `jns_pengenal`, `no_pengenal`, `del_flag`, `insert_date`, `update_date`, `delete_date`, `id_user`) VALUES
(4, '1.01.10.2009', 'Sigit Warsito', '0000-00-00', 'jl.Gunung Sari Indah YY-6 Sby', 'Surabaya', 'O81553791188', 'IPT REA KALTIM PLANTATION', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(5, '2.01.10.2009', 'Resmi Setyaningsih', '0000-00-00', 'JL.Griya Pesona Asri Blok C-50 Sby', 'Surabaya', 'O81331501861', 'Guru SMA 4, Sby', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(6, '3.03.10.2009', 'Wenny Williarso', '0000-00-00', 'Puri Taman Asri C-14 Sby', 'Surabaya', 'O318275800', 'Bank Indonesia', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(7, '4.02.10.2009', 'Ira Wati', '0000-00-00', 'Puri Taman Asri C-14 Sby', 'Surabaya', 'O318275800', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(8, '5.03.11.2009', 'Agus Laswiyana', '0000-00-00', 'Perum Permata Pekayon Bolk i-10 bekasi', 'Jakarta', 'O8131995411', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(9, '6.03.10.2009', 'Gunawan Wibisono', '0000-00-00', 'x', 'Jakarta', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(10, '7.09.10.2009', 'Endang Rahayu', '0000-00-00', 'Jl Tanjung Pura RT 28 No 2 Balikpapan', 'Balikpapan', 'O811530517', 'PT.Chevron', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(11, '8.03.10.2009', 'Edi Suratman', '0000-00-00', 'x', 'Jakarta', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(12, '9.01.10.2009', 'Wiken Sukesi', '0000-00-00', 'Jl Pandugo Timur 8/18', 'Surabaya', 'O318705211', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(13, '10.03.10.2009', 'Ibnu Perabowo', '0000-00-00', 'x', 'Jakarta', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(14, '11.01.10.2009', 'Setyari Pangastuti', '0000-00-00', 'Jl. Kutisari Indah Selatan I/135', 'Sidoarjo', 'O318435247', 'PNS PT Telkom', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(15, '12.02.10.2009', 'Didik Widianto', '0000-00-00', 'Jl Kawi 9 Pepelegi Indah', 'Surabaya', 'O318537791', 'PT PAL Indonesia', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(16, '13.03.10.2009', 'Husain', '0000-00-00', 'Komp. DepKop Jl. Gas Alam Blok B/4 Cimanggis Depok', 'Jakarta', 'O218732559', 'Kementrian Negkop', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(17, '14.03.10.2009', 'Didi Hasan Putra', '0000-00-00', 'Jl Ciater III/12 Puri Cinere Depok', 'Jakarta', 'O217543941', 'Perus Jawa Bali', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(18, '15.03.10.2009', 'Ari Priyo Widagdo', '0000-00-00', 'Kav Ardhy Karya No 8 RT 5/2 Rangkapan Jaya Baru-Pa', 'Jakarta', 'O811412060', 'PT Adhi Karya (Persero) T', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(19, '16.03.10.2009', 'Miko', '0000-00-00', 'Jl Pangadegan Utara 32Cikoko Paneoran, Jakarta', 'Jakarta', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(20, '17.03.10.2009', 'Very', '0000-00-00', 'x', 'Jakarta', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(21, '18.06.10.2009', 'Udi Triastoto', '0000-00-00', 'Kom Mekar Baru F1 Jl Jabaru II Ciomas Bogor', 'Bogor', 'O8881725162', 'Pusdiklat Kehutanan', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(22, '19.03.10.2009', 'Niken', '0000-00-00', 'Barata Tama II/152 Karang Tengah Tangerang', 'Jakarta', 'O8129554240', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(23, '20.03.10.2009', 'Ani Herawati', '0000-00-00', 'Jl Anggrek Garuda Blok E19 Slipi Jakarta Barat', 'Jakarta', 'O816816247', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(24, '21.01.10.2009', 'Chulwatun Chasanah', '0000-00-00', 'Jl Simorejo XXI/29 A', 'Surabaya', 'O811332460', 'Guru SMAN 4 Sby', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(25, '22.01.10.2009', 'Dihan', '0000-00-00', 'Jl Kedung Pengkol I/53', 'Surabaya', 'O81357894775', 'Guru SMAN 4 Sby', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(26, '23.01.12.2009', 'Suhartini', '0000-00-00', 'Donokerto 8/9', 'Surabaya', '77756506', 'Guru SMAN 4 Sby', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(27, '24.01.11.2009', 'Sri Mulyani', '0000-00-00', 'Jl Rungkut Mapan Barat VI / BF-04', 'Surabaya', 'O81330169188', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(28, '25.04.12.2009', 'Bambang Eko', '0000-00-00', 'Jl Taman Raden Intan 512 Blimbing Malang', 'Malang', 'X', 'DOSEN', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(29, '26.01.01.2010', 'Setyo Adi Pratiwi', '0000-00-00', 'Jl Rungkut Asri Timur III/26', 'Surabaya', 'O8123532195', 'Wirausaha', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(30, '27.01.01.2010', 'Partiningsih', '0000-00-00', 'Jl Tambang Boyo 24', 'Surabaya', 'O81703411141', 'TU SMAN 4 Sby', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(31, '28.01.12.2009', 'Triastiti Indyah', '0000-00-00', 'Jl Ngagel Kebonsari 17', 'Surabaya', '78092445', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(32, '29.01.01.2010', 'Diana Tri Bandjaran Sar', '0000-00-00', 'Jl Pandugo Baru XII/86 U-3', 'Surabaya', 'O811377925', 'PNS PT Telkom', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(33, '30.01.01.2010', 'Haryono', '0000-00-00', 'Jl Bronggalan Sawah I/16', 'Surabaya', 'O81332244774', 'Pegawai Negri', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(34, '31.01.01.2010', 'Sri Eko Sri Eko Wahjunawa', '0000-00-00', 'l. Gunung Sari Indah YY - 6', 'Surabaya', 'O8155110701', 'Karyawan Bank Arta Graha', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(35, '32.01.01.2010', 'Diyah Pursianti', '0000-00-00', 'Jl. Kertajaya VI A/1', 'Surabaya', 'O8123267651', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(36, '33.04.01.2010', 'Wahyu Arbandini', '0000-00-00', 'Jl. Kebonsari Tengah 21 B', 'Surabaya', 'O811307113', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(37, '34.01.02.2010', 'Suyitno', '0000-00-00', 'Jl. Baruk Utara 7/4  B-112', 'Surabaya', 'O81615061161', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(38, '35.01.02.2010', 'Sunu Wahjoto', '0000-00-00', 'Jl. Medokan Asri Utara IX/29', 'Surabaya', 'O811319068', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(39, '36.01.02.2010', 'Agung Pranoto', '0000-00-00', 'Perum IKIP E 186, Gunung Anyar', 'Surabaya', 'O318705309', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(40, '37.01.01.2010', 'Rini Zoya Tambuwan', '2031-01-20', 'Perum Sakura Regency G/18', 'Surabaya', 'O3172022338', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(41, '38.02.02.2010', 'Etty Agustina', '0000-00-00', 'Jl. Delima 16 RT 07 RW 9 Wage', 'Sidoarjo', 'O8123529351', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(42, '39.01.02.2010', 'Sayida', '0000-00-00', 'Jl. Bendul Merisi 3/10', 'Surabaya', 'O81230767773', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(43, '40.02.02.2010', 'Kariyati', '0000-00-00', 'jl. Bluru Permai CM - 24', 'Sidoarjo', 'O85257476464', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(44, '41.02.02.2010', 'Yayuk Sukaryati', '0000-00-00', 'Jl. Simowali Indah D/24 RT8 RW4', 'Sidoarjo', 'O81330153575', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(45, '42.01.03.2010', 'Rus Elok Trihardini', '0000-00-00', 'l. Palem Selatan II MB - 32', 'Surabaya', 'O85731381296', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(46, '43.01.03.2010', 'Nur Chahasah', '0000-00-00', 'Jl. Grudo V/23 A', 'Surabaya', 'O315612638', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(47, '44.02.03.2010', 'Kuntari Prasetyaningsih', '0000-00-00', 'Jl. Dewi Sartika Timur III/J15 Makarya Binangun', 'Sidoarjo', 'O318542518', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(48, '45.01.03.2010', 'Dina Apriliana', '0000-00-00', 'Jl. Pakis Tirtosari 9/1B', 'Surabaya', 'O81332314450', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(49, '46.01.03.2010', 'Endang Sawitri', '0000-00-00', 'Jl. Candisari no.2', 'Surabaya', 'O315920747', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(50, '48.01.03.2010', 'Sujiati', '0000-00-00', 'Jl. Banyu Urip Kidul 10 - D/15', 'Surabaya', 'O8121056143', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(51, '49.01.03.2010', 'Rustianti', '0000-00-00', 'Jl. Barata Jaya III/8', 'Surabaya', 'O8819012957', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(52, '50.01.03.2010', 'Anastassia Duci.M', '0000-00-00', 'Jl. Klampis Sacharosa no. 3', 'Surabaya', 'O8121655566', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(53, '51.01.03.2010', 'Djasito', '0000-00-00', 'Jl. Kalibutuh no.5', 'Surabaya', 'O811310882', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(54, '52.01.03.2010', 'Agus Judiantara', '0000-00-00', 'Jl. Plampitan X/4', 'Surabaya', 'O85730204839', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(55, '53.02.03.2010', 'Riza Ellyza Hikmah', '0000-00-00', 'Jl. Wadungasih RT 14, RW 04', 'Sidoarjo', 'O3178089362', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(56, '54.01.03.2010', 'Sumiati', '0000-00-00', 'Jl. Kedung Klinter 4/64-66', 'Surabaya', 'X', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(57, '55.01.03.2010', 'Sri Widodo Sayekti', '0000-00-00', 'Kedung Klinter 4/64', 'Surabaya', 'O87852185200', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(58, '56.01.03.2010', 'Christina Ernaningsih', '0000-00-00', 'Jl. Candi Lontar Tengah II/43B/10', 'Surabaya', 'O81803297143', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(59, '57.01.03.2010', 'Pamahayu Pramesti', '0000-00-00', 'Jl. Pandugo Timur 8/18 C-36', 'Surabaya', 'O85624098423', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(60, '58.02.04.2010', 'Doddy', '0000-00-00', 'Jl. Delima 15 RT 07 RW 08, Taman', 'Surabaya', 'X', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(61, '59.01.03.2010', 'No Name', '0000-00-00', 'x', 'X', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(62, '60.01.04.2010', 'Evi Julianti', '0000-00-00', 'Jl. Jemur Wonosari I/19', 'Surabaya', 'O3171826326', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(63, '61.01.03.2010', 'Paguyuban Tetrasma', '0000-00-00', 'Jl. Juwingan 26', 'X', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(64, '62.02.04.2010', 'Vera', '0000-00-00', 'Jl. Puri Taman Asri B-38', 'Sidoarjo', 'O318299326', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(65, '63.02.04.2010', 'Bimo Ario', '0000-00-00', 'Jl. Puri Taman Asri C-14', 'Sidoarjo', 'O81554326680', 'Koperasi Tetrasma', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(66, '64.01.05.2010', 'Sulis Tyanto', '0000-00-00', 'Jl. Kutisari Utara I/58', 'Surabaya', 'O811300043', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(67, '65.01.05.2010', 'Anne Chadidjah', '0000-00-00', 'Jl. Kutisari Utara I/58', 'Surabaya', 'O8176343046', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(68, '66.02.05.2010', 'Nanang Abdul Azis', '0000-00-00', 'Jl.Edoro Belahan RT 02 RW 07 Wru SDA', 'Surabaya', 'X', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(69, '67.01.05.2010', 'Sri Indah Nurmiasih', '0000-00-00', 'Jl. Wonorejo I/106', 'Surabaya', 'O81331435459', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(70, '68.02.05.2010', 'Ninik Tri Suryani', '0000-00-00', 'Jl. Dieng no 1/DO 25,Kepuh Permai', 'Sidoarjo', 'X', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(71, '69.01.06.2010', 'Hari Sukamto', '0000-00-00', 'Jl. Menganti Satelit Indah B/1', 'Surabaya', 'O81330729397', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(72, '71.01.06.2010', 'Wiwik Dwi Sasanti', '0000-00-00', 'Jl Rungkut Mapan Tengah V - DD/9', 'Surabaya', 'O8175289598', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(73, '72.01.06.2010', 'Wirasanti', '0000-00-00', 'RF 2/13 sektor I 2 BSD', 'Surabaya', 'O816913589', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(74, '73.01.06.2010', 'Endang Istianingsih', '0000-00-00', 'Jl. Dukuh Kupang Timur XVII/42', 'Surabaya', 'O81331610066', 'Konsultan', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(75, '74.01.07.2010', 'Adeng Gumawan', '0000-00-00', 'Jl. Tenggilis Mulyo 113 - A', 'Surabaya', '92002737', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(76, '75.02.07.2010', 'Anisyah', '0000-00-00', 'Jl. Wadungasih RT 013/004, Buduran', 'Sidoarjo', '8921058', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(77, '76.02.07.2010', 'Rachmad Illah', '0000-00-00', 'Wadung Asih RT013/ RW 004, Buduran', 'Sidoarjo', '8921058', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(78, '77.01.07.2010', 'Indah Soesi Loveni', '0000-00-00', 'Jl. Manyar Tirtoyoso Sel IV/5', 'Surabaya', 'O85648111838', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(79, '78.01.06.2010', 'Lik Ulfah Puspa Dewi', '0000-00-00', 'Desa Kandangan RT 002/ RW 001', 'Surabaya', 'X', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(80, '79.01.07.2010', 'Devi Adam Yunitasari', '0000-00-00', 'Jl. Kedung Sroko Buntu 17', 'Surabaya', 'X', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(81, '80.01.07.2010', 'Nur Hasanah', '0000-00-00', 'Jl. Labansari no. 43 B, Sutorejo', 'Surabaya', 'X', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(82, '81.01.07.2010', 'Nunuk Warsiyah', '2014-07-02', 'Jl. Semampir Tengah IX/A Dalam no.3', 'Surabaya', 'O81272353117', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(83, '82.01.02.2010', 'Pujiastutik', '0000-00-00', 'Jl. Pemuda Tambak Bungkal, Ponorogo', 'Surabaya', 'X', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(84, '83.02.02.2010', 'Yenny Sabaveni', '0000-00-00', 'Jl. Jambu 8/G 49 Pondok Tjanosa Indah', 'Sidoarjo', '031-8663624', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(85, '84.10.02.2010', 'Budi Wiranto', '0000-00-00', 'Bukit Bambe AE-23, Gresik', 'Surabaya', '031-71527763', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(86, '85.01.02.2010', 'Gusti Tantri Diniar', '0000-00-00', 'Jl. Margorejo 3E/ 46', 'Surabaya', 'O85764451279', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(87, '86.01.02.2010', 'Nur Hasim', '0000-00-00', 'Jl. Simorejo Sari A no 27', 'Surabaya', 'O85731236862', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(88, '87.10.02.2010', 'Melly', '0000-00-00', 'Jl. perum Sumput Asri Blok DB-37', 'Gersik', 'O871332844733', 'Perawat', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(89, '88.01.02.2010', 'Roesli Arsono', '0000-00-00', 'JL.Kedung Anyar 3/16 SBY', 'Surabaya', 'O81332375888', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(90, '89.02.02.2010', 'Stevanus Edwar', '0000-00-00', 'Jl. Puri Taman Asri C-12', 'Sidoarjo', '031-8295679', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(91, '90.01.02.2010', 'Farid Budianto', '0000-00-00', 'Sidosermo 5/9 A', 'Surabaya', 'O8983363365', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(92, '91.01.02.2010', 'Eko Harianto', '0000-00-00', 'JL. Siwalan Kerto 3/16', 'Surabaya', 'O81216120082', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(93, '92.02.02.2010', 'Farida Novi', '0000-00-00', 'Keboan Sikep RT 07/04 Gedangan', 'Sidoarjo', '031-71513787', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(94, '93.01.02.2010', 'Miss Elfa Dora', '0000-00-00', 'Jl. Sidosermo 5/2', 'Surabaya', 'O8983363365', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(95, '94.01.08.2010', 'Muhammad Fauzi', '0000-00-00', 'Klampis Semalang 5/34', 'Surabaya', 'O81331424767', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(96, '95.01.02.2010', 'Muhammad Cholil', '0000-00-00', 'Jl. Klampis semalang 5/34', 'Surabaya', '031 70456737', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(97, '96.01.02.2010', 'Sri Sismiati', '0000-00-00', 'x', 'Surabaya', 'X', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(98, '97.01.02.2010', 'Muhammad Ali', '0000-00-00', 'Jl. Nginden 6/ 10', 'Surabaya', '031 83480662', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(99, '98.01.02.2010', 'Devi Yuliana', '0000-00-00', 'Karangrejo 6/105-A', 'Surabaya', '031-71487314', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(100, '99.01.02.2010', 'Indah Tri Lakmiani', '0000-00-00', 'Jalan Gubeng Kertajaya 4A/07', 'Surabaya', '031-5010424', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(101, '100.01.02.2010', 'Hendro Yulianto', '0000-00-00', 'Jl.Manyar Sabrangan 1/50 A', 'Surabaya', '031-81128090', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(102, '101.01.02.2010', 'Sonni Saputra', '0000-00-00', 'Jl.Cargo Indah 2/20 Denpasar', 'Surabaya', 'O81554034274', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(103, '102.01.02.2010', 'Sri Wulandari', '0000-00-00', 'Jl. Sidosermo 5/2', 'Surabaya', 'O85851535949', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(104, '103.01.02.2010', 'AFY.H Lukito', '0000-00-00', 'Jl. Tengku Umar No 12 Bojonegoro', 'Bojonegoro', '0353-7757669', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(105, '104.01.02.2010', 'Gentur', '0000-00-00', 'jL. Gayung Kebon Sari No 167 SBY', 'Surabaya', 'O8123222255', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(106, '105.01.02.2010', 'Endah Murti Wulan', '0000-00-00', 'x', 'Surabaya', 'O8123581925', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(107, '106.01.02.2010', 'Harianto Subakti', '0000-00-00', 'Sidosermo 5/9 A', 'Surabaya', 'O85733366657', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(108, '107.02.02.2010', 'LD. Jeffry', '0000-00-00', 'Puri Taman Asri C-15 Sby', 'Sidoarjo', 'O816514530', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(109, '108.01.02.2010', 'Fitria Anggun', '0000-00-00', 'Kutisari Selatan 15/4', 'Surabaya', 'O8563222741', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(110, '109.02.02.2010', 'Budhi Cahyani', '0000-00-00', 'Taman Pondok Jati AK-8', 'Sidoarjo', 'O81357505048', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(111, '110.01.02.2010', 'Desi Andriati', '0000-00-00', 'Jl.Baratajaya V/42', 'Surabaya', 'O811914733', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(112, '111.01.10.2010', 'Cuk Ellyanto', '0000-00-00', 'Ngagel Kebonsari 19', 'Surabaya', '031-5043434', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(113, '112.01.02.2010', 'Hermin Suwandani', '0000-00-00', 'Jl.Manyar Sabrangan I/50-A', 'Surabaya', '031-5939778', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(114, '113.02.02.2010', 'Rifan Arif', '0000-00-00', 'Jl.Bebekan  Masjid 2 RT 13 RW 04', 'Sidoarjo', 'O85731254150', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(115, '114.02.02.2010', 'Antonius Suryanto', '0000-00-00', 'Perum Pejaya Anugrah Blok DD/17 ', 'Sidoarjo', '031-70822164', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(116, '115.04.02.2010', 'Yulia Dati ', '0000-00-00', 'Karanglo Indah Blok E-A ', 'Surabaya', 'O85749574562', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(117, '116.11.11.1010', 'Kusdianto', '0000-00-00', 'Dusun Bukolan RT 04/RW 05', 'Probolinggo', 'O81358417480', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(118, '117.11.04.1010', 'Sudarmanto', '0000-00-00', 'Dusun Bukolan RT 04/RW 05', 'Probolinggo', 'O82142704071', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(119, '118.01.02.2010', 'Sumarti', '0000-00-00', 'Kupang Gunung Timur VI/4', 'Surabaya', '031-895772', 'Guru ', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(120, '119.02.02.2010', 'Rita Sri Yatmin', '0000-00-00', 'Mutiara Citra Asri H1/7', 'Sidoarjo', '031-8057352', 'Kepala Sekolah', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(121, '120.02.02.2010', 'Pipit Toeningwati', '0000-00-00', 'Jl.Sidodadi Indah IV/10', 'Surabaya', 'O85232373911', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(122, '121.01.02.2010', 'Andi Kurniawan', '0000-00-00', 'Jl.A.Yani 267', 'Surabaya', '031-8437886', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(123, '122.01.10.2010', 'Tatang Efendi', '0000-00-00', 'Siwalan Kerto 5-A/16-B', 'Surabaya', 'O81331994178', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(124, '123.02.02.2010', 'Christine', '0000-00-00', 'Pondok Wage Indah II 6/7', 'Sidoarjo', '031-8543958', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(125, '124.01.10.2010', 'Nur Fadilah', '0000-00-00', 'Semampir GG kelurahan 119', 'Surabaya', '031-77194336', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(126, '125.01.02.2010', 'Dwi Okta', '0000-00-00', 'Kopas Lor II/23', 'Surabaya', 'O87882098483', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(127, '126.01.02.2010', 'Poppy Damayanti', '0000-00-00', 'Jl.Ngagel Kebonsari 11', 'Surabaya', '031-72707611', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(128, '127.04.02.2010', 'Iwiek Muzayana', '0000-00-00', 'DS Tambak Agung Kec Puri-Mojokerto', 'Mojokerto', 'O81225555509', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(129, '128.01.02.2010', 'Diah Rahmawati Rahayu', '0000-00-00', 'Rungkut Asri Timur 3/28', 'Surabaya', 'X', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(130, '129.01.02.2010', 'Ninuk Handayani', '0000-00-00', 'Sidosermo V/9A', 'Surabaya', 'O81335143365', 'Perawat', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(131, '130.11.01.1010', 'Musdalifah', '0000-00-00', 'Dusun Bukolan RT 04/RW 05', 'Probolinggo', 'O81338417480', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(132, '131.01.02.2010', 'Kuswarni', '0000-00-00', 'Jl.Dukuh Kupang gg 4/a', 'Surabaya', '031-77879242', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(133, '132.01.02.2010', 'Endang Sri Saptarena', '0000-00-00', 'Per ITS Hidrodinamika IV-T/73', 'Surabaya', 'O85746151312', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(134, '133.02.02.2010', 'Aditya Pramono Aji', '0000-00-00', 'Tebel Barat 34 RT 02,RW 02', 'Sidoarjo', 'O85630803375', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(135, '134.01.02.2010', 'Fitri Cherry', '0000-00-00', 'Wisma Medokan D/2', 'Surabaya', '031-71396258', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(136, '135.01.02.2010', 'Suwambar Trisaningsih', '0000-00-00', 'Grudo 4/21-A', 'Surabaya', 'O81231399849', 'Perawat', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(137, '136.02.02.2010', 'Suheni', '0000-00-00', 'Pondok Wage IndahII/Blok V-20', 'Sidoarjo', '031-91520461', 'Perawat', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(138, '137.01.02.2010', 'Eko Novi Aviyani', '0000-00-00', 'Jl.A.Yani No 267', 'Surabaya', '031-8492931', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(139, '138.02.02.2010', 'Raditya Dermawan', '0000-00-00', 'Jl.Jati Selatan 1/31 RT ,RW 1', 'Sidoarjo', 'O87851551999', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(140, '139.01.02.2010', 'Wiji Rahayu', '0000-00-00', 'Pulosari 2A/2-A', 'Surabaya', '031-5613055', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(141, '140.01.02.2010', 'Sukirman', '0000-00-00', 'Pulosari 2A/2-A', 'Surabaya', '5613055', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(142, '141.01.02.2010', 'Febriana', '0000-00-00', 'Jl. Jembatan Baru Gang 5', 'Surabaya', 'O81357225758', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(143, '142.01.02.2010', 'Twiesa Bluema', '0000-00-00', 'Jl. Manukan LOR 2-1/3', 'Surabaya', 'O8123017852', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(144, '143.01.02.2010', 'Fanina Sari Nurlita', '0000-00-00', 'Medokan Asri Utara MA 3M/35', 'Surabaya', 'O85230486836', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(145, '144.01.02.2010', 'Supinah', '0000-00-00', 'Rungkut Lor gg I No 10', 'Surabaya', '031-8702014', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(146, '145.01.02.2010', 'Erna Suraswati', '0000-00-00', 'Bringin Telaga RT 02 RW 01', 'Surabaya', '031-34980118', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(147, '146.01.02.2010', 'Tri Yudani Samiasih', '0000-00-00', 'Kedung Asem gg 1 No 10', 'Surabaya', '031-78021376', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(148, '147.01.02.2010', 'Endah Yuswarini', '0000-00-00', 'Jl.Teknik Lingkungan BI 1-14', 'Sidoarjo', 'O8123568919', 'DOSEN', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(149, '148.01.02.2010', 'Katrina', '0000-00-00', 'Perum ITS Jl.Teknik Lingkungan 1/14', 'Surabaya', 'X', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(150, '149.01.02.2010', 'Noor Maulidah', '0000-00-00', 'Wisma Kedung Asem Indah H-6', 'Surabaya', '031-71720848', 'Guru', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(151, '150.01.02.2010', 'Kusprianto', '0000-00-00', 'Kandangan Gunung Bakti 11/7', 'Surabaya', 'O8563021590', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(152, '151.01.02.2010', 'Arif Dharma', '0000-00-00', 'Griya Kebraon Barat 16 CI No 3', 'Surabaya', 'O85648182046', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(153, '152.01.02.2010', 'Rusri Anik', '0000-00-00', 'Kedung Anyar 3/16', 'Surabaya', 'O87853693286', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(154, '153.11.02.2010', 'Ani Komaria', '0000-00-00', 'Dusun Bukolan RT 04/RW 05', 'Probolinggo', 'O81242704071', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(155, '154.01.02.2010', 'Ahmad Rizal', '0000-00-00', 'Jl. Sidosermo 4/24', 'Surabaya', 'O81554360640', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(156, '155.01.02.2010', 'Istirocha', '0000-00-00', 'Ngagel Kebon Sari 2/8', 'Surabaya', '031-5043738', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(157, '156.01.02.2011', 'Yuni Tutsih Erlianti', '0000-00-00', 'Gubeng Kertajaya VY E/ 40', 'Surabaya', '031-5030400', 'Guru', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(158, '157.01.02.2010', 'Titik Suparti', '0000-00-00', 'x', 'Surabaya', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(159, '158.01.02.2011', 'Chilmi Syaripudin', '0000-00-00', 'Klampis Ngasem No 107', 'Surabaya', 'O85648613730', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(160, '159.01.02.2011', 'Rina Wati', '0000-00-00', 'Jl.Rungkut Mejoyo', 'Surabaya', 'O8563237621', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(161, '160.01.02.2011', 'Hanif Abdul Latif', '0000-00-00', 'Sidoserma IV 66/10', 'Surabaya', 'O85730020787', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(162, '161.01.02.2011', 'Ananto Ariaji', '0000-00-00', 'Dukuh Kupang Timur 17/42', 'Surabaya', 'O85648053722', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(163, '162.01.02.2011', 'Chunaini', '0000-00-00', 'Sidosermo 4/18', 'Surabaya', 'O85733127463', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(164, '163.01.02.2011', 'Soehariani', '0000-00-00', 'Pandugo Timur 8/21 D. 10', 'Surabaya', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(165, '164.01.02.2011', 'Sukarni', '0000-00-00', 'Gayungan Manggis 47', 'Surabaya', 'O8819754147', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(166, '165.02.02.2011', 'Ferry Setiawan', '0000-00-00', 'Jati Selatan 1/31', 'Sidoarjo', 'O87851165999', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(167, '166.01.02.2011', 'Kristanto Al Aaisory', '0000-00-00', 'Jl.Siwalan Kerto No 18', 'Surabaya', 'X', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(168, '167.01.01.2011', 'Theresia', '0000-00-00', 'Komp GBA Barat C4/14', 'Surabaya', '082128148048', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(169, '168.01.02.2011', 'Ikya Ulummudin', '0000-00-00', 'Meteseh RT 004/RW 002', 'Lamongan', 'O85649051853', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(170, '169.01.02.2011', 'Sholati', '0000-00-00', 'Klampis Ngasem No 107', 'Surabaya', 'O8179385345', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(171, '170.01.02.2011', 'Hipolita Sukawidarti', '0000-00-00', 'Wonorejo Permai Timur II DD/64', 'Surabaya', '031-83039091', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(172, '171.01.02.2011', 'Novi Tri Budianto', '0000-00-00', 'Kupang Gunung Barat 8/20', 'Surabaya', 'O87853704688', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(173, '172.02.02.2011', 'Anie Diah Tarawati', '0000-00-00', 'Bukit Bambe AE-23', 'Sidoarjo', '031-9140331', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(174, '173.01.02.2011', 'Ponco Bayu Widodo', '0000-00-00', 'Dukuh Kupang Timur 17/42', 'Surabaya', '031-72529292', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(175, '174.01.02.2011', 'Rudy Suryanto', '0000-00-00', 'Perum ITS TL 1/14', 'Surabaya', 'O87851413233', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(176, '175.01.02.2011', 'Ida Rumasiyanti', '0000-00-00', 'Kalilom Lor I Pandan Wangi Indah No 2', 'Surabaya', 'O81931629909', 'Guru', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(177, '176.01.02.2011', 'Nurul Chayati', '0000-00-00', 'JL.Karimat No 12', 'Surabaya', '031-60363787', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(178, '177.01.03.2011', 'Damita Nadia Sari', '0000-00-00', 'Rungkut Lor 5-F No 22', 'Surabaya', 'O811372662', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(179, '178.01.03.2011', 'Muklis', '0000-00-00', 'Menur Pumpungan 5 No 68', 'Surabaya', '031-70060020', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(180, '179.01.03.2011', 'Bagoes', '0000-00-00', 'Wisma Kedung Asem Indah FF No 16', 'Surabaya', 'X', 'DOSEN', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(181, '180.01.03.2011', 'Yuni', '0000-00-00', 'Kedurus gg 2 No 102', 'Surabaya', 'O8563000863', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(182, '181.01.03.2011', 'Data Kosong', '0000-00-00', 'x', 'X', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(183, '182.01.03.2011', 'Abdus Syakur', '0000-00-00', 'Banyu Urip Wetan Tengah 6/19 A', 'Surabaya', 'O8563147788', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(184, '183.01.03.2011', 'Agan', '0000-00-00', 'Banyu Urip Wetan Tengah i No 20', 'Surabaya', 'O8563271112', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(185, '184.02.03.2011', 'Toni', '0000-00-00', 'Perum Mager Sari 0/19', 'Sidoarjo', 'O8563333385', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(186, '185.01.03.2011', 'Hendra Stefan Saputra', '0000-00-00', 'x', 'Surabaya', 'O85737182999', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(187, '186.01.04.2011', 'Chrisatrya Mark.W', '0000-00-00', 'JL.Gubeng Kertajaya I D No 12', 'Surabaya', 'O8213100809', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(188, '187.01.04.2011', 'Dodo Ananto', '0000-00-00', 'Perum DAM TA No130', 'Surabaya', '031-34962537', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(189, '188.01.04.2011', 'Dewi Setyowati', '0000-00-00', 'Siwalan Kerto SEL gg Makam No 66', 'Surabaya', '031-70880132', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(190, '189.01.04.2011', 'Mujianah', '0000-00-00', 'JL. Bhaskara 3/46', 'Surabaya', '031-5991509', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(191, '190.01.04.2011', 'Djoko', '0000-00-00', 'Margorukun 10/9', 'Surabaya', 'O82131403848', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(192, '191.01.04.2011', 'Sigit Lukman', '0000-00-00', 'Manyar Sambrangan I No 50 A', 'Surabaya', 'O82131403848', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(193, '192.01.04.2011', 'Sumaiyah', '0000-00-00', 'JL. Pucang 3 No 10', 'Surabaya', 'X', 'Guru SMAN 4 Sby', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(194, '193.01.04.2011', 'Dwi Rahayu', '0000-00-00', 'Wisma Penjaringan Sari U No 29', 'Surabaya', '031-91152852', 'Guru SMAN 4 Sby', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(195, '194.01.04.2011', 'Nur Sutopo', '0000-00-00', 'JL.Bogen 11/17 A', 'Surabaya', '031-70426778', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(196, '195.01.04.2011', 'Emilia', '0000-00-00', 'JL. Perum Pandugo Timur D No 23', 'Surabaya', '031-8706089', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(197, '196.02.04.2011', 'Agung Dwi Putra', '0000-00-00', 'Cemeng Kalang RT02 RW01', 'Sidoarjo', 'O85223492235', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(198, '197.01.04.2011', 'Sri Hardinah', '0000-00-00', 'Kertajaya 4A/7 Sby', 'Surabaya', '031-5010424', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(199, '198.01.05.2011', 'Gatut Hendro Wardono', '0000-00-00', 'JL. SIMP Flamboyan 2 RT/RW 008/010', 'Surabaya', 'X', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(200, '199.03.05.2011', 'Endah Lestari', '0000-00-00', 'Perum.Paras Jajar A-2 MLG', 'Surabaya', 'X', 'DOSEN', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(201, '200.02.05.2011', 'Ismanita Eka Dewi', '0000-00-00', 'Taman Pinang Indah H4/20 SDA', 'Sidoarjo', 'O81515141314', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(202, '201.02.05.2011', 'Nur Afifah', '0000-00-00', 'JL.Nangka 3 Pekarungan RT 03 RW 02', 'Sidoarjo', 'O85731284439', 'Guru', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(203, '202.05.05.2011', 'Nunuk', '0000-00-00', 'Perum. Griya Japan Raya RT 01 RW 12 Mojokerto', 'Mojokerto', 'X', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(204, '203.01.05.2011', 'Hendra', '0000-00-00', 'Jagir Sidomukti 6 No 23', 'Surabaya', 'O85733137398', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(205, '204.01.05.2011', 'Sofyan', '0000-00-00', 'Kebon Sari Selatan 1 No 17', 'Sidoarjo', 'O8563032344', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(206, '205.01.06.2011', 'Silvi Triana', '0000-00-00', 'Jl.Ngagel Mulyo 10/3', 'Surabaya', '031-5022326', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(207, '206.01.06.2011', 'Sukarti Widayani', '0000-00-00', 'x', 'Surabaya', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(208, '207.01.06.2011', 'Saodah', '0000-00-00', 'JL.Candi Kempung Blok A/60 Surabaya', 'Surabaya', '031-7418370', 'TVRI Jatim', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(209, '208.02.06.2011', 'Gustira Atra Widya', '0000-00-00', 'Perum Villa Yasmin 1B/18 Sidoarjo', 'Sidoarjo', 'X', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(210, '209.01.07.2011', 'Nasripah', '0000-00-00', 'Wonocolo Gang 1 No 8', 'Surabaya', 'X', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(211, '210.01.07.2011', 'Setyokoi', '0000-00-00', 'x', 'Surabaya', 'x', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(212, '211.01.07.2011', 'Teddy Mulyad', '0000-00-00', 'x', 'Surabaya', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(213, '212.01.07.2011', 'Edi Martono', '0000-00-00', 'Simo Mulyo Baru Blok 2D/17', 'Surabaya', 'X', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(214, '213.01.07.2011', 'Ratih Dharmawati', '0000-00-00', 'Jl.Dukuh Kupang 14/26', 'Surabaya', '031-91890457', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(215, '214.01.07.2011', 'Dekik Dhian Damayanti', '0000-00-00', 'Medokan Asri Utara 6/4 Surabaya', 'Surabaya', 'X', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(216, '215.01.08.2011', 'Sri Minarni', '0000-00-00', 'YKP. Pandugo II-L/35', 'Surabaya', '031-72143643', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(217, '216.01.08.2011', 'M.Ayub', '0000-00-00', 'Rungkut Tengah 3 B/20', 'Surabaya', 'X', 'Wiraswasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(218, '217.01.08.2011', 'Susilowati', '0000-00-00', 'Ngagel Kebon Sari 2/4', 'Surabaya', 'X', 'IRT', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(219, '218.01.08.2011', 'Rita TK', '0000-00-00', 'x', 'Surabaya', 'X', 'Guru', 'KTP', 'X', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(220, '219.01.08.2011', 'Istyo Wibowo', '0000-00-00', 'JL.Jemur Andayani VI/8', 'Surabaya', '031-8496477', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(221, '220.01.08.2011', 'Prihandoyo', '0000-00-00', 'x', 'Surabaya', 'X', 'X', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(222, '221.01.09.2011', 'Enny H', '0000-00-00', 'Karang Rejo Timur 3/11 A', 'Surabaya', '081331728729', 'Guru', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(223, '222.01.10.2011', 'lisa Chamila', '0000-00-00', 'JL.Pelampitan X/4 Surabaya', 'Surabaya', '031-5474905', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(224, '223.01.10.2011', 'Siti Alimah', '0000-00-00', 'Gunung Sari Indah uu/22', 'Surabaya', '031-7661922', 'DOSEN', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(225, '224.01.10.2011', 'Ertha Rosely Bernita', '0000-00-00', 'JL.Teknik Sipil Blok J-35 ITS', 'Surabaya', '031-70069042', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(226, '225.01.10.2011', 'Christine Denni', '0000-00-00', 'Keputih Tegal Timur 3A/C2 Surabaya', 'Surabaya', '031-71902016', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(227, '226.02.10.2011', 'Titin Hernanik', '0000-00-00', 'Griyo Wage Asri II Blok Ai/08', 'Sidoarjo', '031-60705549', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(228, '227.05.10.2011', 'Ferry Indra', '0000-00-00', 'JL.Anggrek IX Blok C/22', 'Surabaya', '031-81960143', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(229, '228.01.10.2011', 'Lilik SR', '0000-00-00', 'Wonorejo Selatan II Kav 100', 'Surabaya', '031-70076222', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(230, '229.02.10.2011', 'Henni', '0000-00-00', 'Wisma Permai Regncy EE-2 Sidoarjo', 'Sidoarjo', 'X', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(231, '230.01.11.2011', 'Binti Susminantik', '0000-00-00', 'Jl. Sidosermo 4/24', 'Surabaya', 'O81553202014', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(232, '231.01.11.2011', 'Nova', '0000-00-00', 'JL.Kalibokor No 69A', 'Surabaya', 'O87853900516', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(233, '232.01.11.2011', 'Sandy Debby', '0000-00-00', 'JL.Susanto 22 RT 007 RW 004 Kenjeran', 'Surabaya', 'O81233366770', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(234, '233.01.11.2011', 'Yunita R', '0000-00-00', 'Bagong Ginayan 7/10', 'Surabaya', 'X', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(235, '234.02.11.2011', 'Berfitto', '0000-00-00', 'Tridasa Windu Asri H 12 Sidoarjo', 'Sidoarjo', 'O87851566166', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(237, '234.01.11.2011', 'Barfitto', '2011-11-23', 'Perum Tridasa Windu Asri H/12', 'Buduran-Sidoarjo', '087851566166', 'karyawan BCA cab Darmo', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(238, '236.01.12.2011', 'Tri Karyani', '2011-12-31', 'Jl. Tambak Gringsing I/27 A', 'Surabaya', '031-3539751', 'karyawan Batik Danar Hadi', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(239, '238.01.02.2012', 'Arnold Priajaya  ', '2012-02-14', 'Manyar Sabrangan VIII B/15', 'Surabaya', '081332390099', 'karyawan BCA cab Darmo', 'KTP', 'X', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(240, '239.01.02.2012', 'Yulia Horoni ', '2012-02-11', 'Pandugo Baru A - 1 ', 'Surabaya', '081217708167', 'Ibu Rumah Tangga', 'KTP', 'X', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(241, '240.02.02.2012', 'Siti Nurhayati', '2012-02-25', 'Desa Mlaten RT. 26 RW. 06 Sidokepung ', 'Buduran-Sidoarjo', 'x', 'Ibu Rumah Tangga', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(242, '241.01.03.2012', 'Kolifah', '2012-03-02', 'Banyu Urip Jaya I No. 44 B', 'Surabaya', '085730976360', 'karyawan Batik Danar Hadi', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(243, '243.01.03.2012', 'Fadhu Rahmi', '2012-03-10', 'Ngagel Kebonsari No. 17', 'Surabaya', '081346222604', 'Ibu Rumah Tangga', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(244, '244.04.05.2012', 'Soemartono', '2012-05-17', 'Cengger Ayam Dalam II / 17 ', 'Malang', '08123511759', 'PNS', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(245, '245.01.05.2012', 'Sintawati', '2012-05-10', 'Panjang Jiwo Permai 2 / 31 - 32 ', 'Surabaya', '081331000770 / 0817500555', 'Ibu Rumah Tangga', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(246, '246.01.07.2012', 'Ineke Coborahayu', '2012-07-31', 'Ploso Timur II / 30', 'Surabaya', '087856053900', 'karyawan BCA cab Darmo', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(247, '247.02.09.2012', 'Aisah Lilis Ely', '2012-09-04', 'Perum Bluru Permai Blok CU - 24 ', 'Sidoarjo', '031-91788547', 'Karyawan Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(248, '248.02.09.2012', 'Reny Diah Purwandhani', '2012-09-20', 'Griya Bhayangkara Suko B / 8', 'Sidoarjo', '085640058721', 'Pegawai Koperasi Tetrasma', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(249, '249.02.10.2012', 'Ermyn Soesy Widijati', '2012-10-12', 'Jatisari Permai VI. I / 32', 'Sidoarjo', '081387299777', 'Karyawan BCA', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(250, '250.02.12.2012', 'Wasisto Budiawan ', '2012-12-03', 'Cendrawasih Bunderan 110 Rewwin Waru', 'Sidoarjo', '08123130512', 'Swasta', 'KTP', 'x', 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(251, 'x', 'xx', '2016-07-10', 'x', 'x', 'x', 'x', 'x', 'x', 1, '2016-07-10 22:55:11', NULL, '2016-07-10 23:30:23', 1),
(252, 'x', 'x', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-07-10 22:55:11', NULL, NULL, 1),
(253, 'xxx', 'xxx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2016-07-11 11:59:51', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_angsuran`
--

CREATE TABLE IF NOT EXISTS `tbl_angsuran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_bukti` varchar(12) DEFAULT NULL,
  `tgl_bukti` varchar(10) DEFAULT NULL,
  `no_pinj` varchar(12) DEFAULT NULL,
  `bayar` double DEFAULT NULL,
  `sisa` double DEFAULT NULL,
  `periode` varchar(3) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `jml_sisa` double DEFAULT NULL,
  `terlambat` varchar(3) DEFAULT NULL,
  `denda` double DEFAULT NULL,
  `jumlah` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_tran` varchar(14) DEFAULT NULL,
  `no_anggota` varchar(25) DEFAULT NULL,
  `debet` double DEFAULT NULL,
  `kredit` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detailsimpjangka`
--

CREATE TABLE IF NOT EXISTS `tbl_detailsimpjangka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_tran` varchar(14) NOT NULL,
  `saldo_simp` double NOT NULL,
  `tgl_cair` date NOT NULL,
  `cair_ke` smallint(6) NOT NULL,
  `posting_no_tran` varchar(14) NOT NULL,
  `posting_flag` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_detailsimpjangka`
--

INSERT INTO `tbl_detailsimpjangka` (`id`, `no_tran`, `saldo_simp`, `tgl_cair`, `cair_ke`, `posting_no_tran`, `posting_flag`) VALUES
(1, 'SM-201510001', 10050000, '2015-10-23', 1, '', 1),
(2, 'SM-201510001', 10100000, '2015-12-08', 2, '', 0),
(3, 'SM-201510001', 10150000, '2016-01-08', 3, '', 0),
(4, 'SM-201510001', 10200000, '2016-02-08', 4, '', 0),
(5, 'SM-201510001', 10250000, '2016-03-08', 5, '', 0),
(6, 'SM-201510001', 10300000, '2016-04-08', 6, '', 0),
(7, 'SM-201607004', 1004166.6666667, '2016-08-08', 1, '', 0),
(8, 'SM-201607004', 1008333.3333333, '2016-09-08', 2, '', 0),
(9, 'SM-201607004', 1012500, '2016-10-08', 3, '', 0),
(10, 'SM-201607004', 1016666.6666667, '2016-11-08', 4, '', 0),
(11, 'SM-201607004', 1020833.3333333, '2016-12-08', 5, '', 0),
(12, 'SM-201607004', 1025000, '2017-01-08', 6, '', 0),
(13, 'SM-201607004', 1029166.6666667, '2017-02-08', 7, '', 0),
(14, 'SM-201607004', 1033333.3333333, '2017-03-08', 8, '', 0),
(15, 'SM-201607004', 1037500, '2017-04-08', 9, '', 0),
(16, 'SM-201607004', 1041666.6666667, '2017-05-08', 10, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_headsimpjangka`
--

CREATE TABLE IF NOT EXISTS `tbl_headsimpjangka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_tran` varchar(14) NOT NULL,
  `jml_simp` double NOT NULL,
  `jangka` smallint(6) NOT NULL,
  `bunga` smallint(6) NOT NULL,
  `bng_simp` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_headsimpjangka`
--

INSERT INTO `tbl_headsimpjangka` (`id`, `no_tran`, `jml_simp`, `jangka`, `bunga`, `bng_simp`) VALUES
(1, 'SM-201510001', 10000000, 6, 6, 50000),
(2, 'SM-201607004', 1000000, 10, 5, 4166.6666666667);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurnal`
--

CREATE TABLE IF NOT EXISTS `tbl_jurnal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(12) NOT NULL,
  `tgl` date NOT NULL,
  `ket` text NOT NULL,
  `login_id` int(11) NOT NULL,
  `waktu_post` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_jurnal`
--

INSERT INTO `tbl_jurnal` (`id`, `no`, `tgl`, `ket`, `login_id`, `waktu_post`) VALUES
(1, 'KM-201611001', '2016-11-17', '123', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurnal_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_jurnal_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jurnal_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `akun_id` int(11) NOT NULL,
  `debet` double NOT NULL,
  `kredit` double NOT NULL,
  `anggota_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jurnal_id` (`jurnal_id`),
  KEY `akun_id` (`akun_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_jurnal_detail`
--

INSERT INTO `tbl_jurnal_detail` (`id`, `jurnal_id`, `item`, `akun_id`, `debet`, `kredit`, `anggota_id`) VALUES
(1, 1, 1, 1, 22500, 0, 0),
(2, 1, 1, 17, 0, 22500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lv1`
--

CREATE TABLE IF NOT EXISTS `tbl_lv1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(1) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `del_flag` tinyint(4) NOT NULL,
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_lv1`
--

INSERT INTO `tbl_lv1` (`id`, `no`, `nama`, `del_flag`, `insert_date`, `update_date`, `delete_date`, `id_user`) VALUES
(1, '1', 'Aktiva', 0, '2016-07-11 05:39:53', '2016-07-14 20:14:46', NULL, 1),
(2, '2', 'Hutang', 0, '2016-07-11 05:39:53', NULL, NULL, 1),
(3, '3', 'Modal', 0, '2016-07-11 05:39:53', NULL, NULL, 1),
(4, '4', 'Pendapatan', 0, '2016-07-11 05:39:53', NULL, NULL, 1),
(5, '5', 'HPP', 0, '2016-07-11 05:39:53', NULL, NULL, 1),
(6, '6', 'Biaya', 0, '2016-07-11 05:39:53', '2016-07-14 20:08:32', NULL, 1),
(7, '7', 'a1', 0, '2016-07-18 22:41:00', NULL, NULL, 1),
(8, '8', 'aa8', 0, '2016-07-19 19:49:11', NULL, '2016-07-19 19:53:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lv2`
--

CREATE TABLE IF NOT EXISTS `tbl_lv2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_lv1` int(11) NOT NULL,
  `no` varchar(1) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `del_flag` tinyint(4) NOT NULL,
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_lv1` (`id_lv1`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_lv2`
--

INSERT INTO `tbl_lv2` (`id`, `id_lv1`, `no`, `nama`, `del_flag`, `insert_date`, `update_date`, `delete_date`, `id_user`) VALUES
(1, 1, '1', 'Aktiva Lancar', 0, '2016-07-11 05:42:16', NULL, NULL, 1),
(2, 1, '2', 'Aktiva Tetap', 0, '2016-07-11 05:42:16', NULL, NULL, 1),
(3, 2, '1', 'Hutang Jk. Pendek', 0, '2016-07-11 05:42:16', '2016-07-13 04:39:23', NULL, 1),
(4, 3, '1', 'Modal Sendiri', 0, '2016-07-11 05:42:16', '2016-07-14 14:58:03', NULL, 1),
(5, 4, '1', 'Pendapatan Usaha', 0, '2016-07-11 05:42:16', '2016-07-14 12:59:43', NULL, 1),
(6, 5, '1', 'Biaya Langsung', 0, '2016-07-11 05:42:16', NULL, NULL, 1),
(7, 6, '1', 'Biaya', 0, '2016-07-11 05:42:16', NULL, NULL, 1),
(8, 2, '2', 'Hutang Jk. Panjang', 0, '2016-07-13 04:40:45', '2016-07-13 04:41:31', NULL, 1),
(9, 7, '1', 'b1', 0, '2016-07-18 22:41:25', '2016-07-18 23:00:42', NULL, 1),
(10, 7, '2', 'b2', 0, '2016-07-18 23:02:36', '2016-07-18 23:15:13', NULL, 1),
(11, 8, '1', 'bb81', 0, '2016-07-19 19:49:49', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lv3`
--

CREATE TABLE IF NOT EXISTS `tbl_lv3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_lv1` int(11) NOT NULL,
  `id_lv2` int(11) NOT NULL,
  `no` varchar(2) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `del_flag` tinyint(4) NOT NULL,
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_lv2` (`id_lv2`),
  KEY `id_user` (`id_user`),
  KEY `id_lv1` (`id_lv1`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tbl_lv3`
--

INSERT INTO `tbl_lv3` (`id`, `id_lv1`, `id_lv2`, `no`, `nama`, `del_flag`, `insert_date`, `update_date`, `delete_date`, `id_user`) VALUES
(1, 1, 1, '1', 'Kas', 0, '2016-07-11 05:43:31', '2016-07-13 04:52:57', NULL, 1),
(2, 1, 1, '3', 'Piutang', 0, '2016-07-11 05:43:31', '2016-07-13 04:53:18', NULL, 1),
(3, 1, 1, '4', 'Aktiva Lain', 0, '2016-07-11 05:43:31', '2016-07-13 04:53:43', NULL, 1),
(4, 1, 2, '1', 'Aktiva Tetap', 0, '2016-07-11 05:43:31', NULL, NULL, 1),
(5, 2, 3, '1', 'Hutang Lancar', 0, '2016-07-11 05:43:31', '2016-07-13 01:17:02', NULL, 1),
(6, 2, 3, '2', 'Hutang Jangka Panjang', 0, '2016-07-11 05:43:31', '2016-07-13 01:17:20', NULL, 1),
(7, 3, 4, '1', 'Simpanan Pokok', 0, '2016-07-11 05:43:31', '2016-07-15 13:19:01', NULL, 1),
(8, 3, 4, '2', 'Simpanan Wajib', 0, '2016-07-11 05:43:31', '2016-07-15 13:19:24', NULL, 1),
(9, 4, 5, '1', 'Pendapatan Bunga Pinjaman', 0, '2016-07-11 05:43:31', '2016-07-14 13:00:33', NULL, 1),
(10, 5, 6, '1', 'Biaya Langsung', 0, '2016-07-11 05:43:31', '2016-07-13 01:18:50', NULL, 1),
(11, 6, 7, '1', 'Biaya Keuangan', 0, '2016-07-11 05:43:31', '2016-07-13 01:26:00', NULL, 1),
(12, 6, 7, '2', 'Biaya Organisasi', 0, '2016-07-11 05:43:31', '2016-07-13 01:26:17', NULL, 1),
(13, 6, 7, '3', 'Biaya Karyawan', 0, '2016-07-11 05:43:31', '2016-07-13 01:26:31', NULL, 1),
(14, 6, 7, '4', 'Biaya Operasional Kantor', 0, '2016-07-11 05:43:31', '2016-07-13 01:26:43', NULL, 1),
(15, 1, 1, '1', 'Bank', 1, '2016-07-13 04:54:21', NULL, '2016-07-14 20:00:50', 1),
(16, 1, 1, '2', 'Bank', 0, '2016-07-13 04:59:55', NULL, NULL, 1),
(17, 1, 1, '2', 'Bank', 1, '2016-07-13 05:00:52', NULL, '2016-07-14 20:00:22', 1),
(18, 3, 4, '3', 'Simpanan Sukarela', 0, '2016-07-15 13:20:29', NULL, NULL, 1),
(19, 7, 9, '1', 'c1', 0, '2016-07-18 22:41:58', NULL, NULL, 1),
(20, 7, 10, '4', 'c2', 0, '2016-07-18 23:03:26', '2016-07-18 23:12:50', NULL, 1),
(21, 7, 10, '2', 'c3', 0, '2016-07-18 23:05:21', NULL, NULL, 1),
(22, 7, 10, '3', 'c4', 0, '2016-07-18 23:06:12', NULL, NULL, 1),
(23, 8, 11, '1', 'cc811', 0, '2016-07-19 19:50:26', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lv4`
--

CREATE TABLE IF NOT EXISTS `tbl_lv4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_lv1` int(11) NOT NULL,
  `id_lv2` int(11) NOT NULL,
  `id_lv3` int(11) NOT NULL,
  `no` varchar(2) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `del_flag` tinyint(4) NOT NULL,
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_lv3` (`id_lv3`),
  KEY `id_user` (`id_user`),
  KEY `id_lv1` (`id_lv1`,`id_lv2`),
  KEY `id_lv2` (`id_lv2`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `tbl_lv4`
--

INSERT INTO `tbl_lv4` (`id`, `id_lv1`, `id_lv2`, `id_lv3`, `no`, `nama`, `del_flag`, `insert_date`, `update_date`, `delete_date`, `id_user`) VALUES
(1, 1, 1, 1, '01', 'Kas', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(2, 1, 1, 1, '02', 'Bank BCA', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(3, 1, 1, 1, '03', 'Bank Mandiri', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(4, 1, 1, 2, '01', 'Pinjaman yang diberikan', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(5, 1, 1, 2, '02', 'Asuransi dibayar dimuka', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(6, 1, 1, 2, '03', 'Beban dibayar dimuka', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(7, 1, 1, 2, '04', 'Penyisihan piutang tak tertagih', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(8, 1, 1, 2, '05', 'Pendapatan ymh diterima', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(9, 1, 1, 3, '01', 'Aktiva lain', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(10, 1, 2, 4, '01', 'Tanah', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(11, 1, 2, 4, '02', 'Bangunan', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(12, 1, 2, 4, '03', 'Akumulasi Penyusutan Bangunan', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(13, 1, 2, 4, '04', 'Peralatan / Mebel', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(14, 1, 2, 4, '05', 'Akumulasi Penyusutan Peralatan / Mebel', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(15, 1, 2, 4, '06', 'Inventaris Kantor', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(16, 1, 2, 4, '07', 'Akumulasi Penyusutan Inventaris Kantor', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(17, 2, 3, 5, '01', 'Simpanan Sukarela', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(18, 2, 3, 5, '02', 'Simpanan Berjangka', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(19, 2, 3, 5, '03', 'Simpanan Karyawan', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(20, 2, 3, 5, '04', 'Hutang Bank', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(21, 2, 3, 5, '05', 'Beban YMH Dibayar', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(22, 2, 3, 5, '99', 'Hutang Lain-Lain', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(23, 2, 3, 6, '01', 'Hutang Sewa', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(24, 3, 4, 7, '01', 'Simpanan Pokok', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(25, 3, 4, 7, '02', 'Simpanan Wajib', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(26, 3, 4, 7, '03', 'Donasi', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(27, 3, 4, 7, '04', 'Modal Penyertaan', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(28, 3, 4, 7, '05', 'Cad. Tujuan Resiko', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(29, 3, 4, 8, '01', 'Laba Periode Berjalan', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(30, 3, 4, 8, '02', 'Cadangan SHU', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(31, 4, 5, 9, '01', 'Pendapatan Bunga', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(32, 4, 5, 9, '02', 'Pendapatan Provisi', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(33, 4, 5, 9, '03', 'Pendapatan Administrasi', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(34, 4, 5, 9, '99', 'Pendapatan Lainnya', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(35, 5, 6, 10, '01', 'Biaya Langsung', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(36, 6, 7, 11, '01', 'Bunga Simpanan', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(37, 6, 7, 11, '02', 'Bunga Bank', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(38, 6, 7, 11, '03', 'Bunga Simpanan Lain-Lain', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(39, 6, 7, 11, '04', 'Bunga Simpanan Berjangka', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(40, 6, 7, 11, '05', 'Bunga Simpanan Khusus', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(41, 6, 7, 11, '06', 'Biaya Penysh. Piut. Tak Tertg.', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(42, 6, 7, 11, '07', 'Biaya Asuransi', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(43, 6, 7, 11, '08', 'Biaya Audit', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(44, 6, 7, 11, '09', 'Biaya Pajak', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(45, 6, 7, 11, '99', 'Biaya Keu. Lain-Lain', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(46, 6, 7, 12, '01', 'Biaya Rapat Pengurus', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(47, 6, 7, 12, '02', 'Biaya Rapat Anggota', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(48, 6, 7, 12, '03', 'Biaya Perjalanan Dinas', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(49, 6, 7, 12, '04', 'Biaya Diklat', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(50, 6, 7, 12, '05', 'Biaya Honorarium Pengurus', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(51, 6, 7, 12, '06', 'Biaya Pembinaan', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(52, 6, 7, 12, '99', 'Biaya Org. Lain-Lain', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(53, 6, 7, 13, '01', 'Gaji Karyawan', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(54, 6, 7, 13, '02', 'Tunjangan', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(55, 6, 7, 13, '03', 'Konsumsi', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(56, 6, 7, 13, '04', 'Biaya Transport Dinas', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(57, 6, 7, 13, '05', 'Biaya Pendidikan', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(58, 6, 7, 14, '99', 'Biaya Kary. Lain-Lain', 0, '2016-07-11 05:44:56', '2016-07-13 11:53:58', NULL, 1),
(59, 6, 7, 14, '01', 'Biaya Alat Tulis', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(60, 6, 7, 14, '02', 'Biaya Listrik xx', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(61, 6, 7, 14, '03', 'Biaya Telepon', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(62, 6, 7, 14, '04', 'Biaya Air', 0, '2016-07-11 05:44:56', NULL, NULL, 1),
(63, 6, 7, 11, '99', 'Biaya Ops. Lain-Lain', 1, '2016-07-11 05:44:56', '2016-07-13 11:53:28', '2016-07-14 19:58:11', 1),
(64, 7, 9, 19, '01', 'd1', 0, '2016-07-18 22:42:34', NULL, NULL, 1),
(65, 7, 10, 20, '01', 'd2', 0, '2016-07-18 23:04:22', '2016-07-18 23:04:38', NULL, 1),
(72, 8, 11, 23, '01', 'dd81101', 0, '2016-07-19 19:51:25', NULL, NULL, 1),
(71, 7, 9, 19, '02', 'abcd', 0, '2016-07-19 01:20:07', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mastbak`
--

CREATE TABLE IF NOT EXISTS `tbl_mastbak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noper` varchar(8) DEFAULT NULL,
  `rekd` double DEFAULT NULL,
  `rekk` double DEFAULT NULL,
  `kth` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mastnew`
--

CREATE TABLE IF NOT EXISTS `tbl_mastnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_lv4` int(11) NOT NULL,
  `rpdlalu` double DEFAULT NULL,
  `rpklalu` double DEFAULT NULL,
  `rpdini` double DEFAULT NULL,
  `rpkini` double DEFAULT NULL,
  `blth` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `tbl_mastnew`
--

INSERT INTO `tbl_mastnew` (`id`, `id_lv4`, `rpdlalu`, `rpklalu`, `rpdini`, `rpkini`, `blth`) VALUES
(1, 1, NULL, NULL, 10000000, NULL, '2016-07-19'),
(2, 2, NULL, NULL, NULL, NULL, '2016-07-19'),
(3, 3, NULL, NULL, NULL, NULL, '2016-07-19'),
(4, 4, NULL, NULL, NULL, NULL, '2016-07-19'),
(5, 5, NULL, NULL, NULL, NULL, '2016-07-19'),
(6, 6, NULL, NULL, NULL, NULL, '2016-07-19'),
(7, 7, NULL, NULL, NULL, NULL, '2016-07-19'),
(8, 8, NULL, NULL, NULL, NULL, '2016-07-19'),
(9, 9, NULL, NULL, NULL, NULL, '2016-07-19'),
(10, 10, NULL, NULL, NULL, NULL, '2016-07-19'),
(11, 11, NULL, NULL, NULL, NULL, '2016-07-19'),
(12, 12, NULL, NULL, NULL, NULL, '2016-07-19'),
(13, 13, NULL, NULL, NULL, NULL, '2016-07-19'),
(14, 14, NULL, NULL, NULL, NULL, '2016-07-19'),
(15, 15, NULL, NULL, NULL, NULL, '2016-07-19'),
(16, 16, NULL, NULL, NULL, NULL, '2016-07-19'),
(17, 17, NULL, NULL, NULL, NULL, '2016-07-19'),
(18, 18, NULL, NULL, NULL, NULL, '2016-07-19'),
(19, 19, NULL, NULL, NULL, NULL, '2016-07-19'),
(20, 20, NULL, NULL, NULL, NULL, '2016-07-19'),
(21, 21, NULL, NULL, NULL, NULL, '2016-07-19'),
(22, 22, NULL, NULL, NULL, NULL, '2016-07-19'),
(23, 23, NULL, NULL, NULL, NULL, '2016-07-19'),
(24, 24, NULL, NULL, NULL, NULL, '2016-07-19'),
(25, 25, NULL, NULL, NULL, NULL, '2016-07-19'),
(26, 26, NULL, NULL, NULL, NULL, '2016-07-19'),
(27, 27, NULL, NULL, NULL, NULL, '2016-07-19'),
(28, 28, NULL, NULL, NULL, NULL, '2016-07-19'),
(29, 29, NULL, NULL, NULL, NULL, '2016-07-19'),
(30, 30, NULL, NULL, NULL, NULL, '2016-07-19'),
(31, 31, NULL, NULL, NULL, NULL, '2016-07-19'),
(32, 32, NULL, NULL, NULL, NULL, '2016-07-19'),
(33, 33, NULL, NULL, NULL, NULL, '2016-07-19'),
(34, 34, NULL, NULL, NULL, NULL, '2016-07-19'),
(35, 35, NULL, NULL, NULL, NULL, '2016-07-19'),
(36, 36, NULL, NULL, NULL, NULL, '2016-07-19'),
(37, 37, NULL, NULL, NULL, NULL, '2016-07-19'),
(38, 38, NULL, NULL, NULL, NULL, '2016-07-19'),
(39, 39, NULL, NULL, NULL, NULL, '2016-07-19'),
(40, 40, NULL, NULL, NULL, NULL, '2016-07-19'),
(41, 41, NULL, NULL, NULL, NULL, '2016-07-19'),
(42, 42, NULL, NULL, NULL, NULL, '2016-07-19'),
(43, 43, NULL, NULL, NULL, NULL, '2016-07-19'),
(44, 44, NULL, NULL, NULL, NULL, '2016-07-19'),
(45, 45, NULL, NULL, NULL, NULL, '2016-07-19'),
(46, 46, NULL, NULL, NULL, NULL, '2016-07-19'),
(47, 47, NULL, NULL, NULL, NULL, '2016-07-19'),
(48, 48, NULL, NULL, NULL, NULL, '2016-07-19'),
(49, 49, NULL, NULL, NULL, NULL, '2016-07-19'),
(50, 50, NULL, NULL, NULL, NULL, '2016-07-19'),
(51, 51, NULL, NULL, NULL, NULL, '2016-07-19'),
(52, 52, NULL, NULL, NULL, NULL, '2016-07-19'),
(53, 53, NULL, NULL, NULL, NULL, '2016-07-19'),
(54, 54, NULL, NULL, NULL, NULL, '2016-07-19'),
(55, 55, NULL, NULL, NULL, NULL, '2016-07-19'),
(56, 56, NULL, NULL, NULL, NULL, '2016-07-19'),
(57, 57, NULL, NULL, NULL, NULL, '2016-07-19'),
(58, 58, NULL, NULL, NULL, NULL, '2016-07-19'),
(59, 59, NULL, NULL, NULL, NULL, '2016-07-19'),
(60, 60, NULL, NULL, NULL, NULL, '2016-07-19'),
(61, 61, NULL, NULL, NULL, NULL, '2016-07-19'),
(62, 62, NULL, NULL, NULL, NULL, '2016-07-19'),
(63, 63, NULL, NULL, NULL, NULL, '2016-07-19'),
(64, 64, NULL, NULL, NULL, NULL, '2016-07-19'),
(65, 65, NULL, NULL, NULL, NULL, '2016-07-19'),
(66, 71, NULL, NULL, NULL, NULL, '2016-07-19'),
(67, 72, NULL, NULL, NULL, NULL, '2016-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mastold`
--

CREATE TABLE IF NOT EXISTS `tbl_mastold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_lv4` int(11) NOT NULL,
  `rpdlalu` double DEFAULT NULL,
  `rpklalu` double DEFAULT NULL,
  `rpdini` double DEFAULT NULL,
  `rpkini` double DEFAULT NULL,
  `blth` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mst_simpanan`
--

CREATE TABLE IF NOT EXISTS `tbl_mst_simpanan` (
  `id_jns_tran` int(11) NOT NULL AUTO_INCREMENT,
  `jns_tran` varchar(50) NOT NULL,
  `ket_tran` varchar(100) DEFAULT NULL,
  `id_lv4` int(11) NOT NULL,
  `del_flag` tinyint(1) NOT NULL,
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_jns_tran`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_mst_simpanan`
--

INSERT INTO `tbl_mst_simpanan` (`id_jns_tran`, `jns_tran`, `ket_tran`, `id_lv4`, `del_flag`, `insert_date`, `update_date`, `delete_date`, `id_user`) VALUES
(1, 'Wajib', NULL, 25, 0, '2016-07-10 23:05:00', '2016-07-20 23:39:43', NULL, 1),
(2, 'Pokok', NULL, 24, 0, '2016-07-10 23:05:00', '2016-07-20 23:40:03', NULL, 1),
(3, 'Sukarela', NULL, 1, 0, '2016-07-10 23:05:00', NULL, NULL, 1),
(4, 'Berjangka', NULL, 1, 0, '2016-07-10 23:05:00', NULL, NULL, 1),
(5, 'Insidentil', NULL, 1, 0, '2016-07-10 23:05:00', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parameter`
--

CREATE TABLE IF NOT EXISTS `tbl_parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ket` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nilai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_parameter`
--

INSERT INTO `tbl_parameter` (`id`, `ket`, `nilai`) VALUES
(1, 'Kas', '1.1.1.01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penarikan`
--

CREATE TABLE IF NOT EXISTS `tbl_penarikan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_tran` varchar(14) NOT NULL,
  `tgl_tran` date NOT NULL,
  `no_anggota` varchar(25) NOT NULL,
  `jns_tran` varchar(25) NOT NULL,
  `jml_tran` double NOT NULL,
  `del_flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinjaman`
--

CREATE TABLE IF NOT EXISTS `tbl_pinjaman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_tran` varchar(14) DEFAULT NULL,
  `tgl_tran` varchar(10) DEFAULT NULL,
  `no_anggota` varchar(25) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `pinj_pokok` double DEFAULT NULL,
  `lama` int(11) DEFAULT NULL,
  `bunga` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `tgl_mulai` varchar(10) DEFAULT NULL,
  `tgl_selesai` varchar(10) DEFAULT NULL,
  `jml_bunga` double DEFAULT NULL,
  `pinj_tot` double DEFAULT NULL,
  `angs` double DEFAULT NULL,
  `tgl_bayar` varchar(10) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_pinjaman`
--

INSERT INTO `tbl_pinjaman` (`id`, `no_tran`, `tgl_tran`, `no_anggota`, `ket`, `pinj_pokok`, `lama`, `bunga`, `admin`, `tgl_mulai`, `tgl_selesai`, `jml_bunga`, `pinj_tot`, `angs`, `tgl_bayar`, `status`) VALUES
(1, 'PJ-201607001', '2016-07-09', '1.01.10.2009', '', 10000000, 12, 5, 1, '2016-07-09', '2017-07-09', 600000, 10600000, 883333.333333333, '09', 'Pinjam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_set_tgl`
--

CREATE TABLE IF NOT EXISTS `tbl_set_tgl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_set_tgl`
--

INSERT INTO `tbl_set_tgl` (`id`, `tanggal`) VALUES
(1, '2016-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_simpanan`
--

CREATE TABLE IF NOT EXISTS `tbl_simpanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_tran` varchar(14) NOT NULL,
  `tgl_tran` date NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_jns_tran` int(11) NOT NULL,
  `jml_tran` double NOT NULL,
  `masa` tinyint(4) DEFAULT NULL,
  `bunga_persen` tinyint(4) DEFAULT NULL,
  `bunga_nilai` double DEFAULT NULL,
  `del_flag` tinyint(1) NOT NULL,
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_jns_tran` (`id_jns_tran`),
  KEY `id_anggota` (`id_anggota`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_simpanan`
--

INSERT INTO `tbl_simpanan` (`id`, `no_tran`, `tgl_tran`, `id_anggota`, `id_jns_tran`, `jml_tran`, `masa`, `bunga_persen`, `bunga_nilai`, `del_flag`, `insert_date`, `update_date`, `delete_date`, `id_user`) VALUES
(1, 'SM-201510001', '2015-10-08', 10, 1, 10000000, 0, 0, 0, 0, '2016-07-10 22:57:58', NULL, NULL, 1),
(4, 'SM-201510002', '2015-10-23', 10, 1, 50000, 0, 0, 0, 0, '2016-07-10 22:57:58', NULL, NULL, 1),
(10, 'SM-201607001', '2016-07-05', 134, 5, 10000, 0, 0, 0, 0, '2016-07-10 22:57:58', NULL, NULL, 1),
(12, 'SM-201607002', '2016-07-05', 184, 1, 2, 0, 0, 0, 0, '2016-07-10 22:57:58', NULL, NULL, 1),
(13, 'SM-201607003', '2016-07-06', 197, 2, 3, 0, 0, 0, 0, '2016-07-10 22:57:58', NULL, NULL, 1),
(15, 'SM-201607004', '2016-07-08', 155, 1, 35000, 0, 0, 0, 0, '2016-07-10 22:57:58', NULL, NULL, 1),
(16, 'SM-201607005', '2016-07-08', 173, 4, 17000000, 6, 10, 141666.66666667, 0, '2016-07-10 22:57:58', NULL, NULL, 1),
(17, 'SM-201607006', '2016-07-08', 5, 4, 2500000, 12, 10, 20833.333333333, 0, '2016-07-10 22:57:58', '2016-07-11 02:26:45', NULL, 1),
(18, 'SM-201607007', '2016-07-09', 187, 5, 50000, 0, 0, 0, 0, '2016-07-10 22:57:58', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transbak`
--

CREATE TABLE IF NOT EXISTS `tbl_transbak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nobuk` varchar(6) DEFAULT NULL,
  `nour` varchar(2) DEFAULT NULL,
  `tglt` varchar(10) DEFAULT NULL,
  `nopert` varchar(8) DEFAULT NULL,
  `penj` varchar(100) DEFAULT NULL,
  `rpdt` double DEFAULT NULL,
  `rpkt` double DEFAULT NULL,
  `bltht` varchar(6) DEFAULT NULL,
  `kode` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transnew`
--

CREATE TABLE IF NOT EXISTS `tbl_transnew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nobuk` varchar(6) DEFAULT NULL,
  `nour` varchar(2) DEFAULT NULL,
  `tglt` varchar(10) DEFAULT NULL,
  `nopert` varchar(8) DEFAULT NULL,
  `penj` varchar(100) DEFAULT NULL,
  `rpdt` double DEFAULT NULL,
  `rpkt` double DEFAULT NULL,
  `kode` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_transnew`
--

INSERT INTO `tbl_transnew` (`id`, `nobuk`, `nour`, `tglt`, `nopert`, `penj`, `rpdt`, `rpkt`, `kode`) VALUES
(1, '201601', '01', '2016-08-04', '-', 'tes', 456, 0, NULL),
(2, '201601', '02', '2016-08-04', '-', 'tes', 0, 678, NULL),
(3, '201602', '01', '2016-08-14', '-', 'tes', 10000, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transold`
--

CREATE TABLE IF NOT EXISTS `tbl_transold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nobuk` varchar(6) DEFAULT NULL,
  `nour` varchar(2) DEFAULT NULL,
  `tglt` varchar(10) DEFAULT NULL,
  `nopert` varchar(8) DEFAULT NULL,
  `penj` varchar(100) DEFAULT NULL,
  `rpdt` double DEFAULT NULL,
  `rpkt` double DEFAULT NULL,
  `bltht` varchar(6) DEFAULT NULL,
  `kode` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `nama`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
