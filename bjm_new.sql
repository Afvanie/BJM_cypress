-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2022 pada 01.30
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bjm_new`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot`
--

CREATE TABLE `bobot` (
  `id` int(11) NOT NULL,
  `kd_gejala` varchar(30) NOT NULL,
  `kd_penyakit` varchar(30) NOT NULL,
  `bobot` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bobot`
--

INSERT INTO `bobot` (`id`, `kd_gejala`, `kd_penyakit`, `bobot`, `created_at`, `updated_at`) VALUES
(7, 'G1', 'P1', 1, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(8, 'G2', 'P1', 0.3, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(9, 'G3', 'P1', 0.3, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(10, 'G4', 'P1', 1, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(11, 'G5', 'P1', 1, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(12, 'G6', 'P1', 0.8, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(13, 'G1', 'P2', 1, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(14, 'G7', 'P2', 1, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(15, 'G8', 'P2', 1, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(16, 'G9', 'P3', 0.8, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(18, 'G11', 'P3', 1, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(19, 'G12', 'P3', 0.5, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(20, 'G13', 'P3', 0.3, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(21, 'G14', 'P3', 0.8, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(22, 'G15', 'P3', 1, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(23, 'G6', 'P3', 0.8, '2022-12-06 16:15:09', '2022-12-06 16:15:09'),
(28, 'G10', 'P3', 1, '2022-12-06 16:15:09', '2022-12-06 16:15:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_customers`
--

CREATE TABLE `data_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notelp` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_customers`
--

INSERT INTO `data_customers` (`id`, `nama`, `image`, `alamat`, `notelp`, `created_at`, `updated_at`) VALUES
(1, 'Ridho', '', 'jl. kejapanan no2', '0821123321', NULL, NULL),
(2, 'Ridho', '', 'jl. gempol no2', '082134678', NULL, NULL),
(3, 'Ridho', '', 'jl. melian no2', '0821123665', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_spareparts`
--

CREATE TABLE `data_spareparts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_spareparts`
--

INSERT INTO `data_spareparts` (`id`, `image`, `nama`, `harga`, `stok`, `created_at`, `updated_at`) VALUES
(1, '', 'LCD', 'Rp.100000', 2, NULL, NULL),
(2, '', 'Auto Radio', 'Rp.150000', 2, NULL, NULL),
(3, '', 'Gear Box', 'Rp.80000', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `kd_gejala` varchar(30) NOT NULL,
  `gejala` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `kd_gejala`, `gejala`, `created_at`, `updated_at`) VALUES
(1, 'G1', 'Ngilu Pada Saat Makan / Minum ', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(2, 'G10', 'Gusi Bengkak', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(3, 'G11', 'Terasa Nyeri', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(4, 'G12', 'Gigi Goyang', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(5, 'G13', 'Radang Sekitar Gigi', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(6, 'G14', 'Jika Ditekan Adanya Pus Yang Keluar Dari Sulkus Gingivi Gigi', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(7, 'G15', 'Demam', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(8, 'G2', 'Terasa Ada Makanan Nyangkut Dipermukaan Gigi', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(9, 'G3', 'Adanya 2 White Spot Dipermukaan Gigi', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(10, 'G4', 'Kecoklatan Pada Permukaan Gigi', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(11, 'G5', 'Rasa Tidak Nyaman Pada Saat Makan', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(12, 'G6', 'Bau Mulut', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(13, 'G7', 'Ngilu Pada Saat Berbicara', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(14, 'G8', 'Terlihat Seperti Irisan Pisau Pada Daerah Cervical Gigi', '2022-12-06 16:00:49', '2022-12-06 16:01:04'),
(15, 'G9', 'Adanya Pembengkakan Pada Kelenjar Getah Bening', '2022-12-06 16:00:49', '2022-12-06 16:01:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `indikator`
--

CREATE TABLE `indikator` (
  `id` int(11) NOT NULL,
  `nama_indikator` varchar(30) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `indikator`
--

INSERT INTO `indikator` (`id`, `nama_indikator`, `nilai`) VALUES
(3, '1', 1),
(4, '0.3', 0.3),
(5, '0.8', 0.8),
(6, '0.5', 0.5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_12_225020_create_data_customers_table', 1),
(6, '2022_06_13_000807_create_data_spareparts_table', 1),
(7, '2022_06_26_091548_create_service_table', 1),
(8, '2022_06_26_093158_create_transaksi_table', 1),
(9, '2022_06_26_190407_create_pembelian_table', 1),
(10, '2022_11_08_092956_create_rincian_biayas_table', 1),
(11, '2022_11_08_101853_create_servis_panggilans_table', 1),
(12, '2022_11_16_021419_create_gejalas_table', 1),
(13, '2022_11_22_001601_create_penyakits_table', 1),
(14, '2022_11_22_004407_create_indikatorbobots_table', 1),
(15, '2022_11_22_035418_create_rulediagnosas_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sparepart_id` bigint(20) UNSIGNED NOT NULL,
  `hargaSparepart` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `kd_penyakit` varchar(30) NOT NULL,
  `nama_penyakit` varchar(30) NOT NULL,
  `definisi` text NOT NULL,
  `solusi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `kd_penyakit`, `nama_penyakit`, `definisi`, `solusi`, `created_at`, `updated_at`) VALUES
(1, 'P1', 'Karies Gigi', 'Karies gigi adalah sebuah penyakit infeksi yang merusak struktur jaringan keras gigi. Penyakit ini ditandai dengan gigi berlubang. Jika tidak ditangani, penyakit ini dapat menyebabkan nyeri, kematian saraf gigi (nekrose) dan infeksi periapikal dan infeksi sistemik yang bisa membahayakan penderita, dan bahkan bisa berakibat kematian. Penyakit ini telah dikenal sejak masa lalu, berbagai bukti telah menunjukkan bahwa penyakit ini telah dikenal sejak zaman perunggu, zaman besi, dan zaman pertengahan. Peningkatan prevalensi karies banyak dipengaruhi perubahan dari pola makan. Kini, karies gigi telah menjadi penyakit yang tersebar di seluruh dunia.', 'Penambahan Gigi Dengan GI dan Penambalan Gigi Dengan Komposit', '2022-12-06 16:18:32', '2022-12-06 16:18:32'),
(2, 'P2', 'Erosi Gigi', 'Erosi gigi adalah kondisi terkikisnya lapisan terluar gigi yang dikenal sebagai enamel. Enamel merupakan lapisan keras transparan yang berfungsi melindungi gigi dari kerusakan. Ketika enamel mengalami erosi atau terkikis, lapisan gigi di bawah enamel yang bernama dentin akan terekspos tanpa lapisan pelindung. Hal ini dapat menyebabkan nyeri gigi karena sifat dentin yang sensitif.', 'Penambahan Gigi Dengan GI dan Penambalan Gigi Dengan Komposit', '2022-12-06 16:18:32', '2022-12-06 16:18:32'),
(3, 'P3', 'Abses Gigi', 'Abses gigi merupakan penyakit yang terjadi karena infeksi bakteri dan sering menyerang orang yang tidak menjaga kebersihan gigi dengan baik. Kondisi ini memicu terbentuknya kantung atau benjolan berisi nanah pada gigi. Abses gigi umumnya muncul di ujung akar gigi dan menyebabkan rasa nyeri tak tertahankan. Nyeri yang muncul sebagai gejala penyakit ini disebabkan oleh nanah yang berkumpul pada benjolan di seputar gigi dan mulut.', 'Perawatan Saluran Akan Jika Mahkota Gigi Masih Ada, Premedikasi dan Pencabutan', '2022-12-06 16:18:32', '2022-12-06 16:18:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincianbiaya`
--

CREATE TABLE `rincianbiaya` (
  `tanggal` date NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `sparepart_id` bigint(20) UNSIGNED NOT NULL,
  `biaya` int(11) DEFAULT NULL,
  `biayaService` int(11) DEFAULT NULL,
  `hargaSparepart` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rulediagnosas`
--

CREATE TABLE `rulediagnosas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penyakits_id` bigint(20) UNSIGNED NOT NULL,
  `gejalas_id` bigint(20) UNSIGNED NOT NULL,
  `indikatorbobots_id` bigint(20) UNSIGNED NOT NULL,
  `kd_penyakit` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biaya` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id`, `nama`, `biaya`, `created_at`, `updated_at`) VALUES
(1, 'Ganti Oli Mesin Mobil', 450000, NULL, NULL),
(2, 'Ganti Filter Oli', 300000, NULL, NULL),
(3, 'Ganti Busi Mobil', 50000, NULL, NULL),
(4, 'Ganti Filter Air Conditioner Mobil', 85000, NULL, NULL),
(5, 'Ganti Kanvas Kopling', 7500000, NULL, NULL),
(6, 'Ganti Kanvas Rem', 225000, NULL, NULL),
(7, 'Ganti Filter Udara', 235000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `servis_panggilan`
--

CREATE TABLE `servis_panggilan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nope` bigint(20) UNSIGNED NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `kd_gejala` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`kd_gejala`) VALUES
('G1'),
('G10'),
('G12'),
('G6'),
('G9');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_penyakit`
--

CREATE TABLE `tmp_penyakit` (
  `noip` varchar(30) NOT NULL,
  `kd_penyakit` varchar(30) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tmp_penyakit`
--

INSERT INTO `tmp_penyakit` (`noip`, `kd_penyakit`, `nilai`) VALUES
('', 'P1', 0.18181818181818),
('', 'P2', 0.33333333333333),
('', 'P3', 0.16129032258065);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `sparepart_id` bigint(20) UNSIGNED NOT NULL,
  `biaya` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `tanggal_join` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `foto`, `nama`, `email`, `email_verified_at`, `password`, `level`, `tanggal_join`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', 'Afvanie Rama Ardyansah', 'ardyansah201@gmail.com', NULL, '$2y$10$PZHsaI/sC/U4R7L6tbEa3OsYOFS9qPBSqlnoAIEubmtypdGfFdKPq', 'Admin', '2022-05-01', NULL, NULL, NULL),
(2, '', 'Ridho Triadilaksono', 'ridhotriadi@gmail.com', NULL, '$2y$10$htoMtDBY0Vw0wDn5MuEOqOyeICEp6XLLuMu9t0adyZKJGjfiWmne2', 'Admin', '2021-06-04', NULL, NULL, NULL),
(3, '', 'jumain', 'jumain@gmail.com', NULL, '$2y$10$x90AYnTbhVt9P7hnq./Ud.Yi6K62/OYYEdk7Yba0h/KfrpfxCv.1m', 'Admin', '2022-06-04', NULL, NULL, NULL),
(4, '', 'Ayu', 'ayu@gmail.com', NULL, '$2y$10$6BRQgtPkKbY4E5JPxBi.I.d4bOSSNh5nLOjBlQyYwrZrpuw4e7SqS', 'user', '2022-06-04', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_customers`
--
ALTER TABLE `data_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_spareparts`
--
ALTER TABLE `data_spareparts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `indikator`
--
ALTER TABLE `indikator`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembelian_sparepart_id_foreign` (`sparepart_id`),
  ADD KEY `pembelian_user_id_foreign` (`user_id`);
  

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `rincianbiaya`
--
ALTER TABLE `rincianbiaya`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rincianbiaya_service_id_foreign` (`service_id`),
  ADD KEY `rincianbiaya_sparepart_id_foreign` (`sparepart_id`);

--
-- Indeks untuk tabel `rulediagnosas`
--
ALTER TABLE `rulediagnosas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rulediagnosas_penyakits_id_foreign` (`penyakits_id`),
  ADD KEY `rulediagnosas_gejalas_id_foreign` (`gejalas_id`),
  ADD KEY `rulediagnosas_indikatorbobots_id_foreign` (`indikatorbobots_id`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `servis_panggilan`
--
ALTER TABLE `servis_panggilan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_customer_id_foreign` (`customer_id`),
  ADD KEY `transaksi_service_id_foreign` (`service_id`),
  ADD KEY `transaksi_sparepart_id_foreign` (`sparepart_id`);

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
-- AUTO_INCREMENT untuk tabel `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `data_customers`
--
ALTER TABLE `data_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `data_spareparts`
--
ALTER TABLE `data_spareparts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `indikator`
--
ALTER TABLE `indikator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rincianbiaya`
--
ALTER TABLE `rincianbiaya`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rulediagnosas`
--
ALTER TABLE `rulediagnosas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `servis_panggilan`
--
ALTER TABLE `servis_panggilan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_sparepart_id_foreign` FOREIGN KEY (`sparepart_id`) REFERENCES `data_spareparts` (`id`),
  ADD CONSTRAINT `pembelian_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Ketidakleluasaan untuk tabel `rincianbiaya`
--
ALTER TABLE `rincianbiaya`
  ADD CONSTRAINT `rincianbiaya_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `rincianbiaya_sparepart_id_foreign` FOREIGN KEY (`sparepart_id`) REFERENCES `data_spareparts` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `data_customers` (`id`),
  ADD CONSTRAINT `transaksi_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `transaksi_sparepart_id_foreign` FOREIGN KEY (`sparepart_id`) REFERENCES `data_spareparts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
