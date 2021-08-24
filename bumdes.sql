-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Agu 2021 pada 03.31
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bumdes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas`
--

CREATE TABLE `kas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_transaksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit` double(15,2) NOT NULL,
  `kredit` double(15,2) NOT NULL,
  `saldo` double(15,2) NOT NULL,
  `tanggal` date NOT NULL,
  `pengelola` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kas`
--

INSERT INTO `kas` (`id`, `user_id`, `jenis`, `kode_transaksi`, `debit`, `kredit`, `saldo`, `tanggal`, `pengelola`, `created_at`, `updated_at`) VALUES
(1, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(2, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_09_02_024213_create_permission_tables', 1),
(4, '2018_09_02_025630_create_simpanans_table', 1),
(5, '2018_09_04_003233_create_pinjamans_table', 1),
(6, '2018_09_04_003258_create_pinjaman_details_table', 1),
(7, '2014_10_12_000000_create_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 3),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(2, 'App\\User', 1),
(3, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id` int(11) NOT NULL,
  `jenis` varchar(80) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`id`, `jenis`, `create_at`, `update_at`) VALUES
(1, 'Tidak/Belum Bekerja', '2021-05-02 18:31:54', '2021-05-02 18:31:54'),
(2, 'Petani/Perkebunan', '2021-05-02 18:31:54', '2021-05-02 18:31:54'),
(3, 'Wiraswasta', '2021-05-02 18:32:55', '2021-05-02 18:32:55'),
(4, 'Pelajar/Mahasiswa', '2021-05-02 18:32:55', '2021-05-02 18:32:55'),
(5, 'Mengurus Rumah Tangga', '2021-05-02 18:32:55', '2021-05-02 18:32:55'),
(6, 'PNS', '2021-05-02 18:32:55', '2021-05-02 18:32:55'),
(7, 'Buruh Tani/Perkebunan', '2021-05-02 18:32:55', '2021-05-02 18:32:55'),
(8, 'Sopir\r\n', '2021-05-02 18:32:55', '2021-05-02 18:32:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(11) NOT NULL,
  `jenis` varchar(80) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `jenis`, `create_at`, `update_at`) VALUES
(1, 'Tidak/Belum Sekolah', '2021-05-02 18:31:54', '2021-05-02 18:31:54'),
(2, 'Belum Tamat SD/Sederajat', '2021-05-02 18:31:54', '2021-05-02 18:31:54'),
(3, 'Tamat SD/Sederajat', '2021-05-02 18:32:55', '2021-05-02 18:32:55'),
(4, 'Tamat SLTP/Sederajat', '2021-05-02 18:32:55', '2021-05-02 18:32:55'),
(5, 'Tamat SLTA/Sederajat', '2021-05-02 18:32:55', '2021-05-02 18:32:55'),
(6, 'Diploma III', '2021-05-02 18:32:55', '2021-05-02 18:32:55'),
(7, 'Diploma IV', '2021-05-02 18:32:55', '2021-05-02 18:32:55'),
(8, 'Sarjana\r\n', '2021-05-02 18:32:55', '2021-05-02 18:32:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'home', 'web', '2021-06-23 18:50:22', '2021-06-23 18:50:22'),
(2, 'simpanan', 'web', '2021-06-23 18:50:22', '2021-06-23 18:50:22'),
(3, 'nasabah', 'web', '2021-06-23 18:50:22', '2021-06-23 18:50:22'),
(4, 'penarikan', 'web', '2021-06-23 18:50:22', '2021-06-23 18:50:22'),
(5, 'pinjaman', 'web', '2021-06-23 18:50:22', '2021-06-23 18:50:22'),
(6, 'roles', 'web', '2021-06-23 18:50:22', '2021-06-23 18:50:22'),
(7, 'laporan', 'web', '2021-06-23 18:50:23', '2021-06-23 18:50:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjamans`
--

CREATE TABLE `pinjamans` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` double(15,2) NOT NULL,
  `durasi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `pengelola` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pinjamans`
--

INSERT INTO `pinjamans` (`id`, `user_id`, `kode_transaksi`, `jumlah`, `durasi`, `tanggal`, `pengelola`, `created_at`, `updated_at`) VALUES
(3, 3, 'PJM-001', 10000000.00, 6, '2021-06-24', 'Admin', '2021-06-24 04:46:23', '2021-06-24 04:46:23'),
(8, 3, 'PJM-006', 500000.00, 6, '2021-07-14', 'Admin', '2021-07-13 19:01:41', '2021-07-13 19:01:41'),
(13, 4, 'PJM-013', 10000000000.00, 12, '2021-07-01', 'Admin', '2021-07-13 20:16:34', '2021-07-13 20:16:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjaman_details`
--

CREATE TABLE `pinjaman_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `pinjaman_id` int(10) UNSIGNED NOT NULL,
  `bayar_bulanan` double(15,2) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pinjaman_details`
--

INSERT INTO `pinjaman_details` (`id`, `pinjaman_id`, `bayar_bulanan`, `tanggal`, `created_at`, `updated_at`) VALUES
(5, 3, 1666666.67, '2021-06-29', '2021-06-24 04:48:09', '2021-06-24 04:48:09'),
(6, 3, 1666666.67, '2021-07-29', '2021-07-13 19:24:42', '2021-07-13 19:24:42'),
(9, 3, 1666666.67, '2021-07-16', '2021-07-13 19:24:51', '2021-07-13 19:24:51'),
(12, 8, 84375.00, '2021-08-10', '2021-08-15 22:56:18', '2021-08-15 22:56:18'),
(13, 8, 84375.00, '2021-08-17', '2021-08-15 22:57:01', '2021-08-15 22:57:01'),
(14, 8, 84375.00, '2021-08-17', '2021-08-15 22:57:04', '2021-08-15 22:57:04'),
(15, 8, 84375.00, '2021-08-17', '2021-08-15 22:57:08', '2021-08-15 22:57:08'),
(16, 8, 84375.00, '2021-08-17', '2021-08-15 22:57:11', '2021-08-15 22:57:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'nasabah', 'web', '2021-06-23 18:50:23', '2021-06-23 18:50:23'),
(2, 'pengelola', 'web', '2021-06-23 18:50:23', '2021-06-23 18:50:23'),
(3, 'admin', 'web', '2021-06-23 18:50:23', '2021-06-23 18:50:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3),
(3, 2),
(3, 3),
(4, 2),
(4, 3),
(5, 2),
(5, 3),
(6, 3),
(7, 2),
(7, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shdk`
--

CREATE TABLE `shdk` (
  `id` int(11) NOT NULL,
  `jenis` varchar(80) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `shdk`
--

INSERT INTO `shdk` (`id`, `jenis`, `create_at`, `update_at`) VALUES
(1, 'Kepala Keluarga', '2021-05-02 18:31:54', '2021-05-02 18:31:54'),
(2, 'Istri', '2021-05-02 18:31:54', '2021-05-02 18:31:54'),
(3, 'Anak', '2021-05-02 18:32:55', '2021-05-02 18:32:55'),
(4, 'Famili Lain', '2021-05-02 18:32:55', '2021-05-02 18:32:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `simpanans`
--

CREATE TABLE `simpanans` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_transaksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit` double(15,2) NOT NULL,
  `kredit` double(15,2) NOT NULL,
  `saldo` double(15,2) NOT NULL,
  `tanggal` date NOT NULL,
  `pengelola` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `simpanans`
--

INSERT INTO `simpanans` (`id`, `user_id`, `jenis`, `kode_transaksi`, `debit`, `kredit`, `saldo`, `tanggal`, `pengelola`, `created_at`, `updated_at`) VALUES
(1, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(2, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(3, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(4, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(5, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(6, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(7, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(8, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(9, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(10, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(11, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(12, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(13, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(14, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(15, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(16, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(17, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(18, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(19, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(20, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(21, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(22, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(23, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(24, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(25, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(26, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(27, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(28, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(29, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(30, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(31, 3, 'SW', 'SW-001', 3000000.00, 0.00, 3000000.00, '2021-06-02', 'Admin', '2021-06-24 04:45:35', '2021-06-24 04:45:35'),
(32, 3, 'PNK', 'PNK-001', 0.00, 1000000.00, 2000000.00, '2021-06-18', 'Admin', '2021-06-24 04:47:22', '2021-06-24 04:47:22'),
(33, 3, 'SW', 'SW-017', 15000.00, 0.00, 32015000.00, '2021-07-14', 'Admin', '2021-07-13 18:40:36', '2021-07-13 18:40:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(8) NOT NULL DEFAULT 2,
  `kelamin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_anggota` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `shdk` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_perkawinan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kk` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `kelamin`, `no_anggota`, `tempat_lahir`, `tanggal_lahir`, `shdk`, `agama`, `pekerjaan`, `pendidikan`, `status_perkawinan`, `ktp`, `kk`, `ibu`, `alamat`, `foto`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 1, '', '', NULL, NULL, NULL, '', '', '', '0', '', '', '', '', 'user.png', 1, NULL, '2021-06-23 18:50:23', '2021-06-23 18:50:23'),
(3, 'anggota 1', 'aggota1@gmail.com', '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Laki-Laki', '210624-003', NULL, NULL, NULL, 'Islam', '123123', '12312', '', '21321351321', '23423423', '234234', 'Pekanbaru jl kamboja', '1624504414.jpeg', 1, NULL, '2021-06-24 03:13:34', '2021-06-24 03:13:34'),
(4, 'xdsf', 'anggota2@gmail.com', '$2y$10$Bdrp5lEbOjC15zlH/NCqwuVJHwu3.hA20u2WDijxMpiVXiT0bL/sC', 2, 'Laki-Laki', '210714-004', NULL, NULL, NULL, 'Islam', '', '', '', '1403654645', '', '', 'asdfasdfasfd', '1626201581.jpeg', 1, NULL, '2021-07-13 18:39:41', '2021-07-13 18:39:41');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `simpanans_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinjamans`
--
ALTER TABLE `pinjamans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinjamans_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `pinjaman_details`
--
ALTER TABLE `pinjaman_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinjaman_details_pinjaman_id_foreign` (`pinjaman_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `shdk`
--
ALTER TABLE `shdk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `simpanans`
--
ALTER TABLE `simpanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `simpanans_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kas`
--
ALTER TABLE `kas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pinjamans`
--
ALTER TABLE `pinjamans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pinjaman_details`
--
ALTER TABLE `pinjaman_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `shdk`
--
ALTER TABLE `shdk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `simpanans`
--
ALTER TABLE `simpanans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pinjamans`
--
ALTER TABLE `pinjamans`
  ADD CONSTRAINT `pinjamans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pinjaman_details`
--
ALTER TABLE `pinjaman_details`
  ADD CONSTRAINT `pinjaman_details_pinjaman_id_foreign` FOREIGN KEY (`pinjaman_id`) REFERENCES `pinjamans` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `simpanans`
--
ALTER TABLE `simpanans`
  ADD CONSTRAINT `simpanans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
