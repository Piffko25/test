-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Фев 23 2022 г., 14:16
-- Версия сервера: 5.7.34-0ubuntu0.18.04.1
-- Версия PHP: 7.3.33-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Lawzilla`
--

-- --------------------------------------------------------

--
-- Структура таблицы `action_events`
--

CREATE TABLE `action_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` text COLLATE utf8mb4_unicode_ci,
  `changes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_code` int(10) UNSIGNED NOT NULL,
  `vat_rate` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name`, `phone_code`, `vat_rate`, `created_at`, `updated_at`) VALUES
(1, 'Abkhazia', 7, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(2, 'Afghanistan', 93, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(3, 'Ajaria', 995, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(4, 'Akrotiri and Dhekelia', 357, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(5, 'Albania', 355, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(6, 'Algeria', 213, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(7, 'American Samoa', 1684, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(8, 'Andorra', 376, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(9, 'Angola', 244, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(10, 'Anguilla', 1264, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(11, 'Antigua and Barbuda', 1268, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(12, 'Argentina', 54, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(13, 'Armenia', 374, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(14, 'Aruba', 297, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(15, 'Australia', 61, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(16, 'Austria', 43, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(17, 'Azerbaijan', 994, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(18, 'Bahamas', 1242, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(19, 'Bahrain', 973, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(20, 'Bangladesh', 880, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(21, 'Barbados', 1246, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(22, 'Belarus', 375, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(23, 'Belgium', 32, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(24, 'Belize', 501, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(25, 'Benin', 229, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(26, 'Bermuda', 1441, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(27, 'Bhutan', 975, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(28, 'Bolivia', 591, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(29, 'Bosnia and Herzegovina', 387, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(30, 'Botswana', 267, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(31, 'Brazil', 55, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(32, 'British Antarctic Territory', 0, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(33, 'British Indian Ocean Territory', 246, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(34, 'British Virgin Islands', 1284, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(35, 'Brunei', 673, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(36, 'Bulgaria', 359, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(37, 'Burkina Faso', 226, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(38, 'Burma', 95, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(39, 'Burundi', 257, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(40, 'Cambodia', 855, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(41, 'Cameroon', 237, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(42, 'Canada', 1, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(43, 'Cape Verde', 238, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(44, 'Cayman Islands', 1345, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(45, 'Central African Republic', 236, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(46, 'Chad', 235, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(47, 'Chile', 56, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(48, 'China', 86, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(49, 'Christmas Island', 61, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(50, 'Cocos (Keeling) Islands', 61, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(51, 'Colombia', 57, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(52, 'Comoros', 269, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(53, 'Congo-Brazzaville', 242, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(54, 'Congo-Kinshasa', 243, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(55, 'Cook Islands', 682, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(56, 'Costa Rica', 506, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(57, 'Cote d\'Ivoire', 225, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(58, 'Crimea', 380, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(59, 'Croatia', 385, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(60, 'Cuba', 53, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(61, 'Cyprus', 357, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(62, 'Czech Republic', 420, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(63, 'Denmark', 45, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(64, 'Djibouti', 253, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(65, 'Dominica', 1767, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(66, 'Dominican Republic', 1809, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(67, 'East Timor', 670, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(68, 'Ecuador', 593, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(69, 'Egypt', 20, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(70, 'El Salvador', 503, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(71, 'Equatorial Guinea', 240, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(72, 'Eritrea', 291, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(73, 'Estonia', 372, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(74, 'Ethiopia', 251, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(75, 'Falkland Islands', 500, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(76, 'Faroe Islands', 298, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(77, 'Federated States of Micronesia', 691, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(78, 'Fiji', 679, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(79, 'Finland', 358, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(80, 'France', 33, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(81, 'French Southern and Antarctic Lands', 262, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(82, 'Gabon', 241, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(83, 'Gambia', 220, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(84, 'Georgia', 995, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(85, 'Germany', 49, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(86, 'Ghana', 233, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(87, 'Gibraltar', 350, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(88, 'Greece', 30, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(89, 'Greenland', 299, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(90, 'Grenada', 1473, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(91, 'Guam', 1671, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(92, 'Guatemala', 502, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(93, 'Guinea', 224, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(94, 'Guinea-Bissau', 245, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(95, 'Guyana', 592, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(96, 'Haiti', 509, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(97, 'Honduras', 504, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(98, 'Hong Kong', 852, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(99, 'Hungary', 36, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(100, 'Iceland', 354, NULL, '2022-02-23 10:15:46', '2022-02-23 10:15:46'),
(101, 'India', 91, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(102, 'Indonesia', 62, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(103, 'Iran', 98, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(104, 'Iraq', 964, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(105, 'Ireland', 353, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(106, 'Israel', 972, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(107, 'Italy', 39, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(108, 'Jamaica', 1876, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(109, 'Japan', 81, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(110, 'Jordan', 962, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(111, 'Karakalpakstan', 998, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(112, 'Kazakhstan', 7, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(113, 'Kenya', 254, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(114, 'Kiribati', 686, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(115, 'Kosovo', 381, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(116, 'Kuwait', 965, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(117, 'Kyrgyzstan', 996, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(118, 'Laos', 856, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(119, 'Latvia', 371, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(120, 'Lebanon', 961, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(121, 'Lesotho', 266, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(122, 'Liberia', 231, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(123, 'Libya', 218, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(124, 'Liechtenstein', 423, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(125, 'Lithuania', 370, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(126, 'Luxembourg', 352, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(127, 'Macau', 853, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(128, 'Macedonia', 389, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(129, 'Madagascar', 261, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(130, 'Malawi', 265, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(131, 'Malaysia', 60, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(132, 'Maldives', 960, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(133, 'Mali', 223, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(134, 'Malta', 356, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(135, 'Marshall Islands', 692, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(136, 'Mauritania', 222, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(137, 'Mauritius', 230, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(138, 'Mayotte', 262, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(139, 'Mexico', 52, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(140, 'Moldova', 373, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(141, 'Monaco', 377, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(142, 'Mongolia', 976, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(143, 'Montenegro', 382, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(144, 'Montserrat', 1664, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(145, 'Morocco', 212, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(146, 'Mozambique', 258, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(147, 'Nagorno-Karabakh Republic', 374, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(148, 'Namibia', 264, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(149, 'Nauru', 674, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(150, 'Nepal', 977, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(151, 'Netherlands', 31, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(152, 'Netherlands Antilles', 599, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(153, 'New Caledonia', 687, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(154, 'New Zealand', 64, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(155, 'Nicaragua', 505, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(156, 'Niger', 227, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(157, 'Nigeria', 234, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(158, 'Niue', 683, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(159, 'Norfolk Island', 672, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(160, 'North Korea', 850, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(161, 'Northern Cyprus', 90392, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(162, 'Northern Mariana Islands', 1670, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(163, 'Norway', 47, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(164, 'Oman', 968, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(165, 'Pakistan', 92, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(166, 'Palau', 680, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(167, 'Palestine', 970, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(168, 'Panama', 507, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(169, 'Papua New Guinea', 675, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(170, 'Paraguay', 595, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(171, 'Peru', 51, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(172, 'Philippines', 63, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(173, 'Pitcairn Islands', 870, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(174, 'Poland', 48, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(175, 'Polynesia', 689, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(176, 'Portugal', 351, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(177, 'Puerto Rico', 1, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(178, 'Qatar', 974, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(179, 'Romania', 40, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(180, 'Russia', 7, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(181, 'Rwanda', 250, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(182, 'Saint Barthelemy', 590, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(183, 'Saint Helena', 290, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(184, 'Saint Kitts and Nevis', 1869, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(185, 'Saint Lucia', 1758, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(186, 'Saint Martin', 1599, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(187, 'Saint Pierre and Miquelon', 508, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(188, 'Saint Vincent and the Grenadines', 1784, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(189, 'Samoa', 685, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(190, 'San Marino', 378, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(191, 'Sao Tome and Principe', 239, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(192, 'Saudi Arabia', 966, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(193, 'Senegal', 221, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(194, 'Serbia', 381, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(195, 'Seychelles', 248, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(196, 'Sierra Leone', 232, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(197, 'Singapore', 65, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(198, 'Slovakia', 421, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(199, 'Slovenia', 386, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(200, 'Solomon Islands', 677, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(201, 'Somalia', 252, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(202, 'Somaliland', 252, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(203, 'South Africa', 27, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(204, 'South Georgia and the South Sandwich Islands', 500, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(205, 'South Korea', 82, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(206, 'South Ossetia', 99534, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(207, 'Spain', 34, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(208, 'Sri Lanka', 94, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(209, 'Sudan', 249, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(210, 'Suriname', 597, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(211, 'Swaziland', 268, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(212, 'Sweden', 46, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(213, 'Switzerland', 41, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(214, 'Syria', 963, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(215, 'Taiwan', 886, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(216, 'Tajikistan', 992, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(217, 'Tanzania', 255, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(218, 'Thailand', 66, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(219, 'Togo', 228, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(220, 'Tokelau', 690, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(221, 'Tonga', 676, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(222, 'Transnistria', 373, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(223, 'Trinidad and Tobago', 1868, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(224, 'Tunisia', 216, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(225, 'Turkey', 90, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(226, 'Turkmenistan', 993, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(227, 'Turks and Caicos Islands', 1649, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(228, 'Tuvalu', 688, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(229, 'Uganda', 256, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(230, 'Ukraine', 380, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(231, 'United Arab Emirates', 971, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(232, 'United Kingdom', 44, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(233, 'United States', 1, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(234, 'United States Virgin Islands', 1340, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(235, 'Uruguay', 598, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(236, 'Uzbekistan', 998, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(237, 'Vanuatu', 678, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(238, 'Vatican City', 379, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(239, 'Venezuela', 58, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(240, 'Vietnam', 84, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(241, 'Wallis and Futuna', 681, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(242, 'Western Sahara', 212, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(243, 'Yemen', 967, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(244, 'Zambia', 260, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47'),
(245, 'Zimbabwe', 263, NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `sorting` int(10) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `faq_items`
--

CREATE TABLE `faq_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `sorting` int(10) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `key` text COLLATE utf8mb4_bin NOT NULL,
  `value` text COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `mails`
--

CREATE TABLE `mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `media_categories`
--

CREATE TABLE `media_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `sorting` int(10) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `sorting` int(10) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `type`, `name`, `slug`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Main', 'main', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `link_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inherited` tinyint(1) NOT NULL DEFAULT '1',
  `sorting` int(10) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `page_id`, `type`, `link_name`, `url`, `inherited`, `sorting`, `created_by`, `created_at`, `updated_at`, `_lft`, `_rgt`, `parent_id`) VALUES
(1, 1, NULL, 1, 'Home', '#slider', 1, 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 1, 2, NULL),
(2, 1, NULL, 1, 'Features', '#quotes', 1, 2, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 3, 4, NULL),
(3, 1, NULL, 1, 'Blog', '#posts', 1, 3, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 5, 6, NULL),
(4, 1, NULL, 1, 'Team', '#users', 1, 4, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 7, 8, NULL),
(5, 1, NULL, 1, 'Gallery', '#media', 1, 5, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 9, 10, NULL),
(6, 1, NULL, 1, 'Faq', '#faqs', 1, 6, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 11, 12, NULL),
(7, 1, NULL, 1, 'Contacts', '#contacts', 1, 7, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 13, 14, NULL),
(8, 1, 4, 0, 'Register', NULL, 1, 8, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 15, 16, NULL),
(9, 1, 7, 0, 'Login', NULL, 1, 9, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 17, 18, NULL),
(10, 1, 9, 0, 'My profile', NULL, 1, 10, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 19, 24, NULL),
(11, 1, 9, 0, 'My Profile', NULL, 1, 11, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 20, 21, 10),
(12, 1, 10, 0, 'Edit Profile', NULL, 1, 12, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 22, 23, 10),
(13, 1, 8, 0, 'Logout', NULL, 1, 13, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48', 25, 26, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(141, '2014_04_02_193005_create_translations_table', 1),
(142, '2018_01_01_000000_create_action_events_table', 1),
(143, '2018_08_08_100000_create_telescope_entries_table', 1),
(144, '2019_05_10_000000_add_fields_to_action_events_table', 1),
(145, '2020_01_01_000001_create_failed_jobs_table', 1),
(146, '2020_01_01_000002_create_countries_table', 1),
(147, '2020_01_01_000003_create_users_table', 1),
(148, '2020_01_01_000004_create_settings_table', 1),
(149, '2020_01_01_000005_create_units_table', 1),
(150, '2020_01_01_000006_create_password_resets_table', 1),
(151, '2020_01_01_000007_create_permissions_table', 1),
(152, '2020_01_01_000008_create_roles_table', 1),
(153, '2020_01_01_000009_create_role_permission_table', 1),
(154, '2020_01_01_000010_create_role_user_table', 1),
(155, '2020_01_01_000011_create_page_categories_table', 1),
(156, '2020_01_01_000012_create_pages_table', 1),
(157, '2020_01_01_000013_create_snippets_table', 1),
(158, '2020_01_01_000014_create_snippet_pages_table', 1),
(159, '2020_01_01_000015_create_menus_table', 1),
(160, '2020_01_01_000016_create_menu_items_table', 1),
(161, '2020_01_01_000017_create_media_categories_table', 1),
(162, '2020_01_01_000018_create_media_files_table', 1),
(163, '2020_01_01_000019_create_sliders_table', 1),
(164, '2020_01_01_000020_create_mails_table', 1),
(165, '2020_01_01_000021_create_faq_categories_table', 1),
(166, '2020_01_01_000022_create_faq_items_table', 1),
(167, '2020_01_01_000023_create_quotes_table', 1),
(168, '2022_02_11_085552_create_referrals_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `link_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(10) UNSIGNED DEFAULT NULL,
  `visible` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `parent_id`, `link_name`, `slug`, `image`, `content`, `title`, `meta_keywords`, `meta_description`, `header`, `sorting`, `visible`, `created_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Main', 'index', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, NULL, NULL, NULL, 1, 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(2, NULL, 'Company', 'company', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, NULL, NULL, NULL, 2, 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(3, NULL, 'Contacts', 'contact', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(4, NULL, 'Register', 'register', NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(5, NULL, 'Reset Password', 'profile/request-password-reset', NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(6, NULL, 'Reset Password', 'profile/password', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(7, NULL, 'Login', 'login', NULL, NULL, NULL, NULL, NULL, NULL, 7, 3, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(8, NULL, 'Logout', 'logout', NULL, NULL, NULL, NULL, NULL, NULL, 8, 2, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(9, NULL, 'My Profile', 'profile', NULL, NULL, NULL, NULL, NULL, NULL, 9, 2, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(10, NULL, 'Edit Profile', 'profile/edit', NULL, NULL, NULL, NULL, NULL, NULL, 10, 2, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(11, NULL, 'Blog', 'blog', NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(12, NULL, 'Blog Post', 'blog/post', NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(13, NULL, 'Gallery', 'gallery/index', NULL, NULL, NULL, NULL, NULL, NULL, 13, 0, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(14, NULL, 'Faq', 'faq/index', NULL, NULL, NULL, NULL, NULL, NULL, 14, 0, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48');

-- --------------------------------------------------------

--
-- Структура таблицы `page_categories`
--

CREATE TABLE `page_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `sorting` int(10) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `page_categories`
--

INSERT INTO `page_categories` (`id`, `name`, `slug`, `visible`, `sorting`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Blog', 'blog', 1, 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `sorting` int(10) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bar_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_interest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 1, '2022-02-23 10:15:47', '2022-02-23 10:15:48'),
(2, 'Editor', 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(3, 'Author', 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(4, 'User', 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(5, 'Demo', 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(6, 'Team', 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48');

-- --------------------------------------------------------

--
-- Структура таблицы `role_permission`
--

CREATE TABLE `role_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `value_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `type`, `value_type`, `title`, `key`, `value`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Default Site Title', 'site_title', 'Company Site', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(2, 1, 0, 'Default Meta Keywords', 'site_meta_keywords', 'Company Site', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(3, 1, 0, 'Default Meta Description', 'site_meta_description', 'Company Site', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(4, 1, 0, 'Administrator Email', 'admin_email', 'admin@gmail.com', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(5, 1, 0, 'Administrator Name', 'admin_name', 'Admin Name', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(6, 0, 0, 'Organization Name', 'contact_name', 'Organization Name', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(7, 0, 0, 'Organization Address', 'contact_address', 'Organization Address', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(8, 0, 0, 'Organization Phone', 'contact_phone', '+1-234-567890', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(9, 0, 0, 'Organization Mail', 'contact_email', 'organization@gmail.com', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(10, 0, 0, 'Organization Fax', 'contact_fax', '+1-234-567890', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(11, 0, 0, 'Organization Twitter', 'contact_twitter', 'https://twitter.com/', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(12, 0, 0, 'Organization Web-Site', 'contact_site', 'http://website.com/', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(13, 0, 0, 'Organization Skype', 'contact_skype', 'organization_skype', 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forward_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `button_caption` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(10) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `snippets`
--

CREATE TABLE `snippets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `location` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `snippet_pages`
--

CREATE TABLE `snippet_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `snippet_id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '95ab0ade-5cae-44fe-9b93-765b365ae755', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'Lawzilla\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"0.63\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:42'),
(2, '95ab0ade-5e0c-4a42-9efb-28eb56c1380d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.40\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:42'),
(3, '95ab0ade-61e9-43fc-869f-c4c16744b3a8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `referrals`\",\"time\":\"7.27\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2022_02_11_085552_create_referrals_table.php\",\"line\":33,\"hash\":\"cd35f5f787c8615dd5498cabd5341ffb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:42'),
(4, '95ab0ade-6385-40a5-bce3-6cc005802b81', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2022_02_11_085552_create_referrals_table\'\",\"time\":\"3.49\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:42'),
(5, '95ab0ade-668c-4554-b744-d89ae5656ab0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `quotes`\",\"time\":\"6.68\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000023_create_quotes_table.php\",\"line\":39,\"hash\":\"df3b8e381bb281e2ea747e1f81dee2a9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:42'),
(6, '95ab0ade-690f-4496-94bf-5b8ac065aa86', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000023_create_quotes_table\'\",\"time\":\"4.25\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:42'),
(7, '95ab0ade-6e93-4446-9e54-d36b6877c4d9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `faq_items`\",\"time\":\"11.61\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000022_create_faq_items_table.php\",\"line\":41,\"hash\":\"ab89a475f3a2a2056123c6d3daa6233f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:42'),
(8, '95ab0ade-714b-4f08-9ed5-6b10abf496aa', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000022_create_faq_items_table\'\",\"time\":\"4.65\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:42'),
(9, '95ab0ade-7690-4888-af44-ae2d59417e0f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `faq_categories`\",\"time\":\"10.99\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000021_create_faq_categories_table.php\",\"line\":39,\"hash\":\"c77ed3d5fd9c63d9c30b63ce62b2cd90\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:42'),
(10, '95ab0ade-78d7-428b-81c4-bdbd2d8afc4d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000021_create_faq_categories_table\'\",\"time\":\"3.59\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:42'),
(11, '95ab0ade-7f85-44ea-8472-e2425351e6f7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `mails`\",\"time\":\"14.56\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000020_create_mails_table.php\",\"line\":34,\"hash\":\"4b0a3b13eac40dc4b08a58c5eaa7e2f4\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(12, '95ab0ade-81ca-41e7-8edf-4a956765bb77', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000020_create_mails_table\'\",\"time\":\"3.61\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(13, '95ab0ade-8757-4cf3-90ae-44bf85d4db71', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `sliders`\",\"time\":\"11.77\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000019_create_sliders_table.php\",\"line\":46,\"hash\":\"42c6c86777967e0e3f3292a7e1c1108e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(14, '95ab0ade-89e7-4ee1-b9d1-3ea6d3160953', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000019_create_sliders_table\'\",\"time\":\"4.38\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(15, '95ab0ade-8e26-438d-9042-61927bd2b827', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `media_files`\",\"time\":\"8.36\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000018_create_media_files_table.php\",\"line\":40,\"hash\":\"097fef20a7601519efc138c6d6d61708\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(16, '95ab0ade-908d-4ac1-83b6-d07d01bb705c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000018_create_media_files_table\'\",\"time\":\"3.88\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(17, '95ab0ade-9628-4f43-ab88-6a19b7176768', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `media_categories`\",\"time\":\"11.79\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000017_create_media_categories_table.php\",\"line\":39,\"hash\":\"1e4e119faf12cd951aec6b580d59ed6d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(18, '95ab0ade-986e-44d5-a2c6-721a4adf016d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000017_create_media_categories_table\'\",\"time\":\"3.53\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(19, '95ab0ade-9eef-468a-9488-cf2702c6518c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `menu_items`\",\"time\":\"14.12\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000016_create_menu_items_table.php\",\"line\":48,\"hash\":\"cbe03514d2b3bb3b4de0680f3e80649e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(20, '95ab0ade-a131-45c3-a1a9-69c7d1d85152', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000016_create_menu_items_table\'\",\"time\":\"3.52\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(21, '95ab0ade-a686-4c6d-9a80-ef71a8217d62', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `menus`\",\"time\":\"11.11\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000015_create_menus_table.php\",\"line\":37,\"hash\":\"641548bfc3b27a6a586999c28b3658eb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(22, '95ab0ade-a8cb-4178-8a66-f97d87adcca9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000015_create_menus_table\'\",\"time\":\"3.65\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(23, '95ab0ade-ae8c-42b2-a8f2-ff61987de42f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `snippet_pages`\",\"time\":\"12.25\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000014_create_snippet_pages_table.php\",\"line\":40,\"hash\":\"fff25a26fc148ecfa2905757a6e88d9e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(24, '95ab0ade-b11b-477f-84b1-c22897ad3ff9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000014_create_snippet_pages_table\'\",\"time\":\"4.33\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(25, '95ab0ade-b67d-4b8e-8f1b-19e119142c5c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `snippets`\",\"time\":\"11.34\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000013_create_snippets_table.php\",\"line\":37,\"hash\":\"4c52cb6ab40babd2702789cc73530d91\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(26, '95ab0ade-b76a-46b5-b068-c3e93b293430', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `snippets`\",\"time\":\"0.81\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000013_create_snippets_table.php\",\"line\":40,\"hash\":\"4c52cb6ab40babd2702789cc73530d91\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(27, '95ab0ade-ba04-4fbf-987b-7093f3d2bfeb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000013_create_snippets_table\'\",\"time\":\"4.48\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(28, '95ab0ade-bfa7-47d5-b6cc-8c5fc56fed48', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `pages`\",\"time\":\"11.93\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000012_create_pages_table.php\",\"line\":46,\"hash\":\"9aef55ff781c1b32ba70cf4f5a70a456\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(29, '95ab0ade-c215-4bc7-b903-b84daacef7c0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000012_create_pages_table\'\",\"time\":\"3.99\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(30, '95ab0ade-c777-4745-b0e0-13e3ee107ae1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `page_categories`\",\"time\":\"11.27\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000011_create_page_categories_table.php\",\"line\":38,\"hash\":\"57bd13db34c191a1d59ae0523247e6a4\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(31, '95ab0ade-c9b9-47de-946c-7c4df73e0402', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000011_create_page_categories_table\'\",\"time\":\"3.53\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(32, '95ab0ade-cf6d-43f0-bd25-46eacc8fe3ab', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `role_user`\",\"time\":\"12.05\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000010_create_role_user_table.php\",\"line\":38,\"hash\":\"1812ae891629b3dfef67b205dbd8585b\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(33, '95ab0ade-d1b4-4ab6-98c2-817701d6e30d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000010_create_role_user_table\'\",\"time\":\"3.57\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(34, '95ab0ade-d704-4585-a7bf-e76560a4ca7a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `role_permission`\",\"time\":\"11.00\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000009_create_role_permission_table.php\",\"line\":38,\"hash\":\"054429770a615094682dfef201f9e552\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(35, '95ab0ade-d945-4412-af70-813da9129d31', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000009_create_role_permission_table\'\",\"time\":\"3.51\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(36, '95ab0ade-de88-42d5-a48a-9843dab98f7f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `roles`\",\"time\":\"10.88\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000008_create_roles_table.php\",\"line\":36,\"hash\":\"43b5cf15f69186fb69d10dc06ce224cd\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(37, '95ab0ade-e0c8-4eb7-ae92-665a08608257', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000008_create_roles_table\'\",\"time\":\"3.45\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(38, '95ab0ade-e737-441b-b4d4-3d59e95cbef2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `permissions`\",\"time\":\"14.15\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000007_create_permissions_table.php\",\"line\":37,\"hash\":\"18807ec1efeb987adbee2f64fdd94568\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(39, '95ab0ade-e8fb-4100-83ed-573c6064691f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000007_create_permissions_table\'\",\"time\":\"3.08\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(40, '95ab0ade-ecaf-4f56-ba54-52330b7f410d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `password_resets`\",\"time\":\"8.17\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000006_create_password_resets_table.php\",\"line\":30,\"hash\":\"0f19d2481474dbc2d5789e7ff4e6fc77\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(41, '95ab0ade-ee5a-4f1b-9692-2c40d2a5b717', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000006_create_password_resets_table\'\",\"time\":\"3.40\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(42, '95ab0ade-f147-4eab-bed0-8c75374c81cc', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `units`\",\"time\":\"6.61\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000005_create_units_table.php\",\"line\":38,\"hash\":\"10b5c197c07d3821fe95647d9e67d054\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(43, '95ab0ade-f2f0-40bf-bcc0-b5d66f425379', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000005_create_units_table\'\",\"time\":\"3.54\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(44, '95ab0ade-f5ba-49de-ae99-3c569445ea5d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `settings`\",\"time\":\"6.47\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000004_create_settings_table.php\",\"line\":39,\"hash\":\"fecece40aa8c52aace47e895d298b103\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(45, '95ab0ade-f696-41dd-a85c-84b917def748', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000004_create_settings_table\'\",\"time\":\"1.67\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(46, '95ab0ade-f9d6-4058-8651-6bf9748212bc', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `users`\",\"time\":\"7.77\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000003_create_users_table.php\",\"line\":53,\"hash\":\"f6ddcf4de1eb548a5650c082714b7223\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(47, '95ab0ade-fbb0-4558-8529-f57345db0832', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000003_create_users_table\'\",\"time\":\"3.45\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(48, '95ab0adf-0119-4aef-b0e9-ed1ce41267bb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `countries`\",\"time\":\"11.30\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000002_create_countries_table.php\",\"line\":34,\"hash\":\"2a80a0379aef8030a85d016f5982111d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(49, '95ab0adf-0341-4128-bbea-23224f680a2f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000002_create_countries_table\'\",\"time\":\"3.28\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(50, '95ab0adf-07a1-4203-b861-7c8d8fe5e676', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `failed_jobs`\",\"time\":\"8.71\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000001_create_failed_jobs_table.php\",\"line\":33,\"hash\":\"07eda76d9bdd9b08e735c0b2a92a6c88\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(51, '95ab0adf-0a2f-4300-91ae-ab70caefff5b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2020_01_01_000001_create_failed_jobs_table\'\",\"time\":\"4.24\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(52, '95ab0adf-1c28-4628-a9f7-f68894ed47e0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `action_events` drop `original`, drop `changes`\",\"time\":\"43.28\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/nova\\/database\\/migrations\\/2019_05_10_000000_add_fields_to_action_events_table.php\",\"line\":31,\"hash\":\"511f47ba0584becd56c750d9f91cef29\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(53, '95ab0adf-1e5d-4fc0-919a-626cba454d85', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2019_05_10_000000_add_fields_to_action_events_table\'\",\"time\":\"3.41\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(54, '95ab0adf-2387-4220-8e48-8ce32aa4eba9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `telescope_entries_tags`\",\"time\":\"10.16\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"48c7503ca003260b5d7b49b69c32e629\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(55, '95ab0adf-2a37-475a-a8d2-2bc9f6127443', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `telescope_entries`\",\"time\":\"15.15\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"3099636654c39794818dc5406e9671de\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(56, '95ab0adf-3046-4a38-b498-503a5848b6af', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `telescope_monitoring`\",\"time\":\"13.52\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"ff4b292b483cb388d75b5b85e3cd0ce6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(57, '95ab0adf-32ce-4669-8c9d-ea7655911bdd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2018_08_08_100000_create_telescope_entries_table\'\",\"time\":\"4.25\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(58, '95ab0adf-380f-4fe2-ad98-11b35a3ed588', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `action_events`\",\"time\":\"10.92\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/nova\\/database\\/migrations\\/2018_01_01_000000_create_action_events_table.php\",\"line\":44,\"hash\":\"d5716d95ddf1bef1867879b4a473bee8\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(59, '95ab0adf-3a93-41f6-a231-4f56863e8b30', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2018_01_01_000000_create_action_events_table\'\",\"time\":\"4.19\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(60, '95ab0adf-3fda-4780-a67b-346b3ee186ef', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table `ltm_translations`\",\"time\":\"10.98\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2014_04_02_193005_create_translations_table.php\",\"line\":35,\"hash\":\"00ee6b9e91deed9a7a74362f36bb47c6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(61, '95ab0adf-4264-4fa1-86a7-02e2e909b6f3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `migrations` where `migration` = \'2014_04_02_193005_create_translations_table\'\",\"time\":\"4.27\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"dfbd60cce18ac64c66053ed47bfa86b6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(62, '95ab0adf-4478-4421-a2cd-c8601630932e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'Lawzilla\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"1.55\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(63, '95ab0adf-4619-4a67-b91e-14ed0ebc3964', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"1.01\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(64, '95ab0adf-4799-4347-8dfc-a420c581548a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"1.02\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(65, '95ab0adf-5140-4d1e-9df6-e55f5e23cd88', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `ltm_translations` (`id` bigint unsigned not null auto_increment primary key, `status` int not null default \'0\', `locale` varchar(255) not null, `group` varchar(255) not null, `key` text not null, `value` text null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_bin\'\",\"time\":\"20.36\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2014_04_02_193005_create_translations_table.php\",\"line\":25,\"hash\":\"4da1ae1a0ff5b25b6d988d3538f585ce\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(66, '95ab0adf-5355-41b7-929a-2be8b96faea8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2014_04_02_193005_create_translations_table\', 1)\",\"time\":\"3.12\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(67, '95ab0adf-5e91-45f0-ba34-e369ccee048e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `action_events` (`id` bigint unsigned not null auto_increment primary key, `batch_id` char(36) not null, `user_id` bigint unsigned not null, `name` varchar(255) not null, `actionable_type` varchar(255) not null, `actionable_id` bigint unsigned not null, `target_type` varchar(255) not null, `target_id` bigint unsigned not null, `model_type` varchar(255) not null, `model_id` bigint unsigned null, `fields` text not null, `status` varchar(25) not null default \'running\', `exception` text not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"22.77\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/nova\\/database\\/migrations\\/2018_01_01_000000_create_action_events_table.php\",\"line\":34,\"hash\":\"efa50497caf90074d1340f0cdb4355ed\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(68, '95ab0adf-6594-4201-9cbf-8a371817224a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `action_events` add index `action_events_actionable_type_actionable_id_index`(`actionable_type`, `actionable_id`)\",\"time\":\"16.45\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/nova\\/database\\/migrations\\/2018_01_01_000000_create_action_events_table.php\",\"line\":34,\"hash\":\"66bb5587957c866f611613251e3ebdc0\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(69, '95ab0adf-6d19-4367-b4f3-85e9d0e2bcf3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `action_events` add index `action_events_batch_id_model_type_model_id_index`(`batch_id`, `model_type`, `model_id`)\",\"time\":\"17.87\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/nova\\/database\\/migrations\\/2018_01_01_000000_create_action_events_table.php\",\"line\":34,\"hash\":\"19debff3913087adc6846aa77865398a\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(70, '95ab0adf-73c3-4d2d-8ec3-2078d0427a56', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `action_events` add index `action_events_user_id_index`(`user_id`)\",\"time\":\"15.67\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/nova\\/database\\/migrations\\/2018_01_01_000000_create_action_events_table.php\",\"line\":34,\"hash\":\"985e3206f5848aa80ab11c9ffb5d027e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(71, '95ab0adf-763e-421a-8659-e035e39b8383', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2018_01_01_000000_create_action_events_table\', 1)\",\"time\":\"4.19\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(72, '95ab0adf-800a-4e61-bc26-9b07d820c2a8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries` (`sequence` bigint unsigned not null auto_increment primary key, `uuid` char(36) not null, `batch_id` char(36) not null, `family_hash` varchar(255) null, `should_display_on_index` tinyint(1) not null default \'1\', `type` varchar(20) not null, `content` longtext not null, `created_at` datetime null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"19.71\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"d9429550f8856c1af1c89f24a6440cb5\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(73, '95ab0adf-85ab-458f-8664-dce07f70bb45', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add unique `telescope_entries_uuid_unique`(`uuid`)\",\"time\":\"13.10\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"9fb859ae1faff74c6b9e0b70dfd8eea9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(74, '95ab0adf-8c3a-4f79-acfb-7791908b56d5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_batch_id_index`(`batch_id`)\",\"time\":\"15.98\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"2b075509a9242d6e3f622536c5ccca07\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(75, '95ab0adf-937e-4003-9d0d-6a1af206c0ed', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_family_hash_index`(`family_hash`)\",\"time\":\"17.30\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"3d25a2a244bd2028dfa0326d3dbf7f4c\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(76, '95ab0adf-9a99-423b-91ca-95961f39d6c9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_created_at_index`(`created_at`)\",\"time\":\"16.46\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"7352e7f84460fb7ffc450e7ea4de9dc7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(77, '95ab0adf-a22e-4ad5-b9e9-25e01c0eac7b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_type_should_display_on_index_index`(`type`, `should_display_on_index`)\",\"time\":\"17.66\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"7317a4cad2dfa1a5167548a6acd0b6a5\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(78, '95ab0adf-ab9a-408c-b109-b089b199408f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries_tags` (`entry_uuid` char(36) not null, `tag` varchar(255) not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"20.70\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"5ed47d3cfcd3051674e3cb7b613f0fba\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(79, '95ab0adf-b264-4ec4-8608-d9a2f34ce382', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_entry_uuid_tag_index`(`entry_uuid`, `tag`)\",\"time\":\"15.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"d77cdf5585b51f60954d40e76786e20f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(80, '95ab0adf-b912-45d9-8524-994abbc3f440', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_tag_index`(`tag`)\",\"time\":\"15.34\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"0bdb35d17e876d6225a7774a2c17647d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(81, '95ab0adf-cf8f-4688-bbeb-59e2715d6087', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add constraint `telescope_entries_tags_entry_uuid_foreign` foreign key (`entry_uuid`) references `telescope_entries` (`uuid`) on delete cascade\",\"time\":\"55.71\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"662a818f80a3a9ba2570081fd7a6af2f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(82, '95ab0adf-d8ac-4715-b86e-ece5e030d376', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_monitoring` (`tag` varchar(255) not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"21.06\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"8cddf327ba1b3bd52637b409200a4c1f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(83, '95ab0adf-dac3-41aa-8d25-f9bbb962e139', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2018_08_08_100000_create_telescope_entries_table\', 1)\",\"time\":\"3.19\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(84, '95ab0adf-ed03-4dab-868a-74cb5dcc8ff7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `action_events` add `original` text null, add `changes` text null\",\"time\":\"43.74\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/nova\\/database\\/migrations\\/2019_05_10_000000_add_fields_to_action_events_table.php\",\"line\":19,\"hash\":\"47ab458a262aef4c9abfcb5840dd4f1f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(85, '95ab0adf-efa9-41b9-b1c5-be5eabeb03f3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2019_05_10_000000_add_fields_to_action_events_table\', 1)\",\"time\":\"4.57\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(86, '95ab0adf-f960-408a-81a6-7fac8558206e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `failed_jobs` (`id` bigint unsigned not null auto_increment primary key, `connection` text not null, `queue` text not null, `payload` longtext not null, `exception` longtext not null, `failed_at` timestamp default CURRENT_TIMESTAMP not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"21.17\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000001_create_failed_jobs_table.php\",\"line\":23,\"hash\":\"fae1ec3edafa895343ae718d06e992c7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(87, '95ab0adf-fb78-4353-8b63-84e5ec4c28b4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000001_create_failed_jobs_table\', 1)\",\"time\":\"3.18\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(88, '95ab0ae0-0516-46b8-96d5-31f749262f26', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `countries` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(45) not null, `phone_code` int unsigned not null, `vat_rate` int unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"20.84\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000002_create_countries_table.php\",\"line\":24,\"hash\":\"a019443d9c2e945d3338b006312e0140\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:43'),
(89, '95ab0ae0-0732-49b5-840d-6f45ff9002c3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000002_create_countries_table\', 1)\",\"time\":\"3.23\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(90, '95ab0ae0-126c-42bb-9d6f-b02c4e1ebaa6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `users` (`id` bigint unsigned not null auto_increment primary key, `username` varchar(255) not null, `email` varchar(255) not null, `password` varchar(255) not null, `first_name` varchar(100) null, `last_name` varchar(100) null, `country_id` bigint unsigned null, `zip` varchar(10) null, `city` varchar(100) null, `address` varchar(100) null, `phone` varchar(50) null, `avatar` varchar(255) null, `birthday` timestamp null, `gender` tinyint(1) null, `status` tinyint not null default \'0\', `last_login_at` timestamp null, `email_verified_at` timestamp null, `remember_token` varchar(100) null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"21.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000003_create_users_table.php\",\"line\":41,\"hash\":\"3c501c56354ddfe6edb65937a2e4c790\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(91, '95ab0ae0-2555-47ae-9379-d2ea96b2edf6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add constraint `users_country_id_foreign` foreign key (`country_id`) references `countries` (`id`) on delete SET NULL\",\"time\":\"46.94\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000003_create_users_table.php\",\"line\":41,\"hash\":\"dc3441a75be11d735d7bf92de8decc84\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(92, '95ab0ae0-2c20-4742-bc13-804a467344f1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add unique `users_username_unique`(`username`)\",\"time\":\"15.97\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000003_create_users_table.php\",\"line\":41,\"hash\":\"d9d8675342e514e22d4b25a58193a2f1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(93, '95ab0ae0-339c-42b4-a560-68f6869649c7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add unique `users_email_unique`(`email`)\",\"time\":\"17.77\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000003_create_users_table.php\",\"line\":41,\"hash\":\"0648806a3d18c0f5b81e2257de64675e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(94, '95ab0ae0-3619-48e8-8e2d-74486e446beb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000003_create_users_table\', 1)\",\"time\":\"4.24\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(95, '95ab0ae0-3fd4-4894-b9c0-03cb9c3e73a1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `settings` (`id` bigint unsigned not null auto_increment primary key, `type` tinyint unsigned not null default \'0\', `value_type` tinyint unsigned not null default \'0\', `title` varchar(100) not null, `key` varchar(100) not null, `value` varchar(100) not null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"20.20\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000004_create_settings_table.php\",\"line\":27,\"hash\":\"b7faa259d6380ab6625c57f7a91ac905\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(96, '95ab0ae0-52fa-4a61-8acb-bbc8c0b2dfea', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `settings` add constraint `settings_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"47.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000004_create_settings_table.php\",\"line\":27,\"hash\":\"27bceaec19df71c9e4ddac227f2a47ac\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(97, '95ab0ae0-59a2-45d8-b141-d5fa4b164a41', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `settings` add unique `settings_key_unique`(`key`)\",\"time\":\"15.67\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000004_create_settings_table.php\",\"line\":27,\"hash\":\"341c887377abf0b07bc393a8c80d128b\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(98, '95ab0ae0-5c2b-48b1-8b65-c978f41c0b45', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000004_create_settings_table\', 1)\",\"time\":\"4.30\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(99, '95ab0ae0-6694-4a44-b401-00234d396bb1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `units` (`id` bigint unsigned not null auto_increment primary key, `parent_id` bigint unsigned null, `name` varchar(100) not null, `slug` varchar(100) not null, `visible` tinyint(1) not null default \'1\', `sorting` int unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"22.13\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000005_create_units_table.php\",\"line\":26,\"hash\":\"3502bd6c0ae7b522f43e7e53ccea82df\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(100, '95ab0ae0-7b9d-4c7e-8ca2-3223a604059e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `units` add constraint `units_parent_id_foreign` foreign key (`parent_id`) references `units` (`id`) on delete SET NULL\",\"time\":\"52.38\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000005_create_units_table.php\",\"line\":26,\"hash\":\"f35752f3b7a20d9be2ea055a0c42b7f6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(101, '95ab0ae0-81e5-4048-8afb-383b82faca4a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `units` add unique `units_slug_unique`(`slug`)\",\"time\":\"14.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000005_create_units_table.php\",\"line\":26,\"hash\":\"f9cc233c67f44a868cc21cf622c5058c\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(102, '95ab0ae0-8414-401c-aa62-67a38cabf944', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000005_create_units_table\', 1)\",\"time\":\"3.38\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(103, '95ab0ae0-8c89-4e36-8f96-bc9a552a3343', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `password_resets` (`email` varchar(255) not null, `token` varchar(255) not null, `created_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"18.86\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000006_create_password_resets_table.php\",\"line\":20,\"hash\":\"6a64d07661eabf9849c9a4281ec344ad\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(104, '95ab0ae0-9251-4006-92d1-8ea893728379', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `password_resets` add index `password_resets_email_index`(`email`)\",\"time\":\"14.32\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000006_create_password_resets_table.php\",\"line\":20,\"hash\":\"e47bfd004ad9142afc1b2460960fbe08\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(105, '95ab0ae0-932e-4a39-aada-a95cda4409c9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000006_create_password_resets_table\', 1)\",\"time\":\"1.68\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(106, '95ab0ae0-9a4a-46cb-9990-4d87f9b5207e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `permissions` (`id` bigint unsigned not null auto_increment primary key, `unit_id` bigint unsigned not null, `action` varchar(100) not null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"16.70\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000007_create_permissions_table.php\",\"line\":25,\"hash\":\"9e4bdc4c865aac43e956d50b883e729c\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(107, '95ab0ae0-ad00-453c-9600-c0cc57ba3dee', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `permissions` add constraint `permissions_unit_id_foreign` foreign key (`unit_id`) references `units` (`id`) on delete CASCADE\",\"time\":\"46.44\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000007_create_permissions_table.php\",\"line\":25,\"hash\":\"440226c9c86612477cee1b41d0fa04de\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(108, '95ab0ae0-c207-46f6-a728-76d67dd5d36e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `permissions` add constraint `permissions_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"52.41\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000007_create_permissions_table.php\",\"line\":25,\"hash\":\"f3b3797e79cfd84e54c59f2b5f17271d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(109, '95ab0ae0-c466-4c1a-9604-02593a840bcd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000007_create_permissions_table\', 1)\",\"time\":\"3.91\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(110, '95ab0ae0-cced-48b8-b870-c9c2ccc8b794', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `roles` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(100) not null, `type` tinyint unsigned not null default \'0\', `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"18.35\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000008_create_roles_table.php\",\"line\":24,\"hash\":\"f334476c733a281dc6554711b4745374\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(111, '95ab0ae0-dbe2-4c0c-913f-8024f84df092', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `roles` add constraint `roles_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"37.72\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000008_create_roles_table.php\",\"line\":24,\"hash\":\"ed8845a351f041a38d4eb9dac70a3d9d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(112, '95ab0ae0-ddf1-40f5-8fdd-8fe71ba252c4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000008_create_roles_table\', 1)\",\"time\":\"3.92\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(113, '95ab0ae0-e627-43b3-b627-26218fb52956', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `role_permission` (`id` bigint unsigned not null auto_increment primary key, `role_id` bigint unsigned not null, `permission_id` bigint unsigned not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"17.81\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000009_create_role_permission_table.php\",\"line\":26,\"hash\":\"e32b6d5c33ae49802babf84716749d2f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(114, '95ab0ae0-ed4e-42a8-8f7e-8ede3eaa1e32', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `role_permission` add unique `role_permission_role_id_permission_id_unique`(`role_id`, `permission_id`)\",\"time\":\"16.87\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000009_create_role_permission_table.php\",\"line\":26,\"hash\":\"c2863b347487e130c284ecd044d55634\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(115, '95ab0ae1-0042-4209-8ab1-088bafb4e9db', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `role_permission` add constraint `role_permission_role_id_foreign` foreign key (`role_id`) references `roles` (`id`) on delete CASCADE\",\"time\":\"47.12\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000009_create_role_permission_table.php\",\"line\":26,\"hash\":\"55db9ae0702c86cecf2e9e87dace39c8\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(116, '95ab0ae1-14f6-423f-b914-9d07dde33ee4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `role_permission` add constraint `role_permission_permission_id_foreign` foreign key (`permission_id`) references `permissions` (`id`) on delete CASCADE\",\"time\":\"51.59\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000009_create_role_permission_table.php\",\"line\":26,\"hash\":\"2661753bf25101be8254d53cd41ca257\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(117, '95ab0ae1-1734-411b-8562-5a05660bc6ca', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000009_create_role_permission_table\', 1)\",\"time\":\"3.56\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(118, '95ab0ae1-1fed-434a-9efb-1e78561a6d53', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `role_user` (`id` bigint unsigned not null auto_increment primary key, `role_id` bigint unsigned not null, `user_id` bigint unsigned not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"18.13\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000010_create_role_user_table.php\",\"line\":26,\"hash\":\"002bf8b292f2dcc5c59550ff4f7c4a54\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(119, '95ab0ae1-2766-4da0-8345-302cc06d9750', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `role_user` add unique `role_user_role_id_user_id_unique`(`role_id`, `user_id`)\",\"time\":\"17.77\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000010_create_role_user_table.php\",\"line\":26,\"hash\":\"ac757147add0eb38a4e1f21cd6d32714\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(120, '95ab0ae1-3c09-4695-9f6b-54f079d29a15', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `role_user` add constraint `role_user_role_id_foreign` foreign key (`role_id`) references `roles` (`id`) on delete CASCADE\",\"time\":\"51.47\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000010_create_role_user_table.php\",\"line\":26,\"hash\":\"998e05eccbdbe21a720bb104189c26b5\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(121, '95ab0ae1-516e-4fc2-bff3-e25860b0fa91', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `role_user` add constraint `role_user_user_id_foreign` foreign key (`user_id`) references `users` (`id`) on delete CASCADE\",\"time\":\"53.36\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000010_create_role_user_table.php\",\"line\":26,\"hash\":\"73f627d311d6ea171ee40dbdcd38dfb9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(122, '95ab0ae1-5394-44ca-a7c8-ac7b3971e5ef', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000010_create_role_user_table\', 1)\",\"time\":\"3.30\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(123, '95ab0ae1-5d9c-4eb1-818e-66750f996293', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `page_categories` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(100) not null, `slug` varchar(100) not null, `visible` tinyint(1) not null default \'1\', `sorting` int unsigned null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"21.15\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000011_create_page_categories_table.php\",\"line\":26,\"hash\":\"8432b00e758b378565d01e81d64c16e0\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(124, '95ab0ae1-70ae-48cd-8674-2d00e1cbf0cb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `page_categories` add constraint `page_categories_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"47.32\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000011_create_page_categories_table.php\",\"line\":26,\"hash\":\"4842b74ebc3f974adcd968b2e6fd44ac\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(125, '95ab0ae1-793a-4fbf-aa8d-0c84886e5ae3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `page_categories` add unique `page_categories_slug_unique`(`slug`)\",\"time\":\"20.47\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000011_create_page_categories_table.php\",\"line\":26,\"hash\":\"ae3c48b3cc77d88565baeca131d90ef0\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(126, '95ab0ae1-7bc5-4ec4-b4d1-59db9238cc17', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000011_create_page_categories_table\', 1)\",\"time\":\"4.35\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(127, '95ab0ae1-865f-4002-94de-260621ade8e1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `pages` (`id` bigint unsigned not null auto_increment primary key, `parent_id` bigint unsigned null, `link_name` varchar(100) not null, `slug` varchar(100) not null, `image` varchar(255) null, `content` text null, `title` varchar(100) null, `meta_keywords` varchar(255) null, `meta_description` varchar(255) null, `header` varchar(100) null, `sorting` int unsigned null, `visible` tinyint unsigned not null default \'1\', `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"21.05\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000012_create_pages_table.php\",\"line\":34,\"hash\":\"37592d01ce6280b03b190cbf989a0ba3\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:44'),
(128, '95ab0ae1-99fa-4aa6-91e7-6e7b29730256', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `pages` add constraint `pages_parent_id_foreign` foreign key (`parent_id`) references `page_categories` (`id`) on delete SET NULL\",\"time\":\"48.75\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000012_create_pages_table.php\",\"line\":34,\"hash\":\"028d7d9e2c35a4dcdc67252a609e6881\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(129, '95ab0ae1-b08f-4479-bde9-fde2c51cd217', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `pages` add constraint `pages_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"56.34\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000012_create_pages_table.php\",\"line\":34,\"hash\":\"2a87dd107b141872ba03a19dd8c11878\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(130, '95ab0ae1-b95b-4dc5-9f68-d66e718da719', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `pages` add unique `pages_slug_unique`(`slug`)\",\"time\":\"21.10\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000012_create_pages_table.php\",\"line\":34,\"hash\":\"689286a5ed57d6dd5e00b9fba77d07c7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(131, '95ab0ae1-bc09-4844-8729-b9431f0497c7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000012_create_pages_table\', 1)\",\"time\":\"4.70\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(132, '95ab0ae1-c596-4f11-ad7a-c300402763b8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `snippets` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(100) not null, `slug` varchar(100) not null, `content` text not null, `visible` tinyint(1) not null default \'1\', `location` tinyint unsigned not null default \'0\', `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"19.54\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000013_create_snippets_table.php\",\"line\":27,\"hash\":\"9dac50c91b79ec08dfa0e7d29bbad8f9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(133, '95ab0ae1-d7f8-4acb-b50d-4511174d7cc5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `snippets` add constraint `snippets_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"45.57\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000013_create_snippets_table.php\",\"line\":27,\"hash\":\"79e9145d17abb77bd7cf87ca66acb724\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(134, '95ab0ae1-dec9-465a-a11f-b5f450bb43b3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `snippets` add unique `snippets_slug_unique`(`slug`)\",\"time\":\"15.97\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000013_create_snippets_table.php\",\"line\":27,\"hash\":\"fcfd2f446b22d48a3566d59975ac8cb9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(135, '95ab0ae1-e153-4a7a-ad9a-91cbc8874e8a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000013_create_snippets_table\', 1)\",\"time\":\"4.30\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(136, '95ab0ae1-eb30-49ae-9e3f-eab05d7e2a71', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `snippet_pages` (`id` bigint unsigned not null auto_increment primary key, `snippet_id` bigint unsigned not null, `page_id` bigint unsigned not null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"20.59\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000014_create_snippet_pages_table.php\",\"line\":28,\"hash\":\"8b1587ae4bd214a3bad35524058f4764\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(137, '95ab0ae1-f470-41fd-b2df-9e8bec327e9d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `snippet_pages` add unique `snippet_pages_snippet_id_page_id_unique`(`snippet_id`, `page_id`)\",\"time\":\"22.22\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000014_create_snippet_pages_table.php\",\"line\":28,\"hash\":\"dc10bd831f9d5b86a7bff32d32f0b964\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(138, '95ab0ae2-0846-467e-83db-ea9f62c1cc1f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `snippet_pages` add constraint `snippet_pages_snippet_id_foreign` foreign key (`snippet_id`) references `snippets` (`id`) on delete CASCADE\",\"time\":\"49.30\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000014_create_snippet_pages_table.php\",\"line\":28,\"hash\":\"2690ca6f1c836ee3baeae81b3349c532\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(139, '95ab0ae2-1c74-4be9-948e-79492b9e1930', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `snippet_pages` add constraint `snippet_pages_page_id_foreign` foreign key (`page_id`) references `pages` (`id`) on delete CASCADE\",\"time\":\"50.15\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000014_create_snippet_pages_table.php\",\"line\":28,\"hash\":\"e2599644c8853c83f77ea896142068f9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(140, '95ab0ae2-2e92-4eb1-b2c4-32ff45cca19d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `snippet_pages` add constraint `snippet_pages_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"45.43\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000014_create_snippet_pages_table.php\",\"line\":28,\"hash\":\"8eef75080aedf04483c186013646c164\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(141, '95ab0ae2-2fb1-4577-b530-c86d5dc4b72f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000014_create_snippet_pages_table\', 1)\",\"time\":\"2.36\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(142, '95ab0ae2-3776-4a62-860c-1a943f9ddd7f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `menus` (`id` bigint unsigned not null auto_increment primary key, `type` tinyint unsigned not null default \'0\', `name` varchar(100) not null, `slug` varchar(100) not null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"18.36\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000015_create_menus_table.php\",\"line\":25,\"hash\":\"bb2d0df66e0326266924a5fea1e04dc7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(143, '95ab0ae2-49e0-40f2-a80f-fe54e76c3d21', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `menus` add constraint `menus_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"45.66\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000015_create_menus_table.php\",\"line\":25,\"hash\":\"c4a6552345627ecf10db067fb522ad13\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(144, '95ab0ae2-51a0-4fb4-9e94-67873714d7bd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `menus` add unique `menus_slug_unique`(`slug`)\",\"time\":\"18.68\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000015_create_menus_table.php\",\"line\":25,\"hash\":\"227b6ca9749edc048d8f1dc866a0d769\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(145, '95ab0ae2-5368-40c8-8b71-7c87a7240109', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000015_create_menus_table\', 1)\",\"time\":\"3.51\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(146, '95ab0ae2-5a59-429b-b0b5-9498015d3672', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `menu_items` (`id` bigint unsigned not null auto_increment primary key, `menu_id` bigint unsigned not null, `page_id` bigint unsigned null, `type` tinyint unsigned not null default \'0\', `link_name` varchar(100) null, `url` varchar(255) null, `inherited` tinyint(1) not null default \'1\', `sorting` int unsigned null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null, `_lft` int unsigned not null default \'0\', `_rgt` int unsigned not null default \'0\', `parent_id` int unsigned null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"15.34\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000016_create_menu_items_table.php\",\"line\":36,\"hash\":\"3794f8532e7332414ce1c98ad1c5982d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(147, '95ab0ae2-5f3e-40af-899b-a31fb2f9537f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `menu_items` add index `menu_items__lft__rgt_parent_id_index`(`_lft`, `_rgt`, `parent_id`)\",\"time\":\"12.17\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000016_create_menu_items_table.php\",\"line\":36,\"hash\":\"de2f328dbea1c9e653162a2ed5a0994a\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(148, '95ab0ae2-6f0a-40d5-9e4b-2c4acf61e31c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `menu_items` add constraint `menu_items_menu_id_foreign` foreign key (`menu_id`) references `menus` (`id`) on delete CASCADE\",\"time\":\"40.04\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000016_create_menu_items_table.php\",\"line\":36,\"hash\":\"5e3900446dfa441ece56701d49128abb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(149, '95ab0ae2-81f1-4c08-ac2f-870191627a84', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `menu_items` add constraint `menu_items_page_id_foreign` foreign key (`page_id`) references `pages` (`id`) on delete CASCADE\",\"time\":\"47.38\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000016_create_menu_items_table.php\",\"line\":36,\"hash\":\"7e3f071c116136ac77048c4acfb9f2e6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(150, '95ab0ae2-99ab-45e2-bf25-497a533de1b8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `menu_items` add constraint `menu_items_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"59.27\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000016_create_menu_items_table.php\",\"line\":36,\"hash\":\"78030fbf1be05854cddda85056fbf700\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(151, '95ab0ae2-9c42-44a1-a80f-c7d7dfd89e36', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000016_create_menu_items_table\', 1)\",\"time\":\"4.43\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(152, '95ab0ae2-a710-4732-9f8e-0b3a911ef8ce', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `media_categories` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(100) not null, `slug` varchar(100) not null, `description` text null, `visible` tinyint(1) not null default \'1\', `sorting` int unsigned null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"22.95\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000017_create_media_categories_table.php\",\"line\":27,\"hash\":\"0e8323ba22a04e95f45c050428a0c902\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(153, '95ab0ae2-b8dc-477a-90ed-37463c400551', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `media_categories` add constraint `media_categories_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"44.06\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000017_create_media_categories_table.php\",\"line\":27,\"hash\":\"9204f0ba41bde9215dd0294b33a5cae7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(154, '95ab0ae2-c04b-40eb-aae7-eaa55a0ef472', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `media_categories` add unique `media_categories_slug_unique`(`slug`)\",\"time\":\"17.61\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000017_create_media_categories_table.php\",\"line\":27,\"hash\":\"5cd7f187f9ad542ef9353f40b7ddaa28\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(155, '95ab0ae2-c2ca-4cb0-b0f5-4a12260b7cdb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000017_create_media_categories_table\', 1)\",\"time\":\"4.11\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(156, '95ab0ae2-cccd-4673-bc5b-77c753a42dce', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `media_files` (`id` bigint unsigned not null auto_increment primary key, `parent_id` bigint unsigned null, `name` varchar(100) null, `file` varchar(255) not null, `visible` tinyint(1) not null default \'1\', `sorting` int unsigned null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"20.74\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000018_create_media_files_table.php\",\"line\":28,\"hash\":\"dc00ca6aeedafa4ef6b4f8ab9c5e633b\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(157, '95ab0ae2-e102-4bbe-b4a4-4137967d3eeb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `media_files` add constraint `media_files_parent_id_foreign` foreign key (`parent_id`) references `media_categories` (`id`) on delete SET NULL\",\"time\":\"50.60\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000018_create_media_files_table.php\",\"line\":28,\"hash\":\"176ec34c3193a5fe13ea53ca78295bfd\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(158, '95ab0ae2-f11d-4a26-a50c-6f725e5b98fb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `media_files` add constraint `media_files_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"40.70\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000018_create_media_files_table.php\",\"line\":28,\"hash\":\"4745d7bc0cc58396a3a289c128992ecb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(159, '95ab0ae2-f274-43cc-8417-c7498cb180a8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000018_create_media_files_table\', 1)\",\"time\":\"2.73\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(160, '95ab0ae2-f940-415c-a1ba-fa8ba2162ba7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `sliders` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(100) not null, `image` varchar(255) not null, `description` text null, `video_url` varchar(255) null, `forward_url` varchar(255) null, `type` tinyint unsigned not null default \'0\', `visible` tinyint(1) not null default \'1\', `position` tinyint unsigned not null default \'0\', `button_caption` varchar(100) null, `sorting` int unsigned null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"15.60\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000019_create_sliders_table.php\",\"line\":34,\"hash\":\"9100856779ed56f1696552214683abe4\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(161, '95ab0ae3-067f-43cf-94a9-e98ff4cc8650', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `sliders` add constraint `sliders_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"33.42\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000019_create_sliders_table.php\",\"line\":34,\"hash\":\"adbf0ca85f24387af06460bd04805a34\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(162, '95ab0ae3-078d-4b51-b6f1-a2f3cddfc2b8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000019_create_sliders_table\', 1)\",\"time\":\"2.12\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(163, '95ab0ae3-0ecb-487b-81f7-9dd700cf244b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `mails` (`id` bigint unsigned not null auto_increment primary key, `sender_email` varchar(255) null, `sender_name` varchar(255) null, `subject` varchar(255) null, `body` text null, `opened` tinyint(1) not null default \'0\', `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"17.54\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000020_create_mails_table.php\",\"line\":24,\"hash\":\"77d8a45a0886a5555b39d36139525e0d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(164, '95ab0ae3-102c-4362-8394-f0e3b9ba228c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000020_create_mails_table\', 1)\",\"time\":\"2.84\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:45'),
(165, '95ab0ae3-1810-4f9b-b76b-f6e88d3b6ad5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `faq_categories` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(100) not null, `slug` varchar(100) not null, `keywords` varchar(255) null, `visible` tinyint(1) not null default \'1\', `sorting` int unsigned null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"18.64\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000021_create_faq_categories_table.php\",\"line\":27,\"hash\":\"b352d258f417d38ea9e408ad0220cf6b\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(166, '95ab0ae3-2abb-4495-80f8-a9eb9e6bfc40', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `faq_categories` add constraint `faq_categories_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"47.04\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000021_create_faq_categories_table.php\",\"line\":27,\"hash\":\"630009bba17298c74b34a2ee6670dc31\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(167, '95ab0ae3-2f18-4d8f-9cc9-b294671d0e04', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `faq_categories` add unique `faq_categories_slug_unique`(`slug`)\",\"time\":\"10.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000021_create_faq_categories_table.php\",\"line\":27,\"hash\":\"c417dd3ab4fe382c80d53bfd2e612ff7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(168, '95ab0ae3-30e7-4245-806a-9baefc939410', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000021_create_faq_categories_table\', 1)\",\"time\":\"3.97\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(169, '95ab0ae3-37ac-4b88-8b6a-73cc527f82a7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `faq_items` (`id` bigint unsigned not null auto_increment primary key, `parent_id` bigint unsigned not null, `name` varchar(100) not null, `slug` varchar(100) not null, `description` text null, `visible` tinyint(1) not null default \'1\', `sorting` int unsigned null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"15.97\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000022_create_faq_items_table.php\",\"line\":29,\"hash\":\"03534af3508d040f988e4111f45842ad\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(170, '95ab0ae3-46f1-4fbf-859b-eca78a34340f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `faq_items` add constraint `faq_items_parent_id_foreign` foreign key (`parent_id`) references `faq_categories` (`id`) on delete CASCADE\",\"time\":\"38.68\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000022_create_faq_items_table.php\",\"line\":29,\"hash\":\"947237dffebb2e3c38028f8cef2fb137\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(171, '95ab0ae3-5636-4663-a4e8-0751989b29e1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `faq_items` add constraint `faq_items_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"38.34\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000022_create_faq_items_table.php\",\"line\":29,\"hash\":\"edcdd01c8da57bb7667858699412df73\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(172, '95ab0ae3-5d1f-4377-b7bf-89c550ccf1b9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `faq_items` add unique `faq_items_slug_unique`(`slug`)\",\"time\":\"16.38\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000022_create_faq_items_table.php\",\"line\":29,\"hash\":\"5f25c0134592984b7c8a84bc517ceae1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(173, '95ab0ae3-5fbc-48dc-ab0b-8ab4b8ff41ae', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000022_create_faq_items_table\', 1)\",\"time\":\"4.36\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(174, '95ab0ae3-69a9-4764-a03c-cac29af76246', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `quotes` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(100) not null, `image` varchar(255) null, `description` text null, `visible` tinyint(1) not null default \'1\', `sorting` int unsigned null, `created_by` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"20.78\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000023_create_quotes_table.php\",\"line\":27,\"hash\":\"253ffcffe6d7f8663c51da7e1dffc808\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(175, '95ab0ae3-7f41-4f3a-8e1e-f402c73efb21', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `quotes` add constraint `quotes_created_by_foreign` foreign key (`created_by`) references `users` (`id`) on delete SET NULL\",\"time\":\"53.76\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2020_01_01_000023_create_quotes_table.php\",\"line\":27,\"hash\":\"dd8ebffa6f5924947395301a6ea54787\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(176, '95ab0ae3-815e-476f-90f1-9a36406f5f6e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_01_01_000023_create_quotes_table\', 1)\",\"time\":\"3.19\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(177, '95ab0ae3-8a72-4256-8351-7ec0f0ba3516', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `referrals` (`id` bigint unsigned not null auto_increment primary key, `name` varchar(255) not null, `email` varchar(255) not null, `bar_number` varchar(255) not null, `case_interest` varchar(255) not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"19.27\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/migrations\\/2022_02_11_085552_create_referrals_table.php\",\"line\":23,\"hash\":\"1f6abcde2505697d100e7b8ebae71863\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(178, '95ab0ae3-8c7f-4ffc-aa48-ce7198427d2b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2022_02_11_085552_create_referrals_table\', 1)\",\"time\":\"2.99\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(179, '95ab0ae3-8e9f-4723-9e79-51284aa8aa4d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"SET FOREIGN_KEY_CHECKS=0;\",\"time\":\"0.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/DatabaseSeeder.php\",\"line\":16,\"hash\":\"9c5164ece4bf39898f83f37fb558d94e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(180, '95ab0ae3-9a7b-44bf-acc7-b8cadb3d7a19', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"truncate table `countries`\",\"time\":\"13.91\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/BooleanTrait.php\",\"line\":95,\"hash\":\"0f8475096e0891da9ab882c3d63a8e5c\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(181, '95ab0ae3-9e37-470d-a07e-d354fe13a651', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Abkhazia\', 7, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.64\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(182, '95ab0ae3-9eb2-43e1-a451-0d0cb491fa84', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(183, '95ab0ae3-a096-41e6-8c06-2d70f1c46d43', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Afghanistan\', 93, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.56\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(184, '95ab0ae3-a0ea-4006-8d56-917ea34dbbb1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:2\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(185, '95ab0ae3-a2c8-475f-98d7-a30e1e351ef4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Ajaria\', 995, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.57\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(186, '95ab0ae3-a31e-4c2b-bea0-5d25a414a4ae', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:3\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(187, '95ab0ae3-a504-4740-a11f-561ff27492b3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Akrotiri and Dhekelia\', 357, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.59\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(188, '95ab0ae3-a563-42ee-8436-b98ac712ce28', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:4\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(189, '95ab0ae3-a77e-41e7-aee1-1406a768057d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Albania\', 355, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.04\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(190, '95ab0ae3-a7dc-4e16-8b65-1367de212a51', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:5\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(191, '95ab0ae3-a9ec-4d44-baf3-f93c2e08308b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Algeria\', 213, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.03\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(192, '95ab0ae3-aa49-463c-881b-0491343be180', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(193, '95ab0ae3-ac7e-41fc-916e-e6a79ca2b10f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'American Samoa\', 1684, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.04\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(194, '95ab0ae3-acd9-4ff6-b936-9e5bd67e08c8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(195, '95ab0ae3-aede-40fe-a102-0b8c8779a53c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Andorra\', 376, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.94\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(196, '95ab0ae3-af32-4042-8ef8-dc5d3ec74d6f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:8\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(197, '95ab0ae3-b12d-48c1-8a2d-0694c1bde8d5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Angola\', 244, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(198, '95ab0ae3-b186-4ab1-bd5c-50dc2be477aa', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(199, '95ab0ae3-b3da-4b29-a942-4e3703eaafe4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Anguilla\', 1264, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.74\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(200, '95ab0ae3-b432-4cfb-94cc-350c612c3ee0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:10\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(201, '95ab0ae3-b62a-4bcc-88fa-984317859f3b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Antigua and Barbuda\', 1268, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(202, '95ab0ae3-b680-47eb-9316-6b84db681f3d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:11\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(203, '95ab0ae3-b86d-4812-80b0-7a5c892b20a9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Argentina\', 54, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.71\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(204, '95ab0ae3-b8c3-4115-94c9-7d2cd0dce674', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:12\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(205, '95ab0ae3-babc-46c9-8545-6ffe188b90fc', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Armenia\', 374, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(206, '95ab0ae3-bb11-4f80-976f-78eaa27a0309', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:13\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(207, '95ab0ae3-bcbd-4a16-a3ee-7de12cecf1c1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Aruba\', 297, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.56\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(208, '95ab0ae3-bcfe-4dfa-9d22-3ed33886ad01', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:14\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(209, '95ab0ae3-be7e-4447-affd-f4278a17cbfd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Australia\', 61, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.39\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(210, '95ab0ae3-beb7-4446-b5e1-7a6f02ff431f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:15\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(211, '95ab0ae3-c043-4fa9-b810-79458c4f3278', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Austria\', 43, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.57\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(212, '95ab0ae3-c075-4ddd-97d7-fbf8481acbaf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:16\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(213, '95ab0ae3-c1e1-4d8b-b69c-6f3a919255b0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Azerbaijan\', 994, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.46\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(214, '95ab0ae3-c20a-404e-85a5-fdc3619bdf49', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:17\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(215, '95ab0ae3-c35a-43ae-9708-6bf32bb681d9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Bahamas\', 1242, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.34\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(216, '95ab0ae3-c37d-4f79-82f8-57d9ed12c908', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:18\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(217, '95ab0ae3-c555-4bc1-845e-9b5ec686ac0e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Bahrain\', 973, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.41\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(218, '95ab0ae3-c5b1-4ba9-a784-23b50916ce86', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:19\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(219, '95ab0ae3-c7b4-4ea5-a8b6-e81b6190a2c4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Bangladesh\', 880, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.89\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(220, '95ab0ae3-c809-4342-961c-b77ff05a7b31', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:20\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(221, '95ab0ae3-ca01-4ef5-8dfb-48abdcab0dcf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Barbados\', 1246, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.82\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(222, '95ab0ae3-ca57-415d-bcfd-66ceaeee1ec3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:21\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(223, '95ab0ae3-cc4d-4582-930f-338fd5bcfb51', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Belarus\', 375, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.82\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(224, '95ab0ae3-cca3-4425-8b43-b3c5da0712b9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:22\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(225, '95ab0ae3-cea0-41a6-8c5e-01b181955a7e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Belgium\', 32, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.86\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(226, '95ab0ae3-cef7-4e51-a727-3324673fa715', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:23\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(227, '95ab0ae3-d0f0-4777-8850-7c9da3dd0015', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Belize\', 501, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.87\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(228, '95ab0ae3-d144-4426-ac97-73ba14c8495a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:24\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(229, '95ab0ae3-d341-4448-94eb-12b495080c27', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Benin\', 229, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.86\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(230, '95ab0ae3-d398-4677-81f9-698bb255037a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:25\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(231, '95ab0ae3-d594-4b56-8160-7e01fdef7207', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Bermuda\', 1441, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.88\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(232, '95ab0ae3-d5e8-49ff-ba9f-287f4c9ebc4c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:26\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(233, '95ab0ae3-d7e3-4b58-a849-f7ce7f864f61', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Bhutan\', 975, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.85\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(234, '95ab0ae3-d83b-4438-a8a1-f8ecffd8edac', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:27\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(235, '95ab0ae3-da39-4ada-af53-747b1bbe073c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Bolivia\', 591, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.84\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(236, '95ab0ae3-da9b-484a-8316-c081e87a1821', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:28\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(237, '95ab0ae3-dcdc-4e55-9bcc-fcb7b62d56f7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Bosnia and Herzegovina\', 387, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.96\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(238, '95ab0ae3-dd5f-4048-b204-7dea44e36841', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:29\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(239, '95ab0ae3-e021-4701-af76-994118661901', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Botswana\', 267, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.52\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(240, '95ab0ae3-e0a9-419f-a81c-d47dea91e4f5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:30\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(241, '95ab0ae3-e349-4f9e-8a89-872f7bf82b56', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Brazil\', 55, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.35\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(242, '95ab0ae3-e3c8-4770-8cc7-c4a2834c3055', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:31\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(243, '95ab0ae3-e654-49a1-841d-3eadb627cf11', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'British Antarctic Territory\', 0, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.15\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(244, '95ab0ae3-e6d8-4789-99b0-df8004bc426e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:32\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(245, '95ab0ae3-e93c-467a-8760-f2fe54c2ba89', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'British Indian Ocean Territory\', 246, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.89\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(246, '95ab0ae3-e992-4507-a09c-b496dde24b54', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:33\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(247, '95ab0ae3-eb4f-4db2-9a0f-b35a0dd4924e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'British Virgin Islands\', 1284, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.46\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(248, '95ab0ae3-eb8f-4167-bbbb-2ddb8b15d6c5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:34\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(249, '95ab0ae3-ed34-4e71-ab60-d5a22b5760ea', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Brunei\', 673, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.65\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(250, '95ab0ae3-ed68-4cd4-ae2c-76b0b81e16a0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:35\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(251, '95ab0ae3-eecc-4779-bce8-3f7ef65fe08c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Bulgaria\', 359, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.23\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(252, '95ab0ae3-eeff-4f2d-b82e-1dff422b782b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:36\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(253, '95ab0ae3-f064-4566-b1c6-e67bcd8d79de', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Burkina Faso\', 226, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.23\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(254, '95ab0ae3-f097-4a41-a391-708f9a43e171', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:37\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(255, '95ab0ae3-f207-4a7f-982f-789fcb44ff99', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Burma\', 95, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.36\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(256, '95ab0ae3-f23a-4728-98c4-6ca09cef3ace', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:38\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(257, '95ab0ae3-f3bd-4a94-a6d6-367ef7957b9d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Burundi\', 257, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.42\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(258, '95ab0ae3-f3fc-4c53-a554-7b2c63eba25b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:39\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(259, '95ab0ae3-f590-4abe-9f8d-4b365b08e56d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Cambodia\', 855, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.52\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(260, '95ab0ae3-f5c8-4f9e-9eaa-08bf95f25a10', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:40\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(261, '95ab0ae3-f73e-401d-9cb4-a9f0dce515e8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Cameroon\', 237, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.35\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(262, '95ab0ae3-f776-4b95-817a-6e1d62af3254', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:41\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(263, '95ab0ae3-f8f1-4a35-93b4-ab40c8495b4c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Canada\', 1, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.34\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(264, '95ab0ae3-f92e-40ee-98b8-2db8330b6e15', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:42\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(265, '95ab0ae3-fa95-4615-971c-a5171a6fb265', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Cape Verde\', 238, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.20\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(266, '95ab0ae3-fac9-4025-9e76-769d922c69c4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:43\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(267, '95ab0ae3-fc65-4581-8da3-87f1269fd199', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Cayman Islands\', 1345, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(268, '95ab0ae3-fc97-4620-94ef-9b5866f346b3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:44\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(269, '95ab0ae3-fe4f-4d68-ad14-5e5f6cc45382', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Central African Republic\', 236, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.02\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(270, '95ab0ae3-fe8a-4dd9-95be-857b9a8ace9a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:45\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(271, '95ab0ae4-0079-472a-9d31-1c334fd32c85', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Chad\', 235, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.33\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(272, '95ab0ae4-00c3-4e59-ac23-a4f7bf7f95d8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:46\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(273, '95ab0ae4-02f0-4522-a678-e8f03114ec5b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Chile\', 56, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.59\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(274, '95ab0ae4-034c-49d4-a0d8-27fa61b86c13', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:47\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(275, '95ab0ae4-05f3-4f43-9926-908da380801b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'China\', 86, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.59\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(276, '95ab0ae4-0671-4e65-94fc-3a84f50f249a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:48\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(277, '95ab0ae4-0901-4ff6-b0fe-3ad37a75f071', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Christmas Island\', 61, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.24\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(278, '95ab0ae4-097e-4949-98c6-df6735a133ec', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:49\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(279, '95ab0ae4-0c16-48bf-bcf5-43cf52939d34', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Cocos (Keeling) Islands\', 61, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.33\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(280, '95ab0ae4-0c94-46d2-a858-9b595fd95a0b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:50\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(281, '95ab0ae4-0f32-4bb3-9f26-5b4f33535d8f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Colombia\', 57, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.32\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(282, '95ab0ae4-0fc9-42d8-ba8f-126659309af0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:51\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(283, '95ab0ae4-1283-4684-a6e6-4f9eb86c35ce', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Comoros\', 269, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.28\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(284, '95ab0ae4-1325-4900-96f3-f7d88b963e40', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:52\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(285, '95ab0ae4-15de-4461-b474-20f4291682e1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Congo-Brazzaville\', 242, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.40\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(286, '95ab0ae4-1660-4575-a8e2-114b24395ac3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:53\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(287, '95ab0ae4-18e9-4968-b3d0-a0cd455f9ea4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Congo-Kinshasa\', 243, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.16\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(288, '95ab0ae4-196a-4cfb-aa72-e3faa08e1968', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:54\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(289, '95ab0ae4-1bf7-430a-bda7-cda1ac5a8fba', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Cook Islands\', 682, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.18\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(290, '95ab0ae4-1c77-496c-9305-60166b961df0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:55\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(291, '95ab0ae4-1f05-433d-84ee-d0a1b4c83a5c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Costa Rica\', 506, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.21\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(292, '95ab0ae4-1f83-4377-8eae-dd4d51dbb771', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:56\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(293, '95ab0ae4-221a-4dd2-b1de-b8c0eaee537a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Cote d\\\\\'Ivoire\', 225, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.24\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(294, '95ab0ae4-2299-4cd9-9210-63b6a5778e4b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:57\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(295, '95ab0ae4-2529-45ec-84bd-20fc3861b514', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Crimea\', 380, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.23\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(296, '95ab0ae4-25a8-42cf-a25a-70b21c582981', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:58\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(297, '95ab0ae4-283a-40e5-9c13-3bfb7444b7c7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Croatia\', 385, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.23\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(298, '95ab0ae4-28c1-4395-97f2-d1adf578d878', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:59\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(299, '95ab0ae4-2b7c-4aa5-a048-89ef1d652af8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Cuba\', 53, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.30\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(300, '95ab0ae4-2c03-4dc9-8fac-35870ed865d6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:60\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(301, '95ab0ae4-2edb-4ecc-8ddb-6ee07129e4ee', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Cyprus\', 357, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.46\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(302, '95ab0ae4-2f63-4e38-8fa7-c8c546864669', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:61\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(303, '95ab0ae4-31b8-4f51-a9cd-c7492037753c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Czech Republic\', 420, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.91\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(304, '95ab0ae4-320d-4ac7-9b95-5faea60ea2c9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:62\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(305, '95ab0ae4-3419-4181-bf40-281ebcb72d6d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Denmark\', 45, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.88\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(306, '95ab0ae4-3475-4e65-ace1-5ce122352218', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(307, '95ab0ae4-366d-4a5e-b795-efa3a24c8d9b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Djibouti\', 253, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(308, '95ab0ae4-36c3-4039-8ab5-a55768959a8a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:64\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(309, '95ab0ae4-38d9-4336-a60d-27f615d7c2c0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Dominica\', 1767, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.85\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(310, '95ab0ae4-395d-41ec-b7f3-3ba40a506c97', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:65\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(311, '95ab0ae4-3c03-4c44-a410-7c3a2f62c411', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Dominican Republic\', 1809, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.41\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(312, '95ab0ae4-3c84-44f5-a4b2-b29177348bdf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:66\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(313, '95ab0ae4-3f1b-4c73-a7d1-b70a178ec999', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'East Timor\', 670, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.38\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(314, '95ab0ae4-3f9d-4fbb-9af9-6b92bb3ffb30', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:67\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(315, '95ab0ae4-422f-4815-92a6-29a9a63c0bf6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Ecuador\', 593, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.27\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(316, '95ab0ae4-42b8-4f66-81f9-b04235825472', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:68\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(317, '95ab0ae4-4579-40c9-b165-f0262ef15354', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Egypt\', 20, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.57\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(318, '95ab0ae4-45ff-451e-8eb2-411216c217cc', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:69\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(319, '95ab0ae4-48ca-4909-b20a-8a70969c4a64', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'El Salvador\', 503, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.41\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(320, '95ab0ae4-494f-4159-8593-2e7b0eebc4c5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:70\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(321, '95ab0ae4-4be8-41b9-9472-66cc5b52e584', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Equatorial Guinea\', 240, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.23\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(322, '95ab0ae4-4c66-4385-bdd3-5d800ffebf54', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:71\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(323, '95ab0ae4-4ef2-435b-ba06-62e08cfc7cb3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Eritrea\', 291, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.09\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(324, '95ab0ae4-4f71-4491-a8e4-1bc5d7d7d87d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:72\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(325, '95ab0ae4-51fc-4318-8c43-9b5d1db64371', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Estonia\', 372, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.17\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(326, '95ab0ae4-527b-4969-8f4f-0a57d849531c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:73\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(327, '95ab0ae4-5502-4327-b499-292ab4b76e9b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Ethiopia\', 251, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.16\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(328, '95ab0ae4-5587-4636-ac78-954453bda441', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:74\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(329, '95ab0ae4-5818-495c-8ae2-70c94ed544e5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Falkland Islands\', 500, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.30\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(330, '95ab0ae4-5898-4bac-acd7-788c90e28a87', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:75\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(331, '95ab0ae4-5b1f-439b-8e1f-3bb566ce8824', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Faroe Islands\', 298, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.17\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(332, '95ab0ae4-5ba7-4d09-8962-48899a390681', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:76\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(333, '95ab0ae4-5e58-4ca7-af85-df18efd0b4f3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Federated States of Micronesia\', 691, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.45\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(334, '95ab0ae4-5ee6-4a63-b1b3-384c31918a18', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:77\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(335, '95ab0ae4-618b-490c-b6ce-d8bc863be50b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Fiji\', 679, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.30\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(336, '95ab0ae4-6216-4b88-8f31-d104481b0428', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:78\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(337, '95ab0ae4-6475-4d31-9cd0-0c559274aeaa', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Finland\', 358, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.93\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(338, '95ab0ae4-64cf-449d-9106-1527839d7362', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:79\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(339, '95ab0ae4-66cc-4b88-8dba-32c7cfea9dc9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'France\', 33, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.74\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(340, '95ab0ae4-6721-47ad-8527-dc7f27ec0d5c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:80\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(341, '95ab0ae4-691a-499f-83fe-d723393df267', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'French Southern and Antarctic Lands\', 262, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.84\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(342, '95ab0ae4-6970-4135-b003-ea4b3f858bb0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:81\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(343, '95ab0ae4-6b69-4674-9c00-663027cac136', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Gabon\', 241, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.87\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(344, '95ab0ae4-6bbd-45e9-9f8e-99ecd0932651', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:82\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(345, '95ab0ae4-6dcc-4e57-beb4-0e0b438bcc6f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Gambia\', 220, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.86\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(346, '95ab0ae4-6e4c-4767-bc25-237369e64118', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:83\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(347, '95ab0ae4-70cd-472d-bfbf-c81962d68867', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Georgia\', 995, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.10\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(348, '95ab0ae4-7151-4c73-bf32-f071f84b2dca', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:84\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(349, '95ab0ae4-73c0-4a21-90f9-313a2a7b2bec', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Germany\', 49, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.14\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(350, '95ab0ae4-7415-49fa-b261-d3c2893a7e66', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:85\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(351, '95ab0ae4-760f-4684-aac8-f0be781b2d59', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Ghana\', 233, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(352, '95ab0ae4-766d-4878-8994-5bedde3a88c9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:86\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(353, '95ab0ae4-788d-40dd-a1a6-8bfc12e031d3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Gibraltar\', 350, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.95\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(354, '95ab0ae4-78e6-4703-9344-ed305470f218', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:87\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(355, '95ab0ae4-7aec-48fa-81a9-582ad1a4df1e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Greece\', 30, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.77\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(356, '95ab0ae4-7b55-4cf9-8981-66ac1c1df8f4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:88\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(357, '95ab0ae4-7d73-46ed-a58c-c1180885d2bd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Greenland\', 299, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.03\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(358, '95ab0ae4-7dcf-4fee-aa1e-38d5336f6a2c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:89\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(359, '95ab0ae4-7fc5-4eda-a4e1-ec00c6803b52', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Grenada\', 1473, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.78\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(360, '95ab0ae4-8019-4830-9762-85f7d16cf2f6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:90\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(361, '95ab0ae4-8200-4119-9f40-ed0639432ff4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Guam\', 1671, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.67\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(362, '95ab0ae4-8256-4916-bfc3-83a87bf88637', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:91\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(363, '95ab0ae4-8444-43b9-9ccf-06c444a55915', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Guatemala\', 502, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.71\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(364, '95ab0ae4-8499-46b5-b19d-71c698c5e82b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:92\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(365, '95ab0ae4-86fd-46b9-9739-4fe1f9556fc9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Guinea\', 224, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.92\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(366, '95ab0ae4-8754-4952-ba8f-89cfb86abd44', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:93\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(367, '95ab0ae4-89c0-4dc7-8395-080377164b6a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Guinea-Bissau\', 245, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.98\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(368, '95ab0ae4-8a15-42b3-8f7f-156fc7fff0e7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:94\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(369, '95ab0ae4-8c0c-4f24-85b2-7359e25af978', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Guyana\', 592, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.79\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(370, '95ab0ae4-8c61-421f-a956-25902992849a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:95\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(371, '95ab0ae4-8e62-4c41-8b83-654e12672641', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Haiti\', 509, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"2.75\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(372, '95ab0ae4-8ed3-4b41-b8f4-afcd0e77c42a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:96\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(373, '95ab0ae4-9143-4aff-836e-c50c7286fd5c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Honduras\', 504, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.17\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(374, '95ab0ae4-91c9-407e-accf-cb2db07fd55e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:97\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(375, '95ab0ae4-944b-44f7-bd6d-356ad2a36fb3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Hong Kong\', 852, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.27\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(376, '95ab0ae4-94c6-45d6-a7d3-4f2ec747147f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:98\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(377, '95ab0ae4-9765-4f64-9f5c-d4632a9b9e05', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Hungary\', 36, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.29\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(378, '95ab0ae4-97dd-403e-959e-f15cd46703b8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:99\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:46'),
(379, '95ab0ae4-9a3a-46af-a8e9-4ae3ee50b2e0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Iceland\', 354, \'2022-02-23 12:15:46\', \'2022-02-23 12:15:46\')\",\"time\":\"3.07\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(380, '95ab0ae4-9aaa-4ac5-860e-b81c471b3135', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:100\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(381, '95ab0ae4-9d13-4174-a66b-fbb19c283258', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'India\', 91, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.14\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(382, '95ab0ae4-9d84-434f-acca-a7b400ad7fa2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:101\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(383, '95ab0ae4-9fe8-414b-b5a4-bd199477349d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Indonesia\', 62, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.19\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(384, '95ab0ae4-a05a-4230-bef1-d0b0cda4eaf6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:102\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(385, '95ab0ae4-a2a8-422a-ba47-fb1458186fbe', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Iran\', 98, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.96\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(386, '95ab0ae4-a319-40cf-aee6-d04de9949043', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:103\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(387, '95ab0ae4-a56f-4a8b-9e7f-5f414b6c7492', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Iraq\', 964, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.00\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(388, '95ab0ae4-a5e1-4c74-ab25-d4ce2e60284b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:104\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(389, '95ab0ae4-a83d-4a98-93c1-0afedd13ee8a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Ireland\', 353, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.02\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(390, '95ab0ae4-a8bb-41fc-b903-3e20758b82d8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:105\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(391, '95ab0ae4-aaeb-43a2-a3a2-103c719a9a09', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Israel\', 972, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.66\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(392, '95ab0ae4-ab4c-452b-86e9-b50d543ac0a3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:106\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(393, '95ab0ae4-ad2f-40ca-8f9a-138c6ca3e0d7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Italy\', 39, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.78\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(394, '95ab0ae4-ad75-4c11-8e4f-cd5d6c62ffa3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:107\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(395, '95ab0ae4-af30-4f6c-8285-fda0c0b9e1cc', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Jamaica\', 1876, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.65\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(396, '95ab0ae4-af7a-41da-8556-19d390a21fdd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:108\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(397, '95ab0ae4-b14a-4b8c-9f7b-6f5b57a758ad', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Japan\', 81, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.85\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(398, '95ab0ae4-b18b-4ccb-a163-747558d7106b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:109\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(399, '95ab0ae4-b33c-4345-8b9a-f9ee743f5fb1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Jordan\', 962, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.67\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(400, '95ab0ae4-b37b-4df8-95e5-9bc48e398a45', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:110\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(401, '95ab0ae4-b535-4199-97c8-22c2f3ca664e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Karakalpakstan\', 998, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.77\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(402, '95ab0ae4-b574-4595-aa43-1fc859de7c6d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:111\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(403, '95ab0ae4-b7a4-4f5f-904c-646ab964553c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Kazakhstan\', 7, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.53\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(404, '95ab0ae4-b823-42b5-b108-de3b5ab996e2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:112\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(405, '95ab0ae4-bb17-4b47-831c-b5d9c5f9e539', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Kenya\', 254, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"4.23\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(406, '95ab0ae4-bb98-4a78-b472-cc7f8c07eea3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:113\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(407, '95ab0ae4-be69-4328-92b0-871ff2a90e4a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Kiribati\', 686, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.84\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(408, '95ab0ae4-beea-42fa-a943-ba53047d2f70', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:114\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(409, '95ab0ae4-c1a8-4dbf-a69a-631fb2b04002', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Kosovo\', 381, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.63\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(410, '95ab0ae4-c227-4851-82b2-2f4fdffadd7e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:115\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(411, '95ab0ae4-c4bc-46b3-b1c8-69c85120bb2b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Kuwait\', 965, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.26\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(412, '95ab0ae4-c541-4fb9-902c-6141956a86b7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:116\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(413, '95ab0ae4-c816-436d-91e0-00f29582fa30', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Kyrgyzstan\', 996, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.51\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(414, '95ab0ae4-c89e-41ab-9de2-5f0ccb711190', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:117\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(415, '95ab0ae4-cb74-42ef-8b7d-4746b036d575', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Laos\', 856, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.39\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(416, '95ab0ae4-cbff-4b64-8536-0b940e366c5c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:118\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(417, '95ab0ae4-ce34-48d7-a20d-b75048f8e79d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Latvia\', 371, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.90\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(418, '95ab0ae4-ce88-4b09-b43d-43a895428503', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:119\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(419, '95ab0ae4-d071-4778-83fa-a313a1ae4fe4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Lebanon\', 961, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.69\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(420, '95ab0ae4-d0c8-4613-942e-0a75b2cfd9a1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:120\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(421, '95ab0ae4-d2c7-445f-8482-eacf48f928c7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Lesotho\', 266, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.86\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(422, '95ab0ae4-d321-4ef9-94d2-7447e73ad23c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:121\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(423, '95ab0ae4-d51c-4d50-aa0a-f90bc4a1dc41', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Liberia\', 231, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(424, '95ab0ae4-d574-4a06-88da-080d22802f62', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:122\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(425, '95ab0ae4-d76b-48d9-b3f3-10fe49a42414', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Libya\', 218, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.83\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(426, '95ab0ae4-d7c0-49f6-b0c5-6da90c740cd0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:123\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(427, '95ab0ae4-d9c8-4245-bd92-e32954385231', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Liechtenstein\', 423, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.95\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(428, '95ab0ae4-da1e-4b77-a68d-f353a8037954', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:124\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(429, '95ab0ae4-dc0e-42f9-b881-037411732e88', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Lithuania\', 370, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.77\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(430, '95ab0ae4-dc62-4f10-8a8d-b24a1afded8d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:125\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(431, '95ab0ae4-de42-49cd-b1b9-46c1d98f04b4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Luxembourg\', 352, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.52\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(432, '95ab0ae4-dea1-42ad-9a25-aebfa908afe9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:126\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(433, '95ab0ae4-e0a2-4e62-b805-134577150fe5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Macau\', 853, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.68\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(434, '95ab0ae4-e0fc-435e-a378-37139c650cd1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:127\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(435, '95ab0ae4-e306-4c41-9a34-2ebc9de992a8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Macedonia\', 389, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.84\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(436, '95ab0ae4-e36f-41d0-b418-176f7f206839', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:128\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(437, '95ab0ae4-e585-4827-a7ba-60a0689a6c38', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Madagascar\', 261, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.95\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(438, '95ab0ae4-e5e0-49f7-a35e-ea65158bc4e5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:129\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(439, '95ab0ae4-e7de-4c2f-b763-f8938d970ec2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Malawi\', 265, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.82\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(440, '95ab0ae4-e834-4bab-9add-1e543dfc0575', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:130\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(441, '95ab0ae4-ea27-433b-b130-5ec875cfcbc1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Malaysia\', 60, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(442, '95ab0ae4-ea7c-493b-bdea-008e329e6b04', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:131\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(443, '95ab0ae4-ec79-4c86-a38a-2cd210dbe82a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Maldives\', 960, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.86\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(444, '95ab0ae4-ecce-4080-8db4-8800189f55c0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:132\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(445, '95ab0ae4-eeb5-46e1-8a2c-f3a664f5401b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Mali\', 223, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.69\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(446, '95ab0ae4-ef09-4c73-bc9e-9ae5a4355a17', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:133\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(447, '95ab0ae4-f0ec-4907-b29b-15652539724f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Malta\', 356, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.66\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(448, '95ab0ae4-f141-4e8c-849b-73baa44106e7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:134\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(449, '95ab0ae4-f33f-4051-b510-b0f6c7d5002e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Marshall Islands\', 692, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.91\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(450, '95ab0ae4-f393-4f6b-ab74-ffc5f7ab022a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:135\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(451, '95ab0ae4-f57c-4102-8f0b-69967647521a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Mauritania\', 222, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.71\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(452, '95ab0ae4-f5d0-4be4-8835-ab7bbf3dccfa', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:136\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(453, '95ab0ae4-f7c3-47b3-868a-c650ffed47ef', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Mauritius\', 230, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.77\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(454, '95ab0ae4-f81d-442c-9209-c28d1cc64089', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:137\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(455, '95ab0ae4-fa35-44d4-9693-10c25ae966bd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Mayotte\', 262, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.03\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(456, '95ab0ae4-fa91-4682-a309-fa3c0872a527', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:138\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(457, '95ab0ae4-fc81-4293-9241-e80d45db8d4a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Mexico\', 52, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.70\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(458, '95ab0ae4-fcdd-4f4b-aff2-250e75f7385d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:139\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(459, '95ab0ae4-ff1e-477e-9d62-ef27de016f90', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Moldova\', 373, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.19\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(460, '95ab0ae4-ff7c-4d28-be89-b58b993aa847', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:140\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(461, '95ab0ae5-0166-4ff7-a6f9-1384a6091384', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Monaco\', 377, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.67\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(462, '95ab0ae5-01ba-49b9-b858-e41ac2cba2d3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:141\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(463, '95ab0ae5-039a-4932-a3c8-902e2e8609f7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Mongolia\', 976, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.64\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(464, '95ab0ae5-03ef-41b3-b20a-a099dcb1196c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:142\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(465, '95ab0ae5-05e5-4f2e-942b-c7cbe1165c33', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Montenegro\', 382, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.82\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(466, '95ab0ae5-0639-421c-8df7-4ebdf06b6c52', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:143\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(467, '95ab0ae5-0825-4f6e-bda5-9c0fa83dfd42', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Montserrat\', 1664, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.76\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(468, '95ab0ae5-0879-4438-a922-bf42d4bed23c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:144\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(469, '95ab0ae5-0a6c-4afd-be63-5726320f7c62', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Morocco\', 212, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.76\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(470, '95ab0ae5-0ac1-4df0-bbc2-29cfaac39255', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:145\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(471, '95ab0ae5-0cab-40dd-a179-8f84fbb39de5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Mozambique\', 258, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.72\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(472, '95ab0ae5-0d00-4e5f-bc71-e6ad2fb13399', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:146\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(473, '95ab0ae5-0ef3-4bbb-b844-6339221d595a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Nagorno-Karabakh Republic\', 374, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.78\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(474, '95ab0ae5-0f48-4119-8311-4c1b8e2a70b3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:147\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(475, '95ab0ae5-113f-4439-8bec-924ecaad267b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Namibia\', 264, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.84\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(476, '95ab0ae5-1196-4f03-a6c4-6f7c53eaa99c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:148\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(477, '95ab0ae5-13a1-416c-b40e-084b33eb402e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Nauru\', 674, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.82\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(478, '95ab0ae5-1403-49fd-a0d3-89276f990ddd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:149\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(479, '95ab0ae5-15ef-49fb-bca2-e4b728a89bcb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Nepal\', 977, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.67\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(480, '95ab0ae5-1643-4ce7-86d2-92ef5f0702be', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:150\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(481, '95ab0ae5-184d-4a4f-9875-af371d6c8bfe', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Netherlands\', 31, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.85\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(482, '95ab0ae5-18ad-4b8e-a853-a3b4ffb78f21', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:151\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(483, '95ab0ae5-1aa7-4d35-908b-d1e45d763d8f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Netherlands Antilles\', 599, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.79\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(484, '95ab0ae5-1afc-480b-a595-ff5c07be55d3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:152\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(485, '95ab0ae5-1cf0-4748-bea5-ce7fc5d67c49', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'New Caledonia\', 687, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.79\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(486, '95ab0ae5-1d47-4f7b-a925-0516d7006c51', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:153\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(487, '95ab0ae5-1f6b-4598-abe0-29549809edad', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'New Zealand\', 64, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.94\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(488, '95ab0ae5-1fec-4a4a-b06c-1f3299219362', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:154\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(489, '95ab0ae5-227f-4a36-8921-93217b470986', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Nicaragua\', 505, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.26\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(490, '95ab0ae5-22fe-484f-8d1b-2e7404143554', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:155\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(491, '95ab0ae5-2588-4e2c-b355-861163ef4309', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Niger\', 227, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.18\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(492, '95ab0ae5-2608-4ed0-9303-5f01acf8f2a1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:156\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(493, '95ab0ae5-28a5-461a-8459-d37cae50f230', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Nigeria\', 234, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.19\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(494, '95ab0ae5-2925-45cc-bca0-afac91dd4649', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:157\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(495, '95ab0ae5-2bb0-4438-b2e0-d3536f40f395', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Niue\', 683, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.15\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(496, '95ab0ae5-2c32-40ed-9b60-33c7748a69cf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:158\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(497, '95ab0ae5-2ec2-4d63-87ee-f28a672f6ac7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Norfolk Island\', 672, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.07\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(498, '95ab0ae5-2f4b-4648-a02d-fe5becd97f24', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:159\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(499, '95ab0ae5-31ea-4d94-8c3c-f10c22f30764', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'North Korea\', 850, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.20\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(500, '95ab0ae5-3274-4e9e-98f8-0d345d21c5a6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:160\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(501, '95ab0ae5-3513-42ee-9987-89c5f7139f25', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Northern Cyprus\', 90392, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.57\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(502, '95ab0ae5-3569-4796-bc2a-a2278fd98561', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:161\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(503, '95ab0ae5-3736-44e6-b73b-81f9ee159737', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Northern Mariana Islands\', 1670, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.47\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(504, '95ab0ae5-3776-40e6-883f-ad3948a947e4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:162\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(505, '95ab0ae5-3913-42b7-b235-816f07769e85', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Norway\', 47, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.44\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(506, '95ab0ae5-3955-4077-8dd7-44e0b89247e2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:163\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(507, '95ab0ae5-3b02-4f29-babc-01c48718f9e9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Oman\', 968, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.65\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(508, '95ab0ae5-3b42-4c20-8edb-e929e23fa93a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:164\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(509, '95ab0ae5-3cdf-4622-9727-6bdb8146d7cc', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Pakistan\', 92, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.49\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(510, '95ab0ae5-3d1f-4002-9148-6f8656785c14', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:165\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(511, '95ab0ae5-3eaf-4aa3-9d83-aae4e8c7fa36', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Palau\', 680, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.36\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(512, '95ab0ae5-3eef-4abd-a6ff-a87b01712cb4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:166\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(513, '95ab0ae5-40a5-4c7b-a518-a6db96a7305b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Palestine\', 970, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.69\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(514, '95ab0ae5-40e6-4914-96f2-93262ce10fa6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:167\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(515, '95ab0ae5-4299-4400-9ecc-fa5f7ee0ec92', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Panama\', 507, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.65\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(516, '95ab0ae5-42d8-4d05-a96f-e65b2152612d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:168\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(517, '95ab0ae5-4470-4faf-99ed-77663abe494c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Papua New Guinea\', 675, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.42\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(518, '95ab0ae5-44b2-48b4-8190-43898b13328c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:169\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(519, '95ab0ae5-4669-4ff4-9e88-c5ca8ecd9bda', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Paraguay\', 595, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(520, '95ab0ae5-46b5-4f08-9f3d-c30148c4b029', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:170\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(521, '95ab0ae5-4890-4d5f-b28a-a3419ceee612', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Peru\', 51, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.87\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(522, '95ab0ae5-48d5-46e1-baa5-79c6cbb1228a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:171\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(523, '95ab0ae5-4a86-458e-963e-8651a96923ab', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Philippines\', 63, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(524, '95ab0ae5-4acf-4149-b70b-b6c0052bb4c6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:172\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(525, '95ab0ae5-4d08-4ab0-9f88-17685533c5c8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Pitcairn Islands\', 870, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.73\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(526, '95ab0ae5-4d4f-4c26-a543-62a9d58f56b2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:173\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(527, '95ab0ae5-4f01-48b7-8529-710fb0301a3f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Poland\', 48, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.58\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(528, '95ab0ae5-4f49-4c75-9f31-094d1d346718', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:174\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(529, '95ab0ae5-50ef-40bc-8d92-fb5346200e80', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Polynesia\', 689, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.48\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(530, '95ab0ae5-5136-4bb7-9db4-31a68d2c575d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:175\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(531, '95ab0ae5-52c7-4fc2-9a58-09b3b65c29c1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Portugal\', 351, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.51\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(532, '95ab0ae5-52fd-44bc-aa3e-65b780a6b370', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:176\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(533, '95ab0ae5-5474-4f7d-b4c5-7e4b4755e07a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Puerto Rico\', 1, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.42\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(534, '95ab0ae5-54a0-4e01-acf3-39a09ff8d974', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:177\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(535, '95ab0ae5-561c-4ce0-bda2-d8cf15ef62a4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Qatar\', 974, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.71\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(536, '95ab0ae5-5643-4298-aa8e-d0c6d079b556', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:178\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(537, '95ab0ae5-57de-46a6-8723-b73ad8d08d7e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Romania\', 40, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.11\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(538, '95ab0ae5-5805-4f4d-84ec-1120f4542c87', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:179\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(539, '95ab0ae5-59c1-44d3-97a3-9a852bf17b14', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Russia\', 7, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.21\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(540, '95ab0ae5-5a19-4507-8d75-99134543f60f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:180\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(541, '95ab0ae5-5c3e-4a11-81eb-f0be5e03f8a2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Rwanda\', 250, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.41\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(542, '95ab0ae5-5c7e-47e1-a17d-5350486301db', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:181\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(543, '95ab0ae5-5e2e-4498-8592-c3df76e8b87f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Saint Barthelemy\', 590, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.69\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(544, '95ab0ae5-5e6f-40c8-b520-c3a9816136b2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:182\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(545, '95ab0ae5-6018-453a-8afe-028c31fc01b8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Saint Helena\', 290, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.46\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(546, '95ab0ae5-6060-480a-b219-66184f1273f9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:183\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(547, '95ab0ae5-622d-4a54-8f0f-a3030dcf3b64', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Saint Kitts and Nevis\', 1869, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.72\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(548, '95ab0ae5-6276-4886-bfa8-aed4cc893d5a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:184\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(549, '95ab0ae5-6419-41ef-ad7b-52a75bdea10d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Saint Lucia\', 1758, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.46\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(550, '95ab0ae5-6459-4a10-a978-c2cd6e46ea46', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:185\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(551, '95ab0ae5-6619-4998-8df9-23a7365dd4a2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Saint Martin\', 1599, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.66\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(552, '95ab0ae5-6660-44e2-b8bc-b2bd3a58a53f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:186\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(553, '95ab0ae5-6829-4cbf-aa41-8faca1e9ffc0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Saint Pierre and Miquelon\', 508, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.83\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(554, '95ab0ae5-6868-4926-aa30-349dcd3b5236', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:187\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(555, '95ab0ae5-6a07-4b4b-a02c-41999c627529', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Saint Vincent and the Grenadines\', 1784, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.52\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(556, '95ab0ae5-6a47-4252-8401-6c2960b5d3b2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:188\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(557, '95ab0ae5-6be6-4119-87c0-b753a006ef66', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Samoa\', 685, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.49\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(558, '95ab0ae5-6c28-4dec-a7a5-2ed1667f2071', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:189\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(559, '95ab0ae5-6de6-4ab3-a621-42b609cf7ac3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'San Marino\', 378, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(560, '95ab0ae5-6e26-459e-a1b4-4bb081359fe2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:190\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(561, '95ab0ae5-6fdc-4974-965a-7583d87e70f8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Sao Tome and Principe\', 239, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.72\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(562, '95ab0ae5-701b-4224-96e4-5d4ef814bcdc', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:191\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(563, '95ab0ae5-71c7-4c05-89ec-68a36de15412', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Saudi Arabia\', 966, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.58\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(564, '95ab0ae5-720f-4734-aaef-c9842a637120', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:192\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(565, '95ab0ae5-742d-4b56-a8fd-4cc2a96a8052', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Senegal\', 221, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.68\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(566, '95ab0ae5-746e-409a-b6cf-c62a1d3e03fa', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:193\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(567, '95ab0ae5-7626-4b61-a7df-25f263a9c7e6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Serbia\', 381, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.65\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(568, '95ab0ae5-7665-48b8-911b-36eaab793b7d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:194\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(569, '95ab0ae5-780f-41ee-be8f-d4c9b47b0be9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Seychelles\', 248, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.61\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(570, '95ab0ae5-784f-4097-bf62-b162b14bebf9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:195\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(571, '95ab0ae5-79fe-4d81-9748-3d48596fe14c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Sierra Leone\', 232, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.58\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(572, '95ab0ae5-7a46-40b8-b87a-ab64721a5a1f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:196\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(573, '95ab0ae5-7bfc-4bd0-9348-37da8a99e7b6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Singapore\', 65, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.53\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(574, '95ab0ae5-7c42-4db9-87f2-5cc376ad4432', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:197\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(575, '95ab0ae5-7df3-4739-859c-00e6b11be060', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Slovakia\', 421, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.56\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(576, '95ab0ae5-7e35-47ed-9c7a-f435f3cf1c8f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:198\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(577, '95ab0ae5-7fe6-4ae7-ae91-0c217479fe36', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Slovenia\', 386, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.54\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(578, '95ab0ae5-802e-448d-9cd0-2cc5612c5d11', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:199\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(579, '95ab0ae5-81e7-4963-ae8f-0519036db3a9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Solomon Islands\', 677, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.70\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(580, '95ab0ae5-8227-46a3-8d06-abdea3d72f5f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:200\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(581, '95ab0ae5-83dd-4b26-9c22-1149518169af', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Somalia\', 252, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.70\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(582, '95ab0ae5-841c-489f-907f-9514646d6990', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:201\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(583, '95ab0ae5-85d2-4e91-889b-cd941cf36829', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Somaliland\', 252, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.65\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(584, '95ab0ae5-8615-4165-812d-4368e91563b4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:202\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(585, '95ab0ae5-87c9-4e66-9baa-362c45c0d304', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'South Africa\', 27, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.67\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(586, '95ab0ae5-8809-4d76-a50d-1b5f2290ea30', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:203\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(587, '95ab0ae5-89b6-41a3-8717-d376e2b57b8b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'South Georgia and the South Sandwich Islands\', 500, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(588, '95ab0ae5-89f5-45dd-9da6-f6e71a913524', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:204\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(589, '95ab0ae5-8ba1-490e-9737-0557b6119898', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'South Korea\', 82, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(590, '95ab0ae5-8be1-485f-846c-e1ed0effe72a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:205\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(591, '95ab0ae5-8d8d-4f6e-bfb6-eaed8b9889fd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'South Ossetia\', 99534, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.61\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(592, '95ab0ae5-8dce-4768-ae3e-1f89b0d7a3db', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:206\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(593, '95ab0ae5-8f83-4408-b229-bddf4a1da552', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Spain\', 34, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.71\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(594, '95ab0ae5-8fc2-4dcb-9e19-f4997128a165', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:207\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(595, '95ab0ae5-916c-4bce-867d-12cb930bc29f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Sri Lanka\', 94, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.58\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(596, '95ab0ae5-91ab-4263-a093-e466438ebb46', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:208\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(597, '95ab0ae5-9355-47bf-b44a-46044348e3eb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Sudan\', 249, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.60\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(598, '95ab0ae5-9398-4808-988b-db7e41c4be3c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:209\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(599, '95ab0ae5-954e-4cbd-9d6e-35cc65e0e9f9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Suriname\', 597, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.57\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(600, '95ab0ae5-9599-43d5-8bc1-6165ce7c706f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:210\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(601, '95ab0ae5-9753-4948-be74-f2ee7b2cbf78', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Swaziland\', 268, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.72\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(602, '95ab0ae5-9793-4c7b-8cb2-17b67ed18b9c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:211\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(603, '95ab0ae5-9940-4eb6-93ad-8fb6f7a20f5c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Sweden\', 46, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.56\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(604, '95ab0ae5-9990-4d31-926c-c9a716ede7fd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:212\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(605, '95ab0ae5-9b5d-4cae-99bd-919588a3f8e9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Switzerland\', 41, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.76\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(606, '95ab0ae5-9ba4-4d55-a309-e8dfc431046b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:213\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(607, '95ab0ae5-9d50-4c66-9823-73ce968e9c22', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Syria\', 963, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.61\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(608, '95ab0ae5-9d8f-44b6-87ee-8318f0cef4f2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:214\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(609, '95ab0ae5-9f3a-4239-8dad-e382e4538a28', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Taiwan\', 886, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(610, '95ab0ae5-9f7a-4c04-8cc6-b0639caa036b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:215\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(611, '95ab0ae5-a127-4c23-96d3-18bbd6625fd7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Tajikistan\', 992, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.63\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(612, '95ab0ae5-a167-49d9-bbcc-a37074656daf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:216\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(613, '95ab0ae5-a30b-4ceb-9e98-3ac3316343b4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Tanzania\', 255, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.54\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(614, '95ab0ae5-a34b-49b3-ae6d-05bef9fff0eb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:217\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(615, '95ab0ae5-a500-4872-b431-67afd36f0f2a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Thailand\', 66, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.67\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(616, '95ab0ae5-a540-41f1-ae15-00c3ff6e65e6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:218\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(617, '95ab0ae5-a6e6-4b54-be38-17b823daebd2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Togo\', 228, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.57\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(618, '95ab0ae5-a726-4211-b0b0-0f044e3fb59b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:219\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(619, '95ab0ae5-a8d9-4e7e-85e8-08783e131135', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Tokelau\', 690, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.70\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(620, '95ab0ae5-a918-407e-bb6a-4ce98af91f2e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:220\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(621, '95ab0ae5-aac5-460c-98a4-5b8d74787bb9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Tonga\', 676, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.64\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(622, '95ab0ae5-ab05-423a-99e0-b94b8842996b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:221\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(623, '95ab0ae5-acad-4825-a9a7-9775aed55651', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Transnistria\', 373, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.56\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(624, '95ab0ae5-acf0-4752-84eb-9e95e9476ac5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:222\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(625, '95ab0ae5-ae9a-48df-93ae-f9a5ba07dff4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Trinidad and Tobago\', 1868, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.53\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(626, '95ab0ae5-aee5-430f-bc58-ba1f50cab56f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:223\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(627, '95ab0ae5-b0bc-4a5c-a43f-b2f38518f9e4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Tunisia\', 216, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.85\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(628, '95ab0ae5-b0ff-4b61-8f81-1d5e714fb46f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:224\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(629, '95ab0ae5-b2b0-4448-bc70-0326df99ad68', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Turkey\', 90, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.64\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(630, '95ab0ae5-b2f0-4882-8254-e21b7b39bc9f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:225\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(631, '95ab0ae5-b4d9-4d83-8aed-310383e10aaa', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Turkmenistan\', 993, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.90\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(632, '95ab0ae5-b51f-4751-a6f6-fdeb425dd519', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:226\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(633, '95ab0ae5-b6e8-4327-befe-5c1e1ff830e9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Turks and Caicos Islands\', 1649, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.89\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(634, '95ab0ae5-b727-416e-b9fb-69a0181e5f9d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:227\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(635, '95ab0ae5-b8dc-4af8-b2ef-a9db1081e6e7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Tuvalu\', 688, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.74\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(636, '95ab0ae5-b91b-4bfa-8517-3040db8f8b08', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:228\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(637, '95ab0ae5-bb30-4746-bbf6-31b62b4a47af', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Uganda\', 256, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.67\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(638, '95ab0ae5-bb6f-482b-b899-3d3c53ca9ada', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:229\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(639, '95ab0ae5-bd2c-4449-8b4e-59424d70b689', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Ukraine\', 380, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.72\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(640, '95ab0ae5-bd79-48bf-9ccf-9a0df6b5f9a9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:230\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(641, '95ab0ae5-bf68-48c3-92a3-a62d7514c5fa', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'United Arab Emirates\', 971, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.76\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(642, '95ab0ae5-bfd0-4356-a487-2c44822fa9c8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:231\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(643, '95ab0ae5-c228-45d1-81ea-03593619cecd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'United Kingdom\', 44, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.20\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(644, '95ab0ae5-c2a8-4c08-ae4a-b4c5d5f05aaf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:232\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(645, '95ab0ae5-c539-431e-9689-3edd44b605c3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'United States\', 1, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.26\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(646, '95ab0ae5-c5b7-4312-aa49-98eaf865af6a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:233\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(647, '95ab0ae5-c83b-48c2-b6ac-28b0fb648cd2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'United States Virgin Islands\', 1340, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.10\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(648, '95ab0ae5-c8be-495d-b05d-a2beb0bc281f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:234\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(649, '95ab0ae5-cb6d-4c68-a011-da467bd6f6a8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Uruguay\', 598, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.44\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(650, '95ab0ae5-cbf4-4fb4-a83e-e503ff7a53d2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:235\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(651, '95ab0ae5-cea2-4da7-93d0-7700c38e6b70', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Uzbekistan\', 998, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.39\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(652, '95ab0ae5-cf2b-4830-919a-28f1676c1632', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:236\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(653, '95ab0ae5-d1cd-48f3-a019-bbb1edd1f007', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Vanuatu\', 678, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.39\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(654, '95ab0ae5-d24e-4dc8-8ef7-e71eaba77e43', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:237\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(655, '95ab0ae5-d4db-45ef-8f3a-58d6129ec965', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Vatican City\', 379, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.24\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(656, '95ab0ae5-d55b-42b9-b04d-897591257c0a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:238\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(657, '95ab0ae5-d7e1-4f4e-9038-6aee54b267a8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Venezuela\', 58, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.14\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(658, '95ab0ae5-d860-42b5-bb79-92a766c3d47e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:239\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(659, '95ab0ae5-daf1-464d-8c60-8e21c3a784bf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Vietnam\', 84, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.18\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(660, '95ab0ae5-db75-4b9a-b495-b59e17d008b3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:240\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(661, '95ab0ae5-de11-4a2f-8437-acf22d38f650', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Wallis and Futuna\', 681, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.32\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(662, '95ab0ae5-de90-4561-804c-4f0d7111c1a2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:241\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(663, '95ab0ae5-e121-47a6-b679-5dcf80b85ebf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Western Sahara\', 212, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.25\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(664, '95ab0ae5-e1a1-42e7-b175-6b89957525f6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:242\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(665, '95ab0ae5-e438-4cd1-b619-a2f2b6965138', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Yemen\', 967, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.21\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(666, '95ab0ae5-e4d1-4ccc-a2c7-d8334024ab21', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:243\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(667, '95ab0ae5-e78a-49b3-a05f-f177d45c040e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Zambia\', 260, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.32\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(668, '95ab0ae5-e820-4824-821a-8dd3ff1412d4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:244\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(669, '95ab0ae5-ead2-4bd5-8315-edd40d71ebe1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `countries` (`name`, `phone_code`, `updated_at`, `created_at`) values (\'Zimbabwe\', 263, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"3.45\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8ba53578973ec708250b3f2cb9b56308\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(670, '95ab0ae5-eb55-44cf-ad4b-08c0f55e1c8a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Country:245\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(671, '95ab0ae5-f646-48a4-9b01-8fdea822a365', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"truncate table `users`\",\"time\":\"19.15\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/UserTableSeeder.php\",\"line\":18,\"hash\":\"598ca23f2da534b2d7af82a24c0104ef\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(672, '95ab0ae6-16ef-4a66-b301-bb35a1200951', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `users` (`status`, `username`, `email`, `password`, `first_name`, `last_name`, `zip`, `city`, `address`, `phone`, `gender`, `email_verified_at`, `created_at`, `updated_at`) values (1, \'lawzilla\', \'lawzilla@gmail.com\', \'yuonvQ0ekAdMcR6NpUUS0Ocx7u0GZfbspRzFJPvaBfqZBTRTVsi2S\', \'Super\', \'Admin\', \'12345\', \'New York\', \'Times Square\', \'+1234567890\', 0, \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.41\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"0d5ecaeeb171f7f8c1eb904689b7bf22\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(673, '95ab0ae6-1718-4eb3-aecc-d35e53017906', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\User:1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(674, '95ab0ae6-1cf1-4371-bd04-a4f30c98e2e3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"truncate table `roles`\",\"time\":\"13.31\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/BooleanTrait.php\",\"line\":95,\"hash\":\"18b1d33078e8f474519830a6364463b1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(675, '95ab0ae6-1f37-47d6-a686-9ff94fc5b366', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `roles` (`type`, `name`, `updated_at`, `created_at`) values (1, \'Admin\', \'2022-02-23 12:15:47\', \'2022-02-23 12:15:47\')\",\"time\":\"2.90\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"357f4f3d83b4fc61a691b7d183297b8d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(676, '95ab0ae6-1fd3-418c-9acd-23b910800428', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Role:1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:47'),
(677, '95ab0ae6-22a7-4cdd-8867-b127c76b2788', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `roles` (`type`, `name`, `updated_at`, `created_at`) values (1, \'Editor\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.28\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"357f4f3d83b4fc61a691b7d183297b8d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(678, '95ab0ae6-234e-436b-bc09-04e9e6914b85', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Role:2\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(679, '95ab0ae6-2683-41b2-b1a6-f5674a6d17a4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `roles` (`type`, `name`, `updated_at`, `created_at`) values (1, \'Author\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"4.27\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"357f4f3d83b4fc61a691b7d183297b8d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(680, '95ab0ae6-2719-4978-8f69-ed97b4463131', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Role:3\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(681, '95ab0ae6-29ea-4547-830b-8e375dce2865', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `roles` (`type`, `name`, `updated_at`, `created_at`) values (1, \'User\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.26\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"357f4f3d83b4fc61a691b7d183297b8d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(682, '95ab0ae6-2a7e-42c3-9fb8-2af175703edb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Role:4\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(683, '95ab0ae6-2d4e-4471-b241-ca9b3c68a287', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `roles` (`type`, `name`, `updated_at`, `created_at`) values (1, \'Demo\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.37\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"357f4f3d83b4fc61a691b7d183297b8d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(684, '95ab0ae6-2de2-40e9-bec8-130d8b125e7d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Role:5\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(685, '95ab0ae6-30a6-46b3-aadd-0d4ddb71f52b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `roles` (`type`, `name`, `updated_at`, `created_at`) values (1, \'Team\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.22\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"357f4f3d83b4fc61a691b7d183297b8d\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(686, '95ab0ae6-3140-4494-9e61-0db88ed3b3e8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Role:6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(687, '95ab0ae6-32e8-4990-ac49-5b1c61ed69d5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `users`.`id` = 1 limit 1\",\"time\":\"1.50\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/RoleTableSeeder.php\",\"line\":48,\"hash\":\"ee213820cebe0ffacdc09147c4a6462f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(688, '95ab0ae6-3504-4774-8ba8-1cbcc9cebf56', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `users`.`id` = 2 limit 1\",\"time\":\"0.95\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/RoleTableSeeder.php\",\"line\":49,\"hash\":\"ee213820cebe0ffacdc09147c4a6462f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(689, '95ab0ae6-3621-4f35-8570-0ed523a1e1f2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `users`.`id` = 3 limit 1\",\"time\":\"1.09\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/RoleTableSeeder.php\",\"line\":50,\"hash\":\"ee213820cebe0ffacdc09147c4a6462f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(690, '95ab0ae6-38dc-4453-8be0-7d42dc6a582e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `roles` set `created_by` = 1, `roles`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 1\",\"time\":\"2.92\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"c3364bee73e2f9f101abd1d68ea6288b\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(691, '95ab0ae6-3927-4b9b-acd9-e7463c227d83', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Role:1\",\"changes\":{\"updated_at\":\"2022-02-23 12:15:48\",\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(692, '95ab0ae6-3ac4-418b-8a4a-31630a313472', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `roles` set `created_by` = 1, `roles`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 2\",\"time\":\"2.59\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"c3364bee73e2f9f101abd1d68ea6288b\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(693, '95ab0ae6-3aec-441c-9465-20f7a7b430fd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Role:2\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(694, '95ab0ae6-3c64-423b-93da-8159241ebdc0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `roles` set `created_by` = 1, `roles`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 3\",\"time\":\"2.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"c3364bee73e2f9f101abd1d68ea6288b\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(695, '95ab0ae6-3c90-4004-b612-323d16aec428', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Role:3\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(696, '95ab0ae6-3e08-47cc-9303-65c9eb0534ab', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `roles` set `created_by` = 1, `roles`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 4\",\"time\":\"2.60\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"c3364bee73e2f9f101abd1d68ea6288b\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(697, '95ab0ae6-3e32-42d1-a596-4a13bbdaf87e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Role:4\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(698, '95ab0ae6-3f95-4776-93a2-b7f03a07139b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `roles` set `created_by` = 1, `roles`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 5\",\"time\":\"2.42\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"c3364bee73e2f9f101abd1d68ea6288b\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(699, '95ab0ae6-3fbe-42b2-9a10-f57f57b9c201', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Role:5\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(700, '95ab0ae6-411a-4ee9-91cb-2963d76358f5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `roles` set `created_by` = 1, `roles`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 6\",\"time\":\"2.32\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"c3364bee73e2f9f101abd1d68ea6288b\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(701, '95ab0ae6-4144-48e1-bc37-e96b563d7ce0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Role:6\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(702, '95ab0ae6-4345-4cba-81c6-b3505f478b13', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `role_user` (`role_id`, `user_id`) values (1, 1)\",\"time\":\"2.50\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/RoleTableSeeder.php\",\"line\":61,\"hash\":\"533d96e07f7c78907ee66867d62bc70b\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(703, '95ab0ae6-49f8-44cf-bc9f-4b04d6cb9a31', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"truncate table `pages`\",\"time\":\"14.76\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/BooleanTrait.php\",\"line\":95,\"hash\":\"a2df1c1bda3b4620be393a7472ac5fa0\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(704, '95ab0ae6-4a91-4ba7-91c6-bb6ede595665', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `users`.`id` = 1 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/PageTableSeeder.php\",\"line\":18,\"hash\":\"ee213820cebe0ffacdc09147c4a6462f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(705, '95ab0ae6-4d0a-4d04-b38b-0134c772d587', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `content`, `created_by`, `updated_at`, `created_at`) values (1, 1, \'Main\', \'index\', 1, \'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\', 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.64\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"cd61e181c90c7e373a0dcb14cdd8c7ad\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(706, '95ab0ae6-4d49-4b3b-9167-a457de7e8656', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(707, '95ab0ae6-4eee-4d75-a7e9-c71ace765d22', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `content`, `created_by`, `updated_at`, `created_at`) values (1, 2, \'Company\', \'company\', 2, \'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\', 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.85\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"cd61e181c90c7e373a0dcb14cdd8c7ad\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(708, '95ab0ae6-4f29-45ff-8e74-b1b1b42116ec', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:2\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(709, '95ab0ae6-5097-40d3-bec0-59ee903d1c3d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (1, 3, \'Contacts\', \'contact\', 3, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.01\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(710, '95ab0ae6-50da-4b6b-ae4f-400e27228608', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:3\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(711, '95ab0ae6-5274-4021-824b-6e10babe6da2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (3, 4, \'Register\', \'register\', 4, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.60\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(712, '95ab0ae6-52ad-48b6-844c-5775d4640643', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:4\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(713, '95ab0ae6-5448-42c7-8b79-30f74549eeed', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (3, 5, \'Reset Password\', \'profile\\/request-password-reset\', 5, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.61\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(714, '95ab0ae6-5481-4a77-9e0c-97cf33fa9519', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:5\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(715, '95ab0ae6-5607-4cc2-bb7b-bf959b171e4c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (1, 6, \'Reset Password\', \'profile\\/password\', 6, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.51\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(716, '95ab0ae6-5640-440b-bb9b-eba5e9f4f446', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(717, '95ab0ae6-57dd-471e-8185-563689febde0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (3, 7, \'Login\', \'login\', 7, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.68\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(718, '95ab0ae6-5816-4632-a5da-1a1587f3e84d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(719, '95ab0ae6-59b9-4528-9522-874d51cdfc42', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (2, 8, \'Logout\', \'logout\', 8, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.70\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(720, '95ab0ae6-59f1-480d-9aa3-65d4ca517f85', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:8\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(721, '95ab0ae6-5b8b-4784-9a5d-f5181cd07d2f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (2, 9, \'My Profile\', \'profile\', 9, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.59\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(722, '95ab0ae6-5bc3-476c-ba93-408fb7ecf948', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(723, '95ab0ae6-5d99-4a22-91aa-a2da967fadd4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (2, 10, \'Edit Profile\', \'profile\\/edit\', 10, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.66\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(724, '95ab0ae6-5e2e-4315-a80a-798c3dd6f4f4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:10\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(725, '95ab0ae6-60e1-446b-9924-987c28fd5a98', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (1, 11, \'Blog\', \'blog\', 11, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.29\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(726, '95ab0ae6-6176-4e2a-8fa7-df2a0c99c5a7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:11\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(727, '95ab0ae6-641e-45c0-aa3b-30b32a6f9598', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (1, 12, \'Blog Post\', \'blog\\/post\', 12, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.36\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(728, '95ab0ae6-64b6-40be-913b-fc9cd442d798', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:12\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(729, '95ab0ae6-679f-4cbc-b6d8-af3118facec0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (0, 13, \'Gallery\', \'gallery\\/index\', 13, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.50\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(730, '95ab0ae6-683d-4970-a42d-00765c06c0a0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:13\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(731, '95ab0ae6-6b53-4c9b-b0c6-ed4b69359ced', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `pages` (`visible`, `id`, `link_name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (0, 14, \'Faq\', \'faq\\/index\', 14, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.71\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"8def6fd94938986786ac50e7b1b26d63\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(732, '95ab0ae6-6bf7-4c2d-b68d-b79658315487', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Page:14\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(733, '95ab0ae6-7385-4c72-bd8c-2ae10ba9c4a7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"truncate table `menus`\",\"time\":\"15.50\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/BooleanTrait.php\",\"line\":95,\"hash\":\"e115bd6813f8df168a1706194f7de945\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(734, '95ab0ae6-7482-4f41-9867-159c2ad67089', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `users`.`id` = 1 limit 1\",\"time\":\"0.98\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/MenuTableSeeder.php\",\"line\":19,\"hash\":\"ee213820cebe0ffacdc09147c4a6462f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(735, '95ab0ae6-76e6-4ac2-ba5b-1dc3314d16f6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menus` (`type`, `name`, `slug`, `created_by`, `updated_at`, `created_at`) values (1, \'Main\', \'main\', 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.82\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"e65bed26cb61acc961561a7396b7b399\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(736, '95ab0ae6-774e-4792-a1b7-8db6ca72e6bf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Menu:1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(737, '95ab0ae6-80b5-4e58-9fb7-279a15f24737', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"truncate table `menu_items`\",\"time\":\"16.48\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/BooleanTrait.php\",\"line\":95,\"hash\":\"fb53a9d93c9c54d3a406f724e76c1ff6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(738, '95ab0ae6-83c3-4baa-b628-11bfe356c5fd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `menus` where `menus`.`id` = 1 limit 1\",\"time\":\"1.04\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/BooleanTrait.php\",\"line\":95,\"hash\":\"632b227cccf3260ea4126b15f9ef8516\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(739, '95ab0ae6-853d-4508-973a-2d476453b127', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.87\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(740, '95ab0ae6-875f-40d6-af60-4dbe718216f2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (1, 1, 1, null, \'Home\', \'#slider\', 1, 1, null, 1, 2, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.84\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(741, '95ab0ae6-87cb-44a2-943c-9242f1664e11', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(742, '95ab0ae6-88d9-46d9-9e9c-2cf29c2607a3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.71\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(743, '95ab0ae6-8b0e-4714-931e-3fdd1ce91b2a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (1, 1, 2, null, \'Features\', \'#quotes\', 2, 1, null, 3, 4, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.14\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(744, '95ab0ae6-8b79-4176-9e92-5d1495f5738d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:2\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(745, '95ab0ae6-8c9b-46af-8ce7-618e05b8d47c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.82\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(746, '95ab0ae6-8e8c-43bc-b4a0-f93e2bf9c337', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (1, 1, 3, null, \'Blog\', \'#posts\', 3, 1, null, 5, 6, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(747, '95ab0ae6-8ed7-4199-ba6e-9f3e1fa39de1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:3\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(748, '95ab0ae6-8fac-41f9-a31b-4835322ec5e1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.63\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(749, '95ab0ae6-913f-448b-b251-57623907158e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (1, 1, 4, null, \'Team\', \'#users\', 4, 1, null, 7, 8, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.51\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(750, '95ab0ae6-917c-423a-8eb7-1407af9bc34d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:4\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(751, '95ab0ae6-9216-4db7-9a60-8ba09f39e53e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.45\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(752, '95ab0ae6-9389-47d7-868a-87d3821915aa', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (1, 1, 5, null, \'Gallery\', \'#media\', 5, 1, null, 9, 10, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.48\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(753, '95ab0ae6-93bb-43c9-9d22-cb1d9dbc7f73', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:5\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(754, '95ab0ae6-944a-453b-8ae1-3278d494b0ed', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.44\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(755, '95ab0ae6-95fa-4d82-ac9d-855a4c8102ba', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (1, 1, 6, null, \'Faq\', \'#faqs\', 6, 1, null, 11, 12, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.56\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(756, '95ab0ae6-968f-4b57-9b8d-5d1e022bd04c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(757, '95ab0ae6-97fb-46ab-9fdf-5bf85028f559', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.90\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(758, '95ab0ae6-9a1c-4a8d-bd13-91e1209d03c0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (1, 1, 7, null, \'Contacts\', \'#contacts\', 7, 1, null, 13, 14, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.96\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(759, '95ab0ae6-9a78-4056-9eb4-a34ba6670719', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(760, '95ab0ae6-9b5e-41cb-9fdb-8d7329af8f74', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.72\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(761, '95ab0ae6-9cf3-474a-8083-8d27e1282f8a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (0, 1, 8, 4, \'Register\', null, 8, 1, null, 15, 16, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.64\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(762, '95ab0ae6-9d2f-446a-bca9-ded61d8efe14', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:8\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(763, '95ab0ae6-9de5-4e79-b76a-a7be835c7231', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(764, '95ab0ae6-9f65-45e2-8c52-e213a28b0384', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (0, 1, 9, 7, \'Login\', null, 9, 1, null, 17, 18, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.54\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(765, '95ab0ae6-9f9d-432a-b114-da709588e303', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(766, '95ab0ae6-a02e-4a60-aab9-a305d096882e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.47\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(767, '95ab0ae6-a191-41b0-bdc1-c7cc25bf4620', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (0, 1, 10, 9, \'My profile\', null, 10, 1, null, 19, 20, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.43\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(768, '95ab0ae6-a1c3-4da4-992b-fdc4bdcdaf65', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:10\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(769, '95ab0ae6-a24b-4ffd-82f6-597426855907', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.42\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(770, '95ab0ae6-a3ed-497a-9bcc-8d9c6a488735', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (0, 1, 11, 9, \'My Profile\', null, 11, 1, null, 21, 22, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.52\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(771, '95ab0ae6-a482-454f-9d9a-1a834883099d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:11\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(772, '95ab0ae6-a5c9-4718-8b53-d20584429074', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.79\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(773, '95ab0ae6-a7b3-4d57-9143-90229927b086', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (0, 1, 12, 10, \'Edit Profile\', null, 12, 1, null, 23, 24, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.79\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(774, '95ab0ae6-a7fd-49c1-bd91-423dfb070caf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:12\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(775, '95ab0ae6-a8cb-49f0-97c8-c24d943cc3e2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`_rgt`) as aggregate from `menu_items`\",\"time\":\"0.62\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"51518fbe48816556aff2de1f103d481e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(776, '95ab0ae6-aa61-491b-8b5b-7b0917ff81d5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `menu_items` (`type`, `inherited`, `id`, `page_id`, `link_name`, `url`, `sorting`, `menu_id`, `parent_id`, `_lft`, `_rgt`, `updated_at`, `created_at`) values (0, 1, 13, 8, \'Logout\', null, 13, 1, null, 25, 26, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.55\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"5116099b5f503ba7f727272483eb07b9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(777, '95ab0ae6-aa9c-4d13-895a-fc7df344c2a5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MenuItem:13\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(778, '95ab0ae6-ab3a-4fcd-9283-222f4131c7bf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `users`.`id` = 1 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/MenuItemTableSeeder.php\",\"line\":339,\"hash\":\"ee213820cebe0ffacdc09147c4a6462f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(779, '95ab0ae6-acde-4b11-b46c-c58f4860b980', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 1\",\"time\":\"2.63\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(780, '95ab0ae6-ad0d-421a-bf65-597906618c9e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:1\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(781, '95ab0ae6-ae8a-41da-a8a0-e29ab57af0f9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 2\",\"time\":\"2.52\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(782, '95ab0ae6-aeb7-4f09-9c9d-9f5ec7b071d4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:2\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(783, '95ab0ae6-b034-4acd-8575-571f8cb4df44', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 3\",\"time\":\"2.52\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(784, '95ab0ae6-b05f-4b99-91c6-b9ce333993fb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:3\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(785, '95ab0ae6-b1e4-45fd-886d-246e673def98', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 4\",\"time\":\"2.58\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(786, '95ab0ae6-b213-411d-9090-0d7d2ce03a1e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:4\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(787, '95ab0ae6-b3a6-42a0-a387-be5229b140a6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 5\",\"time\":\"2.61\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(788, '95ab0ae6-b3d8-4210-8567-a9034d5e1a31', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:5\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(789, '95ab0ae6-b5a3-4f5b-b60a-62a01c376efd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 6\",\"time\":\"2.78\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(790, '95ab0ae6-b624-4bef-9ac5-9b89b5eaa4ea', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:6\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(791, '95ab0ae6-b91b-4be6-9b43-23fc00b732b1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 7\",\"time\":\"3.59\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(792, '95ab0ae6-b9aa-4b1a-ac5b-856f3df30eee', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:7\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(793, '95ab0ae6-bc35-4a01-8173-36d1cc0b89f4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 8\",\"time\":\"3.01\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(794, '95ab0ae6-bc8b-469e-aaa4-36742f1d7a52', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:8\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(795, '95ab0ae6-beae-4e89-a834-264f7eff27b2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 9\",\"time\":\"2.88\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(796, '95ab0ae6-bf05-47fc-9882-105667f36668', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:9\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(797, '95ab0ae6-c12c-4f91-8b9a-915dbfad0008', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 10\",\"time\":\"2.91\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(798, '95ab0ae6-c186-4f82-8261-53c8232a0953', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:10\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(799, '95ab0ae6-c39e-42fa-9114-82ae06fea5d9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 11\",\"time\":\"2.91\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(800, '95ab0ae6-c3e3-48b9-83dd-0a970ba3845c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:11\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(801, '95ab0ae6-c5a8-4760-b0e1-a371bb0952fd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 12\",\"time\":\"2.66\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(802, '95ab0ae6-c5dd-4f4c-81d2-380f66d70f5d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:12\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(803, '95ab0ae6-c785-47d1-874c-b8cb27594f60', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `created_by` = 1, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 13\",\"time\":\"2.67\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"856a58706818479808a48d1d1cfcecd1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(804, '95ab0ae6-c7bb-4a04-b1b0-fcd890f5bba6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:13\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(805, '95ab0ae6-c872-402d-ad50-89bec58791fd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `_lft`, `_rgt` from `menu_items` where `id` = 11 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"f44fb1648f71ca050a5b372ff8f10a56\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(806, '95ab0ae6-c9f3-4003-8205-412e3c576f6e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `_lft` = case when `_lft` between 21 and 22 then `_lft`-1 when `_lft` between 20 and 22 then `_lft`+2 else `_lft` end, `_rgt` = case when `_rgt` between 21 and 22 then `_rgt`-1 when `_rgt` between 20 and 22 then `_rgt`+2 else `_rgt` end where (`_lft` between 20 and 22 or `_rgt` between 20 and 22)\",\"time\":\"2.74\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"9b4b70a674f048a61507d15dbdb47c10\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(807, '95ab0ae6-ca7e-4b54-8514-8b783776b2bc', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `_lft`, `_rgt` from `menu_items` where `id` = 11 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"f44fb1648f71ca050a5b372ff8f10a56\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(808, '95ab0ae6-cb0a-4266-8365-d4be07144bd6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `_lft`, `_rgt` from `menu_items` where `id` = 10 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"f44fb1648f71ca050a5b372ff8f10a56\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(809, '95ab0ae6-cc98-4f76-aae5-04afff7e2c7a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `parent_id` = 10, `_lft` = 20, `_rgt` = 21, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 11\",\"time\":\"2.40\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"4b5274cf8765ce99236b97ed843ef734\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(810, '95ab0ae6-ccda-4b37-8b96-a6528ee4dfa5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:11\",\"changes\":{\"parent_id\":10,\"_lft\":20,\"_rgt\":21},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(811, '95ab0ae6-cda2-44a9-9821-3d74c775d43e', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `_lft`, `_rgt` from `menu_items` where `id` = 10 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"f44fb1648f71ca050a5b372ff8f10a56\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(812, '95ab0ae6-ce3f-40c4-940e-094132fd49ba', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `_lft`, `_rgt` from `menu_items` where `id` = 12 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"f44fb1648f71ca050a5b372ff8f10a56\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(813, '95ab0ae6-cfa8-448b-9894-8e2a3ca7a9d0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `_lft` = case when `_lft` between 23 and 24 then `_lft`-1 when `_lft` between 22 and 24 then `_lft`+2 else `_lft` end, `_rgt` = case when `_rgt` between 23 and 24 then `_rgt`-1 when `_rgt` between 22 and 24 then `_rgt`+2 else `_rgt` end where (`_lft` between 22 and 24 or `_rgt` between 22 and 24)\",\"time\":\"2.68\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"05607d080298cb05cfc83f4174901611\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(814, '95ab0ae6-d02d-4e50-877d-c67755a09f69', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `_lft`, `_rgt` from `menu_items` where `id` = 12 limit 1\",\"time\":\"0.47\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"f44fb1648f71ca050a5b372ff8f10a56\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(815, '95ab0ae6-d0ac-401e-8390-217dd6c59f5c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `_lft`, `_rgt` from `menu_items` where `id` = 10 limit 1\",\"time\":\"0.41\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"f44fb1648f71ca050a5b372ff8f10a56\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(816, '95ab0ae6-d251-4415-bcc0-bb1e56b55145', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `menu_items` set `parent_id` = 10, `_lft` = 22, `_rgt` = 23, `menu_items`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 12\",\"time\":\"2.58\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"4b5274cf8765ce99236b97ed843ef734\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(817, '95ab0ae6-d296-4cc2-9517-2194d66f2093', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\MenuItem:12\",\"changes\":{\"parent_id\":10,\"_lft\":22,\"_rgt\":23},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(818, '95ab0ae6-da21-4d01-ba23-5603e48832a3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"truncate table `units`\",\"time\":\"16.75\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/BooleanTrait.php\",\"line\":95,\"hash\":\"9e31983d56ddc8d9c592d05d06e3fa73\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(819, '95ab0ae6-dcf9-4f74-a31d-cd4625f27efc', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Dashboard\', \'dashboard\', 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.33\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(820, '95ab0ae6-dd80-4a5b-9a4d-e8a4b62a23a7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(821, '95ab0ae6-e02f-4aab-98ca-89094c060400', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Users\', \'user\', 2, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.11\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(822, '95ab0ae6-e0b7-4289-9f80-1edca692a928', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:2\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(823, '95ab0ae6-e393-4071-a8c5-4c88679d775d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Roles\', \'role\', 3, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.58\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(824, '95ab0ae6-e416-408d-b946-3f993d097910', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:3\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(825, '95ab0ae6-e6e8-467a-b79c-970cc103f861', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Permissions\', \'permission\', 4, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.34\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(826, '95ab0ae6-e770-4c14-a632-ae1957703bb1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:4\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(827, '95ab0ae6-ea5a-442a-a065-50c8edd7610d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Pages\', \'page\', 5, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.52\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(828, '95ab0ae6-eae1-4453-8a05-bc8c5f8206ba', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:5\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(829, '95ab0ae6-ed76-43b0-80e1-ee65e29e98eb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (0, null, \'Page Categories\', \'pageCategory\', 6, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.98\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(830, '95ab0ae6-edbc-45d5-b1c1-2f013bd18a93', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(831, '95ab0ae6-ef8f-4831-b91e-be72d327d357', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (0, null, \'Snippets\', \'snippet\', 7, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.60\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(832, '95ab0ae6-efc3-4a2b-8594-9bcc54c77beb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(833, '95ab0ae6-f166-4699-92a5-baf17110c928', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Menus\', \'menu\', 8, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.57\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(834, '95ab0ae6-f191-48a6-b732-b6d3dafa70f3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:8\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(835, '95ab0ae6-f316-4633-b5ab-1888d8276db4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (0, null, \'Menu Items\', \'menuItem\', 9, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.45\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(836, '95ab0ae6-f344-4e28-ac6a-c3c0e2bf21e1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(837, '95ab0ae6-f4a7-4974-a325-e9f1a69d9ddf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Media Files\', \'mediaFile\', 10, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.32\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(838, '95ab0ae6-f4d0-47eb-8c84-465b7e378e21', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:10\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(839, '95ab0ae6-f6a4-433d-85cd-6e414dcf0770', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (0, null, \'Media Categories\', \'mediaCategory\', 11, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.47\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(840, '95ab0ae6-f6c6-470c-b102-bfe481a26f67', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:11\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(841, '95ab0ae6-f80d-46bc-bbd7-48f95790c2f1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Slider\', \'slider\', 12, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.30\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(842, '95ab0ae6-f829-4f28-98c5-60ed82af41ff', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:12\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(843, '95ab0ae6-f997-4499-a5a5-ead52207fd48', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'FAQ Items\', \'faqItem\', 13, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.22\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(844, '95ab0ae6-fa17-4941-91ee-a65102e01609', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:13\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(845, '95ab0ae6-fcee-46a1-b0ac-43e6094fd346', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (0, null, \'FAQ Categories\', \'faqCategory\', 14, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.21\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(846, '95ab0ae6-fd6c-499e-aac3-1c85373ed552', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:14\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(847, '95ab0ae7-0040-4629-9ef2-8b71233498ad', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Quotes\', \'quote\', 15, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.30\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(848, '95ab0ae7-00c3-4dcb-bb2e-b18ccf4a6354', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:15\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(849, '95ab0ae7-038b-4da7-a666-1d969a5f6ca1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Emails\', \'mail\', 16, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.23\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(850, '95ab0ae7-0412-4643-81e1-60af34c26678', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:16\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(851, '95ab0ae7-06eb-4bb8-9e10-d99752fa179a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Countries\', \'country\', 17, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.39\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(852, '95ab0ae7-0773-413c-b696-b0e7df9d3229', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:17\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(853, '95ab0ae7-0a4a-43a5-add2-effe8868af74', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Settings\', \'setting\', 18, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.41\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(854, '95ab0ae7-0ace-46ee-ab39-93f3d1909799', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:18\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(855, '95ab0ae7-0d84-42e6-a780-7e44efd43731', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Units\', \'unit\', 19, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.24\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(856, '95ab0ae7-0e09-4631-a1f9-9006f68537c0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:19\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(857, '95ab0ae7-10c2-42ff-bb0b-4efb9acd6bf9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `units` (`visible`, `parent_id`, `name`, `slug`, `sorting`, `updated_at`, `created_at`) values (1, null, \'Translations\', \'translation\', 20, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.26\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"68ec28aca95cc6e0c776241213de84cb\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(858, '95ab0ae7-1143-4e67-9636-f936088254e9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Unit:20\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(859, '95ab0ae7-1a1a-4c42-a963-067f65f198d5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"truncate table `settings`\",\"time\":\"17.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/BooleanTrait.php\",\"line\":95,\"hash\":\"e027f2221bc185152408b6e378ac41bd\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(860, '95ab0ae7-1b9c-4e85-a882-84301955a6bd', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `users`.`id` = 1 limit 1\",\"time\":\"1.46\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/SettingTableSeeder.php\",\"line\":18,\"hash\":\"ee213820cebe0ffacdc09147c4a6462f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(861, '95ab0ae7-1f37-4bf4-ac0b-1b609e70a367', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (1, 0, \'Default Site Title\', \'site_title\', \'Company Site\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.80\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(862, '95ab0ae7-1fec-437b-b416-2249cd3c4abb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(863, '95ab0ae7-237e-4796-a226-56356a2f26f3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (1, 0, \'Default Meta Keywords\', \'site_meta_keywords\', \'Company Site\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"4.43\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(864, '95ab0ae7-241b-47ab-9bdf-bdf45288bc44', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:2\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(865, '95ab0ae7-275d-40a2-8670-c07d519f5a22', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (1, 0, \'Default Meta Description\', \'site_meta_description\', \'Company Site\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"4.16\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(866, '95ab0ae7-27f3-4469-9450-b101661cc4de', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:3\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(867, '95ab0ae7-2ae6-49bd-9e6c-4b5b6b76973c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (1, 0, \'Administrator Email\', \'admin_email\', \'admin@gmail.com\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.41\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(868, '95ab0ae7-2b7a-4f51-ab74-be42be72bd3f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:4\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(869, '95ab0ae7-2e6e-491b-9c50-7fd8afc3aa50', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (1, 0, \'Administrator Name\', \'admin_name\', \'Admin Name\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.43\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(870, '95ab0ae7-2f05-427e-8eee-6d4a87b5c9d5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:5\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(871, '95ab0ae7-3171-44bb-b631-b7b1e1faa3ee', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (0, 0, \'Organization Name\', \'contact_name\', \'Organization Name\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.97\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(872, '95ab0ae7-31d4-4060-ac26-0458669a172b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:6\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(873, '95ab0ae7-33e4-44e7-8194-71c94ecf28e9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (0, 0, \'Organization Address\', \'contact_address\', \'Organization Address\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.88\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(874, '95ab0ae7-3448-477a-b320-9547bf9a2bb1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:7\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(875, '95ab0ae7-367a-491a-b9be-bf82321c6556', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (0, 0, \'Organization Phone\', \'contact_phone\', \'+1-234-567890\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"3.07\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(876, '95ab0ae7-36ec-45c5-a753-7d7bff12c823', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:8\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(877, '95ab0ae7-38e4-4125-a2c1-8f8c3f4aa2fe', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (0, 0, \'Organization Mail\', \'contact_email\', \'organization@gmail.com\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.74\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(878, '95ab0ae7-392f-4e91-a079-afa0e80c6f4c', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:9\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(879, '95ab0ae7-3b13-4e62-b56e-7fb1c68f652b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (0, 0, \'Organization Fax\', \'contact_fax\', \'+1-234-567890\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.89\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(880, '95ab0ae7-3b6a-4839-8b07-82794d003db0', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:10\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(881, '95ab0ae7-3d49-48c3-86f5-865e3faa32e7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (0, 0, \'Organization Twitter\', \'contact_twitter\', \'https:\\/\\/twitter.com\\/\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.97\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(882, '95ab0ae7-3d93-40f7-9cac-6afbd427eb80', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:11\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(883, '95ab0ae7-3f4b-4f44-9b57-c188debf3cc1', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (0, 0, \'Organization Web-Site\', \'contact_site\', \'http:\\/\\/website.com\\/\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.64\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(884, '95ab0ae7-3f95-41eb-bc7d-75eafbc6c99a', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:12\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(885, '95ab0ae7-4154-4b0c-88c8-67af1016ee3b', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `settings` (`type`, `value_type`, `title`, `key`, `value`, `updated_at`, `created_at`) values (0, 0, \'Organization Skype\', \'contact_skype\', \'organization_skype\', \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.69\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"12f8c533fe94a07442acae01e7b2b8c1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(886, '95ab0ae7-41a3-47e4-9c48-e016e192d560', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Setting:13\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(887, '95ab0ae7-4371-42a4-a31e-25e3d57d14a7', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 1\",\"time\":\"2.82\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(888, '95ab0ae7-43b1-4646-bbc8-b96a16cfa759', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:1\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(889, '95ab0ae7-4568-4ee2-b0da-a8bedb59174d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 2\",\"time\":\"2.60\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(890, '95ab0ae7-45a8-4e52-9c13-03dba63ca5c3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:2\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(891, '95ab0ae7-4762-4c85-8770-a2c0a43d9b1d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 3\",\"time\":\"2.58\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(892, '95ab0ae7-47a3-40ae-baf2-d864acba8ab4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:3\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(893, '95ab0ae7-4979-4a66-a4c6-03f2762ca484', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 4\",\"time\":\"2.87\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(894, '95ab0ae7-49b7-4042-acb3-c991bc0b9927', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:4\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(895, '95ab0ae7-4b7c-47e3-82f5-caf84c18d748', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 5\",\"time\":\"2.75\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(896, '95ab0ae7-4bba-41d7-843b-f5d79b985d05', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:5\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(897, '95ab0ae7-4d7b-42b2-aaef-b423784c557d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 6\",\"time\":\"2.71\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(898, '95ab0ae7-4dba-45e9-989b-9a86ecbf3db8', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:6\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(899, '95ab0ae7-4f96-4ca6-b668-e029b33b98e4', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 7\",\"time\":\"2.79\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(900, '95ab0ae7-4fdf-4ed0-b1fe-26ee41273580', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:7\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(901, '95ab0ae7-51b7-4b04-a3ff-6689ce7ad0a3', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 8\",\"time\":\"2.85\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(902, '95ab0ae7-51f5-4645-9e21-07b0e4db6caf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:8\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(903, '95ab0ae7-53af-4833-b0b6-fa5e53f6b79d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 9\",\"time\":\"2.52\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(904, '95ab0ae7-540c-496c-b55c-366a8013b93d', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:9\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(905, '95ab0ae7-5631-4fba-b485-032ca4742019', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 10\",\"time\":\"2.98\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(906, '95ab0ae7-5683-4280-a18d-68babae66fbb', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:10\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(907, '95ab0ae7-587c-4ff6-9334-f5767ade6eaf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 11\",\"time\":\"2.83\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(908, '95ab0ae7-58c8-4951-8e40-1f62a50081e6', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:11\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(909, '95ab0ae7-5abf-4fc8-8ec0-407debe783f2', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 12\",\"time\":\"2.81\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(910, '95ab0ae7-5b0d-4cbe-8b45-41a4349ddf94', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:12\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(911, '95ab0ae7-5d0b-4a0a-9e60-1e66cedad3f9', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `settings` set `created_by` = 1, `settings`.`updated_at` = \'2022-02-23 12:15:48\' where `id` = 13\",\"time\":\"2.91\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"74be9ee2583fe1a692ca45f955f01e5e\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(912, '95ab0ae7-5d58-46ab-803a-f0c42cba6b38', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"updated\",\"model\":\"App\\\\Models\\\\Setting:13\",\"changes\":{\"created_by\":1},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(913, '95ab0ae7-6403-43e1-b484-39ab6b5feaaf', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"truncate table `page_categories`\",\"time\":\"14.23\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/BooleanTrait.php\",\"line\":95,\"hash\":\"e24aa9a41315c39d69b7d09ea843548c\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(914, '95ab0ae7-64f1-4424-950a-c9c36fe1e468', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `users`.`id` = 1 limit 1\",\"time\":\"0.91\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/PageCategoryTableSeeder.php\",\"line\":18,\"hash\":\"ee213820cebe0ffacdc09147c4a6462f\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(915, '95ab0ae7-675d-4a2b-9be2-00d5aa671eef', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `page_categories` (`visible`, `id`, `name`, `slug`, `sorting`, `created_by`, `updated_at`, `created_at`) values (1, 1, \'Blog\', \'blog\', 1, 1, \'2022-02-23 12:15:48\', \'2022-02-23 12:15:48\')\",\"time\":\"2.89\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/app\\/Traits\\/FileTrait.php\",\"line\":21,\"hash\":\"829c0cfe0c2378bb61310efc7d6ffd31\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(916, '95ab0ae7-67fa-4461-8839-80f1906d2de5', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\PageCategory:1\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(917, '95ab0ae7-6912-4af6-ae8b-7be3d0856a4f', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"SET FOREIGN_KEY_CHECKS=1;\",\"time\":\"0.72\",\"slow\":false,\"file\":\"\\/home\\/alexander\\/WEB\\/www\\/lawzilla_backend\\/database\\/seeds\\/DatabaseSeeder.php\",\"line\":31,\"hash\":\"ff8d2195509c14c72a84fc4ea05c636c\",\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48'),
(918, '95ab0ae7-69d5-482f-9e61-8027cbdb9429', '95ab0ae7-6a43-4361-9ff5-9ada45f0faee', NULL, 1, 'command', '{\"command\":\"migrate:refresh\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate:refresh\"},\"options\":{\"database\":null,\"force\":false,\"path\":[],\"realpath\":false,\"seed\":true,\"seeder\":null,\"step\":null,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":false,\"no-ansi\":false,\"no-interaction\":false,\"env\":null},\"hostname\":\"AlexanderPC\"}', '2022-02-23 12:15:48');

-- --------------------------------------------------------

--
-- Структура таблицы `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `telescope_entries_tags`
--

INSERT INTO `telescope_entries_tags` (`entry_uuid`, `tag`) VALUES
('95ab0ae3-9eb2-43e1-a451-0d0cb491fa84', 'App\\Models\\Country:1'),
('95ab0ae3-a0ea-4006-8d56-917ea34dbbb1', 'App\\Models\\Country:2'),
('95ab0ae3-a31e-4c2b-bea0-5d25a414a4ae', 'App\\Models\\Country:3'),
('95ab0ae3-a563-42ee-8436-b98ac712ce28', 'App\\Models\\Country:4'),
('95ab0ae3-a7dc-4e16-8b65-1367de212a51', 'App\\Models\\Country:5'),
('95ab0ae3-aa49-463c-881b-0491343be180', 'App\\Models\\Country:6'),
('95ab0ae3-acd9-4ff6-b936-9e5bd67e08c8', 'App\\Models\\Country:7'),
('95ab0ae3-af32-4042-8ef8-dc5d3ec74d6f', 'App\\Models\\Country:8'),
('95ab0ae3-b186-4ab1-bd5c-50dc2be477aa', 'App\\Models\\Country:9'),
('95ab0ae3-b432-4cfb-94cc-350c612c3ee0', 'App\\Models\\Country:10'),
('95ab0ae3-b680-47eb-9316-6b84db681f3d', 'App\\Models\\Country:11'),
('95ab0ae3-b8c3-4115-94c9-7d2cd0dce674', 'App\\Models\\Country:12'),
('95ab0ae3-bb11-4f80-976f-78eaa27a0309', 'App\\Models\\Country:13'),
('95ab0ae3-bcfe-4dfa-9d22-3ed33886ad01', 'App\\Models\\Country:14'),
('95ab0ae3-beb7-4446-b5e1-7a6f02ff431f', 'App\\Models\\Country:15'),
('95ab0ae3-c075-4ddd-97d7-fbf8481acbaf', 'App\\Models\\Country:16'),
('95ab0ae3-c20a-404e-85a5-fdc3619bdf49', 'App\\Models\\Country:17'),
('95ab0ae3-c37d-4f79-82f8-57d9ed12c908', 'App\\Models\\Country:18'),
('95ab0ae3-c5b1-4ba9-a784-23b50916ce86', 'App\\Models\\Country:19'),
('95ab0ae3-c809-4342-961c-b77ff05a7b31', 'App\\Models\\Country:20'),
('95ab0ae3-ca57-415d-bcfd-66ceaeee1ec3', 'App\\Models\\Country:21'),
('95ab0ae3-cca3-4425-8b43-b3c5da0712b9', 'App\\Models\\Country:22'),
('95ab0ae3-cef7-4e51-a727-3324673fa715', 'App\\Models\\Country:23'),
('95ab0ae3-d144-4426-ac97-73ba14c8495a', 'App\\Models\\Country:24'),
('95ab0ae3-d398-4677-81f9-698bb255037a', 'App\\Models\\Country:25'),
('95ab0ae3-d5e8-49ff-ba9f-287f4c9ebc4c', 'App\\Models\\Country:26'),
('95ab0ae3-d83b-4438-a8a1-f8ecffd8edac', 'App\\Models\\Country:27'),
('95ab0ae3-da9b-484a-8316-c081e87a1821', 'App\\Models\\Country:28'),
('95ab0ae3-dd5f-4048-b204-7dea44e36841', 'App\\Models\\Country:29'),
('95ab0ae3-e0a9-419f-a81c-d47dea91e4f5', 'App\\Models\\Country:30'),
('95ab0ae3-e3c8-4770-8cc7-c4a2834c3055', 'App\\Models\\Country:31'),
('95ab0ae3-e6d8-4789-99b0-df8004bc426e', 'App\\Models\\Country:32'),
('95ab0ae3-e992-4507-a09c-b496dde24b54', 'App\\Models\\Country:33'),
('95ab0ae3-eb8f-4167-bbbb-2ddb8b15d6c5', 'App\\Models\\Country:34'),
('95ab0ae3-ed68-4cd4-ae2c-76b0b81e16a0', 'App\\Models\\Country:35'),
('95ab0ae3-eeff-4f2d-b82e-1dff422b782b', 'App\\Models\\Country:36'),
('95ab0ae3-f097-4a41-a391-708f9a43e171', 'App\\Models\\Country:37'),
('95ab0ae3-f23a-4728-98c4-6ca09cef3ace', 'App\\Models\\Country:38'),
('95ab0ae3-f3fc-4c53-a554-7b2c63eba25b', 'App\\Models\\Country:39'),
('95ab0ae3-f5c8-4f9e-9eaa-08bf95f25a10', 'App\\Models\\Country:40'),
('95ab0ae3-f776-4b95-817a-6e1d62af3254', 'App\\Models\\Country:41'),
('95ab0ae3-f92e-40ee-98b8-2db8330b6e15', 'App\\Models\\Country:42'),
('95ab0ae3-fac9-4025-9e76-769d922c69c4', 'App\\Models\\Country:43'),
('95ab0ae3-fc97-4620-94ef-9b5866f346b3', 'App\\Models\\Country:44'),
('95ab0ae3-fe8a-4dd9-95be-857b9a8ace9a', 'App\\Models\\Country:45'),
('95ab0ae4-00c3-4e59-ac23-a4f7bf7f95d8', 'App\\Models\\Country:46'),
('95ab0ae4-034c-49d4-a0d8-27fa61b86c13', 'App\\Models\\Country:47'),
('95ab0ae4-0671-4e65-94fc-3a84f50f249a', 'App\\Models\\Country:48'),
('95ab0ae4-097e-4949-98c6-df6735a133ec', 'App\\Models\\Country:49'),
('95ab0ae4-0c94-46d2-a858-9b595fd95a0b', 'App\\Models\\Country:50'),
('95ab0ae4-0fc9-42d8-ba8f-126659309af0', 'App\\Models\\Country:51'),
('95ab0ae4-1325-4900-96f3-f7d88b963e40', 'App\\Models\\Country:52'),
('95ab0ae4-1660-4575-a8e2-114b24395ac3', 'App\\Models\\Country:53'),
('95ab0ae4-196a-4cfb-aa72-e3faa08e1968', 'App\\Models\\Country:54'),
('95ab0ae4-1c77-496c-9305-60166b961df0', 'App\\Models\\Country:55'),
('95ab0ae4-1f83-4377-8eae-dd4d51dbb771', 'App\\Models\\Country:56'),
('95ab0ae4-2299-4cd9-9210-63b6a5778e4b', 'App\\Models\\Country:57'),
('95ab0ae4-25a8-42cf-a25a-70b21c582981', 'App\\Models\\Country:58'),
('95ab0ae4-28c1-4395-97f2-d1adf578d878', 'App\\Models\\Country:59'),
('95ab0ae4-2c03-4dc9-8fac-35870ed865d6', 'App\\Models\\Country:60'),
('95ab0ae4-2f63-4e38-8fa7-c8c546864669', 'App\\Models\\Country:61'),
('95ab0ae4-320d-4ac7-9b95-5faea60ea2c9', 'App\\Models\\Country:62'),
('95ab0ae4-3475-4e65-ace1-5ce122352218', 'App\\Models\\Country:63'),
('95ab0ae4-36c3-4039-8ab5-a55768959a8a', 'App\\Models\\Country:64'),
('95ab0ae4-395d-41ec-b7f3-3ba40a506c97', 'App\\Models\\Country:65'),
('95ab0ae4-3c84-44f5-a4b2-b29177348bdf', 'App\\Models\\Country:66'),
('95ab0ae4-3f9d-4fbb-9af9-6b92bb3ffb30', 'App\\Models\\Country:67'),
('95ab0ae4-42b8-4f66-81f9-b04235825472', 'App\\Models\\Country:68'),
('95ab0ae4-45ff-451e-8eb2-411216c217cc', 'App\\Models\\Country:69'),
('95ab0ae4-494f-4159-8593-2e7b0eebc4c5', 'App\\Models\\Country:70'),
('95ab0ae4-4c66-4385-bdd3-5d800ffebf54', 'App\\Models\\Country:71'),
('95ab0ae4-4f71-4491-a8e4-1bc5d7d7d87d', 'App\\Models\\Country:72'),
('95ab0ae4-527b-4969-8f4f-0a57d849531c', 'App\\Models\\Country:73'),
('95ab0ae4-5587-4636-ac78-954453bda441', 'App\\Models\\Country:74'),
('95ab0ae4-5898-4bac-acd7-788c90e28a87', 'App\\Models\\Country:75'),
('95ab0ae4-5ba7-4d09-8962-48899a390681', 'App\\Models\\Country:76'),
('95ab0ae4-5ee6-4a63-b1b3-384c31918a18', 'App\\Models\\Country:77'),
('95ab0ae4-6216-4b88-8f31-d104481b0428', 'App\\Models\\Country:78'),
('95ab0ae4-64cf-449d-9106-1527839d7362', 'App\\Models\\Country:79'),
('95ab0ae4-6721-47ad-8527-dc7f27ec0d5c', 'App\\Models\\Country:80'),
('95ab0ae4-6970-4135-b003-ea4b3f858bb0', 'App\\Models\\Country:81'),
('95ab0ae4-6bbd-45e9-9f8e-99ecd0932651', 'App\\Models\\Country:82'),
('95ab0ae4-6e4c-4767-bc25-237369e64118', 'App\\Models\\Country:83'),
('95ab0ae4-7151-4c73-bf32-f071f84b2dca', 'App\\Models\\Country:84'),
('95ab0ae4-7415-49fa-b261-d3c2893a7e66', 'App\\Models\\Country:85'),
('95ab0ae4-766d-4878-8994-5bedde3a88c9', 'App\\Models\\Country:86'),
('95ab0ae4-78e6-4703-9344-ed305470f218', 'App\\Models\\Country:87'),
('95ab0ae4-7b55-4cf9-8981-66ac1c1df8f4', 'App\\Models\\Country:88'),
('95ab0ae4-7dcf-4fee-aa1e-38d5336f6a2c', 'App\\Models\\Country:89'),
('95ab0ae4-8019-4830-9762-85f7d16cf2f6', 'App\\Models\\Country:90'),
('95ab0ae4-8256-4916-bfc3-83a87bf88637', 'App\\Models\\Country:91'),
('95ab0ae4-8499-46b5-b19d-71c698c5e82b', 'App\\Models\\Country:92'),
('95ab0ae4-8754-4952-ba8f-89cfb86abd44', 'App\\Models\\Country:93'),
('95ab0ae4-8a15-42b3-8f7f-156fc7fff0e7', 'App\\Models\\Country:94'),
('95ab0ae4-8c61-421f-a956-25902992849a', 'App\\Models\\Country:95'),
('95ab0ae4-8ed3-4b41-b8f4-afcd0e77c42a', 'App\\Models\\Country:96'),
('95ab0ae4-91c9-407e-accf-cb2db07fd55e', 'App\\Models\\Country:97'),
('95ab0ae4-94c6-45d6-a7d3-4f2ec747147f', 'App\\Models\\Country:98'),
('95ab0ae4-97dd-403e-959e-f15cd46703b8', 'App\\Models\\Country:99'),
('95ab0ae4-9aaa-4ac5-860e-b81c471b3135', 'App\\Models\\Country:100'),
('95ab0ae4-9d84-434f-acca-a7b400ad7fa2', 'App\\Models\\Country:101'),
('95ab0ae4-a05a-4230-bef1-d0b0cda4eaf6', 'App\\Models\\Country:102'),
('95ab0ae4-a319-40cf-aee6-d04de9949043', 'App\\Models\\Country:103'),
('95ab0ae4-a5e1-4c74-ab25-d4ce2e60284b', 'App\\Models\\Country:104'),
('95ab0ae4-a8bb-41fc-b903-3e20758b82d8', 'App\\Models\\Country:105'),
('95ab0ae4-ab4c-452b-86e9-b50d543ac0a3', 'App\\Models\\Country:106'),
('95ab0ae4-ad75-4c11-8e4f-cd5d6c62ffa3', 'App\\Models\\Country:107'),
('95ab0ae4-af7a-41da-8556-19d390a21fdd', 'App\\Models\\Country:108'),
('95ab0ae4-b18b-4ccb-a163-747558d7106b', 'App\\Models\\Country:109'),
('95ab0ae4-b37b-4df8-95e5-9bc48e398a45', 'App\\Models\\Country:110'),
('95ab0ae4-b574-4595-aa43-1fc859de7c6d', 'App\\Models\\Country:111'),
('95ab0ae4-b823-42b5-b108-de3b5ab996e2', 'App\\Models\\Country:112'),
('95ab0ae4-bb98-4a78-b472-cc7f8c07eea3', 'App\\Models\\Country:113'),
('95ab0ae4-beea-42fa-a943-ba53047d2f70', 'App\\Models\\Country:114'),
('95ab0ae4-c227-4851-82b2-2f4fdffadd7e', 'App\\Models\\Country:115'),
('95ab0ae4-c541-4fb9-902c-6141956a86b7', 'App\\Models\\Country:116'),
('95ab0ae4-c89e-41ab-9de2-5f0ccb711190', 'App\\Models\\Country:117'),
('95ab0ae4-cbff-4b64-8536-0b940e366c5c', 'App\\Models\\Country:118'),
('95ab0ae4-ce88-4b09-b43d-43a895428503', 'App\\Models\\Country:119'),
('95ab0ae4-d0c8-4613-942e-0a75b2cfd9a1', 'App\\Models\\Country:120'),
('95ab0ae4-d321-4ef9-94d2-7447e73ad23c', 'App\\Models\\Country:121'),
('95ab0ae4-d574-4a06-88da-080d22802f62', 'App\\Models\\Country:122'),
('95ab0ae4-d7c0-49f6-b0c5-6da90c740cd0', 'App\\Models\\Country:123'),
('95ab0ae4-da1e-4b77-a68d-f353a8037954', 'App\\Models\\Country:124'),
('95ab0ae4-dc62-4f10-8a8d-b24a1afded8d', 'App\\Models\\Country:125'),
('95ab0ae4-dea1-42ad-9a25-aebfa908afe9', 'App\\Models\\Country:126'),
('95ab0ae4-e0fc-435e-a378-37139c650cd1', 'App\\Models\\Country:127'),
('95ab0ae4-e36f-41d0-b418-176f7f206839', 'App\\Models\\Country:128'),
('95ab0ae4-e5e0-49f7-a35e-ea65158bc4e5', 'App\\Models\\Country:129'),
('95ab0ae4-e834-4bab-9add-1e543dfc0575', 'App\\Models\\Country:130'),
('95ab0ae4-ea7c-493b-bdea-008e329e6b04', 'App\\Models\\Country:131'),
('95ab0ae4-ecce-4080-8db4-8800189f55c0', 'App\\Models\\Country:132'),
('95ab0ae4-ef09-4c73-bc9e-9ae5a4355a17', 'App\\Models\\Country:133'),
('95ab0ae4-f141-4e8c-849b-73baa44106e7', 'App\\Models\\Country:134'),
('95ab0ae4-f393-4f6b-ab74-ffc5f7ab022a', 'App\\Models\\Country:135'),
('95ab0ae4-f5d0-4be4-8835-ab7bbf3dccfa', 'App\\Models\\Country:136'),
('95ab0ae4-f81d-442c-9209-c28d1cc64089', 'App\\Models\\Country:137'),
('95ab0ae4-fa91-4682-a309-fa3c0872a527', 'App\\Models\\Country:138'),
('95ab0ae4-fcdd-4f4b-aff2-250e75f7385d', 'App\\Models\\Country:139'),
('95ab0ae4-ff7c-4d28-be89-b58b993aa847', 'App\\Models\\Country:140'),
('95ab0ae5-01ba-49b9-b858-e41ac2cba2d3', 'App\\Models\\Country:141'),
('95ab0ae5-03ef-41b3-b20a-a099dcb1196c', 'App\\Models\\Country:142'),
('95ab0ae5-0639-421c-8df7-4ebdf06b6c52', 'App\\Models\\Country:143'),
('95ab0ae5-0879-4438-a922-bf42d4bed23c', 'App\\Models\\Country:144'),
('95ab0ae5-0ac1-4df0-bbc2-29cfaac39255', 'App\\Models\\Country:145'),
('95ab0ae5-0d00-4e5f-bc71-e6ad2fb13399', 'App\\Models\\Country:146'),
('95ab0ae5-0f48-4119-8311-4c1b8e2a70b3', 'App\\Models\\Country:147'),
('95ab0ae5-1196-4f03-a6c4-6f7c53eaa99c', 'App\\Models\\Country:148'),
('95ab0ae5-1403-49fd-a0d3-89276f990ddd', 'App\\Models\\Country:149'),
('95ab0ae5-1643-4ce7-86d2-92ef5f0702be', 'App\\Models\\Country:150'),
('95ab0ae5-18ad-4b8e-a853-a3b4ffb78f21', 'App\\Models\\Country:151'),
('95ab0ae5-1afc-480b-a595-ff5c07be55d3', 'App\\Models\\Country:152'),
('95ab0ae5-1d47-4f7b-a925-0516d7006c51', 'App\\Models\\Country:153'),
('95ab0ae5-1fec-4a4a-b06c-1f3299219362', 'App\\Models\\Country:154'),
('95ab0ae5-22fe-484f-8d1b-2e7404143554', 'App\\Models\\Country:155'),
('95ab0ae5-2608-4ed0-9303-5f01acf8f2a1', 'App\\Models\\Country:156'),
('95ab0ae5-2925-45cc-bca0-afac91dd4649', 'App\\Models\\Country:157'),
('95ab0ae5-2c32-40ed-9b60-33c7748a69cf', 'App\\Models\\Country:158'),
('95ab0ae5-2f4b-4648-a02d-fe5becd97f24', 'App\\Models\\Country:159'),
('95ab0ae5-3274-4e9e-98f8-0d345d21c5a6', 'App\\Models\\Country:160'),
('95ab0ae5-3569-4796-bc2a-a2278fd98561', 'App\\Models\\Country:161'),
('95ab0ae5-3776-40e6-883f-ad3948a947e4', 'App\\Models\\Country:162'),
('95ab0ae5-3955-4077-8dd7-44e0b89247e2', 'App\\Models\\Country:163'),
('95ab0ae5-3b42-4c20-8edb-e929e23fa93a', 'App\\Models\\Country:164'),
('95ab0ae5-3d1f-4002-9148-6f8656785c14', 'App\\Models\\Country:165'),
('95ab0ae5-3eef-4abd-a6ff-a87b01712cb4', 'App\\Models\\Country:166'),
('95ab0ae5-40e6-4914-96f2-93262ce10fa6', 'App\\Models\\Country:167'),
('95ab0ae5-42d8-4d05-a96f-e65b2152612d', 'App\\Models\\Country:168'),
('95ab0ae5-44b2-48b4-8190-43898b13328c', 'App\\Models\\Country:169'),
('95ab0ae5-46b5-4f08-9f3d-c30148c4b029', 'App\\Models\\Country:170'),
('95ab0ae5-48d5-46e1-baa5-79c6cbb1228a', 'App\\Models\\Country:171'),
('95ab0ae5-4acf-4149-b70b-b6c0052bb4c6', 'App\\Models\\Country:172'),
('95ab0ae5-4d4f-4c26-a543-62a9d58f56b2', 'App\\Models\\Country:173'),
('95ab0ae5-4f49-4c75-9f31-094d1d346718', 'App\\Models\\Country:174'),
('95ab0ae5-5136-4bb7-9db4-31a68d2c575d', 'App\\Models\\Country:175'),
('95ab0ae5-52fd-44bc-aa3e-65b780a6b370', 'App\\Models\\Country:176'),
('95ab0ae5-54a0-4e01-acf3-39a09ff8d974', 'App\\Models\\Country:177'),
('95ab0ae5-5643-4298-aa8e-d0c6d079b556', 'App\\Models\\Country:178'),
('95ab0ae5-5805-4f4d-84ec-1120f4542c87', 'App\\Models\\Country:179'),
('95ab0ae5-5a19-4507-8d75-99134543f60f', 'App\\Models\\Country:180'),
('95ab0ae5-5c7e-47e1-a17d-5350486301db', 'App\\Models\\Country:181'),
('95ab0ae5-5e6f-40c8-b520-c3a9816136b2', 'App\\Models\\Country:182'),
('95ab0ae5-6060-480a-b219-66184f1273f9', 'App\\Models\\Country:183'),
('95ab0ae5-6276-4886-bfa8-aed4cc893d5a', 'App\\Models\\Country:184'),
('95ab0ae5-6459-4a10-a978-c2cd6e46ea46', 'App\\Models\\Country:185'),
('95ab0ae5-6660-44e2-b8bc-b2bd3a58a53f', 'App\\Models\\Country:186'),
('95ab0ae5-6868-4926-aa30-349dcd3b5236', 'App\\Models\\Country:187'),
('95ab0ae5-6a47-4252-8401-6c2960b5d3b2', 'App\\Models\\Country:188'),
('95ab0ae5-6c28-4dec-a7a5-2ed1667f2071', 'App\\Models\\Country:189'),
('95ab0ae5-6e26-459e-a1b4-4bb081359fe2', 'App\\Models\\Country:190'),
('95ab0ae5-701b-4224-96e4-5d4ef814bcdc', 'App\\Models\\Country:191'),
('95ab0ae5-720f-4734-aaef-c9842a637120', 'App\\Models\\Country:192'),
('95ab0ae5-746e-409a-b6cf-c62a1d3e03fa', 'App\\Models\\Country:193'),
('95ab0ae5-7665-48b8-911b-36eaab793b7d', 'App\\Models\\Country:194'),
('95ab0ae5-784f-4097-bf62-b162b14bebf9', 'App\\Models\\Country:195'),
('95ab0ae5-7a46-40b8-b87a-ab64721a5a1f', 'App\\Models\\Country:196'),
('95ab0ae5-7c42-4db9-87f2-5cc376ad4432', 'App\\Models\\Country:197'),
('95ab0ae5-7e35-47ed-9c7a-f435f3cf1c8f', 'App\\Models\\Country:198'),
('95ab0ae5-802e-448d-9cd0-2cc5612c5d11', 'App\\Models\\Country:199'),
('95ab0ae5-8227-46a3-8d06-abdea3d72f5f', 'App\\Models\\Country:200'),
('95ab0ae5-841c-489f-907f-9514646d6990', 'App\\Models\\Country:201'),
('95ab0ae5-8615-4165-812d-4368e91563b4', 'App\\Models\\Country:202'),
('95ab0ae5-8809-4d76-a50d-1b5f2290ea30', 'App\\Models\\Country:203'),
('95ab0ae5-89f5-45dd-9da6-f6e71a913524', 'App\\Models\\Country:204'),
('95ab0ae5-8be1-485f-846c-e1ed0effe72a', 'App\\Models\\Country:205'),
('95ab0ae5-8dce-4768-ae3e-1f89b0d7a3db', 'App\\Models\\Country:206'),
('95ab0ae5-8fc2-4dcb-9e19-f4997128a165', 'App\\Models\\Country:207'),
('95ab0ae5-91ab-4263-a093-e466438ebb46', 'App\\Models\\Country:208'),
('95ab0ae5-9398-4808-988b-db7e41c4be3c', 'App\\Models\\Country:209'),
('95ab0ae5-9599-43d5-8bc1-6165ce7c706f', 'App\\Models\\Country:210'),
('95ab0ae5-9793-4c7b-8cb2-17b67ed18b9c', 'App\\Models\\Country:211'),
('95ab0ae5-9990-4d31-926c-c9a716ede7fd', 'App\\Models\\Country:212'),
('95ab0ae5-9ba4-4d55-a309-e8dfc431046b', 'App\\Models\\Country:213'),
('95ab0ae5-9d8f-44b6-87ee-8318f0cef4f2', 'App\\Models\\Country:214'),
('95ab0ae5-9f7a-4c04-8cc6-b0639caa036b', 'App\\Models\\Country:215'),
('95ab0ae5-a167-49d9-bbcc-a37074656daf', 'App\\Models\\Country:216'),
('95ab0ae5-a34b-49b3-ae6d-05bef9fff0eb', 'App\\Models\\Country:217'),
('95ab0ae5-a540-41f1-ae15-00c3ff6e65e6', 'App\\Models\\Country:218'),
('95ab0ae5-a726-4211-b0b0-0f044e3fb59b', 'App\\Models\\Country:219'),
('95ab0ae5-a918-407e-bb6a-4ce98af91f2e', 'App\\Models\\Country:220'),
('95ab0ae5-ab05-423a-99e0-b94b8842996b', 'App\\Models\\Country:221'),
('95ab0ae5-acf0-4752-84eb-9e95e9476ac5', 'App\\Models\\Country:222'),
('95ab0ae5-aee5-430f-bc58-ba1f50cab56f', 'App\\Models\\Country:223'),
('95ab0ae5-b0ff-4b61-8f81-1d5e714fb46f', 'App\\Models\\Country:224'),
('95ab0ae5-b2f0-4882-8254-e21b7b39bc9f', 'App\\Models\\Country:225'),
('95ab0ae5-b51f-4751-a6f6-fdeb425dd519', 'App\\Models\\Country:226'),
('95ab0ae5-b727-416e-b9fb-69a0181e5f9d', 'App\\Models\\Country:227'),
('95ab0ae5-b91b-4bfa-8517-3040db8f8b08', 'App\\Models\\Country:228'),
('95ab0ae5-bb6f-482b-b899-3d3c53ca9ada', 'App\\Models\\Country:229'),
('95ab0ae5-bd79-48bf-9ccf-9a0df6b5f9a9', 'App\\Models\\Country:230'),
('95ab0ae5-bfd0-4356-a487-2c44822fa9c8', 'App\\Models\\Country:231'),
('95ab0ae5-c2a8-4c08-ae4a-b4c5d5f05aaf', 'App\\Models\\Country:232'),
('95ab0ae5-c5b7-4312-aa49-98eaf865af6a', 'App\\Models\\Country:233'),
('95ab0ae5-c8be-495d-b05d-a2beb0bc281f', 'App\\Models\\Country:234'),
('95ab0ae5-cbf4-4fb4-a83e-e503ff7a53d2', 'App\\Models\\Country:235'),
('95ab0ae5-cf2b-4830-919a-28f1676c1632', 'App\\Models\\Country:236'),
('95ab0ae5-d24e-4dc8-8ef7-e71eaba77e43', 'App\\Models\\Country:237'),
('95ab0ae5-d55b-42b9-b04d-897591257c0a', 'App\\Models\\Country:238'),
('95ab0ae5-d860-42b5-bb79-92a766c3d47e', 'App\\Models\\Country:239'),
('95ab0ae5-db75-4b9a-b495-b59e17d008b3', 'App\\Models\\Country:240'),
('95ab0ae5-de90-4561-804c-4f0d7111c1a2', 'App\\Models\\Country:241'),
('95ab0ae5-e1a1-42e7-b175-6b89957525f6', 'App\\Models\\Country:242'),
('95ab0ae5-e4d1-4ccc-a2c7-d8334024ab21', 'App\\Models\\Country:243'),
('95ab0ae5-e820-4824-821a-8dd3ff1412d4', 'App\\Models\\Country:244'),
('95ab0ae5-eb55-44cf-ad4b-08c0f55e1c8a', 'App\\Models\\Country:245'),
('95ab0ae6-1718-4eb3-aecc-d35e53017906', 'App\\Models\\User:1'),
('95ab0ae6-1fd3-418c-9acd-23b910800428', 'App\\Models\\Role:1'),
('95ab0ae6-234e-436b-bc09-04e9e6914b85', 'App\\Models\\Role:2'),
('95ab0ae6-2719-4978-8f69-ed97b4463131', 'App\\Models\\Role:3'),
('95ab0ae6-2a7e-42c3-9fb8-2af175703edb', 'App\\Models\\Role:4'),
('95ab0ae6-2de2-40e9-bec8-130d8b125e7d', 'App\\Models\\Role:5'),
('95ab0ae6-3140-4494-9e61-0db88ed3b3e8', 'App\\Models\\Role:6'),
('95ab0ae6-3927-4b9b-acd9-e7463c227d83', 'App\\Models\\Role:1'),
('95ab0ae6-3aec-441c-9465-20f7a7b430fd', 'App\\Models\\Role:2'),
('95ab0ae6-3c90-4004-b612-323d16aec428', 'App\\Models\\Role:3'),
('95ab0ae6-3e32-42d1-a596-4a13bbdaf87e', 'App\\Models\\Role:4'),
('95ab0ae6-3fbe-42b2-9a10-f57f57b9c201', 'App\\Models\\Role:5'),
('95ab0ae6-4144-48e1-bc37-e96b563d7ce0', 'App\\Models\\Role:6'),
('95ab0ae6-4d49-4b3b-9167-a457de7e8656', 'App\\Models\\Page:1'),
('95ab0ae6-4f29-45ff-8e74-b1b1b42116ec', 'App\\Models\\Page:2'),
('95ab0ae6-50da-4b6b-ae4f-400e27228608', 'App\\Models\\Page:3'),
('95ab0ae6-52ad-48b6-844c-5775d4640643', 'App\\Models\\Page:4'),
('95ab0ae6-5481-4a77-9e0c-97cf33fa9519', 'App\\Models\\Page:5'),
('95ab0ae6-5640-440b-bb9b-eba5e9f4f446', 'App\\Models\\Page:6'),
('95ab0ae6-5816-4632-a5da-1a1587f3e84d', 'App\\Models\\Page:7'),
('95ab0ae6-59f1-480d-9aa3-65d4ca517f85', 'App\\Models\\Page:8'),
('95ab0ae6-5bc3-476c-ba93-408fb7ecf948', 'App\\Models\\Page:9'),
('95ab0ae6-5e2e-4315-a80a-798c3dd6f4f4', 'App\\Models\\Page:10'),
('95ab0ae6-6176-4e2a-8fa7-df2a0c99c5a7', 'App\\Models\\Page:11'),
('95ab0ae6-64b6-40be-913b-fc9cd442d798', 'App\\Models\\Page:12'),
('95ab0ae6-683d-4970-a42d-00765c06c0a0', 'App\\Models\\Page:13'),
('95ab0ae6-6bf7-4c2d-b68d-b79658315487', 'App\\Models\\Page:14'),
('95ab0ae6-774e-4792-a1b7-8db6ca72e6bf', 'App\\Models\\Menu:1'),
('95ab0ae6-87cb-44a2-943c-9242f1664e11', 'App\\Models\\MenuItem:1'),
('95ab0ae6-8b79-4176-9e92-5d1495f5738d', 'App\\Models\\MenuItem:2'),
('95ab0ae6-8ed7-4199-ba6e-9f3e1fa39de1', 'App\\Models\\MenuItem:3'),
('95ab0ae6-917c-423a-8eb7-1407af9bc34d', 'App\\Models\\MenuItem:4'),
('95ab0ae6-93bb-43c9-9d22-cb1d9dbc7f73', 'App\\Models\\MenuItem:5'),
('95ab0ae6-968f-4b57-9b8d-5d1e022bd04c', 'App\\Models\\MenuItem:6'),
('95ab0ae6-9a78-4056-9eb4-a34ba6670719', 'App\\Models\\MenuItem:7'),
('95ab0ae6-9d2f-446a-bca9-ded61d8efe14', 'App\\Models\\MenuItem:8'),
('95ab0ae6-9f9d-432a-b114-da709588e303', 'App\\Models\\MenuItem:9'),
('95ab0ae6-a1c3-4da4-992b-fdc4bdcdaf65', 'App\\Models\\MenuItem:10'),
('95ab0ae6-a482-454f-9d9a-1a834883099d', 'App\\Models\\MenuItem:11'),
('95ab0ae6-a7fd-49c1-bd91-423dfb070caf', 'App\\Models\\MenuItem:12'),
('95ab0ae6-aa9c-4d13-895a-fc7df344c2a5', 'App\\Models\\MenuItem:13'),
('95ab0ae6-ad0d-421a-bf65-597906618c9e', 'App\\Models\\MenuItem:1'),
('95ab0ae6-aeb7-4f09-9c9d-9f5ec7b071d4', 'App\\Models\\MenuItem:2'),
('95ab0ae6-b05f-4b99-91c6-b9ce333993fb', 'App\\Models\\MenuItem:3'),
('95ab0ae6-b213-411d-9090-0d7d2ce03a1e', 'App\\Models\\MenuItem:4'),
('95ab0ae6-b3d8-4210-8567-a9034d5e1a31', 'App\\Models\\MenuItem:5'),
('95ab0ae6-b624-4bef-9ac5-9b89b5eaa4ea', 'App\\Models\\MenuItem:6'),
('95ab0ae6-b9aa-4b1a-ac5b-856f3df30eee', 'App\\Models\\MenuItem:7'),
('95ab0ae6-bc8b-469e-aaa4-36742f1d7a52', 'App\\Models\\MenuItem:8'),
('95ab0ae6-bf05-47fc-9882-105667f36668', 'App\\Models\\MenuItem:9'),
('95ab0ae6-c186-4f82-8261-53c8232a0953', 'App\\Models\\MenuItem:10'),
('95ab0ae6-c3e3-48b9-83dd-0a970ba3845c', 'App\\Models\\MenuItem:11'),
('95ab0ae6-c5dd-4f4c-81d2-380f66d70f5d', 'App\\Models\\MenuItem:12'),
('95ab0ae6-c7bb-4a04-b1b0-fcd890f5bba6', 'App\\Models\\MenuItem:13'),
('95ab0ae6-ccda-4b37-8b96-a6528ee4dfa5', 'App\\Models\\MenuItem:11'),
('95ab0ae6-d296-4cc2-9517-2194d66f2093', 'App\\Models\\MenuItem:12'),
('95ab0ae6-dd80-4a5b-9a4d-e8a4b62a23a7', 'App\\Models\\Unit:1'),
('95ab0ae6-e0b7-4289-9f80-1edca692a928', 'App\\Models\\Unit:2'),
('95ab0ae6-e416-408d-b946-3f993d097910', 'App\\Models\\Unit:3'),
('95ab0ae6-e770-4c14-a632-ae1957703bb1', 'App\\Models\\Unit:4'),
('95ab0ae6-eae1-4453-8a05-bc8c5f8206ba', 'App\\Models\\Unit:5'),
('95ab0ae6-edbc-45d5-b1c1-2f013bd18a93', 'App\\Models\\Unit:6'),
('95ab0ae6-efc3-4a2b-8594-9bcc54c77beb', 'App\\Models\\Unit:7'),
('95ab0ae6-f191-48a6-b732-b6d3dafa70f3', 'App\\Models\\Unit:8'),
('95ab0ae6-f344-4e28-ac6a-c3c0e2bf21e1', 'App\\Models\\Unit:9'),
('95ab0ae6-f4d0-47eb-8c84-465b7e378e21', 'App\\Models\\Unit:10'),
('95ab0ae6-f6c6-470c-b102-bfe481a26f67', 'App\\Models\\Unit:11'),
('95ab0ae6-f829-4f28-98c5-60ed82af41ff', 'App\\Models\\Unit:12'),
('95ab0ae6-fa17-4941-91ee-a65102e01609', 'App\\Models\\Unit:13'),
('95ab0ae6-fd6c-499e-aac3-1c85373ed552', 'App\\Models\\Unit:14'),
('95ab0ae7-00c3-4dcb-bb2e-b18ccf4a6354', 'App\\Models\\Unit:15'),
('95ab0ae7-0412-4643-81e1-60af34c26678', 'App\\Models\\Unit:16'),
('95ab0ae7-0773-413c-b696-b0e7df9d3229', 'App\\Models\\Unit:17'),
('95ab0ae7-0ace-46ee-ab39-93f3d1909799', 'App\\Models\\Unit:18'),
('95ab0ae7-0e09-4631-a1f9-9006f68537c0', 'App\\Models\\Unit:19'),
('95ab0ae7-1143-4e67-9636-f936088254e9', 'App\\Models\\Unit:20'),
('95ab0ae7-1fec-437b-b416-2249cd3c4abb', 'App\\Models\\Setting:1'),
('95ab0ae7-241b-47ab-9bdf-bdf45288bc44', 'App\\Models\\Setting:2'),
('95ab0ae7-27f3-4469-9450-b101661cc4de', 'App\\Models\\Setting:3'),
('95ab0ae7-2b7a-4f51-ab74-be42be72bd3f', 'App\\Models\\Setting:4'),
('95ab0ae7-2f05-427e-8eee-6d4a87b5c9d5', 'App\\Models\\Setting:5'),
('95ab0ae7-31d4-4060-ac26-0458669a172b', 'App\\Models\\Setting:6'),
('95ab0ae7-3448-477a-b320-9547bf9a2bb1', 'App\\Models\\Setting:7'),
('95ab0ae7-36ec-45c5-a753-7d7bff12c823', 'App\\Models\\Setting:8'),
('95ab0ae7-392f-4e91-a079-afa0e80c6f4c', 'App\\Models\\Setting:9'),
('95ab0ae7-3b6a-4839-8b07-82794d003db0', 'App\\Models\\Setting:10'),
('95ab0ae7-3d93-40f7-9cac-6afbd427eb80', 'App\\Models\\Setting:11'),
('95ab0ae7-3f95-41eb-bc7d-75eafbc6c99a', 'App\\Models\\Setting:12'),
('95ab0ae7-41a3-47e4-9c48-e016e192d560', 'App\\Models\\Setting:13'),
('95ab0ae7-43b1-4646-bbc8-b96a16cfa759', 'App\\Models\\Setting:1'),
('95ab0ae7-45a8-4e52-9c13-03dba63ca5c3', 'App\\Models\\Setting:2'),
('95ab0ae7-47a3-40ae-baf2-d864acba8ab4', 'App\\Models\\Setting:3'),
('95ab0ae7-49b7-4042-acb3-c991bc0b9927', 'App\\Models\\Setting:4'),
('95ab0ae7-4bba-41d7-843b-f5d79b985d05', 'App\\Models\\Setting:5'),
('95ab0ae7-4dba-45e9-989b-9a86ecbf3db8', 'App\\Models\\Setting:6'),
('95ab0ae7-4fdf-4ed0-b1fe-26ee41273580', 'App\\Models\\Setting:7'),
('95ab0ae7-51f5-4645-9e21-07b0e4db6caf', 'App\\Models\\Setting:8'),
('95ab0ae7-540c-496c-b55c-366a8013b93d', 'App\\Models\\Setting:9'),
('95ab0ae7-5683-4280-a18d-68babae66fbb', 'App\\Models\\Setting:10'),
('95ab0ae7-58c8-4951-8e40-1f62a50081e6', 'App\\Models\\Setting:11'),
('95ab0ae7-5b0d-4cbe-8b45-41a4349ddf94', 'App\\Models\\Setting:12'),
('95ab0ae7-5d58-46ab-803a-f0c42cba6b38', 'App\\Models\\Setting:13'),
('95ab0ae7-67fa-4461-8839-80f1906d2de5', 'App\\Models\\PageCategory:1');

-- --------------------------------------------------------

--
-- Структура таблицы `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `sorting` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `units`
--

INSERT INTO `units` (`id`, `parent_id`, `name`, `slug`, `visible`, `sorting`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dashboard', 'dashboard', 1, 1, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(2, NULL, 'Users', 'user', 1, 2, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(3, NULL, 'Roles', 'role', 1, 3, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(4, NULL, 'Permissions', 'permission', 1, 4, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(5, NULL, 'Pages', 'page', 1, 5, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(6, NULL, 'Page Categories', 'pageCategory', 0, 6, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(7, NULL, 'Snippets', 'snippet', 0, 7, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(8, NULL, 'Menus', 'menu', 1, 8, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(9, NULL, 'Menu Items', 'menuItem', 0, 9, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(10, NULL, 'Media Files', 'mediaFile', 1, 10, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(11, NULL, 'Media Categories', 'mediaCategory', 0, 11, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(12, NULL, 'Slider', 'slider', 1, 12, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(13, NULL, 'FAQ Items', 'faqItem', 1, 13, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(14, NULL, 'FAQ Categories', 'faqCategory', 0, 14, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(15, NULL, 'Quotes', 'quote', 1, 15, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(16, NULL, 'Emails', 'mail', 1, 16, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(17, NULL, 'Countries', 'country', 1, 17, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(18, NULL, 'Settings', 'setting', 1, 18, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(19, NULL, 'Units', 'unit', 1, 19, '2022-02-23 10:15:48', '2022-02-23 10:15:48'),
(20, NULL, 'Translations', 'translation', 1, 20, '2022-02-23 10:15:48', '2022-02-23 10:15:48');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` timestamp NULL DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `last_login_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `country_id`, `zip`, `city`, `address`, `phone`, `avatar`, `birthday`, `gender`, `status`, `last_login_at`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'lawzilla', 'lawzilla@gmail.com', '$2y$10$4uonvQ0ekAdMcR6NpUUS0Ocx7u0GZfbspRzFJPvaBfqZBTRTVsi2S', 'Super', 'Admin', NULL, '12345', 'New York', 'Times Square', '+1234567890', NULL, NULL, 0, 1, NULL, '2022-02-23 10:15:47', NULL, '2022-02-23 10:15:47', '2022-02-23 10:15:47');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `action_events`
--
ALTER TABLE `action_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  ADD KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  ADD KEY `action_events_user_id_index` (`user_id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faq_categories_slug_unique` (`slug`),
  ADD KEY `faq_categories_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `faq_items`
--
ALTER TABLE `faq_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faq_items_slug_unique` (`slug`),
  ADD KEY `faq_items_parent_id_foreign` (`parent_id`),
  ADD KEY `faq_items_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `media_categories`
--
ALTER TABLE `media_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_categories_slug_unique` (`slug`),
  ADD KEY `media_categories_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_parent_id_foreign` (`parent_id`),
  ADD KEY `media_files_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`),
  ADD KEY `menus_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_items_page_id_foreign` (`page_id`),
  ADD KEY `menu_items_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_parent_id_foreign` (`parent_id`),
  ADD KEY `pages_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_categories_slug_unique` (`slug`),
  ADD KEY `page_categories_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_unit_id_foreign` (`unit_id`),
  ADD KEY `permissions_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotes_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_permission_role_id_permission_id_unique` (`role_id`,`permission_id`),
  ADD KEY `role_permission_permission_id_foreign` (`permission_id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_user_role_id_user_id_unique` (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`),
  ADD KEY `settings_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `snippets`
--
ALTER TABLE `snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `snippets_slug_unique` (`slug`),
  ADD KEY `snippets_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `snippet_pages`
--
ALTER TABLE `snippet_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `snippet_pages_snippet_id_page_id_unique` (`snippet_id`,`page_id`),
  ADD KEY `snippet_pages_page_id_foreign` (`page_id`),
  ADD KEY `snippet_pages_created_by_foreign` (`created_by`);

--
-- Индексы таблицы `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Индексы таблицы `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Индексы таблицы `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_slug_unique` (`slug`),
  ADD KEY `units_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_country_id_foreign` (`country_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `faq_items`
--
ALTER TABLE `faq_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `mails`
--
ALTER TABLE `mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `media_categories`
--
ALTER TABLE `media_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `snippets`
--
ALTER TABLE `snippets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `snippet_pages`
--
ALTER TABLE `snippet_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919;
--
-- AUTO_INCREMENT для таблицы `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD CONSTRAINT `faq_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `faq_items`
--
ALTER TABLE `faq_items`
  ADD CONSTRAINT `faq_items_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `faq_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `media_categories`
--
ALTER TABLE `media_categories`
  ADD CONSTRAINT `media_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `media_files`
--
ALTER TABLE `media_files`
  ADD CONSTRAINT `media_files_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `media_files_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `media_categories` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pages_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `page_categories` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `page_categories`
--
ALTER TABLE `page_categories`
  ADD CONSTRAINT `page_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `permissions_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `quotes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `role_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permission_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `snippets`
--
ALTER TABLE `snippets`
  ADD CONSTRAINT `snippets_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `snippet_pages`
--
ALTER TABLE `snippet_pages`
  ADD CONSTRAINT `snippet_pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `snippet_pages_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `snippet_pages_snippet_id_foreign` FOREIGN KEY (`snippet_id`) REFERENCES `snippets` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `units` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
