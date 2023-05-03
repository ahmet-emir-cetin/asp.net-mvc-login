-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 May 2023, 23:56:52
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `mydb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

CREATE TABLE `dersler` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `kredi` int(50) NOT NULL,
  `note` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`id`, `title`, `kredi`, `note`) VALUES
(55, 'Matematik', 6, 100);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `isComplated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `todo`
--

INSERT INTO `todo` (`id`, `title`, `isComplated`) VALUES
(2, 'Erken kalk', 1),
(13, 'Erken uyu', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '12345');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `dersler`
--
ALTER TABLE `dersler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `dersler`
--
ALTER TABLE `dersler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Tablo için AUTO_INCREMENT değeri `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
