-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2023 at 10:03 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mabp4972_zakat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donatur`
--

CREATE TABLE `tbl_donatur` (
  `id_donatur` int(11) NOT NULL,
  `nama_donatur` varchar(30) DEFAULT NULL,
  `alamat_donatur` int(11) DEFAULT NULL,
  `alamat_lainnya` varchar(255) DEFAULT NULL,
  `nominal` varchar(20) DEFAULT NULL,
  `petugas_penerima` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `validation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_donatur`
--

INSERT INTO `tbl_donatur` (`id_donatur`, `nama_donatur`, `alamat_donatur`, `alamat_lainnya`, `nominal`, `petugas_penerima`, `status`, `validation`) VALUES
(8, 'H Sukani ', 6, NULL, '300000', 5, 1, '2022-05-01'),
(11, 'Bapak Yoyok', 4, '', '150000', 17, 1, '2022-04-28'),
(12, 'UD. Accu', 3, NULL, '300000', 16, 1, '2022-04-30'),
(13, 'Hj. Hamdanah', 3, NULL, '300000', 16, 1, '2022-04-30'),
(14, 'H. Sihadi', 3, NULL, '100000', 16, 1, '2022-04-30'),
(15, 'H. Khori', 3, NULL, '150000', 16, 1, '2022-04-30'),
(16, 'Ibu aisyah', 3, NULL, '200000', 16, 1, '2022-04-30'),
(17, 'SPBU', 3, NULL, '300000', 16, 1, '2022-04-30'),
(18, 'UD.Noval', 3, NULL, '50000', 16, 1, '2022-04-30'),
(19, 'UD. Ketok magic', 3, NULL, '300000', 16, 1, '2022-04-30'),
(20, 'Ibu sadan', 3, '', '100000', 16, 1, '2022-04-30'),
(21, 'Bapak H. Joko', 4, NULL, '200000', 17, 1, '2022-04-30'),
(22, 'Bpk mulyadi', 4, '', '100000', 17, 1, '2022-04-30'),
(23, 'gangsar motor', 2, '', '500000', 15, 1, '2022-04-30'),
(24, 'bapak setiawan', 2, '', '250000', 15, 1, '2022-05-01'),
(25, 'bapak artono', 2, '', '150000', 15, 1, '2022-05-01'),
(26, 'bapak muhammad ma\'mun', 2, '', '400000', 15, 1, '2022-05-01'),
(27, 'bapak sadali', 2, '', '300000', 15, 1, '2022-05-01'),
(28, 'Bpk. Rudi Setiawan', 4, '', '100000', 17, 1, '2022-04-30'),
(32, 'Sumarlan', 1, '', '200000', 3, 1, '2022-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_akses`
--

CREATE TABLE `tbl_master_akses` (
  `id_akses` int(255) NOT NULL,
  `nama_akses` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_master_akses`
--

INSERT INTO `tbl_master_akses` (`id_akses`, `nama_akses`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'Sekretaris'),
(4, 'Bendahara'),
(5, 'Petugas'),
(6, 'User'),
(7, 'Koordinator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_alamat`
--

CREATE TABLE `tbl_master_alamat` (
  `id_master_alamat` int(11) NOT NULL,
  `nama_master_alamat` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_master_alamat`
--

INSERT INTO `tbl_master_alamat` (`id_master_alamat`, `nama_master_alamat`) VALUES
(1, 'RT 01'),
(2, 'RT 02'),
(3, 'RT 03'),
(4, 'RT 18'),
(5, 'RT 19'),
(6, 'RT 20'),
(7, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_jabatan`
--

CREATE TABLE `tbl_master_jabatan` (
  `id_master_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_master_jabatan`
--

INSERT INTO `tbl_master_jabatan` (`id_master_jabatan`, `nama_jabatan`) VALUES
(1, 'Ketua'),
(2, 'Sekretaris'),
(3, 'Petugas'),
(4, 'Bendahara'),
(5, 'Koordinator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_kwitansi`
--

CREATE TABLE `tbl_master_kwitansi` (
  `id_kwitansi` int(11) NOT NULL,
  `nama_organisasi` varchar(20) DEFAULT NULL,
  `nama_lembaga` varchar(20) DEFAULT NULL,
  `logo_organisasi` text DEFAULT NULL,
  `pembayaran` varchar(20) DEFAULT NULL,
  `kota_kwitansi` varchar(255) DEFAULT NULL,
  `alamat_organisasi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_master_kwitansi`
--

INSERT INTO `tbl_master_kwitansi` (`id_kwitansi`, `nama_organisasi`, `nama_lembaga`, `logo_organisasi`, `pembayaran`, `kota_kwitansi`, `alamat_organisasi`) VALUES
(1, 'Remaja Masjid Nurul ', 'Masjid Besar Nurul H', 'logo_1587121453.png', 'Maal, Partisipasi So', 'Janti ', 'Jl. Brigjen Katamso No.123 Janti, Waru - Sidoarjo');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_laporan`
--

CREATE TABLE `tbl_master_laporan` (
  `id_master_lap` int(11) NOT NULL,
  `jabataan_lap` varchar(20) DEFAULT NULL,
  `nama_pemilik_jabatan` varchar(20) DEFAULT NULL,
  `masehi` varchar(5) DEFAULT NULL,
  `hijriyah` varchar(5) DEFAULT NULL,
  `jabatan` varchar(10) DEFAULT NULL,
  `nama_sekretaris` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_lokasi`
--

CREATE TABLE `tbl_master_lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(20) DEFAULT NULL,
  `alamat_lokasi` text DEFAULT NULL,
  `kontak_lokasi` varchar(30) DEFAULT NULL,
  `foto_lokasi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_maal`
--

CREATE TABLE `tbl_master_maal` (
  `id_master_maal` int(11) NOT NULL,
  `nama_maal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_master_maal`
--

INSERT INTO `tbl_master_maal` (`id_master_maal`, `nama_maal`) VALUES
(1, 'Maal'),
(2, 'Partisipasi Sosial'),
(3, 'Infaq / Shodaqo'),
(4, 'Fidyah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_penerima`
--

CREATE TABLE `tbl_master_penerima` (
  `id_ket` int(11) NOT NULL,
  `nama_ket` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_master_penerima`
--

INSERT INTO `tbl_master_penerima` (`id_ket`, `nama_ket`) VALUES
(1, 'Fakir'),
(2, 'Miskin'),
(3, 'Sabilillah'),
(4, 'Khusus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penerima`
--

CREATE TABLE `tbl_penerima` (
  `id_penerima` int(11) NOT NULL,
  `seq_no` int(11) NOT NULL,
  `nama_penerima` varchar(30) DEFAULT NULL,
  `ket_penerima` int(11) DEFAULT NULL,
  `koor` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `status_penerima` int(1) DEFAULT 0,
  `validation_data` int(255) DEFAULT 0,
  `date_validation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_penerima`
--

INSERT INTO `tbl_penerima` (`id_penerima`, `seq_no`, `nama_penerima`, `ket_penerima`, `koor`, `status`, `status_penerima`, `validation_data`, `date_validation`) VALUES
(465, 1, 'H. Chamim Rosyidi', 3, 15, 0, 0, 1, '2023-04-21'),
(466, 2, 'Ach. Kamaludin', 2, 15, 0, 0, 1, '2023-04-21'),
(467, 3, 'Fatchul Korib', 1, 15, 0, 0, 1, '2023-04-21'),
(468, 4, 'Abd. Ghofur', 2, 15, 0, 0, 1, '2023-04-21'),
(469, 5, 'Pak Panut', 3, 15, 0, 0, 1, '2023-04-21'),
(470, 6, 'Bpk. Selamet', 2, 15, 0, 0, 1, '2023-04-21'),
(471, 7, 'Ust. Abdillah', 3, 15, 0, 0, 1, '2023-04-21'),
(472, 8, 'Muslim', 1, 15, 0, 0, 1, '2023-04-21'),
(473, 9, 'Samsul Huda', 2, 15, 0, 0, 1, '2023-04-21'),
(474, 10, 'Aksin', 2, 15, 0, 0, 1, '2023-04-21'),
(475, 11, 'Martini (Kost Jainul)', 2, 15, 0, 0, 1, '2023-04-21'),
(476, 12, 'Sua Pijat (Kost Pipit)', 1, 15, 0, 0, 1, '2023-04-21'),
(477, 13, 'Martinus (Kost Pipit)', 1, 15, 0, 0, 1, '2023-04-21'),
(478, 14, 'Komaria', 1, 15, 0, 0, 1, '2023-04-21'),
(479, 15, 'Tinggal', 2, 15, 0, 0, 1, '2023-04-21'),
(480, 16, 'Abd. Karim', 2, 15, 0, 0, 1, '2023-04-21'),
(481, 17, 'Kholil', 2, 15, 0, 0, 1, '2023-04-21'),
(482, 18, 'Ani', 2, 15, 0, 0, 1, '2023-04-21'),
(483, 19, 'Sriama Pecel', 1, 15, 0, 0, 1, '2023-04-21'),
(484, 20, 'harsono / Ning Nur', 1, 15, 0, 0, 1, '2023-04-21'),
(485, 21, 'Nining (Kamid)', 2, 15, 0, 0, 1, '2023-04-21'),
(486, 22, 'Wiwik', 1, 15, 0, 0, 1, '2023-04-21'),
(487, 23, 'Zahro', 3, 15, 0, 0, 1, '2023-04-21'),
(488, 24, 'Sundari', 2, 15, 0, 0, 1, '2023-04-21'),
(489, 25, 'Ust. Rosyid', 3, 15, 0, 0, 1, '2023-04-21'),
(490, 26, 'Agus Salim', 3, 15, 0, 0, 1, '2023-04-21'),
(491, 27, 'M. Isa', 3, 15, 0, 0, 1, '2023-04-21'),
(492, 28, 'Karsimin', 2, 15, 0, 0, 1, '2023-04-21'),
(493, 29, 'Bu Nur Pecel (eval)', 4, 15, 0, 0, 1, '2023-04-21'),
(494, 30, 'Juwariyah', 3, 15, 0, 0, 1, '2023-04-21'),
(495, 31, 'Budhe Yati', 2, 15, 0, 0, 1, '2023-04-21'),
(496, 32, 'Iwan (Kost Nyoman)', 2, 15, 0, 0, 1, '2023-04-21'),
(497, 33, 'Agung', 2, 15, 0, 0, 1, '2023-04-21'),
(498, 34, 'Nur hayafi (Kost Suyono)', 1, 15, 0, 0, 1, '2023-04-21'),
(499, 35, 'Sunaryo / Yoyok', 2, 15, 0, 0, 1, '2023-04-21'),
(500, 36, 'Anas', 1, 15, 0, 0, 1, '2023-04-21'),
(501, 37, 'Jainul', 1, 15, 0, 0, 1, '2023-04-21'),
(502, 38, 'Nonot ', 2, 15, 0, 0, 1, '2023-04-21'),
(503, 1, 'Darmi (Gendok)', 1, 16, 0, 0, 1, '2023-04-21'),
(504, 2, 'Ninik (sebelah Barat RT)', 1, 16, 0, 0, 1, '2023-04-21'),
(505, 3, 'Tutik (Bengkel Bubut)', 1, 16, 0, 0, 1, '2023-04-21'),
(506, 4, 'Rochi', 2, 16, 0, 0, 1, '2023-04-21'),
(507, 5, 'Naimun', 1, 16, 0, 0, 1, '2023-04-21'),
(508, 6, 'Zainuri', 2, 16, 0, 0, 1, '2023-04-21'),
(509, 7, 'Eko', 2, 16, 0, 0, 1, '2023-04-21'),
(510, 8, 'Ibrahim', 1, 16, 0, 0, 1, '2023-04-21'),
(511, 9, 'Ali Fathani', 1, 16, 0, 0, 1, '2023-04-21'),
(512, 10, 'Fathana', 1, 16, 0, 0, 1, '2023-04-21'),
(513, 11, 'Ali Mustaqim', 1, 16, 0, 0, 1, '2023-04-21'),
(514, 12, 'Yulima', 1, 16, 0, 0, 1, '2023-04-21'),
(515, 13, 'Bp Mar ah (lontong mie)', 2, 16, 0, 0, 1, '2023-04-21'),
(516, 14, 'Rokha', 1, 16, 0, 0, 1, '2023-04-21'),
(517, 15, 'Basri', 2, 16, 0, 0, 1, '2023-04-21'),
(518, 16, 'Wati', 1, 16, 0, 0, 1, '2023-04-21'),
(519, 17, 'Mbak is (service)', 2, 16, 0, 0, 1, '2023-04-21'),
(520, 18, 'Lazwar Bakri', 3, 16, 0, 0, 1, '2023-04-21'),
(521, 19, 'bu Siti', 2, 16, 0, 0, 1, '2023-04-21'),
(522, 20, 'Kamto (PS)', 4, 16, 0, 0, 1, '2023-04-21'),
(523, 21, 'Rais (Muadzin)', 2, 16, 0, 0, 1, '2023-04-21'),
(524, 22, 'Kholil', 1, 16, 0, 0, 1, '2023-04-21'),
(525, 23, 'H. Jufri', 3, 16, 0, 0, 1, '2023-04-21'),
(526, 24, 'Malikhah', 3, 16, 0, 0, 1, '2023-04-21'),
(527, 25, 'Zuli Rohman', 2, 16, 0, 0, 1, '2023-04-21'),
(528, 26, 'Dayat (Eval)', 4, 16, 0, 0, 1, '2023-04-21'),
(529, 27, 'Ibu Suparti', 2, 16, 0, 0, 1, '2023-04-21'),
(530, 1, 'Asemah', 1, 18, 0, 0, 1, '2023-04-21'),
(531, 2, 'Ulis (Eval)', 1, 18, 0, 0, 1, '2023-04-21'),
(532, 3, 'Ninik (sebelah Barat RT)', 1, 18, 0, 0, 1, '2023-04-21'),
(533, 4, 'Fitri (Eval)', 2, 18, 0, 0, 1, '2023-04-21'),
(534, 5, 'Nur Azizah', 1, 18, 0, 0, 1, '2023-04-21'),
(535, 6, 'Makrufah', 1, 18, 0, 0, 1, '2023-04-21'),
(536, 7, 'Jayem', 1, 18, 0, 0, 1, '2023-04-21'),
(537, 8, 'Munasri', 2, 18, 0, 0, 1, '2023-04-21'),
(538, 9, 'Ida (ny kholiq)', 1, 18, 0, 0, 1, '2023-04-21'),
(539, 10, 'Gunawan', 2, 18, 0, 0, 1, '2023-04-21'),
(540, 11, 'Endang', 3, 18, 0, 0, 1, '2023-04-21'),
(541, 12, 'Bunda Diyah', 3, 18, 0, 0, 1, '2023-04-21'),
(542, 13, 'Alm. Umar afandi (Mbak Mun)', 1, 18, 0, 0, 1, '2023-04-21'),
(543, 14, 'Sunarsih', 2, 18, 0, 0, 1, '2023-04-21'),
(544, 15, 'Asmalika', 3, 18, 0, 0, 1, '2023-04-21'),
(545, 16, 'Rinda', 3, 18, 0, 0, 1, '2023-04-21'),
(546, 17, 'Hj. Wiwik', 2, 18, 0, 0, 1, '2023-04-21'),
(547, 18, 'Maya', 1, 18, 0, 0, 1, '2023-04-21'),
(548, 19, 'Romlah (eval)', 2, 18, 0, 0, 1, '2023-04-21'),
(549, 20, 'Leny', 1, 18, 0, 0, 1, '2023-04-21'),
(550, 21, 'Sulika', 2, 18, 0, 0, 1, '2023-04-21'),
(551, 22, 'marno', 2, 18, 0, 0, 1, '2023-04-21'),
(552, 23, 'Kris Momblo', 2, 18, 0, 0, 1, '2023-04-21'),
(553, 24, 'Asnawati', 1, 18, 0, 0, 1, '2023-04-21'),
(554, 25, 'Ibu e namira', 2, 18, 0, 0, 1, '2023-04-21'),
(555, 26, 'kardi', 2, 18, 0, 0, 1, '2023-04-21'),
(556, 27, 'Tas An', 2, 18, 0, 0, 1, '2023-04-21'),
(557, 28, 'Taufiq', 2, 18, 0, 0, 1, '2023-04-21'),
(558, 29, 'Pon / The Poci', 1, 18, 0, 0, 1, '2023-04-21'),
(559, 30, 'Ibu Nabsiah', 2, 18, 0, 0, 1, '2023-04-21'),
(560, 1, 'Bu Mujiatun', 1, 17, 0, 0, 1, '2023-04-21'),
(561, 2, 'Bu Ameni', 1, 17, 0, 0, 1, '2023-04-21'),
(562, 3, 'Bu Sumarni', 1, 17, 0, 0, 1, '2023-04-21'),
(563, 4, 'Bu Semi', 2, 17, 0, 0, 1, '2023-04-21'),
(564, 5, 'Bp. Sigit Sugiarto', 1, 17, 0, 0, 1, '2023-04-21'),
(565, 6, 'Bp. Isnu Hadi', 2, 17, 0, 0, 1, '2023-04-21'),
(566, 7, 'Bp. Mat (MJ)', 2, 17, 0, 0, 1, '2023-04-21'),
(567, 8, 'Bp. Imron', 1, 17, 0, 0, 1, '2023-04-21'),
(568, 9, 'Bu Intan', 2, 17, 0, 0, 1, '2023-04-21'),
(569, 10, 'Bp. Saimun', 1, 17, 0, 0, 1, '2023-04-21'),
(570, 11, 'Bp. Paijan', 1, 17, 0, 0, 1, '2023-04-21'),
(571, 12, 'Bu Mia', 2, 17, 0, 0, 1, '2023-04-21'),
(572, 13, 'Ibu Khundoli / Tia', 1, 17, 0, 0, 1, '2023-04-21'),
(573, 14, 'Bu Nurmahmuda', 1, 17, 0, 0, 1, '2023-04-21'),
(574, 15, 'Bu Mut', 1, 17, 0, 0, 1, '2023-04-21'),
(575, 16, 'Bu Dam', 1, 17, 0, 0, 1, '2023-04-21'),
(576, 17, 'Bu Hermanto', 2, 17, 0, 0, 1, '2023-04-21'),
(577, 18, 'Bu Siamah', 2, 17, 0, 0, 1, '2023-04-21'),
(578, 19, 'Bu Alet', 2, 17, 0, 0, 1, '2023-04-21'),
(579, 20, 'Bu Siti mudrikah', 3, 17, 0, 0, 1, '2023-04-21'),
(580, 21, 'Bu Siti Rohana', 3, 17, 0, 0, 1, '2023-04-21'),
(581, 22, 'Bp. Tuari', 2, 17, 0, 0, 1, '2023-04-21'),
(582, 23, 'Bu Sri Rahayu (Eval)', 4, 17, 0, 0, 1, '2023-04-21'),
(583, 24, 'Bp. Firman Adi', 1, 17, 0, 0, 1, '2023-04-21'),
(584, 25, 'Bu Endang', 2, 17, 0, 0, 1, '2023-04-21'),
(585, 26, 'Bu Yanti', 2, 17, 0, 0, 1, '2023-04-21'),
(586, 27, 'Bu Susilowati', 1, 17, 0, 0, 1, '2023-04-21'),
(587, 28, 'Bu Tutik', 1, 17, 0, 0, 1, '2023-04-21'),
(588, 29, 'Bp. Slamet', 2, 17, 0, 0, 1, '2023-04-21'),
(589, 30, 'Bp. Saudi', 1, 17, 0, 0, 1, '2023-04-21'),
(590, 31, 'Bp. Abdillah', 2, 17, 0, 0, 1, '2023-04-21'),
(591, 32, 'Bp. Syafii', 3, 17, 0, 0, 1, '2023-04-21'),
(592, 33, 'H. Anas Aly', 3, 17, 0, 0, 1, '2023-04-21'),
(593, 1, 'Mulyosantoso', 2, 19, 0, 0, 1, '2023-04-21'),
(594, 2, 'Mbah Mud', 1, 19, 0, 0, 1, '2023-04-21'),
(595, 3, 'Mbah Kamiso', 1, 19, 0, 0, 1, '2023-04-21'),
(596, 4, 'Amala', 2, 19, 0, 0, 1, '2023-04-21'),
(597, 5, 'Misnati', 1, 19, 0, 0, 1, '2023-04-21'),
(598, 6, 'Latifa', 1, 19, 0, 0, 1, '2023-04-21'),
(599, 7, 'Mbah Ratmi', 1, 19, 0, 0, 1, '2023-04-21'),
(600, 8, 'Yadi', 1, 19, 0, 0, 1, '2023-04-21'),
(601, 9, 'Satpam', 2, 19, 0, 0, 1, '2023-04-21'),
(602, 10, 'P. Sokib', 2, 19, 0, 0, 1, '2023-04-21'),
(603, 11, 'Suryati', 2, 19, 0, 0, 1, '2023-04-21'),
(604, 12, 'Khozin', 2, 19, 0, 0, 1, '2023-04-21'),
(605, 13, 'Mujiati', 3, 19, 0, 0, 1, '2023-04-21'),
(606, 14, 'Dewi Asfiyah', 3, 19, 0, 0, 1, '2023-04-21'),
(607, 15, 'Nur Anisa', 3, 19, 0, 0, 1, '2023-04-21'),
(608, 16, 'Ulfa', 3, 19, 0, 0, 1, '2023-04-21'),
(609, 17, 'Seno Susanto', 2, 19, 0, 0, 1, '2023-04-21'),
(610, 18, 'P. Rokim', 1, 19, 0, 0, 1, '2023-04-21'),
(611, 19, 'Tantok', 2, 19, 0, 0, 1, '2023-04-21'),
(612, 20, 'P. Komar (eval)', 4, 19, 0, 0, 1, '2023-04-21'),
(613, 21, 'Purnomo (Bagas)', 2, 19, 0, 0, 1, '2023-04-21'),
(614, 22, 'P. Dono Novi', 2, 19, 0, 0, 1, '2023-04-21'),
(615, 23, 'Mbah Siti', 1, 19, 0, 0, 1, '2023-04-21'),
(616, 24, 'Umi kalsum', 2, 19, 0, 0, 1, '2023-04-21'),
(617, 25, 'M Amin', 2, 19, 0, 0, 1, '2023-04-21'),
(618, 26, 'Arwintono', 2, 19, 0, 0, 1, '2023-04-21'),
(619, 27, 'Sunarto', 1, 19, 0, 0, 1, '2023-04-21'),
(620, 28, 'Sukir', 2, 19, 0, 0, 1, '2023-04-21'),
(621, 29, 'Khoirul Huda', 2, 19, 0, 0, 1, '2023-04-21'),
(622, 30, 'Ahmad Baihaqi', 2, 19, 0, 0, 1, '2023-04-21'),
(623, 31, 'Yadi Gojek', 2, 19, 0, 0, 1, '2023-04-21'),
(624, 1, 'Sumarso', 1, 14, 0, 0, 1, '2023-04-21'),
(625, 2, 'Bu Jenjem', 1, 14, 0, 0, 1, '2023-04-21'),
(626, 3, 'Bpk. Jaiman', 1, 14, 0, 0, 1, '2023-04-21'),
(627, 4, 'Bpk. Paidi', 1, 14, 0, 0, 1, '2023-04-21'),
(628, 5, 'Ftimah', 1, 14, 0, 0, 1, '2023-04-21'),
(629, 6, 'mandrak', 2, 14, 0, 0, 1, '2023-04-21'),
(630, 7, 'bpk. Untung', 1, 14, 0, 0, 1, '2023-04-21'),
(631, 8, 'Rinzani', 1, 14, 0, 0, 1, '2023-04-21'),
(632, 9, 'karomah', 1, 14, 0, 0, 1, '2023-04-21'),
(633, 10, 'Bu Saropah', 2, 14, 0, 0, 1, '2023-04-21'),
(634, 11, 'Bpk. Jayadi (Sanimas)', 2, 14, 0, 0, 1, '2023-04-21'),
(635, 12, 'Bpk. Ibrahim', 2, 14, 0, 0, 1, '2023-04-21'),
(636, 13, 'Bpk. Antoni', 1, 14, 0, 0, 1, '2023-04-21'),
(637, 14, 'Eni Kos Bu Pon', 2, 14, 0, 0, 1, '2023-04-21'),
(638, 15, 'Bu Zubaidah', 2, 14, 0, 0, 1, '2023-04-21'),
(639, 16, 'Bu Kasiah', 2, 14, 0, 0, 1, '2023-04-21'),
(640, 17, 'Bu Julaika', 2, 14, 0, 0, 1, '2023-04-21'),
(641, 18, 'Bpk. Sumarsono', 2, 14, 0, 0, 1, '2023-04-21'),
(642, 19, 'Bpk. Yono / Esti', 2, 14, 0, 0, 1, '2023-04-21'),
(643, 20, 'Bpk. Marianto (Eval)', 2, 14, 0, 0, 1, '2023-04-21'),
(644, 21, 'Bpk. Sahid', 2, 14, 0, 0, 1, '2023-04-21'),
(645, 22, 'Bu Sunar', 2, 14, 0, 0, 1, '2023-04-21'),
(646, 23, 'Bpk. Hada (Bu Titin)', 2, 14, 0, 0, 1, '2023-04-21'),
(647, 24, 'Bpk. Joko', 2, 14, 0, 0, 1, '2023-04-21'),
(648, 25, 'Rita', 2, 14, 0, 0, 1, '2023-04-21'),
(649, 26, 'Mat Bukhori', 2, 14, 0, 0, 1, '2023-04-21'),
(650, 27, 'Sulton', 2, 14, 0, 0, 1, '2023-04-21'),
(651, 28, 'Bu Nurul', 2, 14, 0, 0, 1, '2023-04-21'),
(652, 29, 'Bpk. Buri', 2, 14, 0, 0, 1, '2023-04-21'),
(653, 30, 'Nahrowi', 2, 14, 0, 0, 1, '2023-04-21'),
(654, 31, 'Pak Totok', 2, 14, 0, 0, 1, '2023-04-21'),
(655, 32, 'Adi santoso', 2, 14, 0, 0, 1, '2023-04-21'),
(656, 33, 'Diana', 2, 14, 0, 0, 1, '2023-04-21'),
(657, 34, 'Ropiah', 2, 14, 0, 0, 1, '2023-04-21'),
(658, 35, 'Bpk. Paeran', 2, 14, 0, 0, 1, '2023-04-21'),
(659, 36, 'Ten Ketang', 2, 14, 0, 0, 1, '2023-04-21'),
(660, 37, 'Bu Yani', 2, 14, 0, 0, 1, '2023-04-21'),
(661, 38, 'Bpk. Soemedi', 3, 14, 0, 0, 1, '2023-04-21'),
(662, 39, 'Bpk. Qodir', 3, 14, 0, 0, 1, '2023-04-21'),
(663, 40, 'Susi', 3, 14, 0, 0, 1, '2023-04-21'),
(665, 0, 'Bp. Samsul', 3, 14, 0, 0, 0, NULL),
(666, 0, 'ayah e kembar', NULL, NULL, 0, 0, 0, NULL),
(667, 0, 'ayah e kembar', 2, 17, 0, 0, 0, NULL),
(668, 0, 'Bp. Surati', 2, 14, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_koor`
--

CREATE TABLE `tbl_user_koor` (
  `id_user_koor` int(11) NOT NULL,
  `nama_koor` varchar(255) DEFAULT NULL,
  `panggilan_koor` varchar(20) DEFAULT NULL,
  `alamat_koor` varchar(10) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_petugas`
--

CREATE TABLE `tbl_user_petugas` (
  `id_user_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(20) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `keterangan` varchar(25) DEFAULT NULL,
  `alamat_petugas` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_user_petugas`
--

INSERT INTO `tbl_user_petugas` (`id_user_petugas`, `nama_petugas`, `username`, `password`, `keterangan`, `alamat_petugas`, `level`) VALUES
(3, 'Moch. Firman Firdaus', 'admin', 'e79c7323f62151abde47e29987b38859', 'akusayangkamu', 1, 1),
(5, 'M. Firdi Widiansyah', 'widi', 'd49b9709c6ca14577f08b2ab21ab7964', 'widi', 2, 2),
(6, 'Auliya Arfiantoro', 'fian', '3a63bfc12d919d317531fe8583593d7a', 'fian', 1, 2),
(7, 'Rizky Rachmad Zulkar', 'boboho', '8e36aec125377b008352fc32b27daf06', 'boboho', 3, 3),
(8, 'Alif Rafliyudin', 'alif', '099a147c0c6bcd34009896b2cc88633c', 'alif', 3, 5),
(9, 'Yuli Dwi Setiawan', 'yuli', '4a01a05a350e1c7710c989f1211245a8', 'yuli', 6, 5),
(10, 'Edo Dwi Minardi', 'edo', 'd2d612f72e42577991f4a5936cecbcc0', 'edo', 4, 5),
(14, 'M. Apriadi Setiawan', 'adi', 'c46335eb267e2e1cde5b017acb4cd799', 'adi', 1, 7),
(15, 'M. Nur Laba', 'nur', 'e69945bee3bdbafadf2e42c267870e08', 'nur.02', 2, 7),
(16, 'Imam Muslich', 'muslih', '41f52158ed8081cc394d2cd42744d65d', 'Muslih.01', 3, 7),
(17, 'Abdul Mughni', 'oni', 'cb7f4a5e75e6f7340971c99ea4587999', 'oni', 4, 7),
(18, 'Zahid', 'zahid', 'c651148415ab2a260e6c506075c12ae3', 'zahid', 6, 7),
(19, 'Ramadhan Dwi Handoko', 'koko', '37f525e2b6fc3cb4abd882f708ab80eb', 'koko', 5, 7),
(20, 'Ferdi', 'ferdi', '8bf4bb0e2efad01abe522bf314504a49', 'ferdi', 1, 5),
(21, 'Arif', 'arif', '0ff6c3ace16359e41e37d40b8301d67f', 'arif', 6, 5),
(22, 'Wawan', 'wawan', '0a000f688d85de79e3761dec6816b2a5', 'wawan', 6, 5),
(23, 'Abdul Mughni', 'oni', 'e575e724f835c9754452649fe9f7228d', 'Oni.01', 4, 5),
(24, 'Firdaus', 'daus', '715d7c9ff041047aeb25c535e7e2f661', 'daus', 2, 4),
(25, 'M. Abdul Aziz', 'aziz', 'b85dc795ba17cb243ab156f8c52124e1', 'aziz', 2, 2),
(26, 'MC Zulmi', 'Zulmi', 'aa2653a4930c6d6d90d262550dfd1f6e', 'zulmi.19', 5, 5),
(28, 'Syahrul Qirom', 'syahrul', '95ffb7a15f02c6c23f403edeae956a42', 'syahrul', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zakat_fitrah`
--

CREATE TABLE `tbl_zakat_fitrah` (
  `id_zakat_fitrah` int(11) NOT NULL,
  `nama_pemberi_zakat_fitrah` varchar(30) DEFAULT NULL,
  `besaran_jiwa` varchar(5) DEFAULT NULL,
  `berat_beras` varchar(5) DEFAULT NULL,
  `total_beras` varchar(10) DEFAULT NULL,
  `uang` varchar(20) DEFAULT NULL,
  `alamat` int(11) DEFAULT NULL,
  `alamat_lainnya` text DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `petugas` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_zakat_fitrah`
--

INSERT INTO `tbl_zakat_fitrah` (`id_zakat_fitrah`, `nama_pemberi_zakat_fitrah`, `besaran_jiwa`, `berat_beras`, `total_beras`, `uang`, `alamat`, `alamat_lainnya`, `keterangan`, `tanggal`, `petugas`) VALUES
(2, 'Achmad Muqorrobin', '7', '2.8', '19.60', '231000', 7, 'Tropodo', '   ', '2021-05-12 16:24:50', 3),
(3, 'Khusnul Yaqin', '4', '3', '12.00', '', 6, 'RT20/RW01 Janti Waru Sidoarjo', '', '2021-05-05 20:47:55', 5),
(4, 'anas fauzi', '3', '3', '9.00', '', 1, '', '', '2021-05-05 21:34:08', 5),
(5, 'bapak Dimas', '1', '3', '3.00', '', 7, 'wedoro', '', '2021-05-05 21:34:50', 5),
(6, 'Edi', '3', '4', '12.00', '', 7, 'Jl. Brigjen Katamso', '  ', '2021-05-10 09:20:08', 13),
(7, 'Mas ria', '3', '2.8', '8.40', '99000', 2, 'RT02/RW01 JANTI', '   ', '2021-05-07 14:17:11', 3),
(8, 'Bpk. Abu Siri', '3', '2.8', '8.40', '99000', 7, 'Balongpoh', '  ', '2021-05-07 14:17:26', 3),
(9, 'Bpk. Imron', '3', '2.8', '8.40', '', 4, 'Rt 18', '', '2021-05-07 13:28:53', 7),
(10, 'Bpak nanang', '6', '2.8', '16.80', '', 3, 'Rt 03, Rw 01', '', '2021-05-07 13:30:23', 7),
(11, 'Bpak dul', '2', '2.8', '5.60', '66000', 5, 'Rt 19, Rw 01', '  ', '2021-05-07 14:17:43', 3),
(12, 'Bpak budi Ariano', '3', '3', '9.00', '', 1, 'Rt 01, Rw 01', '', '2021-05-07 13:33:45', 7),
(13, 'Bapak M. lukman Hakim', '5', '2.8', '14.00', '165000', 7, 'Graha Tirta Akasia 36', '', '2021-05-07 13:42:12', 7),
(14, 'Ibu Erni', '4', '3', '12.00', '', 4, 'RT18/RW01 Janti', '', '2021-05-07 15:23:57', 7),
(15, 'Miskidi', '1', '3', '3.00', '', 2, 'Rt02/RW01 JANTI\r\n', '', '2021-05-07 16:20:24', 7),
(16, 'Sulanto', '4', '3', '12.00', '', 5, 'Janti RT 19 RW 1', '', '2021-05-07 16:23:37', 7),
(17, 'Bpk. Purwanto', '3', '3', '9.00', '', 2, 'RT02/Rw01 Janti', '', '2021-05-07 16:39:32', 7),
(18, 'Bpk suryanto', '3', '3', '9.00', '', 3, 'Rt 03', ' ', '2021-05-08 16:37:58', 12),
(19, 'Yudianto purnomo', '3', '3', '9.00', '', 7, 'Perumahan Rri blok G no3', ' ', '2021-05-08 16:39:02', 12),
(20, 'Ahmad abdul ghofur', '2', '2.8', '5.60', '66000', 5, 'Janti RT 19 RW 1', '', '2021-05-07 20:49:03', 5),
(21, 'Bpk Syahrul', '3', '2.8', '8.40', '99000', 7, 'Brigjen Katamso no 2c', ' ', '2021-05-08 16:35:50', 12),
(22, 'Bpk Hanafi', '3', '2.8', '8.40', '99000', 7, 'Janti 249C Waru', '', '2021-05-08 15:49:47', 12),
(23, 'Bu Harti', '5', '3', '15.00', '', 4, 'RT 18', '', '2021-05-08 15:51:07', 12),
(25, 'Suharywianto', '4', '3', '12.00', '', 4, 'Janti rt 18 rw1', ' ', '2021-05-08 16:22:36', 12),
(26, 'Didik Sutrisno', '4', '2.8', '11.20', '132000', 3, 'Janti rt 03 rw 01', '', '2021-05-08 16:19:32', 12),
(27, 'Paujan', '7', '3', '21.00', '', 1, 'Janti RT 01 Rw 01', '', '2021-05-08 16:30:11', 12),
(28, 'Tumin', '2', '3', '6.00', '', 4, 'Janti RT 18 RW 01', '', '2021-05-08 16:33:50', 12),
(29, 'Ibu Kustimah', '3', '3', '9.00', '', 4, 'Jnti rt 18', '', '2021-05-08 16:41:14', 12),
(30, 'Pak ibrahim', '4', '3', '12.00', '', 3, 'RT3', '', '2021-05-08 20:02:15', 3),
(31, 'Bapak Ali Fatoni', '3', '3', '9.00', '', 3, 'RT3', '', '2021-05-08 20:06:25', 3),
(32, 'Bapak Mansur', '3', '3', '9.00', '', 3, 'RT3', ' Bpk manus\r\nRodiyah\r\nAhmid\r\nFarih', '2021-05-10 09:13:16', 13),
(33, 'Bapak ipung', '3', '3', '9.00', '', 2, 'RT2', ' ', '2021-05-08 20:33:32', 3),
(34, 'Bpak sueb', '9', '3', '27.00', '', 4, 'RT 18', 'Sueb\r\nTrismiyati\r\nDaru sarosa\r\nHertulis\r\nJatu\r\nNoh tabrani\r\nDadang\r\nHimawan\r\nReisa', '2021-05-08 20:34:47', 3),
(35, 'Bpk Karsimin', '7', '3', '21.00', '', 2, 'RT 02', ' ', '2021-05-10 09:11:55', 13),
(36, 'Zuli', '2', '3', '6.00', '', 3, 'Rt 03', ' ', '2021-05-09 00:12:40', 3),
(37, 'Hermahadi', '3', '3', '9.00', '', 5, 'Rt 19', '', '2021-05-09 00:03:49', 3),
(38, 'Ponco', '4', '3', '12.00', '', 6, 'Rt 20', '', '2021-05-09 00:05:13', 3),
(39, 'Farid', '5', '3', '15.00', '', 2, 'Rt 02', '', '2021-05-09 00:05:49', 3),
(40, 'Erik', '1', '3', '3.00', '', 5, 'Rt 19', '', '2021-05-09 00:06:42', 3),
(41, 'Hadi', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-09 00:07:27', 3),
(42, 'Mbak efi', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-09 00:08:27', 3),
(43, 'Asta', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-09 00:10:19', 3),
(44, 'Yulianto', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-09 00:11:06', 3),
(45, 'Nur A.', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-09 00:11:50', 3),
(46, 'Suwadi', '3', '3', '9.00', '', 3, 'Janti RT 03 RW 01', '', '2021-05-09 15:17:50', 3),
(47, 'Aziz', '4', '2.8', '11.20', '132000', 4, 'Rt 18 rw 01', '', '2021-05-09 15:21:32', 3),
(48, 'Tri Wijaya', '3', '3', '9.00', '', 6, 'Rt 20 rw 01', '', '2021-05-09 15:22:51', 3),
(49, 'Miftahuddin', '2', '3', '6.00', '', 5, 'Rt 19 rw 01', '', '2021-05-09 15:27:37', 3),
(50, 'Rosyid', '1', '3', '3.00', '', 5, 'Rt 19 rw 01', '', '2021-05-09 15:28:24', 3),
(51, 'Amin', '4', '3', '12.00', '', 5, 'Rt 19 rw 01', '', '2021-05-09 15:31:02', 3),
(52, 'Edi', '2', '2.8', '5.60', '66000', 1, 'Rt 01 rw 01', '', '2021-05-09 15:32:37', 3),
(53, 'Kadiono', '3', '3', '9.00', '', 1, 'Rt 01 rw 01', '', '2021-05-09 15:33:33', 3),
(54, 'Bagus Nurya U.', '4', '3', '12.00', '', 7, 'Wisma tropodo', '', '2021-05-09 15:34:40', 3),
(55, 'Sriamah', '2', '3', '6.00', '', 2, 'Rt 02 rw 01', '', '2021-05-09 15:35:36', 3),
(56, 'Gatot Bijantoro', '4', '3', '12.00', '', 6, 'Rt 20', '', '2021-05-09 16:19:35', 3),
(57, 'Pak poniran', '3', '3', '9.00', '', 4, 'Rt 18', '', '2021-05-09 16:21:04', 3),
(58, 'Ari', '3', '2.8', '8.40', '99000', 2, 'Rt 02 Rw 01', '', '2021-05-09 17:21:02', 3),
(59, 'Asiah', '1', '2.8', '2.80', '33000', 3, 'Rt 03 Rw 01', '', '2021-05-09 17:24:56', 3),
(60, 'Suharwati', '1', '2.8', '2.80', '33000', 7, 'Rt 12 rw 01 makarya binangun', '', '2021-05-09 17:29:25', 3),
(61, 'Moch. Guntur H.', '2', '2.8', '5.60', '', 2, 'Rt 02 Rw 01', '', '2021-05-09 18:12:13', 3),
(62, 'Bpk Mardi', '2', '3', '6.00', '', 3, 'RT 03 RW 01', ' ', '2021-05-10 09:05:40', 3),
(63, 'Siti Nur Qomariyah', '2', '3', '6.00', '', 2, 'RT 02', ' ', '2021-05-10 09:06:08', 3),
(64, 'Abd Muntholib', '1', '3', '3.00', '', 1, '', '  ', '2021-05-09 22:43:40', 3),
(65, 'Aizzatulqutsyiah', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:39:52', 3),
(66, 'M. Fasikurrizal', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:40:17', 3),
(67, 'Risa oktafian ningrum', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:40:52', 3),
(68, 'Bpk Bisar', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:41:14', 3),
(69, 'prabowo hariadi', '5', '2.8', '14.00', '', 1, 'rt 1', '  wahyu', '2021-05-10 09:14:55', 3),
(70, 'Ibu Poniyati', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:41:39', 3),
(71, 'Mei cany beti Cahyani', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:42:22', 3),
(73, 'Rudi Bestian Cahyani', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:43:02', 3),
(74, 'Suryono', '3', '3', '9.00', '', 1, '', ' ', '2021-05-10 09:12:12', 3),
(75, 'Ponidi', '2', '3', '6.00', '', 1, '', ' ', '2021-05-10 09:13:56', 3),
(76, 'Bpk Khambali', '2', '3', '6.00', '', 2, 'RT 02', ' ', '2021-05-10 09:19:19', 13),
(77, 'Bpk Arofi\'', '2', '3', '6.00', '', 2, 'RT 02', ' ', '2021-05-10 09:19:22', 3),
(78, 'Ibu Masruin', '3', '3', '9.00', '', 1, 'RT 01', ' ', '2021-05-10 09:19:40', 3),
(79, 'Bpk Adi Maulana', '5', '2.8', '14.00', '165000', 7, 'Perum Graha Tirta Dahlia', ' ', '2021-05-10 09:14:40', 13),
(80, 'Bpk Belvi Anjaudi', '2', '3', '6.00', '', 3, 'RT 03', ' ', '2021-05-10 09:15:59', 3),
(81, 'Bpk munasan', '5', '3', '15.00', '', 1, 'Desa cucung RT 01', '  ', '2021-05-10 09:18:19', 13),
(82, 'Bayu winarwo', '4', '3', '12.00', '', 2, 'RT 02', ' ', '2021-05-10 09:16:40', 3),
(83, 'Ibu endang s', '1', '3', '3.00', '', 2, 'RT 02', '', '2021-05-09 22:51:50', 3),
(84, 'Bpk Wahyu', '1', '2.8', '2.80', '33000', 7, 'Magetan', '  ', '2021-05-10 09:31:32', 3),
(85, 'Bpk Wahyudi', '4', '3', '12.00', '', 6, 'RT 20', ' ', '2021-05-10 09:13:25', 3),
(86, 'Bpk Agus Sugianto', '5', '2.8', '14.00', '', 2, 'RT 02', ' ', '2021-05-10 09:18:34', 3),
(87, 'Bpk naimun', '3', '3', '9.00', '', 3, 'RT 03', '  ', '2021-05-10 09:20:41', 3),
(88, 'Bpk M Nur muji', '2', '2.8', '5.60', '66000', 4, 'RT 18', ' ', '2021-05-10 09:20:51', 13),
(89, 'Bpk Heryanto', '6', '2.8', '16.80', '198000', 7, 'Dukuh ngingas', ' ', '2021-05-10 09:21:08', 3),
(90, 'Bpk Sugeng', '2', '3', '6.00', '', 5, 'RT 19', ' ', '2021-05-10 09:21:14', 13),
(91, 'Miswanto', '3', '3', '9.00', '', 6, 'RT 20', ' ', '2021-05-10 09:21:24', 3),
(92, 'Ismi', '4', '3', '12.00', '', 6, 'RT 20', ' ', '2021-05-10 09:21:34', 13),
(93, 'Weli W', '3', '3', '9.00', '', 1, '', ' ', '2021-05-10 09:21:39', 3),
(94, 'Edi sutrisno', '1', '3', '3.00', '', 6, 'RT 20', '', '2021-05-10 08:54:50', 3),
(95, 'Taufiq', '4', '3', '12.00', '', 6, 'RT 20', ' ', '2021-05-10 09:22:02', 13),
(96, 'Bpk. Wiyanto', '6', '3', '18.00', '', 1, 'Rt01/ RW01 JANTI', '', '2021-05-10 09:06:59', 11),
(97, 'Pungky', '2', '3', '6.00', '', 6, 'RT 20', '', '2021-05-10 09:23:32', 3),
(98, 'Bpk. Puguh Hadi', '7', '3', '21.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:23:32', 13),
(99, 'Enti Sugiarti', '3', '3', '9.00', '', 6, 'RT 20', '  ', '2021-05-10 09:27:52', 3),
(100, 'Bpk. Prabowo Hariyadi', '5', '3', '15.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:24:29', 13),
(102, 'Tri Bawin Agung Prasetyo', '2', '3', '6.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:25:20', 13),
(103, 'Saiful Hamzah', '3', '3', '9.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:27:19', 13),
(104, 'Elisa', '1', '3', '3.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:27:40', 13),
(105, 'Bpk. Nasikin Setyanto', '4', '3', '12.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:28:12', 13),
(106, 'Mahfudz', '3', '3', '9.00', '', 3, 'RT 03', '', '2021-05-10 09:28:37', 3),
(107, 'Bpk. Hasim', '3', '3', '9.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:29:10', 13),
(108, 'Bpk. Nisfu Laili', '2', '3', '6.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:30:11', 13),
(109, 'H.M. Juferi', '2', '3', '6.00', '', 3, 'RT 03', '', '2021-05-10 09:30:32', 3),
(110, 'Bpk. Sahud', '4', '3', '12.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:30:40', 13),
(111, 'Ibu Luluk Okta Nurdiana', '2', '3', '6.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:31:48', 13),
(112, 'Bpk. Musliman', '7', '3', '21.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:32:28', 13),
(113, 'Bpk. Hariono', '5', '3', '15.00', '', 1, 'RT01/RW01 JANTI', ' ', '2021-05-10 09:33:07', 13),
(114, 'Bapak Mujiono', '2', '3', '6.00', '', 4, 'RT18/RW01 JANTI', '', '2021-05-10 12:04:43', 11),
(115, 'Supriyanto', '3', '3', '9.00', '', 3, 'Rt 03 RW 01', '', '2021-05-10 16:03:43', 3),
(116, 'Sarito', '3', '2.8', '8.40', '99000', 5, 'Rt 19 rw 01', '', '2021-05-10 16:04:20', 3),
(117, 'Adi Lukmanto', '4', '2.8', '11.20', '132000', 4, 'Rt 18 Rw 01', '', '2021-05-10 16:05:14', 3),
(118, 'Mujiono', '2', '3', '6.00', '', 4, 'Rt 18 Rw 01', '', '2021-05-10 16:06:01', 3),
(119, 'Khusnul Hasyim', '2', '2.8', '5.60', '66000', 7, 'Janti', '', '2021-05-10 16:07:38', 3),
(120, 'Abdul Misbahul S', '4', '3', '12.00', '', 2, 'Rt 02 Rw 01', '', '2021-05-10 16:08:11', 3),
(121, 'Shofi\'i', '2', '2.8', '5.60', '66000', 4, 'Rt 18 rw 01', '', '2021-05-10 16:08:48', 3),
(122, 'Yati', '3', '2.8', '8.40', '', 2, 'Rt 02 rw 01', '', '2021-05-10 16:09:29', 3),
(123, 'Yayuk', '5', '2.8', '14.00', '165000', 2, 'Rt 02 Rw 01', '', '2021-05-10 17:44:47', 3),
(124, 'Khusnul', '2', '2.8', '5.60', '', 3, 'Rt  03 rw 01', '', '2021-05-10 17:45:24', 3),
(125, 'Nurhayati', '1', '2.8', '2.80', '33000', 7, 'Makarya', '', '2021-05-10 17:46:04', 3),
(126, 'Mahmud', '3', '3', '9.00', '', 4, 'Rt 18 rw 01', '', '2021-05-10 17:47:10', 3),
(127, 'Suwarto', '4', '3', '12.00', '', 6, 'Rt 20 rw 01', '', '2021-05-10 17:48:59', 3),
(128, 'Indra gunawan', '3', '2.8', '8.40', '99000', 7, 'Buduran', '', '2021-05-10 17:49:21', 3),
(129, 'Mustofa', '2', '3', '6.00', '', 4, 'Rt 02 rw 01', '', '2021-05-10 17:49:49', 3),
(130, 'Lilik Masluhah', '4', '2.8', '11.20', '132000', 4, 'Rt 18 Rw 01', '', '2021-05-10 17:50:33', 3),
(131, 'Syaifuddin', '5', '3', '15.00', '', 3, 'Rt 03 rw 01', ' ', '2021-05-10 18:03:27', 3),
(132, 'Pujiwanto', '4', '3', '12.00', '', 4, 'Rt 18 Rw 01', ' ', '2021-05-10 18:10:41', 3),
(133, 'Bpk pugiwanto', '4', '3', '12.00', '', 4, 'RT 18', '', '2021-05-10 20:01:04', 11),
(134, 'H. Kamim', '2', '3', '6.00', '', 1, '', '', '2021-05-10 20:01:27', 11),
(135, 'Rifa\' kamdi', '1', '3', '3.00', '', 1, '', '', '2021-05-10 20:01:51', 11),
(136, 'Puji lestari', '5', '2.8', '14.00', '165000', 5, 'RT 19', '', '2021-05-10 20:02:35', 11),
(137, 'Bpk. Mariyanto', '8', '3', '24.00', '', 1, 'RT01', ' Wahyu', '2021-05-10 20:17:21', 13),
(138, 'Bp. Jito', '4', '3', '12.00', '', 1, 'Rt1', 'Wahyu', '2021-05-10 20:18:19', 13),
(139, 'Bp. Sumadi', '5', '3', '15.00', '', 1, 'Rt1', 'Wahyu', '2021-05-10 20:19:03', 13),
(140, 'Rahayu', '2', '3', '6.00', '', 1, 'Rt1', 'Wahyu', '2021-05-10 20:40:08', 13),
(141, 'Bpk Sumarlan', '4', '3', '12.00', '', 1, 'Rt1', '', '2021-05-10 20:42:20', 13),
(142, 'Sandi', '3', '3', '9.00', '', 1, 'Rt1', '', '2021-05-10 20:42:43', 13),
(143, 'Bpk M Fahmi putro', '4', '3', '12.00', '', 7, 'Makariya', ' ', '2021-05-10 21:03:41', 11),
(144, 'Bpk Adi suroso', '3', '3', '9.00', '', 7, 'Sepanjang', '', '2021-05-10 21:04:31', 11),
(145, 'Bpk pulung', '7', '2.8', '19.60', '231000', 7, 'Graha Tirta akasia', '', '2021-05-10 21:05:11', 11),
(146, 'Bpk asep', '3', '2.8', '8.40', '99000', 2, 'RT 02', '', '2021-05-10 21:05:46', 11),
(147, 'Bpk Hendro', '2', '3', '6.00', '', 6, 'RT 20', '', '2021-05-10 21:06:23', 11),
(148, 'Ibu Rahayu', '4', '3', '12.00', '', 1, 'RT 01', '', '2021-05-10 21:06:52', 11),
(149, 'Bpk Haru', '3', '2.8', '8.40', '99000', 6, 'RT 20', ' ', '2021-05-10 21:08:17', 11),
(150, 'Bpk Udin', '4', '2.8', '11.20', '', 2, 'RT 02', '', '2021-05-10 21:09:04', 11),
(151, 'Bpk mulyadi', '2', '3', '6.00', '', 4, 'RT 18', '', '2021-05-10 21:09:50', 11),
(152, 'Bpk narto', '4', '3', '12.00', '', 2, 'RT 02', '', '2021-05-10 21:14:15', 11),
(153, 'Bpk kamiso', '1', '2.8', '2.80', '', 5, 'RT 19', '', '2021-05-10 21:14:57', 11),
(154, 'Bpk H. Nurul huda', '6', '2.8', '16.80', '', 6, 'RT 20', '  ', '2021-05-10 21:16:39', 11),
(155, 'Bpk eko', '5', '2.8', '14.00', '', 3, 'RT 03', '', '2021-05-10 21:17:25', 11),
(156, 'Ibu nur aini', '3', '2.8', '8.40', '66000', 1, '', '1 beras sendiri \r\n2 beli', '2021-05-10 21:18:21', 11),
(157, 'Bpk sadi', '2', '2.8', '5.60', '', 3, 'RT 03', '', '2021-05-10 21:18:44', 11),
(158, 'Gilanh rayanda', '1', '2.8', '2.80', '', 7, 'Sadang RT 06', '', '2021-05-10 21:19:49', 11),
(159, 'Bpk roni', '3', '2.8', '8.40', '', 5, 'RT 19', '', '2021-05-10 21:20:54', 11),
(160, 'Bpk saikhu', '3', '2.8', '8.40', '', 2, 'RT 02', '', '2021-05-10 21:23:08', 11),
(161, 'Bpk saikhu', '3', '2.8', '8.40', '', 2, 'RT 02', '', '2021-05-10 21:23:44', 11),
(162, 'Bpk supartu', '1', '2.8', '2.80', '33000', 7, 'Ngingas', '', '2021-05-10 21:24:41', 11),
(163, 'Aziz', '1', '2.8', '2.80', '33000', 2, 'RT 02', '', '2021-05-10 21:28:26', 11),
(164, 'Bpk taufiq', '4', '3', '12.00', '', 5, 'RT 19', '', '2021-05-10 21:28:45', 11),
(165, 'Bpk sigit', '5', '3', '15.00', '', 2, 'RT 02', '', '2021-05-10 21:29:26', 11),
(166, 'Bpk Arifin', '2', '3', '6.00', '', 1, 'RT 01', '', '2021-05-10 21:29:48', 11),
(167, 'Bpk Yanto', '1', '3', '3.00', '', 1, 'RT 01', '', '2021-05-10 21:30:15', 11),
(168, 'Bpk sumarso', '5', '3', '15.00', '', 1, 'RT 01', '', '2021-05-10 21:31:36', 11),
(169, 'Bpk arif', '4', '2.8', '11.20', '132000', 4, 'RT 18', '', '2021-05-10 21:32:05', 11),
(170, 'Bpk zainuri', '2', '2.8', '5.60', '', 3, 'RT 03', '', '2021-05-10 21:32:24', 11),
(171, 'Bpk Edi santoso', '4', '3', '12.00', '', 4, 'RT 18', '', '2021-05-10 22:29:27', 11),
(172, 'Siswanto', '3', '3', '9.00', '', 6, 'Rt 20 ', '', '2021-05-10 22:48:33', 3),
(173, 'Sugeng purnomo', '3', '3', '9.00', '', 5, 'Rt 19', '', '2021-05-10 22:51:02', 3),
(174, 'Araya', '3', '3', '9.00', '', 6, 'Rt 20', '', '2021-05-10 22:51:24', 3),
(175, 'Suhartoyo', '5', '3', '15.00', '', 1, '', '', '2021-05-10 22:51:46', 3),
(176, 'Semi', '3', '3', '9.00', '', 6, 'Rt 20', '', '2021-05-10 22:52:07', 3),
(177, 'Sarmanto', '4', '3', '12.00', '', 6, 'Rt 20', '', '2021-05-10 22:52:23', 3),
(178, 'Unaika', '1', '3', '3.00', '', 6, 'RT 20', '', '2021-05-10 22:52:49', 3),
(179, 'Tas\'an', '5', '3', '15.00', '', 6, 'Rt 20', '', '2021-05-10 22:53:10', 3),
(180, 'Nanang', '4', '3', '12.00', '', 6, 'Rt 20', '', '2021-05-10 22:53:31', 3),
(181, 'Mistiyah', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-10 22:53:48', 3),
(182, 'H. Tri Kardi', '3', '3', '9.00', '', 5, 'Rt 19', '', '2021-05-10 22:54:09', 3),
(183, 'Hariono', '2', '3', '6.00', '', 6, 'Rt 20', '', '2021-05-10 22:54:26', 3),
(184, 'Mad Hadi', '2', '3', '6.00', '', 6, 'Rt 20', '', '2021-05-10 22:54:48', 3),
(185, 'Yeni Abdiyah', '3', '3', '9.00', '', 6, 'Rt 20', '', '2021-05-10 22:55:10', 3),
(186, 'Andre', '3', '3', '9.00', '', 5, 'Rt 19', '', '2021-05-10 22:55:26', 3),
(187, 'Hari', '4', '3', '12.00', '', 3, 'Rt 03', '', '2021-05-10 22:55:49', 3),
(188, 'Agus Setiawan', '3', '3', '9.00', '', 1, '', '', '2021-05-10 22:56:08', 3),
(189, 'Munasri', '2', '3', '6.00', '', 6, 'Rt 20', '', '2021-05-10 22:56:28', 3),
(190, 'Dyah Ariani', '3', '3', '9.00', '', 1, '', '', '2021-05-10 22:56:48', 3),
(191, 'Juwanto', '2', '5', '10.00', '', 6, 'Rt 20', ' ', '2021-05-12 10:16:05', 5),
(192, 'Fulan', '1', '3', '3.00', '', 1, '', '', '2021-05-10 22:57:32', 3),
(194, 'Bapak Suroso', '4', '3', '12.00', '', 1, 'RT 01', '', '2021-05-11 08:33:01', 12),
(195, 'Ibu Mirna', '3', '3', '9.00', '', 6, 'RT 20 RW 01', '', '2021-05-11 08:36:31', 12),
(196, 'Firdaus', '3', '3', '9.00', '', 7, 'Kediri', '', '2021-05-11 08:37:31', 12),
(197, 'Bpk Mulya Hariono', '3', '3', '9.00', '', 1, 'RT 01', '', '2021-05-11 08:41:07', 12),
(198, 'Bpk Lindung', '2', '3', '6.00', '', 7, 'Wadung asri', ' ', '2021-05-11 10:56:14', 5),
(199, 'Pak Syukur', '1', '3', '3.00', '', 4, 'RT 18', '', '2021-05-11 09:04:12', 12),
(200, 'Bapak Kudus', '3', '3', '9.00', '', 2, 'RT 02', '', '2021-05-11 09:05:19', 12),
(201, 'Widi', '3', '3', '9.00', '', 2, 'RT 02', '', '2021-05-11 09:06:04', 12),
(202, 'Bapak zakaria', '2', '3', '6.00', '', 3, 'JANTI RT03', '', '2021-05-11 09:43:57', 12),
(203, 'Ibu Desy', '4', '2.8', '11.20', '132000', 7, 'MASANGAN GEDANGAN', '', '2021-05-11 09:46:28', 12),
(204, 'Ibu Nur Mahmudah', '3', '3', '9.00', '', 4, 'JANTI RT18', '', '2021-05-11 09:47:19', 12),
(205, 'Bapak imam', '1', '2.8', '2.80', '33000', 3, 'JANTI RT03', '', '2021-05-11 09:53:33', 12),
(206, 'Bapak Dedik Mulyono', '6', '3', '18.00', '', 6, 'JANTI RT20', '', '2021-05-11 10:15:10', 12),
(207, 'Bapak Sahid', '2', '2.8', '5.60', '', 1, 'JANTI RT01', '', '2021-05-11 10:48:10', 12),
(208, 'Ibu Dewi Nasuchah', '1', '3', '3.00', '', 4, 'JANTI RT18', '', '2021-05-11 11:10:09', 12),
(209, 'Ibu Siti Mufarrohah', '1', '3', '3.00', '', 4, 'JANTI RT18', '', '2021-05-11 11:11:09', 12),
(210, 'Bpk. Karim', '4', '2.8', '11.20', '132000', 7, 'Ngelom Taman', '', '2021-05-11 12:36:05', 5),
(211, 'Bpk. Selamet Riyanto', '5', '3', '15.00', '', 2, '02/01 Janti', '', '2021-05-11 12:57:26', 12),
(212, 'Bpk. Wawan', '5', '2.8', '14.00', '165000', 7, 'Gunung Sari', ' ', '2021-05-12 10:16:52', 5),
(213, 'Slamet Riyanto', '5', '3', '15.00', '', 7, 'Janti', '', '2021-05-11 13:56:20', 3),
(214, 'Munasrip', '3', '2.8', '8.40', '99000', 3, 'Rt 03 rw 01', '', '2021-05-11 13:56:48', 3),
(215, 'Bapak Febri', '4', '3', '12.00', '', 7, 'Kavling BBC', '', '2021-05-11 14:19:36', 12),
(216, 'Agus nur Salim', '5', '3', '15.00', '', 4, 'Rt 18 Rw 01', '', '2021-05-11 15:02:51', 3),
(217, 'Geraldi', '5', '2.8', '14.00', '165000', 6, 'Rt 20 rw 01', '', '2021-05-11 15:11:12', 3),
(218, 'Rianto', '5', '3', '15.00', '', 3, 'Rt 03 RW 01', '', '2021-05-11 17:07:42', 3),
(219, 'Bani Adam', '3', '3', '9.00', '', 1, 'RT 01 RW 01', '', '2021-05-11 17:08:25', 3),
(220, 'Heru', '2', '3', '6.00', '', 5, 'Rt 19 Rw 01', '', '2021-05-11 17:08:56', 3),
(221, 'Rohmat T.', '5', '3', '15.00', '', 7, 'Janti', '', '2021-05-11 17:09:25', 3),
(222, 'Mawan', '3', '2.8', '8.40', '99000', 5, 'RT 19 RW 01', '', '2021-05-11 17:10:07', 3),
(223, 'Suyanto', '3', '2.8', '8.40', '99000', 5, 'Rt 19 rw 01', '', '2021-05-11 17:12:28', 3),
(224, 'Sutisna', '6', '3', '18.00', '', 4, 'Rt 18 rw 01', '', '2021-05-11 17:13:00', 3),
(225, 'Abdul karim', '4', '3', '12.00', '', 3, 'Rt 02 rw 01', '', '2021-05-11 17:13:32', 3),
(226, 'Hj Poniati', '5', '3', '15.00', '', 1, 'Rt 01 Rw 01', '', '2021-05-11 17:19:49', 3),
(227, 'Khoirul', '4', '3', '12.00', '', 6, 'Rt 20 rw 01', '', '2021-05-11 17:20:43', 3),
(228, 'Bapak Usman', '2', '3', '6.00', '', 3, 'RT 03 RW 01', '', '2021-05-11 18:42:48', 6),
(229, 'Bapak Lasmadi', '4', '3', '12.00', '', 3, 'RT 3 RW 1', '', '2021-05-11 18:43:44', 6),
(230, 'Bapak Jawani', '6', '3', '18.00', '', 2, 'RT 2 RW 1', ' ', '2021-05-12 10:06:26', 5),
(231, 'Bapak H.Suprapto', '1', '2,8', '2.00', '', 4, 'RT 18 RW 1', '', '2021-05-11 18:47:12', 6),
(232, 'Bapak Roni', '4', '3', '12.00', '', 6, 'RT 20 RW 1', ' ', '2021-05-12 10:18:30', 5),
(233, 'Bapak Jaya', '3', '2.8', '8.40', '99000', 7, 'Delta Harmoni 61 , Graha Tirta', '   ', '2021-05-12 10:19:25', 5),
(234, 'Fajar Nur Laba', '3', '3', '9.00', '', 2, 'RT 2 RW 1', ' ', '2021-05-12 10:19:52', 5),
(235, 'Rahmat Udin', '3', '3', '9.00', '', 2, 'RT 2 RW 1', ' ', '2021-05-12 10:21:01', 5),
(236, 'Sapto Hartanto', '1', '3', '3.00', '', 7, 'Jl. Brigjend Katamso III', '', '2021-05-11 18:56:05', 6),
(237, 'Eva Susliyati', '1', '3', '3.00', '', 7, 'Jl. Brogjend Katamso III', '', '2021-05-11 18:56:56', 6),
(238, 'Bapak Budi Susanto', '6', '3', '18.00', '', 5, 'RT19 RW1', ' ', '2021-05-12 10:21:45', 5),
(239, 'Bapak Anang', '7', '3', '21.00', '', 6, 'RT 20 RW 1', ' ', '2021-05-12 10:22:31', 5),
(240, 'Bapak Heri Suparman', '1', '3', '3.00', '', 4, 'RT 18 RW 1', '', '2021-05-11 18:59:41', 6),
(241, 'Bapak Ulum', '1', '3', '3.00', '', 4, 'RT18 RW1', '', '2021-05-11 19:00:11', 6),
(242, 'Bapak Sukaji', '1', '3', '3.00', '', 4, 'RT18 RW1', '', '2021-05-11 19:00:38', 6),
(243, 'Bapak Markus Prayitno', '4', '3', '12.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:23:28', 5),
(244, 'Ibu Hindun', '1', '3', '3.00', '', 6, 'RT20 RW1', '', '2021-05-11 19:02:19', 6),
(245, 'Bapak Udon', '3', '3', '9.00', '', 6, 'RT20 RW1', ' ', '2021-05-12 10:23:52', 5),
(246, 'Bapak Mislan', '4', '3', '12.00', '', 6, '\r\nRT20 RW1', ' ', '2021-05-12 10:24:39', 5),
(247, 'Bapak Feri', '3', '3', '9.00', '', 6, 'RT20 RW1', ' ', '2021-05-12 10:25:03', 5),
(248, 'Bapak Yauman', '3', '3', '9.00', '', 6, 'RT20 RW1', ' ', '2021-05-12 10:25:41', 5),
(249, 'Bapak Nizar', '4', '3', '12.00', '', 6, 'RT20 RW1', ' ', '2021-05-12 10:26:17', 5),
(250, 'Ibu Siti', '1', '2.8', '2.80', '33000', 3, 'RT3 RW1', ' ', '2021-05-12 10:26:57', 5),
(251, 'Ibu Sa’adah', '5', '3', '15.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:28:31', 5),
(252, 'KH. M. Ridwan Yasin', '5', '5', '25.00', '', 4, 'RT18 Rw1', ' ', '2021-05-12 10:28:58', 5),
(253, 'M Arif', '3', '3', '9.00', '', 4, 'RT18 RW 1', ' ', '2021-05-12 10:29:20', 5),
(254, 'Bapak Mustaqim', '3', '3', '9.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:29:43', 5),
(255, 'Jahuri', '4', '3', '12.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:30:16', 5),
(256, 'M Tahir', '2', '3', '6.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:30:38', 5),
(257, 'Bu Kholifah', '3', '3', '9.00', '', 4, 'RT18 RW1', ' ', '2021-05-12 10:31:01', 5),
(258, 'Bapak Sunari', '6', '3', '18.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:31:25', 5),
(259, 'Bapak Oyik Suripto', '6', '3', '18.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:33:58', 5),
(260, 'Bapak Riyadi', '9', '3', '27.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:33:31', 5),
(261, 'Bapak Sunarto', '6', '3', '18.00', '', 5, 'RT19 RW1', ' ', '2021-05-12 10:31:42', 5),
(262, 'Bapak Ki Agus Rasyid', '4', '2.8', '11.20', '132000', 7, 'Jawa Timur', '  ', '2021-05-12 10:35:12', 5),
(263, 'Bu Mar’ah', '3', '2.8', '8.40', '99000', 3, 'RT3 RW1', '  ', '2021-05-12 10:36:53', 5),
(264, 'Bapak Cholil', '5', '3', '15.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:37:16', 5),
(265, 'Bapak Malik', '1', '2.8', '2.80', '33000', 4, 'RT18 RW1', ' ', '2021-05-12 10:37:37', 5),
(266, 'Bapak Suwono', '4', '3', '12.00', '', 7, 'Brigjend Katamso 254', ' ', '2021-05-12 10:37:58', 5),
(267, 'Bapak Sami’an', '4', '3', '12.00', '', 1, 'RT1 RW1', ' ', '2021-05-12 10:38:20', 5),
(268, 'Bapak Sutomo', '5', '3', '15.00', '', 1, 'RT1 RW1', ' ', '2021-05-12 10:40:46', 5),
(269, 'Bapak Sudarto', '6', '3', '18.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:38:56', 5),
(270, 'Bapak Rahmat', '3', '3', '9.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:43:54', 3),
(271, 'Ibu Sofi', '2', '3', '6.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:44:17', 3),
(272, 'Bapak Duk', '3', '3', '9.00', '', 5, 'RT19 RW1', ' ', '2021-05-12 10:40:55', 3),
(273, 'Aprilia ', '5', '3', '15.00', '', 7, 'Makarya Binangun', ' ', '2021-05-12 10:40:10', 3),
(274, 'Bapak Jalil', '4', '2.8', '11.20', '132000', 5, 'RT19 RW1', ' ', '2021-05-12 10:39:02', 3),
(275, 'Bapak Ali', '2', '3', '6.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:51:26', 3),
(276, 'Wahyu', '3', '3', '9.00', '99000', 2, 'RT 02 RW 01', '', '2021-05-11 20:57:49', 12),
(277, 'Rachmat Rahadian', '5', '3', '15.00', '', 1, 'RT 01 RW 01', '', '2021-05-11 20:59:08', 12),
(278, 'Bapak Panut', '2', '3', '6.00', '66000', 2, 'RT 02 RW 01', '', '2021-05-11 21:00:01', 12),
(279, 'Bapak Ahmad Baihaqi', '1', '3', '3.00', '', 5, 'RT 19 RW 01', '', '2021-05-11 21:00:47', 12),
(280, 'M. Khoirunnasirin', '1', '3', '3.00', '', 5, 'RT 19 RW 01', '', '2021-05-11 21:01:39', 12),
(281, 'Bapak Mulyadi', '2', '3', '6.00', '', 1, 'RT 01 RW 01', '', '2021-05-11 21:02:35', 12),
(282, 'Bapak Ma’mun', '4', '3', '12.00', '', 2, 'RT 02 RW 01', '', '2021-05-11 21:03:35', 12),
(283, 'Ibu Asma', '9', '3', '27.00', '', 6, 'RT 20 RW 01', '', '2021-05-11 21:04:26', 12),
(284, 'Abdul Ghofur', '4', '2.8', '11.20', '132000', 6, 'RT 20 RW 01', '', '2021-05-11 21:05:34', 12),
(285, 'Bapak Irianto', '2', '3', '6.00', '', 2, 'RT 02 RW 01', '', '2021-05-11 21:26:17', 12),
(286, 'Bpk Rokhim', '5', '3', '15.00', '', 5, 'RT 19', '', '2021-05-11 21:51:11', 11),
(287, 'Bpk Ruddy', '5', '3', '15.00', '', 7, 'Boughenvil', '', '2021-05-11 21:51:36', 11),
(288, 'Bpk Agus salim', '4', '3', '12.00', '', 2, 'RT 02', '', '2021-05-11 21:52:11', 11),
(289, 'Bpk Harianto', '3', '2.8', '8.40', '99000', 1, 'RT 01', '', '2021-05-11 21:52:35', 11),
(290, 'Bpk. Sukarji', '2', '2.8', '5.60', '66000', 6, 'RT 20', 'Ibu nursiah', '2021-05-11 22:10:50', 3),
(291, 'Bapak Siswanto', '3', '3', '9.00', '', 5, 'RT19 RW1', '', '2021-05-11 22:26:45', 6),
(292, 'Bpk. H. Kadar', '3', '4', '12.00', '', 6, 'RT 20', '', '2021-05-11 22:26:53', 3),
(293, 'Bapak Mukiron', '10', '3', '30.00', '', 6, 'RT20 RW1', '', '2021-05-11 22:27:35', 6),
(294, 'Eddy Darmawan', '7', '3', '21.00', '', 6, 'RT 20', '', '2021-05-11 22:27:39', 3),
(295, 'Bapak Kojin', '2', '3', '6.00', '', 5, 'RT19 RW1', '', '2021-05-11 22:28:13', 6),
(296, 'Sujuanto', '4', '3', '12.00', '', 6, 'RT 20', '', '2021-05-11 22:28:33', 3),
(297, 'Bapak Heru', '3', '3', '9.00', '', 6, 'RT19 RW1', '', '2021-05-11 22:28:41', 6),
(298, 'Bapak Amin Susilo', '1', '3', '3.00', '', 6, 'RT20 RW1', '', '2021-05-11 22:29:09', 6),
(299, 'Marhaban', '2', '3', '6.00', '', 7, 'Perum Makarya', '', '2021-05-11 22:29:09', 3),
(300, 'Bapak Adi', '4', '3', '12.00', '', 5, 'RT19 RW1', '', '2021-05-11 22:29:36', 6),
(301, 'Dian', '3', '2', '6.00', '', 5, 'RT 19', '', '2021-05-11 22:29:46', 3),
(302, 'Ibu Maria', '1', '3', '3.00', '', 5, 'RT 19', ' ', '2021-05-11 22:30:29', 3),
(303, 'Hadi Minarno', '5', '3', '15.00', '', 6, 'RT20 RW1', '', '2021-05-11 22:31:20', 6),
(304, 'Minarno', '5', '3', '15.00', '', 6, 'RT 20', '', '2021-05-11 22:31:22', 3),
(305, 'Ibu Supriati', '2', '3', '6.00', '', 5, 'RT19 RW1', '', '2021-05-11 22:31:38', 6),
(306, 'Ibu sut', '5', '3', '15.00', '', 6, 'RT 20', '', '2021-05-11 22:31:55', 3),
(307, 'Bapak Zahid', '1', '3', '3.00', '', 6, 'RT20 RW1', '', '2021-05-11 22:32:11', 6),
(308, 'Ibu prapto', '1', '2.8', '2.80', '33000', 4, 'RT 18', '', '2021-05-11 22:33:49', 11),
(309, 'Moch. Arifianto', '5', '3', '15.00', '', 1, 'Rt1', '', '2021-05-11 23:10:41', 13),
(310, 'Siti Khomsatun ', '1', '3', '3.00', '', 1, 'Rt1', '', '2021-05-11 23:11:06', 13),
(311, 'Sri Mulyaning Ati', '3', '3', '9.00', '', 1, 'Rt1', '', '2021-05-11 23:11:43', 13),
(312, 'Adi Setiawan', '5', '3', '15.00', '', 1, 'Rt1', '', '2021-05-11 23:13:01', 13),
(313, 'Sunaryo', '5', '5', '25.00', '', 1, 'Rt1', '', '2021-05-11 23:13:29', 13),
(314, 'Cristian', '2', '2.8', '5.60', '66000', 1, 'Rt 01 rw 01', '', '2021-05-12 00:06:27', 3),
(315, 'Jupriyadi', '4', '2.8', '11.20', '132000', 2, 'Rt 02 RW 01', '', '2021-05-12 00:07:34', 3),
(316, 'Santoso', '3', '5', '15.00', '', 5, 'Rt 19 rw 01', '', '2021-05-12 00:08:41', 3),
(317, 'Komar', '1', '5', '5.00', '', 5, 'Rt 19', '', '2021-05-12 00:09:19', 3),
(318, 'Sukarji', '2', '2.8', '5.60', '66000', 6, 'Rt 20', '', '2021-05-12 00:10:35', 3),
(319, 'Rodi', '5', '3', '15.00', '', 2, 'Rt 02', '', '2021-05-12 00:11:23', 3),
(320, 'Eka Budi s', '2', '3', '6.00', '', 2, 'Rt 02', '', '2021-05-12 00:12:02', 3),
(321, 'Firdaus Faisal', '6', '4.14', '24.84', '', 7, 'RRI', '', '2021-05-12 00:13:54', 3),
(322, 'Rudi Isnawan', '4', '3', '12.00', '', 4, 'Rt 18 rw 01', '', '2021-05-12 09:01:40', 3),
(323, 'Jalil', '1', '2.8', '2.80', '', 2, 'Rt 02 rw 01', '', '2021-05-12 09:02:34', 3),
(324, 'Samsul Huda', '3', '3', '9.00', '', 2, 'Rt 02 rw 01', '', '2021-05-12 09:03:09', 3),
(325, 'Abdillah', '2', '3', '6.00', '', 2, 'Rt 02 rw 01', '', '2021-05-12 09:03:47', 3),
(326, 'Albad', '4', '2.8', '11.20', '132000', 7, 'Pengkol', '', '2021-05-12 09:04:39', 3),
(327, 'Ghofur', '4', '3', '12.00', '', 2, 'Rt 02 ', '', '2021-05-12 09:05:21', 3),
(328, 'Reza', '3', '2.8', '8.40', '99000', 6, 'Rt 20', '', '2021-05-12 09:06:11', 3),
(329, 'Abd Rosyid', '3', '3', '9.00', '', 2, 'Rt 02 rw01', ' ', '2021-05-12 09:08:12', 3),
(330, 'Putra', '1', '3', '3.00', '', 4, 'Rt 18', '', '2021-05-12 09:09:22', 3),
(331, 'Rio', '1', '3', '3.00', '', 4, 'Rt 18', '', '2021-05-12 09:09:45', 3),
(332, 'Sujatmiko', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 09:12:18', 3),
(333, 'Mauli', '2', '3', '6.00', '', 4, 'Rt 03', '', '2021-05-12 09:12:34', 3),
(334, 'Sokhib', '1', '3', '3.00', '', 6, 'Rt 20 ', '', '2021-05-12 09:12:56', 3),
(335, 'Ilman', '4', '3', '12.00', '', 6, 'Rt 20', '', '2021-05-12 09:14:18', 3),
(336, 'Yadi Mulyadi', '4', '3', '12.00', '', 5, 'Rt 19', '', '2021-05-12 09:14:39', 3),
(337, 'Zainuri', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 09:15:03', 3),
(338, 'Moch. Nugroho', '1', '3', '3.00', '', 4, 'Rt 18', '', '2021-05-12 09:15:46', 3),
(339, 'Semi', '1', '3', '3.00', '', 4, 'Rt 18', '', '2021-05-12 09:16:42', 3),
(340, 'Ibu komaroh', '1', '3', '3.00', '', 4, 'Rt 18', '3', '2021-05-12 09:17:11', 3),
(341, 'Kasemi', '2', '3', '6.00', '66000', 3, 'Rt 03 rw 01', '', '2021-05-12 09:21:53', 3),
(342, 'Agung', '5', '3', '15.00', '', 2, 'Rt 02 rw 01', '', '2021-05-12 09:22:14', 3),
(343, 'Ahmad Syahroni', '3', '3', '9.00', '', 5, 'Rt 19', '', '2021-05-12 09:22:32', 3),
(344, 'Umar', '2', '3', '6.00', '', 6, 'Rt 20', '', '2021-05-12 09:24:48', 3),
(345, 'Imron', '4', '2.8', '11.20', '132000', 2, 'Rt 02', '', '2021-05-12 09:25:07', 3),
(346, 'Aris Budiono', '2', '3', '6.00', '', 2, 'Rt 02', '', '2021-05-12 09:25:28', 3),
(347, 'Bambang', '5', '3', '15.00', '', 3, 'Rt 03', '', '2021-05-12 09:25:51', 3),
(348, 'Agus Setiawan', '3', '3', '9.00', '', 6, 'Rt 20', '', '2021-05-12 09:26:13', 3),
(349, 'Harmadi', '2', '3', '6.00', '', 3, 'Rt 03', '', '2021-05-12 09:26:29', 3),
(350, 'Isnaini', '3', '3', '9.00', '', 4, 'Rt 18', '', '2021-05-12 09:26:55', 3),
(351, 'Farochah', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 09:27:11', 3),
(352, 'Agus irawan', '2', '3', '6.00', '', 1, 'Rt 01', '', '2021-05-12 09:27:27', 3),
(353, 'Eni', '1', '3', '3.00', '', 1, 'Rt 01', '', '2021-05-12 09:27:42', 3),
(354, 'M. Shobikh', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 09:28:49', 3),
(355, 'Rumanto', '1', '3', '3.00', '', 7, 'Rt 9 Rw 03', '', '2021-05-12 09:29:13', 3),
(356, 'Baitul Ali', '4', '3', '12.00', '', 2, 'Rt 02 rw 01', '', '2021-05-12 09:36:38', 3),
(357, 'Karniadi', '6', '3', '18.00', '', 3, 'Rt 03', '', '2021-05-12 10:26:32', 3),
(358, 'Nanik', '2', '3', '6.00', '', 5, 'Rt 19', '', '2021-05-12 10:27:03', 3),
(359, 'Agus Setiawan', '4', '3', '12.00', '', 7, 'Rt 17 rw 03', '', '2021-05-12 10:27:29', 3),
(360, 'Indra ramadhan', '1', '3', '3.00', '', 5, 'Rt 19', '', '2021-05-12 10:27:51', 3),
(361, 'Didit', '5', '3', '15.00', '', 2, 'Rt 02', '', '2021-05-12 10:28:11', 3),
(362, 'Sugito', '4', '3', '12.00', '', 2, 'Rt 02', '', '2021-05-12 10:28:37', 3),
(363, 'Aksin', '5', '3', '15.00', '', 2, 'Rt 02', '', '2021-05-12 10:28:57', 3),
(364, 'Fauzi', '5', '3', '15.00', '', 7, 'Lamongan', '', '2021-05-12 10:29:14', 3),
(365, 'Fatkhur', '4', '3', '12.00', '', 4, 'Rt 18', '', '2021-05-12 10:29:34', 3),
(366, 'Ameni', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 10:55:02', 3),
(367, 'Sigit', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 10:56:01', 3),
(368, 'Surendi', '3', '2.8', '8.40', '99000', 7, 'Gang V', '', '2021-05-12 10:56:51', 3),
(369, 'Rendi rusbian', '3', '3', '9.00', '', 4, 'Rt 18 rw 01', '', '2021-05-12 11:00:32', 3),
(370, 'Hendrik', '1', '3', '3.00', '', 5, 'Rt 19\r\n', '', '2021-05-12 11:03:25', 3),
(371, 'Hendrik', '1', '3', '3.00', '', 5, 'RT 19 RW 01', '', '2021-05-12 12:53:59', 12),
(372, 'Moch. Solton', '5', '3', '15.00', '', 1, 'RT 01 RW 01', '', '2021-05-12 12:54:42', 12),
(373, 'Moh. Sofi Agustin', '1', '2.8', '2.80', '33000', 7, 'Balongpoh RT 30 RW 06', '', '2021-05-12 12:55:37', 12),
(374, 'Bapak Sihadi', '6', '3', '18.00', '', 3, 'RT 03 RW 01', '', '2021-05-12 12:56:14', 12),
(375, 'Bapak Khoiri', '2', '3', '6.00', '', 3, 'RT 03 RW 01', '', '2021-05-12 13:03:40', 12),
(376, 'Ade Yudistira', '3', '3', '9.00', '', 6, 'RT 20 RW 01', '', '2021-05-12 13:04:12', 12),
(377, 'Feby Warta', '1', '3', '3.00', '33000', 6, 'RT 20 RW 01', ' ', '2021-05-12 14:57:41', 5),
(378, 'Ibu Endang', '1', '3', '3.00', '', 2, 'RT 02 RW 01', ' ', '2021-05-12 13:06:20', 12),
(379, 'Silvi Puspita', '3', '3', '9.00', '99000', 4, 'RT 18 RW 01', '', '2021-05-12 13:07:19', 12),
(380, 'Farrel', '3', '3', '9.00', '', 6, 'RT 20 RW 01', '', '2021-05-12 13:07:48', 12),
(381, 'Sodikin', '5', '3', '15.00', '', 6, 'RT 20 RW 01', '', '2021-05-12 13:08:26', 12),
(382, 'Agus Baru Yazid', '4', '3', '12.00', '132000', 6, 'RT 20 RW 01', '', '2021-05-12 13:09:13', 12),
(383, 'Qorni\'', '2', '3', '6.00', '', 2, 'RT 02 RW 01', '', '2021-05-12 13:19:22', 12),
(384, 'Moch. Nasrullah', '5', '3', '15.00', '165000', 2, 'RT 02 RW 01', '', '2021-05-12 13:20:39', 12),
(385, 'Bapak Adi Sunaryo', '3', '3', '9.00', '', 5, 'RT 19 RW 01', '', '2021-05-12 13:21:16', 12),
(386, 'Pak Fahmi', '3', '3', '9.00', '', 3, 'RT 03 RW 01', '', '2021-05-12 13:22:10', 12),
(387, 'Pak Handris', '1', '3', '3.00', '', 7, 'Berbek 1G', '', '2021-05-12 13:23:05', 12),
(388, 'Pak Dicky', '4', '2.8', '11.20', '132000', 7, 'Graha Tirta Akasia No.52', '', '2021-05-12 13:23:55', 12),
(389, 'Ibu Pradita', '3', '2.8', '8.40', '99000', 7, 'Gang 5 No.128', '', '2021-05-12 13:24:43', 12),
(390, 'Bu Eka', '5', '3', '15.00', '', 7, 'Gang 5 No. 149', ' ', '2021-05-12 13:51:08', 12),
(391, 'Bpk novan', '3', '3', '9.00', '', 2, 'RT 02', '', '2021-05-12 13:51:48', 12),
(392, 'Maulida', '2', '3', '6.00', '', 5, 'RT19/RW01 Janti', '', '2021-05-12 14:53:54', 5),
(393, 'Bapak Ahmadi', '3', '3', '9.00', '99000', 7, 'Graha Tirta Bougenville', '', '2021-05-12 15:25:24', 5),
(394, 'Ibu Riyanti', '2', '3', '6.00', '66000', 7, 'Graha Tirta Bougenville', '', '2021-05-12 15:26:33', 5),
(395, 'Ibu Sulastri', '4', '3', '12.00', '', 7, 'Janti', '', '2021-05-12 15:27:41', 5),
(396, 'Bapak Andi', '2', '3', '6.00', '66000', 3, 'RT 03 RW 01', '', '2021-05-12 15:29:21', 5),
(397, 'Mas jainul', '4', '3', '12.00', '', 3, 'Rt03', '', '2021-05-12 15:45:20', 5),
(398, 'Bpk Andreyanto', '4', '3', '12.00', '', 5, 'RT19', '', '2021-05-12 15:46:01', 5),
(399, 'Ibu nurhayani', '2', '3', '6.00', '', 5, 'RT19', '', '2021-05-12 15:47:31', 5),
(400, 'Bpk udin', '1', '3', '3.00', '', 2, 'RT02', '', '2021-05-12 15:48:14', 5),
(401, 'Bpk aas', '4', '3', '12.00', '', 3, 'RT03', '', '2021-05-12 15:48:58', 5),
(402, 'Bpk ubed', '2', '3', '6.00', '', 3, 'RT03', '', '2021-05-12 15:51:05', 5),
(403, 'Bpk Junaidi', '1', '3', '3.00', '', 3, 'RT03', '', '2021-05-12 15:52:25', 5),
(404, 'Bpk nais', '1', '3', '3.00', '', 3, 'RT03', '', '2021-05-12 15:53:09', 5),
(405, 'Bpk saiful anam', '2', '3', '6.00', '', 4, 'RT18', '', '2021-05-12 15:54:58', 5),
(406, 'Krisna harimurti', '1', '3', '3.00', '', 7, 'Perum graha tirta', '', '2021-05-12 15:55:47', 5),
(407, 'bpk samsul huda', '4', '2.8', '11.20', '', 6, 'Rt20', '', '2021-05-12 16:22:21', 3),
(408, 'bpk yus', '4', '3', '12.00', '', 4, 'Rt 18', '', '2021-05-12 16:22:41', 3),
(409, 'Su\'eb', '9', '3', '27', '', 4, '', 'trismiyati\r\njatu rachmawati\r\ndadang suryana\r\nhimawan santoso\r\ndaru saroza\r\nhartulis\r\nreisha shelfiera\r\narsy calista putri', '2022-04-24 09:26:24', 5),
(410, 'Trianda Aditya', '3', '5', '15', '0', 7, 'Makarya Blok A 23', 'Nur laba', '2022-04-26 12:52:48', 11),
(411, 'Rumanto', '1', '3', '3', '0', 7, 'Makarya binangun', 'Rekap 26 April', '2022-04-26 12:54:27', 11),
(412, 'Maulana Huda', '2', '3', '6', '0', 7, 'Janti', 'Rekap 26 April', '2022-04-26 12:55:24', 11),
(413, 'Sumarlan', '3', '3', '9', '0', 7, 'Janti', 'Rekap 26 April', '2022-04-26 12:56:02', 11),
(414, 'Noval Aditya', '2', '5', '10', '0', 7, 'Janti', 'Rekap 26 April', '2022-04-26 12:56:44', 11),
(415, 'Bagus Nurya U', '3', '3', '9', '0', 7, 'Janti', 'Rekap 26 April', '2022-04-26 01:02:00', 11),
(416, 'Agus Sugiantoro', '5', '3', '15', '170000', 2, NULL, '', '2022-04-26 02:39:34', 11),
(417, 'A. Muqorrobin', '7', '3', '21', '238000', 7, 'Tropodo', '', '2022-04-26 02:39:24', 11),
(418, 'Ali fathoni', '2', '3', '6', '', 3, NULL, '', '2022-04-26 06:17:18', 23),
(419, 'Ali fatoni', '2', '3', '6', '', 3, '', '', '2022-04-26 08:13:47', 11),
(420, 'Bapak karsimin', '7', '3', '21', '', 2, '', '', '2022-04-26 08:34:14', 11),
(421, 'Susi Dwi W', '2', '3', '6', '0', 7, 'Brigjend Katamso gg patung', '', '2022-04-26 10:23:33', 24),
(422, 'ifan bin umar', '2', '3', '6', '', 7, 'graha tirta', '', '2022-04-27 02:49:29', 11),
(423, 'bapak Asep', '3', '3', '9', '102000', 2, '', '', '2022-04-27 03:20:47', 11),
(424, 'Bapak didik sutrisno', '4', '3', '12', '136000', 3, '', '', '2022-04-27 04:02:23', 11),
(425, 'bapak purwanto', '3', '3', '9', '', 2, '', '', '2022-04-27 04:40:23', 11),
(426, 'bapak miskidi', '2', '3', '6', '', 2, '', '', '2022-04-27 05:04:32', 11),
(427, 'bapak Nafi\' rachmad zulkarnain', '3', '3', '9', '', 5, '', '', '2022-04-27 08:03:39', 11),
(428, 'Ibu Alfi nur rahmawati', '4', '3', '12', '', 2, '', '', '2022-04-27 08:33:32', 11),
(429, 'bapak Udin', '8', '3', '24', '', 3, '', '', '2022-04-27 08:34:10', 11),
(430, 'Bapak Udin', '3', '3', '9', '102000', 2, '', '', '2022-04-27 09:31:25', 11),
(431, 'Muhammad Ghifari ', '1', '3', '3', '34000', 7, 'siwlankerto', '', '2022-04-28 01:52:47', 11),
(432, 'amal', '2', '3', '6', '68000', 4, 'janti', '', '2022-04-28 03:43:26', 11),
(433, 'Salim', '4', '3', '12', '', 2, '', '', '2022-04-28 03:42:00', 11),
(434, 'ardi kus hartantyo', '4', '3', '12', '136000', 7, 'makarya binangun', '', '2022-04-28 04:42:29', 11),
(435, 'paujan', '9', '3', '27', '', 1, '', '', '2022-04-28 05:19:00', 11),
(436, 'rifqi hamdi', '4', '3', '12', '', 2, '', '', '2022-04-28 08:58:25', 11),
(437, 'bima anugrah', '2', '3', '6', '', 2, '', '', '2022-04-28 08:59:02', 11),
(438, 'M ali ibrahim', '4', '3', '12', '', 7, 'jl brigjend katamso 45', '', '2022-04-28 09:00:07', 11),
(439, 'wahyudi', '4', '3', '12', '', 6, '', '', '2022-04-28 09:01:15', 11),
(440, 'Sutoyo', '4', '3', '12', '136000', 3, NULL, '', '2022-04-28 09:11:54', 11),
(441, 'munasan', '5', '3', '15', '', 1, '', '', '2022-04-28 09:58:55', 11),
(442, 'M syafrudin', '4', '3', '12', '', 2, '', '', '2022-04-28 10:05:16', 11),
(443, 'muslich', '1', '3', '3', '34000', 3, '', '', '2022-04-28 11:14:14', 11),
(444, 'Bpk. Adi', '1', '3', '3', '', 1, '', '', '2022-04-29 04:10:07', 11),
(445, 'Ibu Sri Mulyanah', '1', '3', '3', '', 1, '', '', '2022-04-29 04:10:56', 11),
(446, 'Bpk. Puguh Hadi Susanto', '1', '3', '3', '', 1, '', '', '2022-04-29 04:11:44', 11),
(447, 'Ibu Narti', '1', '3', '3', '', 1, '', '', '2022-04-29 04:12:03', 11),
(448, 'Anak Salsabila Elvareta Puri', '1', '3', '3', '', 1, '', '', '2022-04-29 04:13:10', 11),
(449, 'Anak Fayola Dwinda Putri', '1', '3', '3', '', 1, '', '', '2022-04-29 04:13:49', 11),
(450, 'Anak Narel Adien Aditama', '1', '3', '3', '', 1, '', '', '2022-04-29 04:14:42', 11),
(451, 'Ibu Winda Ramadhani Dewi', '1', '3', '3', '', 1, '', '', '2022-04-29 04:15:20', 11),
(452, 'Anak Muhammad Meshach Putra', '1', '3', '3', '', 1, '', '', '2022-04-29 04:15:55', 11),
(453, 'Ibu Yala Permata Ayu Pujiyanto', '1', '3', '3', '', 1, '', '', '2022-04-29 04:16:34', 11),
(454, 'Anak Arsal Radeya Putra Gery', '1', '3', '3', '', 1, '', '', '2022-04-29 04:17:08', 11),
(455, 'weli wardana', '3', '3', '9', '', 6, '', '', '2022-04-29 09:16:59', 11),
(456, 'pak kasimo', '1', '3', '3', '', 5, '', '', '2022-04-29 09:17:44', 11),
(457, 'imama', '1', '3', '3', '', 5, '', '', '2022-04-29 09:18:06', 11),
(458, 'ukaksum', '1', '3', '3', '', 5, '', '', '2022-04-29 09:19:30', 11),
(459, 'lindung S', '1', '6', '6', '', 7, 'wadungasri', '', '2022-04-29 09:21:05', 11),
(460, 'sukandji', '2', '3', '6', '68000', 6, '', '', '2022-04-29 09:21:55', 11),
(461, 'H. Chamim rasyidi', '2', '3', '6', '', 2, '', '', '2022-04-29 09:22:24', 11),
(462, 'bapak abdullah misbaul sholiki', '4', '3', '12', '', 2, '', '', '2022-04-29 10:24:19', 11),
(463, 'bapak saimun', '2', '3', '6', '', 4, '', '', '2022-04-29 11:08:01', 11),
(464, 'yunita', '1', '3', '3', '', 4, '', '', '2022-04-29 11:08:35', 11),
(465, 'putra', '2', '3', '6', '', 4, '', '', '2022-04-29 11:09:12', 11),
(466, 'agus suharto', '3', '3', '9', '', 7, 'KH Malik Dalam', '', '2022-04-29 12:40:12', 11),
(467, 'Ibu Setyaningsih', '2', '3', '6', '', 2, '', '', '2022-04-29 12:45:01', 11),
(468, 'Bapak rodi', '4', '3', '12', '', 2, '', '', '2022-04-29 12:46:01', 11),
(469, 'Bapak dedik', '2', '3', '6', '', 7, 'Makarya binangun', '', '2022-04-29 01:10:30', 11),
(470, 'Bapak Slamet', '5', '3', '15', '', 2, '', '', '2022-04-29 01:12:23', 11),
(471, 'Bapak Tri Wijaya', '3', '3', '9', '', 6, '', '', '2022-04-29 01:33:24', 11),
(472, 'Bapak Nur', '2', '3', '6', '68000', 4, '', '', '2022-04-29 01:34:27', 11),
(473, 'Bapak Mulyadi', '3', '3', '9', '', 4, '', '', '2022-04-29 02:18:25', 11),
(474, 'Bapak francoice', '3', '3', '9', '', 3, '', '', '2022-04-29 03:25:14', 11),
(475, 'Tugino', '2', '3', '6', '', 6, '', '', '2022-04-29 04:18:19', 11),
(476, 'umar anis', '7', '3', '21', '', 7, 'bromelia 12', '', '2022-04-29 04:39:14', 11),
(477, 'bapak sofa', '2', '3', '6', '68000', 4, '', '', '2022-04-29 04:54:12', 11),
(478, 'bapak wawan', '3', '3', '9', '', 5, '', '', '2022-04-29 04:56:39', 11),
(479, 'bapak zainul arip', '4', '3', '12', '136000', 7, 'siwalankerto selatan III no 85', '', '2022-04-29 05:08:31', 11),
(480, 'ibu suharwati', '1', '3', '3', '34000', 7, 'makarya binangun x B', '', '2022-04-29 05:11:07', 11),
(481, 'bapak kadiono', '3', '3', '9', '', 7, 'makarya binangun', '', '2022-04-29 05:16:47', 11),
(482, 'bapak roki', '2', '3', '6', '68000', 3, '', '', '2022-04-29 06:01:09', 11),
(483, 'Bapak ernahadi', '3', '3', '9', '', 5, '', '', '2022-04-29 06:04:47', 11),
(484, 'bapak sotomin', '2', '3', '6', '', 4, '', '', '2022-04-29 06:35:40', 11),
(485, 'bapak miftahudin', '2', '3', '6', '', 5, '', '', '2022-04-29 06:41:18', 11),
(486, 'Ibu Ifa', '3', '3', '9', '102000', 3, '', '', '2022-04-29 07:40:42', 11),
(487, 'bapak suriyanto', '2', '3', '6', '', 3, '', '', '2022-04-29 07:45:36', 11),
(488, 'bapak mahfud', '2', '3', '6', '', 5, '', '', '2022-04-29 07:53:24', 11),
(489, 'ibu suratmi', '1', '3', '3', '', 5, NULL, '', '2022-04-29 07:56:25', 11),
(490, 'bapak herusaputra', '1', '3', '3', '', 5, '', '', '2022-04-29 07:56:01', 11),
(491, 'bapak malik', '1', '3', '3', '', 4, '', '', '2022-04-29 07:57:47', 11),
(492, 'Bapak ronikurdiawan', '4', '3', '12', '', 5, '', '', '2022-04-29 08:00:42', 11),
(493, 'H. Nuril Huda', '7', '3', '21', '', 6, '', '', '2022-04-29 08:11:04', 11),
(494, 'bapak prabowo', '4', '3', '12', '', 1, '', '', '2022-04-29 08:14:03', 11),
(495, 'bpak khambali', '2', '3', '6', '', 2, '', '', '2022-04-29 08:16:16', 11),
(496, 'Imam Harsono', '4', '3', '12', '', 2, '', '', '2022-04-29 08:17:24', 11),
(497, 'anang sumaryo', '3', '3', '9', '', 1, '', '', '2022-04-29 08:24:12', 11),
(498, 'indra ramadhan', '1', '2', '2', '', 5, '', '', '2022-04-29 08:29:48', 11),
(499, 'bpak ahmad baihaki', '3', '3', '9', '', 5, '', '', '2022-04-29 08:30:47', 11),
(500, 'bpak ahmad baihaki', '3', '3', '9', '', 5, '', '', '2022-04-29 08:30:55', 11),
(501, 'bapak burhan', '3', '3', '9', '', 2, '', '', '2022-04-29 08:31:18', 11),
(502, 'ibu ambar wati', '2', '3', '6', '', 4, '', '', '2022-04-29 08:33:55', 11),
(503, 'bapak paijo', '4', '3', '12', '', 5, '', '', '2022-04-29 08:37:39', 11),
(504, 'ibu anah marhana', '2', '3', '6', '', 2, '', '', '2022-04-29 08:50:20', 11),
(505, 'h. jufri', '1', '3', '3', '', 3, '', '', '2022-04-29 09:01:28', 11),
(506, 'bapak julaini', '3', '3', '9', '102000', 1, NULL, '', '2022-04-29 09:51:19', 11),
(507, 'bapak saiful', '2', '3', '6', '', 2, '', '', '2022-04-29 09:42:43', 11),
(508, 'bapak duki randika', '3', '3', '9', '102000', 5, '', '', '2022-04-29 09:50:42', 11),
(509, 'Bapak Sugeng Purnomo', '3', '3', '9', '102000', 5, '', '', '2022-04-30 10:23:33', 11),
(510, 'Rivano Al Zidan ', '1', '3', '3', '', 1, '', '', '2022-04-30 10:24:12', 11),
(511, 'Renova Sektia', '1', '3', '3', '', 1, '', '', '2022-04-30 10:24:46', 11),
(512, 'Bapak Ahmad farid', '3', '3', '9', '', 2, '', '', '2022-04-30 10:25:27', 11),
(513, 'Bapak yis', '5', '3', '15', '', 4, '', '', '2022-04-30 10:27:29', 11),
(514, 'Alva Rovita Nurani', '1', '3', '3', '', 1, '', '', '2022-04-30 10:28:04', 11),
(515, 'Moch Dani Adam ', '1', '3', '3', '', 1, '', '', '2022-04-30 10:28:26', 11),
(516, 'bu Suparti', '2', '3', '6', '', 3, '', '', '2022-04-30 10:28:54', 11),
(517, 'Bapak naimun', '4', '3', '12', '', 3, '', '', '2022-04-30 10:30:09', 11),
(518, 'Bapk Sukur', '2', '3', '6', '', 4, '', '', '2022-04-30 10:30:32', 11),
(519, 'Bapak Mansur ', '4', '3', '12', '', 3, '', '', '2022-04-30 10:31:06', 11),
(520, 'Bapak Edi Santoso', '3', '3', '9', '', 4, '', '', '2022-04-30 10:31:40', 11),
(521, 'Bapak Darlanto', '2', '3', '6', '', 4, '', '', '2022-04-30 10:32:11', 11),
(522, 'Anak Tika', '1', '3', '3', '', 6, '', '', '2022-04-30 10:32:49', 11),
(523, 'Anak Eva', '1', '3', '3', '', 6, '', '', '2022-04-30 10:33:16', 11),
(524, 'Bu Diah ', '1', '3', '3', '', 6, '', '', '2022-04-30 10:34:06', 11),
(525, 'Bapak Cholis', '1', '3', '3', '', 4, '', '', '2022-04-30 10:34:33', 11),
(526, 'Ibu Nur Mahmuda', '2', '3', '6', '', 4, NULL, '', '2022-04-30 10:37:05', 11),
(527, 'Bapak Purnomo', '1', '3', '3', '', 5, '', '', '2022-04-30 10:38:18', 11),
(528, 'hendrik Gunawan', '1', '3', '3', '', 5, '', '', '2022-04-30 10:38:45', 11),
(529, 'Ibu Nanik', '1', '3', '3', '', 5, '', '', '2022-04-30 10:39:11', 11),
(530, 'Bapak Aan ', '4', '3', '12', '136000', 4, '', '', '2022-04-30 10:40:19', 11),
(531, 'Bapak Iman', '2', '3', '6', '', 7, 'Wedoro PP', '', '2022-04-30 10:41:59', 11),
(532, 'Bapak Supriyanto', '3', '3', '9', '', 3, '', '', '2022-04-30 10:42:28', 11),
(533, 'Bapak Ariyo Anggroro', '3', '3', '9', '102000', 7, 'kedung rejo', '', '2022-04-30 10:45:30', 11),
(534, 'Ibu Nur ', '1', '3', '3', '', 5, '', '', '2022-04-30 10:47:54', 11),
(535, 'Mbak Lia', '1', '3', '3', '34000', 5, NULL, '', '2022-04-30 10:49:44', 11),
(536, 'Naufal', '1', '3', '3', '34000', 5, '', '', '2022-04-30 10:49:10', 11),
(537, 'Bapak Haris', '1', '3', '3', '34000', 5, '', '', '2022-04-30 10:50:53', 11),
(538, 'Bapak Sulanto', '4', '3', '12', '', 5, '', '', '2022-04-30 10:51:41', 11),
(539, 'Bapak Dauid', '3', '3', '9', '', 4, NULL, '', '2022-04-30 10:55:04', 11),
(540, 'Bapak Muji Surahman', '5', '3', '15', '', 4, '', '', '2022-04-30 10:56:44', 11),
(541, 'Siti jamila', '1', '3', '3', '', 5, '', '', '2022-04-30 11:12:09', 11),
(542, 'Bapak jalil', '4', '3', '12', '136000', 5, NULL, '', '2022-04-30 11:38:56', 11),
(543, 'ragil satriyo', '1', '3', '3', '', 5, '', '', '2022-04-30 12:16:43', 11),
(544, 'arzan', '1', '3', '3', '', 7, 'tropodo', '', '2022-04-30 12:31:10', 11),
(545, 'Pak Zakaria', '3', '3', '9', '', 3, '', '', '2022-04-30 01:14:34', 11),
(546, 'sukaji', '1', '3', '3', '', 4, '', '', '2022-04-30 02:14:07', 24),
(547, 'm fahrul ulum', '1', '3', '3', '', 3, '', '', '2022-04-30 02:14:56', 24),
(548, 'Hermanto', '1', '3', '3', '', 4, '', '', '2022-04-30 03:33:00', 11),
(549, 'bapak luth', '3', '3', '9', '102000', 2, '', '', '2022-04-30 03:35:51', 11),
(550, 'bapak yuli', '1', '3', '3', '', 4, '', '', '2022-04-30 03:36:24', 11),
(551, 'bapak rasmadi', '2', '3', '6', '', 3, '', '', '2022-04-30 03:37:05', 11),
(552, 'Bapak Sukirman', '6', '3', '18', '', 1, '', '', '2022-04-30 03:43:23', 11),
(553, 'luqman david', '2', '3', '6', '68000', 2, '', '', '2022-04-30 03:50:35', 11),
(554, 'Bapak Muhammad Arif Riyanto', '5', '3', '15', '', 1, '', '', '2022-04-30 03:57:03', 5),
(555, 'Bapak Sadali', '3', '3', '9', '', 2, '', '', '2022-04-30 04:04:13', 11),
(556, 'Bapak Setio', '2', '3', '6', '', 7, 'Kepuh kiriman ', '', '2022-04-30 04:06:54', 11),
(557, 'Bapak Suyanto', '3', '3', '9', '', 7, '', '', '2022-04-30 04:11:27', 11),
(558, 'Ibu Khusnul', '2', '3', '6', '', 3, '', '', '2022-04-30 04:18:37', 11),
(559, 'Bapak Budi Suprianto', '4', '3', '12', '', 6, '', '', '2022-04-30 04:19:57', 11),
(560, 'bapak imam santoso', '2', '3', '6', '', 1, '', '', '2022-04-30 04:30:24', 11),
(561, 'bapak gatot bijantoro', '3', '3', '9', '', 6, '', '', '2022-04-30 04:37:41', 11),
(562, 'bapak syahroni', '1', '3', '3', '34000', 7, 'perum Makarya Binangun', '', '2022-04-30 04:45:09', 11),
(563, 'bapak edi purwanto', '3', '3', '9', '', 7, 'katamso 2c 6a', '', '2022-04-30 04:47:14', 11),
(564, 'bapak rochmat t', '5', '3', '15', '', 1, '', '', '2022-04-30 04:48:13', 11),
(565, 'Fajar Rohmatullah', '5', '3', '15', '', 1, '', '', '2022-04-30 04:50:09', 11),
(566, 'Bapak usman', '2', '3', '6', '', 3, '', '', '2022-04-30 04:50:39', 11),
(567, 'Bapak Muh hasyim', '3', '3', '9', '', 1, '', '', '2022-04-30 04:51:41', 11),
(568, 'Bapak H Prapto', '1', '3', '3', '', 4, '', '', '2022-04-30 04:53:47', 11),
(569, 'Bapak Khoirudin', '4', '3', '12', '', 2, '', '', '2022-04-30 04:57:49', 11),
(570, 'Bapak Moch guntur', '1', '3', '3', '', 2, NULL, '', '2022-04-30 05:01:36', 11),
(571, 'Danis Alfarizi Setiawan', '1', '3', '3', '', 2, '', '', '2022-04-30 05:02:57', 11),
(572, 'Bapak Nur', '2', '3', '6', '', 2, '', '', '2022-04-30 05:07:59', 11);
INSERT INTO `tbl_zakat_fitrah` (`id_zakat_fitrah`, `nama_pemberi_zakat_fitrah`, `besaran_jiwa`, `berat_beras`, `total_beras`, `uang`, `alamat`, `alamat_lainnya`, `keterangan`, `tanggal`, `petugas`) VALUES
(573, 'Bapak Moch Solton', '3', '3', '9', '', 1, '', '', '2022-04-30 05:12:05', 11),
(574, 'bapak nanang', '6', '3', '18', '', 2, '', '', '2022-04-30 06:05:38', 5),
(575, 'Bapak Hariono', '4', '3', '12', '', 2, '', '', '2022-04-30 06:09:59', 11),
(576, 'Bapak riyadi', '9', '3', '27', '', 2, '', '', '2022-04-30 06:16:23', 11),
(577, 'bapak firman', '3', '3', '9', '', 4, '', '', '2022-04-30 06:16:58', 11),
(578, 'bu sriamah', '2', '3', '6', '', 2, '', '', '2022-04-30 06:17:52', 11),
(579, 'Bapak Rudi Isnawan', '4', '3', '12', '', 4, '', '', '2022-04-30 06:26:54', 11),
(580, 'Bapak Mahmud', '3', '3', '9', '', 4, '', '', '2022-04-30 06:38:16', 11),
(581, 'Belfi anjaudi', '1', '3', '3', '', 3, '', '', '2022-04-30 06:39:36', 11),
(582, 'Bapak Saiful Hadi', '3', '3', '9', '', 4, NULL, '', '2022-04-30 06:46:02', 11),
(583, 'abdul aziz ', '1', '3', '3', '34000', 2, '', '', '2022-04-30 07:19:57', 11),
(584, 'Ibu Aminah', '2', '3', '6', '68000', 1, '', '', '2022-04-30 07:50:45', 11),
(585, 'Bapak juli eko sumadi anto', '5', '3', '15', '170000', 7, 'makarya binangun', '', '2022-04-30 07:52:55', 11),
(586, 'Bapak Edi Sutrisno', '3', '3', '9', '', 6, '', '', '2022-04-30 07:55:10', 11),
(587, 'Ibu Yusi', '3', '3', '9', '', 6, '', '', '2022-04-30 07:58:55', 11),
(588, 'Bapak Sudarto', '3', '3', '9', '', 3, '', '', '2022-04-30 07:59:25', 11),
(589, 'Bapak Wahyu Shidiq', '4', '4', '16', '', 3, '', '', '2022-04-30 07:59:51', 11),
(590, 'Ibu lailtul istiqomah', '2', '3', '6', '', 3, NULL, '', '2022-04-30 08:01:24', 11),
(591, 'Bapak pulung', '5', '3', '15', '170000', 7, 'Graha Tirta', '', '2022-04-30 08:03:34', 11),
(592, 'Bapak Arif Yulianto', '6', '3', '18', '', 2, '', '', '2022-04-30 08:04:22', 11),
(593, 'Bapak Jawri', '4', '3', '12', '', 2, '', '', '2022-04-30 08:05:03', 11),
(594, 'Bapak Irianto', '3', '3', '9', '', 2, '', '', '2022-04-30 08:06:32', 11),
(595, 'Bapak Sunarto', '4', '4', '16', '', 4, '', '', '2022-04-30 08:06:58', 11),
(596, 'Bapak tawarianto', '2', '3', '6', '', 4, '', '', '2022-04-30 08:07:51', 11),
(597, 'Ibu fathona', '3', '3', '9', '', 3, '', '', '2022-04-30 08:09:00', 11),
(598, 'Bapak Sunarto', '5', '3', '15', '', 5, '', '', '2022-04-30 08:09:37', 11),
(599, 'Bapak Sunari', '6', '3', '18', '', 2, '', '', '2022-04-30 08:10:37', 11),
(600, 'Bapak Kholil', '5', '3', '15', '', 3, '', '', '2022-04-30 08:11:04', 11),
(601, 'Bapak Adit', '4', '3', '12', '', 7, 'Ngingas RT 08', '', '2022-04-30 08:13:02', 11),
(602, 'Bapak Kudus', '3', '3', '9', '', 2, '', '', '2022-04-30 08:13:22', 11),
(603, 'Ibu  Turida', '4', '3', '12', '', 2, '', '', '2022-04-30 08:14:30', 11),
(604, 'Bapak Yogi', '13', '3', '39', '', 5, '', '', '2022-04-30 08:15:28', 11),
(605, 'Bapak David ', '3', '3', '9', '', 2, '', '', '2022-04-30 08:16:29', 11),
(606, 'Bapak samsul ', '4', '3', '12', '', 2, '', '', '2022-04-30 08:16:47', 11),
(607, 'Bapak Taufik', '2', '3', '6', '', 6, '', '', '2022-04-30 08:17:07', 11),
(608, 'Bapak Mulyantoso', '2', '3', '6', '', 5, '', '', '2022-04-30 08:17:33', 11),
(609, 'Bapak Heru', '3', '3', '9', '', 2, '', '', '2022-04-30 08:17:51', 11),
(610, 'Bu zahro', '2', '3', '6', '', 2, '', '', '2022-04-30 08:18:08', 11),
(611, 'bapak samian', '4', '3', '12', '', 1, '', '', '2022-04-30 08:19:33', 11),
(612, 'Sahut Safiul', '1', '3', '3', '', 1, '', '', '2022-04-30 08:21:10', 11),
(613, 'Bapak Choirul Anam', '1', '3', '3', '', 1, '', '', '2022-04-30 08:21:50', 11),
(614, 'Ibu Fitri Nurvita', '1', '3', '3', '', 1, '', '', '2022-04-30 08:22:09', 11),
(615, 'Anak Moch. Alif Putra R.', '1', '3', '3', '', 1, '', '', '2022-04-30 08:23:25', 11),
(616, 'Bapak Soemadi', '1', '3', '3', '', 1, '', '', '2022-04-30 08:23:53', 11),
(617, 'Bapak Syamsul huda', '5', '3', '15', '', 2, '', '', '2022-04-30 08:24:15', 11),
(618, 'Ibu Painah ', '1', '3', '3', '', 1, '', '', '2022-04-30 08:24:16', 11),
(619, 'Ibu Masru\'in', '1', '3', '3', '', 1, '', '', '2022-04-30 08:24:37', 11),
(620, 'Bapak aris budiono', '2', '3', '6', '', 2, '', '', '2022-04-30 08:24:43', 11),
(621, 'Ulil Albab', '1', '3', '3', '', 1, '', '', '2022-04-30 08:24:52', 11),
(622, 'Pak Musliman', '4', '3', '12', '', 1, NULL, '1. Musliman\r\n2. Ulfa Ernawati\r\n3. Ijas Makul\r\n4. Aufal makrum\r\n', '2022-04-30 08:27:16', 11),
(623, 'Bapak Baitul alim', '3', '3', '9', '', 2, '', '', '2022-04-30 08:30:47', 11),
(624, 'Bapak jalil', '1', '3', '3', '', 2, '', '', '2022-04-30 08:31:08', 11),
(625, 'Bapak jalil', '1', '3', '3', '', 2, '', '', '2022-04-30 08:31:08', 11),
(626, 'Ibu Nisful Laili', '5', '3', '15', '', 1, '', '1. Nisful Laili\r\n2. Saiful Hamzah\r\n3. Lia Mey\r\n4. Muhammad Aldiansyah\r\n5. Muhammad Alfiansyah', '2022-04-30 08:32:06', 11),
(627, 'Ibu zakiyah', '4', '3', '12', '', 3, '', '', '2022-04-30 08:32:33', 11),
(628, 'Anak Lailatul Aulia Rohmah', '1', '3', '3', '', 1, '', '', '2022-04-30 08:33:04', 11),
(629, 'Ibu ovi', '3', '3', '9', '', 3, '', '', '2022-04-30 08:33:36', 11),
(630, 'Bapak makmun', '4', '3', '12', '', 2, '', '', '2022-04-30 08:34:08', 11),
(631, 'Ibu misni', '2', '3', '6', '', 5, '', '', '2022-04-30 08:34:25', 11),
(632, 'Bapak Jito', '3', '3', '9', '', 1, '', '1. Pak Jito\r\n2. Ibu Aminah\r\n3. Anak Ardian', '2022-04-30 08:36:19', 11),
(633, 'Siti Khomsatun', '1', '3', '3', '', 1, '', '', '2022-04-30 08:38:25', 11),
(634, 'Bapak Supriadi', '4', '3', '12', '136000', 2, '', '', '2022-04-30 08:41:37', 11),
(635, 'Bapak syaifali', '3', '3', '9', '102000', 2, '', '', '2022-04-30 08:42:54', 11),
(636, 'Bapak wisnuril', '3', '3', '9', '', 3, '', '', '2022-04-30 08:47:02', 11),
(637, 'Bapak sugito', '4', '3', '12', '', 2, '', '', '2022-04-30 08:47:38', 11),
(638, 'Bapak Suwarto', '7', '3', '21', '', 6, '', '', '2022-04-30 08:47:58', 11),
(639, 'Bapak arif', '4', '3', '12', '136000', 4, '', '', '2022-04-30 08:48:17', 11),
(640, 'Bapak Qornik', '3', '3', '9', '', 2, '', '', '2022-04-30 08:48:39', 11),
(641, 'Bapak Yasin', '3', '3', '9', '', 5, '', '', '2022-04-30 08:51:20', 26),
(642, 'Bapak Heru', '4', '3', '12', '', 5, '', '', '2022-04-30 08:53:26', 26),
(643, 'Bapak Andre', '3', '3', '9', '', 5, '', '', '2022-04-30 08:53:50', 26),
(644, 'Andika', '3', '3', '9', '', 5, '', '', '2022-04-30 08:54:19', 26),
(645, 'Bapak Khozin', '2', '3', '6', '', 5, '', '', '2022-04-30 08:54:58', 26),
(646, 'Bapak Tholib', '5', '3', '15', '', 5, '', '', '2022-04-30 08:55:18', 26),
(647, 'Bapak Adi', '3', '3', '9', '', 5, '', '', '2022-04-30 08:55:40', 26),
(648, 'Bapak Agus ', '5', '3', '15', '', 4, '', '', '2022-04-30 08:59:41', 11),
(649, 'Ibu h chodijah', '3', '3', '9', '', 2, '', '', '2022-04-30 09:00:49', 11),
(650, 'Bapak heri', '1', '2', '2', '', 4, '', '', '2022-04-30 09:07:13', 11),
(651, 'Bapak rahman', '3', '3', '9', '', 2, '', '', '2022-04-30 09:08:19', 11),
(652, 'Bapak minto', '2', '3', '6', '', 6, '', '', '2022-04-30 09:08:46', 11),
(653, 'Bapak Firman', '3', '3', '9', '', 5, '', '', '2022-04-30 09:17:41', 26),
(654, 'Bapak Firman', '3', '3', '9', '', 5, '', '', '2022-04-30 09:17:41', 26),
(655, 'Bapak Mujianto', '4', '3', '12', '', 5, '', '', '2022-04-30 09:18:03', 26),
(656, 'Firman Firdaus', '1', '2.8', '2.8', '34000', 1, '', 'Programmer nginput dewe hHahaha', '2022-04-30 09:18:31', 3),
(657, 'Bapak Bambang H', '3', '3', '9', '', 5, '', '', '2022-04-30 09:18:32', 26),
(658, 'bapak yanto', '5', '3', '15', '', 3, '', '', '2022-04-30 09:19:47', 11),
(659, 'Bapak Nasichin Setiyanto', '4', '3', '12', '', 1, '', '1. Nasichin Setiyanto\r\n2. Mawar Riyanti\r\n3. Destyana \r\n4. Aura', '2022-04-30 09:25:55', 11),
(660, 'bapak sutomo', '5', '3', '15', '', 1, '', '', '2022-04-30 09:27:53', 11),
(661, 'bapak ainul ', '2', '3', '6', '', 1, '', '', '2022-04-30 09:29:12', 11),
(662, 'Bp. ponco', '4', '3', '12', '', 6, '', '', '2022-04-30 09:31:49', 21),
(663, 'Bp.misdan', '2', '3', '6', '', 6, '', '', '2022-04-30 09:32:25', 21),
(664, 'Bp.yauman', '3', '3', '9', '', 6, '', '', '2022-04-30 09:32:45', 21),
(665, 'nizar', '4', '3', '12', '', 6, '', '', '2022-04-30 09:33:11', 21),
(666, 'mugiono', '3', '3', '9', '', 6, '', '', '2022-04-30 09:33:34', 21),
(667, 'amin', '3', '3', '9', '', 6, '', '', '2022-04-30 09:33:51', 21),
(668, 'parni', '5', '3', '15', '', 6, '', '', '2022-04-30 09:34:34', 21),
(669, 'basori', '4', '3', '12', '', 6, '', '', '2022-04-30 09:34:53', 21),
(670, 'sarif', '3', '3', '9', '', 6, '', '', '2022-04-30 09:35:13', 21),
(671, 'muji', '5', '3', '15', '', 6, '', '', '2022-04-30 09:35:35', 21),
(672, 'sumaryanto', '4', '3', '12', '', 6, '', '', '2022-04-30 09:36:30', 21),
(673, 'udon', '5', '3', '15', '', 6, '', '', '2022-04-30 09:37:15', 21),
(674, 'feri', '3', '3', '9', '', 6, '', '', '2022-04-30 09:37:40', 21),
(675, 'mislan', '4', '3', '12', '', 6, '', '', '2022-04-30 09:38:04', 21),
(676, 'bisar', '4', '3', '12', '', 6, '', '', '2022-04-30 09:38:20', 21),
(677, 'hadi', '3', '3', '9', '', 6, '', '', '2022-04-30 09:38:37', 21),
(678, 'mahfud', '4', '3', '12', '', 6, '', '', '2022-04-30 09:39:01', 21),
(679, 'siswanto', '3', '3', '9', '', 6, '', '', '2022-04-30 09:39:53', 21),
(680, 'beker', '4', '3', '12', '', 6, '', '', '2022-04-30 09:40:40', 21),
(681, 'H.kadar', '7', '3', '21', '', 6, '', '', '2022-04-30 09:42:12', 21),
(682, 'M.imam', '5', '3', '15', '', 6, '', '', '2022-04-30 09:42:37', 21),
(683, 'gafar', '6', '3', '18', '', 6, '', '', '2022-04-30 09:43:21', 21),
(684, 'antok', '5', '3', '15', '', 6, '', '', '2022-04-30 09:44:55', 21),
(685, 'agus', '3', '3', '9', '', 6, '', '', '2022-04-30 09:45:46', 21),
(686, 'sukani', '1', '3', '3', '', 6, '', '', '2022-04-30 09:46:14', 21),
(687, 'sodiqin', '3', '3', '9', '', 6, '', '', '2022-04-30 09:46:33', 21),
(688, 'haristiono', '3', '3', '9', '', 6, '', '', '2022-04-30 09:46:58', 21),
(689, 'khoirul mustain', '3', '3', '9', '', 6, '', '', '2022-04-30 09:47:27', 21),
(690, 'ibu ameni', '2', '3', '6', '', 4, '', '', '2022-04-30 09:49:05', 11),
(691, 'ari', '4', '3', '12', '', 6, '', '', '2022-04-30 09:52:12', 21),
(692, 'Bapak Firman', '3', '3', '9', '', 5, '', '', '2022-04-30 09:52:28', 26),
(693, 'rizal', '2', '3', '6', '', 6, '', '', '2022-04-30 09:52:30', 21),
(694, 'Bpk Mujianto', '4', '3', '12', '', 5, '', '', '2022-04-30 09:53:21', 26),
(695, 'andhi m', '4', '3', '12', '', 6, '', '', '2022-04-30 09:53:24', 21),
(696, 'Bpk Bambang H', '3', '3', '9', '', 5, '', '', '2022-04-30 09:53:41', 26),
(697, 'haru', '3', '3', '9', '', 6, '', '', '2022-04-30 09:58:21', 21),
(698, 'Ibu Sri mulyaningati', '5', '3', '15', '', 1, '', '1. Ibu Jaitun\r\n2. Sri Mulyaningati\r\n3. Pameilla Nur Rahayu\r\n4. Corry Agnes Gradini\r\n5. Chantiqa Putri Fandini', '2022-04-30 10:00:13', 11),
(699, 'Bapak jerfri', '3', '3', '9', '', 5, '', '', '2022-04-30 10:02:12', 11),
(700, 'M. Syafi\'i ', '5', '3', '15', '', 1, '', '1. M. Syafi\'i\r\n2. Elvina\r\n3. Rianah\r\n4. Poniati\r\n5. Hani', '2022-04-30 10:07:59', 11),
(701, 'Ibu fida', '3', '5', '15', '', 4, '', '', '2022-04-30 10:08:43', 11),
(702, 'Bapak yanuar', '3', '3', '9', '', 3, '', '', '2022-04-30 10:17:17', 11),
(703, 'Bapak suwono', '4', '3', '12', '', 3, '', '', '2022-04-30 10:17:59', 11),
(704, 'Keluarga Bpk Haryanto', '4', '3', '12', '136000', 1, '', 'Zakat berupa uang untuk 4 jiwa, per jiwa 34k :\r\n1. Bpk. Haryanto\r\n2. Bella\r\n3. Adek Bayi\r\n4. bu Soleha', '2022-04-30 10:33:11', 11),
(705, 'Bapak abdul karim', '2', '3', '6', '', 2, '', '', '2022-04-30 10:33:35', 11),
(706, 'Keluarga Bapak Sholeh', '3', '3', '9', '102000', 1, '', 'Zakat berupa uang untuk 3 jiwa, per jiwa 34k :\r\n1. Bpk Sholeh\r\n2. Ibu Suhati\r\n3. Imah', '2022-04-30 10:35:10', 11),
(707, 'Yoyok Wijayanto', '3', '3', '9', '', 1, NULL, '1. Yoyok Wijayanto\r\n2. Fika Izzatun Nisa\r\n3. Hafidzah Khairun Nisa', '2022-04-30 10:47:09', 11),
(708, 'Rahayu', '0', '0', '0', '', 1, NULL, '', '2022-05-01 12:16:20', 11),
(709, 'bp abdul ghofur', '4', '3', '12', '', 2, '', '', '2022-04-30 10:58:03', 11),
(710, 'bp tohir', '4', '3', '12', '', 3, '', '', '2022-04-30 11:07:01', 11),
(711, 'Ibu syanti dewi', '1', '3', '3', '34000', 7, 'wisma tropodo', '', '2022-04-30 11:17:12', 11),
(712, 'Ibu rahayu', '2', '3', '6', '68000', 1, '', '', '2022-04-30 11:21:41', 11),
(713, 'BPK hariyanto', '0', '0', '0', '0', 1, NULL, '', '2022-05-01 12:36:13', 24),
(714, 'Bpk sholeh', '0', '0', '0', '0', 1, NULL, '', '2022-05-01 12:30:42', 24),
(715, 'andika', '4', '3', '12', '136000', 7, 'deltasari indah', '', '2022-04-30 11:42:13', 11),
(716, 'risqi alfian', '4', '3', '12', '136000', 7, 'tambak rejo', '', '2022-04-30 11:55:55', 11),
(717, 'Eka Yulia Sri', '3', '3', '9', '', 4, '', '', '2022-05-01 10:19:33', 25),
(718, 'Bapak imam syafi\'i ', '2', '3', '6', '', 1, '', '1. Bapak imam syafi\'i\r\n2. Ibu nur azizah', '2022-05-01 10:22:10', 11),
(719, 'Riyadus shalihin', '4', '3', '12', '136000', 2, '', '', '2022-05-01 10:22:49', 5),
(720, 'Hendri', '3', '3', '9', '', 4, '', '', '2022-05-01 10:23:40', 5),
(721, 'Agustina rahayu', '1', '3', '3', '', 1, '', '', '2022-05-01 10:24:18', 5),
(722, 'Adia naswa kirana', '1', '3', '3', '', 1, '', '', '2022-05-01 10:25:11', 5),
(723, 'Amin', '2', '3', '6', '', 3, '', '', '2022-05-01 10:34:55', 5),
(724, 'Bapak Guntur', '6', '3', '18', '', 7, 'Wedoro', '', '2022-05-01 10:35:42', 5),
(725, 'Rachmad Rahadian', '3', '3', '9', '', 1, '', '', '2022-05-01 10:38:01', 5),
(726, 'Tri kardi s', '2', '3', '6', '', 5, '', '', '2022-05-01 10:41:03', 5),
(727, 'Maritza Saffana', '2', '3', '6', '', 7, 'Pengkol', '', '2022-05-01 10:54:22', 5),
(728, 'mujiono', '5', '3', '15', '', 5, '', '', '2022-05-01 11:00:22', 5),
(729, 'm zahid', '1', '3', '3', '34000', 6, NULL, '', '2022-05-01 11:02:09', 5),
(730, 'bpk saichu', '3', '3', '9', '', 2, '', '', '2022-05-01 11:03:20', 5),
(731, 'bp agung', '5', '3', '15', '', 2, '', '', '2022-05-01 11:04:10', 5),
(732, 'bpk arifin', '2', '3', '6', '', 1, '', '', '2022-05-01 11:04:51', 5),
(733, 'bpk dodik', '6', '3', '18', '204000', 6, '', '', '2022-05-01 11:06:01', 5),
(734, 'achmad sholeh', '3', '3', '9', '102000', 1, '', '', '2022-05-01 11:07:05', 5),
(735, 'bpk eko', '2', '3', '6', '', 3, '', '', '2022-05-01 11:07:38', 5),
(736, 'bapak sigit', '4', '3', '12', '', 2, '', '', '2022-05-01 11:20:51', 5),
(737, 'bpk subroto', '4', '3', '12', '', 4, '', '', '2022-05-01 11:22:24', 5),
(738, 'bpk ali maskur', '1', '3', '3', '34000', 6, '', '', '2022-05-01 11:23:05', 5),
(739, 'ustd abdi', '2', '3', '6', '', 2, '', '', '2022-05-01 11:26:28', 11),
(740, 'ibu siti nur hasanah', '3', '3', '9', '', 1, '', '', '2022-05-01 11:27:43', 11),
(741, 'amin', '2', '3', '6', '', 6, '', '', '2022-05-01 11:28:11', 11),
(742, 'usman ali', '3', '3', '9', '', 3, '', '', '2022-05-01 11:28:42', 11),
(743, 'bpk abdul rokhim', '1', '3', '3', '', 4, '', '', '2022-05-01 11:29:25', 11),
(744, 'bpk catur purwoto', '4', '3', '12', '', 6, '', '', '2022-05-01 11:30:23', 11),
(745, 'heri priono', '5', '3', '15', '', 7, 'graha tirta ', '', '2022-05-01 11:31:24', 11),
(746, 'ibu siti marufah', '4', '3', '12', '', 6, '', '', '2022-05-01 11:32:25', 11),
(747, 'bp agus bahrudin', '3', '3', '9', '102000', 2, '', '', '2022-05-01 11:33:40', 11),
(748, 'bp zainuri', '2', '3', '6', '', 3, '', '', '2022-05-01 11:34:16', 11),
(749, 'ibu asma', '5', '3', '15', '', 6, '', '', '2022-05-01 11:34:56', 11),
(750, 'bp sobik', '2', '3', '6', '', 4, '', '', '2022-05-01 11:35:22', 11),
(751, 'muchamad riyanto', '5', '3', '15', '170000', 7, 'graha tirta kalista no.114', '', '2022-05-01 11:37:04', 11),
(752, 'bp bambang', '3', '3', '9', '', 3, '', '', '2022-05-01 11:37:54', 11),
(753, 'ibu indah', '2', '3', '6', '68000', 2, '', '', '2022-05-01 11:38:36', 11),
(754, 'bpk fathkur', '5', '3', '15', '', 4, '', '', '2022-05-01 11:39:24', 11),
(755, 'bp bayu', '5', '3', '15', '170000', 2, '', '', '2022-05-01 11:40:17', 11),
(756, 'mas habib', '1', '3', '3', '', 1, '', '', '2022-05-01 11:41:05', 11),
(757, 'ibu suhemi', '3', '3', '9', '', 6, '', '', '2022-05-01 11:41:43', 11),
(758, 'ibu farochah', '2', '3', '6', '', 4, '', '', '2022-05-01 11:42:14', 11),
(759, 'bpk novan', '4', '3', '12', '', 2, '', '', '2022-05-01 11:43:14', 11),
(760, 'bpk imam syafii', '3', '3', '9', '', 6, '', '', '2022-05-01 11:43:50', 11),
(761, 'ustd abd rosyid', '3', '3', '9', '', 2, '', '', '2022-05-01 11:44:24', 11),
(762, 'bpk agus ', '4', '3', '12', '', 2, '', '', '2022-05-01 11:44:55', 11),
(763, 'ibu arik', '3', '3', '9', '102000', 2, '', '', '2022-05-01 11:45:45', 11),
(764, 'bpk panut', '2', '3', '6', '68000', 2, '', '', '2022-05-01 11:46:07', 11),
(765, 'bpk jatmiko', '4', '3', '12', '', 4, '', '', '2022-05-01 11:46:48', 11),
(766, 'bpk jawani', '6', '3', '18', '', 2, '', '', '2022-05-01 11:47:14', 11),
(767, 'ibu farakha', '1', '3', '3', '', 4, '', '', '2022-05-01 11:47:42', 11),
(768, 'bpk rofik', '1', '3', '3', '', 5, '', '', '2022-05-01 11:48:03', 11),
(769, 'bpk syaifudin', '5', '3', '15', '', 3, '', '', '2022-05-01 11:48:44', 11),
(770, 'ibu muntiana', '2', '3', '6', '', 6, '', '', '2022-05-01 11:49:16', 11),
(771, 'ahmad syahroni', '3', '3', '9', '', 6, '', '', '2022-05-01 11:49:47', 11),
(772, 'ibu Sri Wahyuningati', '2', '3', '6', '', 2, '', '', '2022-05-01 11:55:55', 11),
(773, 'Bpk Achsin', '4', '3', '12', '', 2, '', '', '2022-05-01 12:05:22', 11),
(774, 'Bpk Arifin', '3', '3', '9', '', 7, 'wedoro candi gg pangkalan angguna no 40', '', '2022-05-01 12:09:53', 11),
(775, 'Bpk Didik', '4', '3', '12', '', 4, '', '', '2022-05-01 12:23:07', 11),
(776, 'bapak miftakhurrozak', '5', '3', '15', '', 4, '', '', '2022-05-01 01:01:32', 11),
(777, 'bpak fatkhul', '2', '3', '6', '', 2, '', '', '2022-05-01 01:06:17', 11),
(778, 'bapak isyanto', '1', '3', '3', '', 3, '', '', '2022-05-01 01:06:37', 11),
(779, 'bapak rizky', '7', '2.8', '19.5999999', '', 7, 'Kepuh kiriman ', '', '2022-05-01 01:15:45', 11),
(780, 'Ibu anisa', '1', '5', '5', '', 1, '', '', '2022-05-01 01:41:35', 11),
(781, 'samba', '2', '3', '6', '', 1, '', '', '2022-05-01 02:30:10', 11),
(782, 'bapak didit', '5', '3', '15', '', 2, '', '', '2022-05-01 02:39:36', 11),
(783, 'bapak farid', '4', '3', '12', '', 3, '', '', '2022-05-01 02:40:37', 11),
(784, 'ustd lazwar bachri', '4', '3', '12', '', 3, '', '', '2022-05-01 02:49:20', 11),
(785, 'ibu siti muawiyah', '1', '3', '3', '', 3, '', '', '2022-05-01 02:49:49', 11),
(786, 'Apan', '3', '3', '9', '', 4, NULL, 'Ibu Alfi, Bapak Ismu Hadi', '2022-05-01 03:18:45', 11),
(787, 'Bapak Junet', '3', '2.8', '8.39999999', '102000', 3, '', '', '2022-05-01 03:25:59', 11),
(788, 'Bapak Imron', '4', '2.8', '11.2', '136000', 2, NULL, '', '2022-05-01 03:27:38', 11),
(789, 'Umar Muafiq', '2', '3', '6', '', 3, '', 'Hasbala ma\'ruf', '2022-05-01 03:37:56', 11),
(790, 'Saptono', '3', '2.8', '8.39999999', '102000', 7, 'Krian', 'Anita Rini p.  sandi Aulia ', '2022-05-01 03:46:31', 3),
(791, 'Bapak Gondan ', '4', '3', '12', '', 7, '', 'Gondan dan sekeluarga', '2022-05-01 03:56:17', 11),
(792, 'Ibu Lik Amah', '1', '3', '3', '', 7, 'graha tirta', '', '2022-05-01 03:59:07', 11),
(793, 'Muhammad Yasin', '4', '3', '12', '', 1, '', '', '2022-05-01 04:02:13', 11),
(794, 'Lillah', '4', '3', '12', '136000', 7, 'graha tirta bromelia', 'Lillah Sekeluarga', '2022-05-01 04:04:21', 11),
(795, 'Dono', '4', '3', '12', '', 5, '', 'Satria\r\nKevin\r\nErwin\r\n', '2022-05-01 04:06:24', 11),
(796, 'Ibu Suwarti', '3', '3', '9', '102000', 7, 'bandel', 'Wahyu Timur w\r\nYuke Ery N', '2022-05-01 04:09:22', 11),
(797, 'Pak Mario', '10', '3', '30', '', 1, '', '', '2022-05-01 04:30:58', 11),
(798, 'Moch Nasrul', '5', '2.8', '14', '170000', 2, '', 'Hensriyani, Fauzan, Hamdi, ayila', '2022-05-01 05:02:13', 11),
(799, 'Reismu Biondi', '1', '5', '5', '', 7, 'Rungkut asri Utara 14 No 2', '', '2022-05-01 05:06:22', 11),
(800, 'Juwanto', '2', '5', '10', '', 6, '', '', '2022-05-01 05:17:57', 11),
(801, 'bapak yudha', '7', '3', '21', '238000', 7, 'kalijudan taruna 2', '', '2022-05-01 06:06:09', 11),
(802, 'bapak sihadi', '6', '3', '18', '', 3, '', '', '2022-05-01 06:10:19', 11),
(803, 'bapak yoga', '3', '3', '9', '', 7, 'delta sari indah', '', '2022-05-01 06:11:13', 11),
(804, 'budi soesanto', '5', '3', '15', '', 5, '', '', '2022-05-01 06:12:21', 11),
(805, 'Bapak hari tri widodo', '4', '5', '20', '', 7, 'graha tirta', '', '2022-05-01 06:45:39', 11),
(806, 'Mbak dina', '1', '3', '3', '', 7, 'tropodo 1 sekarti', '', '2022-05-01 06:49:47', 11),
(807, 'mbak hera wati purwasih', '1', '3', '3', '', 7, 'tropodo 1 sekarti', '', '2022-05-01 06:50:28', 11),
(808, 'bapak kholilullah', '3', '3', '9', '', 7, 'brebek jl kusuma', '', '2022-05-01 07:03:23', 5),
(809, 'Prabowo ', '4', '3', '12', '', 1, NULL, '1, prabowo \r\n2, sari ningsi \r\n3,syahrul adi prasetyo\r\n4,m.aufar pramudya ', '2023-04-17 01:44:45', 3),
(810, 'Wiyanto ', '4', '3', '12', '', 1, NULL, '1, wiyanto \r\n2, endah puji astutik\r\n3, m aji bimantoro\r\n4, winda ramadhani dewi ', '2023-04-17 01:50:37', 3),
(811, 'Puguh hadi susanto ', '4', '3', '12', '', 1, NULL, '1, puguh hadi susanto \r\n2, narti\r\n3, fayola dwinda putri azalia \r\n4, narel adhien adhitama ', '2023-04-17 01:49:39', 3),
(812, 'Bapak adi ', '2', '3', '6', '', 1, NULL, '1, bapak adi \r\n2, sri mulyana ', '2023-04-17 01:49:04', 3),
(813, 'Adi setiawan ', '4', '3', '12', '', 1, NULL, '1, adi setiawan \r\n2, agustina rahayu\r\n3, adia nazwa dinara \r\n4, sumidjo ', '2023-04-17 01:48:45', 3),
(814, 'M badruddin ', '1', '3', '3', '', 1, NULL, '', '2023-04-17 01:48:29', 3),
(815, 'Dyah aggraini ', '1', '3', '3', '', 1, NULL, '', '2023-04-17 01:48:17', 3),
(816, 'Soemadi', '2', '3', '6', '', 1, NULL, 'Soemadi dan painah', '2023-04-17 01:45:56', 3),
(817, 'Rizki', '2', '3', '6', '', 1, NULL, 'Rizki dan suaibah', '2023-04-17 01:43:19', 3),
(818, 'Sumaryanto', '4', '3', '12', '', 6, '', '', '2023-04-17 02:40:03', 9),
(819, 'Arief pak kin', '3', '3', '9', '', 6, '', '', '2023-04-17 02:41:10', 9),
(820, 'Gatot', '3', '3', '9', '', 6, '', '', '2023-04-17 02:41:48', 9),
(821, 'Romlah', '1', '3', '3', '', 6, '', '', '2023-04-17 02:42:27', 9),
(822, 'Imam sofii', '3', '3', '9', '', 6, '', '', '2023-04-17 02:42:59', 9),
(823, 'Mahfud', '2', '3', '6', '', 5, '', '', '2023-04-17 02:54:43', 9),
(824, 'Bambang H Sukani', '4', '3', '12', '', 5, '', '', '2023-04-17 02:56:01', 9),
(825, 'Andi Andika', '2', '3', '6', '', 5, '', '', '2023-04-17 02:56:39', 9),
(826, 'Ade rizki', '2', '3', '6', '', 5, '', '', '2023-04-17 02:57:33', 9),
(827, 'Tk Dharma Wanita', '41', '3', '123', '', 1, '', '', '2023-04-17 02:29:56', 24),
(828, 'Ali Fathoni', '3', '3', '9', '', 3, '', '', '2023-04-17 02:31:07', 24),
(829, 'Paijo Rustam', '3', '3', '9', '', 7, 'Makarya', '', '2023-04-17 02:31:51', 24),
(830, 'M Agung', '2', '3', '6', '84000', 7, 'Jambangan 7E No 2', '', '2023-04-17 02:32:29', 24),
(831, 'Muslik', '2', '3', '6', '84000', 3, '', '', '2023-04-17 02:32:58', 24),
(832, 'Eli Nurdiana', '1', '5', '5', '', 7, 'Sidoarjo', '', '2023-04-17 02:33:32', 24),
(833, 'Anam', '1', '5', '5', '', 7, 'Sidoarjo', '', '2023-04-17 02:34:02', 24),
(834, 'Nuryanto', '3', '3', '9', '', 5, '', '', '2023-04-17 02:34:37', 24),
(835, 'Sunanto', '4', '3', '12', '', 5, '', '', '2023-04-17 02:35:08', 24),
(836, 'Ibu Ngatpupa', '1', '3', '3', '', 5, '', '', '2023-04-17 02:35:46', 24),
(837, 'Khusnul Yaqin', '2', '3', '6', '', 5, '', '', '2023-04-17 02:36:40', 24),
(838, 'Mahendra', '3', '3', '9', '126000', 7, 'Bondowoso', '', '2023-04-17 02:37:57', 24),
(839, 'Nafsiyah', '3', '3', '9', '126000', 3, '', '', '2023-04-17 02:38:52', 24),
(840, 'Asep H', '3', '3', '9', '', 7, 'Sidoarjo', '', '2023-04-17 02:39:26', 24),
(841, 'Nur Hayati', '3', '3', '9', '', 2, '', '', '2023-04-17 02:40:32', 24),
(842, 'Debby', '3', '3', '9', '', 3, '', '', '2023-04-17 02:40:57', 24),
(843, 'Tugino', '3', '3', '9', '', 6, '', '', '2023-04-17 02:41:42', 24),
(844, 'Umi Kholifah', '1', '3', '3', '', 5, '', '', '2023-04-17 02:42:08', 24),
(845, 'Kamiso', '1', '3', '3', '42000', 5, NULL, '', '2023-04-18 01:32:30', 24),
(846, 'Umi Kalsum', '1', '3', '3', '', 5, '', '', '2023-04-17 02:42:47', 24),
(847, 'Mumasaku Imamaj', '1', '3', '3', '', 5, '', '', '2023-04-17 02:43:38', 24),
(848, 'Mahmud', '3', '3', '9', '', 7, 'Graha Tirta', '', '2023-04-17 02:44:03', 24),
(849, 'Sueb', '8', '3', '24', '', 4, '', '', '2023-04-17 02:44:31', 24),
(850, 'M imron', '2', '3', '6', '', 4, '', '', '2023-04-17 02:44:53', 24),
(851, 'Abdullah', '1', '3', '3', '', 7, 'Kebraon Surabaya', '', '2023-04-17 02:45:29', 24),
(852, 'Ibrohim', '4', '3', '12', '', 3, '', '', '2023-04-17 02:45:57', 24),
(853, 'Bpk Wahyudi', '4', '3', '12', '', 6, '', '', '2023-04-17 02:46:29', 24),
(854, 'Bapak Bayu', '5', '3', '15', '210000', 2, '', '', '2023-04-17 02:47:02', 24),
(855, 'M Imam', '3', '3', '9', '', 2, '', '', '2023-04-17 02:47:34', 24),
(856, 'Agus Setiawan', '5', '3', '15', '', 2, '', '', '2023-04-17 02:47:59', 24),
(857, 'Bapak Sadi', '3', '3', '9', '', 3, '', '', '2023-04-17 02:48:25', 24),
(858, 'Bapak Saifudin', '4', '3', '12', '168000', 2, NULL, '', '2023-04-18 02:28:29', 24),
(859, 'Machfudon', '4', '3', '12', '', 6, '', 'Setor 17 april 2023 malam', '2023-04-18 07:37:03', 9),
(860, 'Hindun', '1', '3', '3', '', 6, '', '', '2023-04-18 07:37:33', 9),
(861, 'Mislan', '4', '3', '12', '', 6, '', '', '2023-04-18 07:38:01', 9),
(862, 'Yauman', '3', '3', '9', '', 6, '', '', '2023-04-18 07:38:28', 9),
(863, 'Verry', '3', '3', '9', '', 6, '', '', '2023-04-18 07:38:49', 9),
(864, 'Ponco', '4', '3', '12', '', 6, '', '', '2023-04-18 07:39:16', 9),
(865, 'Taufiq', '4', '3', '12', '', 6, '', '', '2023-04-18 07:39:54', 9),
(866, 'Miftahuddin', '2', '3', '6', '', 5, '', '', '2023-04-18 07:40:30', 9),
(867, 'Sugeng P', '3', '3', '9', '', 5, '', '', '2023-04-18 07:40:57', 9),
(868, 'Purnomo', '1', '3', '3', '', 5, '', '', '2023-04-18 07:41:23', 9),
(869, 'Roni', '4', '3', '12', '', 5, '', '', '2023-04-18 07:41:51', 9),
(870, 'Bapak Suarto', '2', '3', '6', '', 6, '', '', '2023-04-18 03:47:03', 24),
(871, 'Bapak Ade Yudis', '3', '3', '9', '', 6, '', '', '2023-04-18 03:47:34', 24),
(872, 'Ibu Arba\'atin', '1', '3', '3', '', 6, '', '', '2023-04-18 03:48:34', 24),
(873, 'Bpk Sigit', '4', '3', '12', '', 2, '', '', '2023-04-18 04:00:12', 24),
(874, 'Bapak Mugianto', '3', '3', '9', '126000', 7, 'Brigjend katamso RT 23 RW 05', '', '2023-04-18 04:02:05', 24),
(875, 'Miskidi', '1', '3', '3', '', 2, '', '', '2023-04-18 04:03:30', 24),
(876, 'Aris Sutrisna', '1', '3', '3', '42000', 3, '', '', '2023-04-18 04:04:55', 24),
(877, 'Wahyu Ismail', '3', '3', '9', '', 7, 'Pengkol Kedungrejo', '', '2023-04-18 04:06:39', 24),
(878, 'Bapak Eko', '5', '3', '15', '', 3, '', '', '2023-04-18 04:07:56', 24),
(879, 'Khusnul', '2', '3', '6', '', 3, '', '', '2023-04-18 04:09:09', 24),
(880, 'M Syafrudin', '2', '3', '6', '', 2, '', '', '2023-04-18 04:11:36', 24),
(881, 'Riyanto', '2', '3', '6', '', 4, '', '', '2023-04-18 04:12:59', 24),
(882, 'M Suharto', '5', '3', '15', '', 1, '', '', '2023-04-18 04:22:27', 24),
(883, 'Bapak Heri', '2', '3', '6', '', 4, '', '', '2023-04-18 04:23:01', 24),
(884, 'Bapak Saifuk', '2', '3', '6', '', 2, '', '', '2023-04-18 04:23:25', 24),
(885, 'Duki', '2', '3', '6', '', 4, '', '', '2023-04-18 04:24:04', 24),
(886, 'Bapak Farid', '3', '3', '9', '', 2, '', '', '2023-04-18 04:24:29', 24),
(887, 'Bapak Adi Maulana', '5', '3', '15', '210000', 7, 'Graha Tirta Dahlia', '', '2023-04-18 04:25:13', 24),
(888, 'Bapak Cholil', '5', '3', '15', '', 2, '', '', '2023-04-18 04:25:38', 24),
(889, 'Bapak Riadi', '4', '3', '12', '', 2, '', '', '2023-04-18 04:26:08', 24),
(890, 'Anci Naluri', '2', '3', '6', '', 3, '', '', '2023-04-18 04:26:35', 24),
(891, 'Ibu Eva', '3', '3', '9', '', 6, '', 'Beras sudah setor selasa malam 18 april ', '2023-04-19 03:57:21', 9),
(892, 'Sunaryo', '4', '3', '12', '', 6, '', '', '2023-04-19 03:57:54', 9),
(893, 'Bp Amin', '2', '3', '6', '', 6, '', '', '2023-04-19 03:58:44', 9),
(894, 'Kenji julian', '1', '3', '3', '', 6, '', '', '2023-04-19 03:59:11', 9),
(895, 'Mugiono', '2', '3', '6', '', 6, '', '', '2023-04-19 03:59:34', 9),
(896, 'Siswanto', '3', '3', '9', '', 6, '', '', '2023-04-19 04:00:08', 9),
(897, 'Andri Beker', '5', '3', '15', '', 6, '', '', '2023-04-19 04:00:48', 9),
(898, 'Bp Andre Yasin', '3', '3', '9', '', 5, '', '', '2023-04-19 04:01:36', 9),
(899, 'Ibu Dyah Sukesi', '2', '3', '6', '', 5, '', '', '2023-04-19 04:02:09', 9),
(900, 'Bp Kojin', '2', '3', '6', '', 5, '', '', '2023-04-19 04:02:31', 9),
(901, 'Sunarto', '2', '3', '6', '', 5, '', '', '2023-04-19 04:03:28', 9),
(902, 'Bp Lukman', '3', '3', '9', '', 5, '', '', '2023-04-19 04:04:24', 9),
(903, 'Nur Mazida', '1', '3', '3', '', 5, '', '', '2023-04-19 04:04:59', 9),
(904, 'H Sukani', '2', '3', '6', '', 6, '', '', '2023-04-19 04:05:26', 9),
(905, 'Mujianto', '2', '3', '6', '', 5, '', '', '2023-04-19 04:05:56', 9),
(906, 'Bp Minto', '2', '3', '6', '', 6, '', '', '2023-04-19 04:11:25', 9),
(907, 'Dani', '4', '3 kg', '12', '', 1, '', 'Dani, Kinan, Neny, Tirta', '2023-04-19 03:20:47', 20),
(908, 'Nachrowi', '3', '3 kg', '9', '', 1, '', 'Nachrowi, Madinah, Dian', '2023-04-19 03:22:53', 20),
(909, 'Mutmainah', '1', '3 kg', '3', '', 1, '', 'Mutmainah ', '2023-04-19 03:23:51', 20),
(910, 'Masru\'in', '2', '3 kg', '6', '', 1, '', 'Masru\'in, Ulil Albab', '2023-04-19 03:24:34', 20),
(911, 'Musliman', '3', '3 kg', '9', '', 1, '', 'Musliman, Izaz Makul, Aufal Marom', '2023-04-19 03:25:20', 20),
(912, 'Rohmat', '5', '3 kg', '15', '', 1, '', 'Rohmat, Ummi Muamanah, Fanto, Prima Sefta Nofa, Ahmad Arelian Hafizh', '2023-04-19 03:26:45', 20),
(913, 'Edi Rumanto', '2', '3 kg', '6', '', 1, '', 'Edi Rumanto, Iman Santoso', '2023-04-19 03:27:27', 20),
(914, 'Sumarlan', '4', '3 kg', '12', '', 1, '', 'Sumarlan, Amiyah, Lana, Putri', '2023-04-19 03:28:25', 20),
(915, 'Syafi\'i', '5', '3 kg', '15', '', 1, '', 'Syafi\'i, Riana, Elfina, H. Poniati, Hanifatul Khoiriyah', '2023-04-19 03:30:39', 20),
(916, 'Khoirul Anam', '4', '3 kg', '12', '', 1, NULL, 'Khoirul Anam, Fitri Nur Vita, Nesa Halimutus Sa\'diyah, M. Alif Putra Randika', '2023-04-19 03:32:17', 20),
(917, 'Sukirman', '4', '3 kg', '12', '', 1, '', 'Sukirman, Hariyono, Arcik Rahayu, Ekza Ralda Salsa Ardila', '2023-04-19 03:33:26', 20),
(918, 'Yunus Indarto', '4', '3 kg', '12', '', 1, '', 'Yunus Indarto, Yogig Sundawanti, Akila Azzahra Putri, M. Zeyn Fachri', '2023-04-19 03:34:55', 20),
(919, 'M. Sholikin', '5', '3 kg', '15', '', 1, '', 'M. Sholikin, Sholikha, M. Rizal Maulana, Hasim Asyari, Reza Dwi Arta', '2023-04-19 03:36:19', 20),
(920, 'Moh. Hasyim', '3', '3 kg', '9', '', 1, '', 'Moh. Hasyim, Sumiati, Moh. Ifandi Maksum', '2023-04-19 03:37:05', 20),
(921, 'Nasichin Setianto', '4', '3 kg', '12', '', 1, '', 'Nasichin Setiyanto, Mawar Riyanti Sudjadi, Destyna Rakhmayanti Putri, Aura Feliza Lovitasari', '2023-04-19 03:38:45', 20),
(922, 'Bpk Rohmad Jainudin', '4', '3', '12', '168000', 2, '', '', '2023-04-19 04:39:53', 24),
(923, 'Bapak Sidat', '3', '3', '9', '', 5, '', '', '2023-04-19 04:40:37', 24),
(924, 'Nur Kholis', '1', '3', '3', '', 4, '', '', '2023-04-19 04:41:26', 24),
(925, 'Suwadi', '3', '3', '9', '', 3, '', '', '2023-04-19 04:41:50', 24),
(926, 'Bpk Sumarso', '5', '3', '15', '', 1, '', '', '2023-04-19 04:42:38', 24),
(927, 'Bapak Tito', '1', '3', '3', '42000', 7, 'Bulak Banteng SBY', '', '2023-04-19 04:43:43', 24),
(928, 'Bpk Budi', '4', '3', '12', '', 6, '', '', '2023-04-19 04:44:18', 24),
(929, 'Bpk Ari (Apotek K24)', '4', '3', '12', '168000', 2, '', '', '2023-04-19 04:45:10', 24),
(930, 'Bapak Pulung', '4', '3', '12', '168000', 7, 'Graha Tirta Akasia', '', '2023-04-19 04:46:00', 24),
(931, 'Bu Nasifah', '1', '3', '3', '', 7, 'RT 13 RW 02', '', '2023-04-19 04:46:50', 24),
(932, 'Ibu Fadilah', '1', '3', '3', '', 7, 'RT 13 RW 02', '', '2023-04-19 04:47:28', 24),
(933, 'Bpk Purwandi', '3', '3', '9', '', 7, 'Malang', '', '2023-04-19 04:48:22', 24),
(934, 'Bapak Suyanto', '3', '3', '9', '126000', 5, '', '', '2023-04-19 04:49:24', 24),
(935, 'Bu Mujiatun', '1', '3', '3', '', 4, '', '', '2023-04-19 04:49:51', 24),
(936, 'Bu Nurhayati', '1', '3', '3', '42000', 7, 'Makarya', '', '2023-04-19 04:50:24', 24),
(937, 'Bu Mardi', '2', '3', '6', '', 1, '', '', '2023-04-19 04:50:47', 24),
(938, 'Fulan', '5', '3', '15', '210000', 7, 'Bumi Allah', '', '2023-04-19 04:51:32', 24),
(939, 'Bu Suharwati', '1', '3', '3', '', 7, 'Makarya Binangun', '', '2023-04-19 04:52:56', 24),
(940, 'Bapak Heru', '4', '3', '12', '', 7, 'Janti', '', '2023-04-19 04:53:26', 24),
(941, 'Bapak Muqorrobin (Cak Robin)', '5', '3', '15', '210000', 7, 'Tropodo', '', '2023-04-19 04:54:37', 24),
(942, 'Thohir', '4', '3', '12', '', 7, 'Janti', '', '2023-04-19 04:55:19', 24),
(943, 'Rudy', '4', '3', '12', '', 4, '', '', '2023-04-19 04:55:36', 24),
(944, 'Bapak Udin', '3', '3', '9', '', 4, '', '', '2023-04-19 04:55:58', 24),
(945, 'Bapak Fajar', '5', '3', '15', '', 7, 'Jalan Bakti 1', '', '2023-04-19 04:57:11', 24),
(946, 'Bpk Sukaji', '1', '3', '3', '', 7, 'Janti', '', '2023-04-19 04:57:45', 24),
(947, 'Bapak Hadi', '3', '3', '9', '', 7, 'Janti', '', '2023-04-19 04:58:11', 24),
(948, 'Fahmi', '4', '3', '12', '', 7, 'Janti', '', '2023-04-19 04:59:47', 24),
(949, 'Aminah', '2', '3', '6', '84000', 7, 'Janti', '', '2023-04-19 05:00:28', 24),
(950, 'Bapak Muhaimin (Alex)', '1', '3', '3', '42000', 5, '', '', '2023-04-19 05:01:30', 24),
(951, 'Jalil', '1', '3', '3', '', 2, NULL, '', '2023-04-19 07:34:57', 24),
(952, 'M Irianto', '4', '3', '12', '', 2, '', '', '2023-04-19 05:02:51', 24),
(953, 'M Jahuri', '4', '3', '12', '', 2, '', '', '2023-04-19 05:03:13', 24),
(954, 'Ibu Suratmi', '2', '3', '6', '', 5, '', '', '2023-04-19 05:04:16', 24),
(955, 'H Chamim', '2', '3', '6', '', 2, '', '', '2023-04-19 05:04:44', 24),
(956, 'Fiqi', '3', '3', '9', '', 2, '', '', '2023-04-19 05:05:10', 24),
(957, 'Bapak Arif', '4', '3', '12', '168000', 4, '', '', '2023-04-19 05:05:35', 24),
(958, 'Bapak Slamet', '5', '3', '15', '', 2, '', '', '2023-04-19 05:06:10', 24),
(959, 'Bapak Usman Ali', '3', '3', '9', '', 3, '', '', '2023-04-19 05:06:36', 24),
(960, 'Bapak Narto', '4', '3', '12', '', 4, '', '', '2023-04-19 05:06:59', 24),
(961, 'Bapak Sukanto', '7', '3', '21', '', 3, '', '', '2023-04-19 05:07:32', 24),
(962, 'Bapak Sadali', '2', '3', '6', '', 2, '', '', '2023-04-19 05:07:54', 24),
(963, 'Bapak Isa', '6', '3', '18', '', 2, '', '', '2023-04-19 05:08:18', 24),
(964, 'Bapak Haru', '3', '3', '9', '126000', 6, NULL, '', '2023-04-19 05:11:52', 24),
(965, 'Imam Harsono', '4', '3', '12', '', 2, '', '', '2023-04-19 05:09:53', 24),
(966, 'Erma Hadi', '2', '3', '6', '', 5, '', '', '2023-04-19 05:10:24', 24),
(967, 'Bapak Jojo', '3', '3', '9', '', 7, 'Janti', '', '2023-04-19 07:34:30', 24),
(968, 'David', '2', '3', '6', '', 2, '', '', '2023-04-19 05:12:34', 24),
(969, 'Syanti', '1', '3', '3', '42000', 7, 'Wisma Tropodo', '', '2023-04-19 05:13:02', 24),
(970, 'H Mulyadi', '1', '3', '3', '', 4, '', '', '2023-04-19 05:13:27', 24),
(971, 'Bapak Munasan', '4', '3', '12', '', 1, '', '', '2023-04-19 05:14:03', 24),
(972, 'cak Nur', '2', '3', '6', '84000', 4, '', '', '2023-04-20 03:26:10', 5),
(973, 'bpak Harmadi', '2', '3', '6', '', 4, '', '', '2023-04-20 03:28:21', 5),
(974, 'Ahmad Ubaidillah', '3', '3', '9', '', 2, '', '', '2023-04-20 03:31:47', 5),
(975, 'Bpak Suhartono', '5', '3', '15', '', 5, '', '', '2023-04-20 03:32:52', 5),
(976, 'bapak sokem', '3', '3', '9', '', 4, '', '', '2023-04-20 03:40:31', 5),
(977, 'bapak Bima', '3', '3', '9', '', 2, '', '', '2023-04-20 03:41:03', 5),
(978, 'bpak Agus setiawan', '3', '3', '9', '', 6, '', '', '2023-04-20 03:46:59', 5),
(979, 'bapak jawani', '6', '3', '18', '', 2, '', '', '2023-04-20 03:54:14', 5),
(980, 'bapak Kudus', '2', '3', '6', '', 2, '', '', '2023-04-20 03:55:15', 5),
(981, 'ahmad syahroni', '5', '3', '15', '', 6, '', '', '2023-04-20 03:57:13', 5),
(982, 'bpk adi', '4', '3', '12', '168000', 3, '', '', '2023-04-20 04:01:16', 5),
(983, 'H. Nuril Huda', '7', '3', '21', '', 6, '', '', '2023-04-20 04:30:26', 5),
(984, 'bpk. agus papi', '5', '3', '15', '', 4, '', '', '2023-04-20 04:45:06', 5),
(985, 'bpk. sofa', '2', '3', '6', '84000', 4, '', '', '2023-04-20 04:50:33', 5),
(986, 'bapak aman', '5', '3', '15', '', 1, '', '', '2023-04-20 05:28:57', 5),
(987, 'bpk surianto', '4', '3', '12', '', 3, '', '', '2023-04-20 05:42:59', 5),
(988, 'H. Hamzah', '1', '3', '3', '', 3, '', '', '2023-04-20 05:51:25', 5),
(989, 'Nanang sayuti', '4', '3', '12', '', 6, '', 'Sudah di setor rabu malam 19 april', '2023-04-20 07:53:38', 9),
(990, 'Jahid', '1', '3', '3', '', 6, '', '', '2023-04-20 07:54:04', 9),
(991, 'Febri K', '3', '3', '9', '', 6, '', '', '2023-04-20 07:54:29', 9),
(992, 'Bpk Muji', '6', '3', '18', '', 6, '', '', '2023-04-20 07:55:00', 9),
(993, 'Basori', '3', '3', '9', '', 6, '', '', '2023-04-20 07:55:36', 9),
(994, 'Sarif', '3', '3', '9', '', 6, '', '', '2023-04-20 07:56:02', 9),
(995, 'Bisar', '4', '3', '12', '', 6, '', '', '2023-04-20 07:56:27', 9),
(996, 'Mahfud', '4', '3', '12', '', 6, '', '', '2023-04-20 07:56:52', 9),
(997, 'Bpk Minarno', '4', '3', '12', '', 6, '', '', '2023-04-20 07:57:37', 9),
(998, 'Hadi Z', '3', '3', '9', '', 6, '', '', '2023-04-20 07:58:04', 9),
(999, 'Bp Misdan', '2', '3', '6', '', 6, '', '', '2023-04-20 07:58:33', 9),
(1000, 'Ibu Fitriya', '5', '3', '15', '', 6, '', '', '2023-04-20 07:59:27', 9),
(1001, 'Komar', '6', '3', '18', '', 5, '', '', '2023-04-20 08:00:36', 9),
(1002, 'Binanto', '3', '3', '9', '', 5, '', '', '2023-04-20 08:01:01', 9),
(1003, 'Taufiq', '6', '3', '18', '', 5, '', '', '2023-04-20 08:01:25', 9),
(1004, 'Muntholib', '5', '3', '15', '', 5, '', '', '2023-04-20 08:02:19', 9),
(1005, 'Rendy', '4', '3', '12', '', 5, '', '', '2023-04-20 08:02:45', 9),
(1006, 'Agus Sumito', '4', '3', '12', '168000', 7, 'Gunung Anyar Jaya 1 No.12', '', '2023-04-20 08:10:48', 24),
(1007, 'M Agus Irawan', '4', '3', '12', '', 1, '', '', '2023-04-20 08:23:54', 24),
(1008, 'M Abdillah', '2', '3', '6', '', 2, '', '', '2023-04-20 08:24:49', 24),
(1009, 'Bapak A Junaidi A', '4', '3', '12', '168000', 3, '', '', '2023-04-20 08:29:02', 24),
(1010, 'Ayu Indriani Putri', '4', '3', '12', '', 7, 'Damarsih Residence Buduran', '', '2023-04-20 08:35:51', 24),
(1011, 'Muhammad Arifianto', '5', '3', '15', '', 1, '', '', '2023-04-20 08:40:07', 24),
(1012, 'Kurniadi', '2', '3', '6', '', 3, '', '', '2023-04-20 08:40:45', 24),
(1013, 'Ibu Suwarti', '3', '3', '9', '126000', 7, 'Bandilan', '', '2023-04-20 09:01:53', 24),
(1014, 'Teguh Harjanto, Poerwestri, As', '4', '3', '12', '168000', 7, 'Peum BPKP Kedungrejo waru', '', '2023-04-20 09:05:27', 24),
(1015, 'Ibu Ameni', '2', '3', '6', '', 4, '', '', '2023-04-20 09:05:53', 24),
(1016, 'Samba', '2', '3', '6', '', 1, '', '', '2023-04-20 09:11:37', 24),
(1017, 'ade', '1', '3', '3', '42000', 7, 'gayungan', '', '2023-04-20 03:46:26', 24),
(1018, 'silvia', '1', '3', '3', '42000', 7, 'pondok candra', '', '2023-04-20 09:35:06', 24),
(1019, 'sugito', '4', '3', '12', '', 2, '', '', '2023-04-20 09:41:47', 24),
(1020, 'yayak', '6', '3', '18', '', 7, 'graha tirta bougenfil 58', '', '2023-04-20 09:47:06', 24),
(1021, 'misbahul arifin', '4', '3', '12', '168000', 2, NULL, '', '2023-04-20 05:40:33', 24),
(1022, 'bapak zainuri', '2', '3', '6', '42000', 3, '', '', '2023-04-20 09:49:34', 24),
(1023, 'isnu', '3', '3', '9', '', 4, '', '', '2023-04-20 10:00:26', 24),
(1024, 'hartono', '1', '3', '3', '', 2, '', '', '2023-04-20 10:01:31', 24),
(1025, 'yani', '2', '3', '6', '', 2, '', '', '2023-04-20 10:01:59', 24),
(1026, 'moch sulton', '2', '3', '6', '', 1, '', '', '2023-04-20 10:09:42', 24),
(1027, 'erni', '2', '3', '6', '', 4, '', '', '2023-04-20 10:14:35', 24),
(1028, 'bapak sigit', '2', '3', '6', '', 3, '', '', '2023-04-20 10:47:36', 24),
(1029, 'ibu eva susliati', '2', '3', '6', '', 7, 'jl brigjend katamso', '', '2023-04-20 11:13:35', 24),
(1030, 'ibu nur aini susana', '1', '3', '3', '', 5, '', '', '2023-04-20 11:18:35', 24),
(1031, 'bapak heru', '3', '3', '9', '', 2, '', '', '2023-04-20 11:19:15', 24),
(1032, 'bapak sholeh', '3', '3', '9', '126000', 1, '', '', '2023-04-20 11:32:27', 24),
(1033, 'bapak haryanto', '3', '3', '9', '126000', 1, '', '', '2023-04-20 11:33:21', 24),
(1034, 'bapak panut', '2', '3', '6', '', 2, '', '', '2023-04-20 11:34:34', 24),
(1035, 'arip p', '2', '3', '6', '', 2, '', '', '2023-04-20 11:35:02', 24),
(1036, 'bayu', '1', '3', '3', '42000', 2, '', '', '2023-04-20 11:35:37', 24),
(1037, 'Bpk rumanto', '1', '3', '3', '', 4, '', '', '2023-04-20 11:48:29', 24),
(1038, 'abdul rohim', '2', '3', '6', '', 4, '', '', '2023-04-20 11:49:03', 24),
(1039, 'bapak Aan', '4', '3', '12', '168000', 4, '', '', '2023-04-20 11:58:56', 24),
(1040, 'Bp, Makmun', '3', '3', '9', '', 2, '', '', '2023-04-20 01:02:37', 3),
(1041, 'Ibu Sri Mulyaningati', '5', '3', '15', '', 1, NULL, '1. Ibu Sri Mulyaningati\r\n2. Ibu Corry Agnes Gradini\r\n3. Anak Chantiga\r\n4. Pameilla Nur Rahayu\r\n5. Yoby Wikuntaro', '2023-04-20 01:15:03', 20),
(1042, 'Ahmad Baihaqi', '2', '3', '6', '', 5, '', 'nur mariya', '2023-04-20 01:06:55', 24),
(1043, 'Mbak Fida', '3', '5', '15', '', 4, '', 'Bunda\r\nIlma', '2023-04-20 01:12:09', 24),
(1044, 'Bpk. Kholil', '4', '3', '12', '', 3, '', '', '2023-04-20 01:12:29', 24),
(1045, 'Luluk Okta Nurdiana ', '2', '3', '6', '', 1, NULL, '1. Luluk Okta Nurdiana\r\n2. Moch tauruq A', '2023-04-20 01:19:03', 20),
(1046, 'Bpk Sobikh', '2', '3', '6', '', 4, '', '', '2023-04-20 01:19:42', 24),
(1047, 'Pak jito', '3', '3', '9', '', 1, '', '1. Pak jito\r\n2. Siti Aminah\r\n3. Julian Ardian P', '2023-04-20 01:20:20', 20),
(1048, 'Arif', '1', '3', '3', '', 1, '', '', '2023-04-20 01:23:21', 20),
(1049, 'Yanti', '1', '1', '1', '', 1, '', '', '2023-04-20 01:23:50', 20),
(1050, 'Siska', '1', '1', '1', '', 1, '', '', '2023-04-20 01:24:22', 20),
(1051, 'Neva', '1', '1', '1', '', 1, '', '', '2023-04-20 01:25:26', 20),
(1052, 'Agung Saputra S.', '1', '1', '1', '', 1, '', '', '2023-04-20 01:26:17', 20),
(1053, 'Priyani', '1', '1', '1', '', 1, '', '', '2023-04-20 01:26:52', 20),
(1054, 'M Kamaludin', '1', '3', '3', '', 2, '', '', '2023-04-20 01:26:56', 24),
(1055, 'Bpk Luqman', '3', '3', '9', '', 6, '', '', '2023-04-20 01:27:50', 24),
(1056, 'M. Attarif S.', '1', '1', '1', '', 1, '', '', '2023-04-20 01:27:50', 20),
(1057, 'Sahut', '1', '1', '1', '', 1, '', '', '2023-04-20 01:28:14', 20),
(1058, 'Bpk. Samian', '4', '3', '12', '', 1, '', '', '2023-04-20 01:28:25', 24),
(1059, 'Siti Masruka ', '1', '1', '1', '', 1, '', '', '2023-04-20 01:29:05', 20),
(1060, 'Bapak Sutomo', '5', '3', '15', '', 1, '', '', '2023-04-20 01:29:12', 24),
(1061, 'M. Safrul R.', '1', '1', '1', '', 1, '', '', '2023-04-20 01:29:43', 20),
(1062, 'Bpk H. Yusuf Fuad', '3', '5', '15', '', 7, 'RT 8 Makarya Binangun', '', '2023-04-20 01:31:01', 24),
(1063, 'Bpk Zainul', '3', '3', '9', '', 3, '', '', '2023-04-20 01:31:55', 24),
(1064, 'Siti khomsatun', '2', '3', '6', '', 1, '', '1. Siti Khomsatun\r\n2. M. Apriadi', '2023-04-20 01:36:43', 20),
(1065, 'Choirul Anam', '2', '3', '6', '', 1, '', '1. Choirul Anam\r\n2. Moch. Rizki Ferdiansyah ', '2023-04-20 01:49:00', 20),
(1066, 'keluarga Bu Semah', '5', '3', '15', '', 6, '', '', '2023-04-20 01:55:23', 24),
(1067, 'bapak muslim', '3', '3', '9', '', 2, '', '', '2023-04-20 01:58:11', 24),
(1068, 'ibu nuril', '2', '3', '6', '', 3, '', '', '2023-04-20 01:58:59', 24),
(1069, 'Hari Tri Widodo', '4', '3', '12', '', 7, 'Grahatirta Bogenfil', 'Syahrianti annisa perdana\r\nmuhammad ama putra\r\nRaffi putra anugrah', '2023-04-20 02:06:30', 24),
(1070, 'Hari Tri Widodo', '4', '3', '12', '', 7, 'Grahatirta Bogenfil', 'Syahrianti annisa perdana\r\nmuhammad ama putra\r\nRaffi putra anugrah', '2023-04-20 02:06:31', 24),
(1071, 'Jatmiko', '4', '3', '12', '', 4, '', '', '2023-04-20 02:16:38', 24),
(1072, 'Dayat', '3', '3', '9', '', 3, '', 'Dayat\r\nistri\r\nibuk', '2023-04-20 02:18:33', 24),
(1073, 'nanag', '5', '3', '15', '', 1, '', '', '2023-04-20 02:20:32', 24),
(1074, 'Mirza', '3', '10', '30', '', 7, 'RT 4 Makarya', '', '2023-04-20 02:35:46', 24),
(1075, 'Rahardiyan', '3', '3', '9', '126000', 1, '', '', '2023-04-20 02:37:16', 24),
(1076, 'Bapak Alban', '4', '3', '12', '', 7, 'Dusun Pengkol', '', '2023-04-20 03:23:18', 24),
(1077, 'Bapak Abdul karim', '3', '3', '9', '', 2, '', '', '2023-04-20 03:26:05', 24),
(1078, 'Tyas & Tyan', '2', '3', '6', '84000', 1, '', '', '2023-04-20 03:36:08', 24),
(1079, 'Fahmi', '3', '3', '9', '', 3, '', '', '2023-04-20 03:37:43', 24),
(1080, 'Bpk Supriyadi (Padang)', '4', '3', '12', '168000', 2, NULL, '', '2023-04-20 04:15:46', 24),
(1081, 'Khoirul Rochim', '5', '3', '15', '', 1, '', '', '2023-04-20 03:48:37', 24),
(1082, 'Titis Sari', '4', '3', '12', '168000', 7, 'Siwalan Kerto', '', '2023-04-20 03:59:24', 24),
(1083, 'Usman Ali', '3', '3', '9', '', 3, '', '', '2023-04-20 04:05:17', 24),
(1084, 'M. Nasrullah Rahmani', '4', '3', '12', '42000', 7, 'Brigjend Katamso 31 (Banuwa)', '', '2023-04-20 04:12:15', 24),
(1085, 'moch Sukur', '2', '3', '6', '84000', 7, 'Janti', '', '2023-04-20 04:20:18', 24),
(1086, 'Bu Mar', '2', '3', '6', '84000', 3, '', '', '2023-04-20 04:21:10', 24),
(1087, 'Miswanto', '3', '3', '9', '', 6, '', '', '2023-04-20 04:23:12', 24),
(1088, 'Moch. Na\'im', '3', '3', '9', '', 3, '', '', '2023-04-20 04:24:23', 24),
(1089, 'Lindung', '2', '3', '6', '', 4, '', '', '2023-04-20 04:28:00', 24),
(1090, 'Rizqi Z', '3', '3', '9', '', 2, '', '', '2023-04-20 04:29:02', 24),
(1091, 'Nasucha', '2', '3', '6', '', 4, '', '', '2023-04-20 04:30:06', 24),
(1092, 'Bapak Edy', '2', '3', '6', '', 6, '', '', '2023-04-20 04:31:27', 24),
(1093, 'cak aifin', '2', '3', '6', '', 1, '', '', '2023-04-20 04:32:11', 24),
(1094, 'Nur Mahmudah', '3', '3', '9', '', 4, '', '', '2023-04-20 04:32:38', 24),
(1095, 'suroso', '4', '3', '12', '', 1, '', '', '2023-04-20 04:33:10', 24),
(1096, 'Baitul Alim', '4', '3', '12', '', 1, '', '', '2023-04-20 04:33:39', 24),
(1097, 'Supriyanto', '3', '3', '9', '', 3, '', '', '2023-04-20 04:34:11', 24),
(1098, 'Bapak aksin', '6', '3', '18', '', 3, '', '', '2023-04-20 04:34:36', 24),
(1099, 'Kholilullah', '3', '3', '9', '', 4, '', '', '2023-04-20 05:01:04', 24),
(1100, 'Bpk. Agus ', '4', '3', '12', '', 2, '', '', '2023-04-21 02:12:42', 3),
(1101, 'Rusmiati', '2', '3', '6', '', 2, '', '', '2023-04-21 02:17:46', 3),
(1102, 'Bpk. Bonar', '4', '3', '12', '', 2, '', '', '2023-04-21 02:18:02', 3),
(1103, 'Boedy soesanto', '4', '5', '20', '', 5, NULL, 'Hariri budi setiawan\r\nTri artiningsih\r\nMay maulidyah\r\nM. Akbar pratama\r\nM. Nur cahyo', '2023-04-21 02:42:03', 3),
(1104, 'Andi', '2', '5', '10', '', 6, '', '', '2023-04-21 02:44:45', 3),
(1105, 'Bp Goffar', '6', '3', '18', '', 6, '', 'Sudah setor kamis malam 20 april', '2023-04-21 02:48:40', 9),
(1106, 'Tarmin', '3', '3', '9', '', 6, '', '', '2023-04-21 02:49:04', 9),
(1107, 'Mas Yono', '3', '3', '9', '', 6, '', '', '2023-04-21 02:49:45', 9),
(1108, 'Munasri', '1', '3', '3', '', 6, '', '', '2023-04-21 02:50:08', 9),
(1109, 'Ika Astriana', '3', '3', '9', '', 6, '', '', '2023-04-21 02:50:42', 9),
(1110, 'Ari', '3', '3', '9', '', 6, '', '', '2023-04-21 02:51:04', 9),
(1111, 'Bp Arifin', '6', '3', '18', '', 6, '', '', '2023-04-21 02:51:33', 9),
(1112, 'Ibu Jayem', '6', '3', '18', '', 6, '', '', '2023-04-21 02:51:55', 9),
(1113, 'Kasianto', '2', '3', '6', '', 5, '', '', '2023-04-21 02:52:31', 9),
(1114, 'Ibu Dewi H', '2', '3', '6', '', 5, '', '', '2023-04-21 02:53:03', 9),
(1115, 'Akbar', '3', '3', '9', '', 5, '', '', '2023-04-21 02:53:32', 9),
(1116, 'Umar anis', '9', '3', '27', '', 7, 'Grahatirta', '', '2023-04-21 03:00:28', 3),
(1117, 'Majid maulana', '3', '3', '9', '', 5, '', '', '2023-04-21 03:01:58', 3),
(1118, 'Pak samsul', '4', '3', '12', '', 2, '', '', '2023-04-21 03:10:11', 3),
(1119, 'Sahil', '1', '3', '3', '', 2, '', '', '2023-04-21 03:10:32', 3),
(1120, 'Suhermin', '4', '3', '12', '', 6, '', '', '2023-04-21 03:49:15', 3),
(1121, 'David akbar', '1', '3', '3', '42000', 7, 'Kureksari', '', '2023-04-21 03:49:48', 3),
(1122, 'M khoiron', '7', '3', '21', '', 2, '', '', '2023-04-21 03:50:07', 3),
(1123, 'Pak Ziadi', '6', '3', '18', '', 3, '', '', '2023-04-21 05:25:32', 24),
(1124, 'Muhammad Amin', '4', '3', '12', '', 5, '', '', '2023-04-21 05:26:06', 24),
(1125, 'Nimiren', '5', '3', '15', '210000', 7, 'Madiun', '', '2023-04-21 05:27:06', 24),
(1126, 'Bp. Rais', '1', '3', '3', '', 3, '', '', '2023-04-21 05:27:25', 24),
(1127, 'Bp. Sugianto', '2', '3', '6', '', 5, '', 'Ibu Sumiati', '2023-04-21 05:27:59', 24),
(1128, 'Bondan Arpandyo', '4', '3', '12', '', 7, 'Graha Tirta', 'ana kusuma ningrum\r\nnaswa aqila\r\nhj. lik ama', '2023-04-21 06:21:03', 5),
(1129, 'Raihan Anando', '1', '3', '3', '', 7, 'Graha Tirta', '', '2023-04-21 06:21:19', 5),
(1130, 'Rizki Santoso', '4', '3', '12', '168000', 7, 'Graha Tirta', '', '2023-04-21 05:33:29', 24),
(1131, 'Evan Fabianto', '2', '3', '6', '84000', 7, 'Makarya Binangun', '', '2023-04-21 05:39:00', 24),
(1132, 'Evan Fabianto', '2', '3', '6', '84000', 7, 'Makarya Binangun', '', '2023-04-21 05:39:01', 24),
(1133, 'bpk muji surachman', '3', '3', '9', '', 4, '', '', '2023-04-21 05:41:32', 24),
(1134, 'Bpk Rosid', '3', '3', '9', '', 2, '', '', '2023-04-21 05:59:59', 5),
(1135, 'Fathul', '2', '3', '6', '', 2, '', '', '2023-04-21 06:05:29', 5),
(1136, 'Mas Cahya hardana', '3', '3', '9', '126000', 7, '', 'Ella Widhayanti\r\nmuhammad elvano', '2023-04-21 06:08:22', 5),
(1137, 'Pak Heru Widodo', '3', '3', '9', '', 7, 'Makarya Binangun', 'BU henny Wiyati\r\nMuhammad Rizal Wiyanto', '2023-04-21 06:10:13', 5),
(1138, 'Catur Prabowo', '3', '3', '9', '', 7, 'Makarya Binangun', 'Astarina kurnia dewi\r\nAisyah Jasmin\r\n', '2023-04-21 06:18:01', 5),
(1139, 'Muhammad Fabian', '1', '3', '3', '42000', 7, 'Makarya Binangun', '', '2023-04-21 06:18:23', 5),
(1140, 'M Abdul Aziz', '1', '3', '3', '42000', 2, '', '', '2023-04-21 06:23:17', 5),
(1141, 'Rinzani', '1', '3', '3', '', 4, '', '', '2023-04-21 06:26:36', 5),
(1142, 'Qorni', '3', '3', '9', '', 2, '', '', '2023-04-21 06:26:56', 5),
(1143, 'Muh Yusuf Fahmi', '5', '3', '15', '', 7, 'Makarya', 'ALifa Indah\r\nMuhammad Fariz\r\nMuhammad Zuhda\r\nRita Marianti Binti m Subrata', '2023-04-21 06:28:46', 5),
(1144, 'Suono', '4', '2.5', '10', '', 3, '', '', '2023-04-21 06:29:57', 5),
(1145, 'Adi Sekeluarga', '3', '3', '9', '', 5, '', '', '2023-04-21 06:41:40', 5),
(1146, 'bpk imron', '3', '3', '9', '126000', 2, '', '', '2023-04-21 07:00:59', 24),
(1147, 'bpk yasin', '5', '3', '15', '', 1, '', '', '2023-04-21 07:05:39', 24),
(1148, 'bu nur hidayati', '2', '3', '6', '', 5, '', 'zafina friska anggraini', '2023-04-21 07:14:09', 24),
(1149, 'ibu eka', '3', '3', '9', '', 1, '', 'yudistira\r\nrizki olivia', '2023-04-21 07:15:03', 24),
(1150, 'bpk sunaryo', '10', '3', '30', '', 1, NULL, '', '2023-04-21 07:20:45', 24),
(1151, 'sivia putri rahmawati', '1', '3', '3', '42000', 3, '', '', '2023-04-21 07:18:18', 24),
(1152, 'bapak juwanto', '2', '3', '6', '', 4, '', '', '2023-04-21 07:44:36', 24),
(1153, 'bpk Cipta adi', '4', '3', '12', '', 7, 'Makarya Binangun XA24', '', '2023-04-21 08:27:49', 5),
(1154, 'BPK Munip', '2', '3', '6', '', 3, '', '', '2023-04-21 08:29:07', 5),
(1155, 'bpk hendra', '5', '3', '15', '', 5, '', '', '2023-04-21 08:38:41', 5);
INSERT INTO `tbl_zakat_fitrah` (`id_zakat_fitrah`, `nama_pemberi_zakat_fitrah`, `besaran_jiwa`, `berat_beras`, `total_beras`, `uang`, `alamat`, `alamat_lainnya`, `keterangan`, `tanggal`, `petugas`) VALUES
(1156, 'TRIANANDA ADITYA SWARA', '3', '5', '15', '', 7, 'MAKARIYA BINANGUN BLOK A 23', '', '2023-04-21 09:01:04', 5),
(1157, 'BAPAK NOFAN ', '4', '3', '12', '', 2, '', '', '2023-04-21 09:11:06', 5),
(1158, 'BPK ANDIK ', '4', '3', '12', '', 7, 'Makarya Binangun BLOK V21', '', '2023-04-21 09:19:46', 5),
(1159, 'BAPAK RUDI KARIMIANTO', '4', '3.7', '14.8', '', 7, 'GRAHA TITRA ASIA ', '', '2023-04-21 09:32:21', 5),
(1160, 'HERI JODIE', '2', '3', '6', '', 7, 'Dusun Pengkol 2C', '', '2023-04-21 09:33:07', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zakat_maal`
--

CREATE TABLE `tbl_zakat_maal` (
  `id_zakat_maal` int(11) NOT NULL,
  `nama_pemberi_maal` varchar(30) DEFAULT NULL,
  `kategori_zakat` int(11) DEFAULT NULL,
  `nominal_zakat` varchar(20) DEFAULT NULL,
  `alamat` int(11) DEFAULT NULL,
  `alamat_lainnya` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `petugas1` varchar(20) DEFAULT NULL,
  `petugas2` varchar(11) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_zakat_maal`
--

INSERT INTO `tbl_zakat_maal` (`id_zakat_maal`, `nama_pemberi_maal`, `kategori_zakat`, `nominal_zakat`, `alamat`, `alamat_lainnya`, `tanggal`, `petugas1`, `petugas2`, `keterangan`) VALUES
(4, 'Lukman Hakim', 1, '2000000', 7, 'Graha Tirta Akasia 36', '2021-05-07', '7', NULL, ''),
(5, 'Mas ria', 3, '1000', 2, 'Rt 02, Rw 01', '2021-05-07', '7', NULL, ''),
(6, 'Bpak M. Lukman Hakim', 3, '35000', 7, 'Graha Tirta Akasia 36', '2021-05-07', '7', NULL, ''),
(7, 'Lailatul Isnaini Arofah', 4, '450000', 3, 'RT03 RW01 JANTI', '2021-05-07', '7', NULL, 'Nifas'),
(8, 'Ahmad abdul ghofur', 3, '4000', 5, 'Janti RT 19 RW 01', '2021-05-07', '5', NULL, ''),
(9, 'Marlina', 4, '150000', 5, 'Rt 19', '2021-05-08', '12', NULL, ''),
(10, 'Farida Nur Zeha', 3, '200000', 7, 'Buduran', '2021-05-08', '3', NULL, ''),
(11, 'Miftahuddin', 3, '100000', 5, 'Rt 19 rw 01', '2021-05-09', '3', NULL, ''),
(15, 'Apriyana H.', 4, '0', 7, 'Wisma Tropodo', '2021-05-09', '3', NULL, 'Beras 14 kg'),
(16, 'Bpk Ari', 3, '1000', 7, 'K24', '2021-05-09', '3', NULL, ''),
(17, 'Rohaida', 4, '450000', 7, 'Dukuh ngingas', '2021-05-09', '3', NULL, 'Sakit'),
(18, 'Bpk Adi Maulana', 3, '5000', 7, 'Perum Graha Tirta Dahlia', '2021-05-09', '3', NULL, ''),
(19, 'Bpk Wahyu Romahdhony', 1, '17000', 7, 'Magetan', '2021-05-09', '3', NULL, ''),
(20, 'Sarito', 3, '1000', 5, 'Rt 19', '2021-05-10', '3', NULL, ''),
(21, 'Nurhayati', 3, '17000', 7, 'Makarya Binangun', '2021-05-10', '3', NULL, ''),
(22, 'Indra Gunawan', 3, '1000', 7, 'Buduran', '2021-05-10', '3', NULL, ''),
(23, 'Filza nur khanani', 4, '450000', 7, 'Brigjen katamso', '2021-05-10', '11', NULL, ''),
(24, 'Ibu nur aini', 3, '64000', 1, '', '2021-05-10', '11', NULL, ''),
(25, 'Bpk pulung', 1, '500000', 7, 'Graha Tirta akasia', '2021-05-10', '11', NULL, ''),
(26, 'Bpk pulung', 3, '269000', 7, 'Graha Tirta akasia', '2021-05-10', '11', NULL, ''),
(27, 'Bpk suparto', 3, '2000', 7, 'Ngingas', '2021-05-10', '11', NULL, ''),
(28, 'Bpk sigit', 1, '100000', 2, 'RT 02', '2021-05-10', '11', NULL, ''),
(29, 'Bpk sigit ', 3, '100000', 2, 'RT 02', '2021-05-10', '11', NULL, ''),
(30, 'Ibu suminten', 4, '450000', 5, 'RT 19', '2021-05-10', '11', NULL, ''),
(31, 'Juwanto', 3, '200000', 6, 'Rt 20', '2021-05-10', '3', NULL, ''),
(33, 'Ibu Prapto', 4, '225000', 1, '', '2021-05-11', '12', NULL, ''),
(34, 'Pak Syukur', 3, '200000', 4, 'RT 18', '2021-05-11', '12', NULL, ''),
(35, 'Hj Abdul Manan', 1, '500000', 7, 'WEDORO MASJID', '2021-05-11', '12', NULL, ''),
(36, 'Ibu Desy', 3, '68000', 7, 'MASANGAN GEDANGAN', '2021-05-11', '12', NULL, ''),
(37, 'Bapak Imam', 3, '17000', 3, 'JANTI 03', '2021-05-11', '12', NULL, ''),
(38, 'Bapak Yahya', 3, '250000', 4, 'JANTI RT18', '2021-05-11', '12', NULL, ''),
(39, 'Ibu Mariyah', 3, '250000', 4, 'JANTI RT18', '2021-05-11', '12', NULL, ''),
(40, 'PT SERODJA SURYA KACA', 2, '500000', 7, 'JANTI', '2021-05-11', '12', NULL, ''),
(41, 'Bpk. Aan', 1, '1500000', 4, 'RT18/RW01', '2021-05-11', '5', NULL, ''),
(42, 'Bpk. Selamet Riyanto', 3, '50000', 2, '02/01 Janti', '2021-05-11', '12', NULL, ''),
(43, 'Bpk. Wawan', 1, '100000', 7, 'Gunung Sari', '2021-05-11', '12', NULL, ''),
(44, 'Ibu Sadan', 1, '150000', 3, 'Rt 03 RW 01', '2021-05-11', '3', NULL, ''),
(45, 'Ibu Hasna Rief / Bapak Johan W', 1, '500000', 5, 'Rt 19 rw 01', '2021-05-11', '3', NULL, ''),
(46, 'H. Mulyadi', 1, '100000', 4, 'Rt 18 rw 01', '2021-05-11', '3', NULL, ''),
(47, 'H. Nuril Huda', 1, '200000', 6, 'Rt 20 rw 01', '2021-05-11', '3', NULL, ''),
(48, 'H. Sukani', 1, '500000', 6, 'Rt 20 rw 01', '2021-05-11', '3', NULL, ''),
(49, 'Bpk. Rudi Setiawan', 1, '100000', 4, 'RT 18', '2021-05-11', '11', NULL, ''),
(50, 'Ibu Siti', 3, '7000', 3, 'RT 03 RW 01', '2021-05-11', '12', NULL, ''),
(51, 'Bapak Mulyadi', 1, '500000', 1, 'Janti RT 01', '2021-05-11', '3', NULL, ''),
(52, 'Ari budiono', 3, '100000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, ''),
(53, 'Nanuk Susilowati', 4, '450000', 7, 'Makarya Binangun', '2021-05-11', '12', NULL, ''),
(54, 'Bapak Sutomo', 1, '1000000', 1, 'Janti RT 01', '2021-05-11', '3', NULL, ''),
(55, 'Elinda Wulandari', 4, '250000', 3, 'RT 03 RW 01', '2021-05-11', '12', NULL, ''),
(56, 'Jahuri', 1, '1450000', 2, 'RT 02 RW 01', '2021-05-11', '12', NULL, ''),
(57, 'Bapak makmun', 3, '200000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, ''),
(58, 'Bapak Sadali', 3, '200000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, ''),
(59, 'Bapak Artono', 1, '100000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, ''),
(60, 'Toko Setiawan', 2, '200000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, ''),
(61, 'Gangsar montor (Bpk Sigit)', 1, '300000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, ''),
(62, 'Bapak Munasrip', 3, '1000', 4, 'Janti RT 18', '2021-05-11', '3', NULL, ''),
(63, 'Pak Suwono', 3, '50000', 3, 'RT 03 RW 01', '2021-05-11', '12', NULL, ''),
(64, 'Pak Malik', 3, '17000', 4, 'RT 18 RW 01', '2021-05-11', '12', NULL, ''),
(65, 'Bapak Jalil', 3, '8000', 5, 'RT 19 RW 01', '2021-05-11', '12', NULL, ''),
(66, 'Wahyu', 4, '450000', 2, 'RT 02 RW 01', '2021-05-11', '12', NULL, ''),
(67, 'Bapak Mulyadi', 1, '500000', 1, 'RT 01 RW 01', '2021-05-11', '12', NULL, ''),
(68, 'Bani Adam', 3, '100000', 1, 'Rt 01 Rw 01', '2021-05-11', '3', NULL, ''),
(69, 'Roni', 1, '500000', 6, 'Rt 20 Rw 01', '2021-05-11', '3', NULL, ''),
(70, 'Adi triyasa', 4, '180000', 5, 'RT 19', '2021-05-11', '3', NULL, '12 Hari'),
(71, 'Ibu Prapto', 3, '42000', 4, 'Rt 18 RW 01', '2021-05-11', '3', NULL, ''),
(72, 'Cristian dan Tyas', 3, '34000', 1, 'Rt 01', '2021-05-12', '3', NULL, ''),
(73, 'Mbak Indra', 1, '100000', 1, 'Rt 01', '2021-05-12', '3', NULL, ''),
(74, 'Fulan', 3, '50000', 1, 'Rt 01', '2021-05-12', '3', NULL, ''),
(76, 'H. Suyono', 1, '200000', 6, NULL, '2022-05-01', '3', '18', ''),
(77, 'Suliyat', 3, '85000', 6, 'Rt 20 rw 01', '2021-05-12', '3', NULL, ''),
(78, 'Albad', 3, '368000', 7, 'Pengkol', '2021-05-12', '3', NULL, ''),
(79, 'Imron', 3, '68000', 2, 'Rt 02 rw 01', '2021-05-12', '3', NULL, ''),
(80, 'Asiyah', 4, '450000', 3, 'Rt 03', '2021-05-12', '3', NULL, ''),
(81, 'Sugito', 1, '200000', 2, 'Rt 02', '2021-05-12', '3', NULL, ''),
(82, 'Moch Zaini', 4, '0', 1, '', '2021-05-12', '3', NULL, 'Beras 10 kg'),
(83, 'Moh. Nasrullah', 3, '35000', 2, 'RT 02 RW 01', '2021-05-12', '12', NULL, ''),
(84, 'Moch. Nasrullah', 3, '35000', 2, 'RT 02 RW 01', '2021-05-12', '12', NULL, ''),
(85, 'Ibu Pradita', 3, '1000', 7, 'Gang 5 No.128', '2021-05-12', '12', NULL, ''),
(86, 'Bu Eka', 3, '175000', 7, 'Gang 5 No.18', '2021-05-12', '12', NULL, ''),
(87, 'Sumarlan ', 3, '100000', 1, 'Rt 01', '2021-05-12', '3', NULL, ''),
(88, 'Dullah ', 3, '20000', 1, 'Rt 01', '2021-05-12', '3', NULL, ''),
(89, 'Rochim', 3, '100000', 1, 'Rt 01', '2021-05-12', '3', NULL, ''),
(90, 'A. Muqorrobin', 3, '2000', 7, 'Tropodo', '2022-04-26', '11', NULL, ''),
(91, 'Agus Sugiantoro', 3, '5000', 2, '', '2022-04-26', '11', NULL, ''),
(92, 'Lukman Hakim', 1, '2500000', 7, 'Janti', '2022-04-26', '11', '15', ''),
(93, 'Bapak didik sutrisno', 3, '1000', 3, '', '2022-04-27', '11', '17', ''),
(94, 'bapak Udin', 3, '20000', 3, '', '2022-04-27', '11', '17', ''),
(95, 'Salim', 3, '100000', 2, NULL, '2022-04-28', '11', NULL, ''),
(96, 'muslich', 3, '16000', 3, '', '2022-04-28', '11', NULL, ''),
(97, 'bapak Sukandji', 3, '2000', 6, '', '2022-04-29', '11', '17', ''),
(98, 'bapak agus suharto', 1, '250000', 7, 'KH Malik Dalam', '2022-04-29', '11', '17', ''),
(99, 'Bapak slamet', 3, '70000', 2, '', '2022-04-29', '11', '17', ''),
(100, 'bapak roki', 3, '2000', 2, '', '2022-04-29', '11', '17', ''),
(101, 'bapak miftahudin', 3, '60000', 5, '', '2022-04-29', '11', '17', ''),
(102, 'bapak nur', 3, '2000', 4, '', '2022-04-29', '11', '17', ''),
(103, 'Bapak Sarim', 1, '50000', 3, '', '2022-04-29', '11', NULL, ''),
(104, 'Ibu Ifa', 3, '48000', 3, '', '2022-04-29', '11', NULL, ''),
(105, 'Fildzah Nur Khanani', 4, '450000', 6, '', '2022-04-29', '11', NULL, ''),
(106, 'mbah marlina', 4, '150000', 7, 'rewin', '2022-04-29', '11', NULL, ''),
(107, 'ibu noviani', 4, '450000', 7, 'jl. parang banom 18 krembangan surabaya', '2022-04-29', '11', NULL, ''),
(108, 'Bapak Supriyanto', 1, '500000', 3, '', '2022-04-30', '11', '17', ''),
(109, 'Bapak dauid', 1, '100000', 4, '', '2022-04-30', '11', '17', ''),
(110, 'Mbak Lia', 3, '48000', 5, '', '2022-04-30', '11', '17', ''),
(111, 'Bapak Sugeng', 3, '8000', 5, '', '2022-04-30', '11', '17', ''),
(112, 'Bapak Sukur', 3, '100000', 4, '', '2022-04-30', '11', '17', ''),
(113, 'Pak Zakaria', 4, '450000', 3, '', '2022-04-30', '11', '17', ''),
(114, 'romadhoni', 1, '50000', 7, 'magetan', '2022-04-30', '11', NULL, ''),
(115, 'bapak luth', 3, '3000', 2, '', '2022-04-30', '11', NULL, ''),
(116, 'ibu nanuk susilowati', 4, '450000', 7, 'perum makarya binangun', '2022-04-30', '11', NULL, ''),
(117, 'chuliyatul muroddah', 4, '225000', 2, '', '2022-04-30', '11', NULL, ''),
(118, 'abu bakar', 4, '375000', 2, '', '2022-04-30', '11', NULL, ''),
(119, 'Ibu Aminah', 3, '2000', 1, '', '2022-04-30', '11', '17', ''),
(120, 'Bapak juli eko sumadi anto', 3, '30000', 7, 'makarya binangun', '2022-04-30', '11', '17', ''),
(121, 'Bapak jawri', 1, '1500000', 2, '', '2022-04-30', '11', '17', ''),
(122, 'H abdul mannan s', 1, '500000', 7, 'wedoro masjud', '2022-04-30', '11', '17', ''),
(123, 'Ibu syanti dewi', 3, '16000', 7, 'wisma tropodo', '2022-04-30', '11', '17', ''),
(124, 'Budhe rahayu', 3, '32000', 1, '', '2022-04-30', '11', '17', ''),
(125, 'BPK hariyanto', 3, '1000', 1, '', '2022-04-30', '11', '17', ''),
(126, 'Bu johan', 1, '750000', 5, '', '2022-05-01', '3', '19', ''),
(127, 'Bpk. Hartono', 4, '450000', 5, '', '2022-05-01', '3', '19', 'Fidyah 30'),
(128, 'Hj. Siti nurhayati', 3, '100000', 5, '', '2022-05-01', '3', '19', ''),
(129, 'Bapak Sutomo', 1, '1000000', 1, '', '2022-05-01', '24', '14', 'Diantar Fian malam, 30 April malam Hari\r\n\r\nSeharusnya masuk donatur'),
(130, 'Riyadus shalihin', 3, '14000', 2, '', '2022-05-01', '5', NULL, ''),
(131, 'Eka Y S', 3, '100000', 4, '', '2022-05-01', '5', NULL, ''),
(132, 'Hj Anton (bu suminten)', 4, '450000', 5, NULL, '2022-05-01', '24', NULL, '19'),
(133, 'bapak dodik', 3, '3000', 6, '', '2022-05-01', '11', NULL, ''),
(134, 'bapak sigit', 3, '50000', 2, '', '2022-05-01', '11', NULL, ''),
(135, 'bpk ahmad sholeh', 3, '6000', 1, '', '2022-05-01', '11', NULL, ''),
(136, 'ali maskur', 3, '1000', 6, '', '2022-05-01', '11', NULL, ''),
(137, 'usman ali', 3, '20000', 3, '', '2022-05-01', '11', NULL, ''),
(138, 'agus bahrul', 3, '8000', 3, '', '2022-05-01', '11', NULL, ''),
(139, 'ibu jamila', 4, '435000', 2, '', '2022-05-01', '11', NULL, ''),
(140, 'bapak panut', 3, '32000', 2, '', '2022-05-01', '11', NULL, ''),
(141, 'Bapak Imron', 3, '64000', 2, '', '2022-05-01', '11', NULL, ''),
(142, 'Ibu Lik Amah', 4, '600000', 7, 'graha tirta', '2022-05-01', '11', NULL, ''),
(143, 'Lillah', 3, '164000', 7, 'graha tirta bromelia', '2022-05-01', '11', NULL, ''),
(144, 'Ibu Suwarti', 3, '1000', 7, 'bandel', '2022-05-01', '11', NULL, ''),
(145, 'pak mario', 3, '20000', 1, '', '2022-05-01', '11', NULL, ''),
(146, 'Juwanto', 3, '100000', 6, '', '2022-05-01', '11', NULL, ''),
(147, 'bapak yudha', 3, '62000', 7, 'kalijudan taruna 2', '2022-05-01', '11', NULL, ''),
(148, 'qomariah sofiyan', 3, '0', 7, 'berebek', '2022-05-01', '5', NULL, 'shodaqoh beras 3kg'),
(149, 'hamba allah', 3, '0', 7, 'makariya', '2022-05-01', '5', NULL, 'sodaqoh beras 50kg'),
(150, 'Bapak Lukman Hakim', 1, '2000000', 7, 'Graha Tirta', '2023-04-18', '24', NULL, ''),
(151, 'Muslik', 3, '16000', 3, '', '2023-04-18', '24', NULL, ''),
(152, 'Bapak Sigit', 3, '50000', 2, '', '2023-04-18', '24', NULL, ''),
(153, 'Mugianto', 3, '4000', 7, 'Kedung rejo', '2023-04-18', '24', NULL, ''),
(154, 'Aris Sutrisna', 3, '208000', 3, '', '2023-04-18', '24', NULL, ''),
(155, 'Bpk Rohmad Jainudin', 3, '22000', 3, '', '2023-04-19', '24', NULL, ''),
(156, 'Bapak Salim', 3, '200000', 2, '', '2023-04-19', '24', NULL, ''),
(157, 'Bapak Ari K24 Apotek', 1, '6000000', 2, '', '2023-04-19', '24', NULL, ''),
(158, 'Ibu Nanuk', 4, '450000', 7, 'Graha Tirta Akasia', '2023-04-19', '24', NULL, ''),
(159, 'Bpk Pulung', 3, '2000', 7, 'Graha Tirta', '2023-04-19', '24', NULL, ''),
(160, 'Fulan', 3, '10000', 7, '', '2023-04-19', '24', NULL, ''),
(161, 'Aminah', 3, '16000', 7, 'Janti', '2023-04-19', '24', NULL, ''),
(162, 'M Jahuri', 1, '1000000', 2, '', '2023-04-19', '24', NULL, ''),
(163, 'Bapak Slamet', 3, '50000', 7, 'Janti', '2023-04-19', '24', NULL, ''),
(164, 'Ibu Syanti', 3, '8000', 7, 'Wisma Tropodo', '2023-04-19', '24', NULL, ''),
(165, 'Bapak Sadali', 3, '200000', 2, '', '2023-04-19', '24', '15', ''),
(166, 'Bapak Makmun', 3, '300000', 2, '', '2023-04-19', '24', '15', ''),
(167, 'Bapak M Chamzah', 1, '200000', 3, '', '2023-04-20', '24', '16', ''),
(168, 'Gangsar Motor (Bapak Sigit)', 1, '500000', 2, '', '2023-04-20', '24', '15', ''),
(169, 'Bapak Teguh Harjanto', 3, '32000', 7, 'Perum BPKP Kedung rejo', '2023-04-20', '24', NULL, ''),
(170, 'Bapak Artono', 3, '100000', 2, NULL, '2023-04-20', '24', NULL, '15'),
(171, 'Bapak Setiawan (Toko Elektroni', 2, '200000', 2, '', '2023-04-20', '24', '15', ''),
(172, 'fajar nur laba', 3, '200000', 2, '', '2023-04-20', '24', '19', ''),
(173, 'Mbak Fida', 3, '1000000', 4, '', '2023-04-20', '24', NULL, ''),
(174, 'Miftachudin', 3, '100000', 5, '', '2023-04-20', '24', NULL, ''),
(175, 'H. Anton', 1, '300000', 5, '', '2023-04-20', '3', '19', ''),
(176, 'H. Anton', 1, '300000', 5, '', '2023-04-20', '3', '19', ''),
(177, 'Median Dwi Restana', 1, '100000', 7, 'Perum RRI', '2023-04-20', '24', NULL, ''),
(178, 'Ribkah Anom Prasasti', 4, '90000', 7, 'Perum RI', '2023-04-20', '24', NULL, ''),
(179, 'Ribkah Anom Prasasti', 3, '10000', 7, 'Perum RRI', '2023-04-20', '24', NULL, ''),
(180, 'Dayat', 3, '100000', 3, '', '2023-04-20', '24', NULL, ''),
(181, 'H Yono', 1, '300000', 6, '', '2023-04-20', '24', NULL, ''),
(182, 'H Sukani', 1, '300000', 6, '', '2023-04-20', '24', NULL, ''),
(183, 'Bapak Alban', 3, '500000', 7, 'Dusun Pengkol', '2023-04-20', '24', NULL, ''),
(184, 'ibu Tyas', 4, '165000', 1, '', '2023-04-20', '24', NULL, ''),
(185, 'Ibu Pameilla', 4, '250000', 1, '', '2023-04-20', '24', '14', ''),
(186, 'ibu Tyas', 3, '61000', 1, '', '2023-04-20', '24', '14', ''),
(187, 'Bapak H Johan W', 1, '300000', 5, '', '2023-04-20', '24', '19', ''),
(188, 'Mukhlis', 3, '100000', 5, '', '2023-04-20', '24', NULL, ''),
(189, 'Umi khoiriyah', 4, '120000', 2, '', '2023-04-21', '3', NULL, ''),
(190, 'Umi khoiriyah', 3, '40000', 2, '', '2023-04-21', '3', NULL, ''),
(191, 'Bapak M Choiri', 3, '200000', 3, '', '2023-04-21', '24', '16', ''),
(192, 'Aris Budiono', 3, '150000', 2, '', '2023-04-21', '24', NULL, ''),
(193, 'Hj. amaniyati', 4, '225000', 4, '', '2023-04-21', '24', NULL, ''),
(194, 'Alfan', 4, '15000', 2, '', '2023-04-21', '24', NULL, ''),
(195, 'Alfan', 3, '145000', 2, '', '2023-04-21', '24', NULL, ''),
(196, 'Bp. Abu Bakar', 4, '450000', 2, '', '2023-04-21', '5', NULL, '30 Hari'),
(197, 'M. Abdul Aziz', 3, '8000', 2, '', '2023-04-21', '5', NULL, ''),
(198, 'Muh Yusuf Fahmi', 1, '300000', 7, 'Makarya', '2023-04-21', '5', NULL, ''),
(199, 'Mbah Fathona', 4, '0', 7, '', '2023-04-21', '5', NULL, '9 KG'),
(200, 'bpk imron', 3, '4000', 2, '', '2023-04-21', '24', NULL, ''),
(201, 'bpak juwanto', 1, '100000', 6, '', '2023-04-21', '24', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_donatur`
--
ALTER TABLE `tbl_donatur`
  ADD PRIMARY KEY (`id_donatur`) USING BTREE;

--
-- Indexes for table `tbl_master_akses`
--
ALTER TABLE `tbl_master_akses`
  ADD PRIMARY KEY (`id_akses`) USING BTREE;

--
-- Indexes for table `tbl_master_alamat`
--
ALTER TABLE `tbl_master_alamat`
  ADD PRIMARY KEY (`id_master_alamat`) USING BTREE;

--
-- Indexes for table `tbl_master_jabatan`
--
ALTER TABLE `tbl_master_jabatan`
  ADD PRIMARY KEY (`id_master_jabatan`) USING BTREE;

--
-- Indexes for table `tbl_master_kwitansi`
--
ALTER TABLE `tbl_master_kwitansi`
  ADD PRIMARY KEY (`id_kwitansi`) USING BTREE;

--
-- Indexes for table `tbl_master_laporan`
--
ALTER TABLE `tbl_master_laporan`
  ADD PRIMARY KEY (`id_master_lap`) USING BTREE;

--
-- Indexes for table `tbl_master_lokasi`
--
ALTER TABLE `tbl_master_lokasi`
  ADD PRIMARY KEY (`id_lokasi`) USING BTREE;

--
-- Indexes for table `tbl_master_maal`
--
ALTER TABLE `tbl_master_maal`
  ADD PRIMARY KEY (`id_master_maal`) USING BTREE;

--
-- Indexes for table `tbl_master_penerima`
--
ALTER TABLE `tbl_master_penerima`
  ADD PRIMARY KEY (`id_ket`) USING BTREE;

--
-- Indexes for table `tbl_penerima`
--
ALTER TABLE `tbl_penerima`
  ADD PRIMARY KEY (`id_penerima`) USING BTREE;

--
-- Indexes for table `tbl_user_koor`
--
ALTER TABLE `tbl_user_koor`
  ADD PRIMARY KEY (`id_user_koor`) USING BTREE;

--
-- Indexes for table `tbl_user_petugas`
--
ALTER TABLE `tbl_user_petugas`
  ADD PRIMARY KEY (`id_user_petugas`) USING BTREE;

--
-- Indexes for table `tbl_zakat_fitrah`
--
ALTER TABLE `tbl_zakat_fitrah`
  ADD PRIMARY KEY (`id_zakat_fitrah`) USING BTREE;

--
-- Indexes for table `tbl_zakat_maal`
--
ALTER TABLE `tbl_zakat_maal`
  ADD PRIMARY KEY (`id_zakat_maal`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_donatur`
--
ALTER TABLE `tbl_donatur`
  MODIFY `id_donatur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_master_akses`
--
ALTER TABLE `tbl_master_akses`
  MODIFY `id_akses` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_master_alamat`
--
ALTER TABLE `tbl_master_alamat`
  MODIFY `id_master_alamat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_master_jabatan`
--
ALTER TABLE `tbl_master_jabatan`
  MODIFY `id_master_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_master_kwitansi`
--
ALTER TABLE `tbl_master_kwitansi`
  MODIFY `id_kwitansi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_master_laporan`
--
ALTER TABLE `tbl_master_laporan`
  MODIFY `id_master_lap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_master_maal`
--
ALTER TABLE `tbl_master_maal`
  MODIFY `id_master_maal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_master_penerima`
--
ALTER TABLE `tbl_master_penerima`
  MODIFY `id_ket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_penerima`
--
ALTER TABLE `tbl_penerima`
  MODIFY `id_penerima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=669;

--
-- AUTO_INCREMENT for table `tbl_user_koor`
--
ALTER TABLE `tbl_user_koor`
  MODIFY `id_user_koor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_petugas`
--
ALTER TABLE `tbl_user_petugas`
  MODIFY `id_user_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_zakat_fitrah`
--
ALTER TABLE `tbl_zakat_fitrah`
  MODIFY `id_zakat_fitrah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1161;

--
-- AUTO_INCREMENT for table `tbl_zakat_maal`
--
ALTER TABLE `tbl_zakat_maal`
  MODIFY `id_zakat_maal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
