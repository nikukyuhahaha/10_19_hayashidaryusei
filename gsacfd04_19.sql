-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2019 年 11 月 07 日 15:30
-- サーバのバージョン： 10.4.6-MariaDB
-- PHP のバージョン: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacfd04_19`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL,
  `genre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `child2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`, `genre`, `parent`, `child1`, `child2`) VALUES
(2, 'かぐや様は告らせたい', 'kaguya', 'yokatta\r\n', '2019-10-07 19:54:06', '冒険', '殿堂入り', '実物買いたい', NULL),
(3, 'a', 'a', 'a', '2019-10-07 20:54:52', 'a', '殿堂入り', '実物買いたい', 'a'),
(5, 'a', 'a', 'a', '2019-10-09 21:38:40', 'a', '完結済み', 'また読む', 'a'),
(6, 'a', 'a', 'a', '2019-10-09 21:39:04', 'a', '殿堂入り', 'ホラー', 'a'),
(9, '寄宿舎のジュリエット', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'めっちゃよかった', '2019-10-10 22:37:15', '学園', '連載中', '実物買いたいかも', NULL),
(10, 'a', 'a', 'a', '2019-10-10 22:37:35', 'a', '連載中', '実物買いたいかも', 'a'),
(11, '僕のヒーローアカデミア', 'ｗｗｗ', 'あああああ', '2019-10-10 22:46:17', 'ラブコメ', '殿堂入り', '買ってもいいかな', NULL),
(12, 'a', 'a', 'a', '2019-10-15 23:21:27', 'a', '完結済み', '買ってもいいかな', 'a'),
(13, '五等分の花嫁', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'よかったのです', '2019-10-15 23:40:26', '学園', '完結済み', '買ってもいいかな', NULL),
(14, 'キングダム', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'かっこええ', '2019-10-15 23:49:39', '冒険', '殿堂入り', '実物買いたい', NULL),
(15, 'ネウロ', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'こわい', '2019-10-15 23:51:49', 'ホラー', '完結済み', '買ってもいいかな', NULL),
(16, 'days', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'サッカー', '2019-10-15 23:52:58', 'ラブコメ', '連載中', '実物買いたいかも', NULL),
(18, 'メジャー', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'いいよい', '2019-10-15 23:59:49', '学園', '完結済み', 'また読む', NULL),
(19, 'あいうえお', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'ネタギッレ', '2019-10-16 00:01:34', 'ラブコメ', '完結済み', 'また読む', NULL),
(20, '僕のヒーローアカデミア', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'おいおいおい', '2019-10-16 00:16:29', 'ヒーロー', '完結済み', '買ってもいいかな', NULL),
(21, 'gs', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'いいものできた？', '2019-10-16 00:23:32', 'ラブコメ', '殿堂入り', 'ホラー', NULL),
(22, 'gsa', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'そろそろ', '2019-10-16 00:24:11', 'ヒーロー', '殿堂入り', 'ホラー', NULL),
(23, 'gsac', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'くうう', '2019-10-16 00:24:54', 'ラブコメ', '殿堂入り', 'ホラー', NULL),
(24, 'gsacade', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'くううううううう', '2019-10-16 00:28:14', 'ラブコメ', '殿堂入り', 'ホラー', NULL),
(25, 'くおおおおおお', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'びみょ', '2019-10-16 00:30:32', 'ラブコメ', '殿堂入り', 'ホラー', NULL),
(26, 'できへん', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'ああああああああああああ', '2019-10-16 00:39:54', 'ラブコメ', '殿堂入り', 'ホラー', NULL),
(27, 'gsacade', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'わから', '2019-10-16 00:51:35', 'ラブコメ', '殿堂入り', 'ホラー', NULL),
(28, 'やけくそ', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'あああああ', '2019-10-16 00:56:09', 'ラブコメ', '殿堂入り', 'ホラー', NULL),
(29, 'こんどこそ', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', '学園', '2019-10-16 00:56:50', 'ホラー', '完結済み', '買ってもいいかな', NULL),
(30, 'できたけどphpでは？', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'ああああ', '2019-10-16 00:59:01', 'ラブコメ', '殿堂入り', 'ホラー', NULL),
(31, 'かんけｔ', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'ああああああくそそ', '2019-10-16 01:00:17', 'ラブコメ', '完結済み', '買ってもいいかな', NULL),
(33, '柿木　優希', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'ｋｐｊっｐ', '2019-10-16 01:15:25', 'ラブコメ', '完結済み', '買ってもいいかな', NULL),
(35, 'バキ', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'つよい', '2019-10-19 14:24:30', 'ヒーロー', '完結済み', '買ってもいいかな', NULL),
(36, 'a', 'a', 'a', '2019-10-19 14:25:24', 'a', '完結済み', '戦闘', 'a'),
(37, 'にくきゅうははは', 'https://www.youtube.com/watch?v=Id2a2gbW1Zs', 'っっっっっっっｓ', '2019-10-19 14:28:44', 'ラブコメ', '殿堂入り', 'ホラー', NULL),
(38, 'a', 'a', 'a', '2019-10-26 14:20:22', 'a', '完結済み', 'ああああああああ', 'a');

-- --------------------------------------------------------

--
-- テーブルの構造 `janken`
--

CREATE TABLE `janken` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `result` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `janken`
--

INSERT INTO `janken` (`id`, `name`, `result`, `indate`) VALUES
(1, 'CK Japan', '1勝2敗', '2019-11-04 00:56:39');

-- --------------------------------------------------------

--
-- テーブルの構造 `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `image`, `indate`) VALUES
(1, 'gs', '2019-10-05', 'aiu', NULL, '2019-10-05 16:00:19'),
(2, 'gs2', '2019-10-05', 'aiu', NULL, '2019-10-05 16:13:11'),
(3, 'yoyoyo', '2019-10-05', 'aiu', NULL, '2019-10-05 16:13:34'),
(4, 'guuuuuuuus', '2019-10-05', 'aiu', NULL, '2019-10-05 16:13:47'),
(5, 'かいもの', '2019-08-08', 'なんｄねやねん', NULL, '2019-10-05 16:17:51'),
(6, 'かいもの', '2019-12-08', 'なんｄねやねん', NULL, '2019-10-05 16:18:16'),
(7, 'aaaaaaa', '2019-10-24', 'aaaa', NULL, '2019-10-05 17:01:40'),
(8, 'いいいいいいい', '2019-12-31', 'aiue\r\n\r\n', NULL, '2019-10-07 14:41:01'),
(9, 'やきいんも', '2019-01-06', 'やるはｎ', 'upload/20191026084529d41d8cd98f00b204e9800998ecf8427e.png', '2019-10-26 15:45:29'),
(10, 'aaaaaaa', '2017-01-30', 'あああああああああ', NULL, '2019-10-26 17:24:50'),
(11, 'aaaaa', '2019-11-30', 'できた', NULL, '2019-10-26 17:28:13');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, '林田　隆成', 'kanri', 'kanri', 1, 0),
(2, 'にくきゅうははは', 'ippan', 'ippan', 0, 0),
(3, '大会くん', 'taikai', 'taikai', 0, 1);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `janken`
--
ALTER TABLE `janken`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `php02_table`
--
ALTER TABLE `php02_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- テーブルのAUTO_INCREMENT `janken`
--
ALTER TABLE `janken`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- テーブルのAUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
