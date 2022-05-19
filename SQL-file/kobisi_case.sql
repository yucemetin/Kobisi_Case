-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 May 2022, 23:37:57
-- Sunucu sürümü: 10.4.24-MariaDB
-- PHP Sürümü: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kobisi_case`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `companies`
--

CREATE TABLE `companies` (
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `site_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `companies`
--

INSERT INTO `companies` (`company_id`, `site_url`, `name`, `lastname`, `company_name`, `email`, `password`, `access_token`, `created_at`, `updated_at`) VALUES
(1, 'daugherty.info', 'Hardy', 'Labadie', 'Rice and Sons', 'erica.okeefe@example.com', '$2y$10$XIPeDq.b0xJEtaey4jskvOFSqgwN6r1ZiUmrjjNBAj/vIg7gYWAqO', '1|EUzdrZcbqyf6xgGmhkXyeSRUUIKl4JJi4xgC7HJ2', '2022-05-19 18:33:11', '2022-05-19 18:33:11'),
(2, 'rath.com', 'Abdul', 'Parker', 'Deckow LLC', 'eduardo64@example.org', '$2y$10$/5nYtCrmHjxVQNH9tA1BRubkLVGVmRGBpQLn3xllB9yx2IqTgOdBS', '2|K3w3SVAJ5DBVC2I85XSYWjq8WpCkvDnlwjHos664', '2022-05-19 18:33:11', '2022-05-19 18:33:11'),
(3, 'schultz.biz', 'Alexandra', 'Conroy', 'Glover and Sons', 'langosh.adam@example.net', '$2y$10$.HUovKhXkS93P7TLgL8SQOUOhSLpOI.apVetb5J1CweElgxXYciXW', '3|qmxuJ5j20EAzIbDAjqrSYODrmJ2JKyqIDg5ibuvj', '2022-05-19 18:33:11', '2022-05-19 18:33:12'),
(4, 'emard.net', 'Horacio', 'Schmeler', 'Douglas LLC', 'torrey.cruickshank@example.org', '$2y$10$lZN6jQh6dj/L8PCDwtzEj.vbWbLev0O0AzyyG4UHmEO6PyZXAvMLS', '4|ShD3rKmDvYQIfHqmsbcup5IvLtLrAONiU5V7fsaV', '2022-05-19 18:33:11', '2022-05-19 18:33:12'),
(5, 'lakin.com', 'Ashlee', 'Raynor', 'Hickle-Bradtke', 'denis62@example.org', '$2y$10$14SvJ9OFtEwp0.98OVyB0ejoIVVRnXaaQGz8AGarrHWsq3zBS.5nC', '5|TU4FiNF8UsqRzIzZq8Mq4wUMfHgVBs8NV3mna4SZ', '2022-05-19 18:33:11', '2022-05-19 18:33:12'),
(6, 'schimmel.com', 'Louvenia', 'Denesik', 'Wolf-Baumbach', 'veum.nelson@example.org', '$2y$10$vgkH6ODIetMvJBrwJGlvsOsYNDvHhI4lT9v8HSmkCDZSW0b1uEp4C', '6|xJWlsIXB3EWXKtK4yK3LHsdMRePlPmiLIuCxpR4v', '2022-05-19 18:33:11', '2022-05-19 18:33:12'),
(7, 'zieme.com', 'Nikolas', 'Flatley', 'McKenzie and Sons', 'heathcote.alexandra@example.com', '$2y$10$PT/cDBKUhXBR83U53btNW.oERsHu2BVXdytdRnw53RE.fExIXk6Zm', '7|ulble0Kzk9WhcVds4Kmeim1zusRQpp3GxWUoyEX2', '2022-05-19 18:33:11', '2022-05-19 18:33:12'),
(8, 'bayer.net', 'Mia', 'Walker', 'Cormier, Witting and Kub', 'lschimmel@example.org', '$2y$10$ulTUHBKLpdxaOFZfLTmc/eQ5lNZas8OEKQ7FfWJWPxZ.T4.KYvQWe', '8|YnB6v7s0eguiwLFYv5eN3Buut5xKVjdNuDxGtMfG', '2022-05-19 18:33:11', '2022-05-19 18:33:12'),
(9, 'bruen.net', 'Aurelie', 'Leuschke', 'Lockman Ltd', 'rhea.mertz@example.org', '$2y$10$iWc4cr5oISzEbCRs9YbC3OhSWja.TkH1VzmBmsn0RBBBb.VrpETzC', '9|sOFGRPKxbEvbCx0v61FN0he4Z6BaRDpEbQVyfGCQ', '2022-05-19 18:33:11', '2022-05-19 18:33:12'),
(10, 'hegmann.com', 'Rene', 'Dibbert', 'Runolfsdottir-Donnelly', 'tia36@example.net', '$2y$10$R17ZjiaUeF4ee/TV2OIzDu6eV2D83eS7cpEPGgzAF3o4p2Rb2F8HO', '10|mpCpbWWzEtIxX2aFVu5FMeAgYKrOqI3bWWs0iZmT', '2022-05-19 18:33:11', '2022-05-19 18:33:13'),
(11, 'asdasdsdasd', 'asdasdasdads', 'asdasd', 'asdasdasd', 'red.banana311@gmail.com', '$2y$10$TgqW8dbD/IIfa8pRV82ne.2lwg1sTZw3KBgiq4Aw3mAdtWt3LtjAa', '11|QMgHo9O76cTlOwLFII8RKqsyo1k5DI039iisSt51', '2022-05-19 18:36:47', '2022-05-19 18:36:48');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `company_packages`
--

CREATE TABLE `company_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `packages_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `company_packages`
--

INSERT INTO `company_packages` (`id`, `company_id`, `packages_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2022-05-19 21:34:12', '2023-05-19 21:34:12', '2022-05-19 18:34:12', '2022-05-19 18:34:12'),
(2, 11, 4, '2022-05-19 21:37:12', '2023-05-19 21:37:12', '2022-05-19 18:37:12', '2022-05-19 18:37:12');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_05_19_013618_create_companies_table', 1),
(8, '2022_05_19_180800_create_packages_table', 1),
(9, '2022_05_19_182307_create_company_packages_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `packages`
--

CREATE TABLE `packages` (
  `packages_id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yearly_payment` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `packages`
--

INSERT INTO `packages` (`packages_id`, `package_name`, `yearly_payment`, `created_at`, `updated_at`) VALUES
(1, 'Bronze', 0, NULL, NULL),
(2, 'Bronze Plus', 1, NULL, NULL),
(3, 'Gold', 0, NULL, NULL),
(4, 'Gold Plus', 1, NULL, NULL),
(5, 'Platinium', 0, NULL, NULL),
(6, 'Platinium Plus', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Company', 1, 'authToken', 'bf88195f56c74c01d098b13967ca18bf7559b27f3e7fa58abbf8174a8b5a710a', '[\"*\"]', NULL, '2022-05-19 18:33:11', '2022-05-19 18:33:11'),
(2, 'App\\Company', 2, 'authToken', '6d5b6de8b5535ba35d107687b7beb57e094a48d1fade5f927550c93047c2b59e', '[\"*\"]', NULL, '2022-05-19 18:33:11', '2022-05-19 18:33:11'),
(3, 'App\\Company', 3, 'authToken', 'ec622d812cdc1cc6b0bf10bdd54ff5255f2d987810e822352ef5ea6eb7378a8c', '[\"*\"]', NULL, '2022-05-19 18:33:12', '2022-05-19 18:33:12'),
(4, 'App\\Company', 4, 'authToken', '4563d9dd2236a7d39ccfd4ff0f0bb244da28c068c50b0ba05e14bc3155f03453', '[\"*\"]', NULL, '2022-05-19 18:33:12', '2022-05-19 18:33:12'),
(5, 'App\\Company', 5, 'authToken', '52624b70aa71c8e2c66e10510f2a479f8f1720615a8dc221d8ffcf923774ed32', '[\"*\"]', NULL, '2022-05-19 18:33:12', '2022-05-19 18:33:12'),
(6, 'App\\Company', 6, 'authToken', '58af9163647a1ee31e27c3a9c1b30c679e12a122f88bd5c61e0e0e7bf5f8a957', '[\"*\"]', NULL, '2022-05-19 18:33:12', '2022-05-19 18:33:12'),
(7, 'App\\Company', 7, 'authToken', 'd05c0a6f985437df9eb009cab8606e083e0e9ff8580326ee9d076a43c10e2944', '[\"*\"]', NULL, '2022-05-19 18:33:12', '2022-05-19 18:33:12'),
(8, 'App\\Company', 8, 'authToken', 'dce6e3dd3ea7b16924d0549aa4687b7f130dd65daedeeee52029b34b91797081', '[\"*\"]', NULL, '2022-05-19 18:33:12', '2022-05-19 18:33:12'),
(9, 'App\\Company', 9, 'authToken', '959dc66ce6bde56cfbd6fd9587c723ef0fed32faf122d30abb047da635376274', '[\"*\"]', NULL, '2022-05-19 18:33:12', '2022-05-19 18:33:12'),
(10, 'App\\Company', 10, 'authToken', '53e09fc7986245609dd75dc9b40f34370e25ff8aadaccd977e33e9a47f4e62b2', '[\"*\"]', NULL, '2022-05-19 18:33:13', '2022-05-19 18:33:13'),
(11, 'App\\Company', 11, 'authToken', '37dada63a69d64bb32be80bfa1e262dad47162c15dcac1a8f67c449c79815e8c', '[\"*\"]', NULL, '2022-05-19 18:36:48', '2022-05-19 18:36:48');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`);

--
-- Tablo için indeksler `company_packages`
--
ALTER TABLE `company_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_packages_company_id_foreign` (`company_id`),
  ADD KEY `company_packages_packages_id_foreign` (`packages_id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Tablo için indeksler `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Tablo için indeksler `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Tablo için indeksler `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Tablo için indeksler `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`packages_id`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `company_packages`
--
ALTER TABLE `company_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `packages`
--
ALTER TABLE `packages`
  MODIFY `packages_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `company_packages`
--
ALTER TABLE `company_packages`
  ADD CONSTRAINT `company_packages_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`),
  ADD CONSTRAINT `company_packages_packages_id_foreign` FOREIGN KEY (`packages_id`) REFERENCES `packages` (`packages_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
