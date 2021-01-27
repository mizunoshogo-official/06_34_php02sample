-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 1 月 27 日 09:51
-- サーバのバージョン： 10.4.17-MariaDB
-- PHP のバージョン: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d07_34`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'phpの課題', '2020-12-24', '2021-01-27 13:43:01', '2021-01-27 13:43:01'),
(2, 'JSの課題', '2020-12-26', '2021-01-27 13:46:43', '2021-01-27 13:46:43'),
(3, 'クリスマス会の準備', '2020-12-23', '2021-01-27 13:47:26', '2021-01-27 13:47:26'),
(4, '年賀状作成', '2020-12-27', '2021-01-27 13:48:07', '2021-01-27 13:48:07'),
(5, '２０２１初授業', '2021-01-04', '2021-01-27 13:49:19', '2021-01-27 13:49:19'),
(6, 'おつまみを買う', '2020-12-19', '2021-01-27 13:49:43', '2021-01-27 13:49:43'),
(7, 'LT会', '2020-12-18', '2021-01-27 13:50:00', '2021-01-27 13:50:00'),
(8, 'LT会の準備', '2020-12-01', '2021-01-27 13:50:33', '2021-01-27 13:50:33'),
(9, 'php課題', '2021-01-08', '2021-01-27 13:51:14', '2021-01-27 13:51:14'),
(10, 'Jphp02_課題', '2021-01-06', '2021-01-27 13:51:42', '2021-01-27 13:51:42'),
(11, 'test', '2021-01-01', '2021-01-27 17:15:48', '2021-01-27 17:15:48'),
(12, 'test1', '2021-01-01', '2021-01-27 17:17:57', '2021-01-27 17:17:57'),
(13, 'test3', '2021-01-14', '2021-01-27 17:19:25', '2021-01-27 17:19:25');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
