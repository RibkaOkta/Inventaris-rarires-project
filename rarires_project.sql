-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 08:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

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
  `kode_bidang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `kode_lokasi` int(10) UNSIGNED NOT NULL,
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
(1, 'A', '1', '1', 'Ruang Kepala Sekolah', NULL, NULL),
(2, 'A', '1', '2', 'Ruang Tata Usaha', NULL, NULL),
(3, 'A', '1', '3', 'Pengurus Yayasan', NULL, NULL),
(4, 'A', '1', '4', 'Sekretaris Yayasan', NULL, NULL),
(5, 'A', '1', '5', 'Pantry', NULL, NULL),
(6, 'A', '1', '6', 'VIP', NULL, NULL),
(7, 'A', '1', '7', 'Kamar Mandi', NULL, NULL),
(8, 'A', '2', '1', 'Guru', NULL, NULL),
(9, 'A', '2', '2', 'Rapat', NULL, NULL),
(10, 'A', '2', '3', 'Kamar Mandi', NULL, NULL),
(11, 'B', '1', '1', 'Lab. Bahasa', NULL, NULL),
(12, 'B', '1', '2', 'Lab. IPA', NULL, NULL),
(13, 'B', '1', '3', 'UKS dan BK', NULL, NULL),
(14, 'B', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
(15, 'B', '2', '1', 'Perpustakaan', NULL, NULL),
(16, 'B', '2', '2', 'Ruang BK', NULL, NULL),
(17, 'B', '2', '3', 'Kamar Mandi', NULL, NULL),
(18, 'C', '1', '1', 'Kelas XII BKP', NULL, NULL),
(19, 'C', '1', '2', 'Ruang Pramuka', NULL, NULL),
(20, 'C', '1', '3', 'Ibadah', NULL, NULL),
(21, 'C', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
(22, 'C', '2', '1', 'Kelas XII TB', NULL, NULL),
(23, 'C', '2', '2', 'Kelas XII RPL', NULL, NULL),
(24, 'C', '2', '3', 'Kelas XII MM', NULL, NULL),
(25, 'C', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
(26, 'D', '1', '1', 'Kelas XI BKP', NULL, NULL),
(27, 'D', '1', '2', 'Kelas XI TKRO', NULL, NULL),
(28, 'D', '1', '3', 'Kelas XII TKRO', NULL, NULL),
(29, 'D', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
(30, 'D', '2', '1', 'Kelas XI TB', NULL, NULL),
(31, 'D', '2', '2', 'Kelas XI RPL', NULL, NULL),
(32, 'D', '2', '3', 'Kelas XI MM', NULL, NULL),
(33, 'D', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
(34, 'E', '1', '1', 'Kelas X RPL', NULL, NULL),
(35, 'E', '1', '2', 'Kelas X BKP', NULL, NULL),
(36, 'E', '1', '3', 'OSIS', NULL, NULL),
(37, 'E', '1', '4', 'Kamar Mandi Putri', NULL, NULL),
(38, 'E', '2', '1', 'Kelas X TKRO', NULL, NULL),
(39, 'E', '2', '2', 'Kelas X TB', NULL, NULL),
(40, 'E', '2', '3', 'Kelas X MM', NULL, NULL),
(41, 'E', '2', '4', 'Kamar Mandi Putra', NULL, NULL),
(42, 'F', '1', '1', 'Lab KKPI', NULL, NULL),
(43, 'F', '1', '2', 'Lab RPL', NULL, NULL),
(44, 'F', '1', '3', 'Lab Hardware', NULL, NULL),
(45, 'F', '1', '4', 'Ruang Instruktur', NULL, NULL),
(46, 'F', '1', '5', 'Lab Radio', NULL, NULL),
(47, 'F', '1', '6', 'Kamar Mandi Putri', NULL, NULL),
(48, 'F', '2', '1', 'Lab MM', NULL, NULL),
(49, 'F', '2', '2', 'Lab Film', NULL, NULL),
(50, 'F', '2', '3', 'Lab Make Up', NULL, NULL),
(51, 'F', '2', '4', 'Lab Instruktur MM', NULL, NULL),
(52, 'G', '1', '1', 'Instruktur JB', NULL, NULL),
(53, 'G', '1', '2', 'Dapur Produktif JB', NULL, NULL),
(54, 'G', '1', '3', 'Personal Kitchen JB', NULL, NULL),
(55, 'G', '2', '1', 'Table Maner', NULL, NULL),
(56, 'G', '2', '2', 'Lab Jasa Boga', NULL, NULL),
(57, 'A', '', 'Gudang', 'Alat Kebersihan', NULL, NULL),
(58, 'B', '', 'Gudang', 'Alat Olahraga', NULL, NULL),
(59, 'C', '', 'Gudang', 'Property JB', NULL, NULL),
(60, 'D', '', 'Gudang', 'Kamar', NULL, NULL),
(61, 'E', '', 'Gudang', '', NULL, NULL),
(62, '', '', '', 'Ruang Alat BKP', NULL, NULL),
(63, '', '', '', 'Ruang Instruktur BKP', NULL, NULL),
(64, '', '', '', 'Cafe Alaska', NULL, NULL),
(65, '', '', '', 'Koperasi', NULL, NULL),
(66, '', '', '', 'Lapangan Depan', NULL, NULL),
(67, '', '', '', 'Lapangan Tengah', NULL, NULL),
(68, '', '', '', 'Karpet Hijau', NULL, NULL),
(69, '', '', '', 'Area Parkir', NULL, NULL),
(70, '', '', '', 'Area Garasi', NULL, NULL),
(71, '', '', '', 'Workshop Otomotif', NULL, NULL),
(72, '', '', '', 'Ruang Alat Tkro', NULL, NULL),
(73, '', '', '', 'Ruang Bahan TKRO', NULL, NULL),
(74, '', '', '', 'Ruang Pembelajaran TKRO', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_13_033041_create_barang', 1),
(5, '2021_09_13_033636_create_lokasi', 1),
(6, '2021_09_13_034714_create_kelompok_alat', 1),
(7, '2021_09_15_030545_create_stok', 1),
(8, '2021_09_21_072613_create_notifications_table', 1),
(9, '2021_09_21_084416_laratrust_setup_tables', 1),
(10, '2021_09_27_072649_create_pinjam', 1),
(11, '2021_09_28_044410_create_level_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id` int(10) UNSIGNED NOT NULL,
  `namapeminjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namabarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merkbarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kodelokasi` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_brg` int(11) NOT NULL,
  `stok_brg` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `status_id`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'UserAdmin', 'useradmin@gmail.com', 1, NULL, NULL, '$2y$10$OkjV7BUVoAhhhpIKoNYnN.uG5igLlGZTCNsKn/VeG6wqiqRc78S96', 'super_admin', NULL, '2021-10-10 23:18:36', '2021-10-10 23:18:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
INSERT INTO `klmpk_alat` (`kode_klmpk_alat`, `klmpk_alat`) VALUES
(1, 'Mebeler'),
(2, 'Elektronik'),
(3, 'Alat Ukur'),
(4, 'Alat Praktik'),
(5, 'Alat Triner'),
(6, 'Alat Musik'),
(7, 'Kendaraan');
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klmpk_alat`
--
ALTER TABLE `klmpk_alat`
  ADD PRIMARY KEY (`kode_klmpk_alat`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `klmpk_alat`
--
ALTER TABLE `klmpk_alat`
  MODIFY `kode_klmpk_alat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `kode_lokasi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
