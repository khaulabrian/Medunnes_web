-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 30 Jan 2024 pada 05.27
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unnes_telemedicine`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'created', 'App\\Models\\Admin', 'created', 1, NULL, NULL, '[]', NULL, '2023-07-03 01:16:57', '2023-07-03 01:16:57'),
(2, 'default', 'updated', 'App\\Models\\Pasien', 'updated', 1, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-23 09:14:02', '2023-09-23 09:14:02'),
(3, 'default', 'updated', 'App\\Models\\Dokter', 'updated', 1, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-23 09:16:45', '2023-09-23 09:16:45'),
(4, 'default', 'created', 'App\\Models\\Dokter', 'created', 5, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-23 09:22:33', '2023-09-23 09:22:33'),
(5, 'default', 'updated', 'App\\Models\\Dokter', 'updated', 1, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-23 09:23:02', '2023-09-23 09:23:02'),
(6, 'default', 'created', 'App\\Models\\Spesialis', 'created', 2, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-23 09:25:40', '2023-09-23 09:25:40'),
(7, 'default', 'updated', 'App\\Models\\Pasien', 'updated', 1, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-23 23:33:43', '2023-09-23 23:33:43'),
(8, 'default', 'updated', 'App\\Models\\Pasien', 'updated', 1, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-23 23:48:23', '2023-09-23 23:48:23'),
(9, 'default', 'updated', 'App\\Models\\Dokter', 'updated', 1, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 10:07:22', '2023-09-24 10:07:22'),
(10, 'default', 'created', 'App\\Models\\Spesialis', 'created', 3, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 10:13:52', '2023-09-24 10:13:52'),
(11, 'default', 'created', 'App\\Models\\Spesialis', 'created', 4, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 10:16:18', '2023-09-24 10:16:18'),
(12, 'default', 'created', 'App\\Models\\Spesialis', 'created', 5, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 10:17:05', '2023-09-24 10:17:05'),
(13, 'default', 'created', 'App\\Models\\Spesialis', 'created', 6, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 10:18:09', '2023-09-24 10:18:09'),
(14, 'default', 'created', 'App\\Models\\Spesialis', 'created', 7, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 10:18:36', '2023-09-24 10:18:36'),
(15, 'default', 'created', 'App\\Models\\Spesialis', 'created', 8, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 10:19:03', '2023-09-24 10:19:03'),
(16, 'default', 'created', 'App\\Models\\Spesialis', 'created', 9, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 10:19:22', '2023-09-24 10:19:22'),
(17, 'default', 'created', 'App\\Models\\Spesialis', 'created', 10, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 10:20:46', '2023-09-24 10:20:46'),
(18, 'default', 'updated', 'App\\Models\\Dokter', 'updated', 1, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 10:21:47', '2023-09-24 10:21:47'),
(19, 'default', 'updated', 'App\\Models\\Dokter', 'updated', 5, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 10:21:58', '2023-09-24 10:21:58'),
(20, 'default', 'updated', 'App\\Models\\Pasien', 'updated', 1, 'App\\Models\\Admin', 1, '[]', NULL, '2023-09-24 18:41:52', '2023-09-24 18:41:52'),
(21, 'default', 'created', 'App\\Models\\Spesialis', 'created', 9, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:37:46', '2024-01-28 03:37:46'),
(22, 'default', 'created', 'App\\Models\\Spesialis', 'created', 10, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:38:50', '2024-01-28 03:38:50'),
(23, 'default', 'created', 'App\\Models\\Spesialis', 'created', 11, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:40:07', '2024-01-28 03:40:07'),
(24, 'default', 'created', 'App\\Models\\Spesialis', 'created', 12, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:40:59', '2024-01-28 03:40:59'),
(25, 'default', 'created', 'App\\Models\\Spesialis', 'created', 13, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:41:53', '2024-01-28 03:41:53'),
(26, 'default', 'created', 'App\\Models\\Spesialis', 'created', 14, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:42:16', '2024-01-28 03:42:16'),
(27, 'default', 'created', 'App\\Models\\Spesialis', 'created', 15, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:43:01', '2024-01-28 03:43:01'),
(28, 'default', 'created', 'App\\Models\\Spesialis', 'created', 16, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:44:12', '2024-01-28 03:44:12'),
(29, 'default', 'created', 'App\\Models\\Spesialis', 'created', 17, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:44:26', '2024-01-28 03:44:26'),
(30, 'default', 'created', 'App\\Models\\Spesialis', 'created', 18, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:46:41', '2024-01-28 03:46:41'),
(31, 'default', 'created', 'App\\Models\\Spesialis', 'created', 19, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:47:19', '2024-01-28 03:47:19'),
(32, 'default', 'created', 'App\\Models\\Spesialis', 'created', 20, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 03:47:33', '2024-01-28 03:47:33'),
(33, 'default', 'created', 'App\\Models\\Dokter', 'created', 3, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 04:50:13', '2024-01-28 04:50:13'),
(34, 'default', 'created', 'App\\Models\\Dokter', 'created', 4, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 04:53:52', '2024-01-28 04:53:52'),
(35, 'default', 'created', 'App\\Models\\Spesialis', 'created', 21, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 05:23:04', '2024-01-28 05:23:04'),
(36, 'default', 'created', 'App\\Models\\Spesialis', 'created', 22, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 05:24:26', '2024-01-28 05:24:26'),
(37, 'default', 'created', 'App\\Models\\Spesialis', 'created', 23, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 05:24:52', '2024-01-28 05:24:52'),
(38, 'default', 'created', 'App\\Models\\Spesialis', 'created', 24, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 05:25:40', '2024-01-28 05:25:40'),
(39, 'default', 'created', 'App\\Models\\Spesialis', 'created', 25, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 05:26:03', '2024-01-28 05:26:03'),
(40, 'default', 'created', 'App\\Models\\Spesialis', 'created', 26, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 06:23:42', '2024-01-28 06:23:42'),
(41, 'default', 'created', 'App\\Models\\Spesialis', 'created', 27, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 06:24:31', '2024-01-28 06:24:31'),
(42, 'default', 'created', 'App\\Models\\Spesialis', 'created', 28, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 06:24:45', '2024-01-28 06:24:45'),
(43, 'default', 'created', 'App\\Models\\Spesialis', 'created', 29, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 06:25:28', '2024-01-28 06:25:28'),
(44, 'default', 'created', 'App\\Models\\Dokter', 'created', 5, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 07:10:26', '2024-01-28 07:10:26'),
(45, 'default', 'created', 'App\\Models\\Dokter', 'created', 6, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 07:12:42', '2024-01-28 07:12:42'),
(46, 'default', 'created', 'App\\Models\\Dokter', 'created', 11, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 08:04:13', '2024-01-28 08:04:13'),
(47, 'default', 'created', 'App\\Models\\Dokter', 'created', 12, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 08:06:52', '2024-01-28 08:06:52'),
(48, 'default', 'created', 'App\\Models\\Dokter', 'created', 13, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 08:08:16', '2024-01-28 08:08:16'),
(49, 'default', 'created', 'App\\Models\\Dokter', 'created', 14, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 08:10:16', '2024-01-28 08:10:16'),
(50, 'default', 'created', 'App\\Models\\Dokter', 'created', 15, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-28 08:32:07', '2024-01-28 08:32:07'),
(51, 'default', 'created', 'App\\Models\\User', 'created', 1, NULL, NULL, '[]', NULL, '2024-01-28 12:18:30', '2024-01-28 12:18:30'),
(52, 'default', 'created', 'App\\Models\\User', 'created', 2, NULL, NULL, '[]', NULL, '2024-01-28 12:18:30', '2024-01-28 12:18:30'),
(53, 'default', 'created', 'App\\Models\\User', 'created', 3, NULL, NULL, '[]', NULL, '2024-01-29 04:31:41', '2024-01-29 04:31:41'),
(54, 'default', 'created', 'App\\Models\\User', 'created', 4, NULL, NULL, '[]', NULL, '2024-01-29 04:31:41', '2024-01-29 04:31:41'),
(55, 'default', 'created', 'App\\Models\\Spesialis', 'created', 30, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 04:34:42', '2024-01-29 04:34:42'),
(56, 'default', 'created', 'App\\Models\\Spesialis', 'created', 31, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 04:35:17', '2024-01-29 04:35:17'),
(57, 'default', 'created', 'App\\Models\\Spesialis', 'created', 32, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 04:35:36', '2024-01-29 04:35:36'),
(58, 'default', 'created', 'App\\Models\\Spesialis', 'created', 33, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 04:36:19', '2024-01-29 04:36:19'),
(59, 'default', 'created', 'App\\Models\\Spesialis', 'created', 34, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 04:37:33', '2024-01-29 04:37:33'),
(60, 'default', 'created', 'App\\Models\\Spesialis', 'created', 35, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 04:37:49', '2024-01-29 04:37:49'),
(61, 'default', 'created', 'App\\Models\\Spesialis', 'created', 36, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 04:38:07', '2024-01-29 04:38:07'),
(62, 'default', 'created', 'App\\Models\\Spesialis', 'created', 37, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 04:38:23', '2024-01-29 04:38:23'),
(63, 'default', 'created', 'App\\Models\\Dokter', 'created', 16, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 05:08:00', '2024-01-29 05:08:00'),
(64, 'default', 'created', 'App\\Models\\Dokter', 'created', 17, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 05:09:43', '2024-01-29 05:09:43'),
(65, 'default', 'created', 'App\\Models\\Dokter', 'created', 18, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 05:11:15', '2024-01-29 05:11:15'),
(66, 'default', 'created', 'App\\Models\\Dokter', 'created', 19, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 05:12:42', '2024-01-29 05:12:42'),
(67, 'default', 'created', 'App\\Models\\Dokter', 'created', 20, 'App\\Models\\Admin', 1, '[]', NULL, '2024-01-29 05:14:10', '2024-01-29 05:14:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT '3',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Medunnes', 'medunnes@medunnes.com', NULL, '$2y$10$8AGfQfcw9n.iXLnBWfNjlezwbIcGb1hx4qFw2AHEgAb7rP/6inYj.', '3', NULL, '2023-07-03 01:16:57', '2023-07-03 01:16:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` bigint(20) UNSIGNED NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `img_artikel` varchar(255) NOT NULL,
  `desc_artikel` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `img_artikel`, `desc_artikel`, `created_at`, `updated_at`) VALUES
(1, 'Artikel 1', 'artikel/pHzzqMCRhhTf0ghgd26LgWN5bnyVAteyBs4xFdAG.png', 'Example Desc Lorem Ipsum Lorem Ipsum Lorem Ipsum', '2023-04-02 21:13:14', '2023-04-02 21:13:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bans`
--

CREATE TABLE `bans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bannable_type` varchar(255) DEFAULT NULL,
  `bannable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_type` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metas`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskusi`
--

CREATE TABLE `diskusi` (
  `id_diskusi` bigint(20) UNSIGNED NOT NULL,
  `konsultasi_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` bigint(20) UNSIGNED NOT NULL,
  `nip` bigint(20) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `gelar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `janji`
--

CREATE TABLE `janji` (
  `id_janji` bigint(20) UNSIGNED NOT NULL,
  `pasien_id` bigint(20) UNSIGNED NOT NULL,
  `dokter_id` bigint(20) UNSIGNED NOT NULL,
  `pasien_tambahan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sesi_id` bigint(20) UNSIGNED NOT NULL,
  `datetime` datetime NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `status` enum('pending','accepted','rejected') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` bigint(20) UNSIGNED NOT NULL,
  `pasien_id` bigint(20) UNSIGNED NOT NULL,
  `dokter_id` bigint(20) UNSIGNED NOT NULL,
  `topik` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_15_084449_create_spesialis_table', 1),
(6, '2023_03_06_080933_create_user_pasien_table', 1),
(7, '2023_03_06_080938_create_user_dokter_table', 1),
(8, '2023_03_06_080948__create_pasien_tambahan_table', 1),
(9, '2023_03_06_081000_create_konsultasi_table', 1),
(10, '2023_03_06_081008_create_diskusi_table', 1),
(11, '2023_03_26_171130_create_sesi_table', 1),
(12, '2023_03_26_171132_create_rating_table', 1),
(13, '2023_03_26_171140_create_janji_table', 1),
(14, '2023_03_27_081008_create_artikel_table', 1),
(16, '2023_03_06_080948_create_pasien_tambahan_table', 2),
(17, '2014_10_12_000000_create_admins_table', 3),
(18, '2014_10_12_100000_create_password_resets_table', 3),
(19, '2023_04_15_034324_create_activity_log_table', 3),
(20, '2023_04_15_034325_add_event_column_to_activity_log_table', 3),
(21, '2023_04_15_034326_add_batch_uuid_column_to_activity_log_table', 3),
(22, '2023_05_04_032543_add_banned_at_column_to_user_pasien_table', 3),
(23, 'create_bans_table', 3),
(24, 'metas_field_to_bans_table', 3),
(25, '2023_07_12_041603_dosen', 4),
(26, '2024_01_28_190022_create_user_table', 5),
(27, '2024_01_25_181110_create_user_register_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien_tambahan`
--

CREATE TABLE `pasien_tambahan` (
  `id_pasien_tambahan` bigint(20) UNSIGNED NOT NULL,
  `pasien_id` bigint(20) UNSIGNED NOT NULL,
  `nama_pasien_tambahan` varchar(255) NOT NULL,
  `TB` bigint(20) NOT NULL,
  `BB` bigint(20) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `hubungan_keluarga` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pasien_tambahan`
--

INSERT INTO `pasien_tambahan` (`id_pasien_tambahan`, `pasien_id`, `nama_pasien_tambahan`, `TB`, `BB`, `jenis_kelamin`, `tgl_lahir`, `hubungan_keluarga`, `created_at`, `updated_at`) VALUES
(1, 1, 'Putri Azna Fitri Abidah', 160, 50, 'L', '2012-03-09', 'Adik Pertama', '2023-04-02 10:32:02', '2023-04-02 10:33:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', '464352135e92f5473fe8d78da9e6dae7acbafcb40899116151e67803e0fa3c92', '[\"*\"]', '2023-04-02 21:25:11', NULL, '2023-04-02 09:15:51', '2023-04-02 21:25:11'),
(2, 'App\\Models\\User', 2, 'MyApp', 'ac86517f07fe06661aedbe6cb2c19c13c73d6b7ee180f2f029e4cee8766bc9da', '[\"*\"]', '2023-04-09 19:36:49', NULL, '2023-04-02 09:16:03', '2023-04-09 19:36:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `dokter_id` bigint(20) UNSIGNED NOT NULL,
  `pasien_id` bigint(20) UNSIGNED NOT NULL,
  `rating` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sesi`
--

CREATE TABLE `sesi` (
  `id_sesi` bigint(20) UNSIGNED NOT NULL,
  `dokter_id` bigint(20) UNSIGNED NOT NULL,
  `dari` time NOT NULL,
  `sampai` time NOT NULL,
  `day` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `spesialis`
--

CREATE TABLE `spesialis` (
  `id_spesialis` bigint(20) UNSIGNED NOT NULL,
  `nama_spesialis` varchar(255) NOT NULL,
  `img_spesialis` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `spesialis`
--

INSERT INTO `spesialis` (`id_spesialis`, `nama_spesialis`, `img_spesialis`, `created_at`, `updated_at`) VALUES
(1, 'Spesialis THT', 'asset/ear.svg', '2024-01-28 05:23:04', '2024-01-28 05:23:04'),
(2, 'Spesialis Kandungan dan Kebidanan', 'asset/reproductive.svg', '2024-01-29 04:34:42', '2024-01-29 04:34:42'),
(3, 'Spesialis Anak', 'asset/baby.svg', '2024-01-29 04:35:17', '2024-01-29 04:35:17'),
(4, 'Spesialis Penyakit Dalam', 'asset/pancreas.svg', '2024-01-29 04:35:36', '2024-01-29 04:35:36'),
(5, 'Spesialis Jantung', 'asset/heart.svg', '2024-01-29 04:36:19', '2024-01-29 04:36:19'),
(6, 'Spesialis Paru', 'asset/lungs.png', '2024-01-29 04:37:33', '2024-01-29 04:37:33'),
(7, 'Spesialis Saraf', 'asset/brain.svg', '2024-01-29 04:37:49', '2024-01-29 04:37:49'),
(8, 'Spesialis Mata', 'asset/eye.svg', '2024-01-29 04:38:07', '2024-01-29 04:38:07'),
(9, 'Spesialis Kedokteran Gigi Anak', 'asset/dental.svg', '2024-01-29 04:38:23', '2024-01-29 04:38:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'Pasien',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John', 'john@gmail.com', NULL, '$2y$10$GJnkve4MuLkc1vzAMQEp4.EPIfFZ3w6gUFgqjV8pSR5rT3wesCjKG', 'Pasien', NULL, '2024-01-28 12:18:30', '2024-01-28 12:18:30'),
(2, 'Putri', 'Putri@gmail.com', NULL, '$2y$10$MH7wm9UhnBsrbAJPLkvMLu44rUK.gV4N77t45fen8Onqt18suVHLm', 'Dokter', NULL, '2024-01-28 12:18:30', '2024-01-28 12:18:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` enum('pasien','dokter','admin') NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `type`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John', 'John@gmail.com', 'pasien', NULL, '$2y$10$ZeWvV6uo6LMt5VpKVvaKNerIVCr6vY76Yj0TlDN4LjCTHQOR5rnpa', NULL, '2024-01-29 04:31:40', '2024-01-29 04:31:40'),
(2, 'Putri', 'Putrigmail.com', 'dokter', NULL, '$2y$10$9cJLFHa19tyUwLtRvcEsqeZBm2HlLpGnBDuAl7g5sgn.yEuPTat96', NULL, '2024-01-29 04:31:41', '2024-01-29 04:31:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_dokter`
--

CREATE TABLE `user_dokter` (
  `id_dokter` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `spesialis_id` bigint(20) UNSIGNED NOT NULL,
  `title_depan` varchar(255) NOT NULL,
  `nama_dokter` varchar(255) NOT NULL,
  `title_belakang` varchar(255) NOT NULL,
  `img_dokter` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_tlp` varchar(255) NOT NULL,
  `tempat_kerja` varchar(255) NOT NULL,
  `tahun_lulus` int(11) NOT NULL,
  `tgl_mulai_aktif` date NOT NULL,
  `alumni_kampus` varchar(255) NOT NULL,
  `no_reg` bigint(20) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `status` enum('panding','approve','reject','suspend') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_dokter`
--

INSERT INTO `user_dokter` (`id_dokter`, `user_id`, `spesialis_id`, `title_depan`, `nama_dokter`, `title_belakang`, `img_dokter`, `alamat`, `no_tlp`, `tempat_kerja`, `tahun_lulus`, `tgl_mulai_aktif`, `alumni_kampus`, `no_reg`, `jenis_kelamin`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Dr.', 'Farhan', 'Sp.JP', 'asset/doctor_1.png', 'Ngaliyan, Semarang', '08976452810', 'RS Banyumanik', 2008, '2009-05-12', 'UGM', 20091076, 'L', 'approve', '2024-01-29 05:08:00', '2024-01-29 05:08:00'),
(2, 2, 2, 'Dr.', 'Putri', 'Sp.OG', 'asset/a2.jpg', 'Gunungpati, Semarang', '088756987320', 'RSUP Dr. Kariadi', 2016, '2017-08-19', 'UPH', 20178654, 'P', 'approve', '2024-01-29 05:09:43', '2024-01-29 05:09:43'),
(3, 3, 6, 'Dr.', 'Sumarno', 'Sp.P', 'asset/doctor_2.png', 'Jl. Pemuda No.23, Semarang', '088888888888', 'RS Telogorejo', 2016, '2017-12-12', 'UNS', 20170976, 'L', 'reject', '2024-01-29 05:11:15', '2024-01-29 05:11:15'),
(4, 4, 9, 'Drg.', 'Ridho', 'Sp.KGA', 'asset/doctor_4.png', 'Tembalang, Semarang', '085768907634', 'RSI Sultan Agung', 2019, '2020-08-15', 'UB', 20205674, 'L', 'panding', '2024-01-29 05:12:42', '2024-01-29 05:12:42'),
(15, 5, 8, 'Dr.', 'Kevin', 'Sp.M', 'asset/doctor_3.png', 'Pedurungan, Semarang', '087965432180', 'RSUD Wongsonegoro', 2010, '2011-02-09', 'Unpad', 20110109, 'L', 'suspend', '2024-01-29 05:14:10', '2024-01-29 05:14:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_pasien`
--

CREATE TABLE `user_pasien` (
  `id_pasien` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `NIK` bigint(20) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `img_pasien` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_tlp` varchar(255) NOT NULL,
  `TB` int(11) NOT NULL,
  `BB` int(11) NOT NULL,
  `status` enum('active','suspend') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_pasien`
--

INSERT INTO `user_pasien` (`id_pasien`, `user_id`, `NIK`, `nama_pasien`, `img_pasien`, `jenis_kelamin`, `alamat`, `no_tlp`, `TB`, `BB`, `status`, `created_at`, `updated_at`, `banned_at`) VALUES
(1, 2, 4124712411233, 'Muhamad Akbar', NULL, 'L', 'Yogyakarta', '085123213123', 160, 50, 'active', '2023-04-02 09:16:03', '2023-09-24 18:41:52', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_register`
--

CREATE TABLE `user_register` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `type` enum('Dokter','Pasien','Admin') NOT NULL DEFAULT 'Pasien',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bans_bannable_type_bannable_id_index` (`bannable_type`,`bannable_id`),
  ADD KEY `bans_created_by_type_created_by_id_index` (`created_by_type`,`created_by_id`),
  ADD KEY `bans_ip_index` (`ip`),
  ADD KEY `bans_expired_at_index` (`expired_at`);

--
-- Indeks untuk tabel `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`id_diskusi`),
  ADD KEY `diskusi_konsultasi_id_foreign` (`konsultasi_id`),
  ADD KEY `diskusi_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `janji`
--
ALTER TABLE `janji`
  ADD PRIMARY KEY (`id_janji`),
  ADD KEY `janji_pasien_id_foreign` (`pasien_id`),
  ADD KEY `janji_dokter_id_foreign` (`dokter_id`),
  ADD KEY `janji_sesi_id_foreign` (`sesi_id`),
  ADD KEY `janji_pasien_tambahan_id_foreign` (`pasien_tambahan_id`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`),
  ADD KEY `konsultasi_pasien_id_foreign` (`pasien_id`),
  ADD KEY `konsultasi_dokter_id_foreign` (`dokter_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasien_tambahan`
--
ALTER TABLE `pasien_tambahan`
  ADD PRIMARY KEY (`id_pasien_tambahan`),
  ADD KEY `pasien_tambahan_pasien_id_foreign` (`pasien_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD KEY `rating_pasien_id_foreign` (`pasien_id`),
  ADD KEY `rating_dokter_id_foreign` (`dokter_id`);

--
-- Indeks untuk tabel `sesi`
--
ALTER TABLE `sesi`
  ADD PRIMARY KEY (`id_sesi`),
  ADD KEY `sesi_dokter_id_foreign` (`dokter_id`);

--
-- Indeks untuk tabel `spesialis`
--
ALTER TABLE `spesialis`
  ADD PRIMARY KEY (`id_spesialis`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_dokter`
--
ALTER TABLE `user_dokter`
  ADD PRIMARY KEY (`id_dokter`),
  ADD KEY `user_dokter_user_id_foreign` (`user_id`),
  ADD KEY `user_dokter_spesialis_id_foreign` (`spesialis_id`);

--
-- Indeks untuk tabel `user_pasien`
--
ALTER TABLE `user_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_register_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bans`
--
ALTER TABLE `bans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `id_diskusi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `janji`
--
ALTER TABLE `janji`
  MODIFY `id_janji` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `pasien_tambahan`
--
ALTER TABLE `pasien_tambahan`
  MODIFY `id_pasien_tambahan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sesi`
--
ALTER TABLE `sesi`
  MODIFY `id_sesi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `spesialis`
--
ALTER TABLE `spesialis`
  MODIFY `id_spesialis` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_dokter`
--
ALTER TABLE `user_dokter`
  MODIFY `id_dokter` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `user_pasien`
--
ALTER TABLE `user_pasien`
  MODIFY `id_pasien` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user_register`
--
ALTER TABLE `user_register`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `diskusi`
--
ALTER TABLE `diskusi`
  ADD CONSTRAINT `diskusi_konsultasi_id_foreign` FOREIGN KEY (`konsultasi_id`) REFERENCES `konsultasi` (`id_konsultasi`),
  ADD CONSTRAINT `diskusi_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `janji`
--
ALTER TABLE `janji`
  ADD CONSTRAINT `janji_dokter_id_foreign` FOREIGN KEY (`dokter_id`) REFERENCES `user_dokter` (`id_dokter`),
  ADD CONSTRAINT `janji_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `user_pasien` (`id_pasien`),
  ADD CONSTRAINT `janji_pasien_tambahan_id_foreign` FOREIGN KEY (`pasien_tambahan_id`) REFERENCES `pasien_tambahan` (`id_pasien_tambahan`),
  ADD CONSTRAINT `janji_sesi_id_foreign` FOREIGN KEY (`sesi_id`) REFERENCES `sesi` (`id_sesi`);

--
-- Ketidakleluasaan untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD CONSTRAINT `konsultasi_dokter_id_foreign` FOREIGN KEY (`dokter_id`) REFERENCES `user_dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `konsultasi_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `user_pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `pasien_tambahan`
--
ALTER TABLE `pasien_tambahan`
  ADD CONSTRAINT `pasien_tambahan_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `user_pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_dokter_id_foreign` FOREIGN KEY (`dokter_id`) REFERENCES `user_dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `user_pasien` (`id_pasien`);

--
-- Ketidakleluasaan untuk tabel `sesi`
--
ALTER TABLE `sesi`
  ADD CONSTRAINT `sesi_dokter_id_foreign` FOREIGN KEY (`dokter_id`) REFERENCES `user_dokter` (`id_dokter`);

--
-- Ketidakleluasaan untuk tabel `user_dokter`
--
ALTER TABLE `user_dokter`
  ADD CONSTRAINT `user_dokter_spesialis_id_foreign` FOREIGN KEY (`spesialis_id`) REFERENCES `spesialis` (`id_spesialis`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
