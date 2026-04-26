-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Apr 2026 pada 10.49
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roomly`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cards`
--

INSERT INTO `cards` (`id`, `user_id`, `bank_name`, `account_number`, `card_name`, `created_at`, `updated_at`) VALUES
(4, 6, 'bca', '0999', 'reyy', '2026-04-21 08:35:41', '2026-04-21 08:36:22'),
(5, 6, 'seabank', '0999', 'reyy', '2026-04-21 10:35:58', '2026-04-21 10:35:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ewallets`
--

CREATE TABLE `ewallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ewallets`
--

INSERT INTO `ewallets` (`id`, `user_id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(2, 6, 'dana', '09999999', '2026-04-21 11:09:45', '2026-04-21 11:09:45'),
(3, 6, 'seabank', '09090000', '2026-04-21 11:10:04', '2026-04-21 11:10:04');

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
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_04_07_212022_add_profile_fields_to_users_table', 1),
(5, '2026_04_07_230510_add_role_to_users_table', 1),
(6, '2026_04_21_153047_create_cards_table', 2),
(7, '2026_04_21_175048_create_ewallets_table', 3);

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
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vB018JPYuufaKQ1MtlnoklCte23ZlWPXb1u3begc', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTklaU0l1NEl2NGtiSjcyZHBET1RyejdwVEVjSUZsakJpMEpkb3IwNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6MTU6ImFkbWluLmRhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1776880642),
('VcTHdZTRaz9b5UmBy6jaSzgOD9ItSz7dehaXgyy3', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36 Edg/147.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidWJIaU9UN2c5Ykc3bGx0b1Q1UEZzcTJNMUdHakVjQ2xxRUhwb21FaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9maWxlL2Utd2FsbGV0IjtzOjU6InJvdXRlIjtzOjE1OiJwcm9maWxlLmV3YWxsZXQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O30=', 1776797676);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `gender` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `gender`, `birthdate`, `city`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', 'admin', 'Laki-laki', '2000-01-01', 'Banyumas', '08123456789', NULL, '$2y$12$5e1xeCngcMJgU/Nv9LL6g.xmkQZg76vXS28iW8l/BdtrMzqInyOKC', NULL, '2026-04-18 04:29:11', '2026-04-18 20:14:15'),
(2, 'Natalia Calista Prastuti S.E.I', 'atmaja.mansur@example.net', 'admin', 'Perempuan', '2002-05-21', 'Kediri', '(+62) 844 6856 9664', '2026-04-18 04:29:11', '$2y$12$ZnnqfrcE/t.Pi5Ul6rEIkejpsK4TSUwYEI47NApOOjwSZZjkqKfDm', 'R23XQ7jeaI', '2026-04-18 04:29:12', '2026-04-18 04:29:12'),
(3, 'Hasna Talia Wastuti', 'maryadi.nadia@example.net', 'admin', 'Laki-laki', '1987-09-12', 'Manado', '(+62) 658 7962 7920', '2026-04-18 04:29:12', '$2y$12$ZnnqfrcE/t.Pi5Ul6rEIkejpsK4TSUwYEI47NApOOjwSZZjkqKfDm', 'THMbk67txR', '2026-04-18 04:29:12', '2026-04-18 04:29:12'),
(4, 'Joko Wibisono', 'csitumorang@example.com', 'admin', 'Laki-laki', '1971-04-28', 'Batu', '(+62) 389 4872 816', '2026-04-18 04:29:12', '$2y$12$ZnnqfrcE/t.Pi5Ul6rEIkejpsK4TSUwYEI47NApOOjwSZZjkqKfDm', '3NBq7bRyUh', '2026-04-18 04:29:12', '2026-04-18 04:29:12'),
(5, 'Ifa Kezia Mandasari', 'yuliarti.aisyah@example.com', 'admin', 'Perempuan', '1974-09-02', 'Ternate', '(+62) 27 8281 2622', '2026-04-18 04:29:12', '$2y$12$ZnnqfrcE/t.Pi5Ul6rEIkejpsK4TSUwYEI47NApOOjwSZZjkqKfDm', 'FycvzK2qa2', '2026-04-18 04:29:12', '2026-04-18 04:29:12'),
(6, 'Jaeman Sabri Hidayat', 'hafshah06@example.net', 'user', 'Male', '1989-02-07', 'Metro', '0532 3381 4227', '2026-04-18 04:29:12', '$2y$12$WqUjLcJDU44az7MhS7bmm.rxnWEyvODuoWVLahZrLaVKvwTJLvh9q', 'SQnNEzOKmTybDP5pUdiutwVQMByEVYqFPn0fcGndMKsgc5PTDNasD28MpWeQ', '2026-04-18 04:29:12', '2026-04-21 08:46:40'),
(7, 'Karen Novitasari', 'sadriansyah@example.org', 'admin', 'Perempuan', '1989-08-06', 'Bontang', '0867 3699 6676', '2026-04-18 04:29:12', '$2y$12$ZnnqfrcE/t.Pi5Ul6rEIkejpsK4TSUwYEI47NApOOjwSZZjkqKfDm', 'OdSUA2jHv9', '2026-04-18 04:29:12', '2026-04-18 04:29:12'),
(8, 'Kania Talia Nurdiyanti S.H.', 'candra.lailasari@example.com', 'admin', 'Perempuan', '1981-03-23', 'Bukittinggi', '(+62) 972 3115 098', '2026-04-18 04:29:12', '$2y$12$ZnnqfrcE/t.Pi5Ul6rEIkejpsK4TSUwYEI47NApOOjwSZZjkqKfDm', 'pFzvhm3nZY', '2026-04-18 04:29:12', '2026-04-18 04:29:12'),
(9, 'Karja Kuswoyo', 'rpuspasari@example.net', 'user', 'Laki-laki', '1991-12-23', 'Tangerang', '0232 4441 8247', '2026-04-18 04:29:12', '$2y$12$ZnnqfrcE/t.Pi5Ul6rEIkejpsK4TSUwYEI47NApOOjwSZZjkqKfDm', 'VR3p1gY8Um', '2026-04-18 04:29:12', '2026-04-18 04:29:12'),
(10, 'Kenari Halim', 'ghaliyati.damanik@example.com', 'admin', 'Laki-laki', '1975-05-12', 'Lubuklinggau', '026 4030 501', '2026-04-18 04:29:12', '$2y$12$ZnnqfrcE/t.Pi5Ul6rEIkejpsK4TSUwYEI47NApOOjwSZZjkqKfDm', 'KI4PFbKMLO', '2026-04-18 04:29:12', '2026-04-18 04:29:12'),
(11, 'Syahrini Safitri', 'jarwi.maulana@example.net', 'admin', 'Laki-laki', '1971-08-22', 'Banjarbaru', '0922 3936 5930', '2026-04-18 04:29:12', '$2y$12$ZnnqfrcE/t.Pi5Ul6rEIkejpsK4TSUwYEI47NApOOjwSZZjkqKfDm', 'gNSg6VqvKJ', '2026-04-18 04:29:12', '2026-04-18 04:29:12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `ewallets`
--
ALTER TABLE `ewallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ewallets_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT untuk tabel `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ewallets`
--
ALTER TABLE `ewallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ewallets`
--
ALTER TABLE `ewallets`
  ADD CONSTRAINT `ewallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
