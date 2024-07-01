-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-05-16 12:07:42
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `baseball`
--

-- --------------------------------------------------------

--
-- 資料表結構 `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_id` int(5) NOT NULL,
  `r_id` int(5) NOT NULL,
  `c_id` int(5) NOT NULL,
  `description` varchar(255) NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `p_id`, `r_id`, `c_id`, `description`, `star`, `created_at`) VALUES
(1, 7, 1, 0, 0, '太棒了!! 真的好用', 5, '2024-05-13 11:34:00'),
(2, 7, 3, 0, 0, '太棒了!! 真的好用', 5, '2024-05-13 11:36:00'),
(3, 7, 4, 0, 0, '太棒了!! 真的好用', 5, '2024-05-13 11:37:00'),
(4, 7, 2, 0, 0, '太棒了!! 真的好用', 4, '2024-05-13 11:38:00'),
(5, 60, 5, 0, 0, '太棒了!! 真的好用', 5, '2024-05-13 12:00:00'),
(6, 60, 6, 0, 0, '太棒了!! 真的好用', 5, '2024-05-13 12:07:00'),
(7, 60, 2, 0, 0, '好棒唷', 3, '2024-05-13 14:19:00'),
(8, 10, 7, 0, 0, '太棒了!! 真的好用', 5, '2024-05-13 14:37:00'),
(9, 11, 1, 0, 0, '太棒了啦 BRO  M3', 4, '2024-05-13 14:38:00'),
(10, 12, 2, 0, 0, '你懂得 M3', 4, '2024-05-13 14:50:00'),
(11, 13, 3, 0, 0, '版型不錯，但穿起來偏硬，個人較不習慣。', 3, '2024-05-13 15:06:00'),
(12, 14, 4, 0, 0, '版型不錯，但穿起來偏硬，個人較不習慣。', 4, '2024-05-13 15:09:00'),
(13, 15, 5, 0, 0, '版型不錯，個人較不習慣。', 2, '2024-05-13 15:10:00'),
(14, 16, 6, 0, 0, '沒有我要的顏色', 1, '2024-05-13 15:18:00'),
(15, 17, 7, 0, 0, '版型不錯，但穿起來偏硬，個人較不習慣。', 4, '2024-05-13 15:27:00'),
(16, 18, 8, 0, 0, '很快就收到了  很有效率', 5, '2024-05-13 15:27:00'),
(17, 19, 9, 0, 0, '版型不錯，但穿起來偏硬，個人較不習慣。', 5, '2024-05-13 15:35:00'),
(18, 20, 0, 2, 0, '租用品質維護不錯', 3, '2024-05-13 15:36:00'),
(19, 20, 0, 3, 0, '租用品質維護不錯  也沒有異味', 4, '2024-05-13 15:47:00'),
(20, 21, 0, 2, 0, '租用品質維護不錯', 4, '2024-05-13 15:59:00'),
(21, 21, 0, 3, 0, '租用品質維護不錯  用起來得心應手', 5, '2024-05-14 13:45:00'),
(22, 77, 2, 0, 0, '有成功了吧!!', 3, '2024-05-14 13:46:00'),
(23, 77, 0, 1, 0, '拿到的時候很感動  終於有球具用了', 5, '2024-05-14 14:46:00'),
(24, 78, 0, 1, 0, '版型不錯，但穿起來偏硬，個人較不習慣。套墊的緩衝力很好。', 4, '2024-05-14 15:45:00'),
(25, 61, 0, 1, 0, '版型不錯，但穿起來偏硬，個人較不習慣。緩衝力還不錯。', 5, '2024-05-14 15:45:00'),
(26, 77, 0, 0, 6, '體能課有點太操!!', 1, '2024-05-14 15:45:00'),
(27, 78, 0, 0, 6, '教練很帥', 5, '2024-05-14 16:12:00'),
(28, 70, 0, 0, 6, '這堂課太讚了吧!!', 5, '2024-05-14 16:12:00'),
(29, 38, 0, 0, 6, '教練很NICE   M3', 5, '2024-05-14 16:12:00'),
(30, 22, 0, 4, 0, '租用品質維護不錯', 3, '2024-05-13 15:36:00'),
(31, 23, 0, 4, 0, '租用品質維護不錯  也沒有異味', 4, '2024-05-13 15:47:00'),
(32, 24, 0, 5, 0, '租用品質維護不錯', 4, '2024-05-13 15:59:00'),
(33, 25, 0, 5, 0, '租用品質維護不錯  用起來得心應手', 5, '2024-05-14 13:45:00'),
(34, 2, 8, 0, 0, '很亮  看得喜歡!!', 5, '2024-05-15 13:45:00'),
(35, 2, 7, 0, 0, '很有效率  一下就收到了~', 4, '2024-04-16 13:45:00'),
(36, 3, 6, 0, 0, '你懂得 M3', 5, '2024-03-17 13:45:00'),
(37, 3, 5, 0, 0, '有點咬手  但無傷大雅~', 3, '2024-05-18 13:45:00'),
(38, 4, 4, 0, 0, '很亮  看得喜歡!!', 4, '2024-05-19 13:45:00'),
(39, 4, 3, 0, 0, '很有效率  一下就收到了~', 5, '2024-05-20 13:45:00'),
(40, 5, 2, 0, 0, '你懂得 M3', 5, '2024-05-01 13:45:00'),
(41, 5, 1, 0, 0, '客服應對得體', 5, '2024-05-01 13:45:00'),
(42, 6, 7, 0, 0, '體驗後不錯用   會繼續支持', 4, '2024-05-03 13:45:00'),
(43, 6, 8, 0, 0, '很亮  看得喜歡!!', 4, '2024-04-24 13:45:00'),
(44, 7, 5, 0, 0, '很有效率  一下就收到了~', 3, '2024-01-25 13:45:00'),
(45, 7, 6, 0, 0, '你懂得 M3', 3, '2024-02-26 13:45:00'),
(46, 8, 3, 0, 0, '很亮  看得喜歡!!', 5, '2024-03-27 13:45:00'),
(47, 8, 4, 0, 0, '很有效率  一下就收到了~', 5, '2024-03-28 13:45:00'),
(48, 9, 1, 0, 0, '你懂得 M3', 4, '2024-04-29 13:45:00'),
(49, 9, 2, 0, 0, '很亮  看得喜歡!!', 4, '2024-01-30 13:45:00'),
(50, 34, 0, 4, 0, '有點咬手  但無傷大雅~', 3, '2024-05-12 14:38:00'),
(51, 35, 0, 4, 0, '雖是租用，但看得出來有保養', 3, '2024-05-13 14:38:00'),
(52, 36, 0, 5, 0, '好用，拿起來感覺變高手', 5, '2024-05-14 14:38:00'),
(53, 37, 0, 5, 0, '租用品質維護不錯', 4, '2024-05-15 14:38:00'),
(54, 38, 0, 6, 0, '租用品質維護不錯', 4, '2024-05-16 14:38:00'),
(55, 39, 0, 6, 0, '有點咬手  但無傷大雅~', 3, '2024-05-17 14:38:00'),
(56, 40, 0, 7, 0, '雖是租用，但看得出來有保養', 3, '2024-05-18 14:38:00'),
(57, 43, 0, 7, 0, '好用，拿起來感覺變高手', 5, '2024-05-19 14:38:00'),
(58, 45, 0, 8, 0, '好用，拿起來感覺變高手', 5, '2024-05-20 14:38:00'),
(59, 47, 0, 8, 0, '租用品質維護不錯', 4, '2024-02-21 14:38:00'),
(60, 49, 0, 1, 0, '好用，拿起來感覺變高手', 5, '2024-02-22 14:38:00'),
(61, 51, 0, 2, 0, '雖是租用，但看得出來有保養', 4, '2024-02-23 14:38:00'),
(62, 53, 0, 3, 0, '有點咬手  但無傷大雅~', 3, '2024-02-24 14:38:00'),
(63, 55, 0, 4, 0, '好用，拿起來感覺變高手', 3, '2024-02-25 14:38:00'),
(64, 57, 0, 5, 0, '啥時有海外版  想要', 4, '2024-02-26 14:38:00'),
(65, 59, 0, 6, 0, '雖是租用，但看得出來有保養', 3, '2024-02-27 14:38:00'),
(66, 41, 0, 7, 0, '有點咬手  但無傷大雅~', 3, '2024-02-28 14:38:00'),
(67, 42, 0, 8, 0, '好用，拿起來感覺變高手', 5, '2024-03-28 13:45:00'),
(68, 44, 0, 0, 1, '餵球打起來特別爽', 5, '2024-01-01 22:45:00'),
(69, 46, 0, 0, 1, '教練人很好~', 4, '2024-01-02 21:45:00'),
(70, 48, 0, 0, 2, '餵球打起來特別爽', 5, '2024-01-03 21:45:00'),
(71, 50, 0, 0, 2, '太棒了~', 4, '2024-01-04 21:45:00'),
(72, 52, 0, 0, 3, '餵球打起來特別爽', 5, '2024-01-05 21:45:00'),
(73, 54, 0, 0, 3, '能打150KM的球  有夠爽', 5, '2024-01-06 21:45:00'),
(74, 56, 0, 0, 4, '餵球打起來特別爽', 5, '2024-01-07 21:45:00'),
(75, 58, 0, 0, 4, '能打150KM的球  有夠爽', 5, '2024-01-08 21:45:00'),
(76, 60, 0, 0, 5, '教練人很好~', 5, '2024-01-09 21:45:00'),
(77, 1, 0, 0, 5, '教練也會指導守備動作  吸收良多', 4, '2024-01-10 21:45:00'),
(78, 10, 0, 0, 6, '很扎實   會學到東西', 4, '2024-01-11 21:45:00'),
(79, 20, 0, 0, 6, '啥時可以跟健身房合作  感覺更有效率', 3, '2024-01-12 21:45:00'),
(80, 30, 0, 0, 7, '教練人很好~', 4, '2024-01-13 21:15:00'),
(81, 40, 0, 0, 7, '能幫家裡的孩子放放電  家長也能同樂', 4, '2024-01-14 21:45:00'),
(82, 50, 0, 0, 8, '教練人很好~', 5, '2024-01-15 21:45:00'),
(83, 5, 0, 0, 8, '能幫家裡的孩子放放電  家長也能同樂', 4, '2024-01-16 21:45:00'),
(84, 15, 0, 0, 1, '打得超爽', 5, '2024-01-17 13:45:00'),
(85, 25, 0, 0, 2, '機器很準   可以輕鬆練習內外角', 4, '2024-01-18 21:45:00'),
(86, 35, 0, 0, 3, '機器很準   可以輕鬆練習內外角', 4, '2024-01-19 12:45:00'),
(87, 45, 0, 0, 4, '機器很準   可以輕鬆練習內外角', 5, '2024-01-20 21:45:00'),
(88, 55, 0, 0, 5, '教練很有耐心  ', 4, '2024-01-21 17:45:00'),
(89, 11, 0, 0, 6, '小朋友要入科班推薦來上  很實用', 5, '2024-01-22 21:45:00'),
(90, 21, 0, 0, 7, '很適合小朋友入門', 4, '2024-01-23 21:45:00'),
(91, 31, 0, 0, 8, '很適合小朋友入門', 5, '2024-01-24 18:45:00'),
(92, 41, 0, 0, 8, '太棒了~', 4, '2024-01-25 18:45:00'),
(93, 51, 0, 0, 7, '太棒了~', 5, '2024-01-26 18:45:00'),
(94, 60, 0, 0, 6, '太棒了~', 5, '2024-01-27 18:45:00'),
(95, 22, 0, 0, 5, '太棒了~', 4, '2024-01-28 18:45:00'),
(96, 32, 0, 0, 4, '太棒了~', 4, '2024-01-29 18:45:00'),
(97, 42, 0, 0, 3, '太棒了~', 4, '2024-01-30 18:45:00'),
(98, 52, 0, 0, 2, '太棒了~', 5, '2024-01-31 18:45:00'),
(99, 33, 1, 0, 0, '球型不錯', 5, '2024-02-01 21:45:00'),
(100, 43, 2, 0, 0, '啥時提供代客湯揉服務阿', 4, '2024-02-02 21:45:00'),
(101, 53, 3, 0, 0, '美津濃鐵粉報到!!!!!', 5, '2024-02-03 21:45:00'),
(102, 13, 4, 0, 0, '美津濃鐵粉報到!!!!!', 5, '2024-02-04 21:45:00'),
(103, 23, 5, 0, 0, '美津濃鐵粉報到!!!!!', 5, '2024-02-05 21:45:00'),
(104, 14, 6, 0, 0, '美津濃鐵粉報到!!!!!', 5, '2024-02-06 21:45:00'),
(105, 24, 7, 0, 0, '美津濃鐵粉報到!!!!!', 5, '2024-02-07 21:45:00'),
(106, 34, 8, 0, 0, '很耐磨，練揮棒都不磨手了', 4, '2024-02-08 21:45:00'),
(107, 44, 0, 1, 0, '雖是租的，但保養得很好', 4, '2024-02-09 21:45:00'),
(108, 54, 0, 2, 0, '啥時提供日本最新版本讓我們體驗體驗呀~', 4, '2024-02-10 21:45:00'),
(109, 16, 0, 3, 0, '雖是租的，但保養得很好', 4, '2024-02-11 21:45:00'),
(110, 26, 0, 4, 0, '啥時提供日本最新版本讓我們體驗體驗呀~', 5, '2024-02-12 21:45:00'),
(111, 36, 0, 5, 0, '雖是租的，但保養得很好', 5, '2024-02-13 21:45:00'),
(112, 46, 0, 6, 0, '啥時提供日本最新版本讓我們體驗體驗呀~', 5, '2024-02-14 21:45:00'),
(113, 56, 0, 7, 0, '雖是租的，但保養得很好', 5, '2024-02-15 21:45:00'),
(114, 17, 0, 8, 0, '啥時提供日本最新版本讓我們體驗體驗呀~', 4, '2024-02-16 21:45:00'),
(115, 27, 0, 0, 1, '教練餵還能順便指導動作', 5, '2024-02-17 21:45:00'),
(116, 37, 0, 0, 2, '機器很順  不卡球', 4, '2024-02-18 21:45:00'),
(117, 47, 0, 0, 3, '機器很順  不卡球', 4, '2024-02-19 21:45:00'),
(118, 57, 0, 0, 4, '機器很順  不卡球', 4, '2024-02-20 21:45:00'),
(119, 19, 0, 0, 5, '教練LOGU練起來才有實戰感', 5, '2024-02-21 21:45:00'),
(120, 29, 0, 0, 6, '除了練棒球  想提升體能的都建議體驗看看', 5, '2024-02-22 21:45:00'),
(121, 39, 0, 0, 7, '讓小朋友來體驗  都愛上棒球了', 5, '2024-02-23 21:45:00'),
(122, 49, 0, 0, 8, '讓小朋友來體驗  都愛上棒球了', 5, '2024-02-24 21:45:00'),
(123, 59, 0, 0, 7, '小朋友來了都很開心', 5, '2024-02-25 21:45:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
