-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 28 Eki 2011, 19:36:57
-- Sunucu sürümü: 5.5.16
-- PHP Sürümü: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `il_ilce`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilceler`
--

CREATE TABLE IF NOT EXISTS `ilceler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` int(11) NOT NULL,
  `ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=11 ;

--
-- Tablo döküm verisi `ilceler`
--

INSERT INTO `ilceler` (`id`, `kategori`, `ilce`) VALUES
(1, 1, 'Gerede'),
(2, 1, 'Mudurnu'),
(3, 1, 'Mengen'),
(4, 2, 'Ataşehir'),
(5, 2, 'Avcılar'),
(6, 2, 'Şişli'),
(7, 3, 'Suşehri'),
(8, 3, 'Akıncılar'),
(9, 3, 'Gölova'),
(10, 3, 'Zara');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iller`
--

CREATE TABLE IF NOT EXISTS `iller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ilAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `iller`
--

INSERT INTO `iller` (`id`, `ilAdi`) VALUES
(1, 'Bolu'),
(2, 'İstanbul'),
(3, 'Sivas');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
