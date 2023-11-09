-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 12:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `valyoux_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallets`
--

CREATE TABLE `admin_wallets` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL DEFAULT '0.00',
  `status` varchar(255) NOT NULL DEFAULT '1',
  `token` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT '0-sendmoney,1-video,2-sell,3-buy,4-valyou song,5-promote song',
  `currency_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_wallets`
--

INSERT INTO `admin_wallets` (`id`, `customer_id`, `admin_id`, `amount`, `status`, `token`, `type`, `currency_type`, `created_at`, `updated_at`) VALUES
(1, 3, 3, '0.00', '1', '789176', '3', 'USD', '2023-02-08 12:46:26', '2023-01-19 07:23:02'),
(5, 3, 3, '0.00', '1', '789173', '3', 'USD', '2023-04-11 02:31:46', '2023-04-11 07:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `primary_artist` tinyint(4) NOT NULL DEFAULT 0,
  `category` tinyint(1) DEFAULT 0 COMMENT '0=EOI Profile , 1=Upcoming, 2=professional, 3=Major Artist',
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artist_about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spotify` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soundcloud` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applemusic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_value` float DEFAULT NULL,
  `market_value` float DEFAULT NULL,
  `dividend_payments` float DEFAULT NULL,
  `change_stock` float DEFAULT 0,
  `change_market` float DEFAULT 0,
  `current_price` float DEFAULT 0,
  `total_supply` int(11) DEFAULT 0,
  `circulating_supply` float DEFAULT 0,
  `artist` double DEFAULT 0,
  `music_fan_investor` double DEFAULT 0,
  `sell_restrictions` int(11) DEFAULT 0,
  `market_maker_price` float DEFAULT 0,
  `sell_limit` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `user_id`, `primary_artist`, `category`, `brand`, `about`, `artist_about`, `country`, `website`, `spotify`, `soundcloud`, `applemusic`, `youtube`, `facebook`, `instagram`, `photo`, `stock_value`, `market_value`, `dividend_payments`, `change_stock`, `change_market`, `current_price`, `total_supply`, `circulating_supply`, `artist`, `music_fan_investor`, `sell_restrictions`, `market_maker_price`, `sell_limit`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 0, 'Amrut Kriated', 'Singer', 'This is the demo artist created by amrut to test functionality.', 'IN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/1396741054.jpg', 1.02, 102000000, 0.000002, 2, 2, 1, 99999998, 2, 99.999998, 0.000002, 0, 0, 0, '2021-11-04 13:11:52', '2021-11-05 00:11:52'),
(4, 6, 0, 0, 'Adele Ykili', 'Singer', 'I love to create contemporary music', 'IN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/73078292.jpeg', 1.03, 1000000, 0.000003, -0.9615, -99.0291, 1, 99999997, 3, 99.999997, 0.000003, 0, 0, 0, '2021-11-04 15:11:39', '2021-11-05 02:11:39'),
(5, 3, 1, 3, 'Ed Sheeran', 'singer', 'Edward Christopher Sheeran MBE born 17 February 1991) is an English singer, songwriter, record producer, musician, actor, and businessman.', 'GB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/72921766.jpg', 1.0021, 100210000, 0.000021, 0.0299, 0.0299, 1, 99999979, 21, 99.999979, 0.000021, 0, 0, 0, '2022-09-21 20:18:41', '2022-09-22 06:18:41'),
(7, 3, 0, 3, 'Drake', 'Rapper', 'Aubrey Drake Graham (born October 24, 1986) is a Canadian rapper, singer, songwriter, actor, producer, and entrepreneur. Gaining recognition by starring in the television series', 'CA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/120570651.jpg', 81.5513, 8155130000, 0.000403, 1.2414, 1.2414, 1, 99999597, 403, 99.999597, 0.000403, 0, 0, 0, '2023-02-20 21:31:31', '2023-02-21 08:31:31'),
(8, 4, 0, 3, 'Justin Bieber', 'singer', 'Justin Drew Bieber born March 1, 1994 is a Canadian singer. He was discovered by American record executive Scooter Braun', 'CA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/1946595759.jpg', 1.0001, 100010000, 0.000001, 0.01, 0.01, 1, 99999999, 1, 99.999999, 0.000001, 0, 0, 0, '2021-11-05 05:05:18', '2021-11-05 16:05:18'),
(9, 4, 0, 3, 'Eminem', 'Rapper', 'Marshall Bruce Mathers III (born October 17, 1972), known professionally as Eminem formerly stylized as EMINƎM), is an American rapper, songwriter, and record producer.', 'US', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/679484641.jpg', 1.0102, 101020000, 0.000102, 0.0099, 0.0099, 1, 99999898, 102, 99.999898, 0.000102, 0, 0, 0, '2021-11-16 08:28:29', '2021-11-16 19:28:29'),
(10, 4, 0, 3, 'Billie Eilish', 'Singer', 'Billie Eilish Pirate Baird O\'Connell born December 18, 2001) is an American singer and songwriter.', 'US', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/1789377577.jpeg', 1.0001, 100010000, 0.000001, 0.01, 0.01, 1, 99999999, 1, 99.999999, 0.000001, 0, 0, 30, '2021-11-14 22:16:35', '2021-11-15 09:16:35'),
(11, 4, 0, 3, 'Rihanna', 'singer', 'Robyn Rihanna Fenty born February 20, 1988) is a Barbadian singer, actress, fashion designer, and businesswoman. Born in Saint Michael and raised in Bridgetown, Barbados,', 'BB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/2053548970.jpg', 1.0001, 100010000, 0.000001, 0.01, 0.01, 1, 99999999, 1, 99.999999, 0.000001, 0, 0, 0, '2021-11-19 06:58:21', '2021-11-19 17:58:21'),
(12, 4, 0, 0, 'Taylor Swift', 'singer', 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. Her narrative lyricism, which often takes inspiration from her personal life and experiences, \nBorn in West Reading, Pennsylvania,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/1076442079.jpg', 1.0001, 100010000, 0.000001, 0.01, 0.01, 1, 99999999, 1, 99.999999, 0.000001, 0, 0, 0, '2021-11-19 06:59:32', '2021-11-19 17:59:32'),
(13, 4, 0, 3, 'Queen (band)', 'singer', 'Queen are a British rock band formed in London in 1970. Their classic line-up was Freddie Mercury (lead vocals, piano), Brian May (guitar, vocals), Roger Taylor (drums, vocals) and John Deacon (bass)', 'GB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/1773380133.jpg', 1.0001, 100010000, 0.000001, 0.01, 0.01, 1, 99999999, 1, 99.999999, 0.000001, 0, 0, 0, '2021-11-19 06:59:54', '2021-11-19 17:59:54'),
(14, 4, 0, 3, 'BTS', 'singer', 'RR: Bangtan Sonyeondan), also known as the Bangtan Boys, is a seven-member South Korean boy band that began formation in 2010 and debuted in 2013 under Big Hit Entertainment.', 'KR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/1433318057.jpg', 1, 100000000, 0, 0, 0, 1, 100000000, 0, 100, 0, 0, 0, 0, '2021-10-24 05:04:12', '2021-10-24 05:04:12'),
(15, 1, 0, 3, 'Soluta', 'Fugiat elit mollit', 'Sit nisi dolor vita', 'SN', 'https://www.cej.in', 'Mollit ut quia paria', 'Ea ut rem officia en', 'Atque in culpa corpo', 'https://www.kuzega.org.au', 'https://www.vokec.org.au', 'https://www.jonorivijule.cm', 'assets/uploads//410996894.jpg', 1, 100000000, 0, 0, 0, 1, 100000000, 0, 100, 0, 0, 0, 0, '2021-10-24 05:04:12', '2021-10-24 05:04:12'),
(16, 5, 0, 3, 'Harsh', 'Superstar', NULL, 'US', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/195467850.png', 1, 100000000, 0, 0, 0, 1, 100000000, 0, 100, 0, 0, 0, 0, '2021-10-24 05:04:12', '2021-10-24 05:04:12'),
(17, 8, 0, 0, 'John Music Company', 'DJ', 'This is the professional John Music Company', 'US', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/63680298.jpeg', 1.0003, 100030000, 0.000003, -0.01, -0.01, 1, 99999997, 3, 99.999997, 0.000003, 0, 0, 0, '2022-08-26 22:10:11', '2022-08-27 08:10:11'),
(18, 9, 0, 0, 'Gujrati Benx', 'Singer', 'Music Is what I love to do!', 'IN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/1411570369.jpeg', 1.0001, 100010000, 0.000001, 0.01, 0.01, 1, 99999999, 1, 99.999999, 0.000001, 0, 0, 0, '2022-08-25 01:33:02', '2022-08-25 11:33:02'),
(19, 11, 0, 3, 'Bhargav\'s Music Company', 'DJ', 'lorem ipsum demo content lorem ipsum demo content lorem ipsum demo content lorem ipsum demo content', 'IN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/343905976.jpg', 1, 100000000, 0, 0, 0, 1, 100000000, 0, 100, 0, 0, 0, 0, '2021-10-24 05:04:12', '2021-10-24 05:04:12'),
(20, 14, 0, 1, 'Stino', 'Rapper', 'I am Melbourne based Rapper, singer, Song writer and producer, with great love and passion for my craft. I make hip hop, trap, rnb, reggae, Afro pop, dance hall and always looking to experiment and further increase my knowledge in music.', 'AU', 'https://www.youtube.com/watch?v=VwBmp6iinsE', 'https://open.spotify.com/album/2N6wIJnZ6JkC3YdzzJuFVy', 'https://soundcloud.com/ajproductions-5', 'https://music.apple.com/au/album/fuck-your-energy-feat-raizo-dopekid-single/1578048083?at=1001loWk&ct=FFM_91b95d234f1d387f2a2ea1d5126643ee&uo=4&app=music', 'https://www.youtube.com/watch?v=VwBmp6iinsE', NULL, 'https://www.instagram.com/officialstinno/', 'assets/uploads/artist/1721891873.jpeg', 1.01, 101000000, 0.0001, 1, 0.9999, 1, 99999900, 100, 99.9999, 0.0001, 0, 0, 0, '2021-11-05 09:54:45', '2021-11-05 20:54:45'),
(21, 19, 0, 0, 'Sun Test', 'Singer', 'Tester profile BIO.', 'RU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/468039220.jpg', NULL, NULL, NULL, 0, 0, 0, 100000000, 0, 100, 0, 0, 0, 0, '2021-11-03 06:59:31', '2021-11-03 17:59:31'),
(22, 19, 0, 1, 'Sun Mount X', 'Rapper', 'I am artist from Netherlands', 'NL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/1863443496.png', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-03 16:49:55', '2021-11-03 16:49:55'),
(23, 22, 0, 1, 'Antonia Kay', 'Singer', 'Singer, Songwriter', 'AU', NULL, 'https://open.spotify.com/artist/4sQJhfsvydYymAON1Zelna?si=yQ24pgtdSbmF2Idr3vJUdw', 'https://soundcloud.com/peace_of_kay', 'https://music.apple.com/au/artist/antonia-kay/1210916383', 'https://www.youtube.com/channel/UC3HpJs6Z-nwQgslyjECIXEA', 'https://www.facebook.com/Peaceofkay', 'https://www.instagram.com/peaceofkay/?hl=en', 'assets/uploads//1789147483.JPG', 1.1002, 11002000, 0.01012, 0.0182, 0.0182, 0, 9998988, 1012, 99.98988, 0.01012, 0, 0, 0, '2021-11-04 13:08:09', '2021-11-05 00:08:09'),
(24, 3, 0, 0, 'Huzail X', 'DJ', 'Best DJ', 'US', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/425655336.jpeg', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 07:58:27', '2022-09-12 17:58:27'),
(25, 26, 0, 0, 'Rapper Huzail', 'Rapper', 'I make rap', 'BS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/1245539121.jpg', NULL, NULL, NULL, 0.001, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-02 13:42:26', '2023-02-02 18:42:26'),
(26, 3, 0, 3, 'Valyou X Tokens', NULL, 'Valyou X Tokens', 'AU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/uploads/artist/1093307460.jpeg', NULL, 50000000, NULL, 0, 0, 0.1, 100000000, 0, 100, 0, NULL, NULL, NULL, '2023-02-09 20:37:53', '2023-02-10 01:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `business_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otherlink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `user_id`, `business_type`, `brand`, `occupation`, `about`, `website`, `instagram`, `facebook`, `twitter`, `youtube`, `otherlink`, `photo`, `created_at`, `updated_at`) VALUES
(1, 6, 'Accompanist', 'test', 'test', 'test', 'https://test.com', 'https://instagram.com', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', NULL, 'assets/uploads/business/630226490.jpg', '2021-07-09 07:07:25', '2021-07-09 12:37:25'),
(2, 3, 'Choreographer', 'Atlantic Money', 'Record label', 'Independent label', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-21 20:38:27', '2022-09-22 06:38:27'),
(3, 6, 'Accompanist', 'test api', 'API', 'API developer', 'https://test.com', 'https://instagram.com', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', NULL, NULL, '2023-03-07 09:05:23', '2023-03-07 14:05:23'),
(4, 6, 'Accompanist', 'test api', 'API', 'API developer', 'https://test.com', 'https://instagram.com', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', NULL, NULL, '2023-03-09 05:57:13', '2023-03-09 10:57:13'),
(5, 6, 'Accompanist', 'test api', 'API', 'API developer', 'https://test.com', 'https://instagram.com', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://youtube.com', NULL, '2023-04-05 04:52:29', '2023-04-05 09:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `song_id`, `comment`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'zxcz', '2021-07-07 01:18:02', '2021-07-07 01:18:02'),
(3, 1, 13, 'sdfasdf', '2021-07-07 23:43:50', '2021-07-07 23:43:50'),
(4, 1, 1, 'ljlkj', '2021-07-08 03:48:08', '2021-07-08 03:48:08'),
(5, 1, 1, 'ljlkj', '2021-07-08 03:48:09', '2021-07-08 03:48:09'),
(6, 1, 1, 'lklk', '2021-07-08 03:48:12', '2021-07-08 03:48:12'),
(7, 1, 13, '13', '2021-07-08 03:51:07', '2021-07-08 03:51:07'),
(8, 1, 13, '132', '2021-07-08 03:51:11', '2021-07-08 03:51:11'),
(9, 1, 13, 'nice', '2021-07-08 03:51:36', '2021-07-08 03:51:36'),
(10, 1, 13, 'bg', '2021-07-08 03:57:51', '2021-07-08 03:57:51'),
(12, 1, 29, 'dsfs', '2021-07-08 04:09:20', '2021-07-08 04:09:20'),
(13, 1, 28, 'fg', '2021-07-08 04:09:30', '2021-07-08 04:09:30'),
(43, 1, 25, 'fdgdfg', '2021-07-09 04:13:57', '2021-07-09 04:13:57'),
(17, 1, 28, '77', '2021-07-08 04:29:32', '2021-07-08 04:29:32'),
(18, 1, 28, '777', '2021-07-08 04:29:54', '2021-07-08 04:29:54'),
(19, 1, 28, '777', '2021-07-08 04:29:54', '2021-07-08 04:29:54'),
(20, 1, 28, '777', '2021-07-08 04:29:55', '2021-07-08 04:29:55'),
(21, 1, 26, 'vbnv', '2021-07-08 04:30:04', '2021-07-08 04:30:04'),
(22, 1, 28, '99', '2021-07-08 04:38:33', '2021-07-08 04:38:33'),
(23, 1, 6, '369', '2021-07-08 04:44:57', '2021-07-08 04:44:57'),
(42, 1, 13, 'dsfds', '2021-07-09 04:12:34', '2021-07-09 04:12:34'),
(25, 1, 12, '333', '2021-07-08 04:54:04', '2021-07-08 04:54:04'),
(26, 1, 3, '.,/,.hjkhj', '2021-07-08 04:55:05', '2021-07-08 04:55:05'),
(27, 1, 28, '88', '2021-07-08 04:57:22', '2021-07-08 04:57:22'),
(28, 1, 11, 'good', '2021-07-08 04:58:01', '2021-07-08 04:58:01'),
(35, 1, 7, 'ghfgh', '2021-07-08 05:59:03', '2021-07-08 05:59:03'),
(30, 1, 11, 'fgdfg', '2021-07-08 04:58:04', '2021-07-08 04:58:04'),
(34, 1, 7, 'ghfgh', '2021-07-08 05:59:03', '2021-07-08 05:59:03'),
(32, 1, 11, 'ghfgh', '2021-07-08 04:59:43', '2021-07-08 04:59:43'),
(33, 1, 11, 'ghf', '2021-07-08 04:59:48', '2021-07-08 04:59:48'),
(36, 1, 7, 'hgfh', '2021-07-08 05:59:07', '2021-07-08 05:59:07'),
(37, 1, 7, 'hgfh', '2021-07-08 05:59:07', '2021-07-08 05:59:07'),
(38, 1, 28, '43', '2021-07-08 06:00:08', '2021-07-08 06:00:08'),
(39, 1, 4, '22', '2021-07-08 06:01:51', '2021-07-08 06:01:51'),
(40, 6, 29, 'vcbcb', '2021-07-08 06:52:11', '2021-07-08 06:52:11'),
(44, 1, 13, 'fgd', '2021-07-09 04:14:06', '2021-07-09 04:14:06'),
(45, 1, 25, 'bvnv', '2021-07-09 04:14:27', '2021-07-09 04:14:27'),
(46, 1, 13, '33', '2021-07-09 05:02:25', '2021-07-09 05:02:25'),
(47, 4, 13, 'nice song', '2021-07-12 00:58:03', '2021-07-12 00:58:03'),
(48, 1, 11, '123', '2021-07-12 05:46:37', '2021-07-12 05:46:37'),
(49, 1, 29, '12', '2021-07-13 23:33:01', '2021-07-13 23:33:01'),
(50, 1, 29, '36', '2021-07-13 23:33:06', '2021-07-13 23:33:06'),
(51, 1, 29, '3', '2021-07-13 23:33:10', '2021-07-13 23:33:10'),
(52, 1, 29, 'xzc', '2021-07-14 04:39:50', '2021-07-14 04:39:50'),
(53, 1, 29, 'hjgh', '2021-07-14 05:06:16', '2021-07-14 05:06:16'),
(54, 1, 29, 'hjgh', '2021-07-14 05:06:16', '2021-07-14 05:06:16'),
(55, 1, 31, '123', '2021-07-15 03:21:47', '2021-07-15 03:21:47'),
(56, 1, 30, '123', '2021-07-15 03:25:04', '2021-07-15 03:25:04'),
(57, 1, 30, '123', '2021-07-15 03:25:04', '2021-07-15 03:25:04'),
(58, 1, 30, '222', '2021-07-15 03:25:25', '2021-07-15 03:25:25'),
(59, 1, 30, '333', '2021-07-15 03:25:31', '2021-07-15 03:25:31'),
(60, 1, 31, 'dfgd', '2021-07-15 04:04:11', '2021-07-15 04:04:11'),
(61, 1, 32, '123', '2021-07-15 05:36:53', '2021-07-15 05:36:53'),
(62, 1, 3, '132', '2021-07-15 06:14:10', '2021-07-15 06:14:10'),
(63, 1, 3, '132', '2021-07-15 06:14:10', '2021-07-15 06:14:10'),
(64, 1, 3, '11', '2021-07-15 06:14:20', '2021-07-15 06:14:20'),
(65, 1, 31, 'cxvcxv', '2021-07-15 06:49:58', '2021-07-15 06:49:58'),
(66, 1, 31, 'cvb', '2021-07-15 06:50:55', '2021-07-15 06:50:55'),
(67, 1, 33, 'xcz', '2021-07-15 06:55:14', '2021-07-15 06:55:14'),
(68, 1, 37, 'nbm', '2021-07-27 04:56:27', '2021-07-27 04:56:27'),
(69, 1, 37, '23', '2021-07-27 04:57:12', '2021-07-27 04:57:12'),
(70, 1, 37, 'hello', '2021-07-27 04:58:46', '2021-07-27 04:58:46'),
(71, 1, 37, '36', '2021-07-27 05:01:47', '2021-07-27 05:01:47'),
(72, 1, 37, 'nice', '2021-07-27 05:05:10', '2021-07-27 05:05:10'),
(73, 1, 34, 'hello', '2021-07-27 05:07:32', '2021-07-27 05:07:32'),
(74, 1, 34, '43', '2021-07-27 05:14:02', '2021-07-27 05:14:02'),
(75, 3, 13, 'Commenting is reserved for people who Valyou this song.', '2021-09-02 03:47:50', '2021-09-02 03:47:50'),
(76, 3, 97, 'test', '2021-09-26 10:29:43', '2021-09-26 10:29:43'),
(77, 13, 97, 'test', '2021-10-03 02:22:46', '2021-10-03 02:22:46'),
(78, 3, 107, 'i love this song', '2021-11-23 16:06:33', '2021-11-23 16:06:33'),
(80, 3, 106, 'Test', '2022-08-24 07:25:19', '2022-08-24 07:25:19'),
(81, 3, 106, 'Chief', '2022-08-24 07:25:29', '2022-08-24 07:25:29'),
(82, 3, 107, 'test', '2022-08-25 08:45:52', '2022-08-25 08:45:52'),
(83, 3, 107, 'Test', '2022-08-26 09:32:36', '2022-08-26 09:32:36'),
(84, 3, 109, 'Test', '2022-10-01 08:18:11', '2022-10-01 08:18:11'),
(85, 3, 109, 'dfd', '2022-10-07 05:04:39', '2022-10-07 05:04:39'),
(88, 3, 111, 'hello', '2022-10-11 19:35:31', '2022-10-11 19:35:31'),
(89, 3, 111, 'test', '2022-10-15 08:30:18', '2022-10-15 08:30:18'),
(91, NULL, NULL, NULL, '2023-02-27 09:09:22', '2023-02-27 09:09:22'),
(92, 3, 111, 'Test Api comment', '2023-02-27 09:10:38', '2023-02-27 09:10:38'),
(93, 3, 111, 'Test Api save comments', '2023-02-27 09:11:15', '2023-02-27 09:11:15'),
(94, 3, 111, 'Test Api save comments', '2023-02-28 01:43:54', '2023-02-28 01:43:54'),
(95, 3, 111, 'Hello local api', '2023-04-05 03:10:12', '2023-04-05 03:10:12');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment_replies`
--

INSERT INTO `comment_replies` (`id`, `comment_id`, `user_id`, `song_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 3, 108, 'f', 0, '2023-03-30 17:57:29', '2023-03-30 22:57:29'),
(5, 8, 3, 111, 'd', 0, '2023-03-30 22:32:10', '2023-03-31 03:32:10'),
(6, 8, 3, 108, 'gffd', 0, '2023-03-30 22:32:37', '2023-03-31 03:32:37'),
(7, 8, 3, 108, '4ttt', 0, '2023-03-30 22:54:28', '2023-03-31 03:54:28'),
(19, 1, 3, 108, 'ss', 0, '2023-03-31 00:36:57', '2023-03-31 05:36:57'),
(38, 13, 3, 111, 'x', 0, '2023-03-31 23:11:02', '2023-04-01 04:11:02'),
(42, 10, 3, 108, 'ss', 0, '2023-03-31 23:25:56', '2023-04-01 04:25:56'),
(49, 18, 3, 111, 'v', 0, '2023-04-01 00:54:30', '2023-04-01 05:54:30'),
(50, 18, 3, 111, 'v', 0, '2023-04-01 01:07:00', '2023-04-01 06:07:00'),
(62, 21, 3, 111, 'd', 0, '2023-04-01 18:02:54', '2023-04-01 23:02:54'),
(88, 29, 3, 108, 'zss34', 0, '2023-04-01 21:47:48', '2023-04-12 06:36:23'),
(101, 29, 3, 108, 'cxfd5744', 0, '2023-04-02 07:05:16', '2023-04-13 08:37:37'),
(102, 35, 3, 111, 'xxx', 0, '2023-04-12 02:11:41', '2023-04-12 07:11:41'),
(103, 29, 3, 108, 'gy', 0, '2023-04-13 18:04:38', '2023-04-13 23:04:38'),
(104, 29, 3, 108, 'dd', 0, '2023-04-13 18:04:42', '2023-04-13 23:04:42'),
(105, 29, 3, 108, 'dds', 0, '2023-04-13 18:04:49', '2023-04-13 23:04:49'),
(106, 42, 3, 108, 'dd65', 0, '2023-04-15 01:10:36', '2023-04-15 06:14:18'),
(107, 42, 3, 108, 'djhh', 0, '2023-04-15 01:14:06', '2023-04-15 06:14:06'),
(108, 29, 3, 108, 'hi5', 0, '2023-04-15 01:28:48', '2023-04-15 06:28:48'),
(109, 29, 3, 108, 'hy77', 0, '2023-04-15 01:35:54', '2023-04-15 06:35:54'),
(110, 29, 3, 108, 'hi8', 0, '2023-04-15 01:37:56', '2023-04-15 06:37:56'),
(111, 42, 3, 108, 'hi ak', 0, '2023-04-15 02:46:34', '2023-04-15 07:46:34'),
(112, 42, 3, 108, 'yesc ak', 0, '2023-04-15 02:46:42', '2023-04-15 07:46:42'),
(113, 42, 3, 108, 'bddr', 0, '2023-04-15 02:46:48', '2023-04-15 07:46:48'),
(114, 42, 3, 108, 'ghh', 0, '2023-04-15 02:46:53', '2023-04-15 07:46:53'),
(115, 42, 3, 108, 'dde', 0, '2023-04-15 02:46:57', '2023-04-15 07:46:57'),
(116, 42, 3, 108, 'dfdf3', 0, '2023-04-15 04:00:41', '2023-04-16 10:56:40'),
(117, 42, 3, 108, 'dd4', 0, '2023-04-15 04:03:16', '2023-04-15 09:03:16'),
(118, 35, 3, 111, 'dds', 0, '2023-04-15 04:10:23', '2023-04-15 09:10:23'),
(119, 34, 3, 111, 'hi', 0, '2023-04-15 04:13:00', '2023-04-15 09:13:00'),
(120, 34, 3, 111, 're', 0, '2023-04-15 04:13:10', '2023-04-15 09:13:10'),
(121, 34, 3, 111, '65', 0, '2023-04-15 04:13:15', '2023-04-15 09:13:15'),
(122, 34, 3, 111, '76', 0, '2023-04-15 04:13:19', '2023-04-15 09:13:19'),
(123, 34, 3, 111, 'tree', 0, '2023-04-15 04:13:24', '2023-04-15 09:13:24'),
(124, 34, 3, 111, 'hi4', 0, '2023-04-15 04:13:28', '2023-04-15 09:13:28'),
(125, 34, 3, 111, 're5', 0, '2023-04-15 04:13:34', '2023-04-15 09:13:34'),
(126, 35, 3, 111, '54843', 0, '2023-04-15 04:13:55', '2023-04-15 09:13:55'),
(127, 35, 3, 111, 'riteritoer', 0, '2023-04-15 04:14:00', '2023-04-15 09:14:00'),
(128, 35, 3, 111, 'e85r89r', 0, '2023-04-15 04:14:03', '2023-04-15 09:14:03'),
(129, 35, 3, 111, 'asdksdj', 0, '2023-04-15 04:14:09', '2023-04-15 09:14:09'),
(130, 35, 3, 111, 'cvbc', 0, '2023-04-15 04:14:14', '2023-04-15 09:14:14'),
(131, 34, 3, 111, 'dsfs', 0, '2023-04-15 04:30:00', '2023-04-15 09:30:00'),
(132, 33, 3, 111, 'zsc6', 0, '2023-04-15 04:32:24', '2023-04-16 12:33:19'),
(133, 43, 3, 111, 'fsdf54', 0, '2023-04-16 05:58:20', '2023-04-16 11:38:46'),
(135, 33, 3, 111, 'c', 0, '2023-04-16 07:33:12', '2023-04-16 12:33:12'),
(136, 49, 3, 111, 'hg', 0, '2023-04-16 08:24:33', '2023-04-16 13:24:33'),
(137, 50, 3, 108, 'vdf', 0, '2023-05-04 02:23:17', '2023-05-04 07:23:17'),
(138, 51, 3, 108, 'c', 0, '2023-05-04 17:39:57', '2023-05-04 22:39:57'),
(139, 53, 3, 111, 'ds', 0, '2023-05-04 17:42:17', '2023-05-04 22:42:17'),
(140, 53, 3, 111, 'xz', 0, '2023-05-04 17:42:23', '2023-05-04 22:42:23'),
(141, 53, 3, 111, 'zc5', 0, '2023-05-04 17:44:00', '2023-05-04 22:44:00'),
(142, 53, 3, 111, 'x', 0, '2023-05-04 17:44:06', '2023-05-04 22:44:06'),
(143, 53, 3, 111, 'xz', 0, '2023-05-04 17:50:19', '2023-05-04 22:50:19'),
(144, 53, 3, 111, 'd', 0, '2023-05-04 17:59:00', '2023-05-04 22:59:00'),
(145, 57, 3, 111, 'ss4', 0, '2023-05-04 18:08:01', '2023-05-04 23:08:01'),
(146, 53, 3, 111, 'xcx', 0, '2023-05-04 18:10:08', '2023-05-04 23:10:08'),
(147, 58, 3, 111, 'x', 0, '2023-05-04 18:15:51', '2023-05-04 23:15:51'),
(149, 55, 29, 111, 'Hello....', 0, '2023-05-29 06:56:49', '2023-05-30 12:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notification_type` int(11) NOT NULL COMMENT '1- Admin sent money 2- Play video 3. Buy Stocks 4. Sell Stocks,5-valyou song',
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `notification_text` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=unread, 1=read',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification_type`, `from_user_id`, `to_user_id`, `artist_id`, `notification_text`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 8, 8, 17, 'John Doe buy your stock', 0, '2021-07-24 12:35:05', '2021-07-24 12:35:05'),
(3, 3, 8, 6, 4, 'John Doe buy your stock', 1, '2021-07-24 12:36:38', '2021-07-29 06:15:20'),
(6, 3, 3, 9, 18, 'Bobby Oparaocha buy your stock', 0, '2021-07-25 01:25:38', '2021-07-25 01:25:38'),
(7, 2, 6, 1, 15, 'priyanka kavaiya pay for playing video', 1, '2021-07-26 07:18:33', '2021-07-26 12:08:54'),
(8, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 1, '2021-07-26 07:21:43', '2021-07-26 12:35:57'),
(9, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 1, '2021-07-26 07:21:58', '2021-07-26 07:21:58'),
(10, 2, 9, 1, 15, 'Mike Tim pay for playing video', 1, '2021-07-26 08:26:28', '2021-07-26 12:34:51'),
(11, 3, 9, 1, 3, 'Mike Tim buy your stock', 1, '2021-07-26 08:27:56', '2021-07-26 12:23:05'),
(12, 3, 3, 3, 5, 'Bobby Oparaocha buy your stock', 1, '2021-07-26 10:36:26', '2021-07-26 22:39:28'),
(13, 5, 1, 1, 3, 'Amrut Ratnani pay for valyou song', 1, '2021-07-26 13:29:15', '2021-07-27 05:27:06'),
(14, 3, 1, 1, 3, 'Amrut Ratnani buy your stock', 0, '2021-07-27 05:30:51', '2021-07-27 05:30:51'),
(15, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 1, '2021-07-27 05:33:41', '2021-07-29 06:15:22'),
(16, 5, 6, 1, 3, 'priyanka kavaiya pay for valyou song', 0, '2021-07-27 05:35:00', '2021-07-27 05:35:00'),
(17, 5, 1, 1, 3, 'Amrut Ratnani pay for valyou song', 0, '2021-07-27 07:19:23', '2021-07-27 07:19:23'),
(18, 2, 1, 1, 4, 'Amrut Ratnani pay for playing video', 0, '2021-07-27 08:30:05', '2021-07-27 08:30:05'),
(19, 2, 1, 1, 3, 'Amrut Ratnani pay for playing video', 0, '2021-07-27 08:39:04', '2021-07-27 08:39:04'),
(20, 2, 1, 1, 4, 'Amrut Ratnani pay for playing video', 0, '2021-07-27 08:47:23', '2021-07-27 08:47:23'),
(21, 2, 1, 3, 5, 'Amrut Ratnani pay for playing video', 0, '2021-07-27 08:49:31', '2021-07-27 08:49:31'),
(22, 5, 1, 3, 5, 'Amrut Ratnani pay for valyou song', 0, '2021-07-27 08:58:34', '2021-07-27 08:58:34'),
(23, 2, 1, 1, 3, 'Amrut Ratnani pay for playing video', 0, '2021-07-27 09:20:17', '2021-07-27 09:20:17'),
(24, 2, 1, 1, 3, 'Amrut Ratnani pay for playing video', 0, '2021-07-27 09:20:59', '2021-07-27 09:20:59'),
(25, 2, 1, 1, 15, 'Amrut Ratnani pay for playing video', 0, '2021-07-27 10:27:26', '2021-07-27 10:27:26'),
(26, 5, 1, 1, 3, 'Amrut Ratnani pay for valyou song', 0, '2021-07-27 10:30:44', '2021-07-27 10:30:44'),
(27, 5, 1, 1, 3, 'Amrut Ratnani pay for valyou song', 0, '2021-07-27 10:32:53', '2021-07-27 10:32:53'),
(28, 5, 1, 1, 3, 'Amrut Ratnani pay for valyou song', 0, '2021-07-27 10:35:25', '2021-07-27 10:35:25'),
(29, 2, 6, 1, 15, 'priyanka kavaiya pay for playing video', 0, '2021-07-27 11:37:09', '2021-07-27 11:37:09'),
(30, 2, 3, 1, 15, 'Bobby Oparaocha pay for playing video', 0, '2021-07-27 17:03:12', '2021-07-27 17:03:12'),
(31, 5, 6, 1, 3, 'priyanka kavaiya pay for valyou song', 0, '2021-07-28 04:44:00', '2021-07-28 04:44:00'),
(32, 5, 6, 1, 3, 'priyanka kavaiya pay for valyou song', 0, '2021-07-28 05:10:43', '2021-07-28 05:10:43'),
(33, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 05:14:36', '2021-07-28 05:14:36'),
(34, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 05:16:36', '2021-07-28 05:16:36'),
(35, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 05:31:04', '2021-07-28 05:31:04'),
(36, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 05:34:31', '2021-07-28 05:34:31'),
(37, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 05:40:02', '2021-07-28 05:40:02'),
(38, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 05:46:45', '2021-07-28 05:46:45'),
(39, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 05:49:31', '2021-07-28 05:49:31'),
(40, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 05:49:50', '2021-07-28 05:49:50'),
(41, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 06:12:38', '2021-07-28 06:12:38'),
(42, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 06:19:19', '2021-07-28 06:19:19'),
(43, 5, 6, 1, 3, 'priyanka kavaiya pay for valyou song', 0, '2021-07-28 06:20:27', '2021-07-28 06:20:27'),
(44, 5, 6, 1, 3, 'priyanka kavaiya pay for valyou song', 0, '2021-07-28 06:21:07', '2021-07-28 06:21:07'),
(45, 5, 6, 1, 3, 'priyanka kavaiya pay for valyou song', 0, '2021-07-28 06:21:51', '2021-07-28 06:21:51'),
(46, 5, 6, 1, 3, 'priyanka kavaiya pay for valyou song', 0, '2021-07-28 06:24:10', '2021-07-28 06:24:10'),
(47, 5, 6, 1, 15, 'priyanka kavaiya pay for valyou song', 0, '2021-07-28 06:24:30', '2021-07-28 06:24:30'),
(48, 5, 1, 1, 4, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 06:25:51', '2021-07-28 06:25:51'),
(49, 5, 6, 1, 3, 'priyanka kavaiya pay for valyou song', 0, '2021-07-28 06:26:42', '2021-07-28 06:26:42'),
(50, 5, 6, 1, 4, 'priyanka kavaiya pay for valyou song', 0, '2021-07-28 06:27:09', '2021-07-28 06:27:09'),
(51, 5, 1, 6, 4, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 06:33:06', '2021-07-28 06:33:06'),
(52, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 06:43:32', '2021-07-28 06:43:32'),
(53, 5, 1, 1, 15, 'Amrut Ratnani pay for valyou song', 0, '2021-07-28 06:44:09', '2021-07-28 06:44:09'),
(54, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 07:10:24', '2021-07-28 07:10:24'),
(55, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:11:24', '2021-07-28 07:11:24'),
(56, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 1, '2021-07-28 07:14:34', '2021-07-29 13:16:28'),
(57, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:15:28', '2021-07-28 07:15:28'),
(58, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:16:21', '2021-07-28 07:16:21'),
(59, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:17:19', '2021-07-28 07:17:19'),
(60, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:18:33', '2021-07-28 07:18:33'),
(61, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:20:12', '2021-07-28 07:20:12'),
(62, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:20:40', '2021-07-28 07:20:40'),
(63, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:26:09', '2021-07-28 07:26:09'),
(64, 3, 6, 1, 3, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:26:56', '2021-07-28 07:26:56'),
(65, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 07:27:19', '2021-07-28 07:27:19'),
(66, 3, 1, 3, 5, 'Amrut Ratnani buy your stock', 0, '2021-07-28 07:28:33', '2021-07-28 07:28:33'),
(67, 3, 6, 4, 10, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:28:50', '2021-07-28 07:28:50'),
(68, 3, 6, 3, 5, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:29:18', '2021-07-28 07:29:18'),
(69, 3, 6, 3, 5, 'priyanka kavaiya buy your stock', 0, '2021-07-28 07:35:36', '2021-07-28 07:35:36'),
(70, 5, 3, 3, 5, 'Bobby Oparaocha pay for valyou song', 0, '2021-07-28 07:49:19', '2021-07-28 07:49:19'),
(71, 3, 6, 3, 5, 'priyanka kavaiya buy your stock', 0, '2021-07-28 08:24:52', '2021-07-28 08:24:52'),
(72, 3, 6, 3, 5, 'priyanka kavaiya buy your stock', 0, '2021-07-28 08:40:05', '2021-07-28 08:40:05'),
(73, 3, 1, 3, 5, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:21:59', '2021-07-28 09:21:59'),
(74, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:26:51', '2021-07-28 09:26:51'),
(75, 3, 1, 3, 5, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:36:33', '2021-07-28 09:36:33'),
(76, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:38:47', '2021-07-28 09:38:47'),
(77, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:42:40', '2021-07-28 09:42:40'),
(78, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:42:54', '2021-07-28 09:42:54'),
(79, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:43:55', '2021-07-28 09:43:55'),
(80, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:45:31', '2021-07-28 09:45:31'),
(81, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:45:37', '2021-07-28 09:45:37'),
(82, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:46:12', '2021-07-28 09:46:12'),
(83, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:46:32', '2021-07-28 09:46:32'),
(84, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:46:58', '2021-07-28 09:46:58'),
(85, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:47:26', '2021-07-28 09:47:26'),
(86, 3, 1, 4, 13, 'Amrut Ratnani buy your stock', 0, '2021-07-28 09:50:51', '2021-07-28 09:50:51'),
(87, 4, 4, 1, 13, 'Amrut Ratnani sell stock', 0, '2021-07-28 10:20:06', '2021-07-28 10:20:06'),
(88, 4, 4, 1, 13, 'Amrut Ratnani sell stock', 0, '2021-07-28 10:20:46', '2021-07-28 10:20:46'),
(89, 4, 4, 1, 13, 'Amrut Ratnani sell stock', 0, '2021-07-28 10:21:06', '2021-07-28 10:21:06'),
(90, 4, 3, 1, 5, 'Amrut Ratnani sell stock', 0, '2021-07-28 10:55:12', '2021-07-28 10:55:12'),
(91, 3, 1, 3, 7, 'Amrut Ratnani buy your stock', 0, '2021-07-28 11:04:40', '2021-07-28 11:04:40'),
(92, 3, 1, 3, 7, 'Amrut Ratnani buy your stock', 0, '2021-07-28 11:13:58', '2021-07-28 11:13:58'),
(93, 3, 1, 3, 7, 'Amrut Ratnani buy your stock', 0, '2021-07-28 11:45:37', '2021-07-28 11:45:37'),
(94, 3, 1, 3, 7, 'Amrut Ratnani buy your stock', 0, '2021-07-28 11:46:41', '2021-07-28 11:46:41'),
(95, 3, 1, 3, 7, 'Amrut Ratnani buy your stock', 0, '2021-07-28 11:49:18', '2021-07-28 11:49:18'),
(96, 3, 1, 3, 7, 'Amrut Ratnani buy your stock', 0, '2021-07-28 11:50:45', '2021-07-28 11:50:45'),
(97, 3, 1, 3, 7, 'Amrut Ratnani buy your stock', 0, '2021-07-28 11:53:30', '2021-07-28 11:53:30'),
(98, 4, 3, 1, 7, 'Amrut Ratnani sell stock', 0, '2021-07-28 11:55:53', '2021-07-28 11:55:53'),
(99, 3, 1, 3, 7, 'Amrut Ratnani buy your stock', 0, '2021-07-28 11:56:38', '2021-07-28 11:56:38'),
(100, 3, 1, 3, 7, 'Amrut Ratnani buy your stock', 0, '2021-07-28 11:56:59', '2021-07-28 11:56:59'),
(101, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 0, '2021-07-28 11:59:08', '2021-07-28 11:59:08'),
(102, 3, 1, 9, 18, 'Amrut Ratnani buy your stock', 0, '2021-07-28 12:25:52', '2021-07-28 12:25:52'),
(103, 3, 1, 9, 18, 'Amrut Ratnani buy your stock', 0, '2021-07-28 12:26:05', '2021-07-28 12:26:05'),
(104, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 0, '2021-07-28 12:27:24', '2021-07-28 12:27:24'),
(105, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 0, '2021-07-28 12:32:08', '2021-07-28 12:32:08'),
(106, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 0, '2021-07-28 12:34:08', '2021-07-28 12:34:08'),
(107, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 0, '2021-07-28 12:37:10', '2021-07-28 12:37:10'),
(108, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 0, '2021-07-28 12:37:33', '2021-07-28 12:37:33'),
(109, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 0, '2021-07-28 12:49:17', '2021-07-28 12:49:17'),
(110, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 0, '2021-07-28 12:50:36', '2021-07-28 12:50:36'),
(111, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 1, '2021-07-28 12:52:36', '2021-07-29 12:58:27'),
(112, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 1, '2021-07-28 13:04:19', '2021-07-29 12:58:26'),
(113, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 1, '2021-07-28 13:04:41', '2021-07-29 12:58:24'),
(114, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 0, '2021-07-28 13:05:40', '2021-07-28 13:05:40'),
(115, 3, 1, 8, 17, 'Amrut Ratnani buy your stock', 0, '2021-07-28 13:06:09', '2021-07-28 13:06:09'),
(116, 4, 8, 1, 17, 'Amrut Ratnani sell stock', 0, '2021-07-28 13:08:12', '2021-07-28 13:08:12'),
(117, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 13:08:44', '2021-07-28 13:08:44'),
(118, 3, 1, 6, 4, 'Amrut Ratnani buy your stock', 0, '2021-07-28 13:08:59', '2021-07-28 13:08:59'),
(119, 3, 1, 6, 4, 'Amrut Ratnani Valyou\'s your song.', 0, '2021-07-29 06:14:04', '2021-07-29 06:14:04'),
(120, 5, 6, 3, 15, 'priyanka kavaiya pay for valyou song', 0, '2021-07-29 06:16:53', '2021-07-29 06:16:53'),
(121, 5, 9, 1, 15, 'Mike Tim pay for valyou song', 0, '2021-07-29 06:22:55', '2021-07-29 06:22:55'),
(122, 2, 1, 9, 18, 'Amrut Ratnani pay for playing video', 0, '2021-07-29 06:26:20', '2021-07-29 06:26:20'),
(123, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-29 06:26:42', '2021-07-29 06:26:42'),
(124, 2, 6, 9, 18, 'priyanka kavaiya pay for playing video', 0, '2021-07-29 06:28:19', '2021-07-29 06:28:19'),
(125, 5, 6, 9, 18, 'priyanka kavaiya pay for valyou song', 0, '2021-07-29 06:28:23', '2021-07-29 06:28:23'),
(126, 5, 6, 9, 18, 'priyanka kavaiya pay for valyou song', 0, '2021-07-29 06:28:58', '2021-07-29 06:28:58'),
(127, 4, 3, 1, 5, 'Amrut Ratnani sell stock', 1, '2021-07-29 07:27:06', '2021-07-30 10:31:10'),
(128, 3, 1, 6, 4, 'Amrut Ratnani Valyou\'s your song.', 0, '2021-07-29 12:01:24', '2021-07-29 12:01:24'),
(129, 3, 6, 3, 5, 'priyanka kavaiya purchased stock in your brand', 0, '2021-07-29 12:04:48', '2021-07-29 12:04:48'),
(130, 5, 6, 9, 18, 'priyanka kavaiya pay for valyou song', 0, '2021-07-30 05:13:49', '2021-07-30 05:13:49'),
(131, 3, 1, 4, 14, 'Amrut Ratnani purchased stock in your brand', 0, '2021-07-30 06:13:00', '2021-07-30 06:13:00'),
(132, 3, 1, 4, 14, 'Amrut Ratnani purchased stock in your brand', 0, '2021-07-30 06:13:30', '2021-07-30 06:13:30'),
(133, 3, 1, 4, 14, 'Amrut Ratnani purchased stock in your brand', 0, '2021-07-30 06:14:07', '2021-07-30 06:14:07'),
(134, 3, 6, 9, 18, 'priyanka kavaiya Valyou\'s your song.', 0, '2021-07-30 07:02:41', '2021-07-30 07:02:41'),
(135, 3, 6, 9, 18, 'priyanka kavaiya Valyou\'s your song.', 0, '2021-07-30 07:06:13', '2021-07-30 07:06:13'),
(136, 3, 6, 9, 18, 'priyanka kavaiya Valyou\'s your song.', 0, '2021-07-30 07:09:45', '2021-07-30 07:09:45'),
(137, 3, 6, 9, 18, 'priyanka kavaiya Valyou\'s your song.', 0, '2021-07-30 07:28:31', '2021-07-30 07:28:31'),
(138, 3, 1, 8, 17, 'Amrut Ratnani Valyou\'s your song.', 0, '2021-07-30 09:41:41', '2021-07-30 09:41:41'),
(139, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 10:33:52', '2021-07-30 10:33:52'),
(140, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 11:02:20', '2021-07-30 11:02:20'),
(141, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 11:08:51', '2021-07-30 11:08:51'),
(142, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 11:09:50', '2021-07-30 11:09:50'),
(143, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 11:10:21', '2021-07-30 11:10:21'),
(144, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 11:11:13', '2021-07-30 11:11:13'),
(145, 2, 3, 9, 18, 'Bobby Oparaocha pay for playing video', 0, '2021-07-30 11:49:28', '2021-07-30 11:49:28'),
(146, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 11:56:57', '2021-07-30 11:56:57'),
(147, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 11:59:46', '2021-07-30 11:59:46'),
(148, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:05:38', '2021-07-30 12:05:38'),
(149, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:06:20', '2021-07-30 12:06:20'),
(150, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:06:52', '2021-07-30 12:06:52'),
(151, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:09:55', '2021-07-30 12:09:55'),
(152, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:28:44', '2021-07-30 12:28:44'),
(153, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:29:27', '2021-07-30 12:29:27'),
(154, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:29:50', '2021-07-30 12:29:50'),
(155, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:31:07', '2021-07-30 12:31:07'),
(156, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:33:00', '2021-07-30 12:33:00'),
(157, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:35:28', '2021-07-30 12:35:28'),
(158, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:41:54', '2021-07-30 12:41:54'),
(159, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:50:22', '2021-07-30 12:50:22'),
(160, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:52:41', '2021-07-30 12:52:41'),
(161, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:55:00', '2021-07-30 12:55:00'),
(162, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 12:55:56', '2021-07-30 12:55:56'),
(163, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 13:20:38', '2021-07-30 13:20:38'),
(164, 5, 1, 9, 18, 'Amrut Ratnani pay for valyou song', 0, '2021-07-30 13:23:52', '2021-07-30 13:23:52'),
(165, 2, 4, 9, 18, 'ALLAN MDEHWA pay for playing video', 0, '2021-07-31 10:26:32', '2021-07-31 10:26:32'),
(166, 3, 4, 3, 5, 'ALLAN MDEHWA purchased stock in your brand', 0, '2021-07-31 10:29:22', '2021-07-31 10:29:22'),
(167, 3, 4, 3, 5, 'ALLAN MDEHWA purchased stock in your brand', 0, '2021-07-31 10:29:25', '2021-07-31 10:29:25'),
(168, 3, 4, 3, 5, 'ALLAN MDEHWA purchased stock in your brand', 0, '2021-07-31 10:29:37', '2021-07-31 10:29:37'),
(169, 2, 4, 1, 15, 'ALLAN MDEHWA pay for playing video', 0, '2021-08-01 13:31:24', '2021-08-01 13:31:24'),
(170, 5, 4, 9, 18, 'ALLAN MDEHWA pay for valyou song', 0, '2021-08-01 13:32:55', '2021-08-01 13:32:55'),
(171, 1, 1, 11, NULL, 'Admin sent you monry', 1, '2021-08-02 07:01:54', '2021-08-02 07:02:53'),
(172, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-02 07:06:05', '2021-08-02 07:06:05'),
(173, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-02 07:06:05', '2021-08-02 07:06:05'),
(174, 3, 11, 3, 5, 'bhargav Dodiya purchased stock in your brand', 0, '2021-08-02 07:09:20', '2021-08-02 07:09:20'),
(175, 3, 11, 1, NULL, 'Fees for buying stock from Ed Sheeran to bhargav Dodiya', 0, '2021-08-02 07:09:20', '2021-08-02 07:09:20'),
(176, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-02 07:10:44', '2021-08-02 07:10:44'),
(177, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-02 07:10:44', '2021-08-02 07:10:44'),
(178, 2, 3, 3, 15, 'Bobby Oparaocha pay for playing video', 0, '2021-08-02 07:14:36', '2021-08-02 07:14:36'),
(179, 3, 3, 4, 9, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-08-02 07:16:24', '2021-08-02 07:16:24'),
(180, 3, 3, 1, NULL, 'Fees for buying stock from Eminem to Bobby Oparaocha', 0, '2021-08-02 07:16:24', '2021-08-02 07:16:24'),
(181, 3, 3, 4, 9, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-08-02 08:33:37', '2021-08-02 08:33:37'),
(182, 3, 3, 1, NULL, 'Fees for buying stock from Eminem to Bobby Oparaocha', 0, '2021-08-02 08:33:37', '2021-08-02 08:33:37'),
(183, 3, 11, 11, 19, 'bhargav Dodiya purchased stock in your brand', 0, '2021-08-02 11:02:09', '2021-08-02 11:02:09'),
(184, 3, 11, 1, NULL, 'Fees for buying stock from Bhargav\'s Music Company to bhargav Dodiya', 0, '2021-08-02 11:02:09', '2021-08-02 11:02:09'),
(185, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-03 05:15:48', '2021-08-03 05:15:48'),
(186, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 05:15:48', '2021-08-03 05:15:48'),
(187, 3, 1, 3, 5, 'Amrut Ratnani purchased stock in your brand', 0, '2021-08-03 06:02:04', '2021-08-03 06:02:04'),
(188, 3, 1, 3, 5, 'Amrut Ratnani purchased stock in your brand', 0, '2021-08-03 06:02:21', '2021-08-03 06:02:21'),
(189, 3, 1, 1, NULL, 'Fees for buying stock from Ed Sheeran to Amrut Ratnani', 0, '2021-08-03 06:02:21', '2021-08-03 06:02:21'),
(190, 3, 1, 3, 5, 'Amrut Ratnani purchased stock in your brand', 0, '2021-08-03 06:19:13', '2021-08-03 06:19:13'),
(191, 3, 1, 1, NULL, 'Fees for buying stock from Ed Sheeran to Amrut Ratnani', 0, '2021-08-03 06:19:13', '2021-08-03 06:19:13'),
(192, 3, 1, 3, 5, 'Amrut Ratnani purchased stock in your brand', 0, '2021-08-03 06:23:03', '2021-08-03 06:23:03'),
(193, 3, 1, 1, NULL, 'Fees for buying stock from Ed Sheeran to Amrut Ratnani', 0, '2021-08-03 06:23:03', '2021-08-03 06:23:03'),
(194, 3, 1, 3, 5, 'Amrut Ratnani purchased stock in your brand', 0, '2021-08-03 06:30:35', '2021-08-03 06:30:35'),
(195, 3, 1, 1, NULL, 'Fees for buying stock from Ed Sheeran to Amrut Ratnani', 0, '2021-08-03 06:30:35', '2021-08-03 06:30:35'),
(196, 3, 1, 3, 5, 'Amrut Ratnani purchased stock in your brand', 0, '2021-08-03 06:30:50', '2021-08-03 06:30:50'),
(197, 3, 1, 1, NULL, 'Fees for buying stock from Ed Sheeran to Amrut Ratnani', 0, '2021-08-03 06:30:50', '2021-08-03 06:30:50'),
(198, 3, 1, 3, 5, 'Amrut Ratnani purchased stock in your brand', 0, '2021-08-03 06:31:05', '2021-08-03 06:31:05'),
(199, 3, 1, 1, NULL, 'Fees for buying stock from Ed Sheeran to Amrut Ratnani', 0, '2021-08-03 06:31:05', '2021-08-03 06:31:05'),
(200, 3, 1, 3, 5, 'Amrut Ratnani purchased stock in your brand', 0, '2021-08-03 06:31:26', '2021-08-03 06:31:26'),
(201, 3, 1, 1, NULL, 'Fees for buying stock from Ed Sheeran to Amrut Ratnani', 0, '2021-08-03 06:31:26', '2021-08-03 06:31:26'),
(202, 3, 1, 3, 5, 'Amrut Ratnani purchased stock in your brand', 0, '2021-08-03 06:31:48', '2021-08-03 06:31:48'),
(203, 3, 1, 1, NULL, 'Fees for buying stock from Ed Sheeran to Amrut Ratnani', 0, '2021-08-03 06:31:48', '2021-08-03 06:31:48'),
(204, 3, 1, 3, 5, 'Amrut Ratnani purchased stock in your brand', 0, '2021-08-03 06:32:02', '2021-08-03 06:32:02'),
(205, 3, 1, 1, NULL, 'Fees for buying stock from Ed Sheeran to Amrut Ratnani', 0, '2021-08-03 06:32:02', '2021-08-03 06:32:02'),
(206, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-03 06:33:06', '2021-08-03 06:33:06'),
(207, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:33:06', '2021-08-03 06:33:06'),
(208, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-03 06:33:13', '2021-08-03 06:33:13'),
(209, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:33:13', '2021-08-03 06:33:13'),
(210, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-03 06:34:27', '2021-08-03 06:34:27'),
(211, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:34:27', '2021-08-03 06:34:27'),
(212, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-03 06:34:36', '2021-08-03 06:34:36'),
(213, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:34:36', '2021-08-03 06:34:36'),
(214, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-03 06:34:54', '2021-08-03 06:34:54'),
(215, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:34:54', '2021-08-03 06:34:54'),
(216, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-03 06:39:05', '2021-08-03 06:39:05'),
(217, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:39:05', '2021-08-03 06:39:05'),
(218, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-03 06:39:29', '2021-08-03 06:39:29'),
(219, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:39:29', '2021-08-03 06:39:29'),
(220, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-03 06:39:46', '2021-08-03 06:39:46'),
(221, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:39:46', '2021-08-03 06:39:46'),
(222, 3, 11, 1, 3, 'bhargav Dodiya Valyou\'s your song.', 0, '2021-08-03 06:42:48', '2021-08-03 06:42:48'),
(223, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:42:48', '2021-08-03 06:42:48'),
(224, 3, 11, 1, 3, 'bhargav Dodiya expressed interest to purchase stock in your brand', 0, '2021-08-03 06:48:18', '2021-08-03 06:48:18'),
(225, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:48:18', '2021-08-03 06:48:18'),
(226, 3, 11, 1, 3, 'bhargav Dodiya expressed interest to purchase stock in your brand', 0, '2021-08-03 06:49:29', '2021-08-03 06:49:29'),
(227, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:49:29', '2021-08-03 06:49:29'),
(228, 3, 11, 1, 3, 'bhargav Dodiya expressed interest to purchase stock in your brand', 0, '2021-08-03 06:52:07', '2021-08-03 06:52:07'),
(229, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:52:07', '2021-08-03 06:52:07'),
(230, 3, 11, 1, 3, 'bhargav Dodiya expressed interest to purchase stock in your brand', 0, '2021-08-03 06:54:22', '2021-08-03 06:54:22'),
(231, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:54:22', '2021-08-03 06:54:22'),
(232, 3, 11, 1, 3, 'bhargav Dodiya expressed interest to purchase stock in your brand', 0, '2021-08-03 06:55:35', '2021-08-03 06:55:35'),
(233, 3, 11, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to bhargav Dodiya', 0, '2021-08-03 06:55:35', '2021-08-03 06:55:35'),
(234, 4, 3, 1, 5, 'Amrut Ratnani sell stock', 0, '2021-08-03 07:17:23', '2021-08-03 07:17:23'),
(235, 4, 3, 1, 5, 'Amrut Ratnani sell stock', 0, '2021-08-03 07:32:27', '2021-08-03 07:32:27'),
(236, 4, 3, 1, 5, 'Amrut Ratnani sell stock', 0, '2021-08-03 07:33:46', '2021-08-03 07:33:46'),
(237, 4, 3, 1, 5, 'Amrut Ratnani sell stock', 0, '2021-08-03 07:34:21', '2021-08-03 07:34:21'),
(238, 4, 3, 1, 5, 'Amrut Ratnani sell stock', 0, '2021-08-03 08:23:51', '2021-08-03 08:23:51'),
(239, 4, 3, 1, 5, 'Amrut Ratnani sell stock', 0, '2021-08-03 08:32:04', '2021-08-03 08:32:04'),
(240, 5, 1, 3, 5, 'Amrut Ratnanipay for valyou song', 0, '2021-08-03 08:56:35', '2021-08-03 08:56:35'),
(241, 1, 1, 11, NULL, 'Admin sent you monry', 0, '2021-08-03 09:16:16', '2021-08-03 09:16:16'),
(242, 1, 1, 11, NULL, 'Admin sent you monry', 0, '2021-08-03 09:16:40', '2021-08-03 09:16:40'),
(243, 1, 1, 11, NULL, 'Admin sent you monry', 0, '2021-08-03 09:17:28', '2021-08-03 09:17:28'),
(244, 5, 1, 9, 18, 'Amrut Ratnanipay for valyou song', 0, '2021-08-03 09:22:40', '2021-08-03 09:22:40'),
(245, 5, 1, 9, 18, 'Amrut Ratnanipay for valyou song', 0, '2021-08-03 09:24:07', '2021-08-03 09:24:07'),
(246, 1, 1, 11, NULL, 'Admin sent you monry', 0, '2021-08-03 09:33:05', '2021-08-03 09:33:05'),
(247, 1, 1, 11, NULL, 'Admin sent you monry', 0, '2021-08-03 09:35:08', '2021-08-03 09:35:08'),
(248, 1, 1, 11, NULL, 'Admin sent you monry', 0, '2021-08-03 09:55:28', '2021-08-03 09:55:28'),
(249, 3, 3, 4, 10, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-08-03 15:35:26', '2021-08-03 15:35:26'),
(250, 3, 3, 1, NULL, 'Fees for buying stock from Billie Eilish to Bobby Oparaocha', 0, '2021-08-03 15:35:26', '2021-08-03 15:35:26'),
(251, 2, 1, 1, 3, 'Amrut Ratnani pay for playing video', 0, '2021-08-04 06:18:07', '2021-08-04 06:18:07'),
(252, 3, 3, 1, 3, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-08-05 09:44:43', '2021-08-05 09:44:43'),
(253, 3, 3, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to Bobby Oparaocha', 0, '2021-08-05 09:44:43', '2021-08-05 09:44:43'),
(254, 3, 3, 1, 3, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-08-05 09:44:49', '2021-08-05 09:44:49'),
(255, 3, 3, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to Bobby Oparaocha', 0, '2021-08-05 09:44:49', '2021-08-05 09:44:49'),
(256, 2, 3, 1, 3, 'Bobby Oparaocha pay for playing video', 0, '2021-08-05 10:46:50', '2021-08-05 10:46:50'),
(257, 5, 3, 1, 3, 'Bobby Oparaochapay for valyou song', 0, '2021-08-05 10:48:38', '2021-08-05 10:48:38'),
(258, 5, 3, 1, 3, 'Bobby Oparaochapay for valyou song', 0, '2021-08-05 10:50:26', '2021-08-05 10:50:26'),
(259, 5, 3, 1, 3, 'Bobby Oparaochapay for valyou song', 0, '2021-08-05 10:50:42', '2021-08-05 10:50:42'),
(260, 5, 3, 1, 3, 'Bobby Oparaochapay for valyou song', 0, '2021-08-05 10:51:03', '2021-08-05 10:51:03'),
(261, 5, 3, 1, 3, 'Bobby Oparaochapay for valyou song', 0, '2021-08-05 10:55:38', '2021-08-05 10:55:38'),
(262, 2, 3, 1, 3, 'Bobby Oparaocha pay for playing video', 0, '2021-08-05 10:57:20', '2021-08-05 10:57:20'),
(263, 2, 3, 1, 3, 'Bobby Oparaocha pay for playing video', 0, '2021-08-05 10:58:42', '2021-08-05 10:58:42'),
(264, 5, 3, 1, 3, 'Bobby Oparaochapay for valyou song', 0, '2021-08-05 10:58:54', '2021-08-05 10:58:54'),
(265, 2, 3, 1, 3, 'Bobby Oparaocha pay for playing video', 0, '2021-08-05 10:59:23', '2021-08-05 10:59:23'),
(266, 2, 1, 1, 3, 'Amrut Ratnani pay for playing video', 0, '2021-08-09 06:34:21', '2021-08-09 06:34:21'),
(267, 5, 1, 1, 3, 'Amrut Ratnanipay for valyou song', 0, '2021-08-09 06:57:13', '2021-08-09 06:57:13'),
(268, 5, 1, 1, 3, 'Amrut Ratnanipay for valyou song', 0, '2021-08-09 09:03:04', '2021-08-09 09:03:04'),
(269, 2, 4, 1, 3, 'ALLAN MDEHWA pay for playing video', 0, '2021-08-13 08:04:15', '2021-08-13 08:04:15'),
(270, 3, 4, 3, 7, 'ALLAN MDEHWA purchased stock in your brand', 0, '2021-08-14 22:19:39', '2021-08-14 22:19:39'),
(271, 3, 4, 1, NULL, 'Fees for buying stock from Drake to ALLAN MDEHWA', 0, '2021-08-14 22:19:39', '2021-08-14 22:19:39'),
(272, 3, 4, 3, 7, 'ALLAN MDEHWA purchased stock in your brand', 0, '2021-08-14 22:19:42', '2021-08-14 22:19:42'),
(273, 3, 4, 1, NULL, 'Fees for buying stock from Drake to ALLAN MDEHWA', 0, '2021-08-14 22:19:42', '2021-08-14 22:19:42'),
(274, 3, 4, 3, 7, 'ALLAN MDEHWA purchased stock in your brand', 0, '2021-08-14 22:19:45', '2021-08-14 22:19:45'),
(275, 3, 4, 1, NULL, 'Fees for buying stock from Drake to ALLAN MDEHWA', 0, '2021-08-14 22:19:45', '2021-08-14 22:19:45'),
(276, 3, 4, 3, 7, 'ALLAN MDEHWA purchased stock in your brand', 0, '2021-08-14 22:19:46', '2021-08-14 22:19:46'),
(277, 3, 4, 1, NULL, 'Fees for buying stock from Drake to ALLAN MDEHWA', 0, '2021-08-14 22:19:46', '2021-08-14 22:19:46'),
(278, 1, 3, 5, NULL, 'Admin sent you monry', 0, '2021-08-19 01:04:45', '2021-08-19 01:04:45'),
(279, 5, 5, 1, 3, 'Harsh Desaipay for valyou song', 0, '2021-08-19 01:05:38', '2021-08-19 01:05:38'),
(280, 5, 5, 1, 3, 'Harsh Desaipay for valyou song', 0, '2021-08-19 01:39:37', '2021-08-19 01:39:37'),
(281, 2, 4, 1, 3, 'ALLAN MDEHWA pay for playing video', 0, '2021-08-21 04:33:40', '2021-08-21 04:33:40'),
(282, 2, 4, 1, 3, 'ALLAN MDEHWA pay for playing video', 0, '2021-08-29 21:48:53', '2021-08-29 21:48:53'),
(283, 5, 4, 1, 3, 'ALLAN MDEHWApay for valyou song', 0, '2021-08-29 21:49:14', '2021-08-29 21:49:14'),
(284, 3, 3, 4, 8, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-09-02 05:00:08', '2021-09-02 05:00:08'),
(285, 3, 3, 1, NULL, 'Fees for buying stock from Justin Bieber to Bobby Oparaocha', 0, '2021-09-02 05:00:08', '2021-09-02 05:00:08'),
(286, 3, 3, 4, 8, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-09-02 05:00:16', '2021-09-02 05:00:16'),
(287, 3, 3, 1, NULL, 'Fees for buying stock from Justin Bieber to Bobby Oparaocha', 0, '2021-09-02 05:00:16', '2021-09-02 05:00:16'),
(288, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-09-02 08:55:06', '2021-09-02 08:55:06'),
(289, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2021-09-02 08:55:06', '2021-09-02 08:55:06'),
(290, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-09-02 08:56:50', '2021-09-02 08:56:50'),
(291, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2021-09-02 08:56:50', '2021-09-02 08:56:50'),
(292, 3, 3, 3, 5, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-09-02 09:03:24', '2021-09-02 09:03:24'),
(293, 3, 3, 1, NULL, 'Fees for buying stock from Ed Sheeran to Bobby Oparaocha', 0, '2021-09-02 09:03:24', '2021-09-02 09:03:24'),
(294, 3, 3, 4, 8, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-09-02 09:23:47', '2021-09-02 09:23:47'),
(295, 3, 3, 1, NULL, 'Fees for buying stock from Justin Bieber to Bobby Oparaocha', 0, '2021-09-02 09:23:47', '2021-09-02 09:23:47'),
(296, 2, 3, 3, 5, 'Bobby Oparaocha pay for playing video', 0, '2021-09-25 11:07:19', '2021-09-25 11:07:19'),
(297, 5, 3, 3, 5, 'Bobby Oparaochapay for valyou song', 0, '2021-09-26 10:28:53', '2021-09-26 10:28:53'),
(298, 5, 3, 3, 5, 'Bobby Oparaochapay for valyou song', 0, '2021-09-26 10:29:24', '2021-09-26 10:29:24'),
(299, 5, 3, 3, 5, 'Bobby Oparaochapay for valyou song', 0, '2021-09-26 10:30:03', '2021-09-26 10:30:03'),
(300, 5, 3, 3, 5, 'Bobby Oparaochapay for valyou song', 0, '2021-09-26 10:30:35', '2021-09-26 10:30:35'),
(301, 5, 3, 3, 5, 'Bobby Oparaochapay for valyou song', 0, '2021-09-26 10:31:35', '2021-09-26 10:31:35'),
(302, 5, 3, 1, 3, 'Bobby Oparaochapay for valyou song', 0, '2021-09-26 10:33:16', '2021-09-26 10:33:16'),
(303, 5, 3, 3, 5, 'Bobby Oparaochapay for valyou song', 0, '2021-10-06 10:53:18', '2021-10-06 10:53:18'),
(304, 2, 3, 1, 3, 'Bobby Oparaocha pay for playing video', 0, '2021-10-07 07:44:22', '2021-10-07 07:44:22'),
(305, 3, 19, 3, 5, 'Roman Massalskiy purchased stock in your brand', 0, '2021-10-23 04:15:10', '2021-10-23 04:15:10'),
(306, 3, 19, 1, NULL, 'Fees for buying stock from Ed Sheeran to Roman Massalskiy', 0, '2021-10-23 04:15:10', '2021-10-23 04:15:10'),
(307, 3, 19, 3, 5, 'Roman Massalskiy purchased stock in your brand', 0, '2021-10-23 04:18:38', '2021-10-23 04:18:38'),
(308, 3, 19, 1, NULL, 'Fees for buying stock from Ed Sheeran to Roman Massalskiy', 0, '2021-10-23 04:18:38', '2021-10-23 04:18:38'),
(309, 3, 19, 3, 5, 'Roman Massalskiy purchased stock in your brand', 0, '2021-10-23 04:18:56', '2021-10-23 04:18:56'),
(310, 3, 19, 1, NULL, 'Fees for buying stock from Ed Sheeran to Roman Massalskiy', 0, '2021-10-23 04:18:56', '2021-10-23 04:18:56'),
(311, 3, 19, 3, 5, 'Roman Massalskiy purchased stock in your brand', 0, '2021-10-23 04:19:17', '2021-10-23 04:19:17'),
(312, 3, 19, 1, NULL, 'Fees for buying stock from Ed Sheeran to Roman Massalskiy', 0, '2021-10-23 04:19:17', '2021-10-23 04:19:17'),
(313, 3, 3, 3, 5, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-10-23 16:05:44', '2021-10-23 16:05:44'),
(314, 3, 3, 1, NULL, 'Fees for buying stock from Ed Sheeran to Bobby Oparaocha', 0, '2021-10-23 16:05:44', '2021-10-23 16:05:44'),
(315, 3, 3, 8, 17, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-10-23 17:24:46', '2021-10-23 17:24:46'),
(316, 3, 3, 1, NULL, 'Fees for buying stock from John Music Company to Bobby Oparaocha', 0, '2021-10-23 17:24:46', '2021-10-23 17:24:46'),
(317, 3, 3, 4, 12, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-10-23 17:40:17', '2021-10-23 17:40:17'),
(318, 3, 3, 1, NULL, 'Fees for buying stock from Taylor Swift to Bobby Oparaocha', 0, '2021-10-23 17:40:17', '2021-10-23 17:40:17'),
(319, 1, 3, 20, NULL, 'Admin sent you monry', 0, '2021-10-23 17:45:55', '2021-10-23 17:45:55'),
(320, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 17:48:11', '2021-10-23 17:48:11'),
(321, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 17:48:11', '2021-10-23 17:48:11'),
(322, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 18:04:12', '2021-10-23 18:04:12'),
(323, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 18:04:12', '2021-10-23 18:04:12'),
(324, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 18:06:59', '2021-10-23 18:06:59'),
(325, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 18:06:59', '2021-10-23 18:06:59'),
(326, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 18:08:15', '2021-10-23 18:08:15'),
(327, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 18:08:15', '2021-10-23 18:08:15'),
(328, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 18:10:46', '2021-10-23 18:10:46'),
(329, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 18:10:46', '2021-10-23 18:10:46'),
(330, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 18:11:04', '2021-10-23 18:11:04'),
(331, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 18:11:04', '2021-10-23 18:11:04'),
(332, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 18:29:32', '2021-10-23 18:29:32'),
(333, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 18:29:32', '2021-10-23 18:29:32'),
(334, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 18:29:50', '2021-10-23 18:29:50'),
(335, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 18:29:50', '2021-10-23 18:29:50'),
(336, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 18:30:22', '2021-10-23 18:30:22'),
(337, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 18:30:22', '2021-10-23 18:30:22'),
(338, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 18:31:32', '2021-10-23 18:31:32'),
(339, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 18:31:32', '2021-10-23 18:31:32'),
(340, 1, 3, 20, NULL, 'Admin sent you monry', 0, '2021-10-23 18:46:49', '2021-10-23 18:46:49'),
(341, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 20:43:14', '2021-10-23 20:43:14'),
(342, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 20:43:14', '2021-10-23 20:43:14'),
(343, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-23 21:18:58', '2021-10-23 21:18:58'),
(344, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-23 21:18:58', '2021-10-23 21:18:58'),
(345, 3, 3, 4, 12, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-10-24 13:20:46', '2021-10-24 13:20:46'),
(346, 3, 3, 1, NULL, 'Fees for buying stock from Taylor Swift to Bobby Oparaocha', 0, '2021-10-24 13:20:46', '2021-10-24 13:20:46'),
(347, 3, 3, 4, 12, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-10-24 13:21:35', '2021-10-24 13:21:35'),
(348, 3, 3, 1, NULL, 'Fees for buying stock from Taylor Swift to Bobby Oparaocha', 0, '2021-10-24 13:21:35', '2021-10-24 13:21:35'),
(349, 3, 3, 4, 12, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-10-24 13:22:31', '2021-10-24 13:22:31'),
(350, 3, 3, 1, NULL, 'Fees for buying stock from Taylor Swift to Bobby Oparaocha', 0, '2021-10-24 13:22:31', '2021-10-24 13:22:31'),
(351, 3, 19, 1, 3, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-24 13:25:36', '2021-10-24 13:25:36'),
(352, 3, 19, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to Roman Massalskiy', 0, '2021-10-24 13:25:36', '2021-10-24 13:25:36'),
(353, 3, 19, 1, 3, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-24 13:27:37', '2021-10-24 13:27:37'),
(354, 3, 19, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to Roman Massalskiy', 0, '2021-10-24 13:27:37', '2021-10-24 13:27:37'),
(355, 3, 19, 1, 3, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-24 13:28:46', '2021-10-24 13:28:46'),
(356, 3, 19, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to Roman Massalskiy', 0, '2021-10-24 13:28:46', '2021-10-24 13:28:46'),
(357, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-24 13:30:53', '2021-10-24 13:30:53'),
(358, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-24 13:30:53', '2021-10-24 13:30:53'),
(359, 3, 3, 4, 12, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-10-24 13:57:15', '2021-10-24 13:57:15'),
(360, 3, 3, 1, NULL, 'Fees for buying stock from Taylor Swift to Bobby Oparaocha', 0, '2021-10-24 13:57:15', '2021-10-24 13:57:15'),
(361, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-24 14:00:48', '2021-10-24 14:00:48'),
(362, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-24 14:00:48', '2021-10-24 14:00:48'),
(363, 3, 19, 4, 12, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-24 14:07:30', '2021-10-24 14:07:30'),
(364, 3, 19, 1, NULL, 'Fees for buying stock from Taylor Swift to Roman Massalskiy', 0, '2021-10-24 14:07:30', '2021-10-24 14:07:30'),
(365, 3, 19, 6, 4, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-24 14:09:49', '2021-10-24 14:09:49'),
(366, 3, 19, 1, NULL, 'Fees for buying stock from music to Roman Massalskiy', 0, '2021-10-24 14:09:49', '2021-10-24 14:09:49'),
(367, 1, 3, 10, NULL, 'Admin sent you monry', 0, '2021-10-24 15:27:49', '2021-10-24 15:27:49'),
(368, 3, 3, 6, 4, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-10-24 16:14:11', '2021-10-24 16:14:11'),
(369, 3, 3, 1, NULL, 'Fees for buying stock from music to Bobby Oparaocha', 0, '2021-10-24 16:14:11', '2021-10-24 16:14:11'),
(370, 2, 19, 1, 3, 'Roman Massalskiy pay for playing video', 0, '2021-10-29 14:42:28', '2021-10-29 14:42:28'),
(371, 2, 3, 3, 5, 'Bobby Oparaocha pay for playing video', 0, '2021-10-29 15:35:15', '2021-10-29 15:35:15'),
(372, 3, 19, 6, 4, 'Roman Massalskiy expressed interest to purchase stock in your brand', 0, '2021-10-31 18:25:10', '2021-10-31 18:25:10'),
(373, 3, 19, 1, NULL, 'Fees for buying stock from music to Roman Massalskiy', 0, '2021-10-31 18:25:10', '2021-10-31 18:25:10'),
(374, 3, 19, 6, 4, 'Roman Massalskiy expressed interest to sell stock in your brand', 0, '2021-10-31 18:26:47', '2021-10-31 18:26:47'),
(375, 3, 19, 1, NULL, 'Fees for buying stock from music to Roman Massalskiy', 0, '2021-10-31 18:26:47', '2021-10-31 18:26:47'),
(376, 3, 19, 6, 4, 'Roman Massalskiy expressed interest to sell stock in your brand', 0, '2021-10-31 18:27:31', '2021-10-31 18:27:31'),
(377, 3, 19, 1, NULL, 'Fees for buying stock from music to Roman Massalskiy', 0, '2021-10-31 18:27:31', '2021-10-31 18:27:31'),
(378, 3, 3, 1, 3, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-11-01 08:43:07', '2021-11-01 08:43:07'),
(379, 3, 3, 1, NULL, 'Fees for buying stock from Amrut\'s Artist to Bobby Oparaocha', 0, '2021-11-01 08:43:07', '2021-11-01 08:43:07'),
(380, 2, 4, 3, 5, 'ALLAN MDEHWA pay for playing video', 0, '2021-11-01 14:55:47', '2021-11-01 14:55:47'),
(381, 2, 3, 3, 5, 'Bobby Oparaocha pay for playing video', 0, '2021-11-01 17:50:37', '2021-11-01 17:50:37'),
(382, 2, 19, 3, 5, 'Roman Massalskiy watched your video for 0.03 cents', 0, '2021-11-02 22:50:21', '2021-11-02 22:50:21'),
(383, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-03 02:02:16', '2021-11-03 02:02:16'),
(384, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-03 19:26:12', '2021-11-03 19:26:12'),
(385, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-03 19:27:17', '2021-11-03 19:27:17'),
(386, 2, 19, 19, 21, 'Roman Massalskiy watched your video for 0.03 cents', 0, '2021-11-03 19:27:42', '2021-11-03 19:27:42'),
(387, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-11-03 19:35:27', '2021-11-03 19:35:27'),
(388, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2021-11-03 19:35:27', '2021-11-03 19:35:27'),
(389, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-03 19:37:08', '2021-11-03 19:37:08'),
(390, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-04 09:18:05', '2021-11-04 09:18:05'),
(391, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-04 09:30:13', '2021-11-04 09:30:13'),
(392, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-04 09:30:27', '2021-11-04 09:30:27'),
(393, 3, 3, 22, 23, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-11-04 19:21:00', '2021-11-04 19:21:00'),
(394, 3, 3, 1, NULL, 'Fees for buying stock from Antonia Kay to Bobby Oparaocha', 0, '2021-11-04 19:21:00', '2021-11-04 19:21:00'),
(395, 3, 3, 22, 23, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-11-04 19:23:56', '2021-11-04 19:23:56'),
(396, 3, 3, 1, NULL, 'Fees for buying stock from Antonia Kay to Bobby Oparaocha', 0, '2021-11-04 19:23:56', '2021-11-04 19:23:56'),
(397, 5, 3, 19, 21, 'Bobby Oparaochapay for valyou song', 0, '2021-11-04 20:02:23', '2021-11-04 20:02:23'),
(398, 3, 3, 22, 23, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-11-05 00:08:09', '2021-11-05 00:08:09'),
(399, 3, 3, 1, NULL, 'Fees for buying stock from Antonia Kay to Bobby Oparaocha', 0, '2021-11-05 00:08:09', '2021-11-05 00:08:09'),
(400, 3, 3, 3, 5, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-11-05 16:04:49', '2021-11-05 16:04:49'),
(401, 3, 3, 1, NULL, 'Fees for buying stock from Ed Sheeran to Bobby Oparaocha', 0, '2021-11-05 16:04:49', '2021-11-05 16:04:49'),
(402, 3, 3, 4, 8, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-11-05 16:05:18', '2021-11-05 16:05:18'),
(403, 3, 3, 1, NULL, 'Fees for buying stock from Justin Bieber to Bobby Oparaocha', 0, '2021-11-05 16:05:18', '2021-11-05 16:05:18'),
(404, 3, 3, 4, 9, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-11-05 16:05:45', '2021-11-05 16:05:45'),
(405, 3, 3, 1, NULL, 'Fees for buying stock from Eminem to Bobby Oparaocha', 0, '2021-11-05 16:05:45', '2021-11-05 16:05:45'),
(406, 3, 3, 4, 10, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-11-05 16:06:15', '2021-11-05 16:06:15'),
(407, 3, 3, 1, NULL, 'Fees for buying stock from Billie Eilish to Bobby Oparaocha', 0, '2021-11-05 16:06:15', '2021-11-05 16:06:15'),
(408, 3, 3, 14, 20, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-11-05 20:54:45', '2021-11-05 20:54:45'),
(409, 3, 3, 1, NULL, 'Fees for buying stock from Stino to Bobby Oparaocha', 0, '2021-11-05 20:54:45', '2021-11-05 20:54:45'),
(410, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-05 21:06:31', '2021-11-05 21:06:31'),
(411, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-06 07:52:15', '2021-11-06 07:52:15'),
(412, 5, 3, 19, 21, 'Bobby Oparaochapay for valyou song', 0, '2021-11-06 07:55:15', '2021-11-06 07:55:15'),
(413, 2, 3, 1, 3, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-06 09:26:16', '2021-11-06 09:26:16'),
(414, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-06 16:26:31', '2021-11-06 16:26:31'),
(415, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-06 16:27:31', '2021-11-06 16:27:31'),
(416, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-11-06 20:59:00', '2021-11-06 20:59:00'),
(417, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2021-11-06 20:59:00', '2021-11-06 20:59:00'),
(418, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-08 00:15:40', '2021-11-08 00:15:40'),
(419, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-08 00:19:24', '2021-11-08 00:19:24'),
(420, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-08 00:20:01', '2021-11-08 00:20:01'),
(421, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-08 17:32:27', '2021-11-08 17:32:27'),
(422, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-08 18:13:23', '2021-11-08 18:13:23'),
(423, 2, 14, 3, 5, 'alaji agostino watched your video for 0.03 cents', 0, '2021-11-08 18:21:41', '2021-11-08 18:21:41'),
(424, 2, 14, 19, 21, 'alaji agostino watched your video for 0.03 cents', 0, '2021-11-08 18:23:07', '2021-11-08 18:23:07'),
(425, 2, 19, 3, 5, 'Roman Massalskiy watched your video for 0.03 cents', 0, '2021-11-08 18:37:54', '2021-11-08 18:37:54'),
(426, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-08 23:20:39', '2021-11-08 23:20:39'),
(427, 2, 3, 1, 3, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-09 00:17:13', '2021-11-09 00:17:13'),
(428, 2, 14, 19, 21, 'alaji agostino watched your video for 0.03 cents', 0, '2021-11-09 07:35:42', '2021-11-09 07:35:42'),
(429, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-10 21:53:58', '2021-11-10 21:53:58'),
(430, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-11 05:14:59', '2021-11-11 05:14:59'),
(431, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-11 05:19:21', '2021-11-11 05:19:21'),
(432, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-11 05:19:34', '2021-11-11 05:19:34'),
(433, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-11 05:19:43', '2021-11-11 05:19:43'),
(434, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-11-11 08:55:46', '2021-11-11 08:55:46'),
(435, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2021-11-11 08:55:46', '2021-11-11 08:55:46'),
(436, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-11 13:26:14', '2021-11-11 13:26:14'),
(437, 3, 3, 4, 9, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-11-11 16:01:10', '2021-11-11 16:01:10'),
(438, 3, 3, 1, NULL, 'Fees for buying stock from Eminem to Bobby Oparaocha', 0, '2021-11-11 16:01:10', '2021-11-11 16:01:10'),
(439, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-11 16:11:12', '2021-11-11 16:11:12'),
(440, 5, 3, 3, 5, 'Bobby Oparaochapay for valyou song', 0, '2021-11-11 16:12:50', '2021-11-11 16:12:50'),
(441, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-12 03:40:39', '2021-11-12 03:40:39');
INSERT INTO `notifications` (`id`, `notification_type`, `from_user_id`, `to_user_id`, `artist_id`, `notification_text`, `status`, `created_at`, `updated_at`) VALUES
(442, 3, 3, 3, 7, 'Bobby Oparaocha sell stock in your brand', 0, '2021-11-13 15:03:59', '2021-11-13 15:03:59'),
(443, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2021-11-13 15:03:59', '2021-11-13 15:03:59'),
(444, 5, 3, 3, 5, 'Bobby Oparaochapay for valyou song', 0, '2021-11-14 14:19:36', '2021-11-14 14:19:36'),
(445, 2, 14, 14, 20, 'alaji agostino watched your video for 0.03 cents', 0, '2021-11-16 01:32:12', '2021-11-16 01:32:12'),
(446, 2, 3, 14, 20, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-16 10:22:36', '2021-11-16 10:22:36'),
(447, 1, 3, 23, NULL, 'Admin sent you monry', 0, '2021-11-16 19:27:53', '2021-11-16 19:27:53'),
(448, 3, 23, 4, 9, 'admin admin purchased stock in your brand', 0, '2021-11-16 19:28:30', '2021-11-16 19:28:30'),
(449, 3, 23, 1, NULL, 'Fees for buying stock from Eminem to admin admin', 0, '2021-11-16 19:28:30', '2021-11-16 19:28:30'),
(450, 5, 23, 14, 20, 'admin adminpay for valyou song', 0, '2021-11-16 19:41:06', '2021-11-16 19:41:06'),
(451, 2, 23, 14, 20, 'admin admin watched your video for 0.03 cents', 0, '2021-11-16 19:55:14', '2021-11-16 19:55:14'),
(452, 3, 3, 3, 7, 'Bobby Oparaocha sell stock in your brand', 0, '2021-11-18 08:17:44', '2021-11-18 08:17:44'),
(453, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2021-11-18 08:17:44', '2021-11-18 08:17:44'),
(454, 3, 3, 3, 7, 'Bobby Oparaocha sell stock in your brand', 0, '2021-11-18 08:18:38', '2021-11-18 08:18:38'),
(455, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2021-11-18 08:18:38', '2021-11-18 08:18:38'),
(456, 2, 3, 14, 20, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-19 12:14:30', '2021-11-19 12:14:30'),
(457, 3, 3, 4, 11, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-11-19 17:58:21', '2021-11-19 17:58:21'),
(458, 3, 3, 1, NULL, 'Fees for buying stock from Rihanna to Bobby Oparaocha', 0, '2021-11-19 17:58:21', '2021-11-19 17:58:21'),
(459, 3, 3, 4, 12, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2021-11-19 17:59:32', '2021-11-19 17:59:32'),
(460, 3, 3, 1, NULL, 'Fees for buying stock from Taylor Swift to Bobby Oparaocha', 0, '2021-11-19 17:59:32', '2021-11-19 17:59:32'),
(461, 3, 3, 4, 13, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-11-19 17:59:54', '2021-11-19 17:59:54'),
(462, 3, 3, 1, NULL, 'Fees for buying stock from Queen (band) to Bobby Oparaocha', 0, '2021-11-19 17:59:54', '2021-11-19 17:59:54'),
(463, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-20 22:08:06', '2021-11-20 22:08:06'),
(464, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-20 22:08:07', '2021-11-20 22:08:07'),
(465, 2, 3, 14, 20, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-21 11:47:42', '2021-11-21 11:47:42'),
(466, 2, 3, 14, 20, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-21 11:48:21', '2021-11-21 11:48:21'),
(467, 2, 19, 19, 21, 'Roman Massalskiy watched your video for 0.03 cents', 0, '2021-11-23 05:09:04', '2021-11-23 05:09:04'),
(468, 2, 19, 19, 21, 'Roman Massalskiy watched your video for 0.03 cents', 0, '2021-11-23 12:30:42', '2021-11-23 12:30:42'),
(469, 3, 3, 3, 5, 'Bobby Oparaocha purchased stock in your brand', 0, '2021-11-23 15:36:01', '2021-11-23 15:36:01'),
(470, 3, 3, 1, NULL, 'Fees for buying stock from Ed Sheeran to Bobby Oparaocha', 0, '2021-11-23 15:36:01', '2021-11-23 15:36:01'),
(471, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-23 15:43:53', '2021-11-23 15:43:53'),
(472, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2021-11-23 15:45:49', '2021-11-23 15:45:49'),
(473, 5, 3, 3, 5, 'Bobby Oparaochapay for valyou song', 0, '2021-11-23 15:59:12', '2021-11-23 15:59:12'),
(474, 3, 3, 3, 7, 'Bobby Oparaocha sell stock in your brand', 0, '2021-11-24 09:58:32', '2021-11-24 09:58:32'),
(475, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2021-11-24 09:58:32', '2021-11-24 09:58:32'),
(476, 3, 3, 3, 7, 'Bobby Oparaocha sell stock in your brand', 0, '2021-11-24 09:58:53', '2021-11-24 09:58:53'),
(477, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2021-11-24 09:58:53', '2021-11-24 09:58:53'),
(478, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-08-15 21:45:20', '2022-08-15 21:45:20'),
(479, 5, 3, 19, 21, 'Bobby Oparaochapay for valyou song', 0, '2022-08-18 19:11:31', '2022-08-18 19:11:31'),
(480, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-08-18 19:11:56', '2022-08-18 19:11:56'),
(481, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-08-18 19:12:23', '2022-08-18 19:12:23'),
(482, 3, 3, 8, 17, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2022-08-25 10:52:28', '2022-08-25 10:52:28'),
(483, 3, 3, 1, NULL, 'Fees for buying stock from John Music Company to Bobby Oparaocha', 0, '2022-08-25 10:52:28', '2022-08-25 10:52:28'),
(484, 3, 3, 9, 18, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2022-08-25 11:33:02', '2022-08-25 11:33:02'),
(485, 3, 3, 1, NULL, 'Fees for buying stock from Gujrati Benx to Bobby Oparaocha', 0, '2022-08-25 11:33:02', '2022-08-25 11:33:02'),
(486, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-08-25 14:49:18', '2022-08-25 14:49:18'),
(487, 3, 3, 8, 17, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2022-08-27 08:00:21', '2022-08-27 08:00:21'),
(488, 3, 3, 1, NULL, 'Fees for buying stock from John Music Company to Bobby Oparaocha', 0, '2022-08-27 08:00:21', '2022-08-27 08:00:21'),
(489, 3, 3, 8, 17, 'Bobby Oparaocha expressed interest to purchase stock in your brand', 0, '2022-08-27 08:00:54', '2022-08-27 08:00:54'),
(490, 3, 3, 1, NULL, 'Fees for buying stock from John Music Company to Bobby Oparaocha', 0, '2022-08-27 08:00:54', '2022-08-27 08:00:54'),
(491, 3, 3, 8, 17, 'Bobby Oparaocha expressed interest to sell stock in your brand', 0, '2022-08-27 08:01:23', '2022-08-27 08:01:23'),
(492, 3, 3, 1, NULL, 'Fees for buying stock from John Music Company to Bobby Oparaocha', 0, '2022-08-27 08:01:23', '2022-08-27 08:01:23'),
(493, 3, 3, 8, 17, 'Bobby Oparaocha expressed interest to sell stock in your brand', 0, '2022-08-27 08:10:11', '2022-08-27 08:10:11'),
(494, 3, 3, 1, NULL, 'Fees for buying stock from John Music Company to Bobby Oparaocha', 0, '2022-08-27 08:10:11', '2022-08-27 08:10:11'),
(495, 2, 3, 14, 20, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-08-27 08:31:20', '2022-08-27 08:31:20'),
(496, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-01 21:02:15', '2022-09-01 21:02:15'),
(497, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-01 21:02:15', '2022-09-01 21:02:15'),
(498, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-01 21:05:08', '2022-09-01 21:05:08'),
(499, 5, 3, 19, 21, 'Bobby Oparaochapay for valyou song', 0, '2022-09-01 21:05:29', '2022-09-01 21:05:29'),
(500, 1, 3, 1, NULL, 'Admin sent you money', 0, '2022-09-01 22:40:03', '2022-09-01 22:40:03'),
(501, 1, 3, 1, NULL, 'Admin sent you money', 0, '2022-09-01 22:40:42', '2022-09-01 22:40:42'),
(502, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-02 19:26:42', '2022-09-02 19:26:42'),
(503, 6, 3, 10, 5, 'Please visit your play list. Ed Sheeran suggest to watch video, you can earn money for VXD 1$', 0, '2022-09-02 19:28:28', '2022-09-02 19:28:28'),
(504, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-02 19:29:13', '2022-09-02 19:29:13'),
(505, 1, 3, 7, NULL, 'Admin sent you money', 0, '2022-09-05 21:58:23', '2022-09-05 21:58:23'),
(506, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-08 05:14:47', '2022-09-08 05:14:47'),
(507, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-08 05:14:57', '2022-09-08 05:14:57'),
(508, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-09 09:21:14', '2022-09-09 09:21:14'),
(509, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-09 09:21:14', '2022-09-09 09:21:14'),
(510, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-09 09:23:38', '2022-09-09 09:23:38'),
(511, 3, 3, 3, 5, 'Bobby Oparaocha sell stock in your brand', 0, '2022-09-10 22:14:44', '2022-09-10 22:14:44'),
(512, 3, 3, 1, NULL, 'Fees for buying stock from Ed Sheeran to Bobby Oparaocha', 0, '2022-09-10 22:14:44', '2022-09-10 22:14:44'),
(513, 3, 3, 3, 5, 'Bobby Oparaocha sell stock in your brand', 0, '2022-09-10 22:18:46', '2022-09-10 22:18:46'),
(514, 3, 3, 1, NULL, 'Fees for buying stock from Ed Sheeran to Bobby Oparaocha', 0, '2022-09-10 22:18:46', '2022-09-10 22:18:46'),
(515, 3, 3, 3, 5, 'Bobby Oparaocha sell stock in your brand', 0, '2022-09-10 22:39:16', '2022-09-10 22:39:16'),
(516, 3, 3, 1, NULL, 'Fees for buying stock from Ed Sheeran to Bobby Oparaocha', 0, '2022-09-10 22:39:16', '2022-09-10 22:39:16'),
(517, 3, 3, 3, 5, 'Bobby Oparaocha sell stock in your brand', 0, '2022-09-10 22:41:32', '2022-09-10 22:41:32'),
(518, 3, 3, 1, NULL, 'Fees for buying stock from Ed Sheeran to Bobby Oparaocha', 0, '2022-09-10 22:41:32', '2022-09-10 22:41:32'),
(519, 3, 3, 3, 5, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-10 22:50:01', '2022-09-10 22:50:01'),
(520, 3, 3, 1, NULL, 'Fees for buying stock from Ed Sheeran to Bobby Oparaocha', 0, '2022-09-10 22:50:01', '2022-09-10 22:50:01'),
(521, 3, 3, 3, 5, 'Bobby Oparaocha sell stock in your brand', 0, '2022-09-10 22:51:50', '2022-09-10 22:51:50'),
(522, 3, 3, 1, NULL, 'Fees for buying stock from Ed Sheeran to Bobby Oparaocha', 0, '2022-09-10 22:51:50', '2022-09-10 22:51:50'),
(523, 3, 3, 3, 5, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-10 22:55:45', '2022-09-10 22:55:45'),
(524, 3, 3, 1, NULL, 'Fees for buying stock from Ed Sheeran to Bobby Oparaocha', 0, '2022-09-10 22:55:45', '2022-09-10 22:55:45'),
(525, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-11 14:32:17', '2022-09-11 14:32:17'),
(526, 6, 3, 26, 5, 'Please visit your play list. Ed Sheeran suggest to watch video, you can earn money for VXD 2$', 0, '2022-09-12 15:11:24', '2022-09-12 15:11:24'),
(527, 2, 3, 19, 21, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 16:32:20', '2022-09-12 16:32:20'),
(528, 2, 3, 14, 20, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 16:33:06', '2022-09-12 16:33:06'),
(529, 2, 3, 14, 20, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 16:34:31', '2022-09-12 16:34:31'),
(530, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 16:41:52', '2022-09-12 16:41:52'),
(531, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 16:42:43', '2022-09-12 16:42:43'),
(532, 2, 3, 3, 5, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 16:43:25', '2022-09-12 16:43:25'),
(533, 1, 3, 26, NULL, 'Admin sent you money', 0, '2022-09-12 16:49:36', '2022-09-12 16:49:36'),
(534, 2, 26, 3, 5, 'baqar butt watched your video for 0.03 cents', 0, '2022-09-12 16:50:13', '2022-09-12 16:50:13'),
(535, 2, 26, 3, 5, 'baqar butt watched your video for 0.03 cents', 0, '2022-09-12 16:51:50', '2022-09-12 16:51:50'),
(536, 2, 26, 3, 5, 'baqar butt watched your video for 0.03 cents', 0, '2022-09-12 16:53:13', '2022-09-12 16:53:13'),
(537, 2, 3, 26, 25, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 17:04:08', '2022-09-12 17:04:08'),
(538, 5, 3, 26, 25, 'Bobby Oparaochapay for valyou song', 0, '2022-09-12 17:23:02', '2022-09-12 17:23:02'),
(539, 6, 26, 3, 25, 'Please visit your play list. Rapper Huzail suggest to watch video, you can earn money for VXD 1$', 0, '2022-09-12 17:34:24', '2022-09-12 17:34:24'),
(540, 6, 26, 3, 25, 'Please visit your play list. Rapper Huzail suggest to watch video, you can earn money for VXD 1$', 0, '2022-09-12 17:35:02', '2022-09-12 17:35:02'),
(541, 6, 3, 26, 5, 'Please visit your play list. Ed Sheeran suggest to watch video, you can earn money for VXD 1$', 0, '2022-09-12 17:59:22', '2022-09-12 17:59:22'),
(542, 2, 3, 26, 25, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 18:54:53', '2022-09-12 18:54:53'),
(543, 5, 3, 26, 25, 'Bobby Oparaochapay for valyou song', 0, '2022-09-12 18:54:55', '2022-09-12 18:54:55'),
(544, 2, 3, 26, 25, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 18:55:23', '2022-09-12 18:55:23'),
(545, 2, 3, 26, 25, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 18:56:03', '2022-09-12 18:56:03'),
(546, 5, 3, 26, 25, 'Bobby Oparaochapay for valyou song', 0, '2022-09-12 18:56:45', '2022-09-12 18:56:45'),
(547, 5, 3, 26, 25, 'Bobby Oparaochapay for valyou song', 0, '2022-09-12 18:58:13', '2022-09-12 18:58:13'),
(548, 5, 3, 26, 25, 'Bobby Oparaochapay for valyou song', 0, '2022-09-12 18:59:08', '2022-09-12 18:59:08'),
(549, 2, 3, 26, 25, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 20:37:51', '2022-09-12 20:37:51'),
(550, 2, 3, 26, 25, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 20:42:31', '2022-09-12 20:42:31'),
(551, 2, 3, 26, 25, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-12 21:00:41', '2022-09-12 21:00:41'),
(552, 2, 26, 26, 25, 'baqar butt watched your video for 0.03 cents', 0, '2022-09-12 21:02:59', '2022-09-12 21:02:59'),
(553, 2, 26, 26, 25, 'baqar butt watched your video for 0.03 cents', 0, '2022-09-12 21:08:13', '2022-09-12 21:08:13'),
(554, 2, 26, 26, 25, 'baqar butt watched your video for 0.03 cents', 0, '2022-09-12 21:31:05', '2022-09-12 21:31:05'),
(555, 2, 26, 26, 25, 'baqar butt watched your video for 0.03 cents', 0, '2022-09-12 21:35:10', '2022-09-12 21:35:10'),
(556, 2, 26, 3, 5, 'baqar butt watched your video for 0.03 cents', 0, '2022-09-12 21:37:20', '2022-09-12 21:37:20'),
(557, 2, 26, 26, 25, 'baqar butt watched your video for 0.03 cents', 0, '2022-09-12 21:38:42', '2022-09-12 21:38:42'),
(558, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-13 14:51:41', '2022-09-13 14:51:41'),
(559, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-13 14:51:41', '2022-09-13 14:51:41'),
(560, 2, 3, 26, 25, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-13 14:53:42', '2022-09-13 14:53:42'),
(561, 2, 26, 26, 25, 'baqar butt watched your video for 0.03 cents', 0, '2022-09-13 15:38:22', '2022-09-13 15:38:22'),
(562, 2, 26, 26, 25, 'baqar butt watched your video for 0.03 cents', 0, '2022-09-13 15:40:48', '2022-09-13 15:40:48'),
(563, 3, 26, 3, 7, 'baqar butt purchased stock in your brand', 0, '2022-09-13 16:14:52', '2022-09-13 16:14:52'),
(564, 3, 26, 1, NULL, 'Fees for buying stock from Drake to baqar butt', 0, '2022-09-13 16:14:52', '2022-09-13 16:14:52'),
(565, 3, 26, 3, 7, 'baqar butt purchased stock in your brand', 0, '2022-09-13 16:44:26', '2022-09-13 16:44:26'),
(566, 3, 26, 1, NULL, 'Fees for buying stock from Drake to baqar butt', 0, '2022-09-13 16:44:26', '2022-09-13 16:44:26'),
(567, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-14 23:31:46', '2022-09-14 23:31:46'),
(568, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-14 23:31:46', '2022-09-14 23:31:46'),
(569, 2, 3, 26, 25, 'Bobby Oparaocha watched your video for 0.03 cents', 0, '2022-09-20 07:34:30', '2022-09-20 07:34:30'),
(570, 5, 3, 3, 5, 'Bobby Oparaochapay for valyou song', 0, '2022-09-20 07:35:25', '2022-09-20 07:35:25'),
(571, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-26 19:02:09', '2022-09-26 19:02:09'),
(572, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-26 19:02:09', '2022-09-26 19:02:09'),
(573, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-26 19:02:25', '2022-09-26 19:02:25'),
(574, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-26 19:02:25', '2022-09-26 19:02:25'),
(575, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-26 19:03:06', '2022-09-26 19:03:06'),
(576, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-26 19:03:06', '2022-09-26 19:03:06'),
(577, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-26 19:03:37', '2022-09-26 19:03:37'),
(578, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-26 19:03:37', '2022-09-26 19:03:37'),
(579, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-26 19:05:57', '2022-09-26 19:05:57'),
(580, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-26 19:05:57', '2022-09-26 19:05:57'),
(581, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-26 19:18:07', '2022-09-26 19:18:07'),
(582, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-26 19:18:07', '2022-09-26 19:18:07'),
(583, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-27 01:02:31', '2022-09-27 01:02:31'),
(584, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-27 01:02:31', '2022-09-27 01:02:31'),
(585, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-27 01:02:31', '2022-09-27 01:02:31'),
(586, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-27 01:02:31', '2022-09-27 01:02:31'),
(587, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-27 01:55:29', '2022-09-27 01:55:29'),
(588, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Bobby Oparaocha', 0, '2022-09-27 01:55:29', '2022-09-27 01:55:29'),
(589, 3, 3, 3, 7, 'Bobby Oparaocha purchased stock in your brand', 0, '2022-09-27 02:01:21', '2022-09-27 02:01:21'),
(715, 2, 28, 26, 25, 'Ahsan khan watched your video for 1 cents', 0, '2023-02-21 07:59:01', '2023-02-21 07:59:01'),
(716, 2, 28, 26, 25, 'Ahsan khan watched your video for 1 cents', 0, '2023-02-21 08:01:21', '2023-02-21 08:01:21'),
(717, 3, 3, 3, 7, 'Valyou X purchased stock in your brand', 0, '2023-02-21 08:31:31', '2023-02-21 08:31:31'),
(718, 3, 3, 1, NULL, 'Fees for buying stock from Drake to Valyou X', 0, '2023-02-21 08:31:31', '2023-02-21 08:31:31'),
(719, 3, 8, 8, 17, 'Hello testing API', 0, '2023-02-23 13:01:57', '2023-02-23 13:01:57'),
(720, 3, 8, 8, 17, 'Hello testing API', 0, '2023-02-27 13:59:28', '2023-02-27 13:59:28'),
(721, 3, 8, 8, 17, 'Hello localhost api', 0, '2023-04-05 07:47:59', '2023-04-05 07:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
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

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01aa330d96b838139cba6d9150a4d1ff87279dbad7d9814978da353b4e07de65d6cdad23b6d759c5', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:37:24', '2023-05-29 03:37:24', '2024-05-29 08:37:24'),
('037d0bb1ed956b7a77792ff082164641f7737488c2b59571f14ec5252ecc221eb794fbe30ac09cb4', 3, 1, 'MyApp', '[]', 0, '2023-02-21 04:12:15', '2023-02-21 04:12:15', '2024-02-21 09:12:15'),
('041613a5596055aafea6cd5cd020e3c36a6df72e110f718cf22c49e4e130601b5701a41d2cb71284', 5, 1, 'MyApp', '[]', 0, '2023-02-13 12:33:18', '2023-02-13 12:33:18', '2024-02-13 17:33:18'),
('04405bd5b65dc9c695ebe34fdf6171a9def7c2c248f11af9730d6549bfcbb56a0c881acbfb741404', 35, 1, 'MyApp', '[]', 0, '2023-04-04 05:40:05', '2023-04-04 05:40:05', '2024-04-04 10:40:05'),
('044c5cdbb6e17c513b89f382c1e88498eb8486cbac6c135dfcfeb86d2363d54830a5acfe4909c359', 29, 3, 'MyApp', '[]', 0, '2023-04-05 01:54:28', '2023-04-05 01:54:28', '2024-04-05 06:54:28'),
('061ef9a8994524d933ab3e9103cae83209d06b12035f894f4abf5faf5c56f0145790dff4474a2613', 29, 3, 'MyApp', '[]', 0, '2023-05-25 08:23:44', '2023-05-25 08:23:44', '2024-05-25 13:23:44'),
('07870f1f91d8362190c0edc1e12fb26920c3d80b9f58412a67e27d88ac0ec7bdeb3a6e3c95558d6d', 29, 1, 'MyApp', '[]', 0, '2023-03-30 02:55:40', '2023-03-30 02:55:40', '2024-03-30 07:55:40'),
('078733a38acb3a8f32b076c8593a91b33c758165b2d8695bf4b0552ac5db9cd99d239d583892c56f', 32, 1, 'MyApp', '[]', 0, '2023-04-04 04:50:52', '2023-04-04 04:50:52', '2024-04-04 09:50:52'),
('09da5b92c4aaa85fc3bcc8d81b74df32670905be7ba761a4cad12381914bb4c5c44559945ff9e1c4', 29, 1, 'MyApp', '[]', 0, '2023-02-21 07:23:17', '2023-02-21 07:23:17', '2024-02-21 12:23:17'),
('0a041557bcf8f362af582cdfe80642f7fd707f4751988d0d67e03d84cf279f055a6939256074030a', 29, 3, 'MyApp', '[]', 1, '2023-05-29 04:01:33', '2023-05-29 04:01:33', '2024-05-29 09:01:33'),
('0a9b92b73f87cd0b9f9d0c8f52e33194cf5d49014133e8cbe1e25a8cca4467d34932ffc2f6241294', 29, 3, 'MyApp', '[]', 0, '2023-04-10 01:22:00', '2023-04-10 01:22:00', '2024-04-10 06:22:00'),
('0b090473b3f26477b70d9516a0cc478ecc9c84167224a2b2172d20f5c80363a251037cdd39cc4ab7', 29, 1, 'MyApp', '[]', 0, '2023-03-30 01:19:28', '2023-03-30 01:19:28', '2024-03-30 06:19:28'),
('0b190855e01b374048c812bf8342723e622ef02ced775d732cb2f9f74e8e7b2205409a635bf69466', 29, 3, 'MyApp', '[]', 1, '2023-05-29 03:59:54', '2023-05-29 03:59:54', '2024-05-29 08:59:54'),
('0ce0e2468969467613cf8bcaf6a2e9cf9af6f5a1bc86b22bbf8a6381da62bb3568dfde2ff4189c2b', 40, 3, 'MyApp', '[]', 0, '2023-05-26 02:35:01', '2023-05-26 02:35:01', '2024-05-26 07:35:01'),
('0cfca1ddfbac05e60669caa362ea5c4fec15d4c60f6d542b4aa7eeffe6ca761ce938ceb58b105f0f', 29, 1, 'MyApp', '[]', 0, '2023-03-30 01:10:07', '2023-03-30 01:10:07', '2024-03-30 06:10:07'),
('115455d9367a28f966a72e404757db80e4d3976fd346026a5ca14b7409337acd04c53b414a8849af', 29, 3, 'MyApp', '[]', 0, '2023-05-25 03:13:28', '2023-05-25 03:13:28', '2024-05-25 08:13:28'),
('14365f5d43d709d8eb47042bdb9da29024411de176e842bf84cbf647cf0126c925ed89341b499b13', 29, 3, 'MyApp', '[]', 0, '2023-04-04 06:40:32', '2023-04-04 06:40:32', '2024-04-04 11:40:32'),
('14ec7eb8f73d717c5abd7de35f517d20ca29aeb56640b2926587f62c9a3c752394e1aa794e5a3652', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:35:17', '2023-05-29 03:35:17', '2024-05-29 08:35:17'),
('184657b597ba8588a9b8b13a2054e26d34def6eb6982cec0ac63add9414f290453eeb392dab54c61', 29, 3, 'MyApp', '[]', 0, '2023-05-29 05:02:29', '2023-05-29 05:02:29', '2024-05-29 10:02:29'),
('198984ee093305398a282fd1f39f7575bde183029e9ff1b143069d3610dc67ef51eaa64495d9409c', 29, 3, 'MyApp', '[]', 0, '2023-05-24 09:04:50', '2023-05-24 09:04:50', '2024-05-24 14:04:50'),
('2219262586ec4fe211341dc7e4326bd33a0210c0e681853af1a66651b545c933eb887c1e5208fbab', 7, 1, 'MyApp', '[]', 0, '2023-02-13 12:33:49', '2023-02-13 12:33:49', '2024-02-13 17:33:49'),
('256101a273a6f4f2fa2b94d8a74bd742cb44ac8d3e402af8b47a548e1f6a854d860e053851c19221', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:43:47', '2023-05-29 03:43:47', '2024-05-29 08:43:47'),
('26c9956f2383f0a2d9ba9269d74386b6fc040e860b01b967a5afbd182f4c479be1dda70f593cdabb', 29, 1, 'MyApp', '[]', 0, '2023-02-21 06:37:37', '2023-02-21 06:37:37', '2024-02-21 11:37:37'),
('2b92d52b9b4c257ccdc60ae4457fa9b258349f6f33cf75c78faa84b605ca757a0e27bcb7ff450260', 29, 1, 'MyApp', '[]', 0, '2023-03-30 02:28:27', '2023-03-30 02:28:27', '2024-03-30 07:28:27'),
('2c10aac0790ddd5dd42ef182df6203971483e984779d1b52f0f3a499c7b1410cec60d22ec6a8b832', 29, 3, 'MyApp', '[]', 0, '2023-05-29 07:29:56', '2023-05-29 07:29:56', '2024-05-29 12:29:56'),
('2c78d4557590feda2dc908d44d49e2d3e0b3d59a75f6e763753df05432918c37444c44ac109c1738', 30, 1, 'MyApp', '[]', 0, '2023-04-04 04:44:06', '2023-04-04 04:44:06', '2024-04-04 09:44:06'),
('2d4c14017ef031ab36edf3e8b8984b61816eae2edd96b3ffb17cd230e16899100f8768fdb510a7e4', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:39:00', '2023-05-29 03:39:00', '2024-05-29 08:39:00'),
('2e6a0935e075e407b74bea196806fca46a76735824aba1d509fb0cac3de6875ac46c08770ee65441', 1, 1, 'MyApp', '[]', 0, '2023-02-13 12:39:52', '2023-02-13 12:39:52', '2024-02-13 17:39:52'),
('2ec6eb9f9b3f75489e4ad9948666a694400e3398ef7a059afbb668becaa489d302d969b06f68dea7', 29, 3, 'MyApp', '[]', 0, '2023-04-06 01:09:22', '2023-04-06 01:09:22', '2024-04-06 06:09:22'),
('32ba7b73a035bb71106ebadc76ef13eacac1cbea7d2ccfb04f45bff803fae992ba08a8dc4b3f9a30', 29, 3, 'MyApp', '[]', 0, '2023-04-06 01:27:28', '2023-04-06 01:27:28', '2024-04-06 06:27:28'),
('358322123a6892d2f2aaa38b9eb43d4d38d6f239bbb7339e3c732cc8e9741884eeb1fdaa4971d3ce', 29, 1, 'MyApp', '[]', 0, '2023-02-22 07:32:35', '2023-02-22 07:32:35', '2024-02-22 12:32:35'),
('398ae4c97f734373869818fbf649d80b1c9427e0cbd93c334683eb4f635034c456e27e5eb6724b8d', 1, 1, 'MyApp', '[]', 0, '2023-02-13 12:38:54', '2023-02-13 12:38:54', '2024-02-13 17:38:54'),
('3cb5a3d36e058ddfcd98c29b2c8bc829786df1ad78bc166af84884220dcd9f54214dcef70decbcaf', 29, 3, 'MyApp', '[]', 0, '2023-05-25 06:05:00', '2023-05-25 06:05:00', '2024-05-25 11:05:00'),
('3e42b68519bc748c66f9ef0a502d0166067ce8ccc3813936910e4e1d0b64b2579a0a1c7180736d2d', 29, 1, 'MyApp', '[]', 0, '2023-02-21 06:41:06', '2023-02-21 06:41:06', '2024-02-21 11:41:06'),
('3e86c62c475d07bbdaaaf048a2b0138791149008edd6d0dc39314113db6c0b011ee971fa19341829', 29, 3, 'MyApp', '[]', 0, '2023-05-29 07:29:01', '2023-05-29 07:29:01', '2024-05-29 12:29:01'),
('3f9e1229d03f080620c4499ad607f9516ccdf713b632f380d99d7e122e31d5b67e989b3655b0ea7a', 37, 3, 'MyApp', '[]', 0, '2023-05-26 07:18:49', '2023-05-26 07:18:49', '2024-05-26 12:18:49'),
('4143a8c208175c14a7cc17657c6ef3a363d3dbdf83a59f0c43de32435eb3288a478f577409ee4937', 29, 3, 'MyApp', '[]', 0, '2023-05-25 05:37:20', '2023-05-25 05:37:20', '2024-05-25 10:37:20'),
('42dddf6a0fbad5409107aacb8e298c3fdebcd6a0feb1114922c16f97d2a6c3b1b1d6c1544ecced27', 29, 1, 'MyApp', '[]', 0, '2023-03-30 02:55:50', '2023-03-30 02:55:50', '2024-03-30 07:55:50'),
('4689eb9282fbb07150c0028c788201c3452383c1145e4037ad9e4e936a17288a6598b58aa3ac2b4c', 29, 1, 'MyApp', '[]', 0, '2023-03-30 03:19:25', '2023-03-30 03:19:25', '2024-03-30 08:19:25'),
('469d87597b00c1528924ff1ee0287d3f76c5c37a23a6a50e0e639d6ebbef50fcd8fc4db479a61478', 29, 1, 'MyApp', '[]', 0, '2023-03-08 02:15:00', '2023-03-08 02:15:00', '2024-03-08 07:15:00'),
('4acd91b1cb9ee9f1f63fb7a645042187b9399a479766d6cf87233ef13500980a602c781ea809bb0d', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:40:59', '2023-05-29 03:40:59', '2024-05-29 08:40:59'),
('4c9d9f6fc63652d62df6918838cc3134b22478d88f2aeaff3d2c0e602aaee5c709749c4c0a82d80c', 29, 1, 'MyApp', '[]', 0, '2023-03-30 03:24:48', '2023-03-30 03:24:48', '2024-03-30 08:24:48'),
('4ef15e5b652b10b4aceb9e9a741637c101fc8bb1a157c3d7a03723950579afc214774f7900bd638b', 4, 1, 'MyApp', '[]', 0, '2023-02-13 12:32:46', '2023-02-13 12:32:46', '2024-02-13 17:32:46'),
('503fa44f655837d57fe152f92afc5329163f782be0686d4be4fc4e05f9d8547ef8e2900859c93018', 29, 3, 'MyApp', '[]', 0, '2023-05-29 04:05:06', '2023-05-29 04:05:06', '2024-05-29 09:05:06'),
('517b5eab09048da8427d1c17b4722c914e248c5da05e3ec91a6cd93bba006af858b27090d9015c83', 29, 3, 'MyApp', '[]', 0, '2023-04-06 01:05:39', '2023-04-06 01:05:39', '2024-04-06 06:05:39'),
('51d0aa71710f1d0d4e0b4b58922e246bae09ca811c46ee5fe2b02794c0ba93058625451a27515ffd', 29, 1, 'MyApp', '[]', 0, '2023-03-30 01:06:25', '2023-03-30 01:06:25', '2024-03-30 06:06:25'),
('547133652fd33706e68dc66da9c4a44858c30f3c7a12378e4e087f531c949d7eccd2c934c77dfe70', 29, 3, 'MyApp', '[]', 0, '2023-05-29 04:05:31', '2023-05-29 04:05:31', '2024-05-29 09:05:31'),
('5685cfdf2e0bf61afb190e89eaae31d69f2563505184305e956d905c78740e84f96159b868e0950e', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:38:21', '2023-05-29 03:38:21', '2024-05-29 08:38:21'),
('5f7dd750d58351ce71bbd71eaab2c5ebd4fce7e6910b6e6bad36d4b5e15a4329d4d7c2e7b45bcb1f', 29, 3, 'MyApp', '[]', 0, '2023-05-29 04:22:08', '2023-05-29 04:22:08', '2024-05-29 09:22:08'),
('60768c6b658f2e56f14c66931a9166639836636e8952d6c1e573bb0f14427af41aa7b8e0592c00bf', 29, 3, 'MyApp', '[]', 0, '2023-05-29 07:23:25', '2023-05-29 07:23:25', '2024-05-29 12:23:25'),
('610b3f2a20c729f29ec838b5d619430c8cad79fc5168ec2b49a5e2604236d093464723810af80dec', 29, 1, 'MyApp', '[]', 0, '2023-03-30 03:26:58', '2023-03-30 03:26:58', '2024-03-30 08:26:58'),
('629f50e241a526a64767f2782336e96d09bce14080fb278404fd107091cc75c773bb2075a9086238', 29, 1, 'MyApp', '[]', 0, '2023-03-30 01:26:27', '2023-03-30 01:26:27', '2024-03-30 06:26:27'),
('6a35a6991eb230fc2d4c987d26cd953cfb26ff894272105d9f3f257d21b0c9a41bebc7d58dd39d10', 29, 1, 'MyApp', '[]', 0, '2023-03-30 02:28:07', '2023-03-30 02:28:07', '2024-03-30 07:28:07'),
('6ea5a62494ab380c1b616a6353d182f3ce42f4054afa0873a4f3e958fe22acbd49c3c4ecf51abe53', 29, 1, 'MyApp', '[]', 0, '2023-03-30 00:48:17', '2023-03-30 00:48:17', '2024-03-30 05:48:17'),
('71951833e013979608a3f96c321611e2f88e1e9707781c8df239a2a911bc996a758d86d5fc381347', 29, 1, 'MyApp', '[]', 0, '2023-04-03 01:09:30', '2023-04-03 01:09:30', '2024-04-03 06:09:30'),
('73d8e9ea98e3b52a943837e7677d63338b94a1033f9230d326c2b9fd6292f1d719d1767b007e8899', 42, 3, 'MyApp', '[]', 0, '2023-05-26 02:37:32', '2023-05-26 02:37:32', '2024-05-26 07:37:32'),
('7520a5f4a64e8854ce82012b716f80a5bf410360d47fe80c8c7508b9df34a86b0f927f1b4ad83f66', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:21:05', '2023-05-29 03:21:05', '2024-05-29 08:21:05'),
('7bb1c8574b8c82d7eb5c9dc79c85cb1e10f94257e86865a642485469bff7193bfbbd3c4ec5bae16a', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:41:33', '2023-05-29 03:41:33', '2024-05-29 08:41:33'),
('8073eeee7b83da4f5115d29e4a525c315a27217b05ec0a3f39dd26dd5947951b809aca29326811e3', 29, 1, 'MyApp', '[]', 0, '2023-03-30 00:20:54', '2023-03-30 00:20:54', '2024-03-30 05:20:54'),
('827f6695a51aa4ba58831ff2cfb8076f39158a1c47d2a5374ab4ddca28389e07ba2b50556c45ff59', 3, 3, 'MyApp', '[]', 0, '2023-05-24 08:46:17', '2023-05-24 08:46:17', '2024-05-24 13:46:17'),
('82a374491dfaca8050605ad478e58b2a1280a3f7d5f79d5f3bfc9ea81c9bef73a5560106170dace4', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:46:03', '2023-05-29 03:46:03', '2024-05-29 08:46:03'),
('8551fa3e31848dc2cd577d7e1d8e9f1a914b9005d34433c308e4d2c9bf540168baaf9ba33eb151c1', 36, 1, 'MyApp', '[]', 0, '2023-04-04 05:40:43', '2023-04-04 05:40:43', '2024-04-04 10:40:43'),
('8821dfca7ad709ab07647957fd6570bf8dea60fc89d0f2821fb94156aa611765a17765bfdb4e4c98', 37, 3, 'MyApp', '[]', 0, '2023-05-29 03:19:12', '2023-05-29 03:19:12', '2024-05-29 08:19:12'),
('8c83acedb7e5c3d810b570bdad0671c161a41f15c2ec4cf9a12678b03e31c2224928bb80f105e0f7', 3, 1, 'MyApp', '[]', 0, '2023-02-21 04:13:39', '2023-02-21 04:13:39', '2024-02-21 09:13:39'),
('8cdb2a3942dee38ff1c8c466c8ab58d2a7d818f85b3f73814a078c2f51b746fc679165453e34c429', 29, 3, 'MyApp', '[]', 0, '2023-04-04 06:45:22', '2023-04-04 06:45:22', '2024-04-04 11:45:22'),
('8f11e2a4559d8daf5ed590f619cfd31017aa5864789cabe0b4e9b8cb1a6c8bace56960c32c4e1f36', 6, 1, 'MyApp', '[]', 0, '2023-02-13 12:33:22', '2023-02-13 12:33:22', '2024-02-13 17:33:22'),
('9113e6e2b920812c62f0157eec995f7a5a6828c4fbfcd19e03d62b2e043422df727c348e811082f6', 33, 1, 'MyApp', '[]', 0, '2023-04-04 04:53:58', '2023-04-04 04:53:58', '2024-04-04 09:53:58'),
('9ae11fa4dbac9386adef4ff6455a603027aec7a70c9095b806226425fdce0665dca0e4a9b76a746e', 29, 1, 'MyApp', '[]', 0, '2023-03-30 02:28:18', '2023-03-30 02:28:18', '2024-03-30 07:28:18'),
('a2b3fc266a4a04dba05ffd2917f5e6083f307101dd4adfdb09b55672e0113cc0f1ff346208f68f1a', 29, 3, 'MyApp', '[]', 0, '2023-04-06 01:23:39', '2023-04-06 01:23:39', '2024-04-06 06:23:39'),
('a73062142e5a0f39dd6d14f5537d3e8cc0b4d3a5dae6cbf90b27374ac00078ef89c45d8e242a8ceb', 29, 1, 'MyApp', '[]', 0, '2023-02-21 08:15:30', '2023-02-21 08:15:30', '2024-02-21 13:15:30'),
('a8b50701c820e219b1ee2e293653fdc39c89f969c5255ff8f54d398358294c313e2a73c1d4c93e89', 29, 1, 'MyApp', '[]', 0, '2023-03-30 01:03:39', '2023-03-30 01:03:39', '2024-03-30 06:03:39'),
('a905a46b1d4cc2c458360b3676c028691aa01f69131bbe439befbd15eb0403f24aabe239b3c45c31', 29, 1, 'MyApp', '[]', 0, '2023-02-21 07:40:19', '2023-02-21 07:40:19', '2024-02-21 12:40:19'),
('accc6758135bfbc177a1a775718d3964d161663a3fd3acb43d805dc6a3e26baf1ddb66835055a421', 29, 1, 'MyApp', '[]', 0, '2023-03-30 02:24:45', '2023-03-30 02:24:45', '2024-03-30 07:24:45'),
('ae93541bb388e9475c186693db8a647713dbba850389c52bbd9e1e4a418223eb53efc9184dbe677a', 29, 3, 'MyApp', '[]', 0, '2023-04-05 06:44:43', '2023-04-05 06:44:43', '2024-04-05 11:44:43'),
('af3a66455bc11f74f09267a7c12467d9bcbe018dac834e6bf74dba0dab286c9b08e149d50a168c54', 29, 3, 'MyApp', '[]', 0, '2023-04-11 02:24:11', '2023-04-11 02:24:11', '2024-04-11 07:24:11'),
('b6b7ea79af3a89d2ef6e1482814064ea157d905f77578e21e01defc9fbffd4d3f4fff1d22980b728', 3, 1, 'MyApp', '[]', 0, '2023-02-21 04:13:47', '2023-02-21 04:13:47', '2024-02-21 09:13:47'),
('b8437b40c40482b53038276c2a34beca0a27dbd845dd97adad247fb47c44655b6a5343a27e23dbbb', 29, 1, 'MyApp', '[]', 0, '2023-03-30 01:22:27', '2023-03-30 01:22:27', '2024-03-30 06:22:27'),
('badfa70df95266682924fd63c1ce4d62c246bffb1b35fb1bb4fb24c14d520d6ee500afa7d2a0aeb2', 37, 3, 'MyApp', '[]', 0, '2023-05-29 03:17:40', '2023-05-29 03:17:40', '2024-05-29 08:17:40'),
('bc7135872f454ec8a7958ff16226874d06231a6d2fff199fa6a5a09b4bc517a51a37c0e91f57041f', 29, 1, 'MyApp', '[]', 0, '2023-02-28 09:05:35', '2023-02-28 09:05:35', '2024-02-28 14:05:35'),
('bf30f3ee005c7ddbc3195eaf0ee5466dbf930aec8284da79acc30cea1076b2580892d76eb857cc9c', 29, 3, 'MyApp', '[]', 0, '2023-04-06 01:23:04', '2023-04-06 01:23:04', '2024-04-06 06:23:04'),
('c31dadb09c5afab49b31eacf389fc839777ac0eefefcefdcacd10fe79a3e3093de95bc2190ff34b8', 37, 3, 'MyApp', '[]', 0, '2023-05-25 03:11:21', '2023-05-25 03:11:21', '2024-05-25 08:11:21'),
('c371d717fb568b25f4a02e2de3c6d410f522ee735af3422e78374a1ad06ca25c9ea73ca618086eb4', 29, 1, 'MyApp', '[]', 0, '2023-03-30 00:48:04', '2023-03-30 00:48:04', '2024-03-30 05:48:04'),
('c470829caa3403611efda2239351eef343b6f003f71ecbbdc35c8c6dff7399f2484d8af4df2bfa3b', 37, 3, 'MyApp', '[]', 0, '2023-04-05 05:27:53', '2023-04-05 05:27:53', '2024-04-05 10:27:53'),
('c57afc8c8ee8557c7fcd5f978725b39105d75656d43ee12ca5037c124bb7e0199399627e91f688b7', 37, 3, 'MyApp', '[]', 0, '2023-05-29 03:17:25', '2023-05-29 03:17:25', '2024-05-29 08:17:25'),
('cabb256013991a68000eb7385ca33c391b7187628f5daafb09bb988e72c8c15e19c6331ef6e1c425', 29, 3, 'MyApp', '[]', 0, '2023-04-06 01:08:28', '2023-04-06 01:08:28', '2024-04-06 06:08:28'),
('cd4f8a5f13049ed441894e3a91e9df2e36b966202c613b81e1f4b44ab09a3956186f116863015395', 31, 1, 'MyApp', '[]', 0, '2023-04-04 04:48:06', '2023-04-04 04:48:06', '2024-04-04 09:48:06'),
('d0fba4f802e5a801f4716065ee9d4aa821394eea4eec695005439cc2ed608cad38b8acc376ce3602', 29, 3, 'MyApp', '[]', 0, '2023-04-05 01:54:11', '2023-04-05 01:54:11', '2024-04-05 06:54:11'),
('d219ace529bc6e17c1f1b632c9bd0857a43f5a26593a827bcacd0040b1aeb38271020a09f75809bc', 29, 1, 'MyApp', '[]', 0, '2023-03-30 03:20:04', '2023-03-30 03:20:04', '2024-03-30 08:20:04'),
('d279c9361512c1a22272e2ff3c872ad704d5bfd61ce3f9f4c41dabf9560269d1c121fcb1a2b35096', 29, 1, 'MyApp', '[]', 0, '2023-02-21 06:48:03', '2023-02-21 06:48:03', '2024-02-21 11:48:03'),
('d32b2ca405da979394ed4efe62670b51bfc8506acc4973c816f00e9899ce5b938cc07a7689a1daea', 29, 3, 'MyApp', '[]', 1, '2023-05-29 03:45:20', '2023-05-29 03:45:20', '2024-05-29 08:45:20'),
('d399e0ee1c011e68ebfd448aa22dae7794d814d40f4bf6fd1043d13c0ad6a51e6d143a624657d2e8', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:40:35', '2023-05-29 03:40:35', '2024-05-29 08:40:35'),
('d543c034d4ffb73169bc7f233fbccdebe981d51ebc7ec7c1e9285160cb0cb218f1f79dc70af1920c', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:36:53', '2023-05-29 03:36:53', '2024-05-29 08:36:53'),
('d655df616cc3026662a1a672b96e324ae7fa02a7a968251ab49cfd162e18fed131e7ae0a62f77b0f', 29, 3, 'MyApp', '[]', 0, '2023-04-05 06:57:26', '2023-04-05 06:57:26', '2024-04-05 11:57:26'),
('d6a83e191a76daf4b4a584a2808582b85270a2c566a584ca9e645152644de280712a591c70481adb', 29, 1, 'MyApp', '[]', 0, '2023-03-30 02:29:11', '2023-03-30 02:29:11', '2024-03-30 07:29:11'),
('d90d328a11f2af99b0ab1904ff17bf47b4d0634ec5018c46c40ad172b5dcb8dc3cf2415d1450224f', 37, 3, 'MyApp', '[]', 0, '2023-05-24 08:30:37', '2023-05-24 08:30:37', '2024-05-24 13:30:37'),
('dc48ae02d9f6785b5d88a3cc8923e5622b55ee08aead8913a3d403f64647a77ac7b305a22018bc97', 29, 3, 'MyApp', '[]', 0, '2023-05-29 03:53:45', '2023-05-29 03:53:45', '2024-05-29 08:53:45'),
('ddb6eab123b636e91bfe76d623f8a3bdd55e7c7912a93e15b623c4d83ac2600cfea9019a4e91d8da', 29, 1, 'MyApp', '[]', 0, '2023-04-03 01:09:12', '2023-04-03 01:09:12', '2024-04-03 06:09:12'),
('de4828f5dc8e10c187590736019160f53857286a6a5e005440fbb6b4c6ee7643d50fc65a93fc1ba6', 29, 1, 'MyApp', '[]', 0, '2023-03-30 01:16:04', '2023-03-30 01:16:04', '2024-03-30 06:16:04'),
('de8bcdd01e039b9367447e39a98b0f11e6f41a6e0446aace23474c05c18314d60a7ee674aad0c835', 34, 1, 'MyApp', '[]', 0, '2023-04-04 05:30:29', '2023-04-04 05:30:29', '2024-04-04 10:30:29'),
('e32820f9954ea88962e54bc8a996f7816ddf68ded88af5fce22e85011a8536f0e7962d6111c927ad', 2, 1, 'MyApp', '[]', 0, '2023-02-13 12:39:07', '2023-02-13 12:39:07', '2024-02-13 17:39:07'),
('e4ea1ec76223a0ef62e93986add103ca3d089286b002d7626ccd1699248ce2713478ce861584c214', 29, 3, 'MyApp', '[]', 0, '2023-05-29 04:03:16', '2023-05-29 04:03:16', '2024-05-29 09:03:16'),
('e4f2bc5acf920b1431c3f13ae57011d75706df960b23c10eb8d8c86580ead1373062afbd0115cebe', 29, 3, 'MyApp', '[]', 1, '2023-05-29 04:05:44', '2023-05-29 04:05:44', '2024-05-29 09:05:44'),
('e6f3bab22a407368e6715e7371c480796b754f4454c9d3e8494f80910bf674d3632216ec2e8e99ef', 1, 1, 'MyApp', '[]', 0, '2023-02-13 12:22:27', '2023-02-13 12:22:27', '2024-02-13 17:22:27'),
('e8947153421a172ca794f00b5dee18e97c879bad89e87af41ac96de784deaf17ddf84900c37ea165', 29, 1, 'MyApp', '[]', 0, '2023-03-30 01:21:36', '2023-03-30 01:21:36', '2024-03-30 06:21:36'),
('e8c56f08230ef8cd7d6fda310e502395a61a1b6b146d39063398fc6b17109e50a01e597e462a91d5', 1, 1, 'MyApp', '[]', 0, '2023-02-13 12:40:26', '2023-02-13 12:40:26', '2024-02-13 17:40:26'),
('e96a2442c35d318ff39bfacba97fb9676ad14fae110e721b2102e9272b99e9ff3a9ec5683642bd57', 29, 1, 'MyApp', '[]', 0, '2023-03-30 01:34:07', '2023-03-30 01:34:07', '2024-03-30 06:34:07'),
('e9c090aaf356ee6dd62092a0b0d62ba23af40f7ab9003b1a6102906e13a88ffa29a0632334c66e21', 29, 1, 'MyApp', '[]', 0, '2023-03-30 04:06:14', '2023-03-30 04:06:14', '2024-03-30 09:06:14'),
('ebfc61300b53e9830c78a0d8680ce748bc11c9dd0b8188ca44595752fdb6d5ab5146c15b3362a2f2', 29, 3, 'MyApp', '[]', 0, '2023-04-06 01:23:29', '2023-04-06 01:23:29', '2024-04-06 06:23:29'),
('ecac2107d5e7199ea19ef5fe60e28df37e7f5d8f0659ea1508b1bf2015130b3320a36a5731e88685', 29, 1, 'MyApp', '[]', 0, '2023-03-30 03:20:18', '2023-03-30 03:20:18', '2024-03-30 08:20:18'),
('eec9eac4b2ca769ab1d82a8e36bcbbdb6492508fe2523ed75d0a1822b8240f77c41fc0b3df3a2b30', 29, 3, 'MyApp', '[]', 0, '2023-05-29 06:42:59', '2023-05-29 06:42:59', '2024-05-29 11:42:59'),
('f54a9cb82a95acbc0d4b7559b986fb3fd42192b0c2047c07e1a70d8a41b5152863e598b9dc4ff9e8', 37, 3, 'MyApp', '[]', 1, '2023-05-29 04:31:35', '2023-05-29 04:31:35', '2024-05-29 09:31:35'),
('f62c39a17de2d30f005b9a56bf1115398e6659df021705dc3af1e9b827b5d449de856839138520d6', 29, 1, 'MyApp', '[]', 0, '2023-03-09 08:18:17', '2023-03-09 08:18:17', '2024-03-09 13:18:17'),
('f764f95f55c4f404440b8562901a7dd0bf7be2899f9b5c1fc8165f51bed5c4588dfe16f7828c7162', 29, 3, 'MyApp', '[]', 1, '2023-05-29 04:19:45', '2023-05-29 04:19:45', '2024-05-29 09:19:45'),
('f77166ac4bba309a821470d586f342dc707b6a3b1ec64b1a7e0bdff558f324945aa96e3e1c94f4fe', 29, 3, 'MyApp', '[]', 1, '2023-05-29 04:30:16', '2023-05-29 04:30:16', '2024-05-29 09:30:16'),
('f9c1fc1eadd8b9a097b724b9befa3f71eb42f76ef52087f5bd0b3b46b012e84879fe0a6314f9e0d4', 37, 3, 'MyApp', '[]', 0, '2023-05-29 04:05:37', '2023-05-29 04:05:37', '2024-05-29 09:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
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
-- Table structure for table `oauth_clients`
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

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'valyoux_api Personal Access Client', 'yye17TLwv0BwcBn5RI1dJrbhiHKaJ5uuK87h7uRM', NULL, 'http://localhost', 1, 0, 0, '2023-02-13 09:33:53', '2023-02-13 09:33:53'),
(2, NULL, 'valyoux_api Password Grant Client', 'N8qbktZggXutHvQNn6oHq8EoNr09KPcbG1vWfL0k', 'users', 'http://localhost', 0, 1, 0, '2023-02-13 09:33:53', '2023-02-13 09:33:53'),
(3, NULL, 'valyoux_api Personal Access Client', '8nt8JbHCWtekwUo3Ex0XhaFVtLzL9ememGS5AfyU', NULL, 'http://localhost', 1, 0, 0, '2023-04-04 06:03:59', '2023-04-04 06:03:59'),
(4, NULL, 'valyoux_api Password Grant Client', '4Uf1WOeprobVSxZ8dFKaeTSWWve7Gtz9EaIamXcZ', 'users', 'http://localhost', 0, 1, 0, '2023-04-04 06:03:59', '2023-04-04 06:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-02-13 09:33:53', '2023-02-13 09:33:53'),
(2, 3, '2023-04-04 06:03:59', '2023-04-04 06:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2020-11-27 02:11:07', '2020-12-18 21:10:16', NULL),
(2, 'Artist', '2020-11-27 02:11:07', '2021-01-02 12:20:42', NULL),
(3, 'Music Fan (Investor)', '2020-12-22 11:51:20', '2021-01-02 12:23:37', NULL),
(4, 'Business', '2020-12-26 23:35:50', '2021-01-02 12:20:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(188, 3, 7),
(292, 3, 8),
(329, 3, 10),
(333, 2, 9),
(340, 3, 6),
(360, 3, 12),
(361, 3, 13),
(444, 2, 11),
(445, 3, 1),
(449, 3, 5),
(457, 3, 12),
(487, 3, 13),
(497, 3, 15),
(503, 3, 16),
(504, 3, 17),
(505, 3, 18),
(508, 3, 20),
(512, 3, 21),
(545, 2, 22),
(587, 2, 4),
(606, 3, 23),
(616, 2, 14),
(627, 2, 19),
(702, 3, 24),
(706, 3, 25),
(866, 3, 26),
(1034, 3, 27),
(1040, 3, 28),
(1091, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `upload_videos`
--

CREATE TABLE `upload_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1-audio,2-video',
  `user_id` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `music_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starcast` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `share` tinyint(4) DEFAULT 0 COMMENT '1-share',
  `copyright` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `earning_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invite_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upload_videos`
--

INSERT INTO `upload_videos` (`id`, `type`, `user_id`, `artist_id`, `name`, `audio_cover_image`, `audio_title`, `singer`, `music_by`, `starcast`, `description`, `video_id`, `share`, `copyright`, `copyright_text`, `earning_user`, `invite_email`, `status`, `created_at`, `updated_at`) VALUES
(103, 2, 3, 5, 'assets/uploads/videos/147967631.mp4', NULL, NULL, NULL, NULL, NULL, 'Edsheeran Guitar X Strings', NULL, 0, 'Yes', '100', NULL, NULL, 1, '2021-11-11 13:25:34', '2021-11-11 13:25:34'),
(104, 2, 14, 20, 'assets/uploads/videos/1622355963.mp4', NULL, NULL, NULL, NULL, NULL, 'Stino - \"Fuck Your Energy\" Ft. Raizodope\'kid', NULL, 0, 'Co-owner', '70', 'RaizoDope\'kid', 'alajibord@gmail.com', 1, '2021-11-16 01:17:50', '2021-11-16 01:17:50'),
(105, 2, 3, 5, 'assets/uploads/videos/1644020841.mp4', NULL, NULL, NULL, NULL, NULL, 'Ed Shereen - Guitar X Strings', NULL, 0, NULL, NULL, NULL, NULL, 1, '2021-11-19 16:48:42', '2021-11-19 16:48:42'),
(106, 1, 3, 5, 'assets/uploads/videos/482697331.mp3', NULL, 'Last Mission', 'ED she', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2021-11-19 19:48:31', '2021-11-19 19:48:31'),
(108, 2, 26, 25, 'assets/uploads/videos/1514264317.mp4', NULL, 'My new song huzail', 'Huzail', 'red', NULL, NULL, NULL, 0, 'Yes', NULL, NULL, NULL, 1, '2022-09-12 17:03:29', '2022-09-12 17:03:29'),
(109, 1, 3, 5, 'assets/uploads/audios/1146832038.mp3', NULL, 'bollywood music', 'mashup', 'test', 'test', NULL, NULL, 0, 'Yes', NULL, NULL, NULL, 1, '2022-09-12 21:53:33', '2022-09-12 21:53:33'),
(110, 2, 3, 5, 'assets/uploads/videos/1029117970.mp4', NULL, 'Song rules', 'Ed Sheeran', 'Kay', NULL, NULL, NULL, 0, 'Yes', NULL, NULL, NULL, 1, '2022-10-08 19:10:34', '2022-10-08 19:10:34'),
(111, 2, 3, 5, 'assets/uploads/videos/2136114743.mp4', NULL, 'Test song', 'Ed sheeranx', 'Kay', 'Ss', NULL, NULL, 0, 'Yes', NULL, NULL, NULL, 1, '2022-10-08 19:14:26', '2022-10-08 19:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_authenticate` tinyint(1) DEFAULT 1,
  `two_factor_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `country`, `phone_number`, `email_verified_at`, `password`, `dob`, `wallet`, `access_token`, `avatar`, `remember_token`, `is_authenticate`, `two_factor_code`, `two_factor_expires_at`, `created_at`, `updated_at`, `is_admin`, `timezone`) VALUES
(1, 'Amrut', 'Ratnani', 'oyeamrut@gmail.com', 'IN', '9824815775', NULL, '$2y$10$c1k//rUMwLM.BKD3g4sSz.Lu3SIWtbiljGBaNejsYJXoHRhLTosE2', '1991-02-18', '6924.73827818', NULL, 'assets/uploads/user/854789885.jpg', NULL, 1, NULL, NULL, '2021-06-25 00:10:55', '2023-02-21 03:31:31', 1, 'Australia/Sydney'),
(3, 'Valyou', 'X', 'bobby.o@valyouxmusic.com', 'US', '0421908569', NULL, '$2y$10$c1k//rUMwLM.BKD3g4sSz.Lu3SIWtbiljGBaNejsYJXoHRhLTosE2', '1987-02-26', '98992.448118364', '9999999410', 'assets/uploads/user/1992130222.png', NULL, 1, NULL, NULL, '2021-06-25 05:12:02', '2023-05-25 08:08:01', 1, 'Australia/Sydney'),
(4, 'ALLAN', 'MDEHWA', 'vamdehwa@yahoo.co.uk', 'AU', '0405185986', NULL, '$2y$10$wKh7.MQ/ayBEmXkyns7IwOuJHINbgC4BCI6a94RuJgSmKgcfXWbk2', '1975-06-10', '100106.4944', NULL, 'assets/uploads/user/1992130222.png', NULL, 1, NULL, NULL, '2021-06-25 08:21:41', '2021-11-19 17:59:54', 0, ''),
(5, 'Harsh', 'Desai', 'valyouxd@gmail.com', 'US', '18125685474', NULL, '$2y$10$mnpqpwXK7oJ5M8Um5Pcn4eeG4zASeLfaZP8YdC6ASoD78nSzT31yi', '1996-09-10', '', NULL, 'assets/uploads/user/25876836.png', NULL, 1, NULL, NULL, '2021-06-29 19:28:18', '2021-10-23 16:05:44', 0, ''),
(6, 'priyanka', 'kavaiya', 'priyanka@lembits.com', 'IN', '+911234567891', NULL, '$2y$10$Ja.5wXe9cGlrVBMfxgfPpebqwpDNOI2ift1c9ooIeDZwjCa2JtlTy', '1994-12-01', '1.63', NULL, 'assets/uploads/user/1575468486.jpg', NULL, 1, NULL, NULL, '2021-07-05 04:12:23', '2021-10-31 18:27:31', 0, ''),
(7, 'Bongani', 'Ntini', 'ntinibongani7@gmail.com', 'ZA', '0612125640', NULL, '$2y$10$s6e2Ffp0RdRDmwRpFQYvgew8ob4XA.5ejdH4/nQ3omIwv7gl8GW9u', '1992-03-13', '10', NULL, 'assets/uploads/user/1048253232.jpg', NULL, 1, NULL, NULL, '2021-07-12 11:49:16', '2022-09-05 21:58:23', 0, ''),
(8, 'John', 'Doe', 'john@doe.com', NULL, '1234567890', NULL, '$2y$10$.Q.j6pejN8j6uKFtgXySwOCOtxdPTwwuX/PVnN8Q28Z6M8h6i2Hxe', '1991-08-18', '2.9882', NULL, 'assets/uploads/user/322067509.jpg', NULL, 1, NULL, NULL, '2021-07-24 01:40:45', '2022-08-27 08:10:11', 0, ''),
(9, 'Mike', 'Tim', 'mike@tim.com', 'US', '789456120', NULL, '$2y$10$QZqFnzuX5UZmrcxc6tjQz.L8ipneTf.xwjidEuAWsreVqaXCQsptO', '1991-08-18', '0.9999', NULL, 'assets/uploads/user/1182249971.jpg', NULL, 1, NULL, NULL, '2021-07-24 04:04:25', '2022-08-25 11:33:02', 0, ''),
(10, 'Nneji', 'Oparaocha', 'nnejioparaocha@gmail.com', 'CA', '5193317598', NULL, '$2y$10$PP3z0MCNjb4hii6uUjeRbOOoXZYRAg4nK7RFfjiMfJ1h3qw6zj/EO', '1989-03-02', '', NULL, 'assets/uploads/user/1588029527.jpg', NULL, 1, NULL, NULL, '2021-07-28 20:17:40', '2021-10-24 15:27:49', 0, ''),
(11, 'bhargav', 'Dodiya', 'bhargav@lembits.com', 'IN', '1234567890', NULL, '$2y$10$RFp7XxgzuZCrQWApr83bsuK1P1Rc873jK5Oq9WLevbPPQdi7/N8Oy', '1991-05-18', '', NULL, 'assets/uploads/user/1708502489.jpg', NULL, 1, NULL, NULL, '2021-08-02 01:22:19', '2021-08-09 00:58:39', 0, ''),
(12, 'Atif', 'Khan', 'kashi861@gmail.com', 'PK', '033289451245', NULL, '$2y$10$WoSZgnqHS8t3407wMKrd8eckaiXZawwjH1ZwzF/4D/QhTun2o1cIK', '1985-08-20', '', NULL, 'assets/uploads/user/1006870548.jpg', NULL, 1, NULL, NULL, '2021-09-25 12:48:43', '2021-10-24 14:07:30', 0, ''),
(13, 'Zain', 'Raheel', 'zainraheel114@gmail.com', 'PK', '92-300-420-5990', NULL, '$2y$10$ihLbipXT0rA54/SWnZPWaeFNsdy1GCN4UpGi0Pii7wJqUFrK4PR3K', '1996-03-18', '', NULL, 'assets/uploads/user/1526577937.jpg', NULL, 1, NULL, NULL, '2021-09-29 06:46:31', '2021-09-29 06:46:31', 0, ''),
(14, 'alaji', 'agostino', 'alajibord@gmail.com', 'AU', '+61411361127', NULL, '$2y$10$Hdi0/8JIV1y8nZB8HbblaeNxkluUXm1bnMiElbGXufBQQlZBG4m.e', '1998-07-18', '125.528', NULL, 'assets/uploads/user/1440131042.jpeg', NULL, 1, NULL, NULL, '2021-09-30 02:29:06', '2022-09-12 16:34:31', 0, ''),
(15, 'Harsh', 'Desai', 'harsh@valyouxchange.com', 'US', '911', NULL, '$2y$10$GrEmxqJ.ee1HoK1JMzu3ruXgp05lsD1v1IU1n3/1wHRvBMKIb5RdS', '1996-01-01', '', NULL, 'assets/uploads/user/642097587.png', NULL, 1, NULL, NULL, '2021-10-06 00:24:51', '2021-10-06 00:24:51', 0, ''),
(16, 'fizzy', 'maliq', 'afeeztajudeen397@gmail.com', 'NG', '3414064904', NULL, '$2y$10$hAiU5LNTAO8avSlAkBTC4O0c6VdBVmdrFowYff/8TO3bXFfSpz38m', '1997-06-11', '', NULL, 'assets/uploads/user/95921474.png', NULL, 1, NULL, NULL, '2021-10-10 18:22:37', '2021-10-10 18:22:37', 0, ''),
(17, 'abdulrasheed', 'issa', 'abdulrasheedissa80@gmail.com', NULL, '234665467', NULL, '$2y$10$GUKIe1Xb6zS5s0c26oQq9e4F2BQozsgJHga0jQVKP9w1he5WfAw/y', '1999-05-05', '', '500', 'assets/uploads/user/1337907670.jfif', NULL, 1, NULL, NULL, '2021-10-11 06:39:24', '2023-02-09 19:26:38', 0, ''),
(18, 'handel', 'france', 'freelancehandel@gmail.com', 'NG', '08149134030', NULL, '$2y$10$lTo.ChEe7wGs.PTKjByVSuVWNRMaWMSOErytGWFitvIx2HdsviCR2', '2000-02-24', '', NULL, 'assets/uploads/user/1377502870.PNG', NULL, 1, NULL, NULL, '2021-10-11 20:56:19', '2021-10-11 20:56:19', 0, ''),
(19, 'Roman', 'Massalskiy', 'sun.mount.1991@gmail.com', 'RU', '123456789', NULL, '$2y$10$rjQbUdJklZjaudDw1NhX1ucLoEfXSVV2ZhtkDIim0byKLYNG3eToq', '1991-05-12', '9991.0225', NULL, 'assets/uploads/user/866549667.jpeg', NULL, 1, NULL, NULL, '2021-10-14 23:45:45', '2022-10-08 01:12:02', 0, 'Europe/Moscow'),
(21, 'vicky', 'khan', 'vickysingh2341@gmail.com', 'IN', '9696692341', NULL, '$2y$10$qRHJaURCBDPeUSf.bIPEguqA8VWg1VFKoPR4JPLoDSk7GIYkzaYwq', '1988-10-12', '', NULL, 'assets/uploads/user/656210833.jpg', NULL, 1, NULL, NULL, '2021-10-18 22:19:34', '2021-10-18 22:19:34', 0, 'Asia/Kolkata'),
(22, 'Antonia', 'Kay', 'peaceofkay@gmail.com', 'AU', '0403875076', NULL, '$2y$10$mhr8dy166SBvsq2yvzdf8eRCfHr.Agbv1ydyFbqjmPPL4IplFsCa6', '1993-09-11', '-3893.3503', NULL, 'assets/uploads/user/1365957059.JPG', NULL, 1, NULL, NULL, '2021-11-04 18:08:43', '2021-11-05 00:08:09', 0, '0'),
(23, 'admin', 'admin', 'admin@admin.com', 'PK', '+9290078601', NULL, '$2y$10$ThXM2YYpAAGcs.jXalklluQpuHa2brfqxq5Sv1ZTjBreEbMSGD3ae', '1996-11-10', '7.90049601', NULL, 'assets/uploads/user/1540493487.jpeg', NULL, 1, NULL, NULL, '2021-11-13 15:17:11', '2021-11-16 19:55:14', 0, 'Europe/London'),
(24, 'aditya', 'kumar', 'adiguptauiux@gmail.com', 'IN', '07011547357', NULL, '$2y$10$eX8WJIWCftM9f2Vy1OOf5.JKcL71O3hFouB7lHLYAOxouVBknn2pC', '1996-05-16', NULL, NULL, 'assets/uploads/user/378333352.png', NULL, 1, NULL, NULL, '2022-09-03 18:30:54', '2022-09-03 18:30:54', 0, 'Europe/London'),
(25, 'Zoe', 'Walstein', 'nhryndihc@zeroe.ml', 'US', '5152012131', NULL, '$2y$10$0yMoMg4CVRFfzkSw74nnvu6tkZxn1u0ymtl5I6xlDSkJurzSiHwsO', '1997-06-20', NULL, NULL, 'assets/uploads/user/1297268840.png', NULL, 1, NULL, NULL, '2022-09-06 15:11:52', '2022-09-06 15:11:52', 0, 'Europe/London'),
(26, 'baqar', 'butt', 'baqarcit@gmail.com', 'PK', '03214518770', NULL, '$2y$10$LHkyypQsdaIMP7LF.jH2fuLxafUGbg31XhXYQeiGxl21G4JFzg.YK', '1994-01-05', '99.5814', NULL, 'assets/uploads/user/803202260.png', NULL, 1, NULL, NULL, '2022-09-07 19:14:44', '2023-02-20 22:03:59', 0, 'Europe/London'),
(27, 'ismail', 'khan', 'ismailkhan358391@gmail.com', 'BR', '033388776665', NULL, '$2y$10$LtycL0LPrGehOID2i2sdEuOeVBVPmEBwSUIuszVXV.UMpOcZxoXsm', '1988-11-20', NULL, NULL, 'assets/uploads/user/738316105.png', NULL, 1, NULL, NULL, '2022-10-13 16:06:25', '2022-10-13 16:06:25', 0, 'Europe/London'),
(28, 'Ahsan', 'khan', 'ahsaankhan758@gmail.com', 'PK', '23894238942394', NULL, '$2y$10$c1k//rUMwLM.BKD3g4sSz.Lu3SIWtbiljGBaNejsYJXoHRhLTosE2', '1995-09-09', '45.361', '100', 'assets/uploads/user/1404287173.jpg', NULL, 1, NULL, NULL, '2022-11-09 20:14:39', '2023-02-21 03:01:21', 0, 'Europe/London'),
(29, 'Salman', 'Farooq', 'salmanfarooq9282@gmail.com', NULL, '102983838373', NULL, '$2y$10$L3fmfAu0MQjkPpRTgF7Zdu4o/bBU9QO06ZhFhrVT22x57gsnn80uG', NULL, NULL, '0', 'assets/uploads/user/1404287173.jpg', NULL, 1, NULL, NULL, '2023-02-21 06:37:37', '2023-05-29 05:03:42', 0, NULL),
(30, 'Ahsan', 'khan', 'ahsankhan123@gmail.com', NULL, '112233445566', NULL, '$2y$10$Bjz4uYsYF/bTu9nUxNCMtuW33LlgtvIgBYQJAzECHj0KkKaqnWDYK', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-04-04 04:44:04', '2023-04-04 04:44:04', 0, NULL),
(31, 'Ahsan', 'khan', 'ahsankhan124@gmail.com', NULL, '112233445566', NULL, '$2y$10$VpSnaqWlZ/PSYEVKkLY0MOoLlHNxGEAVSiqfsPqacXvZr/2cozdwy', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-04-04 04:48:06', '2023-04-04 04:48:06', 0, NULL),
(32, 'Ahsan', 'khan', 'ahsankhan12@gmail.com', NULL, '112233445566', NULL, '$2y$10$ybqmhb5b.4e1ZmtZ.tGiHeJek37/2gac.Lz7hQzlfvfzviaxy5dwW', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-04-04 04:50:52', '2023-04-04 04:50:52', 0, NULL),
(33, 'Ahsan', 'khan', 'ahsankhan11@gmail.com', NULL, '112233445566', NULL, '$2y$10$p5mJO8FSSvQj/A3C3Z/KJ.sK2.mLFnu..n6zpm.e0/pbvLlweV/M2', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-04-04 04:53:58', '2023-04-04 04:53:58', 0, NULL),
(34, 'Ahsan', 'khan', 'ahsankhan10@gmail.com', 'UK', '112233445566', NULL, '$2y$10$GA42yc7Ggg50HGfOkpxiqe3eA7OiYvKzR4U9D4Fv.t9Dm792xbf4.', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-04-04 05:30:29', '2023-04-04 05:30:29', 0, NULL),
(35, 'Ahsan', 'khan', 'ahsankhan9@gmail.com', 'UK', '112233445566', NULL, '$2y$10$PKyEfvWBbHeuxrVht73qHeY/fVdCvuoxJfa5jeFSNxs7Mf3s5/ibe', NULL, NULL, NULL, 'uploads/images/145603516_540999930804818_2597481747650306434_n.jpg', NULL, 1, NULL, NULL, '2023-04-04 05:40:05', '2023-04-04 05:40:05', 0, NULL),
(36, 'Ahsan', 'khan', 'ahsankhan6@gmail.com', 'UK', '112233445566', NULL, '$2y$10$95qhRFtc0O9DVuji0zOET.PHwB9PJsV7Byd2BB7tWBsZ.0ta2b3r6', NULL, NULL, NULL, 'uploads/images/145603516_540999930804818_2597481747650306434_n.jpg', NULL, 1, NULL, NULL, '2023-04-04 05:40:43', '2023-04-04 05:40:43', 0, NULL),
(37, 'Salman', 'Farooq', 'salmanfarooq92@gmail.com', 'UK', '1234567890', NULL, '$2y$10$OEKanDaVgrzcQkS2aGYcfejQUJObcVZYT8YGGKVTBraxQEHhJSG7O', NULL, NULL, '80', 'uploads/images/photography-product-download.jpg', NULL, 1, NULL, NULL, '2023-04-05 05:27:53', '2023-05-29 05:03:42', 0, NULL),
(38, 'Salman', 'Farooq', 'salmanfarooq96@gmail.com', 'UK', '1234567890', NULL, '$2y$10$ADc22B39O8tuoi.BRb1gKOgDJunuQruLGgV0F2GNSykdrP0Bs7JxO', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-05-26 02:31:54', '2023-05-26 02:31:54', 0, NULL),
(39, 'Salman', 'Farooq', 'salmanfarooq996@gmail.com', 'UK', '1234567890', NULL, '$2y$10$3T.FZRMcC6X0a.5/aK2Yj.1wlAgk5Can99zTci9ET3d4jrD6v3qjG', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-05-26 02:32:53', '2023-05-26 02:32:53', 0, NULL),
(40, 'Salman', 'Farooq', 'farhan10@gmail.com', 'UK', '1234567890', NULL, '$2y$10$.4TYwIwN3uUgwUbJAMv4IO/Hh3ddbn7O7WqtHjIt6IDdfIR9aevW6', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-05-26 02:35:00', '2023-05-26 02:35:00', 0, NULL),
(41, 'Salman', 'Farooq', 'farhan12@gmail.com', 'UK', '1234567890', NULL, '$2y$10$UlfAHfr13UX4QbzMLYXqmeMpRv347xAFBbLqGWIgk07xGcSgqYIKG', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-05-26 02:36:07', '2023-05-26 02:36:07', 0, NULL),
(42, 'Salman', 'Farooq', 'farhan122@gmail.com', 'UK', '1234567890', NULL, '$2y$10$cqdHDTSrJpxEKUb9Whg2auFfTa1c0dUyq34Hc47Dv1NVJDT/dyY1W', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-05-26 02:37:32', '2023-05-26 02:37:32', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_tokens`
--

CREATE TABLE `user_access_tokens` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `access_tokens` varchar(255) DEFAULT NULL,
  `access_tokens_current_value` varchar(255) DEFAULT NULL,
  `access_tokens_burnt` varchar(255) DEFAULT NULL,
  `access_token_remaining` varchar(255) DEFAULT NULL,
  `access_tokens_required` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_tokens`
--

INSERT INTO `user_access_tokens` (`id`, `from_user_id`, `to_user_id`, `access_tokens`, `access_tokens_current_value`, `access_tokens_burnt`, `access_token_remaining`, `access_tokens_required`, `desc`, `created_at`, `updated_at`) VALUES
(1, 3, 28, '500', '50', NULL, '9999999500', NULL, '0', '2023-02-09 18:56:09', '2023-02-09 23:56:09'),
(2, 3, 17, '500', '50', NULL, '9999999000', NULL, '0', '2023-02-09 19:26:39', '2023-02-10 00:26:39'),
(3, 28, 3, '400', '40', NULL, '100', NULL, '0', '2023-02-09 19:39:42', '2023-02-10 00:39:42'),
(4, 29, 37, '500', '50', NULL, '9999999500', NULL, '0', '2023-05-24 10:01:31', '2023-05-24 15:01:31'),
(5, 29, 29, NULL, '0', NULL, '500', NULL, NULL, '2023-05-25 07:18:54', '2023-05-25 12:18:54'),
(6, 29, 29, NULL, '0', NULL, '500', NULL, NULL, '2023-05-25 07:19:18', '2023-05-25 12:19:18'),
(7, 29, 29, '50', '5', NULL, '500', NULL, NULL, '2023-05-25 07:24:42', '2023-05-25 12:24:42'),
(8, 29, 29, '50', '5', NULL, '500', NULL, NULL, '2023-05-25 07:36:30', '2023-05-25 12:36:30'),
(9, 29, 37, '10', '1', NULL, '40', NULL, NULL, '2023-05-25 08:09:17', '2023-05-25 13:09:17'),
(10, 29, 37, '40', '4', NULL, '0', NULL, NULL, '2023-05-25 08:10:21', '2023-05-25 13:10:21'),
(11, 29, 37, '10', '1', NULL, '0', NULL, NULL, '2023-05-25 08:18:11', '2023-05-25 13:18:11'),
(12, 29, 37, '10', '1', NULL, '10', NULL, NULL, '2023-05-25 08:24:05', '2023-05-25 13:24:05'),
(13, 29, 37, '5', '0.5', NULL, '5', NULL, NULL, '2023-05-25 09:04:03', '2023-05-25 14:04:03'),
(14, 29, 37, '5', '0.5', NULL, '0', NULL, NULL, '2023-05-29 05:03:42', '2023-05-29 10:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-sendmoney,1-video,2-sell,3-buy,4-valyou song,5-promote song',
  `user_role` tinyint(4) NOT NULL DEFAULT 1,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `token` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `admin_cost` decimal(10,0) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `vip_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `type`, `user_role`, `from_user_id`, `to_user_id`, `artist_id`, `token`, `amount`, `admin_cost`, `note`, `video_id`, `vip_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 1, 3, '345563', '0.039', NULL, 'You watched the video of \"Amrut Kriated\" for 0.039cents', 3, 0, '2021-11-06 09:26:16', '2021-11-06 09:26:16'),
(2, 1, 3, 3, 19, 21, '559380', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 100, 0, '2021-11-06 16:26:31', '2021-11-06 16:26:31'),
(3, 1, 3, 3, 3, 5, '805881', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 97, 0, '2021-11-06 16:27:31', '2021-11-06 16:27:31'),
(4, 3, 3, 3, 3, 7, '831388', '9.18', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2021-11-06 20:59:00', '2021-11-06 20:59:00'),
(5, 3, 1, 3, 1, NULL, '348280', '0.4592', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-06 20:59:00', '2021-11-06 20:59:00'),
(6, 3, 1, 3, 1, NULL, '578795', '0.0045', NULL, 'Fees for buying stock from artist', NULL, 0, '2021-11-06 20:59:00', '2021-11-06 20:59:00'),
(7, 1, 3, 3, 19, 21, '613052', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 100, 0, '2021-11-08 00:15:40', '2021-11-08 00:15:40'),
(8, 1, 2, 3, 3, 5, '504102', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 101, 0, '2021-11-08 00:19:24', '2021-11-08 00:19:24'),
(9, 1, 2, 3, 3, 5, '198528', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 101, 0, '2021-11-08 00:20:01', '2021-11-08 00:20:01'),
(10, 1, 2, 3, 3, 5, '466121', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 101, 0, '2021-11-08 17:32:27', '2021-11-08 17:32:27'),
(11, 1, 2, 3, 19, 21, '608355', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 100, 0, '2021-11-08 18:13:23', '2021-11-08 18:13:23'),
(12, 1, 3, 14, 3, 5, '993593', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 101, 0, '2021-11-08 18:21:41', '2021-11-08 18:21:41'),
(13, 1, 3, 14, 19, 21, '488879', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 100, 0, '2021-11-08 18:23:07', '2021-11-08 18:23:07'),
(14, 1, 2, 19, 3, 5, '748451', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 101, 0, '2021-11-08 18:37:54', '2021-11-08 18:37:54'),
(15, 1, 2, 3, 19, 21, '108953', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 102, 0, '2021-11-08 23:20:39', '2021-11-08 23:20:39'),
(16, 1, 2, 3, 1, 3, '338279', '0.039', NULL, 'You watched the video of \"Amrut Kriated\" for 0.039cents', 3, 0, '2021-11-09 00:17:13', '2021-11-09 00:17:13'),
(17, 1, 3, 14, 19, 21, '467406', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 99, 0, '2021-11-09 07:35:42', '2021-11-09 07:35:42'),
(18, 1, 2, 3, 19, 21, '187774', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 102, 0, '2021-11-10 21:53:58', '2021-11-10 21:53:58'),
(19, 1, 2, 3, 3, 5, '519121', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 101, 0, '2021-11-11 05:14:59', '2021-11-11 05:14:59'),
(20, 1, 2, 3, 19, 21, '144686', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 102, 0, '2021-11-11 05:19:21', '2021-11-11 05:19:21'),
(21, 1, 2, 3, 19, 21, '195215', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 100, 0, '2021-11-11 05:19:34', '2021-11-11 05:19:34'),
(22, 1, 2, 3, 19, 21, '648861', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 98, 0, '2021-11-11 05:19:43', '2021-11-11 05:19:43'),
(23, 3, 2, 3, 3, 7, '482050', '102.09', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2021-11-11 08:55:46', '2021-11-11 08:55:46'),
(24, 3, 1, 3, 1, NULL, '808158', '5.1292', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-11 08:55:46', '2021-11-11 08:55:46'),
(25, 3, 1, 3, 1, NULL, '789895', '0.5050', NULL, 'Fees for buying stock from artist', NULL, 0, '2021-11-11 08:55:46', '2021-11-11 08:55:46'),
(26, 1, 2, 3, 3, 5, '657265', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 103, 0, '2021-11-11 13:26:14', '2021-11-11 13:26:14'),
(27, 3, 2, 3, 4, 9, '895073', '100.01', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2021-11-11 16:01:10', '2021-11-11 16:01:10'),
(28, 3, 1, 3, 1, NULL, '223774', '5.0253', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-11 16:01:10', '2021-11-11 16:01:10'),
(29, 3, 1, 4, 1, NULL, '494000', '0.5050', NULL, 'Fees for buying stock from artist', NULL, 0, '2021-11-11 16:01:10', '2021-11-11 16:01:10'),
(30, 1, 2, 3, 3, 5, '180281', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 103, 0, '2021-11-11 16:11:12', '2021-11-11 16:11:12'),
(31, 1, 3, 3, 3, 5, '337663', '5', NULL, 'Bobby Oparaocha pay for valyou song', NULL, 1, '2021-11-11 16:12:50', '2021-11-11 16:12:50'),
(32, 1, 2, 3, 3, 5, '950185', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 103, 0, '2021-11-12 03:40:39', '2021-11-12 03:40:39'),
(33, 3, 3, 3, 3, 7, '940633', '10.3045', NULL, 'Bobby Oparaocha sold stock in your brand', NULL, 0, '2021-11-13 15:03:59', '2021-11-13 15:03:59'),
(34, 3, 1, 3, 1, NULL, '318281', '0.5152', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-13 15:03:59', '2021-11-13 15:03:59'),
(35, 1, 3, 3, 3, 5, '603291', '1', NULL, 'Bobby Oparaocha pay for valyou song', NULL, 1, '2021-11-14 14:19:36', '2021-11-14 14:19:36'),
(36, 1, 2, 14, 14, 20, '950587', '0.039', NULL, 'You watched the video of \"Stino\" for 0.039cents', 104, 0, '2021-11-16 01:32:12', '2021-11-16 01:32:12'),
(37, 1, 1, 3, 14, 20, '806724', '0.039', NULL, 'You watched the video of \"Stino\" for 0.039cents', 104, 0, '2021-11-16 10:22:36', '2021-11-16 10:22:36'),
(38, 0, 4, 3, 23, NULL, '251617', '10', NULL, '2', NULL, 0, '2021-11-16 19:27:53', '2021-11-16 19:27:53'),
(39, 3, 3, 23, 4, 9, '806803', '1.0101', NULL, 'admin admin purchased stock in your brand', NULL, 0, '2021-11-16 19:28:30', '2021-11-16 19:28:30'),
(40, 3, 1, 23, 1, NULL, '532832', '0.05040399', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-16 19:28:30', '2021-11-16 19:28:30'),
(41, 3, 1, 4, 1, NULL, '327755', '0.0001', NULL, 'Fees for buying stock from artist', NULL, 0, '2021-11-16 19:28:30', '2021-11-16 19:28:30'),
(42, 1, 3, 23, 14, 20, '193287', '1', NULL, 'admin admin pay for valyou song', NULL, 1, '2021-11-16 19:41:06', '2021-11-16 19:41:06'),
(43, 1, 3, 23, 14, 20, '887988', '0.039', NULL, 'You watched the video of \"Stino\" for 0.039cents', 104, 0, '2021-11-16 19:55:14', '2021-11-16 19:55:14'),
(44, 3, 3, 3, 3, 7, '599312', '2.0597', NULL, 'Bobby Oparaocha sold stock in your brand', NULL, 0, '2021-11-18 08:17:44', '2021-11-18 08:17:44'),
(45, 3, 1, 3, 1, NULL, '171504', '0.1028', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-18 08:17:44', '2021-11-18 08:17:44'),
(46, 3, 3, 3, 3, 7, '754005', '2.0593', NULL, 'Bobby Oparaocha sold stock in your brand', NULL, 0, '2021-11-18 08:18:38', '2021-11-18 08:18:38'),
(47, 3, 1, 3, 1, NULL, '999262', '0.1028', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-18 08:18:38', '2021-11-18 08:18:38'),
(48, 1, 3, 3, 14, 20, '560285', '0.039', NULL, 'You watched the video of \"Stino\" for 0.039cents', 104, 0, '2021-11-19 12:14:30', '2021-11-19 12:14:30'),
(49, 3, 2, 3, 4, 11, '182573', '1', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2021-11-19 17:58:21', '2021-11-19 17:58:21'),
(50, 3, 1, 3, 1, NULL, '630349', '0.0499', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-19 17:58:21', '2021-11-19 17:58:21'),
(51, 3, 1, 4, 1, NULL, '524870', '0.0001', NULL, 'Fees for buying stock from artist', NULL, 0, '2021-11-19 17:58:21', '2021-11-19 17:58:21'),
(52, 3, 2, 3, 4, 12, '150903', '1', NULL, 'Bobby Oparaocha expressed interest to purchase stock in your brand', NULL, 0, '2021-11-19 17:59:32', '2021-11-19 17:59:32'),
(53, 3, 1, 3, 1, NULL, '842790', '0.0499', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-19 17:59:32', '2021-11-19 17:59:32'),
(54, 3, 1, 4, 1, NULL, '560836', '0.0001', NULL, 'Fees for buying stock from artist', NULL, 0, '2021-11-19 17:59:32', '2021-11-19 17:59:32'),
(55, 3, 2, 3, 4, 13, '125394', '1', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2021-11-19 17:59:54', '2021-11-19 17:59:54'),
(56, 3, 1, 3, 1, NULL, '923956', '0.0499', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-19 17:59:54', '2021-11-19 17:59:54'),
(57, 3, 1, 4, 1, NULL, '275696', '0.0001', NULL, 'Fees for buying stock from artist', NULL, 0, '2021-11-19 17:59:54', '2021-11-19 17:59:54'),
(58, 1, 2, 3, 3, 5, '298040', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2021-11-20 22:08:06', '2021-11-20 22:08:06'),
(59, 1, 2, 3, 3, 5, '260177', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2021-11-20 22:08:07', '2021-11-20 22:08:07'),
(60, 1, 2, 3, 14, 20, '311337', '0.039', NULL, 'You watched the video of \"Stino\" for 0.039cents', 104, 0, '2021-11-21 11:47:42', '2021-11-21 11:47:42'),
(61, 1, 2, 3, 14, 20, '585865', '0.039', NULL, 'You watched the video of \"Stino\" for 0.039cents', 104, 0, '2021-11-21 11:48:21', '2021-11-21 11:48:21'),
(62, 1, 2, 19, 19, 21, '805762', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 107, 0, '2021-11-23 05:09:04', '2021-11-23 05:09:04'),
(63, 1, 2, 19, 19, 21, '126842', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 107, 0, '2021-11-23 12:30:42', '2021-11-23 12:30:42'),
(64, 3, 3, 3, 3, 5, '933169', '20.002', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2021-11-23 15:36:01', '2021-11-23 15:36:01'),
(65, 3, 1, 3, 1, NULL, '771663', '0.999', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-23 15:36:01', '2021-11-23 15:36:01'),
(66, 3, 1, 3, 1, NULL, '606321', '0.0210', NULL, 'Fees for buying stock from artist', NULL, 0, '2021-11-23 15:36:01', '2021-11-23 15:36:01'),
(67, 1, 3, 3, 3, 5, '625479', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2021-11-23 15:43:53', '2021-11-23 15:43:53'),
(68, 1, 3, 3, 3, 5, '276362', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2021-11-23 15:45:49', '2021-11-23 15:45:49'),
(69, 1, 3, 3, 3, 5, '902261', '1', NULL, 'Bobby Oparaocha pay for valyou song', NULL, 1, '2021-11-23 15:59:12', '2021-11-23 15:59:12'),
(70, 5, 2, 19, 14, 20, '447946', '25', NULL, 'Promoted your video', 104, 0, '2021-11-23 17:02:43', '2021-11-23 17:02:43'),
(71, 5, 2, 19, 14, 20, '609009', '25', NULL, 'You Promoted video', 104, 0, '2021-11-23 17:02:43', '2021-11-23 17:02:43'),
(72, 5, 1, 3, 19, 21, '998159', '10', NULL, 'Promoted your video', 107, 0, '2021-11-23 18:03:17', '2021-11-23 18:03:17'),
(73, 5, 1, 3, 19, 21, '657791', '10', NULL, 'You Promoted video', 107, 0, '2021-11-23 18:03:17', '2021-11-23 18:03:17'),
(74, 3, 2, 3, 3, 7, '825981', '1.0295', NULL, 'Bobby Oparaocha sold stock in your brand', NULL, 0, '2021-11-24 09:58:32', '2021-11-24 09:58:32'),
(75, 3, 1, 3, 1, NULL, '331830', '0.0514', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-24 09:58:32', '2021-11-24 09:58:32'),
(76, 3, 2, 3, 3, 7, '959143', '1.0294', NULL, 'Bobby Oparaocha sold stock in your brand', NULL, 0, '2021-11-24 09:58:53', '2021-11-24 09:58:53'),
(77, 3, 1, 3, 1, NULL, '450595', '0.0514', NULL, 'Fees for buying stock from investors', NULL, 0, '2021-11-24 09:58:53', '2021-11-24 09:58:53'),
(78, 1, 2, 3, 19, 21, '338410', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 107, 0, '2022-08-15 21:45:19', '2022-08-15 16:45:19'),
(79, 1, 3, 3, 19, 21, '951615', '2', NULL, 'Bobby Oparaocha pay for valyou song', NULL, 1, '2022-08-18 19:11:30', '2022-08-18 14:11:30'),
(80, 1, 3, 3, 19, 21, '125065', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 107, 0, '2022-08-18 19:11:56', '2022-08-18 14:11:56'),
(81, 1, 3, 3, 3, 5, '507465', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 103, 0, '2022-08-18 19:12:23', '2022-08-18 14:12:23'),
(82, 3, 3, 3, 8, 17, '753552', '3', NULL, 'Bobby Oparaocha expressed interest to purchase stock in your brand', NULL, 0, '2022-08-25 10:52:28', '2022-08-25 10:52:28'),
(83, 3, 1, 3, 1, NULL, '252291', '0.1497', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-08-25 10:52:28', '2022-08-25 10:52:28'),
(84, 3, 1, 3, 1, NULL, '931786', '0.0006', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-08-25 10:52:28', '2022-08-25 10:52:28'),
(85, 3, 3, 3, 9, 18, '631973', '1', NULL, 'Bobby Oparaocha expressed interest to purchase stock in your brand', NULL, 0, '2022-08-25 11:33:02', '2022-08-25 11:33:02'),
(86, 3, 1, 3, 1, NULL, '849910', '0.0499', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-08-25 11:33:02', '2022-08-25 11:33:02'),
(87, 3, 1, 3, 1, NULL, '344417', '0.0001', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-08-25 11:33:02', '2022-08-25 11:33:02'),
(88, 1, 3, 3, 19, 21, '975517', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 107, 0, '2022-08-25 14:49:18', '2022-08-25 14:49:18'),
(89, 3, 3, 3, 8, 17, '881812', '1.0003', NULL, 'Bobby Oparaocha expressed interest to purchase stock in your brand', NULL, 0, '2022-08-27 08:00:21', '2022-08-27 08:00:21'),
(90, 3, 1, 3, 1, NULL, '594275', '0.04991497', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-08-27 08:00:21', '2022-08-27 08:00:21'),
(91, 3, 1, 3, 1, NULL, '285384', '0.0001', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-08-27 08:00:21', '2022-08-27 08:00:21'),
(92, 3, 3, 3, 8, 17, '900780', '10.004', NULL, 'Bobby Oparaocha expressed interest to purchase stock in your brand', NULL, 0, '2022-08-27 08:00:54', '2022-08-27 08:00:54'),
(93, 3, 1, 3, 1, NULL, '937723', '0.4994', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-08-27 08:00:54', '2022-08-27 08:00:54'),
(94, 3, 1, 3, 1, NULL, '867605', '0.0055', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-08-27 08:00:54', '2022-08-27 08:00:54'),
(95, 3, 3, 8, 3, 17, '883784', '10.0095', NULL, 'Bobby Oparaocha expressed interest to sell stock in your brand', NULL, 0, '2022-08-27 08:01:23', '2022-08-27 08:01:23'),
(96, 3, 1, 3, 1, NULL, '151165', '0.4995', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-08-27 08:01:23', '2022-08-27 08:01:23'),
(97, 3, 3, 8, 3, 17, '417949', '1.0004', NULL, 'Bobby Oparaocha expressed interest to sell stock in your brand', NULL, 0, '2022-08-27 08:10:11', '2022-08-27 08:10:11'),
(98, 3, 1, 3, 1, NULL, '868491', '0.0499', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-08-27 08:10:11', '2022-08-27 08:10:11'),
(99, 1, 1, 3, 14, 20, '538823', '0.039', NULL, 'You watched the video of \"Stino\" for 0.039cents', 104, 0, '2022-08-27 08:31:20', '2022-08-27 08:31:20'),
(100, 0, 3, 3, 3, NULL, '634651', '9.8', NULL, 'Credit/Debit Card Transaction', NULL, 0, '2022-09-01 17:34:23', '2022-09-01 17:34:23'),
(101, 0, 3, 3, 3, NULL, '185059', '9.8', NULL, 'Credit/Debit Card Transaction', NULL, 0, '2022-09-01 17:36:05', '2022-09-01 17:36:05'),
(102, 0, 3, 3, 3, NULL, '903479', '9.8', NULL, 'Credit/Debit Card Transaction', NULL, 0, '2022-09-01 17:38:56', '2022-09-01 17:38:56'),
(103, 0, 3, 3, 3, NULL, '746694', '9.8', NULL, 'Credit/Debit Card Transaction', NULL, 0, '2022-09-01 17:40:00', '2022-09-01 17:40:00'),
(104, 3, 3, 3, 3, 7, '688103', '10.293', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-01 21:02:15', '2022-09-01 21:02:15'),
(105, 3, 1, 3, 1, NULL, '538679', '0.5138', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-01 21:02:15', '2022-09-01 21:02:15'),
(106, 3, 1, 3, 1, NULL, '709627', '0.0055', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-01 21:02:15', '2022-09-01 21:02:15'),
(107, 1, 3, 3, 19, 21, '900736', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 107, 0, '2022-09-01 21:05:08', '2022-09-01 21:05:08'),
(108, 1, 3, 3, 19, 21, '875446', '2', NULL, 'Bobby Oparaocha pay for valyou song', NULL, 1, '2022-09-01 21:05:29', '2022-09-01 21:05:29'),
(109, 0, 3, 3, 1, NULL, '770139', '10', NULL, '6', NULL, 0, '2022-09-01 22:40:03', '2022-09-01 22:40:03'),
(110, 0, 3, 3, 1, NULL, '410034', '10', NULL, '10', NULL, 0, '2022-09-01 22:40:42', '2022-09-01 22:40:42'),
(111, 0, 3, 3, 3, NULL, '394307', '9.8', NULL, 'Credit/Debit Card Transaction', NULL, 0, '2022-09-01 23:26:48', '2022-09-01 23:26:48'),
(112, 0, 3, 3, 3, NULL, '863419', '4.9', NULL, 'Credit/Debit Card Transaction', NULL, 0, '2022-09-02 04:08:14', '2022-09-02 04:08:14'),
(113, 1, 2, 3, 3, 5, '532544', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2022-09-02 19:26:41', '2022-09-02 19:26:41'),
(114, 1, 2, 3, 3, 5, '771220', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2022-09-02 19:29:13', '2022-09-02 19:29:13'),
(115, 0, 1, 3, 3, NULL, '129522', '9.8', NULL, 'Credit/Debit Card Transaction', NULL, 0, '2022-09-02 21:31:37', '2022-09-02 21:31:37'),
(116, 0, 2, 3, 3, NULL, '237170', '0.98', NULL, '45', NULL, 0, '2022-09-05 21:14:09', '2022-09-05 21:14:09'),
(117, 0, 1, 3, 7, NULL, '401909', '10', NULL, '45', NULL, 0, '2022-09-05 21:58:23', '2022-09-05 21:58:23'),
(118, 1, 3, 3, 19, 21, '655825', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 107, 0, '2022-09-08 05:14:47', '2022-09-08 05:14:47'),
(119, 1, 3, 3, 3, 5, '814053', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2022-09-08 05:14:57', '2022-09-08 05:14:57'),
(120, 3, 3, 3, 3, 7, '246257', '103.03', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-09 09:21:14', '2022-09-09 09:21:14'),
(121, 3, 1, 3, 1, NULL, '240668', '5.1659', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-09 09:21:14', '2022-09-09 09:21:14'),
(122, 3, 1, 3, 1, NULL, '347828', '0.5050', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-09 09:21:14', '2022-09-09 09:21:14'),
(123, 1, 3, 3, 3, 5, '472703', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2022-09-09 09:23:38', '2022-09-09 09:23:38'),
(124, 3, 2, 3, 3, 5, '887745', '1.0021', NULL, 'Bobby Oparaocha sold stock in your brand', NULL, 0, '2022-09-10 22:14:44', '2022-09-10 22:14:44'),
(125, 3, 1, 3, 1, NULL, '761728', '0.0500', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-10 22:14:44', '2022-09-10 22:14:44'),
(126, 3, 2, 3, 3, 5, '911689', '1.0020', NULL, 'Bobby Oparaocha sold stock in your brand', NULL, 0, '2022-09-10 22:18:46', '2022-09-10 22:18:46'),
(127, 3, 1, 3, 1, NULL, '215638', '0.0500', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-10 22:18:46', '2022-09-10 22:18:46'),
(128, 3, 2, 3, 3, 5, '302199', '1.0019', NULL, 'Bobby Oparaocha sold stock in your brand', NULL, 0, '2022-09-10 22:39:16', '2022-09-10 22:39:16'),
(129, 3, 1, 3, 1, NULL, '662542', '0.0500', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-10 22:39:16', '2022-09-10 22:39:16'),
(130, 3, 2, 3, 3, 5, '960323', '1.0018', NULL, 'Bobby Oparaocha sold stock in your brand', NULL, 0, '2022-09-10 22:41:32', '2022-09-10 22:41:32'),
(131, 3, 1, 3, 1, NULL, '475616', '0.0500', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-10 22:41:32', '2022-09-10 22:41:32'),
(132, 3, 2, 3, 3, 5, '881290', '2.0034', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-10 22:50:01', '2022-09-10 22:50:01'),
(133, 3, 1, 3, 1, NULL, '289569', '0.1', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-10 22:50:01', '2022-09-10 22:50:01'),
(134, 3, 1, 3, 1, NULL, '860086', '0.0003', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-10 22:50:01', '2022-09-10 22:50:01'),
(135, 3, 2, 3, 3, 5, '258918', '1.0019', NULL, 'Bobby Oparaocha sold stock in your brand', NULL, 0, '2022-09-10 22:51:50', '2022-09-10 22:51:50'),
(136, 3, 1, 3, 1, NULL, '180230', '0.0500', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-10 22:51:50', '2022-09-10 22:51:50'),
(137, 3, 2, 3, 3, 5, '491426', '3.0054', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-10 22:55:45', '2022-09-10 22:55:45'),
(138, 3, 1, 3, 1, NULL, '462086', '0.15', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-10 22:55:45', '2022-09-10 22:55:45'),
(139, 3, 1, 3, 1, NULL, '207919', '0.0006', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-10 22:55:45', '2022-09-10 22:55:45'),
(140, 1, 1, 3, 19, 21, '177242', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 107, 0, '2022-09-11 14:32:17', '2022-09-11 14:32:17'),
(141, 1, 1, 3, 19, 21, '956804', '0.039', NULL, 'You watched the video of \"Sun Test\" for 0.039cents', 107, 0, '2022-09-12 16:32:20', '2022-09-12 16:32:20'),
(142, 1, 1, 3, 14, 20, '860203', '0.039', NULL, 'You watched the video of \"Stino\" for 0.039cents', 104, 0, '2022-09-12 16:33:06', '2022-09-12 16:33:06'),
(143, 1, 1, 3, 14, 20, '341664', '0.039', NULL, 'You watched the video of \"Stino\" for 0.039cents', 104, 0, '2022-09-12 16:34:31', '2022-09-12 16:34:31'),
(144, 1, 1, 3, 3, 5, '290973', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2022-09-12 16:41:52', '2022-09-12 16:41:52'),
(145, 1, 2, 3, 3, 5, '256074', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2022-09-12 16:42:43', '2022-09-12 16:42:43'),
(146, 1, 2, 3, 3, 5, '780715', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2022-09-12 16:43:25', '2022-09-12 16:43:25'),
(147, 0, 2, 3, 26, NULL, '544580', '100', NULL, '2', NULL, 0, '2022-09-12 16:49:36', '2022-09-12 16:49:36'),
(148, 1, 3, 26, 3, 5, '169657', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2022-09-12 16:50:13', '2022-09-12 16:50:13'),
(149, 1, 3, 26, 3, 5, '202715', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2022-09-12 16:51:50', '2022-09-12 16:51:50'),
(150, 1, 3, 26, 3, 5, '307074', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039cents', 105, 0, '2022-09-12 16:53:13', '2022-09-12 16:53:13'),
(151, 1, 2, 3, 26, 25, '577749', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039cents', 108, 0, '2022-09-12 17:04:08', '2022-09-12 17:04:08'),
(152, 1, 3, 3, 26, 25, '712435', '1', NULL, 'Bobby Oparaocha pay for valyou song', NULL, 1, '2022-09-12 17:23:02', '2022-09-12 17:23:02'),
(153, 1, 3, 3, 26, 25, '469182', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039cents', 108, 0, '2022-09-12 18:54:53', '2022-09-12 18:54:53'),
(154, 1, 3, 3, 26, 25, '285083', '1', NULL, 'Bobby Oparaocha pay for valyou song', NULL, 1, '2022-09-12 18:54:55', '2022-09-12 18:54:55'),
(155, 1, 3, 3, 26, 25, '337007', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039cents', 108, 0, '2022-09-12 18:55:23', '2022-09-12 18:55:23'),
(156, 1, 3, 3, 26, 25, '636127', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039cents', 108, 0, '2022-09-12 18:56:03', '2022-09-12 18:56:03'),
(157, 1, 3, 3, 26, 25, '762306', '1', NULL, 'Bobby Oparaocha pay for valyou song', NULL, 1, '2022-09-12 18:56:45', '2022-09-12 18:56:45'),
(158, 1, 3, 3, 26, 25, '228030', '1', NULL, 'Bobby Oparaocha pay for valyou song', NULL, 1, '2022-09-12 18:58:13', '2022-09-12 18:58:13'),
(159, 1, 3, 3, 26, 25, '554451', '1', NULL, 'Bobby Oparaocha pay for valyou song', NULL, 1, '2022-09-12 18:59:08', '2022-09-12 18:59:08'),
(160, 1, 3, 3, 26, 25, '896793', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039cents', 108, 0, '2022-09-12 20:37:51', '2022-09-12 20:37:51'),
(161, 1, 3, 3, 26, 25, '942893', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039 cents', 108, 0, '2022-09-12 20:42:31', '2022-09-12 20:42:31'),
(162, 1, 1, 3, 26, 25, '653567', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039 cents', 108, 0, '2022-09-12 21:00:41', '2022-09-12 21:00:41'),
(163, 1, 2, 26, 26, 25, '547425', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039 cents', 108, 0, '2022-09-12 21:02:59', '2022-09-12 21:02:59'),
(164, 1, 2, 26, 26, 25, '659568', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039 cents', 108, 0, '2022-09-12 21:08:13', '2022-09-12 21:08:13'),
(165, 1, 2, 26, 26, 25, '950555', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039 cents', 108, 0, '2022-09-12 21:31:05', '2022-09-12 21:31:05'),
(166, 1, 2, 26, 26, 25, '380740', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039 cents', 108, 0, '2022-09-12 21:35:10', '2022-09-12 21:35:10'),
(167, 1, 2, 26, 3, 5, '924179', '0.039', NULL, 'You watched the video of \"Ed Sheeran\" for 0.039 cents', 105, 0, '2022-09-12 21:37:20', '2022-09-12 21:37:20'),
(168, 1, 2, 26, 26, 25, '386761', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039 cents', 108, 0, '2022-09-12 21:38:42', '2022-09-12 21:38:42'),
(169, 3, 2, 3, 3, 7, '848750', '104.03', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-13 14:51:41', '2022-09-13 14:51:41'),
(170, 3, 1, 3, 1, NULL, '306240', '5.2158', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-13 14:51:41', '2022-09-13 14:51:41'),
(171, 3, 1, 3, 1, NULL, '338622', '0.5050', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-13 14:51:41', '2022-09-13 14:51:41'),
(172, 1, 3, 3, 26, 25, '828823', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039 cents', 108, 0, '2022-09-13 14:53:42', '2022-09-13 14:53:42'),
(173, 1, 3, 26, 26, 25, '853018', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039 cents', 108, 0, '2022-09-13 15:38:22', '2022-09-13 15:38:22'),
(174, 1, 3, 26, 26, 25, '661530', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039 cents', 108, 0, '2022-09-13 15:40:48', '2022-09-13 15:40:48'),
(175, 3, 3, 26, 3, 7, '342612', '10.503', NULL, 'baqar butt purchased stock in your brand', NULL, 0, '2022-09-13 16:14:52', '2022-09-13 16:14:52'),
(176, 3, 1, 26, 1, NULL, '428547', '0.5243', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-13 16:14:52', '2022-09-13 16:14:52'),
(177, 3, 1, 26, 1, NULL, '945031', '0.0055', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-13 16:14:52', '2022-09-13 16:14:52'),
(178, 3, 3, 26, 3, 7, '590177', '1.0513', NULL, 'baqar butt purchased stock in your brand', NULL, 0, '2022-09-13 16:44:26', '2022-09-13 16:44:26'),
(179, 3, 1, 26, 1, NULL, '479750', '0', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-13 16:44:26', '2022-09-13 16:44:26'),
(180, 3, 1, 26, 1, NULL, '673604', '0.5000', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-13 16:44:26', '2022-09-13 16:44:26'),
(181, 3, 1, 3, 3, 7, '272585', '3.1026', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-14 23:31:46', '2022-09-14 23:31:46'),
(182, 3, 1, 3, 1, NULL, '251283', '1', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-14 23:31:46', '2022-09-14 23:31:46'),
(183, 3, 1, 3, 1, NULL, '762303', '1.5000', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-14 23:31:46', '2022-09-14 23:31:46'),
(184, 1, 1, 3, 26, 25, '252690', '0.039', NULL, 'You watched the video of \"Rapper Huzail\" for 0.039 cents', 108, 0, '2022-09-20 07:34:30', '2022-09-20 07:34:30'),
(185, 1, 3, 3, 3, 5, '808538', '2', NULL, 'Bobby Oparaocha pay for valyou song', NULL, 1, '2022-09-20 07:35:25', '2022-09-20 07:35:25'),
(186, 3, 1, 3, 3, 7, '889473', '2.5513', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-26 19:02:09', '2022-09-26 19:02:09'),
(187, 3, 1, 3, 1, NULL, '918004', '0.1273', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-26 19:02:09', '2022-09-26 19:02:09'),
(188, 3, 1, 3, 1, NULL, '874334', '0.0000', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-26 19:02:09', '2022-09-26 19:02:09'),
(189, 3, 1, 3, 3, 7, '589349', '2.5513', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-26 19:02:25', '2022-09-26 19:02:25'),
(190, 3, 1, 3, 1, NULL, '993463', '0.12730987', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-26 19:02:25', '2022-09-26 19:02:25'),
(191, 3, 1, 3, 1, NULL, '822098', '0', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-26 19:02:25', '2022-09-26 19:02:25'),
(192, 3, 1, 3, 3, 7, '870148', '2.5513', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-26 19:03:06', '2022-09-26 19:03:06'),
(193, 3, 1, 3, 1, NULL, '170965', '0.12730987', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-26 19:03:06', '2022-09-26 19:03:06'),
(194, 3, 1, 3, 1, NULL, '454925', '0', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-26 19:03:06', '2022-09-26 19:03:06'),
(195, 3, 1, 3, 3, 7, '448730', '7.6539', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-26 19:03:37', '2022-09-26 19:03:37'),
(196, 3, 1, 3, 1, NULL, '367056', '0.3819', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-26 19:03:37', '2022-09-26 19:03:37'),
(197, 3, 1, 3, 1, NULL, '985208', '0.0000', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-26 19:03:37', '2022-09-26 19:03:37'),
(198, 3, 1, 3, 3, 7, '239134', '2.5513', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-26 19:05:57', '2022-09-26 19:05:57'),
(199, 3, 1, 3, 1, NULL, '392184', '0.12730987', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-26 19:05:57', '2022-09-26 19:05:57'),
(200, 3, 1, 3, 1, NULL, '217046', '1', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-26 19:05:57', '2022-09-26 19:05:57'),
(201, 3, 1, 3, 3, 7, '774031', '14.2052', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-26 19:18:07', '2022-09-26 19:18:07'),
(202, 3, 1, 3, 1, NULL, '306726', '1.0082', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-26 19:18:07', '2022-09-26 19:18:07'),
(203, 3, 1, 3, 1, NULL, '304433', '10.0000', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-26 19:18:07', '2022-09-26 19:18:07'),
(204, 3, 2, 3, 3, 7, '743956', '15.1026', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-27 01:02:31', '2022-09-27 01:02:31'),
(205, 3, 1, 3, 1, NULL, '719717', '0.8035', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-27 01:02:31', '2022-09-27 01:02:31'),
(206, 3, 1, 3, 1, NULL, '441970', '3.0000', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-27 01:02:31', '2022-09-27 01:02:31'),
(207, 3, 2, 3, 3, 7, '292180', '15.1026', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-27 01:02:31', '2022-09-27 01:02:31'),
(208, 3, 1, 3, 1, NULL, '134807', '0.8035', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-27 01:02:31', '2022-09-27 01:02:31'),
(209, 3, 1, 3, 1, NULL, '255551', '3.0000', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-27 01:02:31', '2022-09-27 01:02:31'),
(210, 3, 2, 3, 3, 7, '753523', '9.5513', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-27 01:55:29', '2022-09-27 01:55:29'),
(211, 3, 1, 3, 1, NULL, '262165', '0.47660987', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-27 01:55:29', '2022-09-27 01:55:29'),
(212, 3, 1, 3, 1, NULL, '952852', '1', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-27 01:55:29', '2022-09-27 01:55:29'),
(213, 3, 2, 3, 3, 7, '413333', '10.5513', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-27 02:01:21', '2022-09-27 02:01:21'),
(214, 3, 1, 3, 1, NULL, '806860', '0.52650987', NULL, 'Fees for buying stock from investors', NULL, 0, '2022-09-27 02:01:21', '2022-09-27 02:01:21'),
(215, 3, 1, 3, 1, NULL, '648104', '1', NULL, 'Fees for buying stock from artist', NULL, 0, '2022-09-27 02:01:21', '2022-09-27 02:01:21'),
(216, 3, 2, 3, 3, 7, '892239', '11.5513', NULL, 'Bobby Oparaocha purchased stock in your brand', NULL, 0, '2022-09-27 03:13:36', '2022-09-27 03:13:36'),
(377, 3, 2, 3, 3, NULL, '400181', '0.8', NULL, 'Reserved VXD for promotion.', NULL, 0, '2023-02-20 23:33:49', '2023-02-20 18:33:49'),
(413, 3, 1, 3, 3, NULL, '961486', '0.8', NULL, 'Reserved VXD for promotion.', NULL, 0, '2023-02-21 07:54:47', '2023-02-21 02:54:47'),
(414, 3, 1, 3, 3, NULL, '767067', '0.2', NULL, 'Admin fees during purchase VXD for promotion.', NULL, 0, '2023-02-21 07:54:47', '2023-02-21 02:54:47'),
(415, 3, 1, 3, 3, NULL, '470573', '0.8', NULL, 'Reserved VXD for promotion.', NULL, 0, '2023-02-21 07:54:48', '2023-02-21 02:54:48'),
(416, 3, 1, 3, 3, NULL, '467270', '0.2', NULL, 'Admin fees during purchase VXD for promotion.', NULL, 0, '2023-02-21 07:54:48', '2023-02-21 02:54:48'),
(417, 1, 3, 26, 28, 25, '917749', '1', NULL, 'You have earned watch the video of \"Rapper Huzail\" for 1 cents', 108, 0, '2023-02-21 07:59:01', '2023-02-21 02:59:01'),
(418, 1, 3, 26, 28, 25, '752774', '1', NULL, 'You have earned watch the video of \"Rapper Huzail\" for 1 cents', 108, 0, '2023-02-21 08:01:21', '2023-02-21 03:01:21'),
(419, 3, 1, 3, 3, NULL, '743671', '0.8', NULL, 'Reserved VXD for promotion.', NULL, 0, '2023-02-21 08:08:16', '2023-02-21 03:08:16'),
(420, 3, 1, 3, 3, NULL, '198090', '0.2', NULL, 'Admin fees during purchase VXD for promotion.', NULL, 0, '2023-02-21 08:08:16', '2023-02-21 03:08:16'),
(421, 3, 3, 3, 3, 7, '253912', '80.5513', NULL, 'Valyou X purchased stock in your brand', NULL, 0, '2023-02-21 08:31:31', '2023-02-21 03:31:31'),
(422, 3, 1, 3, 1, NULL, '388809', '4.0195', NULL, 'Fees for buying stock from investors', NULL, 0, '2023-02-21 08:31:31', '2023-02-21 03:31:31'),
(423, 3, 1, 3, 1, NULL, '889429', '1.0000', NULL, 'Fees for buying stock from artist', NULL, 0, '2023-02-21 08:31:31', '2023-02-21 03:31:31'),
(424, 3, 1, 3, 1, NULL, '889429', '1.0000', NULL, 'API stock from artist', NULL, 0, '2023-03-06 13:37:44', '2023-03-06 08:37:44'),
(425, 3, 1, 29, 37, 3, '889429', '1.0000', '2', 'APi local testing', 25, 0, '2023-04-05 08:23:14', '2023-05-24 13:29:20'),
(426, 3, 1, 29, 37, 3, '889429', '1.0000', '2', 'APi local testing', 25, 0, '2023-04-05 08:23:56', '2023-05-24 13:29:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_videos`
--
ALTER TABLE `upload_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_access_tokens`
--
ALTER TABLE `user_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=722;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1092;

--
-- AUTO_INCREMENT for table `upload_videos`
--
ALTER TABLE `upload_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user_access_tokens`
--
ALTER TABLE `user_access_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
