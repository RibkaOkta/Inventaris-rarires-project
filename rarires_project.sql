-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2021 at 04:20 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rarires_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `klmpk_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_bidang` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_lokasi` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`no`, `kode_brg`, `nama_brg`, `merk_brg`, `kondisi_brg`, `sumber_dana`, `ket_brg`, `klmpk_alat`, `kode_bidang`, `kode_lokasi`, `tanggal`) VALUES
('1.F106.21.1.001.003', '001', 'Mejauh', 'Ikea', 'Baik', 'Pak rei', 'bagas', '1', '1', 'F106', '2021-09-09');

-- --------------------------------------------------------

--
-- Table structure for table `bidang_brg`
--

CREATE TABLE `bidang_brg` (
  `kode_bidang_brg` int(10) UNSIGNED NOT NULL,
  `bidang_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bidang_brg`
--

INSERT INTO `bidang_brg` (`kode_bidang_brg`, `bidang_brg`) VALUES
(1, 'Barang Umum'),
(2, 'Barang Alat Lab'),
(3, 'Barang Koperasi'),
(4, 'Barang UKS'),
(5, 'Barang TU'),
(6, 'Barang Ruang Guru'),
(7, 'Barang Ruang Perpustakaan'),
(8, 'Barang Ruang Satpam');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `klmpk_alat`
--

CREATE TABLE `klmpk_alat` (
  `kode_klmpk_alat` int(10) UNSIGNED NOT NULL,
  `klmpk_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `klmpk_alat`
--

INSERT INTO `klmpk_alat` (`kode_klmpk_alat`, `klmpk_alat`) VALUES
(1, 'Mebeler'),
(2, 'Elektronik'),
(3, 'Alat Ukur'),
(4, 'Alat Praktik'),
(5, 'Alat Triner'),
(6, 'Alat Musik'),
(7, 'Kendaraan');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `kode_lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gedung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lantai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket_ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`kode_lokasi`, `gedung`, `lantai`, `ruangan`, `ket_ruang`, `created_at`, `updated_at`) VALUES
('A101', 'A', '1', '1', 'Ruang Kepala Sekolah', NULL, NULL),
('A102', 'A', '1', '2', 'Ruang Tata Usaha', NULL, NULL),
('A103', 'A', '1', '3', 'Pengurus Yayasan', NULL, NULL),
('A104', 'A', '1', '4', 'Sekretaris Yayasan', NULL, NULL),
('A105', 'A', '1', '5', 'Pantry', NULL, NULL),
('A106', 'A', '1', '6', 'VIP', NULL, NULL),
('A107', 'A', '1', '7', 'Kamar Mandi', NULL, NULL),
('A201', 'A', '2', '1', 'Guru', NULL, NULL),
('A202', 'A', '2', '2', 'Rapat', NULL, NULL),
('A203', 'A', '2', '3', 'Kamar Mandi', NULL, NULL),
('B101', 'B', '1', '1', 'Lab. Bahasa', NULL, NULL),
('B102', 'B', '1', '2', 'Lab. IPA', NULL, NULL),
('B103', 'B', '1', '3', 'UKS dan BK', NULL, NULL),
('B104', 'B', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
('B201', 'B', '2', '1', 'Perpustakaan', NULL, NULL),
('B202', 'B', '2', '2', 'Ruang BK', NULL, NULL),
('B203', 'B', '2', '3', 'Kamar Mandi', NULL, NULL),
('C101', 'C', '1', '1', 'Kelas XII BKP', NULL, NULL),
('C102', 'C', '1', '2', 'Ruang Pramuka', NULL, NULL),
('C103', 'C', '1', '3', 'Ibadah', NULL, NULL),
('C104', 'C', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
('C201', 'C', '2', '1', 'Kelas XII TB', NULL, NULL),
('C202', 'C', '2', '2', 'Kelas XII RPL', NULL, NULL),
('C203', 'C', '2', '3', 'Kelas XII MM', NULL, NULL),
('C204', 'C', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
('D101', 'D', '1', '1', 'Kelas XI BKP', NULL, NULL),
('D102', 'D', '1', '2', 'Kelas XI TKRO', NULL, NULL),
('D103', 'D', '1', '3', 'Kelas XII TKRO', NULL, NULL),
('D104', 'D', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
('D201', 'D', '2', '1', 'Kelas XI TB', NULL, NULL),
('D202', 'D', '2', '2', 'Kelas XI RPL', NULL, NULL),
('D203', 'D', '2', '3', 'Kelas XI MM', NULL, NULL),
('D204', 'D', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
('E101', 'E', '1', '1', 'Kelas X RPL', NULL, NULL),
('E102', 'E', '1', '2', 'Kelas X BKP', NULL, NULL),
('E103', 'E', '1', '3', 'OSIS', NULL, NULL),
('E104', 'E', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
('E201', 'E', '2', '1', 'Kelas X TKRO', NULL, NULL),
('E202', 'E', '2', '2', 'Kelas X TB', NULL, NULL),
('E203', 'E', '2', '3', 'Kelas X MM', NULL, NULL),
('E204', 'E', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
('F101', 'F', '1', '1', 'Lab KKPI', NULL, NULL),
('F102', 'F', '1', '2', 'Lab RPL', NULL, NULL),
('F103', 'F', '1', '3', 'Lab Hardware', NULL, NULL),
('F104', 'F', '1', '4', 'Ruang Instruktur', NULL, NULL),
('F105', 'F', '1', '5', 'Lab Radio', NULL, NULL),
('F106', 'F', '1', '6', 'Kamar Mandi Putri', NULL, NULL),
('F201', 'F', '2', '1', 'Lab MM', NULL, NULL),
('F202', 'F', '2', '2', 'Lab Film', NULL, NULL),
('F203', 'F', '2', '3', 'Lab Make Up', NULL, NULL),
('F204', 'F', '2', '4', 'Lab Instruktur MM', NULL, NULL),
('G101', 'G', '1', '1', 'Instruktur JB', NULL, NULL),
('G102', 'G', '1', '2', 'Dapur Produktif JB', NULL, NULL),
('G103', 'G', '1', '3', 'Personal Kitchen JB', NULL, NULL),
('G201', 'G', '2', '1', 'Table Maner', NULL, NULL),
('G202', 'G', '2', '2', 'Lab Jasa Boga', NULL, NULL),
('GA', 'A', '', 'Gudang', 'Alat Kebersihan', NULL, NULL),
('GB', 'B', '', 'Gudang', 'Alat Olahraga', NULL, NULL),
('GC', 'C', '', 'Gudang', 'Property JB', NULL, NULL),
('GD', 'D', '', 'Gudang', 'Kamar', NULL, NULL),
('GE', 'E', '', 'Gudang', '', NULL, NULL),
('H101', '', '', '', 'Ruang Alat BKP', NULL, NULL),
('H102', '', '', '', 'Ruang Instruktur BKP', NULL, NULL),
('I101', '', '', '', 'Cafe Alaska', NULL, NULL),
('I102', '', '', '', 'Koperasi', NULL, NULL),
('J101', '', '', '', 'Lapangan Depan', NULL, NULL),
('J102', '', '', '', 'Lapangan Tengah', NULL, NULL),
('J103', '', '', '', 'Karpet Hijau', NULL, NULL),
('J104', '', '', '', 'Area Parkir', NULL, NULL),
('J105', '', '', '', 'Area Garasi', NULL, NULL),
('K101', '', '', '', 'Workshop Otomotif', NULL, NULL),
('K102', '', '', '', 'Ruang Alat Tkro', NULL, NULL),
('K103', '', '', '', 'Ruang Bahan TKRO', NULL, NULL),
('K201', '', '', '', 'Ruang Pembelajaran TKRO', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(40, '2014_10_12_000000_create_users_table', 1),
(41, '2014_10_12_100000_create_password_resets_table', 1),
(42, '2019_08_19_000000_create_failed_jobs_table', 1),
(43, '2021_09_13_033041_create_barang', 1),
(44, '2021_09_13_033636_create_lokasi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `bidang_brg`
--
ALTER TABLE `bidang_brg`
  ADD PRIMARY KEY (`kode_bidang_brg`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klmpk_alat`
--
ALTER TABLE `klmpk_alat`
  ADD PRIMARY KEY (`kode_klmpk_alat`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`kode_lokasi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidang_brg`
--
ALTER TABLE `bidang_brg`
  MODIFY `kode_bidang_brg` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `klmpk_alat`
--
ALTER TABLE `klmpk_alat`
  MODIFY `kode_klmpk_alat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
