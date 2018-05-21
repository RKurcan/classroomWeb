-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 May 2018, 21:45:15
-- Sunucu sürümü: 10.1.25-MariaDB
-- PHP Sürümü: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `classroom`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

CREATE TABLE `duyurular` (
  `duyuru_id` int(11) NOT NULL,
  `duyuru_yapan_id` int(11) NOT NULL,
  `duyuru_basligi` varchar(255) NOT NULL,
  `duyuru_icerigi` varchar(1000) NOT NULL,
  `duyuru_tarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `duyurular`
--

INSERT INTO `duyurular` (`duyuru_id`, `duyuru_yapan_id`, `duyuru_basligi`, `duyuru_icerigi`, `duyuru_tarihi`) VALUES
(1, 1, 'fsdf', 'Sınama notları açıklanmıştır', '2018-04-22 19:56:04'),
(2, 1, 'sdfsd', 'Ders Derslik 1 de yapılacaktır\r\n', '2018-04-22 19:56:00'),
(3, 1, 'sdf', 'Ders İptal', '2018-04-22 19:55:58'),
(4, 10, 'sdfsd', 'Dersi yarına erteledim.', '2018-04-22 19:55:56'),
(5, 1, 'sdfsdf', 'Ders Yokkk', '2018-04-22 19:55:54'),
(6, 1, 'sdf', 'Notlar Açıklandı', '2018-04-22 19:55:52'),
(7, 1, 'af', 'Notlarını göremeyen yanıma gelsin', '2018-04-22 19:55:49'),
(8, 1, 'Notlar Açıklandı', 'Bilgisayar Ağları Notları Açıklandı', '2018-04-22 19:52:02'),
(10, 1, 'afds dsfs sfdsfsd fsdf sdfsd f sdfsd fsd', 'fsdfsd fsdf sdf ', '2018-04-22 20:01:27'),
(11, 12, 'Notları Açıkladım', 'adaasdsadasd', '2018-04-22 20:35:22'),
(12, 2, 'sadsfd', 'ffddsfd', '2018-04-22 20:53:32'),
(13, 2, 'Fatihhh', 'İçerikkk', '2018-04-24 10:12:52'),
(14, 2, 'aaaa', 'duyuruuu', '2018-04-27 20:06:47'),
(15, 2, 'fatma', 'asdasdsad', '2018-04-28 13:28:17'),
(16, 2, 'fsdf', 'fdsdfsd', '2018-04-28 13:28:40'),
(17, 2, 'fdsdf', 'dsfds', '2018-04-28 13:29:09'),
(18, 2, 'fgsdg', 'dsgsgsd', '2018-04-28 13:30:18'),
(19, 2, 'fatih', 'dsfaff', '2018-04-28 13:31:09'),
(20, 2, 'sdfsaf', 'afasas', '2018-04-28 13:34:38'),
(21, 2, 'dfasf', 'fasaf', '2018-04-28 13:35:49'),
(22, 2, 'fsdg', 'sgdsdg', '2018-04-28 13:36:25'),
(23, 2, 'dfg', 'gddgd', '2018-04-28 13:37:28'),
(24, 2, 'fgg', 'hdfhdf', '2018-04-28 13:38:36'),
(25, 13, 'Etkinlik başlamak üzere', 'etkinlik', '2018-04-28 18:41:19'),
(26, 2, 'fatiihhhh', '123456', '2018-04-28 18:47:55'),
(27, 13, 'duyuru1', '12345781', '2018-04-28 18:49:40'),
(28, 2, 'deneme15', 'dasdasf', '2018-04-28 18:51:30'),
(29, 2, 'safadf', 'Grubu Kurulmuştur', '2018-04-28 19:27:46'),
(30, 2, 'fatma', 'Grubu Kurulmuştur', '2018-04-28 19:30:26'),
(31, 2, 'yeni duyuru', 'fghjk', '2018-05-03 07:52:22'),
(32, 2, 'deneme grup', 'Grubu Kurulmuştur', '2018-05-03 07:53:29'),
(33, 3, 'ss', 'sss', '2018-05-13 19:26:01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `goruldu`
--

CREATE TABLE `goruldu` (
  `goruldu_paylasim_id` int(11) NOT NULL,
  `goruldu_kullanici_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `goruldu`
--

INSERT INTO `goruldu` (`goruldu_paylasim_id`, `goruldu_kullanici_id`) VALUES
(42, 2),
(41, 2),
(40, 2),
(42, 6),
(41, 6),
(40, 6),
(43, 6),
(43, 2),
(16, 2),
(15, 2),
(14, 2),
(13, 2),
(12, 2),
(11, 2),
(10, 2),
(44, 2),
(45, 2),
(46, 6),
(46, 2),
(45, 6),
(44, 6),
(16, 6),
(15, 6),
(14, 6),
(13, 6),
(12, 6),
(11, 6),
(10, 6),
(47, 2),
(48, 2),
(49, 2),
(48, 6),
(49, 6),
(47, 6),
(50, 2),
(39, 2),
(38, 2),
(37, 2),
(36, 2),
(35, 2),
(34, 2),
(33, 2),
(32, 2),
(31, 2),
(30, 2),
(29, 2),
(28, 2),
(27, 2),
(26, 2),
(25, 2),
(24, 2),
(23, 2),
(22, 2),
(21, 2),
(20, 2),
(19, 2),
(18, 2),
(17, 2),
(49, 13),
(51, 2),
(52, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gruplar`
--

CREATE TABLE `gruplar` (
  `grup_id` int(11) NOT NULL,
  `grup_kuran_id` int(11) NOT NULL,
  `grup_adi` varchar(255) NOT NULL,
  `grup_logo` varchar(255) NOT NULL,
  `grup_olusturma_tarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `gruplar`
--

INSERT INTO `gruplar` (`grup_id`, `grup_kuran_id`, `grup_adi`, `grup_logo`, `grup_olusturma_tarihi`) VALUES
(5, 1, 'Test Mühendisliği', 'Test Mühendisliği.jpg', '2018-04-22 19:15:30'),
(6, 2, 'Bilgisayar Ağları', 'Bilgisayar Ağları.png', '2018-04-22 20:37:35'),
(7, 2, 'Web tasarım', 'Web tasarım.png', '2018-04-22 20:54:34'),
(8, 2, 'Yapay Zeka', 'Yapay Zeka.png', '2018-04-24 10:14:35'),
(9, 2, 'twetwet', 'twetwet.jpg', '2018-04-28 19:27:13'),
(11, 2, 'fatma', 'fatma.jpg', '2018-04-28 19:30:26'),
(12, 2, 'deneme grup', 'deneme grup.png', '2018-05-03 07:53:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `grupuyeleri`
--

CREATE TABLE `grupuyeleri` (
  `grup_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `izin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `grupuyeleri`
--

INSERT INTO `grupuyeleri` (`grup_id`, `kullanici_id`, `izin`) VALUES
(8, 2, 2),
(6, 2, 2),
(7, 2, 2),
(5, 2, 2),
(8, 6, 2),
(6, 6, 2),
(6, 13, 2),
(11, 2, 1),
(11, 2, 1),
(10, 2, 1),
(10, 2, 1),
(12, 2, 2),
(12, 3, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `grup_bildirimi`
--

CREATE TABLE `grup_bildirimi` (
  `alici_id` int(11) NOT NULL,
  `gonderici_id` int(11) NOT NULL,
  `zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `konu` varchar(250) NOT NULL DEFAULT 'Bildiriminiz Var',
  `durum` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `grup_bildirimi`
--

INSERT INTO `grup_bildirimi` (`alici_id`, `gonderici_id`, `zaman`, `konu`, `durum`) VALUES
(2, 13, '2018-04-28 19:10:58', 'Paylaşımınıza Yorum Var!', 1),
(1, 2, '2018-04-28 19:30:26', 'Grup Oluşturuldu!', 1),
(3, 2, '2018-04-28 19:30:26', 'Grup Oluşturuldu!', 1),
(5, 2, '2018-04-28 19:30:26', 'Grup Oluşturuldu!', 0),
(6, 2, '2018-04-28 19:30:26', 'Grup Oluşturuldu!', 0),
(7, 2, '2018-04-28 19:30:26', 'Grup Oluşturuldu!', 0),
(8, 2, '2018-04-28 19:30:26', 'Grup Oluşturuldu!', 0),
(9, 2, '2018-04-28 19:30:26', 'Grup Oluşturuldu!', 0),
(10, 2, '2018-04-28 19:30:27', 'Grup Oluşturuldu!', 0),
(11, 2, '2018-04-28 19:30:27', 'Grup Oluşturuldu!', 0),
(12, 2, '2018-04-28 19:30:27', 'Grup Oluşturuldu!', 0),
(13, 2, '2018-04-28 19:30:27', 'Grup Oluşturuldu!', 1),
(2, 13, '2018-04-28 19:30:51', 'Paylaşımınıza Yorum Var!', 1),
(1, 2, '2018-04-28 20:26:37', 'Takip İsteğiniz Var!', 1),
(2, 2, '2018-05-02 22:09:27', 'Fatma Delen, safadf adlı grubunuza katılmak istiyor!', 1),
(1, 2, '2018-05-03 07:52:22', 'Duyurunuz Var!', 1),
(3, 2, '2018-05-03 07:52:22', 'Duyurunuz Var!', 1),
(5, 2, '2018-05-03 07:52:22', 'Duyurunuz Var!', 0),
(6, 2, '2018-05-03 07:52:22', 'Duyurunuz Var!', 0),
(7, 2, '2018-05-03 07:52:22', 'Duyurunuz Var!', 0),
(8, 2, '2018-05-03 07:52:22', 'Duyurunuz Var!', 0),
(9, 2, '2018-05-03 07:52:22', 'Duyurunuz Var!', 0),
(10, 2, '2018-05-03 07:52:22', 'Duyurunuz Var!', 0),
(11, 2, '2018-05-03 07:52:22', 'Duyurunuz Var!', 0),
(13, 2, '2018-05-03 07:52:23', 'Duyurunuz Var!', 0),
(14, 2, '2018-05-03 07:52:23', 'Duyurunuz Var!', 0),
(1, 2, '2018-05-03 07:53:29', 'Grup Oluşturuldu!', 1),
(3, 2, '2018-05-03 07:53:29', 'Grup Oluşturuldu!', 1),
(5, 2, '2018-05-03 07:53:29', 'Grup Oluşturuldu!', 0),
(6, 2, '2018-05-03 07:53:29', 'Grup Oluşturuldu!', 0),
(7, 2, '2018-05-03 07:53:29', 'Grup Oluşturuldu!', 0),
(8, 2, '2018-05-03 07:53:29', 'Grup Oluşturuldu!', 0),
(9, 2, '2018-05-03 07:53:30', 'Grup Oluşturuldu!', 0),
(10, 2, '2018-05-03 07:53:30', 'Grup Oluşturuldu!', 0),
(11, 2, '2018-05-03 07:53:30', 'Grup Oluşturuldu!', 0),
(13, 2, '2018-05-03 07:53:30', 'Grup Oluşturuldu!', 0),
(14, 2, '2018-05-03 07:53:30', 'Grup Oluşturuldu!', 0),
(2, 2, '2018-05-03 07:53:34', 'Takip İsteğiniz Var!', 1),
(2, 2, '2018-05-03 08:04:46', 'Bildiriminiz Var', 0),
(2, 2, '2018-05-03 08:04:50', 'Paylaşımınıza Yorum Var!', 0),
(2, 2, '2018-05-03 21:39:43', 'Bildiriminiz Var', 0),
(1, 2, '2018-05-03 21:39:49', 'Paylaşımınıza Yorum Var!', 1),
(1, 3, '2018-05-13 19:26:01', 'Duyurunuz Var!', 0),
(2, 3, '2018-05-13 19:26:01', 'Duyurunuz Var!', 0),
(5, 3, '2018-05-13 19:26:01', 'Duyurunuz Var!', 0),
(6, 3, '2018-05-13 19:26:01', 'Duyurunuz Var!', 0),
(7, 3, '2018-05-13 19:26:01', 'Duyurunuz Var!', 0),
(8, 3, '2018-05-13 19:26:01', 'Duyurunuz Var!', 0),
(9, 3, '2018-05-13 19:26:01', 'Duyurunuz Var!', 0),
(10, 3, '2018-05-13 19:26:01', 'Duyurunuz Var!', 0),
(11, 3, '2018-05-13 19:26:01', 'Duyurunuz Var!', 0),
(13, 3, '2018-05-13 19:26:01', 'Duyurunuz Var!', 0),
(14, 3, '2018-05-13 19:26:01', 'Duyurunuz Var!', 0),
(2, 3, '2018-05-13 19:27:19', 'Takip İsteğiniz Var!', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `kullanici_id` int(11) NOT NULL,
  `adSoyad` varchar(255) NOT NULL,
  `eMail` varchar(255) NOT NULL,
  `sifre` varchar(255) NOT NULL,
  `rutbe` varchar(255) NOT NULL,
  `yetki` int(11) NOT NULL DEFAULT '0',
  `profilfotografi` varchar(255) NOT NULL DEFAULT 'user.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`kullanici_id`, `adSoyad`, `eMail`, `sifre`, `rutbe`, `yetki`, `profilfotografi`) VALUES
(1, 'Fatih Arslan', 'fatih.46ars@gmail.com', '202cb962ac59075b964b07152d234b70', '3.SINIF', 2, '8.jpg'),
(2, 'Fatma Delen', 'ftmdln@gmail.com', '202cb962ac59075b964b07152d234b70', 'PROFESÖR', 1, 'user.png'),
(3, 'mc', 'mc@gmail.com', '202cb962ac59075b964b07152d234b70', '3.SINIF', 0, 'user.png'),
(5, 'fd', 'fa@gamil.com', '202cb962ac59075b964b07152d234b70', '3.SINIF', 0, 'user.png'),
(6, 'fd', 'fd@gmail.com', '202cb962ac59075b964b07152d234b70', 'DOÇENT', 0, 'user.png'),
(7, 'mc', 'root@gmail.com', '202cb962ac59075b964b07152d234b70', 'HAZIRLIK', 0, 'user.png'),
(8, 'Fatmaa Deeelllennn', 'delen@gmail.com', '202cb962ac59075b964b07152d234b70', 'PROFESÖR', 1, 'user.png'),
(9, 'fatih', 'fa@gmail.com', '202cb962ac59075b964b07152d234b70', 'HAZIRLIK', 0, 'user.png'),
(10, 'Muhammed Altın', 'altin@gmail.com', '202cb962ac59075b964b07152d234b70', '4.SINIF', 0, 'user.png'),
(11, 'Mücahit Çalı', 'cali8@gmail.com', '202cb962ac59075b964b07152d234b70', 'PROFESÖR', 1, 'user.png'),
(13, 'ilkim', 'fdfa@gmail.com', '202cb962ac59075b964b07152d234b70', 'YARDIMCI DOÇENT', 1, '11.jpg'),
(14, 'Canan Gök', 'cnn@gmail.com', '202cb962ac59075b964b07152d234b70', 'ÖĞRETİM GÖREVLİSİ', 1, '12.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `mesaj_id` int(11) NOT NULL,
  `alici_id` int(11) NOT NULL,
  `gonderici_id` int(11) NOT NULL,
  `mesaj` varchar(1000) NOT NULL,
  `mesaj_zamani` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `okundu` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`mesaj_id`, `alici_id`, `gonderici_id`, `mesaj`, `mesaj_zamani`, `okundu`) VALUES
(59, 6, 2, 'asdas', '2018-05-02 12:50:44', 0),
(60, 6, 2, 'selam', '2018-05-02 12:51:08', 0),
(61, 2, 6, 'aloo', '2018-05-02 12:52:02', 0),
(62, 6, 2, 'sss', '2018-05-02 12:53:35', 0),
(63, 6, 2, 'sss', '2018-05-02 12:54:04', 0),
(64, 6, 2, 'alooo', '2018-05-02 12:54:08', 0),
(65, 6, 2, 'selam', '2018-05-02 12:56:43', 0),
(66, 6, 2, 'aaaa', '2018-05-02 12:56:46', 0),
(67, 6, 2, 'olmad?', '2018-05-02 12:56:50', 0),
(68, 6, 2, 'sdas', '2018-05-02 12:57:54', 0),
(69, 2, 6, 'asdas', '2018-05-02 12:58:44', 0),
(70, 2, 6, 'sadasdasdas', '2018-05-02 12:58:49', 0),
(71, 6, 2, '', '2018-05-02 13:04:11', 0),
(72, 6, 2, '', '2018-05-02 13:04:13', 0),
(73, 6, 2, 'asd', '2018-05-02 13:04:22', 0),
(74, 6, 2, 'selamunaleyküm', '2018-05-02 13:05:00', 0),
(75, 6, 2, 'selam gencler', '2018-05-02 13:06:51', 0),
(76, 6, 2, 'alooo', '2018-05-02 13:07:04', 0),
(77, 6, 2, 'sss', '2018-05-02 13:07:22', 0),
(78, 6, 2, 'dasda', '2018-05-02 13:08:39', 0),
(79, 6, 2, 'naberrr', '2018-05-02 13:08:48', 0),
(80, 6, 2, '', '2018-05-02 13:11:25', 0),
(81, 6, 2, 'dsfsd', '2018-05-02 13:12:31', 0),
(82, 6, 2, 'naber genjler\r\n', '2018-05-02 13:12:40', 0),
(83, 6, 2, 'sss', '2018-05-02 13:14:32', 0),
(84, 2, 6, 'naber k?z\r\n', '2018-05-02 13:14:59', 0),
(85, 6, 2, 'oo sen yazar m?yd?n', '2018-05-02 13:15:11', 0),
(86, 2, 6, 'sss', '2018-05-02 14:01:44', 0),
(87, 6, 2, 'selam\r\n', '2018-05-02 14:05:09', 0),
(88, 6, 2, 'sss', '2018-05-02 14:07:03', 0),
(89, 2, 6, 'yak???kl?', '2018-05-02 14:07:27', 0),
(90, 2, 6, 'deneme', '2018-05-02 14:09:09', 0),
(91, 8, 2, 'wsf', '2018-05-02 14:51:05', 0),
(92, 2, 2, 'ooo', '2018-05-02 14:51:51', 0),
(93, 6, 2, 'k?zzzz', '2018-05-02 14:52:15', 0),
(94, 2, 6, 'naber', '2018-05-02 14:53:03', 0),
(95, 12, 2, 'adsds', '2018-05-02 21:06:34', 0),
(96, 1, 2, 'naber lan', '2018-05-10 07:13:15', 1),
(97, 1, 2, 'asfsadf', '2018-05-10 07:13:15', 1),
(98, 1, 2, 'selam', '2018-05-10 07:13:15', 1),
(99, 8, 2, 'sss', '2018-05-09 10:14:49', 0),
(100, 2, 8, 'aaaaa', '2018-05-09 10:14:52', 0),
(101, 1, 8, 'selammm\r\n', '2018-05-10 07:44:55', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `paylasimlar`
--

CREATE TABLE `paylasimlar` (
  `paylasim_id` int(11) NOT NULL,
  `grup_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `metin` varchar(1000) NOT NULL,
  `ek_dosya_adi` varchar(255) NOT NULL,
  `paylasim_zamani` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `paylasimlar`
--

INSERT INTO `paylasimlar` (`paylasim_id`, `grup_id`, `kullanici_id`, `metin`, `ek_dosya_adi`, `paylasim_zamani`) VALUES
(10, 5, 2, 'test deneme paylaşım', '29.pptx', '2018-04-24 12:18:46'),
(11, 5, 2, 'Test Deneme paylasim 2', '21.pptx', '2018-04-24 13:05:32'),
(12, 5, 2, 'deneme 3', '', '2018-04-24 21:50:48'),
(13, 5, 2, 'deneme 4', '', '2018-04-24 21:50:37'),
(14, 5, 2, 'fatih arslan', '', '2018-04-25 13:19:12'),
(15, 5, 2, 'fatma deeleneenenenwnda', '25.pptx', '2018-04-25 13:19:42'),
(16, 5, 2, 'sdfghjk', '', '2018-04-25 13:21:17'),
(17, 4, 2, 'xcgfhj', '27.pptx', '2018-04-25 13:23:42'),
(18, 4, 2, 'fdfdfdfdf', '28.pptx', '2018-04-25 13:26:48'),
(19, 4, 2, 'fdfdfdfdf', '29.pptx', '2018-04-25 13:27:20'),
(20, 4, 2, 'fdfdsfs', '', '2018-04-25 13:28:02'),
(21, 4, 2, 'assdsdsasaaas', '', '2018-04-25 13:28:44'),
(22, 4, 2, 'assdsdsasaaas', '', '2018-04-25 13:28:49'),
(23, 4, 2, 'sadfsafasfa', '213.pptx', '2018-04-25 13:30:21'),
(24, 4, 2, 'deneee', '', '2018-04-25 13:30:29'),
(25, 4, 2, '', '', '2018-04-25 13:30:31'),
(26, 4, 2, '', '', '2018-04-25 13:31:50'),
(27, 4, 2, 'fatma', '', '2018-04-25 13:32:51'),
(28, 4, 2, 'fatma', '', '2018-04-25 13:33:19'),
(29, 4, 2, 'dsadsad', '', '2018-04-25 13:33:21'),
(30, 4, 2, 'dsadsad', '', '2018-04-25 13:33:36'),
(31, 4, 2, 'dsadsad', '', '2018-04-25 13:33:39'),
(32, 4, 2, 'fsdfgsd', '', '2018-04-25 13:33:42'),
(33, 4, 2, 'fsdfgsd', '', '2018-04-25 13:33:55'),
(34, 4, 2, 'fsdsdsfd', '', '2018-04-25 13:33:58'),
(35, 4, 2, 'fsdsdsfd', '', '2018-04-25 13:34:08'),
(36, 4, 2, 'denemeeeeee', '', '2018-04-25 13:35:56'),
(37, 4, 2, 'denemeeeeeeeeeeeeeee', '', '2018-04-25 13:37:45'),
(38, 4, 2, 'deneme', '', '2018-04-27 18:52:12'),
(39, 4, 2, 'aaa', '', '2018-04-27 18:52:16'),
(40, 3, 2, 'denemeeyt\r\n', '', '2018-04-27 18:56:41'),
(41, 3, 2, 'dene', '', '2018-04-27 18:57:46'),
(42, 3, 2, 'deneeee\r\n', '', '2018-04-27 18:58:45'),
(43, 3, 6, 'dosya deneme', '633.ppt', '2018-04-27 19:31:24'),
(44, 5, 2, 'aaaa', '', '2018-04-27 19:51:31'),
(45, 5, 2, 'bbb', '', '2018-04-27 19:51:36'),
(46, 8, 6, 'fdghj', '636.ppt', '2018-04-27 20:23:03'),
(47, 3, 2, 'eyt paylasim\r\n', '', '2018-04-27 21:08:09'),
(48, 8, 2, 'yapay zeka paylasim', '238.ppt', '2018-04-27 21:08:35'),
(49, 6, 2, 'bilgisayar ağları paylaşım', '', '2018-04-27 21:09:01'),
(50, 2, 2, 'adsad', '', '2018-04-27 21:41:47'),
(51, 12, 2, 'deneme paylasim', '241.ppt', '2018-05-03 08:04:46'),
(52, 5, 2, 'alooooo', '242.ppt', '2018-05-03 21:39:43');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `paylasim_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `yorum` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `paylasim_id`, `kullanici_id`, `yorum`) VALUES
(1, 11, 2, '0'),
(2, 10, 2, '1'),
(3, 10, 2, '2'),
(4, 10, 2, '3'),
(5, 10, 2, '4'),
(6, 10, 2, '5'),
(7, 13, 2, 'deneme yorum'),
(8, 28, 2, 'fsfddsd'),
(9, 35, 2, 'fdfdsfds'),
(10, 42, 6, 'aaaaa'),
(11, 48, 2, ':)'),
(12, 46, 2, ':)))'),
(13, 48, 2, 'Güzel paylaşım'),
(14, 49, 13, 'selam merhaba'),
(15, 49, 13, 'tekrar merhaba :)'),
(16, 49, 13, 'bakim bu sefer olacak mı'),
(17, 49, 13, 'oldu oldu'),
(18, 51, 2, 'asfasf'),
(19, 52, 2, 'sss');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `duyurular`
--
ALTER TABLE `duyurular`
  ADD PRIMARY KEY (`duyuru_id`);

--
-- Tablo için indeksler `gruplar`
--
ALTER TABLE `gruplar`
  ADD PRIMARY KEY (`grup_id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`kullanici_id`),
  ADD UNIQUE KEY `eMail` (`eMail`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`mesaj_id`);

--
-- Tablo için indeksler `paylasimlar`
--
ALTER TABLE `paylasimlar`
  ADD PRIMARY KEY (`paylasim_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `duyurular`
--
ALTER TABLE `duyurular`
  MODIFY `duyuru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Tablo için AUTO_INCREMENT değeri `gruplar`
--
ALTER TABLE `gruplar`
  MODIFY `grup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `mesaj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- Tablo için AUTO_INCREMENT değeri `paylasimlar`
--
ALTER TABLE `paylasimlar`
  MODIFY `paylasim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
