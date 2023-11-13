-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Nov 2023 pada 04.54
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
-- Database: `login_enkrip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`) VALUES
(1, 'piero', 'peoir'),
(2, 'aku', 'rzliap'),
(3, 'rizal', 'DTREEMPKAANTRIITKKEIAMNUEFPNOB'),
(4, 'aku', 'lrziap'),
(5, 'saya', 'lrzia'),
(6, 'saya', '9railz0'),
(7, 'aku', 'ounoisbb'),
(8, 'saya', 'opeir'),
(9, 'upb', 'lrziap'),
(10, 'upb', 'aumpehbg'),
(11, 'upb', 'aumpehbg'),
(12, 'aku', 'prailzp'),
(13, 'aku', 'umapehbg'),
(14, 'akuadalah', 'umapehbg'),
(15, 'saya', 'rrdiiaznnagilapn'),
(16, 'rizaladalah', 'rzlia'),
(17, 'aku', 'rzlia'),
(18, 'aku', 'rzlia'),
(19, 'aku', 'rzlia'),
(20, 'aku', 'rzlia'),
(21, 'aku', 'rzlia'),
(22, 'aku', 'rzlia'),
(23, 'aku', 'rzlia'),
(24, 'aku', 'rzlia'),
(25, 'aku', 'rzlia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'BCMCTHRGNQANPLSNG'),
(2, 'rizal@gmail.com', 'BCMCT'),
(3, 'rizal@gmail.com', 'BCMCTJIXA'),
(4, 'dasargemes009@gmail.com', 'BCMCTJIXA'),
(5, 'dasargemes009@gmail.com', 'BCMCT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'saya', 'KQM'),
(2, 'saya', 'KQM'),
(3, 'sayad', 'KQM'),
(4, 'saya', 'YOEIA123'),
(5, 'saya', 'KQM'),
(6, 'upb', 'KQM'),
(7, 'rizal', 'YOEIAYOEIA'),
(8, 'rizal', 'PWDILEFN'),
(9, 'rizal', 'EFN'),
(10, 'upbg', 'PWDILPWDIL'),
(11, 'vanishgirl@yahoo.com', 'LUFGAJ'),
(12, 'rizal', 'PWDIL'),
(13, 'rizal', 'QFYXTV');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
