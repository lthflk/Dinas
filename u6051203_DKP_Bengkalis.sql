-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2019 at 06:09 PM
-- Server version: 10.2.25-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u6051203_DKP_Bengkalis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(5, 'gemarikan tahun 2018', '2018-12-19 03:02:23', 1, 'Admin', 8, 'a45bb54e922581a5dbd6f6623ab014e1.JPG'),
(7, 'foto  pembinaan KUB di rupat utara (PP)', '2018-12-29 04:35:13', 35, 'AKBAR', 0, 'f92e1e92106d67773b1f46338c444537.JPG'),
(8, 'TEMU KEMITRAAN DI BUKIT BATU (PP)', '2018-12-29 04:42:14', 35, 'AKBAR', 4, '11ad9aeade8cc3a61c1c6769d51c3e85.JPG'),
(9, 'PELATIHAN PEMANFAATAN TEKNOLOGI SEDERHANA ALAT PEN', '2018-12-29 04:46:08', 35, 'AKBAR', 11, '7cac621035f598833e6e5cc692e8cc7f.jpg'),
(10, 'RAPAT KOORDINASI DAN SINKRONISASI PENGELOLAAN PROG', '2018-12-29 07:09:19', 35, 'AKBAR', 7, '5ce8e4cbea8bae2479f0dc21a302f5ee.JPG'),
(11, 'pelatihan kelompok nelayan desa perapat tunggal th', '2019-01-14 02:28:18', 35, 'AKBAR', 1, 'be19e3c0ec9445746d6dc61254f1b020.jpg'),
(13, 'Asuransi Nelayan', '2019-01-18 01:47:54', 36, 'ovi', 3, 'cdfb31c743c14d8fdd96649643d599b0.jpeg'),
(15, 'Peringatan Hari Ikan Nasional ke - 4 Perikanan Kab', '2019-01-18 08:33:23', 35, 'AKBAR', 7, 'eeadb4110638aa1d9c358ef68c11889b.JPG'),
(16, 'Pertemuan Kepala Dinas dengan Petugas Penyuluh Per', '2019-02-19 06:43:57', 36, 'ovi', 1, 'efb86f28cfa04c8078e142e54cf3663b.jpeg'),
(17, 'Penyerahan simbolis bantuan premi asuransi nelayan', '2019-02-28 04:12:14', 35, 'AKBAR', 4, '8e97b1b89dea7bee4b8a211694524a4e.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aparatur`
--

CREATE TABLE `tbl_aparatur` (
  `id_aparatur` int(21) NOT NULL,
  `aparatur` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_aparatur`
--

INSERT INTO `tbl_aparatur` (`id_aparatur`, `aparatur`) VALUES
(1, 'Pegawai Negeri Sipil'),
(2, 'Honorer'),
(3, 'Tenaga Harian Lepas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data`
--

CREATE TABLE `tbl_data` (
  `data_id` int(11) NOT NULL,
  `data_judul` varchar(100) DEFAULT NULL,
  `data_isi` text DEFAULT NULL,
  `data_pdf` text NOT NULL,
  `data_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `data_kategori_id` int(11) DEFAULT NULL,
  `data_views` int(11) DEFAULT 0,
  `data_pengguna_id` int(11) DEFAULT NULL,
  `data_author` varchar(40) DEFAULT NULL,
  `data_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data`
--

INSERT INTO `tbl_data` (`data_id`, `data_judul`, `data_isi`, `data_pdf`, `data_tanggal`, `data_kategori_id`, `data_views`, `data_pengguna_id`, `data_author`, `data_slug`) VALUES
(6, 'Renstra Dinas Kelautan dan Perikanan Kabupaten Bengkalis Tahun 2016 - 2021', '<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">BAB. I&nbsp;&nbsp; </span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">&nbsp;PENDAHULUAN</span></strong></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">\r\n	<ol>\r\n		<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Latar Belakang</span></strong></span></span></li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:33px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:33px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Dinas Kelautan dan Perikanan Kabupaten Bengkalis sebagai Instansi Teknis Pemerintah Daerah Kabupaten Bengkalis bertanggungjawab kapada bupati selaku kepala daerah dalam melaksanakan tugas-tugas pemerintahan dan&nbsp; pembangunan dalam bidang kelautan dan perikanan sesuai dengan&nbsp; Peraturan Daerah Kabupaten Bengkalis Nomor</span><span style=\"font-size:12.0pt\"><span style=\"color:black\">3</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> tahun 20</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">16</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">, </span></span><span style=\"font-size:12.0pt\">tentang </span><span style=\"font-size:12.0pt\">P</span><span style=\"font-size:12.0pt\">embentukan </span><span style=\"font-size:12.0pt\">dan Susunan Perangkat Daerah Kabupaten Bengkalis</span><span style=\"font-size:12.0pt\">, Dinas Kelautan dan Perikanan Kabupaten Bengkalis bertugas mengemban peningkatan pembangunan masyarakat di sektor kelautan d<span style=\"color:black\">an perikanan serta pelaksanaan tugas pokok dan fungsi telah diatur kembali dengan Peraturan Bupati (Perbup) Kabupaten Bengkalis Nomor </span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">55</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\"> tahun 201</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">6</span></span><span style=\"font-size:12.0pt\"><span style=\"color:black\">.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:33px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Selanjutnya sesuai dengan amanat Undang-Undang Nomor 25 Tahun 2004 tentang sistem Perencanaan Pembangunan Nasional, bahwa perencanaan pembangunan daerah disusun secara berjangka meliputi Rencana Pembangunan Jangka Panjang (RPJP) Daerah untuk jangka waktu 20 tahun, Rencana Pembangunan Jangka Menengah&nbsp; (RPJM) Daerah dan Rencana Strategis&nbsp; (Renstra) S</span><span style=\"font-size:12.0pt\">O</span><span style=\"font-size:12.0pt\">PD untuk jangka waktu 5 tahun, dan rencana pembangunan tahunan yang selanjutnya&nbsp; disebut Rencana Kerja Pembangunan (RKP) daerah dan Rencana Kerja Satuan </span><span style=\"font-size:12.0pt\">Organisasi</span><span style=\"font-size:12.0pt\"> Perangkat Daerah (Renja S</span><span style=\"font-size:12.0pt\">O</span><span style=\"font-size:12.0pt\">PD).</span></span></span></p>\r\n\r\n<p style=\"margin-left:33px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Sebagaimana amanat tersebut, seluruh </span><span style=\"font-size:12.0pt\">Satuan Organisasi Perangkat Daerah (SOPD)</span><span style=\"font-size:12.0pt\"> wajib menyusun Rencana strategis (RENSTRA) sesuai kewenangan dan tugas pokok dan fungsinya. Renstra </span><span style=\"font-size:12.0pt\">SOPD</span><span style=\"font-size:12.0pt\"> disusun mengacu pada Visi dan Misi Kepala Daerah yang tercermin pada&nbsp; RPJMD Kabupaten Bengkalis Periode 2016-2021.</span></span></span></p>\r\n\r\n<p style=\"margin-left:33px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Data selengkapnya bisa di lihat di bawah ini :</span></span></span></p>\r\n', 'uploads/pdf/RENSTRA_2016-2021_Dinas_Kelautan_dan_Perikanan_Kabupaten_Bengkalis.pdf', '2018-12-26 03:11:19', 21, 0, 1, 'Admin', 'renstra-dinas-kelautan-dan-perikanan-kabupaten-bengkalis-tahun-2016---2021'),
(8, 'FORMULA PERHITUNGAN INDIKATOR KINERJA UTAMA DINAS KELAUTAN DAN PERIKANAN TAHUN 2016 - 2021', '', 'uploads/pdf/IKU_PERIKANAN_REVISI_TAHUN_2016_-_2021_DINAS_KELAUTAN_DAN_PERIKANAN_KABUPATEN_BENGKALIS.pdf', '2018-12-26 04:12:13', 27, 0, 1, 'Admin', 'formula-perhitungan-indikator-kinerja-utama-dinas-kelautan-dan-perikanan-tahun-2016---2021'),
(10, 'RENCANA KERJA DINAS KELAUTAN DAN PERIKANAN TAHUN 2018', '<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">BAB. I</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">PENDAHULUAN</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">\r\n	<ol>\r\n		<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Latar Belakang</span></strong></span></span></li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Sesuai Undang-Undang nomor </span><span style=\"font-size:12.0pt\">&nbsp;32</span><span style=\"font-size:12.0pt\"> tahun </span><span style=\"font-size:12.0pt\">2004</span><span style=\"font-size:12.0pt\"> sebagaiman</span><span style=\"font-size:12.0pt\">a</span><span style=\"font-size:12.0pt\"> telah diubah dengan Undang-Undang Nomor</span><span style=\"font-size:12.0pt\"> 23</span><span style=\"font-size:12.0pt\"> tahun 20</span><span style=\"font-size:12.0pt\">1</span><span style=\"font-size:12.0pt\">4 tentang&nbsp; Pemerintahan Daerah dan Undang-Undang nomor 25 tahun 1999 tentang perimbangan keuangan antara pemerintah Pusat dan Daerah, yang telah diubah dengan Undang-Undang nomor 31 tahun 2004 dan terakhir telah diubah&nbsp; dengan Undang-Undang nomor 33 tahun 2004, yang mengutamakan azas desentralisasi, dimana sebagian besar kewenangan dan urusan pemerintahan&nbsp; berada pada Pemerintahan Kabupaten dan Kota, memberikan kewenaangan kepada daerah untuk melaksanakan tugas/pekerjaan seluas-luasnya dan&nbsp; bertanggung jawab, termasuk penataan perangkat daerah dan penataan kelembagaan serta dapat menggerakkan&nbsp; semua organisasi daerah guna meleksanakan penyelenggaraan Pemerintahan Daerah dalam melaksanakan pembangunan dan pelayanan publik.&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></p>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\">&nbsp;</p>\r\n', 'uploads/pdf/RENJA_DKP_2018.pdf', '2019-01-03 04:44:21', 23, 0, 35, 'AKBAR', 'rencana-kerja-dinas-kelautan-dan-perikanan-tahun-2018'),
(11, 'RENCANA KERJA DINAS KELAUTAN DAN PERIKANAN TAHUN 2019', '<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">BAB. I</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">PENDAHULUAN</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">\r\n	<ol>\r\n		<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Latar Belakang</span></strong></span></span></li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Sesuai Undang-Undang nomor </span><span style=\"font-size:12.0pt\">&nbsp;32</span><span style=\"font-size:12.0pt\"> tahun </span><span style=\"font-size:12.0pt\">2004</span><span style=\"font-size:12.0pt\"> sebagaiman</span><span style=\"font-size:12.0pt\">a</span><span style=\"font-size:12.0pt\"> telah diubah dengan Undang-Undang Nomor</span><span style=\"font-size:12.0pt\"> 23</span><span style=\"font-size:12.0pt\"> tahun 20</span><span style=\"font-size:12.0pt\">1</span><span style=\"font-size:12.0pt\">4 tentang&nbsp; Pemerintahan Daerah dan Undang-Undang nomor 25 tahun 1999 tentang perimbangan keuangan antara pemerintah Pusat dan Daerah, yang telah diubah dengan Undang-Undang nomor 31 tahun 2004 dan terakhir telah diubah&nbsp; dengan Undang-Undang nomor 33 tahun 2004, yang mengutamakan azas desentralisasi, dimana sebagian besar kewenangan dan urusan pemerintahan&nbsp; berada pada Pemerintahan Kabupaten dan Kota, memberikan kewenaangan kepada daerah untuk melaksanakan tugas/pekerjaan seluas-luasnya dan&nbsp; bertanggung jawab, termasuk penataan perangkat daerah dan penataan kelembagaan serta dapat menggerakkan&nbsp; semua organisasi daerah guna meleksanakan penyelenggaraan Pemerintahan Daerah dalam melaksanakan pembangunan dan pelayanan publik.&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></p>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Dinas Kelautan dan Perikanan Kabupaten Bengkalis yang dibentuk berdasarkan Peraturan Daerah Kabupaten Bengkalis Nomor 13 tahun 2008, yang diubah dengan Peraturan Daerah Kabupaten Bengkalis dengan Nomor&nbsp; 03 tahun 2012 tentang Pembentukan Organisasi dan Tata Kerja Dinas Daerah Kabupaten Bengkalis, bertugas mengemban peningkatan pembangunan masyarakat di sektor kelautan dan perikanan. Dinas Kelautan dan Perikanan dipimpin oleh seorang Kepala Dinas yang membawahi seorang Sekretaris dan tiga orang Kepala Bidang. Dinas Kelautan dan Perikanan Kabupaten Bengkalis dapat mengurus rumah tangganya&nbsp;&nbsp; melalui penyusunan Renstra, Renja SKPD, yang berpedoman pada RPJPD Kabupaten bengkalis tahun 2005 &ndash; 2025 dan memperhatikan&nbsp; RPJM Nasional dan RPJMD Provinsi Riau, memuat arah kebijakan keuangan daerah, strategi pembangunan daerah, kebijakan umum dan program SKPD, lintas SKPD, dan program kewilayahan disertai dengan rencana kerja dalam rangka regulasi dan kerangka pendanaan&nbsp; yang bersifat indikatif untuk rentang waktu 5 (lima) tahun terhitung mulai tahun 2017 sampai dengan 2021.</span></span></span></p>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\"><span style=\"font-family:Calibri, sans-serif\"><span style=\"font-size:16px\">Data selengkapnya bisa di lihat di bawah ini:</span></span></p>\r\n', 'uploads/pdf/RENJA_DKP_2019.pdf', '2019-01-03 05:23:01', 23, 0, 35, 'AKBAR', 'rencana-kerja-dinas-kelautan-dan-perikanan-tahun-2019'),
(14, 'LAKIP Dinas Kelautan dan Perikanan Kabupaten Bengkalis Tahun 2017', '<p style=\"text-align:center\"><span style=\"font-size:11pt\"><strong>BAB I</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><strong>PENDAHULUAN</strong></span></p>\r\n\r\n<p style=\"margin-left:36px; text-align:left\">&nbsp;</p>\r\n\r\n<ol style=\"list-style-type:upper-alpha\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:10pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:11.0pt\">Latar Belakang</span></strong></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:24px; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\"><span style=\"font-size:10pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\">Penyusunan Laporan Akuntabiltas Kinerja Instansi Pemerintah (LAKIP) merupakan amanat Peraturan Pemerintah Nomor 8 Tahun 2006 tentang Pelaporan Keuangan dan Kinerja Instansi Pemerintah, Peraturan Presiden Nomor 29 Tahun 2014 tentang Sistem Akuntabilitas Kinerja Instansi Pemerintah, dan Peraturan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 53 tahun 2014 tentang Petunjuk Teknis Perjanjian Kinerja, Pelaporan Kinerja dan Tata Cara Review Atas Laporan Kinerja Instansi Pemerintah, di mana pelaporan capaian kinerja organisasi secara transparan dan akuntabel merupakan bentuk pertanggungjawaban atas kinerja instansi pemerintah. </span></span></span></p>\r\n\r\n<p style=\"margin-left:48px; text-align:justify\"><span style=\"font-size:10pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\">Proses penyusunan LAKIP dilakukan pada setiap akhir tahun anggaran bagi setiap instansi untuk mengukur pencapaian target kinerja yang sudah ditetapkan dalam dokumen perjanjian kinerja. Pengukuran pencapaian target kinerja ini dilakukan dengan membandingkan antara target dan realisasi kinerja setiap instansi pemerintah, yang dalam hal ini adalah Dinas <span style=\"color:black\">Kelautan dan Perikanan Kabupaten Bengkalis</span> &nbsp;LAKIP menjadi dokumen laporan kinerja tahunan yang berisi pertanggung-jawaban kinerja suatu instansi dalam mencapai tujuan/ sasaran strategis instansi. Mengacu kepada Peraturan Menteri Negara Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 53 Tahun 2014, LAKIP tingkat Organisasi Perangkat Daerah disampaikan kepada kepala Daerah.</span></span></span></p>\r\n', 'uploads/pdf/Lakip_20171.pdf', '2019-01-03 08:24:58', 39, 0, 35, 'AKBAR', 'lakip-dinas-kelautan-dan-perikanan-kabupaten-bengkalis-tahun-2017'),
(15, 'LAPORAN TAHUNAN 2017 DINAS KELAUTAN DAN PERIKANAN KAB. BENGKALIS', '<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">BAB I&nbsp; </span></span></span></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:15.0pt\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">PENDAHULUAN</span></span></span></strong></span></span></p>\r\n\r\n<p style=\"text-align:left\">&nbsp;</p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">1. &nbsp; GAMBARAN UMUM</span></strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">Dinas Kelautan dan Perikanan Kabupaten Bengkalis yang dib</span><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">e</span><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">ntuk berdasarkan Peraturan Daerah Kabupaten Bengkalis Nomor : 3 Tahun 20</span><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">16</span><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">, tentang Pembentukan </span><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">Dan Susunan Perangkat </span><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">Daerah kabupaten Bengkalis, bertugas men</span><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">yelenggarakan</span> <span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">urusan pemerintah bidang</span> <span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">K</span><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">elautan dan </span><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">P</span><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\">erikanan</span><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">. Dinas Kelautan dan Perikanan dipimpin oleh seorang Kepala Dinas yang&nbsp; dibantu unsur pimpinan adalah Sekretariat dan unsur pelaksana tiga orang Kepala Bidang.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">Data Laporan Tahunan 2017 selengkapnya bisa di lihat di bawah ini:</span></span></span></span></p>\r\n', 'uploads/pdf/laporan_tahunan_2017_ok.pdf', '2019-01-07 07:50:23', 24, 0, 35, 'AKBAR', 'laporan-tahunan-2017-dinas-kelautan-dan-perikanan-kab.-bengkalis'),
(16, 'TUGAS DAN FUNGSI SERTA URAIAN TUGAS SEKRETARIAT DINAS KELAUTAN DAN PERIKANAN KABUPATEN BENGKALIS.', '<p>Sekretariat mempunyai tugas memimpin, mengkoordinasikan dan mengendalikan tugas - tugas di bidang pengelolaan, pelayanan kesekretariatan yang meliputi pengkoordinasian, perencanaan, penyusunan program, umum, kepegawaian, pengelolaan keuangan dan perlengkapan.</p>\r\n\r\n<p>data selengkapnya bisa di lihat di bawah ini:</p>\r\n', 'uploads/pdf/perbub_sekretariat1.pdf', '2019-01-28 03:13:25', 30, 0, 35, 'AKBAR', 'tugas-dan-fungsi-serta-uraian-tugas-sekretariat-dinas-kelautan-dan-perikanan-kabupaten-bengkalis.'),
(17, 'TUGAS DAN FUNGSI SERTA URAIAN TUGAS BIDANG BUDIDAYA DINAS KELAUTAN DAN PERIKANAN KABUPATEN BENGKALIS', '<p>Bidang Budidaya Perikanan mempunyai tugas pelaksanakan pengkoordinasian dibidang budidaya perikanan yang meliputi sarana prasarana budidaya, sesuai dengan ketentuan yang berlaku.</p>\r\n\r\n<p>Data selengkapnya bisa di lihat di bawah ini:&nbsp;</p>\r\n', 'uploads/pdf/perbub_bidang_budidaya.pdf', '2019-01-28 03:26:15', 32, 0, 35, 'AKBAR', 'tugas-dan-fungsi-serta-uraian-tugas-bidang-budidaya-dinas-kelautan-dan-perikanan-kabupaten-bengkalis.'),
(18, 'TUGAS DAN FUNGSI SERTA URAIAN TUGAS BIDANG PEMBERDAYAAN PERIKANAN DINAS KELAUTAN DAN PERIKANAN KABUP', '<p>Bidang Pemberdayaan Perikanan mempunyai tugas melaksanakan penyusunan dan pelaksanaan kebijakan, pemberian pendamping, serta pemantauan dan evaluasi dibidang pemberdayaan perikanan.</p>\r\n\r\n<p>Data selengkapnya bisa di lihat di bawah ini:</p>\r\n', 'uploads/pdf/perbub_bidang_pp.pdf', '2019-01-28 03:33:04', 37, 0, 35, 'AKBAR', 'tugas-dan-fungsi-serta-uraian-tugas-bidang-pemberdayaan-perikanan-dinas-kelautan-dan-perikanan-kabupaten-bengkalis'),
(19, 'TUGAS DAN FUNGSI SERTA URAIAN TUGAS BIDANG PELAYANAN USAHA PERIKANAN DINAS KELAUTAN DAN PERIKANAN KA', '<p>Bidang Pelayanan Usaha Perikanan mempunyai tugas melaksanakan penyusunan dan pelaksanaan kebijakan, pemberian pendamping serta pemantauan dan evaluasi dibidang pelayanan usaha perikanan.</p>\r\n\r\n<p>Data selengkapnya bisa di lihat di bawah ini:</p>\r\n', 'uploads/pdf/perbub_bidang_pup.pdf', '2019-01-28 03:40:46', 31, 0, 35, 'AKBAR', 'tugas-dan-fungsi-serta-uraian-tugas-bidang-pelayanan-usaha-perikanan-dinas-kelautan-dan-perikanan-kabupaten-bengkalis'),
(20, 'STRUKTUR ORGANISASI DINAS KELAUTAN DAN PERIKANAN KABUPATEN BENGKALIS', '<p style=\"text-align:center\">STRUKTUR ORGANISASI DINAS KELAUTAN DAN PERIKANAN KABUPATEN BENGKALIS</p>\r\n\r\n<p>Bisa di lihat di bawah ini:</p>\r\n', 'uploads/pdf/STRUKTUR_OK_1.pdf', '2019-02-25 02:42:19', 40, 0, 35, 'AKBAR', 'struktur-organisasi-dinas-kelautan-dan-perikanan-kabupaten-bengkalis');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(13, 'DATA HARGA IKAN KAB.BENGKALIS BULAN DESEMBER 2018', 'data harga ikan bulan desember 2018', '2019-01-07 18:11:57', 'admin', 0, 'f85c600a34140c6241a9b14d52bb707e.pdf'),
(14, 'Pelaksanaan Asuransi Nelayan', 'Laporan Pelaksananan Asuransi Nelayanan di Kabupaten Bengkalis', '2019-02-08 01:49:47', 'Marhalim, S.Pi', 0, '8d67288615d269f76febb0f88305a475.pdf'),
(15, 'Pelaksanaan Asuransi Nelayan', 'Pelaksanaan Asuransi Nelayan', '2019-02-14 08:30:52', 'Marhalim, S.Pi, M.Si', 0, 'e5633399a548083a28e9cd9fd762244f.pdf'),
(16, 'DAFTAR HARGA IKAN APRIL 2019', 'DAFTAR HARGA IKAN APRIL 2019 SE - KABUPATEN BENGKALIS', '2019-05-07 01:42:50', 'AKBAR', 0, '167ee1650bb8a1dc8d2b1849c1251bc8.pdf'),
(18, 'DAFTAR HARGA IKAN JUNI 2019', 'Daftar Harga Ikan Juni 2019', '2019-07-08 04:00:48', 'AKBAR', 0, '9c80f851a77edf96988d4e6dc66582bb.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(4, 'Diskusi Pemilihan Ketua Osis', '2017-01-21 14:04:53', '9b10fa300633f62f105e9b52789fc8f3.jpg', 3, 1, 'M Fikri Setiadi'),
(5, 'Panitia Pemilu Osis', '2017-01-22 04:13:20', '0ec0c2f9aae6501d7ed7930995d48b57.jpg', 3, 1, 'M Fikri Setiadi'),
(6, 'Proses Pemilu Osis', '2017-01-22 04:13:43', 'bfbe6cc1c8096f5f36c68e93da53c248.jpg', 3, 1, 'M Fikri Setiadi'),
(7, 'Belajar dengan native speaker', '2017-01-24 01:26:22', '831e5ad43ccc3c851d50c128ff095541.jpg', 1, 1, 'M Fikri Setiadi'),
(8, 'Diskusi dengan native speaker', '2017-01-24 01:27:05', '84afbf1d3ad45932f1d7ac47b8a00949.jpg', 1, 1, 'M Fikri Setiadi'),
(9, 'Foto bareng native speaker', '2017-01-24 01:27:28', 'a99ab060d5d5bf8c96f24fe385f7dd8b.jpg', 1, 1, 'M Fikri Setiadi'),
(10, 'Foto bareng native speaker', '2017-01-24 01:28:40', 'd70cedba6391b7b3c74b914efd82953f.jpg', 1, 1, 'M Fikri Setiadi'),
(11, 'Foto bareng native speaker', '2017-01-24 01:28:54', '10de99f425b9961ce1e87c5e5575f8f4.jpg', 1, 1, 'M Fikri Setiadi'),
(12, 'Belajar sambil bermain', '2017-01-24 01:31:42', '9df82241493b94d1e06b461129cf57b2.jpg', 4, 1, 'M Fikri Setiadi'),
(13, 'Belajar sambil bermain', '2017-01-24 01:31:55', '5374415f11683ad6dd31572a7bbf8a7b.jpg', 4, 1, 'M Fikri Setiadi'),
(14, 'Belajar komputer programming', '2017-01-24 01:32:24', '82b91bd35706b21c3ab04e205e358eb6.jpg', 4, 1, 'M Fikri Setiadi'),
(15, 'Belajar komputer programming', '2017-01-24 01:32:34', '93048f2a103987bce8c8ec8d6912de06.jpg', 4, 1, 'M Fikri Setiadi'),
(16, 'Belajar komputer programming', '2017-01-24 01:32:44', '41f46be181f2f8452c2041b5e79a05a5.jpg', 4, 1, 'M Fikri Setiadi'),
(17, 'Belajar sambil bermain', '2017-01-24 01:33:08', '2858b0555c252690e293d29b922ba8e6.jpg', 4, 1, 'M Fikri Setiadi'),
(18, 'Makan bersama', '2017-01-24 01:33:24', '90d67328e33a31d3f5eecd7dcb25b55d.jpg', 4, 1, 'M Fikri Setiadi'),
(74, 'Lomba memasak menu serba ikan tahun 2018', '2018-12-19 04:41:31', '927b67cfa58d815a18be2c4bb6622b1a.JPG', 5, 35, 'AKBAR'),
(75, 'Lomba memasak menu serba ikan tahun 2018', '2018-12-19 04:43:51', '15b0db52d71a24f9965bf4ba9ea4d296.JPG', 5, 35, 'AKBAR'),
(76, 'Lomba memasak menu serba ikan tahun 2018', '2018-12-19 04:45:41', 'bb7c44056e06092542cb19353415f624.JPG', 5, 35, 'AKBAR'),
(77, 'Lomba memasak menu serba ikan tahun 2018', '2018-12-20 07:49:06', '1a388ad336a3c863b49563b3dbe0714d.JPG', 5, 1, 'Admin'),
(78, 'Lomba memasak menu serba ikan tahun 2018', '2018-12-20 07:52:10', 'c8ccb874adf077acc54a8e96874235ea.JPG', 5, 35, 'AKBAR'),
(79, 'Lomba memasak menu serba ikan tahun 2018', '2018-12-20 07:52:53', '1fbb1f771b8114e895d0add37f99f1fd.JPG', 5, 35, 'AKBAR'),
(80, 'Lomba memasak menu serba ikan tahun 2018', '2018-12-20 07:55:15', 'ed9d0eb18826b9fb995ca852cc8923d2.JPG', 5, 35, 'AKBAR'),
(81, 'Lomba memasak menu serba ikan tahun 2018', '2018-12-20 07:59:05', 'b01c420095b4d1bd510711b4ce7418de.JPG', 5, 35, 'AKBAR'),
(82, 'Lomba memasak menu serba ikan tahun 2018', '2018-12-20 07:59:33', 'f6e5896b7747c29b3988a60cc2b0294e.JPG', 5, 35, 'AKBAR'),
(83, 'pembinaan KUB di rupat utara', '2018-12-29 04:39:36', '88cc36e13368b9f5a58d4fe035a25a05.JPG', 7, 35, 'AKBAR'),
(84, 'pembinaan KUB di rupat utara', '2018-12-29 04:40:12', 'dd0b3658aa60e6d3013c200324e36c47.JPG', 7, 35, 'AKBAR'),
(85, 'pembinaan KUB di rupat utara', '2018-12-29 04:40:55', '6541d397b3d00cf03f75fbe603a51011.JPG', 7, 35, 'AKBAR'),
(86, 'TEMU KEMITRAAN', '2018-12-29 04:43:05', '097c9aa40688a33f184c0bf6550bb326.JPG', 8, 35, 'AKBAR'),
(87, 'TEMU KEMITRAAN', '2018-12-29 04:43:30', '829c9da17675e80a94838b217377abe8.JPG', 8, 35, 'AKBAR'),
(88, 'TEMU KEMITRAAN', '2018-12-29 04:43:53', '8ddc24d5267d3f7a3bacbf08515c98cd.JPG', 8, 35, 'AKBAR'),
(89, 'TEMU KEMITRAAN', '2018-12-29 04:44:23', '84db41b8a2d51970f9fc60a36cc5ed24.JPG', 8, 35, 'AKBAR'),
(90, 'PENGOLAHAN PENGASAPAN IKAN BIDANG PP TAHUN 2018', '2018-12-29 04:48:18', 'd71f7e82c2ddd4622537341413944591.jpg', 9, 35, 'AKBAR'),
(91, 'PENGOLAHAN PENGASAPAN IKAN BIDANG PP TAHUN 2018', '2018-12-29 04:50:11', '9bc621ec90ff3f2ded932217e30f4664.jpg', 9, 35, 'AKBAR'),
(93, 'PENGOLAHAN PENGASAPAN IKAN BIDANG PP TAHUN 2018', '2018-12-29 04:51:24', 'aff0b179e85c1de7db437c524d30b85a.jpg', 9, 35, 'AKBAR'),
(94, 'PENGOLAHAN PENGASAPAN IKAN BIDANG PP TAHUN 2018', '2018-12-29 04:52:02', 'f170116630b000cb711c39b33bebac4b.jpg', 9, 35, 'AKBAR'),
(95, 'PENGOLAHAN PENGASAPAN IKAN BIDANG PP TAHUN 2018', '2018-12-29 04:52:37', 'd612cc763706cd3b5b28ff625e6c89a3.jpg', 9, 35, 'AKBAR'),
(96, 'PENGOLAHAN PENGASAPAN IKAN BIDANG PP TAHUN 2018', '2018-12-29 04:53:14', '414c5e36d6d185cb7fd83c5054d0b8eb.jpg', 9, 35, 'AKBAR'),
(97, 'PENGOLAHAN PENGASAPAN IKAN TAHUN 2018', '2018-12-29 04:54:14', 'ed7c2d57f372d07c5a3a1597dd5ca83a.jpg', 9, 35, 'AKBAR'),
(98, 'PENGOLAHAN PENGASAPAN IKAN TAHUN 2018', '2018-12-29 04:54:44', 'ce95579a71cfd5a74e5f04548a27de5a.jpg', 9, 35, 'AKBAR'),
(99, 'PENGOLAHAN PENGASAPAN IKAN TAHUN 2018', '2018-12-29 04:55:19', '24da27b7a91cbeeae5df361334899854.jpg', 9, 35, 'AKBAR'),
(100, 'PENGOLAHAN PENGASAPAN IKAN TAHUN 2018', '2018-12-29 04:56:03', '9556d01b0cb06afc79969a8156ecc72e.jpg', 9, 35, 'AKBAR'),
(101, 'PENGOLAHAN PENGASAPAN IKAN TAHUN 2018', '2018-12-29 04:56:44', '3385ee4789b631c40d1f591caf127c55.jpg', 9, 35, 'AKBAR'),
(102, 'RAPAT KOORDINASI DAN SINKRONISASI PROG KERJA TAHUN 2018', '2018-12-29 07:10:53', '1fd90a89f1a5cfc06aac576a1315aaa1.jpeg', 10, 35, 'AKBAR'),
(103, 'RAPAT KOORDINASI DAN SINKRONISASI PROG KERJA TAHUN 2018', '2018-12-29 07:12:22', '0f064196affa1f18490086506cddbeb6.JPG', 10, 35, 'AKBAR'),
(104, 'RAPAT KOORDINASI DAN SINKRONISASI PROG KERJA TAHUN 2018', '2018-12-29 07:13:00', 'e12faf3127a2f14cc032224f2f37384b.JPG', 10, 35, 'AKBAR'),
(105, 'RAPAT KOORDINASI DAN SINKRONISASI PROG KERJA TAHUN 2018', '2018-12-29 07:13:37', '35364787e99f01942a14e32a060bca9e.JPG', 10, 35, 'AKBAR'),
(106, 'RAPAT KOORDINASI DAN SINKRONISASI PROG KERJA TAHUN 2018', '2018-12-29 07:14:50', '156681c8092baea03f7308a33f24f302.JPG', 10, 35, 'AKBAR'),
(107, 'RAPAT KOORDINASI DAN SINKRONISASI PROG KERJA TAHUN 2018', '2018-12-29 07:15:29', '398f940ec0fc62b4278108ba4c21416d.JPG', 10, 35, 'AKBAR'),
(108, 'RAPAT KOORDINASI DAN SINKRONISASI PROG KERJA TAHUN 2018', '2018-12-29 07:16:55', '57271d29d1f32bd7ef2d8773b8aa1ddc.jpeg', 10, 35, 'AKBAR'),
(109, 'pelatihan kelompok nelayan desa prapat tunggal', '2019-01-14 02:29:16', '000e6f619e21b7a10a6b5c3836755840.jpg', 11, 35, 'AKBAR'),
(110, 'Penyerahan Klaim Asuransi Nelayan  a.n alm. Rusli di Desa Ba', '2019-01-18 01:52:29', '57078fc75ada5b2743e43f7da0eaaa43.jpg', 13, 36, 'ovi'),
(111, 'Penyerahan Klaim Asuransi Nelayan  a.n alm. M. Syarif  dari ', '2019-01-18 01:53:33', '2bd1d20912aca3b43f5eb7edbf16e4c2.jpg', 13, 36, 'ovi'),
(112, 'Penyerahan Klaim Asuransi Nelayan  a.n alm. Usman dari Desa ', '2019-01-18 01:54:39', '5e3509054a0615a12bda68288af75b55.jpg', 13, 36, 'ovi'),
(113, 'HARKANNAS KE-4 DKP BENGKALIS', '2019-01-18 08:37:54', 'd7398d8a6996c943e5451102f9bc2e65.JPG', 15, 35, 'AKBAR'),
(114, 'HARKANNAS KE-4 DKP BENGKALIS', '2019-01-18 08:40:33', '01594db035e161b6a57642a246f9c2c1.JPG', 15, 35, 'AKBAR'),
(115, 'HARKANNAS KE-4 DKP BENGKALIS', '2019-01-18 08:42:33', '331a28f1ac8a9bff5737c178e7979d0d.JPG', 15, 35, 'AKBAR'),
(116, 'HARKANNAS KE-4 DKP BENGKALIS', '2019-01-18 08:44:00', 'd880c25327d1c3f706407be483043407.JPG', 15, 35, 'AKBAR'),
(117, 'HARKANNAS KE-4 DKP BENGKALIS', '2019-01-18 08:46:16', '4f5c4b512a54cb4aba1293d646998c9d.JPG', 15, 35, 'AKBAR'),
(118, 'HARKANNAS KE-4 DKP BENGKALIS', '2019-01-18 08:51:26', '4274126a273bf6ef7af75f03e649f15f.JPG', 15, 35, 'AKBAR'),
(119, 'HARKANNAS KE-4 DKP BENGKALIS', '2019-01-18 08:54:05', 'aaf0758fa318c98690616efbd33a4f2b.JPG', 15, 35, 'AKBAR'),
(120, '1', '2019-02-19 06:44:46', '0e4f59c2f119dcedf95904daefc39f7c.jpeg', 16, 36, 'ovi'),
(121, 'penyerahan secara simbolis bantuan premi asuransi nelayan 20', '2019-02-28 04:14:42', '6dd587aa0bc55cc876072e0688c2f023.JPG', 17, 35, 'AKBAR'),
(122, 'Penyerahan Simbolis bantuan premi asuransi', '2019-02-28 04:20:48', '07b57dcfbd8e2be1b04a9f749b814742.JPG', 17, 35, 'AKBAR'),
(123, 'penyerahan secara simbolis bantuan premi asuransi nelayan 20', '2019-02-28 04:24:14', 'd9181226b3c24e3d8f851533db20ad91.JPG', 17, 35, 'AKBAR'),
(124, 'penyerahan secara simbolis bantuan premi asuransi nelayan 20', '2019-02-28 04:25:33', 'd7c0241193a466c438558c0b635e9951.JPG', 17, 35, 'AKBAR');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_golongan`
--

CREATE TABLE `tbl_golongan` (
  `id_golongan` int(21) NOT NULL,
  `id_pangkat` int(21) NOT NULL,
  `golongan` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` date DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(15, '19650721 199203 1 008', 'Ir. HERLIAWAN, M.Si', 'L', 'SIAK SRI INDRAPURA', '1965-07-21', 'KEPALA DINAS KELAUTAN DAN PERIKANAN KAB. BENGKALIS', '', '2018-12-28 08:26:33'),
(16, '19670417 199401 1 002', 'Drs. ABDUL KADIR, M.Si', 'L', 'BENGKALIS', '1967-04-17', 'KABID PEMBERDAYAAN PERIKANAN', '', '2018-12-28 08:45:19'),
(17, '19750421 200312 2 003', ' SUSI FENIYANTI, S.Pi', 'P', 'BENGKALIS', '1975-04-21', 'KABID BUDIDAYA PERIKANAN', NULL, '2018-12-28 08:50:41'),
(18, '19710605 200003 1 004', ' SOFYAN, S.Pi', 'L', 'Jangkang', '1971-06-05', 'KABID PELAYANAN USAHA PERIKANAN', NULL, '2018-12-28 09:03:16'),
(19, '19740524 200012 2 001', 'NURHAZAMI, A.Md', 'P', 'BENGKALIS', '1973-04-17', 'Kepala Sub Bagian Keuangan dan Perlengkapan', NULL, '2018-12-28 09:08:09'),
(20, '19770803 200901 1 006', ' PURNOMO WIDODO S,Pi', 'L', 'Pekanbaru', '1977-08-03', 'Kepala Sub Bagian Penyusunan Program Umum dan Kepegawaian', NULL, '2018-12-28 09:11:13'),
(21, '19680120 199803 2 002', ' WAN GUSTINAWATI, SPi', 'P', 'BENGKALIS', '1968-01-20', 'staf bidang budidaya', NULL, '2019-01-02 07:54:12'),
(22, '19710419 199803 2 006', 'RAJA ISTIQAMAH, S.Pi', 'P', 'PEKAN BARU', '1971-04-19', 'Staf  Bidang Pemberdayaan Perikanan', NULL, '2019-01-02 07:55:57'),
(23, '19801107 201001 1 011', 'MUHAMMAD RIDWAN,S.Pi', 'L', 'BENGKALIS', '1980-11-07', 'Kepala Seksi Pencatatan Usaha Perikanan', NULL, '2019-01-02 08:05:28'),
(24, '19720120 200502 1 002', 'MARHALIM, S.Pi.M.Si', 'L', 'Selat Panjang ', '1972-01-20', 'Kepala Seksi Produksi Perikanan Tangkap', NULL, '2019-01-02 08:07:40'),
(25, '19770709 200701 2 005', 'PAULINA, S.Pi.M.Si', 'P', 'PEKAN BARU', '1977-07-09', 'Kepala Seksi Perizinan', NULL, '2019-01-02 08:09:36'),
(26, '19730502 200701 2 005', 'HERNAWATI, S.Pi', 'P', 'BUKIT BATU', '1973-05-02', 'Kepala Seksi Perbenihan dan Produksi Budidaya', NULL, '2019-01-02 08:13:23'),
(27, '19840430 200604 2 003', 'DILA FAHRIYANTI, S.St.Pi, MP', 'P', 'BENGKALIS', '1984-04-30', 'Kepala Seksi sarana dan Prasarana Budidaya', NULL, '2019-01-02 08:15:14'),
(28, '19880509 201001 2 003', 'SULISTIANA PRAMITA NOSA, S.Pi', 'P', 'Selat Panjang', '1988-05-09', 'Kepala Seksi Kesehatan Ikan dan Lingkungan', NULL, '2019-01-02 08:18:41'),
(29, '19610831 198512 2 001', 'TITIN SUMARNI', 'L', 'Palembang', '1961-08-31', 'Kepala Seksi Pengembangan Sumberdaya Manusia', NULL, '2019-01-02 08:22:04'),
(30, '19781118 200312 1 006', 'JHONNY HANDOKO, S.Pi', 'L', 'BENGKALIS', '1978-11-18', 'Kepala Seksi Pembinaan Kelembagaan', NULL, '2019-01-02 08:26:16'),
(31, '19670516 200701 2 005', 'DARMAWITA, S.Pi', 'P', 'BENGKALIS', '1967-05-16', 'Kepala Seksi Pengembangan Usaha dan Kemitraan', NULL, '2019-01-02 08:28:44'),
(32, '19850325 200903 2 007', 'NORA MALFINAR, S.Pi', 'P', 'Sungai Apit', '1985-03-25', 'Staf Bidang Budidaya Perikanan', NULL, '2019-01-02 08:36:50'),
(33, '19820904 201001 1 006', 'DIVA SEPTRISNA, S.St.Pi', 'L', 'BENGKALIS', '1982-09-04', 'Staf Bidang Budidaya Perikanan', NULL, '2019-01-04 01:52:36'),
(34, '19840530 201002 1 001', 'HERI WAHYUDI,S.St.Pi', 'L', 'BENGKALIS', '1984-05-30', 'Staf Bidang Budidaya Perikanan', NULL, '2019-01-04 01:54:32'),
(35, '19820705 201001 2 003', 'SULPA SANTI', 'P', 'Pangkalan Batang', '1982-07-05', 'Staf Bidang Perikanan Budidaya', NULL, '2019-01-04 01:56:38'),
(36, '19831119 200701 1 001', 'ROBI SUGARA, SE.Sy', 'L', 'Sekeladi', '1983-11-19', 'Staf  Sub Bagian  Keuangan dan Perlengkapan', NULL, '2019-01-04 02:01:49'),
(37, '19831204 200901 2 004', 'ELI RUSTINA,SE.Sy', 'P', 'Pangkalan Batang', '1983-12-04', 'Staf  Sub Bagian  Keuangan dan Perlengkapan', NULL, '2019-01-04 02:03:26'),
(38, '19751024 200701 1 002', 'SAMSUL BAHRI', 'L', 'BENGKALIS', '1975-10-24', 'Staf  Sub Bagian  Keuangan dan Perlengkapan', NULL, '2019-01-04 02:06:41'),
(39, '19770921 200701 2 003', 'MULYANI', 'P', 'SUKOHARJO', '1977-09-21', 'Staf Subbag Keuangan dan Perlengkapan', NULL, '2019-01-04 02:08:30'),
(40, '19730502 200701 2 004', 'SARINAH', 'P', 'BENGKALIS', '1973-05-02', 'Staf Subbag Keuangan dan Perlengkapan', NULL, '2019-01-04 02:09:52'),
(41, '19771120 200701 2 003', 'SUSILAWATI', 'P', 'KAMPAR', '1977-11-20', 'Staf Subbag Keuangan dan Perlengkapan', NULL, '2019-01-04 02:11:12'),
(42, '19810823 200901 2 005', 'REVANI', 'P', 'DUMAI', '1981-08-23', 'Staf  Sub Bagian Administrasi Umum', NULL, '2019-01-04 02:12:26'),
(43, '19800408 200901 1 005', 'KUSMULYADI', 'L', 'BENGKALIS', '1980-04-08', 'Staf Subbag Penyusunan Program Umum dan Kepegawaian', NULL, '2019-01-04 02:13:47'),
(44, '19800602 200701 1 002', 'MUHAMMAD JAZAM,SE', 'L', 'BENGKALIS', '1980-06-02', 'Staf Subbag Penyusunan Program Umum dan Kepegawaian', NULL, '2019-01-04 02:15:07'),
(45, '19790827 200801 1 006', 'DEDI ISMANTO,SE.Sy', 'L', 'BENGKALIS', '1979-08-27', 'Staf  Sub Bagian  Keuangan dan Perlengkapan', NULL, '2019-01-04 02:16:34'),
(46, '19790404 201001 2 003', 'MARDINA', 'P', 'BENGKALIS', '1979-04-04', 'Staf Subbag Penyusunan Program Umum dan Kepegawaian', NULL, '2019-01-04 02:19:34'),
(47, '19831009 200903 2 007', 'BADRIYAH, S.Pi', 'P', 'BANTAN AIR', '1983-10-09', 'Staf Bidang Pemberdayaan Perikanan', NULL, '2019-01-04 02:21:45'),
(48, '19621120 199212 2 001', 'PAINI', 'P', 'BENGKALIS', '1962-11-20', 'Staf Subbag Penyusunan Program Umum dan Kepegawaian', NULL, '2019-01-04 02:23:21'),
(50, '19740412 200701 1 009', 'BENY PURNAMA,SE.Sy', 'L', 'BENGKALIS', '1974-04-12', 'Staf Subbag Keuangan dan Perlengkapan', NULL, '2019-01-04 02:25:43'),
(51, '19650421 199112 1001', 'MUHAMMAD AMRIL', 'L', 'BENGKALIS', '1965-04-21', 'Staf Subbag Penyusunan Program Umum dan Kepegawaian', NULL, '2019-01-04 02:26:49'),
(52, '19800103 200701 1 001', 'BENDRI,SE.Sy', 'L', 'TEMERAN', '1980-01-03', 'Staf Bidang Pemberdayaan Perikanan', NULL, '2019-01-04 02:29:31'),
(53, '19751020 200604 2 008', 'JUMAWATI', 'P', 'BENGKALIS', '1975-10-20', 'Staf Bidang Pemberdayaan Perikanan', NULL, '2019-01-04 02:30:56'),
(54, '19651031 200701 1 001', 'NURBAHRI', 'L', 'Tg. Pinang', '1965-10-31', 'Staf Bidang Pemberdayaan Perikanan', NULL, '2019-01-04 02:32:27'),
(55, '19761028 200801 2 018', 'DWI OKTAVENTY, S.Pi', 'P', 'BENGKALIS', '1976-10-28', 'Staf Bidang Pemberdayaan Perikanan', NULL, '2019-01-04 02:35:12'),
(56, '19780817 201001 2 003', 'SITI AGUSSELAINI, S.Pi', 'P', 'BENGKALIS', '1978-08-17', 'staf  Bidang Pelayanan Usaha Perikanan', NULL, '2019-01-04 02:38:54'),
(57, '19810428 201001 2 016', 'PANGESTI ROCHI DEWI LUBIS, S.Pi', 'P', 'MEDAN', '1981-04-28', 'Staf Bidang Pelayanan Usaha Perikanan', NULL, '2019-01-04 02:40:54'),
(58, '19670823 200501 2 001', 'NURAINI', 'P', 'Tg.Pinang', '1967-08-23', 'staf  Bidang Pelayanan Usaha Perikanan', NULL, '2019-01-04 02:42:40'),
(59, '19790609 200701 2 005', 'TUTI MARYATI', 'P', 'BENGKALIS', '1979-06-09', 'staf  Bidang Pelayanan Usaha Perikanan', NULL, '2019-01-04 02:44:26'),
(60, '19800404 200801 1 018', 'BOKHARI', 'L', 'Tameran', '1980-04-04', 'staf  Bidang Pelayanan Usaha Perikanan', NULL, '2019-01-04 02:45:49'),
(61, '19620315 198503 2 005', 'ENDANG ERAWATI', 'P', 'BENGKALIS', '1962-03-15', 'staf  Bidang Pelayanan Usaha Perikanan', NULL, '2019-01-04 02:51:22'),
(62, '19660816 199303 2 001', 'Dra. AGUSNELLY.S, M.Si', 'P', 'Bengkalis', '1966-08-16', 'Sekretaris dinas kelautan dan perikanan kab.bengkalis', NULL, '2019-04-23 02:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(19, 'Budidaya Perikanan', '2019-01-02 07:36:39'),
(20, 'Usaha Perikanan', '2019-01-23 01:32:49'),
(21, 'Sekretariat', '2019-02-08 01:33:58'),
(22, 'Pemberdayaan Perikanan', '2019-02-08 01:34:12'),
(23, 'Umum', '2019-02-08 01:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategoridata`
--

CREATE TABLE `tbl_kategoridata` (
  `kategori_id` int(11) NOT NULL,
  `kategori_parent` int(11) DEFAULT NULL,
  `kategori_nama` varchar(50) NOT NULL,
  `kategori_keterangan` varchar(50) NOT NULL,
  `kategori_slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategoridata`
--

INSERT INTO `tbl_kategoridata` (`kategori_id`, `kategori_parent`, `kategori_nama`, `kategori_keterangan`, `kategori_slug`) VALUES
(21, 22, 'Rencana Strategis', 'Untuk Input Rencana Strategis DKP', 'renstra'),
(22, 0, 'Transparansi Kinerja', 'Untuk bagian Transparansi Kinerja', 'tk'),
(23, 22, 'Rencana Kerja', 'Untuk Input Rencana Kerja', 'renja'),
(24, 22, 'Laporan Tahunan', '', 'laphun'),
(25, 25, 'LAKIP ', 'Laporan Kinerja Instansi Pemerintah DInas Kelautan', 'lakip'),
(26, 22, 'PK', '', 'pkdkp'),
(27, 22, 'IKU', '', 'iku'),
(28, 0, 'Tugas Pokok dan Fungsi', 'Untuk input bagian tupoksi', 'tupoksi'),
(29, 28, 'Bidang', 'Tugas Pokok dan Fungsi Bidang', 'tupoksibid'),
(30, 28, 'Sekretariat', 'Tugas Pokok dan Fungsi dari Sekretariat', 'tupoksi1'),
(31, 29, 'BIdang Pelayanan Usaha Perikanan', 'Tugas Pokok dan Fungsi Bidang Pelayanan Usaha Peri', 'tupoksi2'),
(32, 29, 'BIdang Budidaya Perikanan ', 'Tugas Pokok dan Fungsi Bidang Budidaya Perikanan', 'tupoksi3'),
(33, 28, 'Tupoksi UPT', '', 'tupoksiup'),
(34, 33, 'Tupoksi UPT I', '', 'tupoksiup1'),
(37, 29, 'Bidang Pemberdayaan Perikanan', 'Tugas Pokok dan Fungsi Bidang Pemberdayaan Perikan', 'bidang-perikanan'),
(38, 0, 'LAKIP', 'Lakip', 'lakip'),
(39, 22, 'LAKIP', 'Laporan Akuntabiltas Kinerja Instansi Pemerintah (', 'LAKIP'),
(40, 22, 'Struktur Organisasi', 'Struktur Organisasi Dinas Kelautan dan Perikanan K', 'struktur');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontak`
--

CREATE TABLE `tbl_kontak` (
  `kontak_id` int(11) NOT NULL,
  `kode_negara` varchar(5) NOT NULL,
  `kode_daerah` varchar(3) NOT NULL,
  `telpon` varchar(254) NOT NULL,
  `email` varchar(254) NOT NULL,
  `alamat` text NOT NULL,
  `facebook` varchar(254) NOT NULL,
  `twitter` varchar(254) NOT NULL,
  `instagram` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`kontak_id`, `kode_negara`, `kode_daerah`, `telpon`, `email`, `alamat`, `facebook`, `twitter`, `instagram`) VALUES
(1, '62', '766', '2620260', 'dkp@bengkaliskab.go.id', 'Jl. Pertanian No. 4 - Bengkalis', 'https://www.facebook.com/', 'http://twitter.com/', 'http://instagram.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pangkat`
--

CREATE TABLE `tbl_pangkat` (
  `id_pangkat` int(21) NOT NULL,
  `id_aparatur` int(21) NOT NULL,
  `pangkat` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelayanan`
--

CREATE TABLE `tbl_pelayanan` (
  `pelayanan_id` int(11) NOT NULL,
  `pelayanan_judul` varchar(100) NOT NULL,
  `pelayanan_isi` text NOT NULL,
  `tulisan_tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `tulisan_views` int(11) NOT NULL,
  `tulisan_pengguna_id` int(11) NOT NULL,
  `tulisan_author` varchar(40) NOT NULL,
  `tulisan_slug` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Admin', 'Just do it', 'L', 'admin', 'password', 'I am a mountainner. to me mountainerring is a life', 'fikrifiver97@gmail.com', '081277159401', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', '1545126671.jpg'),
(2, 'hideni', 'Super Admin', 'L', 'hideni', '790b5081969e54ffb943ab3ddbe3901c', NULL, 'entah', '-', NULL, NULL, NULL, NULL, 1, '1', '2019-05-20 17:00:00', NULL),
(35, 'AKBAR', NULL, 'L', 'AKBAR', '9c3e03a60c3cc8e68a067f452fca2d97', NULL, '-@mail.com', '0', NULL, NULL, NULL, NULL, 1, '1', '2018-12-19 04:26:32', '1545193702.jpg'),
(36, 'ovi', NULL, 'L', 'ovi', '4b1b2869aa6e41027ad9e0d008032a5d', NULL, 'ovianto1977@gmail.com', '0811759540', NULL, NULL, NULL, NULL, 1, '1', '2018-12-20 03:54:36', NULL),
(37, 'ovianto', NULL, 'L', 'ovianto', '4b1b2869aa6e41027ad9e0d008032a5d', NULL, 'ovianto1977@gmail.com', '0811759540', NULL, NULL, NULL, NULL, 1, '1', '2019-05-08 05:15:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2018-11-29 19:06:52', '127.0.0.1', 'Chrome'),
(932, '2018-12-03 14:27:56', '127.0.0.1', 'Chrome'),
(933, '2018-12-03 15:17:59', '::1', 'Chrome'),
(934, '2018-12-04 14:12:14', '127.0.0.1', 'Chrome'),
(935, '2018-12-04 14:14:03', '::1', 'Chrome'),
(936, '2018-12-05 17:25:37', '127.0.0.1', 'Chrome'),
(937, '2018-12-05 17:37:15', '::1', 'Chrome'),
(938, '2018-12-05 18:14:53', '192.168.43.103', 'Chrome'),
(939, '2018-12-05 18:51:30', '192.168.43.250', 'Other'),
(940, '2018-12-06 16:16:14', '192.168.43.1', 'Chrome'),
(941, '2018-12-06 17:11:02', '127.0.0.1', 'Chrome'),
(942, '2018-12-06 17:32:09', '192.168.43.103', 'Chrome'),
(943, '2018-12-06 19:51:49', '192.168.43.1', 'Chrome'),
(944, '2018-12-06 21:46:42', '192.168.43.250', 'Mozilla'),
(945, '2018-12-07 20:06:36', '192.168.43.103', 'Chrome'),
(946, '2018-12-07 20:19:10', '192.168.43.1', 'Chrome'),
(947, '2018-12-08 03:33:31', '127.0.0.1', 'Chrome'),
(948, '2018-12-08 08:21:09', '192.168.1.15', 'Chrome'),
(949, '2018-12-08 08:21:32', '192.168.1.16', 'Internet Explorer'),
(950, '2018-12-08 17:09:54', '192.168.43.99', 'Firefox'),
(951, '2018-12-08 17:31:46', '192.168.43.103', 'Chrome'),
(952, '2018-12-08 17:32:49', '127.0.0.1', 'Chrome'),
(953, '2018-12-08 20:00:22', '192.168.43.1', 'Chrome'),
(954, '2018-12-09 00:33:57', '192.168.43.250', 'Internet Explorer'),
(955, '2018-12-09 17:55:56', '192.168.43.1', 'Chrome'),
(956, '2018-12-09 18:28:49', '127.0.0.1', 'Chrome'),
(957, '2018-12-09 20:58:41', '192.168.43.103', 'Chrome'),
(958, '2018-12-10 11:06:43', '192.168.43.250', 'Internet Explorer'),
(959, '2018-12-10 18:03:59', '127.0.0.1', 'Chrome'),
(960, '2018-12-10 18:18:59', '192.168.43.103', 'Chrome'),
(961, '2018-12-11 17:07:10', '192.168.43.103', 'Chrome'),
(962, '2018-12-11 18:28:37', '127.0.0.1', 'Chrome'),
(963, '2018-12-11 19:41:58', '192.168.43.250', 'Chrome'),
(964, '2018-12-11 19:57:19', '192.168.43.1', 'Chrome'),
(965, '2018-12-12 18:38:56', '192.168.43.1', 'Internet Explorer'),
(966, '2018-12-12 19:33:41', '127.0.0.1', 'Chrome'),
(967, '2018-12-12 19:38:56', '192.168.43.103', 'Chrome'),
(968, '2018-12-12 21:13:21', '192.168.43.250', 'Mozilla'),
(969, '2018-12-13 14:02:15', '36.69.8.72', 'Chrome'),
(970, '2018-12-13 14:04:09', '180.254.132.55', 'Firefox'),
(971, '2018-12-13 14:32:07', '204.187.14.73', 'Chrome'),
(972, '2018-12-13 14:38:58', '66.249.84.30', 'Chrome'),
(973, '2018-12-13 14:39:03', '66.249.84.3', 'Chrome'),
(974, '2018-12-13 15:03:37', '45.33.143.174', 'Chrome'),
(975, '2018-12-13 15:40:22', '66.102.6.126', 'Chrome'),
(976, '2018-12-13 15:40:30', '66.102.6.98', 'Chrome'),
(977, '2018-12-13 15:40:31', '66.102.9.34', 'Chrome'),
(978, '2018-12-13 17:42:31', '182.1.18.209', 'Chrome'),
(979, '2018-12-13 17:56:48', '182.1.21.9', 'Chrome'),
(980, '2018-12-13 18:32:27', '114.125.29.23', 'Chrome'),
(981, '2018-12-13 18:46:09', '107.178.38.28', 'Chrome'),
(982, '2018-12-13 19:41:12', '114.125.13.225', 'Chrome'),
(983, '2018-12-13 20:46:32', '45.33.140.158', 'Chrome'),
(984, '2018-12-13 20:51:03', '182.1.16.206', 'Chrome'),
(985, '2018-12-13 21:18:47', '182.1.21.65', 'Chrome'),
(986, '2018-12-14 04:38:56', '182.1.45.37', 'Chrome'),
(987, '2018-12-14 06:46:01', '45.33.141.16', 'Chrome'),
(988, '2018-12-14 06:47:34', '182.1.45.50', 'Chrome'),
(989, '2018-12-14 08:15:31', '182.1.62.67', 'Chrome'),
(990, '2018-12-15 04:31:10', '45.33.140.158', 'Chrome'),
(991, '2018-12-15 15:26:47', '182.1.46.121', 'Safari'),
(992, '2018-12-16 01:25:17', '182.1.44.9', 'Safari'),
(993, '2018-12-16 09:53:37', '64.233.173.23', 'Chrome'),
(994, '2018-12-16 09:53:58', '64.233.173.24', 'Chrome'),
(995, '2018-12-16 19:03:44', '182.1.46.113', 'Chrome'),
(996, '2018-12-16 19:06:32', '182.1.63.79', 'Chrome'),
(997, '2018-12-16 19:06:41', '182.1.60.15', 'Chrome'),
(998, '2018-12-16 19:09:04', '182.1.60.198', 'Chrome'),
(999, '2018-12-16 19:09:10', '182.1.45.71', 'Chrome'),
(1000, '2018-12-16 19:09:24', '182.1.47.41', 'Chrome'),
(1001, '2018-12-16 19:17:18', '182.1.63.169', 'Chrome'),
(1002, '2018-12-16 20:36:07', '64.233.173.22', 'Chrome'),
(1003, '2018-12-16 23:46:11', '64.233.173.24', 'Chrome'),
(1004, '2018-12-17 08:36:44', '64.233.173.23', 'Chrome'),
(1005, '2018-12-17 08:41:39', '114.125.26.239', 'Chrome'),
(1006, '2018-12-17 08:42:57', '114.125.10.111', 'Chrome'),
(1007, '2018-12-17 08:44:24', '114.125.26.41', 'Chrome'),
(1008, '2018-12-17 08:44:34', '114.125.10.169', 'Chrome'),
(1009, '2018-12-17 09:33:58', '114.125.22.111', 'Chrome'),
(1010, '2018-12-17 09:34:07', '114.125.6.245', 'Chrome'),
(1011, '2018-12-17 09:36:00', '36.69.9.211', 'Firefox'),
(1012, '2018-12-17 09:39:48', '114.125.22.129', 'Chrome'),
(1013, '2018-12-17 09:46:43', '114.125.22.149', 'Chrome'),
(1014, '2018-12-17 09:46:52', '114.125.22.209', 'Chrome'),
(1015, '2018-12-17 10:12:37', '45.33.129.226', 'Chrome'),
(1016, '2018-12-17 13:25:39', '45.33.132.28', 'Chrome'),
(1017, '2018-12-18 07:50:41', '36.77.89.101', 'Firefox'),
(1018, '2018-12-18 08:06:31', '66.102.6.32', 'Chrome'),
(1019, '2018-12-18 08:25:18', '180.241.177.14', 'Firefox'),
(1020, '2018-12-18 09:54:42', '107.178.36.28', 'Chrome'),
(1021, '2018-12-18 09:54:52', '182.1.1.220', 'Firefox'),
(1022, '2018-12-18 13:31:19', '114.125.15.73', 'Chrome'),
(1023, '2018-12-18 18:43:58', '114.125.41.214', 'Chrome'),
(1024, '2018-12-18 18:45:13', '114.125.57.92', 'Chrome'),
(1025, '2018-12-18 18:45:41', '64.233.173.22', 'Chrome'),
(1026, '2018-12-18 18:49:50', '64.233.173.23', 'Chrome'),
(1027, '2018-12-18 18:49:57', '64.233.173.24', 'Chrome'),
(1028, '2018-12-18 19:06:41', '114.125.41.114', 'Chrome'),
(1029, '2018-12-18 19:13:50', '114.125.41.234', 'Chrome'),
(1030, '2018-12-18 19:14:10', '114.125.41.200', 'Chrome'),
(1031, '2018-12-18 19:14:16', '114.125.57.242', 'Chrome'),
(1032, '2018-12-19 02:56:06', '36.90.39.222', 'Firefox'),
(1033, '2018-12-19 02:58:03', '180.241.177.14', 'Firefox'),
(1034, '2018-12-19 03:08:34', '36.77.89.101', 'Chrome'),
(1035, '2018-12-19 07:29:04', '66.249.84.30', 'Chrome'),
(1036, '2018-12-19 17:43:08', '114.125.56.127', 'Chrome'),
(1037, '2018-12-19 17:48:25', '114.125.13.133', 'Chrome'),
(1038, '2018-12-19 17:51:55', '114.125.30.9', 'Chrome'),
(1039, '2018-12-19 17:52:17', '114.125.28.41', 'Chrome'),
(1040, '2018-12-19 17:53:00', '114.125.29.149', 'Chrome'),
(1041, '2018-12-19 17:53:22', '114.125.29.10', 'Chrome'),
(1042, '2018-12-19 17:54:12', '114.125.14.203', 'Chrome'),
(1043, '2018-12-19 18:06:56', '182.1.4.171', 'Chrome'),
(1044, '2018-12-19 18:07:01', '182.1.21.10', 'Chrome'),
(1045, '2018-12-19 18:07:09', '182.1.5.53', 'Chrome'),
(1046, '2018-12-19 18:07:21', '182.1.7.138', 'Chrome'),
(1047, '2018-12-19 18:07:39', '182.1.22.107', 'Chrome'),
(1048, '2018-12-19 18:10:54', '182.1.6.139', 'Chrome'),
(1049, '2018-12-19 18:11:47', '182.1.20.28', 'Chrome'),
(1050, '2018-12-19 18:15:03', '182.1.7.168', 'Chrome'),
(1051, '2018-12-19 18:16:02', '182.1.6.123', 'Chrome'),
(1052, '2018-12-19 18:17:07', '182.1.21.37', 'Chrome'),
(1053, '2018-12-19 18:18:39', '182.1.22.30', 'Chrome'),
(1054, '2018-12-19 18:29:33', '114.125.15.157', 'Chrome'),
(1055, '2018-12-20 02:29:45', '36.77.89.101', 'Chrome'),
(1056, '2018-12-20 02:51:14', '180.241.177.14', 'Firefox'),
(1057, '2018-12-20 02:59:46', '36.90.39.222', 'Firefox'),
(1058, '2018-12-20 03:59:01', '141.0.8.161', 'Opera'),
(1059, '2018-12-20 05:26:29', '64.233.173.24', 'Chrome'),
(1060, '2018-12-20 06:17:32', '64.233.173.23', 'Chrome'),
(1061, '2018-12-20 09:23:02', '66.102.6.62', 'Chrome'),
(1062, '2018-12-20 11:49:45', '114.125.56.23', 'Chrome'),
(1063, '2018-12-20 11:52:17', '114.125.56.139', 'Chrome'),
(1064, '2018-12-20 12:41:06', '114.125.56.207', 'Chrome'),
(1065, '2018-12-20 12:51:31', '114.125.13.15', 'Chrome'),
(1066, '2018-12-20 13:11:23', '114.125.56.9', 'Chrome'),
(1067, '2018-12-20 13:15:20', '114.125.40.191', 'Chrome'),
(1068, '2018-12-20 13:15:50', '114.125.28.187', 'Chrome'),
(1069, '2018-12-20 14:22:40', '64.233.173.22', 'Chrome'),
(1070, '2018-12-20 14:26:34', '45.33.132.29', 'Chrome'),
(1071, '2018-12-20 14:40:54', '182.1.21.152', 'Chrome'),
(1072, '2018-12-20 17:23:13', '114.125.29.149', 'Chrome'),
(1073, '2018-12-20 18:06:50', '114.125.29.10', 'Chrome'),
(1074, '2018-12-20 18:21:24', '182.1.61.172', 'Chrome'),
(1075, '2018-12-20 18:25:28', '182.1.63.2', 'Chrome'),
(1076, '2018-12-20 18:31:00', '114.125.6.6', 'Chrome'),
(1077, '2018-12-20 18:35:12', '114.125.6.35', 'Chrome'),
(1078, '2018-12-20 18:43:10', '182.1.22.107', 'Chrome'),
(1079, '2018-12-20 21:09:31', '45.33.140.153', 'Chrome'),
(1080, '2018-12-20 22:04:15', '64.233.173.24', 'Chrome'),
(1081, '2018-12-20 22:35:05', '114.125.30.9', 'Chrome'),
(1082, '2018-12-20 22:36:02', '64.233.173.22', 'Chrome'),
(1083, '2018-12-20 22:41:31', '114.125.28.41', 'Chrome'),
(1084, '2018-12-20 23:19:05', '182.1.61.182', 'Chrome'),
(1085, '2018-12-20 23:19:47', '182.1.61.254', 'Chrome'),
(1086, '2018-12-20 23:20:36', '182.1.46.137', 'Chrome'),
(1087, '2018-12-20 23:21:00', '182.1.63.214', 'Chrome'),
(1088, '2018-12-21 02:03:24', '64.233.173.23', 'Chrome'),
(1089, '2018-12-21 14:29:43', '180.241.237.15', 'Chrome'),
(1090, '2018-12-21 18:47:55', '114.125.41.31', 'Firefox'),
(1091, '2018-12-21 18:58:00', '114.125.57.63', 'Firefox'),
(1092, '2018-12-21 19:20:36', '114.125.56.121', 'Firefox'),
(1093, '2018-12-21 19:20:46', '114.125.56.189', 'Firefox'),
(1094, '2018-12-21 19:26:22', '114.125.40.249', 'Firefox'),
(1095, '2018-12-21 19:45:44', '114.125.12.201', 'Chrome'),
(1096, '2018-12-21 20:00:05', '182.1.4.137', 'Chrome'),
(1097, '2018-12-21 20:07:55', '114.125.28.187', 'Chrome'),
(1098, '2018-12-21 20:11:12', '114.125.31.42', 'Chrome'),
(1099, '2018-12-21 20:37:48', '107.178.40.242', 'Chrome'),
(1100, '2018-12-21 21:00:41', '114.125.57.139', 'Firefox'),
(1101, '2018-12-21 21:01:04', '114.125.57.159', 'Firefox'),
(1102, '2018-12-21 21:28:19', '182.1.5.170', 'Chrome'),
(1103, '2018-12-21 21:28:51', '182.1.4.69', 'Chrome'),
(1104, '2018-12-21 21:28:55', '182.1.6.139', 'Chrome'),
(1105, '2018-12-21 21:29:27', '182.1.5.212', 'Chrome'),
(1106, '2018-12-21 21:30:48', '182.1.22.38', 'Chrome'),
(1107, '2018-12-22 06:45:23', '141.0.9.122', 'Opera'),
(1108, '2018-12-22 16:56:53', '182.1.62.185', 'Firefox'),
(1109, '2018-12-22 17:28:54', '182.1.44.123', 'Chrome'),
(1110, '2018-12-22 17:46:30', '182.1.60.94', 'Chrome'),
(1111, '2018-12-22 17:50:19', '182.1.63.244', 'Chrome'),
(1112, '2018-12-22 18:21:13', '182.1.61.246', 'Chrome'),
(1113, '2018-12-22 18:26:07', '114.125.6.35', 'Chrome'),
(1114, '2018-12-22 18:27:23', '64.233.173.22', 'Chrome'),
(1115, '2018-12-22 20:34:28', '107.178.40.242', 'Chrome'),
(1116, '2018-12-23 09:28:58', '66.102.6.63', 'Chrome'),
(1117, '2018-12-23 12:40:44', '114.125.31.108', 'Chrome'),
(1118, '2018-12-23 12:52:04', '36.90.39.58', 'Firefox'),
(1119, '2018-12-23 13:11:45', '182.1.22.199', 'Chrome'),
(1120, '2018-12-23 17:23:31', '107.178.40.242', 'Chrome'),
(1121, '2018-12-23 18:28:55', '64.233.173.22', 'Chrome'),
(1122, '2018-12-23 18:29:30', '182.1.63.213', 'Chrome'),
(1123, '2018-12-23 18:29:56', '182.1.44.118', 'Chrome'),
(1124, '2018-12-23 18:30:27', '64.233.173.23', 'Chrome'),
(1125, '2018-12-23 18:30:55', '182.1.44.99', 'Safari'),
(1126, '2018-12-23 18:31:55', '204.187.14.72', 'Chrome'),
(1127, '2018-12-23 18:34:14', '64.233.173.24', 'Chrome'),
(1128, '2018-12-23 18:50:16', '182.1.60.214', 'Chrome'),
(1129, '2018-12-23 18:54:46', '182.1.62.22', 'Chrome'),
(1130, '2018-12-23 18:58:20', '182.1.47.213', 'Chrome'),
(1131, '2018-12-23 18:59:07', '182.1.45.244', 'Chrome'),
(1132, '2018-12-23 18:59:18', '182.1.63.19', 'Chrome'),
(1133, '2018-12-23 18:59:33', '182.1.47.251', 'Chrome'),
(1134, '2018-12-23 19:08:38', '182.1.63.251', 'Chrome'),
(1135, '2018-12-23 19:08:48', '182.1.45.233', 'Firefox'),
(1136, '2018-12-23 19:11:11', '182.1.47.45', 'Firefox'),
(1137, '2018-12-23 19:11:15', '182.1.62.212', 'Firefox'),
(1138, '2018-12-23 19:12:28', '114.125.29.186', 'Chrome'),
(1139, '2018-12-23 19:13:12', '182.1.60.102', 'Firefox'),
(1140, '2018-12-23 19:16:10', '182.1.60.187', 'Firefox'),
(1141, '2018-12-23 19:16:36', '182.1.45.228', 'Firefox'),
(1142, '2018-12-24 01:26:02', '114.125.29.16', 'Chrome'),
(1143, '2018-12-24 04:50:34', '182.1.46.250', 'Chrome'),
(1144, '2018-12-24 05:23:24', '182.1.62.196', 'Chrome'),
(1145, '2018-12-24 05:56:42', '182.1.60.167', 'Chrome'),
(1146, '2018-12-24 05:58:27', '182.1.46.247', 'Chrome'),
(1147, '2018-12-24 05:58:33', '182.1.47.100', 'Chrome'),
(1148, '2018-12-24 06:14:07', '182.1.20.161', 'Firefox'),
(1149, '2018-12-24 06:14:10', '182.1.20.223', 'Firefox'),
(1150, '2018-12-24 06:18:51', '114.125.12.127', 'Chrome'),
(1151, '2018-12-24 06:51:33', '114.125.28.129', 'Chrome'),
(1152, '2018-12-24 06:52:25', '114.125.14.125', 'Chrome'),
(1153, '2018-12-24 06:54:08', '114.125.29.110', 'Chrome'),
(1154, '2018-12-24 07:47:43', '182.1.7.204', 'Chrome'),
(1155, '2018-12-24 20:42:56', '64.233.173.23', 'Chrome'),
(1156, '2018-12-25 05:52:21', '66.249.81.60', 'Chrome'),
(1157, '2018-12-25 10:14:57', '182.1.63.251', 'Chrome'),
(1158, '2018-12-25 10:20:18', '114.125.29.110', 'Chrome'),
(1159, '2018-12-25 11:41:42', '64.233.173.22', 'Chrome'),
(1160, '2018-12-25 18:14:40', '182.1.5.13', 'Chrome'),
(1161, '2018-12-25 18:27:58', '114.125.31.108', 'Chrome'),
(1162, '2018-12-25 18:34:38', '182.1.63.251', 'Firefox'),
(1163, '2018-12-25 18:51:27', '182.1.46.196', 'Firefox'),
(1164, '2018-12-25 18:55:25', '182.1.63.173', 'Firefox'),
(1165, '2018-12-25 19:01:50', '182.1.62.22', 'Firefox'),
(1166, '2018-12-25 19:02:11', '182.1.47.45', 'Firefox'),
(1167, '2018-12-25 19:03:29', '182.1.44.118', 'Firefox'),
(1168, '2018-12-25 19:05:43', '182.1.63.140', 'Firefox'),
(1169, '2018-12-25 19:12:49', '182.1.62.212', 'Firefox'),
(1170, '2018-12-25 19:13:19', '182.1.17.14', 'Chrome'),
(1171, '2018-12-25 19:15:01', '182.1.60.187', 'Firefox'),
(1172, '2018-12-25 19:38:10', '182.1.22.199', 'Chrome'),
(1173, '2018-12-25 19:44:05', '182.1.44.159', 'Firefox'),
(1174, '2018-12-25 19:44:38', '182.1.60.102', 'Firefox'),
(1175, '2018-12-25 19:45:38', '114.125.13.126', 'Chrome'),
(1176, '2018-12-25 19:46:12', '114.125.29.110', 'Chrome'),
(1177, '2018-12-25 19:49:11', '182.1.60.214', 'Firefox'),
(1178, '2018-12-25 19:56:35', '182.1.63.213', 'Firefox'),
(1179, '2018-12-25 20:01:28', '182.1.45.233', 'Firefox'),
(1180, '2018-12-25 20:05:38', '182.1.63.106', 'Firefox'),
(1181, '2018-12-25 20:05:39', '182.1.45.228', 'Firefox'),
(1182, '2018-12-25 20:08:00', '182.1.45.77', 'Firefox'),
(1183, '2018-12-25 23:18:24', '114.125.13.0', 'Chrome'),
(1184, '2018-12-25 23:18:40', '114.125.28.129', 'Chrome'),
(1185, '2018-12-25 23:18:52', '114.125.29.186', 'Chrome'),
(1186, '2018-12-25 23:18:59', '114.125.12.127', 'Chrome'),
(1187, '2018-12-25 23:19:04', '114.125.14.125', 'Chrome'),
(1188, '2018-12-25 23:19:07', '114.125.28.111', 'Chrome'),
(1189, '2018-12-25 23:19:13', '114.125.15.13', 'Chrome'),
(1190, '2018-12-25 23:38:07', '182.1.1.153', 'Chrome'),
(1191, '2018-12-25 23:49:11', '182.1.16.191', 'Chrome'),
(1192, '2018-12-25 23:50:59', '182.1.3.142', 'Chrome'),
(1193, '2018-12-26 00:16:26', '36.84.229.119', 'Firefox'),
(1194, '2018-12-26 00:25:18', '114.125.29.16', 'Chrome'),
(1195, '2018-12-26 00:42:31', '36.84.229.111', 'Chrome'),
(1196, '2018-12-26 02:50:47', '45.33.140.153', 'Chrome'),
(1197, '2018-12-26 02:55:40', '180.241.228.228', 'Chrome'),
(1198, '2018-12-26 03:17:25', '182.1.20.223', 'Chrome'),
(1199, '2018-12-26 03:18:37', '182.1.22.38', 'Chrome'),
(1200, '2018-12-26 03:19:02', '182.1.6.14', 'Chrome'),
(1201, '2018-12-26 03:24:05', '182.1.4.177', 'Chrome'),
(1202, '2018-12-26 03:25:13', '182.1.21.160', 'Chrome'),
(1203, '2018-12-26 03:26:47', '107.178.44.23', 'Chrome'),
(1204, '2018-12-26 03:30:11', '182.1.3.185', 'Chrome'),
(1205, '2018-12-26 03:30:17', '182.1.18.26', 'Chrome'),
(1206, '2018-12-26 03:32:51', '198.7.58.98', 'Firefox'),
(1207, '2018-12-26 03:40:45', '182.1.18.13', 'Chrome'),
(1208, '2018-12-26 04:02:13', '146.185.31.214', 'Chrome'),
(1209, '2018-12-26 04:06:44', '64.233.173.24', 'Chrome'),
(1210, '2018-12-26 06:26:42', '45.33.142.176', 'Chrome'),
(1211, '2018-12-26 08:39:16', '37.130.224.21', 'Chrome'),
(1212, '2018-12-26 08:49:01', '23.235.227.106', 'Chrome'),
(1213, '2018-12-26 09:02:03', '64.233.173.23', 'Chrome'),
(1214, '2018-12-26 09:02:33', '173.252.127.10', 'Other'),
(1215, '2018-12-26 09:02:34', '173.252.127.24', 'Other'),
(1216, '2018-12-26 09:02:35', '173.252.127.26', 'Other'),
(1217, '2018-12-26 09:02:35', '173.252.127.39', 'Other'),
(1218, '2018-12-26 09:03:09', '173.252.127.11', 'Safari'),
(1219, '2018-12-26 09:15:28', '37.130.229.149', 'Chrome'),
(1220, '2018-12-26 09:23:48', '110.137.103.254', 'Chrome'),
(1221, '2018-12-26 09:42:37', '66.102.6.63', 'Chrome'),
(1222, '2018-12-26 09:42:41', '66.102.6.62', 'Chrome'),
(1223, '2018-12-26 09:42:41', '66.102.6.32', 'Chrome'),
(1224, '2018-12-26 09:43:21', '64.233.173.22', 'Chrome'),
(1225, '2018-12-26 09:50:59', '173.252.95.29', 'Other'),
(1226, '2018-12-26 11:39:44', '203.78.116.198', 'Chrome'),
(1227, '2018-12-26 13:21:33', '114.125.28.243', 'Chrome'),
(1228, '2018-12-26 13:35:02', '182.1.5.25', 'Chrome'),
(1229, '2018-12-26 13:36:13', '182.1.4.127', 'Chrome'),
(1230, '2018-12-26 13:37:20', '182.1.5.142', 'Chrome'),
(1231, '2018-12-26 15:59:27', '114.125.56.58', 'Chrome'),
(1232, '2018-12-26 16:56:15', '45.33.140.151', 'Chrome'),
(1233, '2018-12-26 17:01:57', '182.1.60.187', 'Firefox'),
(1234, '2018-12-26 17:02:00', '182.1.63.251', 'Firefox'),
(1235, '2018-12-26 17:02:32', '182.1.60.102', 'Firefox'),
(1236, '2018-12-26 17:04:56', '182.1.47.45', 'Firefox'),
(1237, '2018-12-26 17:05:39', '182.1.63.213', 'Firefox'),
(1238, '2018-12-26 17:10:55', '114.125.56.58', 'Chrome'),
(1239, '2018-12-27 02:45:55', '36.84.229.111', 'Chrome'),
(1240, '2018-12-27 06:29:10', '107.178.38.28', 'Chrome'),
(1241, '2018-12-27 06:34:09', '107.178.40.242', 'Chrome'),
(1242, '2018-12-27 07:06:25', '36.84.229.113', 'Chrome'),
(1243, '2018-12-27 07:18:14', '64.233.173.22', 'Chrome'),
(1244, '2018-12-27 15:32:52', '114.125.56.80', 'Firefox'),
(1245, '2018-12-27 15:37:55', '114.125.57.152', 'Chrome'),
(1246, '2018-12-27 15:44:09', '114.125.56.130', 'Chrome'),
(1247, '2018-12-27 15:44:14', '114.125.40.8', 'Chrome'),
(1248, '2018-12-27 15:44:26', '114.125.40.76', 'Chrome'),
(1249, '2018-12-27 15:46:26', '114.125.40.90', 'Chrome'),
(1250, '2018-12-27 15:49:16', '114.125.40.22', 'Chrome'),
(1251, '2018-12-27 15:51:36', '114.125.56.188', 'Firefox'),
(1252, '2018-12-27 17:02:45', '114.125.56.188', 'Firefox'),
(1253, '2018-12-27 17:02:57', '114.125.40.76', 'Chrome'),
(1254, '2018-12-27 17:03:30', '114.125.56.80', 'Firefox'),
(1255, '2018-12-27 17:08:18', '114.125.56.130', 'Chrome'),
(1256, '2018-12-27 17:12:06', '66.102.6.124', 'Chrome'),
(1257, '2018-12-27 17:16:14', '114.125.22.30', 'Chrome'),
(1258, '2018-12-27 17:17:26', '114.125.6.62', 'Chrome'),
(1259, '2018-12-27 17:18:45', '114.125.22.90', 'Chrome'),
(1260, '2018-12-27 17:21:45', '114.125.6.122', 'Chrome'),
(1261, '2018-12-27 17:22:02', '114.125.6.158', 'Chrome'),
(1262, '2018-12-27 17:24:04', '114.125.41.78', 'Firefox'),
(1263, '2018-12-27 17:24:17', '114.125.57.246', 'Firefox'),
(1264, '2018-12-27 17:27:17', '114.125.40.90', 'Chrome'),
(1265, '2018-12-27 17:44:11', '114.125.40.22', 'Chrome'),
(1266, '2018-12-27 17:52:21', '64.233.173.23', 'Chrome'),
(1267, '2018-12-27 18:01:58', '114.125.40.8', 'Chrome'),
(1268, '2018-12-27 18:04:56', '114.125.10.166', 'Chrome'),
(1269, '2018-12-27 18:05:51', '114.125.26.18', 'Chrome'),
(1270, '2018-12-27 18:26:28', '64.233.173.22', 'Chrome'),
(1271, '2018-12-27 18:57:24', '114.125.26.106', 'Chrome'),
(1272, '2018-12-28 00:57:15', '182.1.45.154', 'Chrome'),
(1273, '2018-12-28 00:57:30', '182.1.60.200', 'Chrome'),
(1274, '2018-12-28 01:33:52', '36.84.229.111', 'Chrome'),
(1275, '2018-12-28 03:33:40', '64.233.173.24', 'Chrome'),
(1276, '2018-12-28 03:35:08', '107.178.46.104', 'Chrome'),
(1277, '2018-12-28 03:35:14', '107.178.40.242', 'Chrome'),
(1278, '2018-12-28 03:38:38', '107.178.36.24', 'Chrome'),
(1279, '2018-12-28 06:44:16', '180.241.228.228', 'Chrome'),
(1280, '2018-12-28 08:59:44', '141.8.183.204', 'YandexBot'),
(1281, '2018-12-28 17:55:26', '64.233.173.22', 'Chrome'),
(1282, '2018-12-28 18:00:23', '64.233.173.23', 'Chrome'),
(1283, '2018-12-28 18:02:22', '64.233.173.24', 'Chrome'),
(1284, '2018-12-28 18:44:52', '114.125.56.188', 'Firefox'),
(1285, '2018-12-28 18:58:34', '114.125.56.80', 'Firefox'),
(1286, '2018-12-28 19:23:46', '114.125.26.106', 'Chrome'),
(1287, '2018-12-28 19:31:28', '114.125.10.146', 'Chrome'),
(1288, '2018-12-28 19:31:44', '114.125.10.166', 'Chrome'),
(1289, '2018-12-28 19:32:13', '114.125.10.74', 'Chrome'),
(1290, '2018-12-28 19:43:21', '114.125.22.30', 'Chrome'),
(1291, '2018-12-28 19:43:36', '114.125.6.62', 'Chrome'),
(1292, '2018-12-28 19:50:25', '114.125.22.90', 'Chrome'),
(1293, '2018-12-28 19:51:16', '107.178.40.242', 'Chrome'),
(1294, '2018-12-28 20:02:39', '114.125.6.218', 'Chrome'),
(1295, '2018-12-28 20:02:59', '114.125.6.122', 'Chrome'),
(1296, '2018-12-29 04:30:01', '180.241.241.229', 'Firefox'),
(1297, '2018-12-29 14:20:02', '182.1.16.34', 'Chrome'),
(1298, '2018-12-29 14:21:10', '182.1.17.110', 'Chrome'),
(1299, '2018-12-29 14:22:05', '182.1.3.250', 'Chrome'),
(1300, '2018-12-29 14:23:00', '182.1.16.167', 'Chrome'),
(1301, '2018-12-29 14:36:42', '182.1.2.7', 'Chrome'),
(1302, '2018-12-29 14:37:33', '182.1.19.3', 'Chrome'),
(1303, '2018-12-29 14:39:07', '182.1.0.249', 'Chrome'),
(1304, '2018-12-29 14:39:15', '182.1.2.162', 'Chrome'),
(1305, '2018-12-29 14:48:14', '107.178.38.24', 'Chrome'),
(1306, '2018-12-29 14:55:52', '66.249.80.34', 'Chrome'),
(1307, '2018-12-29 17:55:08', '45.33.132.28', 'Chrome'),
(1308, '2018-12-29 20:06:38', '64.233.173.24', 'Chrome'),
(1309, '2018-12-30 04:01:01', '64.233.173.23', 'Chrome'),
(1310, '2018-12-30 15:45:10', '66.249.80.34', 'Chrome'),
(1311, '2018-12-30 20:17:02', '107.178.40.242', 'Chrome'),
(1312, '2018-12-31 07:01:38', '64.233.173.23', 'Chrome'),
(1313, '2018-12-31 07:48:39', '66.249.80.62', 'Chrome'),
(1314, '2018-12-31 09:16:46', '64.233.173.22', 'Chrome'),
(1315, '2018-12-31 11:44:03', '66.102.6.124', 'Chrome'),
(1316, '2019-01-01 15:51:25', '64.233.173.22', 'Chrome'),
(1317, '2019-01-02 03:46:53', '64.233.173.24', 'Chrome'),
(1318, '2019-01-02 05:37:32', '64.233.173.22', 'Chrome'),
(1319, '2019-01-02 07:32:13', '36.68.71.58', 'Chrome'),
(1320, '2019-01-02 07:35:24', '36.68.14.197', 'Chrome'),
(1321, '2019-01-02 08:00:53', '141.8.183.204', 'YandexBot'),
(1322, '2019-01-02 14:52:46', '64.233.173.23', 'Chrome'),
(1323, '2019-01-02 15:16:44', '66.102.6.126', 'Chrome'),
(1324, '2019-01-02 19:45:54', '64.233.173.23', 'Chrome'),
(1325, '2019-01-03 03:20:43', '64.233.173.22', 'Chrome'),
(1326, '2019-01-03 04:17:03', '36.68.14.197', 'Chrome'),
(1327, '2019-01-03 05:22:24', '64.233.173.24', 'Chrome'),
(1328, '2019-01-03 08:41:20', '36.84.229.11', 'Safari'),
(1329, '2019-01-04 00:52:52', '36.68.71.58', 'Chrome'),
(1330, '2019-01-04 01:35:10', '36.68.14.197', 'Chrome'),
(1331, '2019-01-04 10:23:30', '141.8.183.204', 'YandexBot'),
(1332, '2019-01-04 10:24:06', '178.154.244.21', 'YandexBot'),
(1333, '2019-01-04 14:55:49', '36.69.6.128', 'Chrome'),
(1334, '2019-01-04 17:47:55', '141.8.183.204', 'YandexBot'),
(1335, '2019-01-04 17:49:44', '178.154.244.21', 'YandexBot'),
(1336, '2019-01-05 17:48:23', '37.9.113.86', 'YandexBot'),
(1337, '2019-01-05 17:48:42', '178.154.244.21', 'YandexBot'),
(1338, '2019-01-06 02:12:26', '141.8.183.204', 'YandexBot'),
(1339, '2019-01-06 18:17:52', '141.8.183.204', 'YandexBot'),
(1340, '2019-01-06 18:17:56', '178.154.244.21', 'YandexBot'),
(1341, '2019-01-07 01:25:22', '36.68.71.58', 'Chrome'),
(1342, '2019-01-07 02:01:27', '36.68.14.197', 'Chrome'),
(1343, '2019-01-07 03:53:50', '182.1.44.85', 'Safari'),
(1344, '2019-01-07 04:50:02', '64.233.173.23', 'Chrome'),
(1345, '2019-01-07 07:45:29', '180.254.136.157', 'Chrome'),
(1346, '2019-01-07 09:02:48', '66.102.6.32', 'Chrome'),
(1347, '2019-01-07 14:50:10', '5.45.207.83', 'YandexBot'),
(1348, '2019-01-07 16:07:33', '103.111.86.244', 'Safari'),
(1349, '2019-01-07 17:25:52', '114.125.10.170', 'Chrome'),
(1350, '2019-01-07 17:26:59', '114.125.26.226', 'Chrome'),
(1351, '2019-01-07 17:42:18', '114.125.10.218', 'Chrome'),
(1352, '2019-01-07 17:48:35', '114.125.26.62', 'Chrome'),
(1353, '2019-01-07 20:41:58', '141.8.183.204', 'YandexBot'),
(1354, '2019-01-08 02:01:01', '180.254.136.157', 'Chrome'),
(1355, '2019-01-08 02:53:48', '182.1.46.115', 'Chrome'),
(1356, '2019-01-08 02:55:03', '182.1.60.165', 'Chrome'),
(1357, '2019-01-08 02:58:05', '182.1.62.24', 'Chrome'),
(1358, '2019-01-08 02:59:36', '182.1.63.243', 'Chrome'),
(1359, '2019-01-08 03:00:22', '182.1.44.79', 'Chrome'),
(1360, '2019-01-08 03:00:34', '182.1.61.94', 'Chrome'),
(1361, '2019-01-08 04:50:51', '182.1.23.247', 'Firefox'),
(1362, '2019-01-08 04:51:46', '182.1.20.101', 'Firefox'),
(1363, '2019-01-08 04:51:50', '182.1.4.222', 'Firefox'),
(1364, '2019-01-08 05:02:11', '182.1.21.245', 'Firefox'),
(1365, '2019-01-08 05:02:51', '182.1.21.45', 'Chrome'),
(1366, '2019-01-08 05:14:23', '182.1.19.43', 'Firefox'),
(1367, '2019-01-08 05:15:43', '182.1.17.203', 'Chrome'),
(1368, '2019-01-08 05:19:05', '182.1.2.216', 'Chrome'),
(1369, '2019-01-08 05:21:00', '182.1.1.57', 'Chrome'),
(1370, '2019-01-08 05:25:50', '182.1.3.245', 'Chrome'),
(1371, '2019-01-08 05:29:43', '182.1.18.99', 'Firefox'),
(1372, '2019-01-08 22:31:06', '141.8.183.204', 'YandexBot'),
(1373, '2019-01-09 07:33:59', '180.254.140.74', 'Chrome'),
(1374, '2019-01-09 08:54:03', '36.84.229.119', 'Chrome'),
(1375, '2019-01-09 09:25:22', '114.125.56.229', 'Chrome'),
(1376, '2019-01-10 08:58:19', '141.8.183.204', 'YandexBot'),
(1377, '2019-01-11 08:39:45', '180.241.176.105', 'Chrome'),
(1378, '2019-01-11 13:23:48', '141.8.183.204', 'YandexBot'),
(1379, '2019-01-12 04:14:33', '141.8.183.204', 'YandexBot'),
(1380, '2019-01-12 08:34:57', '64.233.173.172', 'Chrome'),
(1381, '2019-01-12 10:20:11', '182.1.62.187', 'Chrome'),
(1382, '2019-01-12 10:20:21', '182.1.45.66', 'Chrome'),
(1383, '2019-01-12 10:20:28', '182.1.45.134', 'Chrome'),
(1384, '2019-01-12 10:20:54', '182.1.46.18', 'Chrome'),
(1385, '2019-01-12 10:21:58', '182.1.62.37', 'Chrome'),
(1386, '2019-01-13 02:16:29', '141.8.183.204', 'YandexBot'),
(1387, '2019-01-13 02:16:31', '178.154.244.21', 'YandexBot'),
(1388, '2019-01-13 02:16:32', '95.108.213.12', 'YandexBot'),
(1389, '2019-01-13 06:02:49', '87.240.53.31', 'Internet Explorer'),
(1390, '2019-01-14 01:27:07', '180.254.140.74', 'Chrome'),
(1391, '2019-01-14 01:53:36', '37.130.229.149', 'Chrome'),
(1392, '2019-01-14 02:10:40', '64.233.173.23', 'Chrome'),
(1393, '2019-01-14 02:11:16', '64.233.173.24', 'Chrome'),
(1394, '2019-01-14 02:12:41', '64.233.173.22', 'Chrome'),
(1395, '2019-01-14 02:23:24', '180.241.176.105', 'Chrome'),
(1396, '2019-01-14 15:24:56', '66.102.6.98', 'Chrome'),
(1397, '2019-01-14 16:40:18', '141.8.183.204', 'YandexBot'),
(1398, '2019-01-15 12:58:58', '141.8.183.204', 'YandexBot'),
(1399, '2019-01-15 23:12:59', '141.8.183.204', 'YandexBot'),
(1400, '2019-01-16 13:12:07', '66.102.6.124', 'Chrome'),
(1401, '2019-01-17 00:25:11', '141.8.183.204', 'YandexBot'),
(1402, '2019-01-17 04:11:34', '36.68.68.115', 'Chrome'),
(1403, '2019-01-18 01:43:24', '180.254.140.74', 'Chrome'),
(1404, '2019-01-18 08:22:38', '37.130.229.149', 'Chrome'),
(1405, '2019-01-18 10:37:14', '182.1.46.250', 'Chrome'),
(1406, '2019-01-18 10:37:50', '182.1.45.93', 'Chrome'),
(1407, '2019-01-18 15:38:12', '66.102.6.126', 'Chrome'),
(1408, '2019-01-18 15:49:37', '141.8.183.204', 'YandexBot'),
(1409, '2019-01-19 11:59:03', '66.102.6.126', 'Chrome'),
(1410, '2019-01-19 15:44:56', '141.8.183.204', 'YandexBot'),
(1411, '2019-01-20 01:43:50', '141.8.183.204', 'YandexBot'),
(1412, '2019-01-21 05:57:07', '66.102.6.98', 'Chrome'),
(1413, '2019-01-21 09:29:20', '180.254.134.62', 'Chrome'),
(1414, '2019-01-21 14:48:40', '141.8.183.204', 'YandexBot'),
(1415, '2019-01-22 01:41:42', '36.84.229.21', 'Chrome'),
(1416, '2019-01-22 02:59:48', '180.241.244.133', 'Chrome'),
(1417, '2019-01-22 06:57:49', '66.102.6.98', 'Chrome'),
(1418, '2019-01-22 17:24:07', '141.8.183.204', 'YandexBot'),
(1419, '2019-01-23 00:51:21', '180.241.244.133', 'Chrome'),
(1420, '2019-01-23 10:17:36', '66.102.6.3', 'Chrome'),
(1421, '2019-01-24 00:22:24', '141.8.183.204', 'YandexBot'),
(1422, '2019-01-24 02:11:47', '66.102.6.126', 'Chrome'),
(1423, '2019-01-24 22:21:12', '37.144.40.52', 'Chrome'),
(1424, '2019-01-25 17:40:35', '141.8.183.204', 'YandexBot'),
(1425, '2019-01-26 10:35:32', '46.188.107.155', 'Internet Explorer'),
(1426, '2019-01-26 22:56:25', '141.8.183.204', 'YandexBot'),
(1427, '2019-01-27 12:26:47', '178.154.244.21', 'YandexBot'),
(1428, '2019-01-28 03:05:07', '180.254.133.36', 'Chrome'),
(1429, '2019-01-28 03:43:38', '36.68.15.191', 'Chrome'),
(1430, '2019-01-28 08:46:40', '64.233.173.170', 'Chrome'),
(1431, '2019-01-28 08:47:50', '64.233.173.172', 'Chrome'),
(1432, '2019-01-28 08:48:19', '64.233.173.168', 'Chrome'),
(1433, '2019-01-29 00:42:08', '36.68.15.191', 'Chrome'),
(1434, '2019-01-29 02:09:32', '141.8.183.204', 'YandexBot'),
(1435, '2019-01-29 02:18:05', '178.154.244.21', 'YandexBot'),
(1436, '2019-01-30 03:19:09', '141.8.183.204', 'YandexBot'),
(1437, '2019-01-30 10:01:13', '178.154.244.21', 'YandexBot'),
(1438, '2019-01-30 20:09:10', '141.8.183.204', 'YandexBot'),
(1439, '2019-01-31 02:23:27', '180.241.177.148', 'Chrome'),
(1440, '2019-02-01 02:05:53', '36.68.71.9', 'Chrome'),
(1441, '2019-02-01 07:18:59', '37.130.229.149', 'Chrome'),
(1442, '2019-02-01 08:27:08', '141.8.183.204', 'YandexBot'),
(1443, '2019-02-02 11:31:04', '141.8.183.204', 'YandexBot'),
(1444, '2019-02-02 17:40:22', '141.8.183.204', 'YandexBot'),
(1445, '2019-02-03 09:34:32', '114.125.6.77', 'Chrome'),
(1446, '2019-02-03 09:42:37', '66.102.6.188', 'Chrome'),
(1447, '2019-02-03 11:19:03', '114.125.10.196', 'Chrome'),
(1448, '2019-02-03 11:24:02', '114.125.10.216', 'Chrome'),
(1449, '2019-02-04 02:42:42', '64.233.173.23', 'Chrome'),
(1450, '2019-02-04 03:54:02', '64.233.173.168', 'Chrome'),
(1451, '2019-02-04 03:55:01', '36.68.71.9', 'Chrome'),
(1452, '2019-02-04 03:56:36', '64.233.173.172', 'Chrome'),
(1453, '2019-02-04 03:56:36', '64.233.173.170', 'Chrome'),
(1454, '2019-02-04 05:02:47', '141.8.183.204', 'YandexBot'),
(1455, '2019-02-04 16:42:14', '66.102.6.190', 'Chrome'),
(1456, '2019-02-04 20:30:37', '141.8.183.204', 'YandexBot'),
(1457, '2019-02-05 03:19:42', '178.154.244.9', 'YandexBot'),
(1458, '2019-02-05 03:42:26', '114.125.22.87', 'Safari'),
(1459, '2019-02-05 03:43:21', '114.125.22.7', 'Safari'),
(1460, '2019-02-05 03:44:25', '114.125.6.179', 'Safari'),
(1461, '2019-02-05 03:44:59', '114.125.22.203', 'Safari'),
(1462, '2019-02-05 09:39:12', '182.1.45.135', 'Safari'),
(1463, '2019-02-05 09:44:24', '182.1.60.69', 'Safari'),
(1464, '2019-02-05 13:35:05', '103.80.82.80', 'Safari'),
(1465, '2019-02-05 21:13:37', '141.8.183.204', 'YandexBot'),
(1466, '2019-02-05 21:13:41', '178.154.244.21', 'YandexBot'),
(1467, '2019-02-06 01:10:01', '180.241.245.174', 'Safari'),
(1468, '2019-02-06 09:53:14', '182.1.2.170', 'Safari'),
(1469, '2019-02-06 14:34:50', '94.180.217.130', 'Internet Explorer'),
(1470, '2019-02-06 17:44:23', '141.8.183.204', 'YandexBot'),
(1471, '2019-02-07 02:35:34', '180.241.245.174', 'Safari'),
(1472, '2019-02-07 07:51:59', '103.80.82.80', 'Safari'),
(1473, '2019-02-07 15:27:21', '64.233.172.162', 'Chrome'),
(1474, '2019-02-08 01:07:01', '180.241.245.174', 'Chrome'),
(1475, '2019-02-08 01:38:59', '182.1.1.204', 'Safari'),
(1476, '2019-02-08 02:51:39', '114.125.28.161', 'Safari'),
(1477, '2019-02-08 07:16:06', '141.8.183.204', 'YandexBot'),
(1478, '2019-02-09 04:23:53', '103.80.82.80', 'Safari'),
(1479, '2019-02-10 02:37:22', '141.8.183.204', 'YandexBot'),
(1480, '2019-02-10 04:40:16', '103.80.82.80', 'Safari'),
(1481, '2019-02-10 22:38:14', '178.154.244.21', 'YandexBot'),
(1482, '2019-02-11 02:23:28', '114.125.22.221', 'Safari'),
(1483, '2019-02-11 04:33:05', '114.125.12.145', 'Chrome'),
(1484, '2019-02-11 12:37:48', '103.80.82.80', 'Safari'),
(1485, '2019-02-12 00:17:35', '182.1.47.86', 'Safari'),
(1486, '2019-02-12 03:41:50', '103.111.86.244', 'Safari'),
(1487, '2019-02-12 08:26:51', '36.68.61.194', 'Chrome'),
(1488, '2019-02-12 13:54:27', '141.8.183.204', 'YandexBot'),
(1489, '2019-02-13 04:38:45', '180.254.129.27', 'Chrome'),
(1490, '2019-02-13 11:40:34', '141.8.183.204', 'YandexBot'),
(1491, '2019-02-13 14:03:27', '66.102.6.126', 'Chrome'),
(1492, '2019-02-13 15:59:40', '176.14.37.74', 'Internet Explorer'),
(1493, '2019-02-14 03:30:40', '180.241.243.100', 'Chrome'),
(1494, '2019-02-14 05:55:34', '66.102.6.124', 'Chrome'),
(1495, '2019-02-14 07:55:06', '192.99.100.98', 'Chrome'),
(1496, '2019-02-14 08:02:12', '139.59.241.161', 'Chrome'),
(1497, '2019-02-14 08:39:21', '182.1.21.163', 'Safari'),
(1498, '2019-02-14 08:44:38', '141.0.8.35', 'Opera'),
(1499, '2019-02-15 05:27:06', '37.9.113.86', 'YandexBot'),
(1500, '2019-02-15 05:32:31', '5.45.207.83', 'YandexBot'),
(1501, '2019-02-17 10:07:49', '182.1.23.72', 'Chrome'),
(1502, '2019-02-17 10:09:35', '64.233.173.24', 'Chrome'),
(1503, '2019-02-17 10:40:58', '64.233.173.23', 'Chrome'),
(1504, '2019-02-17 10:42:21', '64.233.173.22', 'Chrome'),
(1505, '2019-02-17 10:43:22', '114.125.29.167', 'Other'),
(1506, '2019-02-17 10:53:52', '103.80.82.80', 'Safari'),
(1507, '2019-02-18 02:45:04', '64.233.173.22', 'Chrome'),
(1508, '2019-02-18 03:21:23', '114.125.40.142', 'Safari'),
(1509, '2019-02-18 04:15:58', '180.254.129.27', 'Chrome'),
(1510, '2019-02-18 08:59:29', '66.102.6.162', 'Chrome'),
(1511, '2019-02-19 00:50:27', '110.137.81.184', 'Chrome'),
(1512, '2019-02-19 04:02:36', '36.84.229.93', 'Chrome'),
(1513, '2019-02-19 04:09:20', '180.254.129.27', 'Chrome'),
(1514, '2019-02-19 04:49:52', '66.102.6.162', 'Chrome'),
(1515, '2019-02-19 05:50:43', '103.80.82.80', 'Safari'),
(1516, '2019-02-19 06:42:41', '180.241.229.27', 'Chrome'),
(1517, '2019-02-19 06:53:31', '36.69.9.172', 'Chrome'),
(1518, '2019-02-19 20:37:15', '141.8.183.204', 'YandexBot'),
(1519, '2019-02-22 01:34:23', '64.233.173.162', 'Chrome'),
(1520, '2019-02-22 01:39:22', '64.233.173.166', 'Chrome'),
(1521, '2019-02-22 08:06:34', '103.231.114.14', 'Chrome'),
(1522, '2019-02-22 09:57:44', '180.254.132.100', 'Chrome'),
(1523, '2019-02-22 23:03:43', '36.68.6.227', 'Chrome'),
(1524, '2019-02-22 23:39:21', '114.125.26.255', 'Chrome'),
(1525, '2019-02-23 00:00:44', '114.125.30.147', 'Chrome'),
(1526, '2019-02-23 00:21:40', '103.247.211.97', 'Chrome'),
(1527, '2019-02-23 00:22:57', '103.247.211.99', 'Chrome'),
(1528, '2019-02-23 00:43:48', '64.233.173.166', 'Chrome'),
(1529, '2019-02-23 06:00:57', '94.180.217.170', 'Internet Explorer'),
(1530, '2019-02-23 07:53:35', '64.233.173.165', 'Chrome'),
(1531, '2019-02-23 09:11:06', '36.68.6.184', 'Chrome'),
(1532, '2019-02-23 09:13:21', '64.233.173.162', 'Chrome'),
(1533, '2019-02-23 09:38:11', '114.125.56.221', 'Chrome'),
(1534, '2019-02-23 09:39:19', '114.125.56.37', 'Chrome'),
(1535, '2019-02-23 13:34:15', '114.125.28.200', 'Safari'),
(1536, '2019-02-23 13:51:47', '64.233.172.166', 'Chrome'),
(1537, '2019-02-23 16:39:53', '114.125.29.67', 'Chrome'),
(1538, '2019-02-24 03:09:07', '64.233.173.165', 'Chrome'),
(1539, '2019-02-24 03:19:40', '64.233.173.162', 'Chrome'),
(1540, '2019-02-24 06:59:13', '180.254.132.100', 'Chrome'),
(1541, '2019-02-25 02:22:12', '180.254.132.100', 'Chrome'),
(1542, '2019-02-25 02:30:53', '180.241.136.7', 'Chrome'),
(1543, '2019-02-25 05:52:38', '114.125.57.179', 'Chrome'),
(1544, '2019-02-25 05:53:28', '114.125.41.207', 'Chrome'),
(1545, '2019-02-25 05:53:57', '114.125.41.172', 'Chrome'),
(1546, '2019-02-26 04:24:47', '66.102.6.102', 'Chrome'),
(1547, '2019-02-26 09:40:58', '114.125.15.236', 'Safari'),
(1548, '2019-02-26 09:41:06', '114.125.31.131', 'Safari'),
(1549, '2019-02-26 09:42:04', '114.125.15.136', 'Safari'),
(1550, '2019-02-26 09:43:20', '36.68.66.141', 'Chrome'),
(1551, '2019-02-26 09:44:10', '114.125.14.71', 'Safari'),
(1552, '2019-02-26 09:46:45', '103.80.82.80', 'Safari'),
(1553, '2019-02-26 23:01:21', '103.80.82.80', 'Safari'),
(1554, '2019-02-27 07:11:30', '36.68.55.65', 'Chrome'),
(1555, '2019-02-27 13:35:58', '180.241.183.81', 'Chrome'),
(1556, '2019-02-27 15:26:47', '36.68.66.141', 'Chrome'),
(1557, '2019-02-28 03:03:10', '36.68.66.141', 'Chrome'),
(1558, '2019-02-28 04:04:42', '36.68.55.65', 'Chrome'),
(1559, '2019-02-28 07:45:29', '182.1.63.94', 'Safari'),
(1560, '2019-02-28 19:57:29', '94.180.152.130', 'Internet Explorer'),
(1561, '2019-03-01 01:36:29', '36.90.37.119', 'Chrome'),
(1562, '2019-03-01 05:47:21', '103.80.82.80', 'Safari'),
(1563, '2019-03-01 05:52:57', '66.220.149.5', 'Other'),
(1564, '2019-03-01 05:54:07', '66.220.149.4', 'Safari'),
(1565, '2019-03-01 05:55:58', '66.220.149.18', 'Other'),
(1566, '2019-03-01 05:56:38', '69.171.251.19', 'Safari'),
(1567, '2019-03-01 05:56:58', '119.47.93.92', 'Chrome'),
(1568, '2019-03-01 05:57:50', '69.171.251.24', 'Other'),
(1569, '2019-03-01 06:05:46', '173.252.87.10', 'Other'),
(1570, '2019-03-01 06:11:47', '182.1.16.206', 'Chrome'),
(1571, '2019-03-01 06:20:19', '114.125.31.72', 'Chrome'),
(1572, '2019-03-01 06:23:49', '36.68.6.249', 'Safari'),
(1573, '2019-03-01 06:36:25', '114.125.41.114', 'Chrome'),
(1574, '2019-03-01 06:40:09', '182.1.60.169', 'Chrome'),
(1575, '2019-03-01 06:46:30', '182.1.4.225', 'Chrome'),
(1576, '2019-03-01 08:36:22', '202.67.45.42', 'Chrome'),
(1577, '2019-03-01 09:56:34', '114.125.22.173', 'Chrome'),
(1578, '2019-03-01 09:59:58', '180.241.188.5', 'Chrome'),
(1579, '2019-03-01 10:15:49', '114.125.57.108', 'Chrome'),
(1580, '2019-03-01 10:36:00', '173.252.95.7', 'Other'),
(1581, '2019-03-01 10:36:00', '173.252.87.16', 'Other'),
(1582, '2019-03-01 10:36:00', '173.252.87.21', 'Other'),
(1583, '2019-03-01 10:36:01', '66.220.149.3', 'Other'),
(1584, '2019-03-01 11:41:51', '182.1.46.51', 'Chrome'),
(1585, '2019-03-01 12:37:53', '66.220.149.10', 'Other'),
(1586, '2019-03-01 12:40:45', '31.13.115.17', 'Safari'),
(1587, '2019-03-01 12:42:42', '36.77.89.67', 'Chrome'),
(1588, '2019-03-01 12:45:15', '114.125.22.52', 'Chrome'),
(1589, '2019-03-01 12:45:51', '173.252.95.1', 'Other'),
(1590, '2019-03-01 12:54:19', '182.1.45.108', 'Chrome'),
(1591, '2019-03-01 13:11:44', '125.162.80.205', 'Chrome'),
(1592, '2019-03-01 13:17:20', '114.125.6.27', 'Chrome'),
(1593, '2019-03-01 13:53:47', '182.1.19.88', 'Chrome'),
(1594, '2019-03-01 14:22:10', '115.178.223.3', 'Chrome'),
(1595, '2019-03-01 14:37:57', '36.68.58.2', 'Chrome'),
(1596, '2019-03-01 14:58:18', '36.77.176.252', 'Chrome'),
(1597, '2019-03-01 22:34:53', '114.125.56.60', 'Chrome'),
(1598, '2019-03-02 00:11:08', '103.80.82.80', 'Mozilla'),
(1599, '2019-03-02 03:36:18', '125.165.104.54', 'Safari'),
(1600, '2019-03-02 14:58:05', '182.0.164.166', 'Chrome'),
(1601, '2019-03-02 15:49:43', '69.171.251.22', 'Other'),
(1602, '2019-03-02 23:06:43', '103.80.82.80', 'Safari'),
(1603, '2019-03-03 02:14:13', '103.87.78.122', 'Other'),
(1604, '2019-03-03 16:43:10', '114.125.37.192', 'Chrome'),
(1605, '2019-03-04 03:00:57', '110.137.101.172', 'Chrome'),
(1606, '2019-03-04 05:15:58', '182.1.62.201', 'Safari'),
(1607, '2019-03-04 07:45:50', '110.137.83.104', 'Chrome'),
(1608, '2019-03-05 08:39:36', '36.68.62.208', 'Safari'),
(1609, '2019-03-05 09:24:04', '182.1.44.252', 'Chrome'),
(1610, '2019-03-05 12:17:09', '182.1.46.143', 'Chrome'),
(1611, '2019-03-05 12:17:35', '182.1.60.55', 'Other'),
(1612, '2019-03-05 12:19:21', '182.1.17.213', 'Chrome'),
(1613, '2019-03-05 12:19:37', '182.1.0.229', 'Chrome'),
(1614, '2019-03-05 12:20:04', '182.1.44.214', 'Chrome'),
(1615, '2019-03-05 12:20:25', '182.1.1.241', 'Chrome'),
(1616, '2019-03-05 12:20:37', '182.1.16.207', 'Chrome'),
(1617, '2019-03-05 19:07:25', '182.1.44.202', 'Chrome'),
(1618, '2019-03-06 02:40:09', '141.8.183.204', 'YandexBot'),
(1619, '2019-03-06 02:49:23', '180.241.185.149', 'Chrome'),
(1620, '2019-03-06 05:19:07', '182.1.2.42', 'Chrome'),
(1621, '2019-03-06 05:26:00', '114.125.13.157', 'Chrome'),
(1622, '2019-03-06 07:03:32', '103.80.82.80', 'Safari'),
(1623, '2019-03-06 14:17:02', '36.69.11.69', 'Chrome'),
(1624, '2019-03-06 17:28:11', '182.1.60.83', 'Chrome'),
(1625, '2019-03-06 23:08:05', '114.125.6.52', 'Chrome'),
(1626, '2019-03-07 09:28:01', '141.8.183.204', 'YandexBot'),
(1627, '2019-03-07 09:29:55', '178.154.244.21', 'YandexBot'),
(1628, '2019-03-07 19:31:04', '141.8.183.204', 'YandexBot'),
(1629, '2019-03-09 14:38:04', '141.8.183.204', 'YandexBot'),
(1630, '2019-03-10 10:41:54', '103.80.82.80', 'Safari'),
(1631, '2019-03-10 12:59:58', '114.125.7.183', 'Chrome'),
(1632, '2019-03-10 14:48:33', '182.1.46.234', 'Chrome'),
(1633, '2019-03-10 20:32:48', '114.125.6.246', 'Chrome'),
(1634, '2019-03-10 20:34:27', '114.125.22.230', 'Chrome'),
(1635, '2019-03-10 20:35:31', '114.125.6.167', 'Chrome'),
(1636, '2019-03-11 02:18:55', '180.241.180.171', 'Chrome'),
(1637, '2019-03-12 04:05:09', '36.68.63.152', 'Safari'),
(1638, '2019-03-12 12:12:33', '103.80.82.80', 'Safari'),
(1639, '2019-03-12 12:19:14', '114.125.6.83', 'Safari'),
(1640, '2019-03-12 12:22:18', '114.125.6.227', 'Safari'),
(1641, '2019-03-12 12:24:44', '114.125.6.167', 'Safari'),
(1642, '2019-03-12 12:44:08', '114.125.10.51', 'Safari'),
(1643, '2019-03-12 12:44:35', '114.125.10.239', 'Safari'),
(1644, '2019-03-12 12:44:37', '114.125.26.91', 'Safari'),
(1645, '2019-03-13 05:03:59', '36.68.63.152', 'Chrome'),
(1646, '2019-03-13 07:04:18', '103.80.82.80', 'Safari'),
(1647, '2019-03-13 14:59:37', '110.137.100.147', 'Chrome'),
(1648, '2019-03-15 11:42:31', '114.124.173.61', 'Safari'),
(1649, '2019-03-16 07:03:50', '114.124.228.220', 'Safari'),
(1650, '2019-03-18 00:56:30', '114.125.57.241', 'Safari'),
(1651, '2019-03-18 07:55:15', '180.241.241.2', 'Safari'),
(1652, '2019-03-18 08:17:06', '180.241.228.79', 'Chrome'),
(1653, '2019-03-18 11:51:09', '103.80.82.80', 'Safari'),
(1654, '2019-03-18 22:45:22', '103.80.82.80', 'Safari'),
(1655, '2019-03-19 01:47:30', '180.254.135.0', 'Chrome'),
(1656, '2019-03-19 02:56:44', '36.68.54.65', 'Safari'),
(1657, '2019-03-19 07:44:00', '36.68.55.20', 'Chrome'),
(1658, '2019-03-19 19:11:35', '103.111.86.254', 'Safari'),
(1659, '2019-03-20 17:12:28', '103.111.86.254', 'Safari'),
(1660, '2019-03-21 03:09:53', '36.68.54.65', 'Safari'),
(1661, '2019-03-21 03:40:05', '180.254.135.0', 'Chrome'),
(1662, '2019-03-21 08:26:39', '141.8.183.204', 'YandexBot'),
(1663, '2019-03-22 09:16:08', '46.188.42.169', 'Internet Explorer'),
(1664, '2019-03-22 11:21:54', '141.8.183.204', 'YandexBot'),
(1665, '2019-03-22 11:21:58', '178.154.244.21', 'YandexBot'),
(1666, '2019-03-22 11:33:51', '182.1.19.56', 'Safari'),
(1667, '2019-03-22 11:34:16', '182.1.1.8', 'Safari'),
(1668, '2019-03-22 11:35:32', '182.1.16.253', 'Safari'),
(1669, '2019-03-24 02:52:18', '182.1.2.35', 'Safari'),
(1670, '2019-03-24 03:01:52', '114.125.14.38', 'Safari'),
(1671, '2019-03-24 03:02:22', '114.125.31.22', 'Safari'),
(1672, '2019-03-24 07:53:15', '103.80.82.80', 'Safari'),
(1673, '2019-03-26 03:31:25', '36.69.3.169', 'Safari'),
(1674, '2019-03-27 00:27:14', '36.69.3.169', 'Safari'),
(1675, '2019-03-27 20:52:52', '141.8.183.204', 'YandexBot'),
(1676, '2019-03-27 20:52:57', '178.154.244.21', 'YandexBot'),
(1677, '2019-03-29 02:47:01', '36.68.53.9', 'Chrome'),
(1678, '2019-03-29 05:07:30', '103.80.82.80', 'Safari'),
(1679, '2019-03-30 05:40:00', '103.80.82.80', 'Safari'),
(1680, '2019-03-30 15:47:19', '5.228.124.99', 'Internet Explorer'),
(1681, '2019-04-01 01:48:43', '115.178.201.9', 'Chrome'),
(1682, '2019-04-02 09:14:03', '36.68.55.248', 'Safari'),
(1683, '2019-04-04 04:30:52', '114.125.28.206', 'Safari'),
(1684, '2019-04-05 03:57:43', '141.8.183.204', 'YandexBot'),
(1685, '2019-04-05 08:06:29', '141.8.183.17', 'YandexBot'),
(1686, '2019-04-06 05:41:22', '115.178.211.181', 'Chrome'),
(1687, '2019-04-08 01:06:00', '182.1.61.202', 'Safari'),
(1688, '2019-04-08 03:04:33', '180.254.136.164', 'Chrome'),
(1689, '2019-04-09 02:10:12', '180.241.228.140', 'Chrome'),
(1690, '2019-04-12 06:46:35', '95.28.225.171', 'Internet Explorer'),
(1691, '2019-04-17 01:51:08', '114.125.10.166', 'Chrome'),
(1692, '2019-04-17 23:14:32', '141.8.183.204', 'YandexBot'),
(1693, '2019-04-19 01:30:42', '89.178.239.5', 'Chrome'),
(1694, '2019-04-21 13:46:49', '141.8.183.204', 'YandexBot'),
(1695, '2019-04-23 02:00:54', '180.254.128.254', 'Chrome'),
(1696, '2019-04-23 04:06:34', '36.68.12.132', 'Chrome'),
(1697, '2019-04-23 04:13:15', '180.254.129.236', 'Chrome'),
(1698, '2019-04-26 03:57:20', '110.137.90.98', 'Chrome'),
(1699, '2019-04-30 05:32:24', '180.254.123.252', 'Chrome'),
(1700, '2019-05-01 03:16:50', '182.1.44.60', 'Chrome'),
(1701, '2019-05-01 03:17:35', '182.1.60.228', 'Chrome'),
(1702, '2019-05-01 03:17:45', '182.1.46.112', 'Chrome'),
(1703, '2019-05-02 08:02:27', '141.8.183.204', 'YandexBot'),
(1704, '2019-05-03 06:13:52', '34.234.54.252', 'Chrome'),
(1705, '2019-05-05 17:39:57', '128.72.159.196', 'Chrome'),
(1706, '2019-05-06 07:30:17', '36.68.10.18', 'Chrome'),
(1707, '2019-05-07 01:38:04', '36.68.10.18', 'Chrome'),
(1708, '2019-05-07 02:27:42', '36.68.13.47', 'Chrome'),
(1709, '2019-05-07 10:02:03', '182.1.45.236', 'Chrome'),
(1710, '2019-05-07 19:57:57', '114.125.26.227', 'Chrome'),
(1711, '2019-05-07 20:10:39', '114.125.26.63', 'Chrome'),
(1712, '2019-05-08 01:36:31', '36.68.13.47', 'Chrome'),
(1713, '2019-05-08 02:23:08', '36.68.54.173', 'Chrome'),
(1714, '2019-05-08 03:37:57', '36.68.10.18', 'Chrome'),
(1715, '2019-05-09 19:32:22', '114.125.15.243', 'Chrome'),
(1716, '2019-05-09 19:32:30', '114.125.31.93', 'Chrome'),
(1717, '2019-05-09 19:32:50', '114.125.28.251', 'Chrome'),
(1718, '2019-05-09 19:44:21', '182.1.5.234', 'Chrome'),
(1719, '2019-05-09 19:44:41', '182.1.20.251', 'Chrome'),
(1720, '2019-05-09 19:45:37', '182.1.20.238', 'Chrome'),
(1721, '2019-05-09 19:45:38', '182.1.4.91', 'Chrome'),
(1722, '2019-05-09 19:47:18', '182.1.21.101', 'Chrome'),
(1723, '2019-05-09 19:48:08', '182.1.7.119', 'Chrome'),
(1724, '2019-05-09 19:48:21', '182.1.6.66', 'Chrome'),
(1725, '2019-05-09 19:49:40', '66.220.149.14', 'Other'),
(1726, '2019-05-09 19:49:41', '66.220.149.6', 'Other'),
(1727, '2019-05-09 19:49:41', '66.220.149.25', 'Other'),
(1728, '2019-05-09 19:49:42', '66.220.149.48', 'Other'),
(1729, '2019-05-09 19:49:56', '182.1.6.233', 'Chrome'),
(1730, '2019-05-10 08:04:39', '141.8.183.204', 'YandexBot'),
(1731, '2019-05-11 01:44:33', '141.8.183.204', 'YandexBot'),
(1732, '2019-05-11 17:47:32', '141.8.183.204', 'YandexBot'),
(1733, '2019-05-12 00:43:24', '178.154.244.21', 'YandexBot'),
(1734, '2019-05-12 01:41:43', '114.125.31.121', 'Chrome'),
(1735, '2019-05-14 02:10:47', '141.8.183.204', 'YandexBot'),
(1736, '2019-05-14 20:57:22', '141.8.183.204', 'YandexBot'),
(1737, '2019-05-15 18:20:31', '141.8.183.204', 'YandexBot'),
(1738, '2019-05-17 14:54:07', '141.8.183.204', 'YandexBot'),
(1739, '2019-05-22 02:55:12', '36.68.7.136', 'Chrome'),
(1740, '2019-05-22 03:02:37', '54.86.66.252', 'Safari'),
(1741, '2019-05-22 06:33:28', '36.68.7.237', 'Chrome'),
(1742, '2019-05-22 09:41:09', '141.8.183.204', 'YandexBot'),
(1743, '2019-05-24 03:54:47', '141.8.183.204', 'YandexBot'),
(1744, '2019-05-25 23:10:52', '141.8.183.204', 'YandexBot'),
(1745, '2019-05-27 02:24:07', '46.188.22.209', 'Internet Explorer'),
(1746, '2019-05-27 03:00:03', '141.8.183.204', 'YandexBot'),
(1747, '2019-05-30 09:46:57', '141.8.183.204', 'YandexBot'),
(1748, '2019-05-30 18:11:12', '209.17.96.34', 'Mozilla'),
(1749, '2019-06-01 01:43:31', '128.68.111.219', 'Chrome'),
(1750, '2019-06-04 22:09:57', '141.8.183.204', 'YandexBot'),
(1751, '2019-06-08 09:08:33', '141.8.183.204', 'YandexBot'),
(1752, '2019-06-08 20:17:29', '141.8.183.204', 'YandexBot'),
(1753, '2019-06-10 07:44:04', '141.8.183.204', 'YandexBot'),
(1754, '2019-06-11 05:54:59', '141.8.183.204', 'YandexBot'),
(1755, '2019-06-13 01:28:47', '95.221.56.127', 'Chrome'),
(1756, '2019-06-13 02:50:30', '36.68.8.210', 'Chrome'),
(1757, '2019-06-13 05:18:05', '36.68.56.139', 'Chrome'),
(1758, '2019-06-15 02:14:15', '36.68.5.32', 'Chrome'),
(1759, '2019-06-20 01:25:20', '180.241.181.209', 'Chrome'),
(1760, '2019-06-20 14:19:20', '141.8.183.204', 'YandexBot'),
(1761, '2019-06-21 10:52:23', '141.8.183.204', 'YandexBot'),
(1762, '2019-06-21 19:05:15', '209.17.97.2', 'Mozilla'),
(1763, '2019-06-24 03:03:09', '36.68.52.4', 'Chrome'),
(1764, '2019-06-26 01:31:37', '209.17.97.106', 'Mozilla'),
(1765, '2019-06-28 02:20:56', '36.68.55.84', 'Chrome'),
(1766, '2019-06-28 07:11:08', '209.17.97.2', 'Mozilla'),
(1767, '2019-07-02 23:21:20', '209.17.97.42', 'Mozilla'),
(1768, '2019-07-04 17:30:58', '141.8.183.204', 'YandexBot'),
(1769, '2019-07-06 09:52:55', '209.17.97.98', 'Mozilla'),
(1770, '2019-07-08 03:36:01', '180.241.179.101', 'Chrome'),
(1771, '2019-07-08 03:47:59', '36.68.71.6', 'Chrome'),
(1772, '2019-07-12 07:52:21', '141.8.183.204', 'YandexBot'),
(1773, '2019-07-13 15:10:44', '141.8.183.204', 'YandexBot'),
(1774, '2019-07-13 15:42:12', '141.8.188.21', 'YandexBot'),
(1775, '2019-07-13 17:22:44', '141.8.183.204', 'YandexBot'),
(1776, '2019-07-13 17:30:18', '209.17.97.98', 'Mozilla'),
(1777, '2019-07-15 12:17:19', '46.42.161.212', 'Chrome'),
(1778, '2019-07-16 00:03:09', '141.8.183.204', 'YandexBot'),
(1779, '2019-07-17 03:45:50', '141.8.183.204', 'YandexBot'),
(1780, '2019-07-17 03:46:11', '141.8.188.21', 'YandexBot'),
(1781, '2019-07-17 22:57:00', '141.8.183.204', 'YandexBot'),
(1782, '2019-07-18 02:55:59', '180.241.187.46', 'Chrome'),
(1783, '2019-07-20 21:57:44', '209.17.96.250', 'Mozilla'),
(1784, '2019-07-21 03:28:31', '141.8.183.204', 'YandexBot'),
(1785, '2019-07-24 09:09:55', '141.8.183.204', 'YandexBot'),
(1786, '2019-07-25 10:26:28', '36.68.54.84', 'Chrome'),
(1787, '2019-07-25 11:24:35', '141.8.183.204', 'YandexBot'),
(1788, '2019-07-26 03:20:34', '141.8.183.204', 'YandexBot'),
(1789, '2019-07-26 03:20:38', '141.8.188.21', 'YandexBot'),
(1790, '2019-07-27 05:47:01', '209.17.96.202', 'Mozilla'),
(1791, '2019-07-29 07:18:55', '103.231.114.14', 'Firefox'),
(1792, '2019-07-29 12:24:20', '141.8.183.204', 'YandexBot'),
(1793, '2019-07-29 12:24:24', '141.8.188.21', 'YandexBot'),
(1794, '2019-07-29 21:26:21', '209.17.97.2', 'Mozilla'),
(1795, '2019-07-30 15:11:04', '141.8.183.204', 'YandexBot'),
(1796, '2019-07-30 19:59:15', '141.8.183.204', 'YandexBot'),
(1797, '2019-08-03 07:55:25', '141.8.183.204', 'YandexBot'),
(1798, '2019-08-03 10:54:22', '209.17.97.26', 'Mozilla'),
(1799, '2019-08-06 18:52:43', '209.17.97.10', 'Mozilla'),
(1800, '2019-08-08 01:43:00', '125.162.86.191', 'Chrome'),
(1801, '2019-08-09 14:16:09', '141.8.183.204', 'YandexBot'),
(1802, '2019-08-11 04:28:26', '141.8.183.204', 'YandexBot'),
(1803, '2019-08-11 21:44:35', '141.8.183.204', 'YandexBot'),
(1804, '2019-08-12 00:59:43', '180.241.181.4', 'Chrome'),
(1805, '2019-08-13 11:01:01', '182.1.43.178', 'Chrome'),
(1806, '2019-08-13 11:01:42', '182.1.46.233', 'Chrome'),
(1807, '2019-08-13 11:04:38', '182.1.44.235', 'Chrome'),
(1808, '2019-08-13 11:04:59', '182.1.63.132', 'Chrome'),
(1809, '2019-08-13 11:05:07', '182.1.46.152', 'Chrome'),
(1810, '2019-08-15 05:22:35', '209.17.96.250', 'Mozilla'),
(1811, '2019-08-16 21:53:42', '141.8.183.204', 'YandexBot'),
(1812, '2019-08-16 22:19:29', '141.8.188.21', 'YandexBot'),
(1813, '2019-08-17 07:41:13', '209.17.96.122', 'Mozilla'),
(1814, '2019-08-19 07:35:11', '36.68.11.199', 'Chrome'),
(1815, '2019-08-20 01:14:48', '180.254.140.140', 'Chrome'),
(1816, '2019-08-20 23:25:13', '141.8.183.204', 'YandexBot'),
(1817, '2019-08-21 07:55:01', '209.17.96.90', 'Mozilla');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profil`
--

CREATE TABLE `tbl_profil` (
  `profil_id` int(254) NOT NULL,
  `sejarah` text DEFAULT NULL,
  `profil` text DEFAULT NULL,
  `visi_misi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `tulisan_views` int(254) NOT NULL DEFAULT 0,
  `tulisan_pengguna_id` int(254) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_profil`
--

INSERT INTO `tbl_profil` (`profil_id`, `sejarah`, `profil`, `visi_misi`, `tulisan_tanggal`, `tulisan_views`, `tulisan_pengguna_id`, `tulisan_author`) VALUES
(1, '', '<h1 style=\"text-align:center\"><strong><span style=\"font-size:20px\">LATAR BELAKANG DINAS KELAUTAN DAN PERIKANAN KABUPATEN BENGKALIS</span></strong></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dinas Kelautan dan Perikanan Kabupaten Bengkalis sebagai Instansi Teknis Pemerintah Daerah Kabupaten Bengkalis bertanggungjawab kepada bupati selaku kepala daerah dalam melaksanakan tugas-tugas pemerintahan dan pembangunan dalam bidang kelautan dan perikanan sesuai dengan Peraturan Daerah Kabupaten Bengkalis Nomor 3 tahun 2016, Tentang Pembentukan dan Susunan Perangkat Daerah Kabupaten Bengkalis, Dinas Kelautan dan Perikanan Kabupaten Bengkalis bertugas mengemban peningkatan pembangunan masyarakat di sektor kelautan dan perikanan serta pelaksanaan tugas pokok dan fungsi telah diatur kembali dengan Peraturan Bupati (Perbup) Kabupaten Bengkalis Nomor 55 tahun 2016.</span></p>\r\n', '<h2 style=\"text-align:center\"><strong><span style=\"background-color:#ffffff\">VISI DAN MISI DINAS KELAUTAN DAN PERIKANAN KABUPATEN BENGKALIS</span></strong></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><strong><span style=\"background-color:#ffffff\">Dinas Kelautan Dan Perikanan Kabupaten Bengkalis tahun 2016&ndash;2021 dengan visi dan misi sebagai&nbsp;</span><span style=\"background-color:#ffffff\">berikut :</span></strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<span style=\"font-size:16px\"><strong><span style=\"background-color:#ffffff\">VISI :&nbsp;</span><em><span style=\"background-color:#ffffff\"> </span></em></strong></span><span style=\"font-size:14px\"><strong><em><span style=\"background-color:#ffffff\">&ldquo;Terwujudnya Perikanan Bengkalis yang Tangguh Dan Lestari&rdquo;</span></em></strong></span><br />\r\n<span style=\"background-color:#ffffff\">Visi ini merupakan cara pandang jauh kedepan kearah mana Dinas Kelautan dan Perikanan Kabupaten Bengkalis akan diarahkan untuk mencapai tujuan yang akan dicapai dalam mengantisipasi tantangan yang akan dihadapi untuk mencapai kondisi yang diinginkan. Dinas Kelautan dan Perikanan Kabupaten Bengkalis secara terus menerus mengembangkan peranan dan fungsinya agar tetap eksis dan senantiasa mengupayakan perubahan ke arah perbaikan. Perubahan tersebut harus disusun dengan tahapan yang terencana, konsisten dan berkelanjutan sehingga dapat meningkatkan stabilitas kinerja yang berorientasi pada pencapaian hasil.</span><br />\r\n<span style=\"background-color:#ffffff\">Penjabaran formulasi visi pembangunan Kelautan dan Perikanan tahun 2016-2021 adalah sebagai berikut :</span></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"background-color:#ffffff\">1. Perikanan yang tangguh,</span></strong><span style=\"background-color:#ffffff\"> berarti produk perikanan mampu menghasilkan produksi yang kontinyu, berkualitas unggul secara kompetitif dan komparatif, dan dapat memberikan kesejahteraan kepada masyarakat perikanan serta memberikan kontribusi terhadap pembangunan daerah.</span><br />\r\n<strong><span style=\"background-color:#ffffff\">2. Perikanan yang lestari,</span></strong><span style=\"background-color:#ffffff\"> artinya pembangunan perikanan yang berkelanjutan dengan memperhatian kelestarian sumberdaya manusia dan sumberdaya alam sehingga potensi perikanan mampu bertahan dalam menghadapi dinamika perubahan lingkungan strategis dengan menggunakan sumber daya terbarukan.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong><span style=\"background-color:#ffffff\">MISI</span></strong></span><span style=\"background-color:#ffffff\"><span style=\"font-size:16px\"> : </span>Untuk mewujudkan visi tersebut, maka misi Dinas Kelautan dan Perikanan Kabupaten Bengkalis adalah sebagai berikut:</span><br />\r\n<span style=\"background-color:#ffffff\">1. Mewujudkan masyarakat perikanan yang sejahtera.</span><br />\r\n<span style=\"background-color:#ffffff\">2. Mewujudkan ketersediaan pangan sumberdaya perikanan.</span><br />\r\n<span style=\"background-color:#ffffff\">3. Mewujudkan sistim manajemen dan pemerintahan yang baik.</span></p>\r\n', '2018-12-06 05:09:28', 3, 36, 'ovi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proker`
--

CREATE TABLE `tbl_proker` (
  `proker_id` int(11) NOT NULL,
  `proker_isi` text NOT NULL,
  `tulisan_tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `tulisan_views` int(11) NOT NULL,
  `tulisan_pengguna_id` int(11) NOT NULL,
  `tulisan_author` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_proker`
--

INSERT INTO `tbl_proker` (`proker_id`, `proker_isi`, `tulisan_tanggal`, `tulisan_views`, `tulisan_pengguna_id`, `tulisan_author`) VALUES
(1, '<h3>&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2018-12-10 14:44:05', 0, 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id_setting` int(20) NOT NULL,
  `name_setting` varchar(255) NOT NULL,
  `value_setting` text NOT NULL,
  `priority` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `name_setting`, `value_setting`, `priority`) VALUES
(1, 'ribbon_hrg_ikan_txt', 'DAFTAR HARGA IKAN JUNI 2019 SE-KABUPATEN BENGKALIS%klik disini%', 0),
(2, 'ribbon_hrg_ikan_id_file', '18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `judul_slider` varchar(50) NOT NULL,
  `isi_slider` varchar(200) NOT NULL,
  `gambar_slider` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `judul_slider`, `isi_slider`, `gambar_slider`) VALUES
(11, '', '', '2e080f86b78ef6607095dfc82d86744f.JPG'),
(12, '', '', '9b541ac5221a1e9607ef951bac846f60.jpg'),
(14, '', '', 'd65d5a0876eb99cf4bf7b4ccca223d94.JPG'),
(15, '', '', '84f31800fdb1b52f9eaded793a1369a2.JPG'),
(16, '', '', '910e32b46f20fa7a74093fd3028c79b6.JPG'),
(17, '', '', '4150493addde8890d5d62a9dce4001a2.JPG'),
(18, '', '', '8e9e8a372c0b31aeb2423acfad31efe4.JPG'),
(19, '', '', '860bb32817271f86faee517320ff3962.JPG'),
(20, '', '', '8094d273b575d32bfa902392b2e42897.JPG'),
(26, '', '', '391682949722938f93870a2aff4a00fc.jpg'),
(27, '', '', '48e49ca5f9f0c320c6dd81fbcfa4dd32.jpg'),
(29, '', '', '64d2cc9f5bc2329c5300f2e7412cd159.jpg'),
(30, '', '', 'e59188ecf07e1bf134007b6afc695977.JPG'),
(31, '', '', '5fd2845e97c3c1dab5ebd94a0553f5a4.JPG'),
(33, '', '', 'ccb118004b9acaecc0cbb542dba8d2f7.jpg'),
(34, '', '', '1bf4f195a4c00612149996d993f5bf23.JPG'),
(35, '', '', 'ad905e065f01626d83dfe49d9cd68ef4.JPG'),
(36, '', '', '00356ab124933c404c6bedd11c8d9dba.JPG'),
(37, '', '', '47edaadd1593ebfcb7ebdc6a5c56115c.JPG'),
(38, '', '', '339c61c5c89331c63fbe8b06d732610c.JPG'),
(39, '', '', 'aaf39834bc6f6b728199245471ffbeda.JPG'),
(40, '', '', 'f2c50fab80a373ea67774edabd6ccc1d.JPG'),
(41, '', '', 'fc72c876e5150362f28ff61e46297ff9.JPG'),
(42, '', '', '816563d3ca3e0422010552da2d5351f2.JPG'),
(43, '', '', 'fe972654feb6d316f67ac49edb8f8bc3.JPG'),
(44, '', '', '57c6709b071095697b30088022be110f.jpeg'),
(45, '', '', '21508634b71a2ce4477210b00d4fa10c.jpeg'),
(46, '', '', '4fbe30685c38f48df9115633c259c6c4.JPG'),
(47, '', '', 'b2d76e5242f5be60c1ac218ee0521689.JPG'),
(48, '', '', '973a0199ec1110b4bcdc648c8a22e1eb.JPG'),
(49, '', '', '64154164456c990c4fb3fcb1d775eb93.jpg'),
(50, 'Silaturahmi Sambut Ramadhan', '', '054257ff4ed0d6776774de1f979738b0.JPG'),
(51, 'Silaturahmi Sambut Ramadhan', '', '0488c7502882e933591f6efc76a1ccc3.JPG'),
(52, 'Pelatihan Bioflok Di Kecamatan Mandau', '', '3d4ff50fe773a2acaa4ef681d863ff93.JPG'),
(53, 'Pelatihan Bioflok Di Kecamatan Mandau', '', '42344994a77bac20a4812f76ca068c81.JPG'),
(54, 'Pelatihan Bioflok Di Kecamatan Mandau', '', '0e016ef0c730fa2eb99a113cc4330568.JPG'),
(55, 'Pelatihan Bioflok Di Kecamatan Mandau', '', 'aeb5f98719c253397bc4b170108e7aca.JPG'),
(56, 'Pelatihan Bioflok Di Kecamatan Mandau', '', 'd0ad6753a8db66561c5ddee98264cdbe.JPG'),
(57, 'Pelatihan Bioflok Di Kecamatan Mandau', 'Penyampain materi oleh narasumber dari Fakultas Perikanan dan Ilmu Kelautan Universitas Riau', 'f006fa4cff742b4316c1b474470cf40e.JPG'),
(58, 'Pelatihan Bioflok Di Kecamatan Mandau', 'Praktek Pembuatan Kolam Ikan dengan Sistim Bioflok', '1b6ca6050be6206ebf37b28de18bf2ff.JPG'),
(59, 'Pelatihan Bioflok Di Kecamatan Mandau', 'Praktek Pembuatan Kolam Ikan dengan Sistim Bioflok', 'e80fa5b39e204b6d086aebee7f2e4b4c.JPG'),
(60, 'Temu Kemitraan Usaha Perikanan', '', 'ef2f3debae50f7763f76128f312455ea.JPG'),
(61, 'Temu Kemitraan Usaha Perikanan', 'Sambutan Kepala Dinas Kelautan dan Perikanan Kabupaten Bengkalis', 'cde3001a39df449f6886e3fbd9f86cae.JPG'),
(62, 'Temu Kemitraan Usaha Perikanan', 'Peninjauan Produk Olahan Hasil Perikanan ', '807f4f9a1a3ae6e0b04c2a9085cd1121.JPG'),
(63, 'Temu Kemitraan Usaha Perikanan', '', '7d7a0eb5eaeedc918d8bd98479810129.JPG'),
(64, 'Temu Lapang Pembudidaya Ikan / Udang', 'Sosialisasi Hama dan Penyakit Pada Udang Vanamei', '03ea546d0ec2ee45716b28a5f4a59d0d.JPG'),
(65, 'Temu Lapang Pembudidaya Ikan / Udang', 'Sosialisasi Hama dan Penyakit Pada Udang Vanamei', '18fb3fdb9e5cfafa382a110981fcc7c6.JPG'),
(66, 'Temu Lapang Pembudidaya Ikan / Udang', 'Sosialisasi Hama dan Penyakit Pada Udang Vanamei', '1086d485b9a3727472a6043926b258e8.JPG'),
(67, 'Temu Lapang Pembudidaya Ikan / Udang', 'Sosialisasi Hama dan Penyakit Pada Udang Vanamei', '607278c4ea533ed0e44b868e0b83af6e.JPG'),
(68, 'Rapat Panitia Lomba Masak Serba Ikan Tahun 2019', 'Rapat Persiapan Lomba Masak Serba Ikan Tahun 2019', '222a7c7f7783d87419ff7c6a7497b91b.JPG'),
(69, 'Rapat Panitia Lomba Masak Serba Ikan Tahun 2019', 'Rapat Persiapan Lomba Masak Serba Ikan Tahun 2019', 'ac524e1eac5108046a3e46f8ccfa126b.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tampilan`
--

CREATE TABLE `tbl_tampilan` (
  `id_tampilan` int(11) NOT NULL,
  `tulisan_sambutan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tampilan`
--

INSERT INTO `tbl_tampilan` (`id_tampilan`, `tulisan_sambutan`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL,
  `status` enum('draft','publish') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`, `status`) VALUES
(41, 'Pelaksanaan Asuransi Nelayan di Kabupaten Bengkalis', '<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">Bantuan Premi Asuransi bagi Nelayan (BPAN) merupakan salah satu program unggulan Kementerian Kelautan dan Perikanan. Regulasi yang mendasari program ini adalah Undang-undang Nomor 7 Tahun 2016 tentang Perlindungan dan Pemberdayaan Nelayan, Pembudi Daya Ikan dan Petambak Garam. </span></span></p>\r\n\r\n<p style=\"margin-left:28px\"><span style=\"color:#000000\"><span style=\"font-size:medium\">1. Dasar Hukum </span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\">Peraturan Menteri Kelautan dan Perikanan Nomor 70/PERMEN-KP/2016 tentang Pedoman Umum dalam rangka Penyaluran Bantuan Pemerintah di Kementerian Kelautan dan Perikanan sebagai mana telah diubah dengan Peraturan Menteri Kelautan dan Perikanan Nomor 60/PERMEN-KP/2017:</span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:11pt\">Peraturan Direktur Jenderal Perikanan Tangkap Nomor 3/PER-DJPT/2018 tentang Petunjuk Teknis Bantuan Premi Asuransi Nelayan pada Direktorat Jenderal Perikanan Tangkap</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:28px\"><span style=\"color:#000000\"><span style=\"font-size:medium\">2. &nbsp;Maksud </span></span></p>\r\n\r\n<p style=\"margin-left:80px\"><span style=\"color:#000000\"><strong><span style=\"font-size:11pt\">MEMBERIKAN PERLINDUNGAN TERHADAP INDIVIDU NELAYAN DALAM RANGKA KEBERLANGSUNGAN KEGIATAN USAHA PENANGKAPAN IKAN </span></strong></span></p>\r\n\r\n<p style=\"margin-left:28px\"><span style=\"color:#000000\"><span style=\"font-size:medium\">3. Tujuan </span></span></p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li>Memberikan jaminan perlindungan atas resiko yang dialami individu nelayan.</li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"color:#000000\">Menumbuhkan kesadaran bagi nelayan terhadap pentingnya berasuransi.</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"color:#000000\">Membangun&nbsp; keinginan nelyan untuk berasuransi mandiri.</span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">&nbsp;</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">4. Manfaat </span></span></p>\r\n\r\n<ul style=\"margin-left:40px\">\r\n	<li><span style=\"font-size:11pt\"><span style=\"color:#000000\">Santunan sejumlah uang yang diberikan kepada Nelayan dalam hal terjadi kecelakaan yang mengakibatkan cacat tetap atau hilangnya nyawa pada saat melakukan aktifitas sehari-hari. </span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"color:#000000\">Penggantian biaya pengobatan yang diberikan kepada Nelayan dalam hal terjadi kecelakaan</span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"color:#000000\">&nbsp;</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">5. Resiko Yang Dijamin</span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-size:11pt\"><span style=\"color:#000000\">Polis menjamin risiko Kematian, Cacat Tetap, Cacat Sebagian, Biaya Perawatan atau Pengobatan&nbsp; dan Biaya Lainnya yang secara langsung disebabkan oleh kejadian kecelakaan atau lainnya </span></span></p>\r\n\r\n<p><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">&nbsp;</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">6. BPAN memberikan Santunan kepada Nelayan atau Ahli Warisnya dalam hal:</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"color:#000000\">Meninggal Dunia akibat Kecelakaan di laut</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"color:#000000\">Meninggal Dunia selain akibat Kecelakaan di laut</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"color:#000000\">Cacat Tetap akibat Kecelakaan</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"color:#000000\">Biaya Pengobatan akibat Kecelakaan</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"color:#000000\">Termasuk di dalamnya risiko hilang sehingga dinyatakan meninggal dunia (penetapan oleh Pengadilan).</span></span></li>\r\n</ul>\r\n\r\n<p><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">&nbsp;</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\"><strong>II.&nbsp; Pelaksanaan.</strong></span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-size:11pt\"><span style=\"color:#000000\">1. Bantuan Premi</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"color:#000000\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Program Bantuan Premi Asuransi telah dilaksnaakan sejak tahun 2016 sampai tahun 2018 dengan jumlah polis yang telah diserahkan sebanyak 5.897 Polis. Pada tahun 2016 dengan jumlah bantuan sebanyak 1.976 Polis, Tahun 2017 sebanyak 3.238 Polis dan tahun 2018 sebanyak 683 Polis.</span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\"><span style=\"color:#000000\"><span style=\"font-size:medium\">2. Realisasi Klaim </span></span></span></p>\r\n\r\n<p style=\"margin-left:40px\"><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jumlah klaim yang sudah diserahkan kepada peserta asuransi dan ahli waris pada tahun 2017 sebanyak &nbsp;13 klaim dan pada tahun 2018 sejumlah 17 klaim dengan rician 15 klaim diterima, satu klaim ditolak dan satu klaim masih dalam proses.</span></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">&nbsp;Sumber : </span></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Laporan Pelaksanaan Asuransi Nelayan di Kabupaten Bengkalis oleh Marhalim, S.Pi, M.Si ( Kepala Seksi Produksi Perikanan Tangkap, Dinas Kelautan dan Perikanan Kabupaten Bengkalis)</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2019-02-19 04:22:52', 23, 'Umum', 15, 'a639c12c17bea514b892ea8a474705c7.jpg', 36, 'ovi', 0, 'pelaksanaan-asuransi-nelayan-di-kabupaten-bengkalis', 'publish'),
(44, 'Sebanyak 5.897 Nelayan Di Kabupaten Bengkalis dapat Premi Asuransi dari Pemerintah Pusat', '<p>Dalam tiga tahun terakhir ini nelayan di Negeri Junjungan Kabupaten Bengkalis mendapat sebanyak 5.897 nelayan mendapatkan bantuan premi asuransi dari Kementerian Kelautan Republik Indonesia. Dimana pada tahun 2016 dengan jumlah bantuan premi asuransi yang dibagikan kepada nelayan sebanyak 1.976 polis, kemudian pada tahun 2017 sebanyak 3.238 polis dan pada 2018 sebanyak 683 polis.</p>\r\n\r\n<p>Bantuan premi asuransi nelayan ini bertujuan untuk memberikan perlindungan kepada nelayan di Kabupaten Bengkalis dalam melakukan aktifitas pekerjaan sehari-hari&nbsp; sebagai nelayan. Bantuan Premi Asuransi Nelayan atau&nbsp;BPAN memberikan Santunan kepada Nelayan atau Ahli Warisnya untuk hal seperti Meninggal Dunia akibat Kecelakaan sewaktu melakukan penangkapan ikan,&nbsp;Meninggal Dunia selain akibat Kecelakaan sewaktu melakukan penangkapan ikan,&nbsp;Cacat Tetap akibat Kecelakaan, Biaya Pengobatan akibat Kecelakaan termasuk di dalamnya risiko hilang sehingga dinyatakan meninggal dunia (penetapan oleh Pengadilan).Sejak asuransi ini diserahkan nelayan Kabupaten Bengkalis, jumlah klaim yang sudah diserahkan kepada peserta asuransi dan ahli waris sebanyak dengan 28 klaim. Secara rinci&nbsp; tahun 2017 sebanyak&nbsp; 13 klaim dan tahun 2018 sejumlah 15 klaim&nbsp; dengan jumlah total dana&nbsp; klaim yang serahkan sebanyak&nbsp; Rp 2.680.000.000,-</p>\r\n\r\n<p>Untuk premi asuransi tahun 2018 sebanyak 689 polis masa berlaku sampai dengan 2019, secara simbolis diserahkan Kepala Staf Kepresidenan Jend (Purn) Moeldoko, disela-sela Kunjungan Silaturahmi dan Temu Wicaranya di Kabupaten Bengkalis tepatnya Desa Sungai Nibung Kecamatan Siak Kecil.&nbsp;Penyerahan simbolis diterima oleh 10 orang nelayan dari Kecamatan Siak Kecil &nbsp;terdiri 4 nelayan dari Desa Sungai Nibung dan 6 nelayan dari Desa Muara Dua.</p>\r\n', '2019-02-22 23:23:25', 23, 'Umum', 24, 'a4c9af06ca79ca6389747f9cf0d3180c.jpg', 36, 'ovi', 0, 'sebanyak-5.897-nelayan-di-kabupaten-bengkalis-dapat-premi-asuransi-dari-pemerintah-pusat', 'publish'),
(45, 'Rapat Kerja Dinas Kelautan dan Perikanan Kabupaten Bengkalis', '<p><strong>Bengkalis</strong> - Dinas Kelautan dan Perikanan Kabupaten Bengkalis mengadakan Rapat Kerja (RAKER) Pelaksanaan Program dan Kegiatan Tahun Anggaran 2019 dan Penyusunan Rencana Kerja Tahun 2020-2021 di ruang rapat Dinas Kelautan dan Perikanan Kabupaten Bengkalis. Dalam rapat dihadiri oleh Pejabat Administrator (Sekretaris dan Kepala Bidang) dan Pejabat Pengawas (Kepala Sub Bagian dan Kepala Seksi) di Lingkungan Dinas Kelautan dan Perikanan Kabupaten Bengkalis dan dipimpinan langsung oleh Kepala Dinas.&nbsp;</p>\r\n\r\n<p>Rapat kerja kali ini membahas mengenai pelaksanaan program kegiatan Dinas Kelautan dan Perikanan Kabupaten Bengkalis untuk tahun anggaran 2019. Raker dimulai dengan pengarahan oleh kepala dinas dan dilanjutkan dengan pemaparan oleh masing-masing kepala bidang mengenai pelaksanaan program kegiatan tahun 2019 di bidangnya masing-masing.&nbsp; &nbsp;</p>\r\n\r\n<p>Setelah mendengarkan pemaparan dari masing-masing kepala bidang, rapat dilanjutkan dengan diskusi mengenai permasalah atau hambatan yang dihadapi dalam pelaksanaan program kegiatan tahun 2019. Dalam diskusi ini, kepala dinas berpesan kepada kepala bidang dan kepala seksi agar melaksanakan program dan kegiatan yang ada sebaik mungkin serta mengikuti peraturan yang berlaku.&nbsp;</p>\r\n\r\n<p>Setelah membahas pelaksanaan program kegiatan tahun 2019, rapat dilanjutkan dengan membahas mengenai rencana kerja Dinas Kelautan dan Perikanan Kabupaten Bengkalis untuk tahun 2020 - 2021. Untuk ini Kepala Dinas Kelautan dan Perikanan berpesan agar rencana kerja tahun 2020 - 2021 disesuaikan dengan Visi Misi Bupati Bengkalis, visi misi Dinas Kelautan dan Perikanan Kabupaten Bengkalis serta&nbsp;usulan masyarakat melalui musrenbang kecamatan yang telah dilakukan sebelumnya.&nbsp;</p>\r\n', '2019-02-26 10:14:41', 23, 'Umum', 18, '6680b8fb364f02463c97e75029dfb5ae.jpg', 36, 'ovi', 0, 'rapat-kerja-dinas-kelautan-dan-perikanan-kabupaten-bengkalis', 'publish'),
(46, 'Kadis Kelautan dan Perikanan : Laksanakan Program Kegiatan Sesuai Dengan Peraturan Perundang-undanga', '<p>Bengkalis- Kepala Dinas Kelautan dan Perikanan Kabupaten Bengkalis menyampaikan hal tersebut dalam sambutannya pada saat pembukaan acara Rapat Koordinasi dan Sinkronisasi Pengelolaan Program Kerja Lingkup Dinas Kelautan dan Perikanan Kabupaten Bengkalis Tahun Anggaran 2019 di ruang rapat Dinas Kelautan dan Perikanan Kabupaten Bengkalis pada tanggal 27 Februari 2019.&nbsp;</p>\r\n\r\n<p>Dalam sambutannya, Kadis Kelautan berpesan agar para peserta rapat dapat memanfaatkan rapat koordinas dan sinkronisasi ini sebagai ajang bertukar pikiran dalam rangkan meningkatkan kesejahteraan masyarakat kelautan dan perikanan yairu nelayan dan petani ikan.&nbsp;</p>\r\n\r\n<p>Rapat Koordinasi dan Sinkronisasi ini merupakan kegiatan rutin yang dilaksanakan setiap tahunnya oleh Dinas Kelautan dan Perikanan Kabupaten Bengkalis dalam rangka menampung aspirasi dari Unit Pelaksana Tekhnis (UPT) yang berada dilingkup Dinas Kelautan dan Perikanan.</p>\r\n\r\n<p>Selain kepala UPT beserta stafnya, rapat ini dihari oleh para pejabat administrator dan pejabat&nbsp; pengawas dilingkungan Dinas Kelautan dan Perikanan Kabupaten Bengkalis. Sesuai jadwal tentatif, setelah pembukaan oleh Kepala Dinas dilanjutkan dengan pemaparan mengenail pelaksanakan program kegiatan oleh masing-masing Kepala Bidang kemudian dilanjutkan penyampaian usulan kegiatan untuk tahun 2020.</p>\r\n', '2019-02-28 03:30:31', 23, 'Umum', 22, 'c8a053530cd4766e0ca09235e129a8b6.JPG', 36, 'ovi', 0, 'kadis-kelautan-dan-perikanan-:-laksanakan-program-kegiatan-sesuai-dengan-peraturan-perundang-undangan', 'publish'),
(47, 'Sekretaris : Usulkan kegiatan 2020 Sesuai Kebutuhan ', '<p>Bengkalis - Dalam sambutannya pada saat penutupan Rapat Koordinasi dan Sinkronisasi Program Kegiatan Lingkup Dinas Kelautan dan Perikanan Kabupaten Bengkalis, Sekretaris Dislutkan (Dra. AGUSNELLY S., M.Si) berpesan kepada para kepala UPT dan Kepala Seksi agar dalam menyampaikan usulan kegiatan untuk tahun anggaran 2020 berdasarkan kebutuhan bukan keinginan. Hal ini dimaksudkan agar program dan kegiatan yang diusulkan nantinya dapat berjalan dengan baik.&nbsp;</p>\r\n\r\n<p>Rapat Koordinasi dan Sinkronisasi Program Kegiatan Lingkup Dinas Kelautan dan Perikanan tahun anggaran 2019 ini telah dilaksanakan semenjal tanggal 27 Februari 2019 yang diikuti oleh seluruh UPT, Pejabata Administrator, dan Pejabat Pengawas dilingkungan dislutkan Kabupaten Bengkalis. Dalam rapat ini telah diperoleh informasi berupa capaian kerja yang telah dilakukan oleh UPT dan bidang selama tahun 2018, kendala yang dihadapi (permalahan dilapangan) serta usulan kegiatan untuk tahun 2020.&nbsp;</p>\r\n\r\n<p>Berdasarkan informasi yang diperoleh, untuk usulan kegiatan 2020 pada Dinas Kelautan dan Perikanan Kabupaten Bengkalis akan dibahas pada forum SKPD yang rencananya akan dilaksanakan pada hari senin tanggal 4 maret 2019 mendatang.&nbsp;</p>\r\n', '2019-03-01 10:19:13', 23, 'Umum', 26, 'da95a40fbdd5a51ea8a7967407e04883.jpg', 36, 'ovi', 0, 'sekretaris-:-usulkan-kegiatan-2020-sesuai-kebutuhan', 'publish'),
(48, 'Terdapat 64 Pelaku Usaha Tambak Udang Vanamei di Kabupaten Bengkalis', '<p>Bengkalis- Hal ini dikatakan oleh Kepala Dinas Kelautan dan Perikanan Kabupaten Bengkalis (Ir. Herliawan, M.Si) pada pembukaan Sosialisasi Tentang Pengelolaan Perizinan Perikanan Budidaya Khususnya Tambak Udang Vannamei (Litopaeneus Vanname) di aula Kantor Dinas Kelautan dan Perikanan Kabupaten Bengkalis pada tanggal 21 Maret 2019.&nbsp;</p>\r\n\r\n<p>Acara sosialisasi ini diikuti oleh para pelaku usaha tambak udang vanamei dari 4 kecamatan yang ada di Kabupaten Bengkalis yaitu Kecamatan Bantan, Kecamatan Bengkalis, Kecamatan Bukit Batu dan Kecamatan Bandar Laksamana. Sosialisasi ini bertujuan agar para pelaku usaha perikanan khusus para petambak udang vanamei mengetahui tentang betapa penting pengurusan izin untuk usaha tambak mereka. Selain itu, mereka juga dibekali dengan tatacara pengurusan izin usaha perikanan khususnya usaha budidaya perikanan.&nbsp;</p>\r\n\r\n<p>Adapun selain dari Dinas Kelautan dan Perikanan Kabupaten Bengkalis, juga hadir sebagai narasumber pada sosialisasi ini dari Dinas Lingkungan Hidup Propinsi Riau dan dari DInas Penanaman Modal dan PTSP Kabupaten Bengkalis.</p>\r\n', '2019-03-21 04:06:05', 20, 'Usaha Perikanan', 4, 'f1f0f25c778644bb2ace67dc6f33e2a6.JPG', 36, 'ovi', 0, 'terdapat-64-pelaku-usaha-tambak-udang-vanamei-di-kabupaten-bengkalis', 'publish'),
(50, '85 orang Pelaku Usaha Perikanan Di Kabupaten Bengkalis Menerima Kartu KUSUKA', '<p>Bengkalis - Hal ini disampaikan oleh Sekretaris Daerah Kabupaten Bengkalis (H. BUSTAMI HY, SH,MM) dalam sambutannya pada acara Sosialisasi Kartu Pelaku Usaha Bidang Kelautand dan Perikanan (KUSUKA) di aula Dinas Kelautan dan Perikanan Kabupaten Bengkalis pada tanggal 18 Maret 2019.&nbsp;</p>\r\n\r\n<p>Kartu KUSUKA merupakan kartu yang digunakan sebagai identitas tunggal pelaku usaha kelautan dan perikanan di Indonesia. Dengan Peraturan Menteri Kelautan dan Perikanan No 39/2017 sebagai landasan hukum pelaksanaan kegiatan Kartu KUSUKA baik di Pusat maupun di daerah, Kartu KUSUKA berfungsi sebagai: Identitas profesi Pelaku Usaha di bidang Kelautan dan Perikanan; basis data untuk memudahkan perlindungan dan pemberdayaan, pelayanan, dan pembinaan kepada Pelaku Usaha di bidang Kelautan dan Perikanan; dan sarana untuk pemantauan dan evaluasi pelaksanaan program Kementerian Kelautan dan Perikanan Republik Indonesia.&nbsp;</p>\r\n\r\n<p>Ruang lingkup Pelaku Usaha Kelautan dan Perikanan yang berhak mendapatkan kartu KUSUKA berbentuk orang perseorangan atau korporasi yang meliputi:</p>\r\n\r\n<ol>\r\n	<li>Nelayan terdiri atas Nelayan kecil, Nelayan tradisional, Nelayan buruh, dan Nelayan pemilik;</li>\r\n	<li>Pembudi Daya Ikan terdiri dari Pembudi Daya Ikan kecil, penggarap lahan, dan pemilik lahan;</li>\r\n	<li>Petambak Garam terdiri atas Petambak Garam kecil, penggarap tambak garam, dan pemilik tambak garam;</li>\r\n	<li>Pengolah Ikan;</li>\r\n	<li>Pemasar Perikanan; dan</li>\r\n	<li>Penyedia Jasa Pengiriman Produk Kelautan dan Perikanan</li>\r\n</ol>\r\n\r\n<p>Di Kabupaten Bengkalis sendiri, sebanyak 7 ribuan pelaku usaha kelautan dan perikanan telah telah didaftarkan untuk mendapatkan Kartu KUSUKA, namun sampai saat baru 85 orang pelaku usaha yang telah mendapatkan Kartu KUSUKA seperti yang dikatakan oleh Sekretaris Daerah Kabupaten Bengkalis.&nbsp;</p>\r\n', '2019-03-21 04:28:12', 20, 'Usaha Perikanan', 5, '4602b20ffc9f47dfbba66e613cae6559.jpg', 36, 'ovi', 0, '85-orang-pelaku-usaha-perikanan-di-kabupaten-bengkalis-menerima-kartu-kusuka', 'publish'),
(51, '40 orang Nelayan Di Kecamatan Bantan Mengikuti Sosialisasi Perizinan Perikanan Tangkap', '<p>Bengkalis - Pada tanggal 23 April 2019, Dinas Kelautan dan Perikanan Kabupaten Bengkalis mengadakan Sosialisasi tentang Perizinan Perikanan Tangkap Kecamatan Bantan di Aula Dinas Kelautan dan Perikanan Kabupaten Bengkalis. Sosialisasi ini diikuti oleh nelayan di Kecamatan Bantan terutama nelayan yang memiliki kapal di atas 5 GT sampai dengan 30 GT. Adapun yang menjadi narasumber dari Dinas Kelautan dan Perikanan Propinsi Riau, Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu (DPMPTSP) Propinsi Riau.&nbsp;</p>\r\n\r\n<p>Dalam sambutannya, Kepala Dinas Kelautan dan Perikanan Kabupaten menyampaikan bahwa berdasarkan Undang-undang Nomor 23 Tahun 2014, untuk penerbitan izin pelaku usaha perikanan tangkap untuk kapal diatas 5 GT sampai 30 GT merupakan kewenangan pemerintah propinsi. Sedangkan untuk kewenangan kabupaten hanya sebatas penerbitan Bukti Pencatatan Kapal Perikanan (BPKP) untuk kapal 5 GT kebawah. BPKP ini merupakan pengganti izin berdasarkan permen KP nomor 32 tahun 2012.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2019-04-23 05:27:11', 20, 'Usaha Perikanan', 8, '922afef3183f70ca22bc4b8ce9b3040a.JPG', 36, 'ovi', 0, '40-orang-nelayan-di-kecamatan-bantan-mengikuti-sosialisasi-perizinan-perikanan-tangkap', 'publish'),
(52, 'Sambutan Ramadhan Dinas Kelautan dan Perikanan Kab. Bengkalis, adakan syukuran', '<p>Dalam rangka menyambut bulan suci Ramadhan 1440 H yang tinggal beberapa hari lagi, Dinas Kelautan dan Perikanan Kabupaten Bengkalis mengadakan syukuran yang berlangsung di aula kantor Dislutkan Bengkalis pada hari selasa tanggal 30 April 2019. Acara syukuran ini merupakan ajang silautrahmi antara pejabat eselon, karyawan karyawati dan darma wanita dilingkupi DInas Kelautan dan Perikanan Kabupaten Bengkalis, begitu yang disampaikan oleh Dra. Abdul Kadir M.Si yang mewakili kepala dinas dalam memberikan sambutan.&nbsp;Selanjutnya, acara syukuran ini juga diisi dengan tausyah yang disampaikan oleh Ustadz. Ilusman Lc. Dalam tausiahnya, Ustadz Ilusman Lc menyampaikan tentang keutamaan sedekah terutama di bulan ramadhan.&nbsp;</p>\r\n\r\n<p>Setelah mendengarkan tausiah, acara dilanjutkan dengan salam-salaman antara pejabat eselon, karyawan karyawati dan darma wanita dilingkungan dinas kelautan dan perikanan kabupaten Bengkalis kemudian dilanjutan dengan makan siang bersama.&nbsp;</p>\r\n', '2019-04-30 05:55:42', 23, 'Umum', 7, '6569ece4f797b4ff27b91be7849771c2.JPG', 2, 'hideni', 0, 'sambutan-ramadhan-dinas-kelautan-dan-perikanan-kab.-bengkalis,-adakan-syukuran', 'publish'),
(53, 'Tingkatkan Pengetahuan dan Wawasan Masyarakat Perikanan Dislutkan Bengkalis, Gelar Pelatihan Tekhnol', '<p>Mandau - Untuk meningkatkan pengetahuan dan wawasan masyarakat perikanan di Kabupaten Bengkalis, Dinas Kelautan dan Perikanan (dislutkan) Kabupaten Bengkalis menggelar tekhnologi perikanan budidaya sistim bioflok yang dilaksanakan di Duri, Kecamatan Mandau.&nbsp;</p>\r\n\r\n<p>&quot;Dalam rangka melaksanakan tugas dan fungsi Dinas Kelautan dan Perikanan Kabupaten Bengkalis, beberapa kegiatan telah direncanakan dan dilaksanakan. Salah satu diantaranya adalah pengembangan potensi sumberdaya manusia melalui peningkatan pengetahuan&nbsp; pemanfaatan tekhnologi budidaya perikanan seperti kegiatan pelatihan bioflok&quot; ungkap Kepala DIslutkan Bengkalis Herliawan.&nbsp;</p>\r\n\r\n<p>Herliawan menambahkan, kegiatan pelatihan tekhnologi budidaya perikanan sistem bioflok ini bertujuan untuk pengetahuan dan wawasan masyarakat perikanan dibidang budidaya ikan dan memberikan pengetahuan inovasi-inovasi terbaru tentang pemanfaatan tekhnologi budidaya perikanan serta untuk meningkatkan pendapatan ekonomi masyarakat perikanan.&nbsp;</p>\r\n\r\n<p>Pelatihan ini dilaksanakan dengan dua metode. Metode pertama adalah penyampaikan materi oleh narasumber yang didatangkan dari&nbsp; Fakultas Perikanan dan Ilmu Kelautan Universitas Riau serta narasumber dari KUB Sejiwa Membangun Kecamatan Mandau mengenai sistim bioflok dan penerapannya pada budidaya ikan air tawar.&nbsp;</p>\r\n\r\n<p>Selanjutnya dilakukan metode kedua yaitu praktek pembuatan kolam ikan dengan sistim bioflok dilanjutkan dengan membuat probiotik yang berfungsi menumbuhkan bakteri yang dibutuhkan untuk budidaya ikan lele dengan sistem bioflok.&nbsp;</p>\r\n\r\n<p>Pelatihan yang dilaksanakan selama dua hari ini diikuti 20 orang masyarakat perikanan dari kecamatan Mandau. Kadislutkan Bengkalis berharap dengan adanya pelatihan ini, masyarakat perikanan kabupaten Bengkalis khususnya kecamatan Mandau mampu menerapkan sistim bioflok dalam rangka meningkatkan produksi perikanan dan kesejahteraan pelaku usaha perikanan.&nbsp;</p>\r\n', '2019-05-07 09:19:00', 22, 'Pemberdayaan Perikanan', 11, '8f8196b4c9352de9c310b8ac365e2cdc.jpg', 2, 'hideni', 0, 'tingkatkan-pengetahuan-dan-wawasan-masyarakat-perikanan-dislutkan-bengkalis,-gelar-pelatihan-tekhnol', 'publish'),
(55, 'Tingkatkan Pendapatan dan Kesejahteraan Pelaku Usaha Perikanan, Ini Upaya Yang Dilakukan Dislutkan B', '<p>Bengkalis-Dinas Kelautan dan Perikanan Kabupaten (dislutkan) Kabupaten Bengkalis menggelar pertemuan kewirausahaan bagi pelaku usaha perikanan di Pantai Marina Hotel Bengkalis.&nbsp;</p>\r\n\r\n<p>Kepala DInas Kelautan dan Perikanan Kabupaten Bengkalis (Herliawan) mengungkapkan bahwa pada intinya kemitraan dimaknai sebagai dua institusi bisnis menyatukan keunggulan masing-masing untuk memperoleh hasil yang maksimal. Menurut Herliawan, peran Usaha Mikro, Kecil dan Menengah (UMKM) dianggap penting dalam meningkatkan perekonomian suatu daerah. Untuk itu perlu upaya secara terus menerus dalam memberdayakan mereka. &quot;UMKM harus mampu membangun mitra kerja dengan para pengusaha dengan prinsip saling menguntungkan&quot; jelasnya.&nbsp;</p>\r\n\r\n<p>Herliawan berharap dengan adanya kegiatan ini dapat menumbuhkan pola fikir pelaku usaha perikanan dan juga dapat meningkatkan jenis-jenis usaha dalam upaya untuk menghadapi peningkatan&nbsp; daya saing terhadap pengembangan produk hasil perikanan.&nbsp;</p>\r\n\r\n<p>Kegiatan ini diikuti oleh 60 peserta yang merupakan pelaku usaha perikanan di Kabupaten Bengkalis yang terdiri dari Kelompok Pengelolaan Hasil Perikanan (POKLAHSAR) Kecamatan Bantan dan Bengkalis, pengurus Unit Pelayanan Pengembangan (UPP) Perikanan Kabupaten Bengkalis, Pembudidaya Ikan, Kelompok Usaha Bersama (KUB) Perikanan Tangkap dan Konsultan Keuangan Mitra Bank (KKMB) Kabupaten Bengkalis. Dalam kegiatan ini dihadirkan narasumber dari Fakultas Perikanan dan Ilmu Kelautan Universitas Riau, KADIN Bengkalis serta dari Bank RIau Kepri Cabang Bengkalis.&nbsp;&nbsp;</p>\r\n', '2019-05-08 05:12:59', 22, 'Pemberdayaan Perikanan', 2, '8117dbcd332fb9db33577a5178512066.jpg', 37, 'ovianto', 0, 'tingkatkan-pendapatan-dan-kesejahteraan-pelaku-usaha-perikanan,-ini-upaya-yang-dilakukan-dislutkan-b', 'publish'),
(56, 'Hari ini, Dinas Kelautan dan Perikanan Kabupaten Bengkalis Lakukan Pemotongan Hewan Kurban', '<p>Bengkalis, Dalam rangka menyambut hari raya Idul Adha 1440 H, Dinas Kelautan dan Perikanan Kabupaten Bengkalis melakukan pemotongan hewan kurban pada hari ini Senin tanggal 12 Agustus 2019 bertempat di Kantor Dinas Kelautan dan Perikanan Kabupaten Bengkalis.&nbsp;</p>\r\n\r\n<p>Pada tahun ini, karyawan - karyawati Dinas Kelautan dan Perikanan Kabupaten Bengkalis memiliki hewan kurban sebanyak 3 ekor lembu, dimana 1 ekor lembu telah diserahkan kepada Pemerintah Kabupaten Bengkalis melalui Sekretariat Daerah. Seekor lembu lagi diserahkan kepada masyarakat desa Senderak dan seekor lagi dilakukan pemotongan pada hari ini, begitu ungkap Herliawan (kepala Dinas Kelautan dan Perikanan Kabupaten Bengkalis).&nbsp;</p>\r\n\r\n<p>Masih kata Herliawan, pemotongan hewan kurban ini nantinya diakhiri dengan acara makan bersama Karyawan karyawati, Dharma wanita dan keluarga besar Dinas Kelautan dan Perikanan Kabupaten Bengkalis.</p>\r\n', '2019-08-12 01:10:28', 23, 'Umum', 1, '1be2fc43ecaa0c904ccdcbfb65d9b797.jpg', 37, 'ovianto', 0, 'hari-ini,-dinas-kelautan-dan-perikanan-kabupaten-bengkalis-lakukan-pemotongan-hewan-kurban', 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tupoksi`
--

CREATE TABLE `tbl_tupoksi` (
  `tupoksi_id` int(11) NOT NULL,
  `tupoksi_dinas` text NOT NULL,
  `tupoksi_upt` text NOT NULL,
  `tupoksi_bid` text NOT NULL,
  `tupoksi_tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `tupoksi_views` int(11) NOT NULL,
  `tupoksi_pengguna_id` int(11) NOT NULL,
  `tulisan_author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tupoksi`
--

INSERT INTO `tbl_tupoksi` (`tupoksi_id`, `tupoksi_dinas`, `tupoksi_upt`, `tupoksi_bid`, `tupoksi_tanggal`, `tupoksi_views`, `tupoksi_pengguna_id`, `tulisan_author`) VALUES
(1, '<h2 style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Tugas Pokok dan Fungsi Dinas Kelautan dan Perikanan Kabupaten Bengkalis tahun 2016-2021 :</strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Sesuai dengan Peraturan Bupati Nomor 55 Tahun 2016, maka Tugas Pokok dan Fungsi Dinas Kelautan dan Perikanan Kabupaten Bengkalis adalah sebagai berikut :</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">a. T u g a s<br />\r\nDinas Kelautan dan Perikanan mempunyai tugas melaksanakan kewenangan Otonomi Daerah, membantu Kepala Daerah dalam menyelenggarakan sebagian tugas umum pemerintahan dan pembangunan di bidang kelautan dan perikanan.</span></span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">b. F u n g s i<br />\r\nUntuk melaksanakan tugas-tugas tersebut di atas, Dinas Kelautan dan Perikanan Kabupaten Bengkalis mempunyai fungsi sebagai berikut:</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">1. Penyelenggaraan Perumusan bahan kebijakan managerial dan teknis dibidang sekretariat, bidang budidaya perikanan, bidang pemberdayaan perikanan , dan bidang pelayanan usaha peikanan.<br />\r\n2. Penyelenggaraan koordinasi dan fasilitasi dibidang sekretariat, bidang budidaya perikanan, bidang pemberdayaan perikanan , dan bidang pelayanan usaha peikanan<br />\r\n3. Penyelenggaraan pemantauan dan evaluasi dibidang sekretariat, bidang budidaya perikanan, bidang pemberdayaan perikanan , dan bidang pelayanan usaha peikanan<br />\r\n4. Pembinaan dan penyuluhan kepada masyarakat nelayan/petani ikan.<br />\r\n5. Pembinaan terhadap Unit Pelaksana Teknis Dinasdalam lingkup tugasnya.</span></span></p>\r\n', '', '<p style=\"text-align:center\"><strong>TUGAS POKOK DAN FUNGSI SERTA URAIAN TUGAS PADA DINAS KELAUTAN DAN PERIKANAN KABUPATEN BENGKALIS TAHUN 2016-2021</strong></p>\r\n\r\n<h2 style=\"text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&nbsp;Uraian Tugas</span></span></strong></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Berdasarkan Peraturan Bupati Bengkalis Nomor 55 Tahun 2016, tentang Tugas Pokok dan Fungsi serta uraian tugas pada Dinas Kelautan dan Perikanan Kabupaten Bengkalis adalah sebagai berikut :</span></span><br />\r\n&nbsp;</p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>A. Uraian Tugas Bagian Sekretariat</strong><br />\r\nSekretaris mempunyai tugas memimpin, mengkordinasikan dan mengendalikan tugas-tugas dibidang pengelolaan, pelayanan kesekretariatan yang meliputi pengkordinasian, perencanaan, penyusunan program, umum dan kepegawaian, pengelolaan keuangan, perlengkapan.</span></span><br />\r\n&nbsp;</h3>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>B. Uraian Tugas Bidang Pemberdayaan Perikanan</strong><br />\r\nBidang Pemberdayaan Perikananmempunyai tugas pokok melaksanakan penyusunan dan pelaksanaan kebijakan, pemberian pendamping serta pemantauan dan evaluasi dibidang pemberdayaan perikanan;</span></span><br />\r\n&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>C. Uraian Tugas Bidang Pelayanan Usaha Perikanan</strong><br />\r\nBidang Pelayanan Usaha Perikanan mempunyai tugas melaksanakan penyusunan dan pelaksanaan kebijakan, pemberian pendamping serta pemantauan dan evaluasi dibidang pelayanan usaha perikanan ;</span></span><br />\r\n&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>D. Uraian Tugas Bidang Budidaya Perikanan</strong><br />\r\nBidang Budidaya Perikanan mempunyai tugas pokok pelaksanakan pengkoordinasian dibidang budidaya perikanan yang meliputi sarana prasarana budidaya, kesehatan ikan dan lingkungan, serta pembenihan dan produksi budidaya, sesuai dengan ketentuan yang berlaku;</span></span></h2>\r\n', '2018-12-11 22:47:22', 0, 35, 'AKBAR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_data`
--
ALTER TABLE `tbl_data`
  ADD PRIMARY KEY (`data_id`),
  ADD KEY `tulisan_kategori_id` (`data_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`data_pengguna_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_kategoridata`
--
ALTER TABLE `tbl_kategoridata`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  ADD PRIMARY KEY (`kontak_id`);

--
-- Indexes for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indexes for table `tbl_pelayanan`
--
ALTER TABLE `tbl_pelayanan`
  ADD PRIMARY KEY (`pelayanan_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  ADD PRIMARY KEY (`profil_id`);

--
-- Indexes for table `tbl_proker`
--
ALTER TABLE `tbl_proker`
  ADD PRIMARY KEY (`proker_id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tbl_tampilan`
--
ALTER TABLE `tbl_tampilan`
  ADD PRIMARY KEY (`id_tampilan`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- Indexes for table `tbl_tupoksi`
--
ALTER TABLE `tbl_tupoksi`
  ADD PRIMARY KEY (`tupoksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_data`
--
ALTER TABLE `tbl_data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_kategoridata`
--
ALTER TABLE `tbl_kategoridata`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `kontak_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pelayanan`
--
ALTER TABLE `tbl_pelayanan`
  MODIFY `pelayanan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1818;

--
-- AUTO_INCREMENT for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  MODIFY `profil_id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_proker`
--
ALTER TABLE `tbl_proker`
  MODIFY `proker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_tampilan`
--
ALTER TABLE `tbl_tampilan`
  MODIFY `id_tampilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_tupoksi`
--
ALTER TABLE `tbl_tupoksi`
  MODIFY `tupoksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
