-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2023 pada 01.51
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(57, 37, 38, 'Anggur Hijau (per kg)', 10000, 1, 'green grapes.png'),
(58, 37, 35, 'Ikan Berminyak (per kg)', 10000, 1, 'oily fishes.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(8, 37, 'Farhan Nugroho', 'user01@gmail.com', '082246872356', 'Senang berbelanja di KangSembakOnline.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(13, 37, 'Farhan Nugroho', '082246872356', 'user01@gmail.com', 'kartu kredit', 'flat no. A Jalan Persatuan Sleman Daerah Istimewa Yogyakarta Indonesia - 63189', ', Daging Sapi (per kg) ( 1 ), Ikan Tuna (per kg) ( 1 )', 65000, '19-Jun-2023', 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(27, 'Apel (per kg)', 'Buah-buahan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 20000, 'apple.png'),
(28, 'Jeruk (per kg)', 'Buah-buahan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 15000, 'orange.png'),
(29, 'Ikan Tuna (per kg)', 'Ikan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 30000, 'semon fish.png'),
(30, 'Daging Ayam (per kg)', 'Daging', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 25000, 'chicken.png'),
(31, 'Brokoli (per kg)', 'Sayur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 15000, 'broccoli.png'),
(32, 'Semangka (per buah)', 'Buah-buahan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 27000, 'watermelon.png'),
(33, 'Kol (per kg)', 'Sayur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 2000, 'cabbage.png'),
(34, 'Wortel (5 pcs)', 'Sayur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 5000, 'carrot.png'),
(35, 'Ikan Berminyak (per kg)', 'Ikan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 10000, 'oily fishes.png'),
(36, 'Tomat (per kg)', 'Sayur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 5000, 'tomato.png'),
(37, 'Potongan Paha Ayam', 'Daging', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 12000, 'chicken leg pieces.png'),
(38, 'Anggur Hijau (per kg)', 'Buah-buahan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 10000, 'green grapes.png'),
(39, 'Daging Sapi (per kg)', 'Daging', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 35000, 'beaf steak.png'),
(40, 'Kol Bunga', 'Sayur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 5000, 'cauliflower.png'),
(41, 'Stroberi (per kg)', 'Buah-buahan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do incididunt ut labore et dolore magna aliqua.', 10000, 'strawberry.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(37, 'user01', 'user01@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', 'pic-7.png'),
(38, 'admin01', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin', 'pic-8.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(55, 37, 28, 'Jeruk (per kg)', 15000, 'orange.png'),
(57, 37, 34, 'Wortel (5 pcs)', 5000, 'carrot.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
