-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 08-Jan-2013 às 09:35
-- Versão do servidor: 5.5.28
-- versão do PHP: 5.4.6-1ubuntu1.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `suportephi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_acos_lft_rght` (`lft`,`rght`),
  KEY `idx_acos_alias` (`alias`),
  KEY `idx_acos_model_foreign_key` (`model`,`foreign_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=307 ;

--
-- Extraindo dados da tabela `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 342),
(2, 1, NULL, NULL, 'Groups', 2, 17),
(8, 1, NULL, NULL, 'Pages', 18, 25),
(9, 8, NULL, NULL, 'display', 19, 20),
(10, 1, NULL, NULL, 'Posts', 26, 49),
(11, 10, NULL, NULL, 'index', 27, 28),
(12, 10, NULL, NULL, 'view', 29, 30),
(16, 1, NULL, NULL, 'Users', 50, 87),
(18, 16, NULL, NULL, 'view', 51, 52),
(19, 16, NULL, NULL, 'add', 53, 54),
(22, 16, NULL, NULL, 'login', 55, 56),
(23, 16, NULL, NULL, 'logout', 57, 58),
(24, 1, NULL, NULL, 'Widgets', 88, 103),
(25, 24, NULL, NULL, 'index', 89, 90),
(26, 24, NULL, NULL, 'view', 91, 92),
(27, 24, NULL, NULL, 'add', 93, 94),
(28, 24, NULL, NULL, 'edit', 95, 96),
(29, 24, NULL, NULL, 'delete', 97, 98),
(32, 1, NULL, NULL, 'AclManager', 106, 125),
(33, 32, NULL, NULL, 'Acl', 107, 124),
(36, 33, NULL, NULL, 'index', 108, 109),
(47, 1, NULL, NULL, 'Categories', 128, 151),
(48, 47, NULL, NULL, 'index', 129, 130),
(49, 47, NULL, NULL, 'view', 131, 132),
(54, 1, NULL, NULL, 'Acl', 152, 221),
(55, 54, NULL, NULL, 'Acl', 153, 168),
(58, 55, NULL, NULL, 'index', 154, 155),
(62, 54, NULL, NULL, 'Acos', 169, 182),
(63, 62, NULL, NULL, 'admin_index', 170, 171),
(64, 62, NULL, NULL, 'admin_empty_acos', 172, 173),
(65, 62, NULL, NULL, 'admin_build_acl', 174, 175),
(66, 62, NULL, NULL, 'admin_prune_acos', 176, 177),
(67, 62, NULL, NULL, 'admin_synchronize', 178, 179),
(68, 54, NULL, NULL, 'Aros', 183, 220),
(69, 68, NULL, NULL, 'admin_index', 184, 185),
(70, 68, NULL, NULL, 'admin_check', 186, 187),
(71, 68, NULL, NULL, 'admin_users', 188, 189),
(72, 68, NULL, NULL, 'admin_update_user_role', 190, 191),
(73, 68, NULL, NULL, 'admin_ajax_role_permissions', 192, 193),
(74, 68, NULL, NULL, 'admin_role_permissions', 194, 195),
(75, 68, NULL, NULL, 'admin_user_permissions', 196, 197),
(76, 68, NULL, NULL, 'admin_empty_permissions', 198, 199),
(77, 68, NULL, NULL, 'admin_clear_user_specific_permissions', 200, 201),
(78, 68, NULL, NULL, 'admin_grant_all_controllers', 202, 203),
(79, 68, NULL, NULL, 'admin_deny_all_controllers', 204, 205),
(80, 68, NULL, NULL, 'admin_get_role_controller_permission', 206, 207),
(81, 68, NULL, NULL, 'admin_grant_role_permission', 208, 209),
(82, 68, NULL, NULL, 'admin_deny_role_permission', 210, 211),
(83, 68, NULL, NULL, 'admin_get_user_controller_permission', 212, 213),
(84, 68, NULL, NULL, 'admin_grant_user_permission', 214, 215),
(85, 68, NULL, NULL, 'admin_deny_user_permission', 216, 217),
(86, 47, NULL, NULL, 'isAuthorized', 135, 136),
(87, 2, NULL, NULL, 'isAuthorized', 5, 6),
(88, 8, NULL, NULL, 'isAuthorized', 23, 24),
(89, 10, NULL, NULL, 'isAuthorized', 33, 34),
(90, 16, NULL, NULL, 'isAuthorized', 61, 62),
(91, 24, NULL, NULL, 'isAuthorized', 101, 102),
(93, 55, NULL, NULL, 'isAuthorized', 156, 157),
(94, 62, NULL, NULL, 'isAuthorized', 180, 181),
(95, 68, NULL, NULL, 'isAuthorized', 218, 219),
(98, 33, NULL, NULL, 'isAuthorized', 112, 113),
(156, 1, NULL, NULL, 'Images', 222, 237),
(158, 156, NULL, NULL, 'view', 223, 224),
(162, 156, NULL, NULL, 'isAuthorized', 225, 226),
(165, 47, NULL, NULL, 'search', 137, 138),
(176, 1, NULL, NULL, 'Types', 238, 251),
(182, 176, NULL, NULL, 'isAuthorized', 239, 240),
(183, 16, NULL, NULL, 'forgetpwd', 63, 64),
(184, 16, NULL, NULL, 'reset', 65, 66),
(185, 1, NULL, NULL, 'Parts', 252, 275),
(186, 185, NULL, NULL, 'index', 253, 254),
(187, 185, NULL, NULL, 'view', 255, 256),
(191, 185, NULL, NULL, 'isAuthorized', 257, 258),
(192, 1, NULL, NULL, 'Workshops', 276, 295),
(198, 192, NULL, NULL, 'isAuthorized', 277, 278),
(201, 10, NULL, NULL, 'admin_add', 35, 36),
(202, 55, NULL, NULL, 'drop', 158, 159),
(203, 55, NULL, NULL, 'drop_perms', 160, 161),
(204, 55, NULL, NULL, 'permissions', 162, 163),
(205, 55, NULL, NULL, 'update_acos', 164, 165),
(206, 55, NULL, NULL, 'update_aros', 166, 167),
(207, 33, NULL, NULL, 'drop', 114, 115),
(208, 33, NULL, NULL, 'drop_perms', 116, 117),
(209, 33, NULL, NULL, 'permissions', 118, 119),
(210, 33, NULL, NULL, 'update_acos', 120, 121),
(211, 33, NULL, NULL, 'update_aros', 122, 123),
(212, 10, NULL, NULL, 'admin_index', 37, 38),
(213, 10, NULL, NULL, 'admin_edit', 39, 40),
(214, 10, NULL, NULL, 'admin_delete', 41, 42),
(215, 10, NULL, NULL, 'admin_view', 43, 44),
(216, 185, NULL, NULL, 'admin_index', 259, 260),
(217, 185, NULL, NULL, 'admin_view', 261, 262),
(218, 185, NULL, NULL, 'admin_add', 263, 264),
(219, 185, NULL, NULL, 'admin_edit', 265, 266),
(220, 185, NULL, NULL, 'admin_delete', 267, 268),
(221, 156, NULL, NULL, 'admin_index', 227, 228),
(222, 156, NULL, NULL, 'admin_add', 229, 230),
(223, 156, NULL, NULL, 'admin_edit', 231, 232),
(224, 156, NULL, NULL, 'admin_delete', 233, 234),
(225, 2, NULL, NULL, 'admin_index', 7, 8),
(226, 2, NULL, NULL, 'admin_add', 9, 10),
(227, 2, NULL, NULL, 'admin_edit', 11, 12),
(228, 2, NULL, NULL, 'admin_delete', 13, 14),
(229, 47, NULL, NULL, 'admin_index', 139, 140),
(230, 47, NULL, NULL, 'admin_add', 141, 142),
(231, 47, NULL, NULL, 'admin_edit', 143, 144),
(232, 47, NULL, NULL, 'admin_delete', 145, 146),
(233, 176, NULL, NULL, 'admin_index', 241, 242),
(234, 176, NULL, NULL, 'admin_view', 243, 244),
(235, 176, NULL, NULL, 'admin_add', 245, 246),
(236, 176, NULL, NULL, 'admin_edit', 247, 248),
(237, 176, NULL, NULL, 'admin_delete', 249, 250),
(238, 16, NULL, NULL, 'admin_index', 67, 68),
(239, 16, NULL, NULL, 'admin_add', 69, 70),
(240, 16, NULL, NULL, 'admin_edit', 71, 72),
(241, 16, NULL, NULL, 'admin_delete', 73, 74),
(242, 16, NULL, NULL, 'admin_login', 75, 76),
(243, 16, NULL, NULL, 'admin_logout', 77, 78),
(244, 16, NULL, NULL, 'edit', 79, 80),
(245, 16, NULL, NULL, 'admin_view', 81, 82),
(246, 192, NULL, NULL, 'admin_index', 279, 280),
(247, 192, NULL, NULL, 'admin_view', 281, 282),
(248, 192, NULL, NULL, 'admin_add', 283, 284),
(249, 192, NULL, NULL, 'admin_edit', 285, 286),
(250, 192, NULL, NULL, 'admin_delete', 287, 288),
(251, 47, NULL, NULL, 'admin_view', 147, 148),
(252, 2, NULL, NULL, 'admin_view', 15, 16),
(253, 156, NULL, NULL, 'admin_view', 235, 236),
(254, 192, NULL, NULL, 'view', 289, 290),
(255, 192, NULL, NULL, 'edit', 291, 292),
(256, 47, NULL, NULL, 'admin_search', 149, 150),
(271, 185, NULL, NULL, 'search', 269, 270),
(272, 185, NULL, NULL, 'admin_search', 271, 272),
(273, 185, NULL, NULL, 'lista', 273, 274),
(275, 10, NULL, NULL, 'admin_search', 45, 46),
(276, 10, NULL, NULL, 'search', 47, 48),
(277, 16, NULL, NULL, 'index', 83, 84),
(278, 16, NULL, NULL, 'delete', 85, 86),
(279, 192, NULL, NULL, 'admin_search', 293, 294),
(280, 1, NULL, NULL, 'Downloads', 296, 313),
(282, 280, NULL, NULL, 'view', 297, 298),
(286, 280, NULL, NULL, 'isAuthorized', 299, 300),
(287, 1, NULL, NULL, 'CategoriesDowloads', 314, 327),
(288, 287, NULL, NULL, 'index', 315, 316),
(289, 287, NULL, NULL, 'view', 317, 318),
(290, 287, NULL, NULL, 'add', 319, 320),
(291, 287, NULL, NULL, 'edit', 321, 322),
(292, 287, NULL, NULL, 'delete', 323, 324),
(293, 287, NULL, NULL, 'isAuthorized', 325, 326),
(294, 280, NULL, NULL, 'lista', 301, 302),
(295, 1, NULL, NULL, 'DownloadsCategories', 328, 341),
(296, 295, NULL, NULL, 'index', 329, 330),
(297, 295, NULL, NULL, 'view', 331, 332),
(298, 295, NULL, NULL, 'add', 333, 334),
(299, 295, NULL, NULL, 'edit', 335, 336),
(300, 295, NULL, NULL, 'delete', 337, 338),
(301, 295, NULL, NULL, 'isAuthorized', 339, 340),
(302, 280, NULL, NULL, 'admin_index', 303, 304),
(303, 280, NULL, NULL, 'admin_add', 305, 306),
(304, 280, NULL, NULL, 'admin_edit', 307, 308),
(305, 280, NULL, NULL, 'admin_delete', 309, 310),
(306, 280, NULL, NULL, 'admin_view', 311, 312);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aros_lft_rght` (`lft`,`rght`),
  KEY `idx_aros_alias` (`alias`),
  KEY `idx_aros_model_foreign_key` (`model`,`foreign_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Extraindo dados da tabela `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, NULL, 1, 6),
(2, NULL, 'Group', 2, NULL, 7, 10),
(3, NULL, 'Group', 3, NULL, 11, 14),
(4, NULL, 'Group', 4, NULL, 15, 18),
(5, NULL, 'Group', 5, NULL, 19, 22),
(6, 1, 'User', 1, NULL, 2, 3),
(7, 2, 'User', 2, NULL, 8, 9),
(8, 3, 'User', 3, NULL, 12, 13),
(9, 4, 'User', 4, NULL, 16, 17),
(10, 5, 'User', 5, NULL, 20, 21),
(12, NULL, 'Group', 7, NULL, 23, 30),
(15, 1, 'User', 8, NULL, 4, 5),
(17, 12, 'User', 10, NULL, 24, 25),
(18, 12, 'User', 11, NULL, 28, 29),
(19, 12, 'User', 12, NULL, 26, 27),
(20, NULL, 'Group', 8, NULL, 31, 32);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`),
  UNIQUE KEY `idx_aros_acos_aro_id_aco_id` (`aro_id`,`aco_id`),
  KEY `aco_id` (`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=204 ;

--
-- Extraindo dados da tabela `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(2, 2, 1, '-1', '-1', '-1', '-1'),
(3, 2, 12, '1', '1', '1', '1'),
(4, 2, 24, '1', '1', '1', '1'),
(7, 1, 27, '1', '1', '1', '1'),
(8, 1, 28, '1', '1', '1', '1'),
(9, 4, 1, '-1', '-1', '-1', '-1'),
(15, 2, 27, '-1', '-1', '-1', '-1'),
(16, 2, 29, '-1', '-1', '-1', '-1'),
(18, 2, 28, '-1', '-1', '-1', '-1'),
(19, 2, 91, '-1', '-1', '-1', '-1'),
(23, 3, 12, '1', '1', '1', '1'),
(24, 4, 12, '1', '1', '1', '1'),
(28, 5, 11, '1', '1', '1', '1'),
(29, 5, 12, '1', '1', '1', '1'),
(30, 7, 48, '1', '1', '1', '1'),
(31, 7, 49, '1', '1', '1', '1'),
(32, 3, 1, '-1', '-1', '-1', '-1'),
(33, 5, 1, '-1', '-1', '-1', '-1'),
(35, 3, 25, '1', '1', '1', '1'),
(36, 3, 26, '1', '1', '1', '1'),
(37, 4, 25, '1', '1', '1', '1'),
(38, 4, 26, '1', '1', '1', '1'),
(39, 5, 25, '1', '1', '1', '1'),
(40, 5, 26, '1', '1', '1', '1'),
(49, 2, 49, '1', '1', '1', '1'),
(50, 3, 49, '1', '1', '1', '1'),
(51, 4, 49, '1', '1', '1', '1'),
(52, 4, 48, '1', '1', '1', '1'),
(53, 3, 48, '1', '1', '1', '1'),
(54, 2, 48, '1', '1', '1', '1'),
(55, 5, 48, '1', '1', '1', '1'),
(56, 5, 49, '1', '1', '1', '1'),
(57, 4, 22, '1', '1', '1', '1'),
(58, 3, 22, '1', '1', '1', '1'),
(59, 2, 22, '1', '1', '1', '1'),
(60, 5, 22, '1', '1', '1', '1'),
(61, 2, 23, '1', '1', '1', '1'),
(62, 3, 23, '1', '1', '1', '1'),
(63, 4, 23, '1', '1', '1', '1'),
(65, 3, 18, '1', '1', '1', '1'),
(66, 4, 18, '1', '1', '1', '1'),
(67, 5, 18, '1', '1', '1', '1'),
(68, 5, 23, '1', '1', '1', '1'),
(69, 2, 158, '1', '1', '1', '1'),
(70, 3, 158, '1', '1', '1', '1'),
(71, 4, 158, '1', '1', '1', '1'),
(72, 2, 11, '1', '1', '1', '1'),
(73, 3, 11, '1', '1', '1', '1'),
(74, 4, 11, '1', '1', '1', '1'),
(78, 10, 165, '1', '1', '1', '1'),
(82, 2, 18, '1', '1', '1', '1'),
(86, 2, 184, '1', '1', '1', '1'),
(87, 3, 184, '1', '1', '1', '1'),
(88, 4, 184, '1', '1', '1', '1'),
(89, 2, 183, '1', '1', '1', '1'),
(90, 3, 183, '1', '1', '1', '1'),
(91, 4, 183, '1', '1', '1', '1'),
(92, 5, 183, '1', '1', '1', '1'),
(93, 5, 184, '1', '1', '1', '1'),
(94, 12, 49, '1', '1', '1', '1'),
(95, 12, 48, '1', '1', '1', '1'),
(96, 2, 165, '1', '1', '1', '1'),
(97, 3, 165, '1', '1', '1', '1'),
(98, 4, 165, '1', '1', '1', '1'),
(99, 12, 165, '1', '1', '1', '1'),
(102, 12, 158, '1', '1', '1', '1'),
(103, 2, 186, '1', '1', '1', '1'),
(104, 3, 186, '1', '1', '1', '1'),
(105, 4, 186, '1', '1', '1', '1'),
(106, 12, 186, '1', '1', '1', '1'),
(107, 2, 187, '1', '1', '1', '1'),
(108, 3, 187, '1', '1', '1', '1'),
(109, 4, 187, '1', '1', '1', '1'),
(110, 12, 187, '1', '1', '1', '1'),
(111, 5, 186, '1', '1', '1', '1'),
(112, 5, 187, '1', '1', '1', '1'),
(113, 12, 11, '1', '1', '1', '1'),
(114, 12, 12, '1', '1', '1', '1'),
(115, 4, 19, '1', '1', '1', '1'),
(116, 5, 19, '1', '1', '1', '1'),
(117, 12, 18, '1', '1', '1', '1'),
(118, 12, 184, '1', '1', '1', '1'),
(119, 12, 23, '1', '1', '1', '1'),
(120, 12, 22, '1', '1', '1', '1'),
(121, 12, 25, '1', '1', '1', '1'),
(122, 12, 26, '1', '1', '1', '1'),
(133, 12, 183, '1', '1', '1', '1'),
(134, 2, 255, '1', '1', '1', '1'),
(136, 4, 255, '1', '1', '1', '1'),
(137, 2, 254, '1', '1', '1', '1'),
(139, 4, 254, '1', '1', '1', '1'),
(140, 12, 254, '1', '1', '1', '1'),
(143, 5, 247, '1', '1', '1', '1'),
(144, 5, 246, '1', '1', '1', '1'),
(145, 5, 249, '1', '1', '1', '1'),
(147, 5, 248, '1', '1', '1', '1'),
(148, 3, 248, '1', '1', '1', '1'),
(150, 3, 249, '1', '1', '1', '1'),
(151, 3, 246, '1', '1', '1', '1'),
(152, 3, 247, '1', '1', '1', '1'),
(155, 3, 254, '1', '1', '1', '1'),
(156, 3, 19, '1', '1', '1', '1'),
(157, 2, 19, '1', '1', '1', '1'),
(158, 2, 244, '1', '1', '1', '1'),
(159, 3, 244, '1', '1', '1', '1'),
(160, 4, 244, '1', '1', '1', '1'),
(161, 12, 244, '1', '1', '1', '1'),
(162, 5, 244, '1', '1', '1', '1'),
(163, 2, 271, '1', '1', '1', '1'),
(164, 3, 271, '1', '1', '1', '1'),
(165, 4, 271, '1', '1', '1', '1'),
(166, 12, 271, '1', '1', '1', '1'),
(167, 5, 271, '1', '1', '1', '1'),
(168, 3, 273, '1', '1', '1', '1'),
(169, 4, 273, '1', '1', '1', '1'),
(170, 12, 273, '1', '1', '1', '1'),
(171, 2, 273, '1', '1', '1', '1'),
(172, 5, 273, '1', '1', '1', '1'),
(173, 2, 276, '1', '1', '1', '1'),
(174, 3, 276, '1', '1', '1', '1'),
(175, 4, 276, '1', '1', '1', '1'),
(176, 12, 276, '1', '1', '1', '1'),
(177, 5, 276, '1', '1', '1', '1'),
(178, 5, 254, '1', '1', '1', '1'),
(179, 2, 277, '1', '1', '1', '1'),
(180, 3, 277, '1', '1', '1', '1'),
(181, 4, 277, '1', '1', '1', '1'),
(182, 5, 277, '1', '1', '1', '1'),
(183, 2, 278, '1', '1', '1', '1'),
(184, 3, 278, '1', '1', '1', '1'),
(185, 4, 278, '1', '1', '1', '1'),
(186, 5, 278, '1', '1', '1', '1'),
(188, 3, 289, '1', '1', '1', '1'),
(189, 2, 289, '1', '1', '1', '1'),
(190, 4, 289, '1', '1', '1', '1'),
(191, 12, 289, '1', '1', '1', '1'),
(192, 5, 289, '1', '1', '1', '1'),
(193, 2, 294, '1', '1', '1', '1'),
(194, 3, 294, '1', '1', '1', '1'),
(195, 4, 294, '1', '1', '1', '1'),
(196, 12, 294, '1', '1', '1', '1'),
(197, 20, 294, '-1', '-1', '-1', '-1'),
(198, 5, 294, '1', '1', '1', '1'),
(199, 2, 282, '1', '1', '1', '1'),
(200, 3, 282, '1', '1', '1', '1'),
(201, 4, 282, '1', '1', '1', '1'),
(202, 12, 282, '1', '1', '1', '1'),
(203, 5, 282, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `visibility_groups` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci' AUTO_INCREMENT=59 ;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `type_id`, `visibility_groups`, `created`, `modified`) VALUES
(1, '32PFL5615D/78', 1, 1, '["1"]', '2012-11-04 10:18:24', '2012-12-10 11:47:18'),
(5, '40PFL6615D/78', 1, 1, '["1","2","3","4","5","7"]', '2012-11-28 11:18:04', '2013-01-07 14:10:10'),
(36, '50PFL8950D/78', 1, 1, '["1","2","3","5"]', '2012-11-28 13:46:32', '2012-11-29 11:42:35'),
(45, '50PFL6615D/78', 1, 1, '["1","2","3","4","5"]', '2012-11-29 10:22:01', '2012-11-29 10:22:01'),
(47, '22PFL2425D/78', 1, 1, '["1","3","5","7"]', '2012-12-04 14:48:33', '2012-12-04 14:48:49'),
(48, '22PFL', 2, 1, '["1","2"]', '2012-12-07 11:26:30', '2012-12-10 11:47:41'),
(49, 'sdasdasd', 2, 1, '["1","2","3","4","5","7"]', '2012-12-07 11:26:42', '2012-12-07 11:26:42'),
(50, 'sdasdasdasdasd', 2, 1, '["1","2","3","4","5","7"]', '2012-12-07 11:26:53', '2012-12-07 11:26:53'),
(51, 'qweqweqweqwe', 2, 1, '["1","2","3","4","5","7"]', '2012-12-07 11:27:03', '2012-12-07 11:27:03'),
(52, 'asdasdasdasdasdasdasd', 2, 1, '["1","2","3","4","5","7"]', '2012-12-07 11:27:17', '2012-12-07 11:27:17'),
(54, 'werqwerqwerqwerqwer', 2, 1, '["1","2","3","4","5","7"]', '2012-12-07 11:27:58', '2012-12-07 11:27:58'),
(56, '40PFL4017G/78', 2, 1, '["1","2","3","4","5","7"]', '2012-12-10 11:54:00', '2012-12-10 11:54:00'),
(57, 'teste não exibe para posto', 8, 1, '["1","2","3","4","5","7"]', '2012-12-11 17:01:07', '2012-12-11 17:02:57'),
(58, '50PFL8999D/78', 1, 1, '["1","3","7"]', '2013-01-07 11:42:34', '2013-01-07 11:43:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `downloads`
--

CREATE TABLE IF NOT EXISTS `downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `mimetype` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci' AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `downloads`
--

INSERT INTO `downloads` (`id`, `filename`, `dir`, `mimetype`, `filesize`, `descricao`, `created`, `modified`) VALUES
(10, 'image001.jpg', '10', 'image/jpeg', 9643, 'asdasd', '2013-01-07 15:10:58', '2013-01-07 15:10:58'),
(11, 'image001.jpg', '11', 'image/jpeg', 9643, 'asdasdasd', '2013-01-07 16:19:17', '2013-01-07 16:19:17'),
(12, 'image001.jpg', '12', 'image/jpeg', 9643, 'asdasdasd', '2013-01-07 16:19:17', '2013-01-07 16:19:17'),
(13, 'image001.jpg', '13', 'image/jpeg', 9643, '', '2013-01-07 16:20:58', '2013-01-07 16:20:58');

-- --------------------------------------------------------

--
-- Estrutura da tabela `downloads_categories`
--

CREATE TABLE IF NOT EXISTS `downloads_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `download_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  KEY `id` (`id`),
  KEY `fk_downloads_categories_downloads` (`category_id`),
  KEY `fk_downloads_categories_downloads1` (`download_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci' AUTO_INCREMENT=25 ;

--
-- Extraindo dados da tabela `downloads_categories`
--

INSERT INTO `downloads_categories` (`id`, `download_id`, `category_id`) VALUES
(1, 10, 1),
(2, 10, 5),
(3, 10, 36),
(4, 10, 45),
(5, 10, 47),
(6, 10, 58),
(7, 11, 1),
(8, 11, 5),
(9, 11, 36),
(10, 11, 45),
(11, 11, 47),
(12, 11, 58),
(13, 12, 1),
(14, 12, 5),
(15, 12, 36),
(16, 12, 45),
(17, 12, 47),
(18, 12, 58),
(19, 13, 1),
(20, 13, 5),
(21, 13, 36),
(22, 13, 45),
(23, 13, 47),
(24, 13, 58);

-- --------------------------------------------------------

--
-- Estrutura da tabela `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Suporte Técnico', '2012-11-01 17:29:21', '2012-11-01 17:29:21'),
(2, 'CRP', '2012-11-01 17:29:36', '2012-11-01 17:29:36'),
(3, 'Narp', '2012-11-01 17:29:39', '2012-11-01 17:29:39'),
(4, 'Postos', '2012-11-01 17:29:43', '2012-11-01 17:29:43'),
(5, 'TP Vision', '2012-11-01 17:29:47', '2012-11-01 17:29:47'),
(7, 'Sub Usuários', '2012-12-04 14:20:47', '2012-12-04 14:20:47'),
(8, 'teste', '2012-12-18 17:39:03', '2012-12-18 17:39:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_imagens_1_idx` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci' AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `images`
--

INSERT INTO `images` (`id`, `filename`, `dir`, `mimetype`, `filesize`, `created`, `modified`, `post_id`, `descricao`) VALUES
(2, '_imagens_wallpapers_replicas_6_7_6427.1280x720.jpg', '2', 'image/jpeg', 149762, '2012-11-23 11:42:42', '2012-11-23 11:53:26', 22, 'asdasdasd'),
(5, 'FPninetofive.png', '5', 'image/png', 41665, '2012-11-26 12:43:14', '2012-11-26 12:43:33', 23, 'lelelelelalalala'),
(6, '_imagens_wallpapers_replicas_6_7_6427.1280x720.jpg', '6', 'image/jpeg', 149762, '2012-11-26 14:39:26', '2012-11-26 14:39:26', 24, 'teste'),
(7, '26PFL3404- etiqueta.jpg', '7', 'image/jpeg', 63439, '2012-12-11 16:42:51', '2012-12-11 16:42:51', 26, 'teste'),
(8, 'image001.jpg', '8', 'image/jpeg', 9643, '2013-01-07 12:42:06', '2013-01-07 12:42:06', 22, 'asd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `parts`
--

CREATE TABLE IF NOT EXISTS `parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `posicao` varchar(20) NOT NULL,
  `seguranca` tinyint(1) NOT NULL DEFAULT '0',
  `codigo` varchar(20) NOT NULL,
  `nome` text NOT NULL,
  `exibe` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci' AUTO_INCREMENT=160 ;

--
-- Extraindo dados da tabela `parts`
--

INSERT INTO `parts` (`id`, `category_id`, `posicao`, `seguranca`, `codigo`, `nome`, `exibe`, `created`, `modified`) VALUES
(38, 5, 'RM', 1, '996510032472', 'CONTROLE REMOTE CID2680', 1, '2012-12-03 17:40:13', '2012-12-10 15:23:12'),
(40, 5, 'EMI1', 1, '996510032226', 'FITA FS31*3*12', 0, '2012-12-03 17:40:13', '2012-12-10 16:21:26'),
(41, 5, 'MB1', 1, '996510032215', 'PAINEL ELÉTRICO PRINCIPAL', 1, '2012-12-03 17:40:13', '2012-12-10 15:32:36'),
(42, 5, 'ME12', 0, '996510032473', 'PAINEL ELÉTRICO SERVO', 0, '2012-12-03 17:40:13', '2012-12-10 16:22:12'),
(44, 5, 'PE0', 0, '996510032471', 'PAINEL ELÉTRICO TECLADO', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(45, 5, 'PE1', 0, '996510032207', 'PORTA', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(46, 5, 'PE10', 0, '996510032204', 'LENTE REM', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(47, 5, 'PE11', 0, '996510032188', 'LENTE A-D', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(48, 5, 'PE12', 0, '996510032201', 'TECLA RESET', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(49, 5, 'PE13', 0, '996510032191', 'PORTA MINI SD', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(50, 5, 'PE14', 0, '996510032232', 'TECLA EJECT', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(51, 5, 'PE15', 0, '996510032184', 'GUIA DE LUZ ESQUERDO - CDM', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(52, 5, 'PE19', 1, '996510032211', 'SUPORTE MIC', 0, '2012-12-03 17:40:13', '2012-12-10 16:22:24'),
(53, 5, 'PE2', 0, '996510032219', 'TRAVA DA PORTA', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(54, 5, 'PE20', 0, '996510032208', 'MIC', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(55, 5, 'PE21', 0, '996510032469', 'PAINEL ELÉTRICO SD1', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(57, 5, 'PE28', 0, '996510032196', 'ESPONJA CONDUTORA 11*10*5', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(58, 5, 'PE3', 0, '996510032238', 'PAINEL', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(59, 5, 'PE31', 1, '996510032225', 'GUIA DE LUZ DIREITO - CDM', 1, '2012-12-03 17:40:13', '2012-12-10 16:36:41'),
(60, 5, 'PE34', 0, '996510032194', ' PAINEL TOUCH SCREEN SHARP 6.5   ', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(61, 5, 'PE35', 0, '996510032237', 'MÓDULO LCD DLQ065Y5DG03 6.5', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(62, 5, 'PE36', 0, '996510032721', 'PAINEL TFT LCD CID2680/55', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(63, 5, 'PE38', 0, '996510032185', 'BLOCO LIMITADOR', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(64, 5, 'PE4', 0, '996510032197', 'BOTÃO', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(65, 5, 'PE5', 0, '996510032198', 'TECLA SOURCE', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(66, 5, 'PE7', 0, '996510032231', 'BOTÃO NAVEGAÇÃO', 1, '2012-12-03 17:40:13', '2012-12-03 17:40:13'),
(129, 1, '0', 0, '0', 'ACESSÓRIOS', 0, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(130, 1, 'RM', 0, '996510032472', 'CONTROLE REMOTE CID2680', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(131, 1, '0', 0, '0', 'DIVERSOS', 0, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(132, 1, 'EMI1', 0, '996510032226', 'FITA FS31*3*12', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(133, 1, 'MB1', 0, '996510032215', 'PAINEL ELÉTRICO PRINCIPAL', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(134, 1, 'ME12', 0, '996510032473', 'PAINEL ELÉTRICO SERVO', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(135, 1, 'ME6', 0, '996510032187', 'VENTILADOR SF30C-12-018SEPA', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(136, 1, 'PE0', 0, '996510032471', 'PAINEL ELÉTRICO TECLADO', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(137, 1, 'PE1', 0, '996510032207', 'PORTA', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(138, 1, 'PE10', 0, '996510032204', 'LENTE REM', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(139, 1, 'PE11', 0, '996510032188', 'LENTE A-D', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(140, 1, 'PE12', 0, '996510032201', 'TECLA RESET', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(141, 1, 'PE13', 0, '996510032191', 'PORTA MINI SD', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(142, 1, 'PE14', 0, '996510032232', 'TECLA EJECT', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(143, 1, 'PE15', 0, '996510032184', 'GUIA DE LUZ ESQUERDO - CDM', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(144, 1, 'PE19', 0, '996510032211', 'SUPORTE MIC', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(145, 1, 'PE2', 0, '996510032219', 'TRAVA DA PORTA', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(146, 1, 'PE20', 0, '996510032208', 'MIC', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(147, 1, 'PE21', 0, '996510032469', 'PAINEL ELÉTRICO SD1', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(148, 1, 'PE26', 0, '996510032239', 'FILME TFT', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(149, 1, 'PE28', 0, '996510032196', 'ESPONJA CONDUTORA 11*10*5', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(150, 1, 'PE3', 0, '996510032238', 'PAINEL', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(151, 1, 'PE31', 0, '996510032225', 'GUIA DE LUZ DIREITO - CDM', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(152, 1, 'PE34', 0, '996510032194', ' PAINEL TOUCH SCREEN SHARP 6.5   ', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(153, 1, 'PE35', 0, '996510032237', 'MÓDULO LCD DLQ065Y5DG03 6.5', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(154, 1, 'PE36', 0, '996510032721', 'PAINEL TFT LCD CID2680/55', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(155, 1, 'PE38', 0, '996510032185', 'BLOCO LIMITADOR', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(156, 1, 'PE4', 0, '996510032197', 'BOTÃO', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(157, 1, 'PE5', 0, '996510032198', 'TECLA SOURCE', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(158, 1, 'PE7', 0, '996510032231', 'BOTÃO NAVEGAÇÃO', 1, '2012-12-18 16:35:35', '2012-12-18 16:35:35'),
(159, 1, '', 0, '', '', 0, '2012-12-18 16:35:35', '2012-12-18 16:35:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `category_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci' AUTO_INCREMENT=28 ;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `category_id`, `created`, `modified`) VALUES
(21, 1, 'asdasd', '<p>asdasdasd</p>', 1, '2012-11-22 17:09:36', '2012-11-22 17:09:36'),
(22, 8, 'Teste Com imagens no POst =D', '<p>\r\n	<img alt="" src="/suportephi/app/webroot/uploads/images/checkOutBtn.gif" style="width: 136px; height: 27px;" />....</p>\r\n<p>\r\n	asdasdasd<br />\r\n	<br />\r\n	&nbsp;</p>\r\n', 1, '2012-11-23 11:36:37', '2012-12-11 16:28:49'),
(23, 1, 'teste ', '<p>\r\n	alalalala &nbsp;&nbsp;</p>\r\n', 5, '2012-11-26 12:42:02', '2012-12-04 13:57:13'),
(24, 1, 'lalalala', '<p>\r\n	asdasd<img alt="" src="/suportephi/app/webroot/uploads/images/Pirates_of_the_caribean_by_pheonixoffire.jpg" style="width: 350px; height: 219px; " /></p>\r\n', 5, '2012-11-26 14:39:06', '2012-12-04 13:57:18'),
(26, 8, 'Não Funciona', '<p>\r\n	<a href="/suportephi/app/webroot/uploads/images/26PFL3404 cabo LVDS.jpg"><img alt="" src="/suportephi/app/webroot/uploads/images/26PFL3404%20cabo%20LVDS.jpg" style="width: 380px; height: 245px;" /></a>uahushauahsuahuha.</p>\r\n', 45, '2012-12-04 13:44:01', '2012-12-18 17:37:54'),
(27, 1, 'Teste', '<p>\r\n	asdasdasdadas</p>\r\n', 5, '2012-12-07 15:11:00', '2012-12-07 15:11:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci' AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `types`
--

INSERT INTO `types` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Produto', '2012-11-29 10:19:37', '2012-11-29 10:19:37'),
(2, 'Informativos', '2012-11-29 10:19:43', '2012-11-29 10:19:43'),
(3, 'Softwares', '2012-11-29 10:58:48', '2012-11-29 10:58:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `workshop_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tokenhash` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci' AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `group_id`, `user_id`, `workshop_id`, `email`, `tokenhash`, `active`, `created`, `modified`) VALUES
(1, 'Diego Gomes Silva', 'suporte', '5b7a1f86bc971b772515a1bac4c6996fe5e03194', 1, 1, 291, 'diego.gomes@suportephi.com.br', '0c6327be010c958b946180d9e209370db6e8c0a5', 1, '2012-11-01 17:29:59', '2012-12-17 16:23:19'),
(2, 'CRP', 'crp', '7cfd816022a6dc7ddea5ce8ec0d7f0fdc19cd901', 2, 1, 0, 'dgs_gomes_silva@hotmail.com', '', 1, '2012-11-01 17:30:30', '2012-12-14 11:04:57'),
(3, 'Narp', 'narp', '27eec02fb5817fcebff79e641a2a5db3d4442bf4', 3, 1, 0, 'narp@narp.com.br', '', 1, '2012-11-01 17:30:42', '2012-12-14 11:05:00'),
(4, 'Post', 'posto', '9bf10d86ef68bf365b3264b892a7b45a692a5e3e', 4, 1, 167, 'posto@suportephi.com.br', '', 1, '2012-11-01 17:30:59', '2012-12-17 16:04:38'),
(5, 'TP Vision', 'tpv', 'fa4227b8cd7d09d6f169a752d5b8b54c4b004a55', 5, 1, 0, 'tpvision@suportephi.com.br', '', 1, '2012-11-01 17:31:08', '2012-12-14 11:05:47'),
(8, 'Edilson Stahal', 'edilson', '1830a20010624f0cd615186c1249d4d42dbe7560', 1, 1, 0, 'edilson.stahal@suportephi.com.br', '', 1, '2012-12-11 16:04:20', '2012-12-14 11:05:23'),
(10, 'test', 'treasd', '443480df27f065593d6519752f39286afcc16e5a', 7, 3, 0, 'asd@asd.com', '', 1, '2012-12-14 11:32:33', '2012-12-14 11:32:33'),
(11, 'SubPosto', 'subposto', '5ea48fd5609d2297664931a11a3aca9972d03e90', 7, 4, 167, 'sub@email.com.br', '', 1, '2012-12-17 16:05:11', '2012-12-17 16:45:18'),
(12, 'asd', 'asd', '443480df27f065593d6519752f39286afcc16e5a', 7, 4, 167, 'asd@asd.com', '', 1, '2012-12-17 16:26:35', '2012-12-17 16:26:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `part_no` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `workshops`
--

CREATE TABLE IF NOT EXISTS `workshops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `consultor` varchar(25) NOT NULL,
  `cnpj` varchar(30) NOT NULL,
  `ie` varchar(30) NOT NULL,
  `razaosocial` text NOT NULL,
  `rua` text NOT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `bairro` varchar(30) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `uf` varchar(3) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `ddd` varchar(3) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` text NOT NULL,
  `responsavel` varchar(25) DEFAULT NULL,
  `proprietario` varchar(25) NOT NULL,
  `tecnico` varchar(25) NOT NULL,
  `skype` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci' AUTO_INCREMENT=300 ;

--
-- Extraindo dados da tabela `workshops`
--

INSERT INTO `workshops` (`id`, `codigo`, `consultor`, `cnpj`, `ie`, `razaosocial`, `rua`, `complemento`, `bairro`, `cidade`, `uf`, `cep`, `ddd`, `telefone`, `email`, `responsavel`, `proprietario`, `tecnico`, `skype`, `status`, `created`, `modified`) VALUES
(2, 'AC105', 'NO', '4539690000102', '101255300101', 'JOAO LUIZ JORDON-ME', 'Via Chico Mendes', '4088', 'CORRENTE', 'RIO BRANCO', 'AC', '69902-260', '68', '32217642', 'videotec.serv@uol.com.br', 'JOAO LUIZ', '', '', '', 1, '0000-00-00 00:00:00', '2012-12-17 16:54:45'),
(3, 'AC106', 'NO', '8963320000159', '101952700187', 'R A JUCA ME', 'AV COPACABANA', '360', 'FLORESTA', 'CRUZEIRO DO SUL', 'AC', '69980000', '68', '33227216', 'SILAS.AC@HOTMAIL.COM', 'RAILENON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'AL106', 'NE', '8431009000169', '246002670', 'ELIEZER DE A CAVALCANTI E', 'R. MANOEL LEAO', '75', 'CENTRO', 'ARAPIRACA', 'AL', '57300-160', '82', '35222367', 'garantiaeliezer@ig.com.br', 'ELIEZER', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'AL142', 'NE', '8486938000175', '24066794-8', 'THERMO ELETR  SERV -REP', 'AV FERNANDES LIMA', '781', 'FAROL', 'MACEIO', 'AL', '57055-000', '82', '32417237', 'thermoal@veloxmail.com.br controleremoto@veloxmail.com.br', 'ERICO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'AL313', 'NE', '12424867000153', '24600069-4', 'MANUEL R  PEREIRA - EPP', 'R. PRES. TANCREDO A. NEVES', '47', 'CENTRO', 'UNIAO DOS PALMARES', 'AL', '57800-000', '82', '32811305', 'eletronica_pereira@ig.com.br', 'MANUEL', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'AL317', 'NE', '41163197000167', '248298259', 'AILTON LEMOS DA SILVA ME', 'RUA 7 DE SETEMBRO', '335', 'SAO CRISTOVAO', 'PALMEIRA DOS INDIOS', 'AL', '57601-140', '82', '34213452', 'ailton.lemos@bol.com.br', 'AILTON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'AM315', 'NO', '84469097000176', '41241606', 'HI TEC SERVICE - COMERCIO DE COMPONENTES LTDA - ME', 'AV. CARVALHO LEAL', '1559', 'CACHOEIRINHA', 'MANAUS', 'AM', '69065-001', '92', '36633366', 'hitecservice@hitecservice.com.br', 'LUIZ CARLOS -KEYLE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'AM316', 'NO', '4155271000177', '41689020', 'COLORTEL COM E ASSES LTDA', 'AV. CANSTANTINO NERY', '273', 'CENTRO', 'MANAUS', 'AM', '69010-160', '92', '32324252', 'colortel@vivax.com.br  nonato_trindade@hotmail.com', 'RAIMUNDO NONATO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'AP303', 'NO', '3901023000165', '03022375-0', 'A S CUBA - ME', 'AV. GERUSA', '314', 'RENASCER I', 'MACAPA', 'AP', '68907-110', '96', '32175934', 'gbsms@uol.com.br', 'ANGELI  - GILBERTO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'BA193', 'NE', '856078000102', '42883735', 'CAMPOS ELETRONICOS COMERCIO E SERV', 'AV. PROF. JOEL LOPES', '365', 'CENTRO', 'IRECE', 'BA', '44900-000', '74', '36410202', 'eliane.campos@eletronicacampos.com.br', 'ROBERTO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'BA301', 'NE', '73820870000180', '38392230', 'A C CARDOSO', 'R PROFESSOR SABINO SILVA', '43 LOJA 4', 'JARDIM APIPEMA', 'SALVADOR', 'BA', '40157-510', '71', '32473659', 'ba301philips@bol.com.br', 'ANTONIO CARLOS CARDOSO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'BA317', 'NE', '13521513000190', '93987116', 'ELETRONICA VARJAO LTDA', 'R. PEDRO ALVARES CABRAL', '148', 'CENTRO', 'EUNAPOLIS', 'BA', '45825-000', '73', '32815181', 'varjao_1@hotmail.com', 'CARLOS VARJAO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'BA331', 'NE', '40540304000166', '30457462', 'APOLLO SOM COM REP SERV L', 'Rua dos Ingleses', '24', 'CENTRO', 'JUAZEIRO', 'BA', '48904-010', '74', '36116456', 'apollosom@uol.com.br', 'MANOEL  - NICE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'BA345', 'NE', '14481832000181', '93047270ME', 'RAIMUNDO A  DE ANDRADE', 'R. JOAO LOURENCO', '48', 'CENTRO', 'RIBEIRA DO POMBAL', 'BA', '48400-000', '75', '32761853', 'eletronicandrade08@hotmail.com', 'RAIMUNDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'BA349', 'NE', '9334401000152', '76342452', 'ELETRONICA IRMAOS MEIRA LTDA', 'R.MONS.FRANCISCO M.SILVA', '116 1o. andar', 'CENTRO', 'SANTO ANTONIO DE JESUS', 'BA', '44571-075', '75', '36314470', ' hitec@hiteceletronica.com.br', 'IVONE SILVA SANTOS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'BA350', 'NE', '15715154000137', '93252968', 'OLIVEIRA COM MAT ELETRONI', 'AV LUIZ VIANA FILHO', '754', 'CENTRO', 'SERRINHA', 'BA', '48700-000', '75', '32611794', 'servisom@veloxmail.com.br', 'JOSE JURACY', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BA360', 'NE', '14724751000165', '16187197', 'ERNANDO VIEIRA SANDES', 'PCA. BRAULIO GOMES', '26', 'CENTRO', 'PAULO AFONSO', 'BA', '48602020', '75', '32811349', 'confusaotec@oi.com.br', 'ERNANDO  - KATIA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'BA363', 'NE', '13640925000149', '92051376', 'ANTONIO SANTOS FONSECA', 'RUA BARAO DO COTEGIPE', '40', 'CENTRO', 'SENHOR DO BONFIM', 'BA', '48970-000', '74', '35413143', 'e-uniao@ifrnet.com.br', 'ANTONIO SANTOS FONSECA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'BA364', 'NE', '34375097000139', '287405577', 'MENDES E CONCEICAO LTDA', 'AV.ITABUNA', '3', 'CENTRO', 'ILHEUS', 'BA', '45650-000', '73', '32315995', 'mendeseconceicao@veloxmail.com.br', 'ADAMAVEL', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'BA367', 'NE', '41978420000124', '61246490MC', 'JOSE LIMA SILVA-ME', 'RUA BARAO DE COTEGIPE', '245', 'CENTRO', 'ALAGOINHAS', 'BA', '48010-520', '75', '34211128', 'provideo@bol.com.br', 'JOSE LIMA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'BA368', 'NE', '139057000176', '40653651', 'SERVICE MANIA COM SERV EL', 'RUA CABUCU', '100', 'TANQUE DA NACAO', 'FEIRA DE SANTANA', 'BA', '44002-788', '75', '32232882', 'videomania@videomania.srv.br', 'GILBERTO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'BA602', 'NE', '112788000128', '39745039', 'CARLOS A NOVAES - ME', 'R MANOEL VILABOIM', '195', 'CENTRO', 'CRUZ DAS ALMAS', 'BA', '44380-000', '75', '36212839', 'eletronicasantiago@oi.com.br', 'CARLOS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'BA609', 'NE', '590445000179', '41774511', 'NUROITE NUCLEO INFO T ELE', 'AV FERNANDES DA CUNHA', '671', 'MARES', 'SALVADOR', 'BA', '40445-200', '71', '32072070', 'eletronicarochamares@terra.com.br', 'ADELICIO -DANIEL', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'BA611', 'NE', '5927539000104', '62689798', 'ALEXSANDRA SILVA BARROS CHETTO ME', 'RUA LUIZ TARQUINIO', '20', 'CENTRO', 'LAURO DE FREITAS', 'BA', '42700-000', '71', '33784021', 'Cris@tvsatbahia.com.br  Jack@tvsatbahia.com.br  guto@tvsatbahia.com.br', 'AUGUSTO  - Jaqueline', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'BA613', 'NE', '3333748000102', '52122044', 'A ELETRONICA PECAS E SERVICOS LTDA', 'RUA FELIX GASPAR', '19', 'CENTRO', 'JEQUIE', 'BA', '45200-350', '73', '35254141', 'aeletronicaservice@bol.com.br', 'JOILMA  - VIRGILIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'BA614', 'NE', '8262533000153', '69.815.384ME', 'A. Luiz dos Santos Reparacao e Manut ME', 'R PRUDENTE DE MORAIS', '386 A', 'CENTRO', 'TEIXEIRA DE FREITAS', 'BA', '45995-004', '73', '30111600', 'eletosantos@bol.com.br', 'ANTONIO LUIZ  - ROSE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'BA615', 'NE', '9211595000107', '75797596', 'ELETRONICA SANTOS LTDA', 'AV. CINQUENTENARIO', '55', 'CENTRO', 'ITABUNA', 'BA', '45600-002', '73', '36137777', 'eletro-santos@uol.com.br', 'BONIFACIO SAMPAIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'BA616', 'NE', '6023835000143', '62902201', 'ALMEIDA E QUEIROZ LTDA', 'AV CASTELO BRANCO', '555', 'AEROPORTO VELHO', 'GUANAMBI', 'BA', '46430-000', '77', '34512791', 'EDGARDOPEREIRA@UOL.COM.BR', 'EDGARDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'BA617', 'NE', '03.582.353 -0001-35 ', '52328154', 'V V ELETRONICA LTDA', 'AV ILHEUS', '2332', ' BRASIL', 'VITORIA DA CONQUISTA', 'BA', '77', '77', '34221917', 'vveletronica@pop.com.br', 'EUZENIR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'BA618', 'NE', '#N -DISP', '#N -DISP', 'ELETRONICA MULT MARCAS LTDA', 'AV RIO CAMACARI 17', 'TERREO', 'DOS 46', 'CAMACARI', 'BA', '#N -DISP', '77', '3621-9447', '#N -DISP', 'TAIZ', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'BA619', 'NE', '0', '0', 'ADAILTON DO NASCIMENTO SILVA 										', 'R FOLK ROCHA 120A', NULL, 'Sandra Regina', 'BARREIRAS', 'BA', '0', '77', '36113854', '0', 'Adailton', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'CA101', 'SE', '46439642000192', '153002392111', 'ELETROTECNICA CENTRAL LTD', 'AV. BRASIL', '284', 'CENTRO', 'AGUAS DE LINDOIA', 'SP', '13940-000', '19', '38241524', 'pivalima@terra.com.br', 'JOSE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'CA602', 'SE', '46758611000102', '244010485118', 'TECNICENTRO COM EL PC ASS', 'RUA DR. QUIRINO', '1668', 'CENTRO', 'CAMPINAS', 'SP', '13015-082', '19', '37372500', 'garantia@centrotecnico.com.br estoque@centrotecnico.com.br', 'ALEXANDRE Q. S. FERNANDES', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'CE103', 'NE', '7105950000120', '69494866', 'ORGANIZACAO SATEL LTDA', 'R CEL ZEZE', '1055', 'CENTRO', 'CRATEUS', 'CE', '63700-000', '88', '36910019', 'eletronicasatel@ig.com.br', 'ANTONIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'CE105', 'NE', '7526148000103', '63252546', 'JOSE LUSMAR DA CUNHA-ME', 'PCA.ANTONIO FURTADO PINTO', '78 -82', 'CENTRO', 'UBAJARA', 'CE', '62350-000', '88', '36341233', 'radiomar@sobral.com.br lusmar@sobral.org', 'LUSMAR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'CE109', 'NE', '5875562000100', '68224257', 'ANTONIO CARNEIRO NETO', 'R.RAIMUNDO TEOFILO DE CASTRO', '122', 'CENTRO', 'ITAPIPOCA', 'CE', '62500-000', '88', '36312030', 'gelson@radioconnect.com.br', 'ANTONIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'CE305', 'NE', '7654775000120', '60092572', 'F TAVARES FELIPE - EPP', 'R FLORIANO PEIXOTO', '573', 'CENTRO', 'IGUATU', 'CE', '63500-000', '88', '35810512', 'ftavares@baydenet.com.br  eletrotavares@hotmail.com', 'TAVARES', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'CE313', 'NE', '7738925000183', '63437554', 'FRANCISCO CHAGAS PEREIRA', 'AV DOM JOSE TUPINAMBA DA FROTA', '1617', 'CENTRO', 'SOBRAL', 'CE', '62010-280', '88', '36110605', 'eletronicafelinto@hotmail.com', 'FELINTO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'CE316', 'NE', '1598102000113', '06980945-3', 'CENTRAL TEC  B&B COM  SER', 'RUA MONSENHOR SALAZAR', '624', 'SAO JOAO DO TAUAPE', 'FORTALEZA', 'CE', '60130-370', '85', '40088555', 'centraltecnicabeb@hotmail.com', 'ANDREA-4008-8565- IVANEID', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'CE604', 'NE', '4862855000182', '06319524-0', 'VALTER TELOES TV VIDEOS L', 'RUA CAPITAO JOAQUIM LOURENCO', '272', 'CENTRO', 'TIANGUA', 'CE', '62320-000', '88', '36713336', 'vteloes@hotmail.com', 'VALTER', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'CP602', 'SE', '63967160000124', '633275459110', 'ELETRON SERVICOM SANTOS-S', 'R. AFONSO PENA', '294', 'EMBARE', 'SANTOS', 'SP', '11020-000', '13', '32272947', 'francisco@servicomsantos.com.br ', 'JOAO HENRIQUE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'CP606', 'SE', '48903843000124', '109810743110', 'ELETRONICA ZONA NORTE LTD', 'AV. NOVA CANTAREIRA 1011', NULL, 'TUCURUVI', 'SAO PAULO', 'SP', '02331-001', '11', '29791184', 'ezn@osite.com.br eznl@bol.com.br contato@eletronicazonanorte.com.br', 'BRAS - KEYLE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'DF608', 'CO', '7104742000106', '746244200125', 'HASAN E LEMOS ELETRONICA LTDA ME', 'QNE 34 LOTE 25', 'LOJA 01', 'TAGUATINGA', 'BRASILIA', 'DF', '72125340', '61', '33549615', 'sunsony@uol.com.br', 'ROGER  - FAUZI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'DF609', 'CO', '5673117000150', '744535200184', 'MARIA DE LOURDES DA SILVA ASAKAZU', 'HCS CL QD 211 BL C LOJA', '33', 'ASA SUL', 'BRASILIA', 'DF', '70274530', '61', '34451991', 'eletronica@asakazu.com.br', 'MARIA LOUDES -MAGNO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'ES302002', 'SE', '27725779000240', '81847610', 'JOSE ANGELO ZAMBON', 'ROD. JONES DOS SANTOS NEVES', '344', 'MUQUICABA', 'GUARAPARI', 'ES', '29200-000', '27', '33614355', 'vanusia.panamix@hotmail.com', 'JOSE ANGELO ZAMBON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'ES311', 'SE', '28434553000171', '80958303', 'MANTEL COML TEC LTDA', 'R. GERMANO NAUMANN FILHO', '374', 'CENTRO', 'COLATINA', 'ES', '29700-030', '27', '37222288', 'garantia.mantel@veloxmail.com.br', 'CELIO  - JULIA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'ES601', 'SE', '27462514000115', '80737021', 'SERVITORIA COM E SERV ELE', ' R.JOSE CASSIANO SANTOS', '184 - lj 01', 'FRADINHOS', 'VITORIA', 'ES', '29027-080', '27', '32233899', 'lusbel@terra.com.br', 'REMY', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'ES607', 'SE', '5325834000190', '82197377', 'ROCCAS ELETR E COM LTDA', 'AV. LUCIANO DAS NEVES', '959', 'CENTRO', 'VILA VELHA', 'ES', '29100-201', '27', '32891233', 'roccaseletronica@gmail.com', 'LUCAS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'ES610', 'SE', '854942000137', '81769245', 'THOMAZ ELETRONICA LTDA ME', 'RUA LAURO VIANA', '15', 'GILBERTO MACHADO', 'CACHOEIRO DE ITAPEMIRIM', 'ES', '29303680', '28', '35223524', 'thomaz@thomazeletronica.com.br tecnica2@thomazeletronica.com.br', 'VALDIR DE OLIVEIRA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'ES614', 'SE', '11875126000126', '82708240', 'TECNO SERV EELT E COM LTDA ME', 'AV RUFINO DE CARVALHO', '871', 'CENTRO', 'LINHARES', 'ES', '29900-520', '27', '33715052', 'tecnoservice.linhares@gmail.com', 'LUCAS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'ES615', 'SE', '#N -DISP', '#N -DISP', 'Gislaine Soares Oliveira - ME', 'RUA CEL. MATEUS CUNHA', '358', 'SERNAMBY', 'SAO MATEUS', 'ES', '#N -DISP', '27', '3763-5597', '#N -DISP', 'Gislaine', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'GO302', 'CO', '2814960000110', '101135998', 'ELETRONICA MUNDIAL LTDA', 'RUA BARAO DE COTEGIPE', '99', 'SETOR CENTRAL', 'ANAPOLIS', 'GO', '75025-010', '62', '33243562', 'eletronica.mundial@uol.com.br', 'SIZENANDO  - CELSO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'GO352', 'CO', '765677000110', '101102356', 'CARLOS FERREIRA OLIVEIRA', 'AVENIDA CORONEL GASPAR  194', 'QD 02 LOTE 14', 'VILA NOVA 2', 'URUACU', 'GO', '76400-000', '62', '33571285', 'tvnular@gmail.com', 'CARLOS FERREIRA  - Marili', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'GO361', 'CO', '37623782000125', '102488606', 'CENTER VIDEO PC SERV EL L', 'RUA RUI DE ALMEIDA', '677', 'SETOR CENTRAL', 'ITUMBIARA', 'GO', '75503-090', '64', '34310837', 'centervideo.itumbiara@gmail.com  centervideo1@yahoo.com.br  jniltonsilva@gmail.com', 'JOSE NILTON SILVA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'GO602', 'CO', '26949651000116', '102313202', 'VIDEOSERVICE ELETRONICA', 'AV.INDEPENDENCIA', '4323 QD 129', 'ST CENTRAL', 'GOIANIA', 'GO', '74045-010', '62', '32292908', 'videoservice@uol.com.br', 'EMERSON  - CIDA  - DARLEY', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'GO603', 'CO', '2624185000130', '103050060', 'MARIA DE F  O  CASTRO', 'RUA CORONEL ANACLETO 645', 'QD 30 LT 10', 'CENTRO', 'TRINDADE', 'GO', '75380-000', '62', '35051505', 'eletrocastro@cultura.com.br', 'MARIA DE FATIMA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'GO609', 'CO', '2357638000100', '103034927', 'A E DA SILVA MELO', 'AV.ALFREDO NASSER S -N', 'QD.64 LT10 LJ02', 'PQ ESTRELA DALVA', 'LUZIANIA', 'GO', '72800-000', '61', '36228519', 'panambraeletronica@hotmail.com', 'ANTONIA ELDA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'GO610', 'CO', '5750995000121', '103653325', 'FORMOSERVICE COM SERV LTD', 'RUA VISCONTE DE PORTO SEGURO', '789  LOJA 777', 'CENTRO', 'FORMOSA', 'GO', '72801-100', '61', '36318166', 'formoservice@bol.com.br', 'JAIRTON MARCOS FERREIRA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'GO614', 'CO', '8396286000188', '104098155', 'MUNDIAL ELETRONICA LTDA', 'AV GOIAS', '306', 'CARRILHO', 'GOIANESIA', 'GO', '76380000', '62', '33534967', 'ricarodrigo@hotmail.com', 'RICARDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'GO615', 'CO', '10543495000230', '104404132', 'CGM DIGITAL ELETRONICA LTDA', 'AV T-2', '186 -QUADRA98 LOTE 09', 'SETOR BUENO', 'GOIANIA', 'GO', '74210-005', '62', '32510933', 'alfa@alfadigitaleletronica.com.br  digital@digitalgoiania.com.br', 'ISRAEL -CLEONES', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'GO617', 'CO', '#N -DISP', '#N -DISP', 'ESTRELA DISTR ELETR LTDA', 'AV RIO CLARO', '712', 'SETOR CENTRAL', 'JATAI', 'GO', '#N -DISP', '64', '36363638', '#N -DISP', 'Halys', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'MA104', 'NE', '11594918000122', '127125264', 'J R  SILVA OLIVEIRA', 'RUA 28 DE JUNHO', '582', 'CENTRO', 'PRESIDENTE DUTRA', 'MA', '65760-000', '99', '36631815', 'motavaldirene@ig.com.br', 'ZEZINHO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'MA110', 'NE', '10353027000111', '127068589', 'THEOPHILO ARAUJO', 'RUA 1 DE MAIO', '67', 'CRUZEIRO', 'SAO JOSE DE RIBAMAR', 'MA', '65110-000', '98', '32241581', 'theophiloaraujo@superig.com.br', 'THEOPHILO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'MA112', 'NE', '63533707000183', '121315410', 'A DIGITAL ELETRONICA LTDA', 'R. CEARA', '527', 'CENTRO', 'ACAILANDIA', 'MA', '65930-000', '99', '35381889', 'adigitaleletronica@yahoo.com.br', 'ZACARIAS M. DA SILVA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'MA313', 'NE', '23679947002462', '121806200', 'A G S SAMPAIO', 'RUA AFONSO PENA', '326B', 'CENTRO', 'CODO', 'MA', '65400000', '99', '36612942', 'jarlanlemos@hotmail.com', 'Lilian', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'MA318', 'NE', '12564282000139', '127165827', 'A DE OLIVEIRA NETO', 'R. SAO PANTALEAO', '923', 'CENTRO', 'SAO LUIS', 'MA', '65015-460', '98', '3312-2976', 'neto.com.serv@gmail.com', 'NETO (098) 9617-3738', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'MA321', 'NE', '41625971000104', '121261115', 'FERREIRA E SANTOS LTDA', 'R 28 DE JULHO', '200', 'CENTRO', 'BACABAL', 'MA', '65700-000', '99', '36212794', 'eletronicapiaui@ig.com.br', 'SANDRO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'MA602', 'NE', '2764096000190', '121670899', 'MARCOS R SILVA DE OLIVEIR', 'R MIGUEL ATTA', '103', 'CENTRO', 'PEDREIRAS', 'MA', '65725-000', '99', '36423142', 'marcosrogerio@hotmail.com', 'MARCOS ROGERIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'MA605', 'NE', '7072680000106', '122162358', 'ARAUJO COMERCIO E CONSERV. AMBIENTAL LTDA.', 'RUA CEARA 126', '01 ANDAR  SALA 04', 'JUCARA', 'IMPERATRIZ', 'MA', '65901610', '99', '3523-2906', 'ARAUJOSERVICE@YAHOO.COM.BR', 'EGNALDO ARAUJO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'MG126', 'SE', '18752105000162', '6706284200', 'TELERADIO BETIM LTDA', 'AV. AMAZONAS', '1228', 'CENTRO', 'BETIM', 'MG', '32560-000', '31', '35322088', 'teleradiobetim@ig.com.br', NULL, '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'MG154', 'SE', '21717921000140', '6472642280078', 'GIAMPAOLO ALBIERI', 'AV. ANGELO CALAFIORI', '823', 'CENTRO', 'SAO SEBASTIAO DO PARAISO', 'MG', '37950-000', '35', '35313094', 'eletronicasos@univelox.com.br  giamalbieri@hotmail.com', 'GIAMPAOLO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'MG198', 'SE', '42808774000193', '3178093910042', 'ELETRONICA CONSERTOS TECNICOS LTDA - ME', 'RUA DOM PRUDENCIO', '219A', 'PARA', 'ITABIRA', 'MG', '35900-048', '31', '38316218', 'consertec@veloxmail.com.br', 'HELDER VASCONCELLOS -MARI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'MG304', 'SE', '16952798000101', '40326400013', 'ELETR CENTER SOM LTDA - ME', 'AV. JOAO PAULO II', '370', 'ALVORADA', 'ARAXA', 'MG', '38183-000', '34', '36611132', 'centson@terra.com.br', 'MARCOS CESAR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'MG310', 'SE', '38573614000135', '2876938500045', 'VALDOESTE ALVES SALES', 'R.ANTONIO DOS SANTOS CORAGEM', '57', 'CENTRO', 'GUAXUPE', 'MG', '37800-000', '35', '35514124', 'tv-sales@oi.com.br', 'VALDOESTE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'MG312', 'SE', '64331325000130', '3242622690035', 'COLTEL LTDA', 'R. CEL. JOAQUIM FRANCISCO', '153', 'CENTRO', 'ITAJUBA', 'MG', '37501-052', '35', '36211315', 'coltelltda@uol.com.br', 'LUIZ CARLOS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'MG319', 'SE', '20891628000131', '479282760020', 'TRANSISTEC ELETRO ELE  LT', 'R. DOS BRANDOES', '464', 'CENTRO', 'PASSOS', 'MG', '37900-000', '35', '35214342', 'transistec@hotmail.com  thales_limalemos@hotmail.com', 'DECIO  - YBIATA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'MG321', 'SE', '23951288000185', '5250532180006', 'MORAES E TERRA LTDA', 'AV SAO FRANCISCO', '394', 'CENTRO', 'POUSO ALEGRE', 'MG', '37550-000', '35', '34212120', 'eletronicapousoalegre@yahoo.com.br', 'FRANCISCO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'MG341', 'SE', '41676743000163', '427790440074', 'SOS ELETR FERNANDES OLIVE', 'R. SAO GERALDO', '789', 'CENTRO', 'ARCOS', 'MG', '35588000', '37', '33513455', 'soseletronica@twister.com.br', 'MARCOS ANTONIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'MG347', 'SE', '23858616000101', '74555990', 'RONALDO CESAR DA SILVA', 'AV. DAS PALMEIRAS', '394', 'CENTRO', 'BOM DESPACHO', 'MG', '35600-000', '37', '35222511', 'eletronicasideral@yahoo.com.br', 'RONALDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'MG357', 'SE', '17594797000103', '1942512430082', 'VIDEO SOM DRUMOND LTDA', 'RUA MOACIR BIRRO', '707 LJ-1', 'CENTRO', 'CORONEL FABRICIANO', 'MG', '35170-002', '31', '38411804', 'videosom@eletronicadrumond.com.br', 'REINALDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'MG362', 'SE', '19604669000110', '2231501950070', 'ELETR  APOLO LTDA', 'AV. SETE DE SETEMBRO', '1380', 'CENTRO', 'DIVINOPOLIS', 'MG', '35500-011', '37', '32212353', 'eletronica.apolo@veloxmail.com.br', 'ODILON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'MG370', 'SE', '25184516000164', '3135830740028', 'DIGIMAR COM ASSIST TEC LT', 'R GUAJAS', '60', 'JARDIM PANORAMA', 'IPATINGA', 'MG', '35162-394', '31', '38222332', 'digimar@digimar.com.br', 'EDUARDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'MG373', 'SE', '16815755000184', '3381472320065', 'GERALDO SIMEAO', 'AV. JOVE SOARES', '572', 'CENTRO', 'ITAUNA', 'MG', '35680-352', '37', '32412468', 'simeaogeraldo@gmail.com', 'GERALDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'MG375', 'SE', '19156074000140', '3622191390057', 'ELETRON CARNEIRINHOS LTDA', 'R. DO ANDRADE', '23', 'CARNEIRINHOS', 'JOAO MONLEVADE', 'MG', '35930-196', '31', '38512909', 'eletronicarneirinhos@veloxmail.com.br', 'IVAI OSORIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'MG384', 'SE', '25865650000120', '4336244750075', 'DIGIVIDEO LTDA', 'R.JOAO PINHEIRO', '312', 'CENTRO', 'MONTES CLAROS', 'MG', '39400-093', '38', '32218925', 'digivideo@ymail.com', 'ROGERIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'MG478', 'SE', '41854696000109', '4398059350030', 'VIDEO CLINICA TELE INF', 'R.DR LIDIO BANDEIRA DE MELO', '600 LJ1', 'CENTRO', 'MURIAE', 'MG', '36880-000', '32', '37224334', 'videoclinica@videoclinica.com.br', 'JOSE -MARCIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'MG483', 'SE', '64345853000148', '7136923140063', 'LUIZ ALBERTO PINHEIRO', 'R DR MILTON BANDEIRA', '355', 'CENTRO', 'VICOSA', 'MG', '36570-000', '31', '38918000', 'teletronica0@yahoo.com.br', 'LUIZ', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'MG486', 'SE', '21306816000118', '7012873920077', 'ELETRON  COLORSOM LTDA', ' AV GUILHERME FERREIRA', '1219', 'SAO BENEDITO', 'UBERABA', 'MG', '38022-200', '34', '33332520', 'colorsom@terra.com.br', 'SERGIO ROBERTO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'MG507', 'SE', '1737794000133', '7023445280062', 'UBERSERVICE ASS TECN LTD', 'AV. FLORIANO PEIXOTO', '3240', 'CENTRO', 'UBERLANDIA', 'MG', '38406-052', '34', '32123636', 'uberservice@netsite.com.br', 'CLAUDIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'MG601', 'SE', '19746833000124', '622060910063', 'SERVICENTER ELETRONICA LT', 'AV. DO CONTORNO', '4168', 'SAO LUCAS', 'BELO HORIZONTE', 'MG', '30110-022', '31', '32254066', 'servicenter@terra.com.br', 'PEDRO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'MG603', 'SE', '25560301000109', '6995890210014', 'PHILIALL ELETRONICA LTDA ME', 'RUA VIRGINIA BRANDAO', '150', 'SANTA LUZIA', 'UBA', 'MG', '36500-000', '32', '35323626', 'philiall@veloxmail.com.br', 'WANDERLEY', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'MG608', 'SE', '1714812000161', '1863428750082', 'SMART TELE ELETRONICA LTDA', 'AV. JOSE FARIA DA ROCHA', '3274', 'ELDORADO', 'CONTAGEM', 'MG', '32310-210', '31', '33912994', 'smarttele@veloxmail.com.br', 'TADEU', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'MG622', 'SE', '86469905000120', '4318808970039', 'CARDOSO ELETRONICA LTDA', 'AV.OLEGARIO MACIEL', '113', 'CENTRO', 'MONTE CARMELO', 'MG', '38500-000', '34', '38422082', 'assistenciamg@yahoo.com.br  rejane_atmg@yahoo.com.br', 'SANDIM', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'MG623', 'SE', '3132960000101', '4800717570082', 'TECPATOS ELETRONICA LTDA - ME', 'R MATA DOS FERNANDES', '87', 'VILA GARCIA', 'PATOS DE MINAS', 'MG', '38700-122', '34', '38222588', 'tecpatos@acipatos.org.br', 'ADILSON CESAR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'MG627', 'SE', '22142947000170', '5215010370061', 'PAULO PINHEIRO GOMES & CI', 'AV. CUSTODIO SILVA', '1402 -1408', 'PALMEIRAS', 'PONTE NOVA', 'MG', '35430-026', '31', '38172486', 'pservice@uai.com.br', 'VONILSON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'MG632', 'SE', '5980749000166', '6252725770033', 'ELETRONICA FOTORAMA SOM L', 'RUA QUINTINO BOCAIUVA', '262', 'CENTRO', 'SAO JOAO DEL REI', 'MG', '36307-302', '32', '33718306', 'eletfotorama@yahoo.com.br', 'NATALIE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'MG633', 'SE', '6033653000153', '6862698870078', 'ELETRONICA A TELEVIDEO', 'RUA DOUTOR MANOEL ESTEVES', '185', 'CENTRO', 'TEOFILO OTONI', 'MG', '39800-090', '33', '35225831', 'televideo@click21.com.br', 'Celso', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'MG635', 'SE', '25917790000103', '6728135680008', 'WILIAM ALVES DO ALTISSIMO', 'AV. ANTONIO OLINTO', '1032', 'CENTRO', 'SETE LAGOAS', 'MG', '35700-002', '31', '37718570', 'eplantao@uai.com.br', 'WILIAM', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'MG637', 'SE', '1761982000105', '2367076930047', 'ELOYTEL LTDA', 'RUA TRES PONTAS', '36', 'CENTRO', 'ELOI MENDES', 'MG', '37110000', '35', '32641245', 'eloitel@eloinet.com.br', 'ANTONIO JOSE  - REGINA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'MG638', 'SE', '1571083000131', '3823298700085', 'EVANDRO ZACARONI PEDROSO', 'RUA CHAGAS DORIA', '114 - LOJA A', 'CENTRO', 'LAVRAS', 'MG', '37200000', '35', '38210550', 'wanger@vialavras.com.br', 'EVANDRO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'MG937', 'SE', '2766215000143', '359861680025', 'VIDEO SOM LTDA', 'RUA MARCIANO SANTOS', '703', 'CENTRO', 'ARAGUARI', 'MG', '38440128', '34', '32416026', 'video_som@com4.com.br  videogosom@uol.com.br', 'dimitri', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'MG943', 'SE', '6336318000124', '3943009450074', 'ELETRONICA E INFORMATICA DIGITEC LT', 'RUA ANTONIO WELERSON 629', 'LOJA D', 'SANTO ANTONIO', 'MANHUACU', 'MG', '36900000', '33', '33314735', 'digitecm@uai.com.br', 'EDSON AMBROSIO DA CRUZ', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'MG944', 'SE', '8.058.888 -0001-25', '001013016.00-08', 'ROCHA ASSIST TECNICA ELETRONICA LTDA', 'RUA BELO HORIZONTE  314', NULL, 'CENTRO', 'GOVERNADOR VALADARES', 'MG', '35010-050', '33', '32716040', 'revisaoeletronica@gmail.com', 'CELSO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'MG945', 'SE', '9244498000102', '10548560099', 'ELETRONICA  INF UNIVERSO LTDA', 'R ASSIS FIGUEIREDO', '1982 LJ 01', 'CENTRO', 'POCOS DE CALDAS', 'MG', '37701-000', '35', '3722-4618', 'eletronica.universo@yahoo.com.br', 'Rubens -Aline', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'MG946', 'SE', '41.851.858 -0001-47 ', '001018589.00-16', 'ZACARONI E BOTEGA LTDA', 'AV RUI BARBOSA', '340', 'CENTRO', 'VARGINHA', 'MG', '3002140', '35', '32216827', 'evandro@wanger.com.br', 'EVANDRO ZACARONI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'MS340', 'CO', '2951539000151', '283065168', 'TV TECNICA SAO PAULO - ME', 'R. JOAQUIM TEIXEIRA ALVES', '2080', 'CENTRO', 'DOURADOS', 'MS', '79801-016', '67', '34217117', 'tvtecsp@dn2.com.br', 'JOAO DA SILVA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'MS341', 'CO', '1263021000162', '282956115', 'ELETR MONTE LIBANO LTDA', 'RUA DA LIBERDADE', '1054', 'MONTE LIBANO', 'CAMPO GRANDE', 'MS', '79004-150', '67', '33831540', 'eltm.lib@terra.com.br lcdplasma.eltm@terra.com.br', 'NILIO  - ROSEMARY - ANA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'MT307', 'CO', '78622339000117', '130431257', 'ISAIR LUIZ GIACOMIN-ME', 'AV. RIO GRANDE DO SUL', '941-S', 'CENTRO', 'LUCAS DO RIO VERDE', 'MT', '78455-000', '65', '35491333', 'tvsom@terra.com.br isair@arinosnet.com.br', 'ISAIR LUIZ GIAC. -IVANES', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'MT310', 'CO', '941393000138', '130189006', 'D S  RIBEIRO & CIA LTDA', 'AV.JOAO PONCE DE ARRUDA', '1945', 'CENTRO', 'RONDONOPOLIS', 'MT', '78700310', '66', '34233888', 'estoque@nvtempo.com.br  deimar001@terra.com.br', 'DEIMAR  - ANGELICA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'MT346', 'CO', '3985949000186', '131961420', 'ELETRON  DOIS IRMAOS LTDA', 'RUA WALDIR RABELO', '929', 'CENTRO', 'BARRA DO GARCAS', 'MT', '78600-000', '66', '34011394', 'tvcorcenter@terra.com.br', 'LIDIA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'MT347', 'CO', '2879267000126', '131851675', 'JASSNIKER FERRI&FERRI LT', 'AV.MARGINAL S -N', NULL, 'ARAES', 'CUIABA', 'MT', '78005-620', '65', '33176464', 'EPAULISTA.SERVICE@TERRA.COM.BR ', 'ANGELO JUNIOR - Paula', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'MT349', 'CO', '3230851000119', '130514349', 'COSTA & ALVES LTDA - ME', 'AV. COUTO MAGALHAES', '1389', 'CENTRO', 'VARZEA GRANDE', 'MT', '78110400', '65', '36826502', 'eletronicaalfa@terra.com.br', 'HELIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'PA125', 'NE', '#N -DISP', '#N -DISP', 'R PAULO S BITTENCOURT ME ', 'AV ANTONIO MAIA', '1754', 'CENTRO', 'MARABÁ', 'PA', '#N -DISP', '94', '3222-8358', '#N -DISP', 'FABIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'PA308', 'NO', '34692541000140', '151363234', 'CLAUDIO DA S  WATANABE', 'R. JOAO PESSOA', '2470', 'CENTRO', 'CAPANEMA', 'PA', '68700-030', '91', '34621100', 'watanabe@chekup.com.br', 'CLAUDIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'PA319', 'NO', '4220869000100', '150992335', 'J  RIBAMAR DE SOUZA', 'R. TRINTA E UM DE MARCO', '119', 'CENTRO', 'PARAGOMINAS', 'PA', '68625-170', '91', '30110778', 'ronaldyrok@bol.com.br', 'JOSE RIBAMAR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'PA604', 'NO', '83583112000140', '15100841891', 'L  C  DA SILVA COMP ELETR', 'AV. MENDONCA FURTADO', '1730  LJ-5', 'CENTRO', 'SANTAREM', 'PA', '68040-050', '93', '35235322', 'tropical@netsan.com.br', 'JOAO PEREIRA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'PA605', 'NO', '63849590000141', '151619263', 'GREEN ASSISTENCIA TECNICA LTDA - ME', 'TRAVESSA 14 DE MARCO', '912', 'UMARIZAL', 'BELEM', 'PA', '66055490', '91', '32421090', 'greeneletronica@yahoo.com.br', 'ALINE - JOSE  - PAULO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'PA606', 'NO', '83385195000162', '151726663', 'TETSUO SASAKI ME', 'RUA DA PROVIDENCIA', '59  A', 'COQUEIRO', 'ANANINDEUA', 'PA', '67110440', '91', '32354831', 'ELSASAKI@AMAZON.COM.BR', 'TETSUO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'PA608', 'NO', '4718770000125', '290270596', 'R S ALMEIDA LTDA ME', 'AV SENADOR LEMOS', '1802', 'TELEGRAFO SEM FIO', 'BELEM', 'PA', '66113-000', '91', '32542424', 'ELETROUNIVERSAL@BOL.COM.BR', 'RAIMUNDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'PA610', 'NO', '9053915000130', '152647392', 'PAULO DAVID BISPO PEIXOTO', 'AV DO COMERCIO', '118A', 'RIO VERDE', 'PARAUAPEBAS', 'PA', '6851500', '94', '33561756', 'eletronicapaulistapbs@hotmail.com', 'Paulo', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'PA611', 'NO', '9615580000104', '152740546', 'JOSIMAR NASCIMENTO PEREIRA', 'AL QUATORZE  QD. 30', ' 12  PROX. COC', 'COHAB', 'TUCURUI', 'PA', '68456110', '94', '37788795', 'VIRTUALELETRONICA@YAHOO.COM.BR', 'JOSIMAR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'PA612', 'NO', '4436356000123', '15249033-7', 'OSMAR P LEITE - ME', 'R MANOEL UMBUZEIRO', '2040', 'CENTRO', 'ALTAMIRA', 'PA', '68371-180', '93', '35154349', 'eletronicaopcao@msn.com', 'OSMAR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'PAE032', 'SUL', '92578780000170', '870062050', 'GILMAR TRESPACH', 'RUA MACHADO DE ASSIS 240', 'SALA 02', 'CENTRO', 'OSORIO', 'RS', '95520-000', '51', '36632524', 'gtres@zaz.com.br', 'ALCEMAR DA SILVA GUEDES', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'PB302', 'NE', '9261405000158', '160282829', 'ELETR  SOM & IMAGEM LTDA', 'R CAVALCANTE BELO', '117', 'CENTRO', 'CAMPINA GRANDE', 'PB', '58100-230', '83', '33212128', 'someimagem@uol.com.br', 'MARCONI RICARDO SILVA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'PB316', 'NE', '288601000141', '161094635', 'ELETRONICA ENTERPRISE LTDA', 'R MANOEL ARRUDA CAVALCANTE  458', 'LOJA 101', 'MANAIRA', 'JOAO PESSOA', 'PB', '58038-680', '83', '32469689', 'eletronicaenterpriseltda@gmail.com', 'JOAO MACHADO DA SILVA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'PB319', 'NE', '428859000104', '160804116', 'TECNO VIDEO ELETRONICA LT', 'R WILDES SARAIVA GOMES', '20', 'CENTRO', 'GUARABIRA', 'PB', '58200-000', '83', '32711159', 'tecno-video@voax.com.br', 'EDNALDO DE LIMA RODRIGUES', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'PE319', 'NE', '10904464000186', '12102113', 'ELETROTECNICA PAULISTA L', 'AVENIDA MARECHAL FLORIANO PEIXOTO', '17 C', 'CENTRO', 'PAULISTA', 'PE', '53401-460', '81', '34331142', 'eletrotecnicapaulista@bol.com.br', 'MOACIR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'PE331', 'NE', '3270939000164', '18321002609740', 'JDR COM DE MAT ELETR LTDA', 'RUA ENOCK INACIO DE OLIVEIRA', '933', 'NSRA DA PENHA', 'SERRA TALHADA', 'PE', '56912-225', '87', '38311401', 'eletronica.cardoso@terra.com.br', 'JOSE A CARDOUZO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'PE364', 'NE', '69888303000199', '18483101960041', 'm', 'AV. BELMIRO CORREIA', '2255', 'NOVO DO CARMELO', 'CAMARAGIBE', 'PE', '54765-000', '81', '34581246', 'tecnvideo@terra.com.br  atendimento@tecnviceo.com', 'JOSE LOURENCO -LUCIENE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'PE614', 'NE', '2114229000182', '18309002415615', 'MUNDIVIDEO ELETR LTDA-ME', 'RUA CORONEL LIMEIRA', '215', 'CENTRO', 'CARUARU', 'PE', '55002-350', '81', '37220235', 'mundivideo@supranet.com.br', 'JOSE RIBEIRO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'PE616', 'NE', '2397168000108', '18100102470573', 'IMAGEM E SOM SERV TEC COM', 'AV. ANTONIO DE GOIS', '340 LOJA 1', 'PINA', 'RECIFE', 'PE', '51010-000', '81', '34656042', 'IMAGEMSOM@HOTMAIL.COM  imagemesom340@gmail.com', 'GUTEMBERG', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'PE617', 'NE', '6228469000169', '18312003116705', 'R  VILELA PEREIRA', 'R MAURICIO DE NASSAU', '117', 'SANTO ANTONIO', 'GARANHUNS', 'PE', '55293-100', '87', '37610085', 'RSELETRONICA2008@HOTMAIL.COM', 'ROBYNSON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'PE620', 'NE', '8742286000192', '18300103492354', 'L.S DE LIRA ELETRONICA', 'AV CAXANGA', '1314', 'MADALENA', 'RECIFE', 'PE', '50711000', '81', '32286123', 'adm@digitalcenter.srv.br', 'LEONARDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'PE621', 'NE', '11451085000140', '0066451-00', 'MONTERRRAZO COMERCIO E SERVICOS LTDA', 'R 10 DE JANEIRO', '47', 'CENTRO', 'SAO LOURENCO DA MATA', 'PE', '54735-230', '81', '35253369', 'monterrazo@hotmail.com', 'JOSE -EDUARDO -MARIA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'PE623', 'NE', '0', '0', 'TECNOVIDEO', 'A', '1', 'A', 'RECIFE', 'PE', '0', '81', '1', '0', 'A', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'PI306', 'NE', '6871719000184', '194017664', 'JOAO ALENCAR MARANHAO', 'AV JOAQUIM RIBEIRO', '1188', 'VERMELHA', 'TERESINA', 'PI', '64019-025', '86', '32230825', 'ocorisco@yahoo.com.br', 'JOAO MARANHAO - ALINE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'PI313', 'NE', '3055851000120', '194433315', 'ELET E SERV PARNAIBA LTDA', 'AV PINHEIRO MACHADO', '1358', 'BOA ESPERANCA', 'PARNAIBA', 'PI', '64215-890', '86', '33222877', 'oficinaee@sertepa.com.br', 'EDIVAL', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'PI314', 'NE', '63349641000176', '19.419.547-3', 'FRANCISCO DAS CHAGAS COSTA ELETR  ME', 'AV. JOSE DOS SANTOS E SILVA', '1481    SUL', 'CENTRO', 'TERESINA', 'PI', '64001-300', '86', '32214618', 'audiovideo.eletronica@hotmail.com', 'FRANCISCO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'PI316', 'NE', '#N -DISP', '#N -DISP', 'FRANCISCO JOAQUIM DE MOURA - ME', 'AV ANISIO DA LUZ', '238   TERREO', 'IPUEIRA', 'PICOS', 'PI', '#N -DISP', '89', '34222643', '#N -DISP', 'ANA  - ESTELINA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'PR102', 'SUL', '78144920000170', '2170032619', 'LEONORA PADILHA ABILIO', 'R.EXPEDICIONARIO JOSE LIMA', '333', 'CENTRO', 'IRATI', 'PR', '84500-000', '42', '34221337', 'abilio@irati.com.br ', 'JOSE ABILIO - MARIA HELEN', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'PR319', 'SUL', '77881845000168', '4100605908', 'ELETRONICA CORAL LTDA', 'R. PARANA', '3168', 'CENTRO', 'CASCAVEL', 'PR', '85801-000', '45', '32254005', 'tvcoral@joiadolar.com.br        ', 'SAMUEL DAMASIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'PR321', 'SUL', '76129220000181', '8330247607', 'ASSIST  TECNICA TV LAR', 'AV. BRASIL', '523', 'CENTRO', 'CIANORTE', 'PR', '87200-000', '44', '36292842', 'tvlar@brturbo.com.br', 'BENIGNO DE JESUS M.', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'PR360', 'SUL', '79118253000114', '7010253262', 'K  OSATO & CIA LTDA', 'R. JOUBERT DE CARVALHO', '394', 'CENTRO', 'MARINGA', 'PR', '87013-200', '44', '32264620', 'osato@wnet.com.br', 'CARLOS K.OSATO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'PR374', 'SUL', '75479568000136', '7300239794', 'COMERCIO DE ANTENAS UNIAO', 'AV. PARANA', '246', 'CENTRO', 'PARANAVAI', 'PR', '87704-100', '44', '34234711', 'tvtecnicaolinda@brturbo.com.br', 'BRAULIO CAMINATTI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'PR375', 'SUL', '79860318000100', '3160072449', 'COM  IND  RAD  ELETR  SUDOESTE LTDA', 'R. IGUACU', '498', 'CENTRO', 'PATO BRANCO', 'PR', '85501-270', '46', '32242786', 'RADELSUL@WDN.PSI.BR    RADELSUL@WLN.PSI.BR', 'MARCOS MACAGNAN', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'PR393', 'SUL', '82034729000143', '5130214454', 'BENTO CARDOSO MONTEIRO', 'R.RUI BARBOSA', '846 -CX.P.66', 'CENTRO', 'SANTO ANTONIO DA PLATINA', 'PR', '86430-000', '43', '35341809', 'monteirovaldivieso@gmail.com', 'BENTO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'PR422', 'SUL', '81122905000136', '4220788860', 'ELETRONICA D BARROS LTDA', 'R. QUINTINO BOCAIUVA', '1313', 'CENTRO', 'FOZ DO IGUACU', 'PR', '85851-130', '45', '35234115', 'garantia@videofoz.com.br', 'DORIVAL D.P.BARROS -AIDE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'PR602', 'SUL', '75604991000110', '2010925404', 'SERVICE MASTER ELETRONICA', 'R CEL. DULCIDIO', '1604', 'CENTRO', 'PONTA GROSSA', 'PR', '84010-380', '42', '30275061', 'servicemaster.eletronica@gmail.com ', 'ZILDA - 3027 5061', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'PR608', 'SUL', '81050866000109', '4180445353', 'ELETRONICA IMPERIAL LTDA', 'RUA BARAO DO RIO BRANCO', '1878', 'CENTRO', 'TOLEDO', 'PR', '85900-000', '45', '32522471', 'eletronicaimperial@hotmail.com', 'MARIANO GROMONSKI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'PR620', 'SUL', '79569471000175', '1010570626', 'EXCLUSIVA COM  EQUIP LTDA', 'RUA PREFEITO OMAR SABBAG', '281', 'JD.BOTANICO', 'CURITIBA', 'PR', '80210-000', '41', '32648791', 'assistec@exclusiva.etc.br', 'JOSE CARLOS  - CONCEIC?O', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'PR627', 'SUL', '80861594000164', '1260007668', 'BERNHARD SCHUMACHER', 'AV. GAL PLINIO TOURINHO', '2045', 'BOM JESUS', 'RIO NEGRO', 'PR', '83880-000', '47', '36450251', 'eletronicaschumacher@netuno.com.br', 'CRISTINA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'PR629', 'SUL', '138572000131', '9029213973', 'ALFREDO PROKOP & CIA LTDA', 'ROD. PR 82  ', 'S -N KM 5', 'CENTRO', 'DOURADINA', 'PR', '87485-000', '44', '36631414', 'alfredo.p@brturbo.com.br      josianedigital@brturbo.com.br  ', 'ALFREDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'PR633', 'SUL', '7278839000135', '9033270655', 'CENTRO ELETRONICO SAO PAULO', 'RUA DR CAMARGO', '4364 - A', 'CENTRO', 'UMUARAMA', 'PR', '87501378', '44', '30561485', 'eletronica_sao_paulo@yahoo.com.br', 'SERGIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'PR637', 'SUL', '78714698000102', '62803496-64', 'LEOMAU-COMERCIO DE MATERIAIS ELETRONICOS LTDA', 'R CONDOR', '1423 - SALA 01', 'CENTRO', 'ARAPONGAS', 'PR', '86701-010', '43', '32521606', 'leommau@uol.com.br', 'LUCINEIA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'PR639', 'SUL', '10756793000127', '90476343-82', 'ELETRONICA VALTECH LTDA', 'RUA BELO HORIZONTE 177', '177', 'CENTRO', 'LONDRINA', 'PR', '86026030', '43', '33210077', 'valtech@sercomtel.com.br', 'DAVID', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'PR640', 'SUL', '#N -DISP', '#N -DISP', 'N.K.S. CELULARES LTDA.', 'R XV DE NOVEMBRO', '550', 'CENTRO HISTORICO', 'PARANAGUA', 'PR', '#N -DISP', '41', '3423-5914', '#N -DISP', 'NILTON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'RJ306', 'SE', '36524247000154', '84473693', 'TECNOBEL EQUIP  ELETR', 'ETR DR PLINIO CASADO', '4698 loja A', 'CENTRO', 'BELFORD ROXO', 'RJ', '26130-621', '21', '27795797', 'tecnobel10@bol.com.br  tecnobel@superig.com.br', 'ROBSON -IARA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'RJ307', 'SE', '29112497000111', '81118353', 'ELETR FASSBENDER LTDA', 'R VR JOAO RODRIGUES CARMO', '15', 'BAIRRO NOVO', 'BOM JESUS DO ITABAPOANA', 'RJ', '28360-000', '22', '38312216', 'fassbender@uol.com.br ', 'NELSON  - AMELIA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'RJ311', 'SE', '29633823000136', '81012105', 'ELETR LUCIAN LTDA', 'AV 15 DE NOVEMBRO', '31 LJ E 1.AND.', 'CENTRO', 'CAMPOS DOS GOYTACAZES', 'RJ', '28035-100', '22', '27221499', 'lucianvendas@hotmail.com', 'ANTONIO  - SAMUEL', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'RJ314', 'SE', '29383007000111', '80196261', 'A A CONS  DE APAR  ELETR', 'AV. DUQUE DE CAXIAS', '86', 'CENTRO', 'DUQUE DE CAXIAS', 'RJ', '25070-070', '21', '27711508', 'ricardo@teleservico.com.br  telma@teleservico.com.br  teleservico@teleservico.com.br', 'ANTONIO  - TELMA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'RJ320', 'SE', '19491315000107', '3672198370094', 'ELETRONICA TECNICOLOR LTD', 'R. MAL. DEODORO', '162 LOJA 1', 'CENTRO', 'JUIZ DE FORA', 'MG', '36013-000', '32', '32151514', 'tecnicolor@veloxmail.com.br', 'ANTONIO MARTINS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'RJ328', 'SE', '29539673000104', '80841760', 'LATTANZI E STUTZ EL  LTDA', 'R. DANTE LAGINESTRA', '63', 'CENTRO', 'NOVA FRIBURGO', 'RJ', '28610-000', '22', '25227692', 'lattanzi@netflash.com.br', 'EDUARDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'RJ374', 'SE', '86753258000184', '85206001', 'ELETROTUDO COM ASS TEC ME', 'ESTR DOS BANDEIRANTES', '1393 POSTO BR', 'JACAREPAGUA', 'RIO DE JANEIRO', 'RJ', '22710571', '21', '24264702', 'eletrotudo@ig.com.br ', 'ALESSANDRA  - TATIANA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'RJ603', 'SE', '36071009000130', '83918551', 'ELETR  RODRIGUES E FELIX', 'R. SAO LUIZ GONZAGA', '445', 'SAO CRISTOVAO', 'RIO DE JANEIRO', 'RJ', '20910-061', '21', '25892030', 'eletronicars@uol.com.br ', 'Roberto - Anderson', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'RJ604', 'SE', '27913458000198', '82443185', 'INTER RIO ELETRONICA LTDA', 'R.VISCONDE URUGUAI', ' 170 LJ.3 -4 -5', 'CENTRO', 'NITEROI', 'RJ', '24030-081', '21', '26220157', 'inter.rio@gmail.com ', 'MAURICIO -Hercules', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'RJ605', 'SE', '42567271000173', '81412669', 'PAULO PIRES ELETRONICA', 'AVENIDA MEM DE SA', '214', 'CENTRO', 'RIO DE JANEIRO', 'RJ', '20230152', '021', '25096851', 'jaday@uol.com.br / Jadayeletronica@gmail.com', 'MARCO ANTONIO', 'PAULO', '', '', 1, '0000-00-00 00:00:00', '2012-12-17 15:12:30'),
(168, 'RJ611', 'SE', '4688035000116', '77249443', 'ELETR  JM3939 COM  E ASS', 'AV DAS AMERICAS', '3939 BLOCO 01 LJ H', 'BARRA DA TIJUCA', 'RIO DE JANEIRO', 'RJ', '22631-002', '21', '24315759', 'eletronicajm@ig.com.br ', 'JORGE MANOE  - ALESSANDRA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'RJ624', 'SE', '3368498000138', '75981546', 'C V DE ARAUJO NOGUEIRA ME', 'RUA LEONOR DE AZEVEDO SANTA ROSA 155', 'QD F LT 30', 'JD. FLAMBOYANT', 'CABO FRIO', 'RJ', '28910-340', '22', '26451819', 'victornogueira@uol.com.br ', 'VITOR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'RJ628', 'SE', '35935535000139', '83940433', 'MAGISTRAL ELETRONICA RESENDE AUDIO & VIDEO LTDA', 'RUA VILA ADELAIDE', '335', 'JD BRASILIA I', 'RESENDE', 'RJ', '27514100', '24', '33550101', 'magistral.eletronica@terra.com.br ', 'JOSE CARLOS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'RJ630', 'SE', '4965579000188', '77908650', 'JMJG ELETRONICA TELECOMUNICACAO LTDA ME', 'RUA NITEROI', '  S -N LOTE QD B', 'COLUBANDE', 'SAO GONCALO', 'RJ', '24451780', '21', '27013214', 'jmjg.eletro@ig.com.br ', 'JOSUE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'RJ630002', 'SE', '4965579000340', '78108681', 'JMJG ELETRONICA TELEC. LTDA', 'RUA PIO XII', '381', 'FIGUEIRA', 'MAGE', 'RJ', '25900000', '21', '26333342', 'js3.eletro@yahoo.com.br ', 'JOSUE  - FRANCISCO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'RJ635', 'SE', '1685669000127', '86012057', 'WASHINGTON LUIS DA SILVA ELETRONICA ME', 'RUA JOSE ALVES PIMENTA', '1710', 'MATADOURO', 'BARRA DO PIRAI', 'RJ', '27115010', '24', '24437745', 'wleletronica08@uol.com.br', 'WASHINGTON-(024)9903.5879', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'RJ641', 'SE', '2623638000104', '75733682', 'E&M SOM DE ITAGUAI LTDA ME', 'RUA PROTOGENES GUIMARAES', '22', 'CENTRO', 'ITAGUAI', 'RJ', '23810-740', '21', '26886491', 'secretaria.emsom@gmail.com  emsom@dorio.com.br', 'EDUARDO  - MARCIA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'RJ645', 'SE', '9534822000127', '78510242', 'GOLD NARVIK COMERCIO E SERVICOS ELETRONICOS LTDA', 'R MARCO POLO', '58 - LOJA A', 'VILA DA PENHA', 'RIO DE JANEIRO', 'RJ', '21221-400', '21', '33810711', 'gold.narvik.eletronica@gmail.com', 'IZABEL - 4105-8056', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'RJ646', 'SE', '31527633000186', '83299517', 'ELETRONICA VALPARAISO LTDA ME', 'RUA WASHINGTON LUIZ', '85', 'CENTRO', 'PETROPOLIS', 'RJ', '25655-005', '24', '22454997', 'eletroval@eletroval.com.br  pkl@superig.com.br', 'PAULO KLIPEL 024 31112037', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `workshops` (`id`, `codigo`, `consultor`, `cnpj`, `ie`, `razaosocial`, `rua`, `complemento`, `bairro`, `cidade`, `uf`, `cep`, `ddd`, `telefone`, `email`, `responsavel`, `proprietario`, `tecnico`, `skype`, `status`, `created`, `modified`) VALUES
(177, 'RJ647', 'SE', '12.068.900 -0001-50 ', '79084956', 'MICROVIDEO SERVICE LTDA ME', 'R MAJ. DOMING. S. FIGUEIREDO', '45', 'CIDADE NOVA', 'ITAPERUNA', 'RJ', '3302205', '22', '3823-6825', 'douglas.microvideo@uol.com.br', 'DOUGLAS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'RJ650', 'SE', '#N -DISP', '#N -DISP', 'ELIANA GOMES REPARACAO DE ELETRODOMESTICOS -ME', 'R JOSE MOREIRA DA ROCHA', '203 E 205', 'RETIRO', 'VOLTA REDONDA', 'RJ', '#N -DISP', '24', '3355-0101', '#N -DISP', 'MAURICIO  -  ERICA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'RN310', 'NE', '8245474000105', '200682806', 'LAFAIETE FERNANDES SOUZA', 'R. PEDRO II', '160', 'CENTRO', 'PAU DOS FERROS', 'RN', '59900-000', '84', '3351.2334', 'ideal@brisanet.com.br', 'ROBERTO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'RN314', 'NE', '70145743000135', '200412620', 'SILVIA MARIA DE ANDRADE', 'RUA JORNALISTA DJAIR DANTAS PEREIRA DE MACEDO', '1370', 'LAGOA SECA', 'NATAL', 'RN', '59022-370', '84', '32132345', 'pseletro@natal.digi.com.br', 'Silvia Maria de Andrade', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'RN605', 'NE', '#N -DISP', '#N -DISP', 'IVAN NUNES DE CASTRO', 'AV PRESIDENTE DUTRA', '109  CONJ LIBERDADE 2', 'CENTRO', 'MOSSORO', 'RN', '#N -DISP', '84', '33164448', '#N -DISP', 'IVAN', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'RO335', 'NO', '2083126000100', '513547', 'ELETRONICA PANAMERICA LTD', 'RUA RUI BARBOSA', '1260', 'CENTRO', 'CACOAL', 'RO', '76963-880', '69', '34431415', 'eletronicapanamerica@gmail.com', 'ADENILDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'RO342', 'NO', '3701678000190', '542172', 'DUARTE E CRUZ COMERCIO E SERVICO LTDA', 'AV: JATUARANA', '3850', 'NOVA FLORESTA', 'PORTO VELHO', 'RO', '78913180', '69', '32273377', 'rondotec@brturbo.com.br', 'Pedro', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'RR301', 'NO', '5959242000120', '240010300', 'H VAN DEN BERG FILHO', 'Av. Gal Ataide Teive', '1680', 'Liberdade', 'BOA VISTA', 'RR', '69309-000', '95', '32249605', 'denberg@oi.com.br', 'HONORIO VAN DEN BERG FO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'RS147', 'SUL', '87199394000137', '1550018199', 'ASTOR M  MAHL', 'RUA GAL. OSORIO', '1368', 'CENTRO', 'VENANCIO AIRES', 'RS', '95800-000', '51', '37411443', 'astorm@brturbo.com.br', 'VERA -ASTOR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'RS345', 'SUL', '89431209000113', '390021989', 'ELETRONICA ERECHIM LTDA', 'AV. 7 DE SETEMBRO', '55', 'CENTRO', 'ERECHIM', 'RS', '99700-000', '54', '33211933', 'eletronica@eletronicaerechim.com.br   vendas@eletronicaerechim.com.br', 'ADILSON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'RS366', 'SUL', '93064509000189', '650059468', 'ELETR  SPITZER LTDA', 'RUA CRISANTO LEITE', '203', 'CENTRO', 'IJUI', 'RS', '98700-000', '55', '33327766', 'somjordao@terra.com.br', 'JOAO CARLOS DA ROSA CRUZ', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'RS376', 'SUL', '90080532000179', '720032474', 'ELETRONICA ULSENHEIMER', 'RUA 25 DE JULHO', '597', 'FLORESTAL', 'LAJEADO', 'RS', '95900-000', '51', '37145155', 'ulsenheimer@bewnet.com.br ', 'MILTON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'RS390', 'SUL', '88960240000189', '091 -0065802', 'ELETR CANSIAN', 'RUA XV DE NOVEMBRO', '1170', 'CENTRO', 'PASSO FUNDO', 'RS', '99010-091', '54', '33111104', 'ecansian@brturbo.com.br', 'TELMO CANSIAN', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'RS391', 'SUL', '89629695000189', '930111540', 'DIONEY DUARTE FONSECA', 'R. GENERAL OSORIO', '921', 'CENTRO', 'PELOTAS', 'RS', '96020-000', '53', '32223633', 'eletronicaphonotape@terra.com.br ', 'DIONEY', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'RS446', 'SUL', '98518566000104', '1540001137', 'BONELLA & CIA LTDA', 'RUA PINHEIRO MACHADO', '162', 'CENTRO', 'VACARIA', 'RS', '95200-000', '54', '32311396', 'ebonella@uol.com.br', 'ROQUE LUIZ', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'RS515', 'SUL', '94275500000180', '780054903', 'REATIVA ELETRO ELETRONICO', 'RUA OLAVO BILAC', '1847', 'CENTRO', 'MONTENEGRO', 'RS', '95780000', '51', '36324187', 'reativaeletro@ibest.com.br  reativa@pop.com.br ', 'EDUARDO  - RICARDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'RS522', 'SUL', '91918722000185', '100039413', 'ELETRONICA MARINI LTDA-ME', 'AV. GAL CANDIDO COSTA', '184-LOJA 1', 'CENTRO', 'BENTO GONCALVES', 'RS', '95700-000', '54', '34526825', 'atmarini@terra.com.br', 'DANILO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'RS544', 'SUL', '3189740000106', '1090252304', 'RIZZI & SILVEIRA LTDA', 'AV NOSSA SENHORA MEDIANEIRA 785', 'SALA 02', 'MEDIANEIRA', 'SANTA MARIA', 'RS', '97060-003', '55', '30282235', 'rizzi@via-rs.net', 'LUIZ CARLOS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'RS601', 'SUL', '93655405000149', '962168599', 'DORNELLES PCS E SERV  EL', 'RUA CANCIO GOMES', '201', 'FLORESTA', 'PORTO ALEGRE', 'RS', '90220-060', '51', '32226941', 'padraors@cpovo.net', 'Juliano ou Pejes', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'RS605', 'SUL', '993919000123', '1000179580', 'LINDOLFO C  LECTZOW - ME', 'R. REPUBLICA DO LIBANO', '188', 'CENTRO', 'RIO GRANDE', 'RS', '96200-360', '53', '32323211', 'phonotape@vetorialnet.com.br', 'LINDOLFO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'RS606', 'SUL', '1568469000194', '1080105791', 'SILVINE M  KESSLER', 'RUA MARECHAL DEODORO', '554', 'CENTRO', 'SANTA CRUZ DO SUL', 'RS', '96810-110', '51', '37153048', 'mahl@viavale.com.br', 'Wanderley', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'RS609', 'SUL', '2160253000158', '860265145', 'PREIS SERVICE COM SERV LT', 'RUA BORGES DE MEDEIROS.', '111', 'RIO BRANCO', 'NOVO HAMBURGO', 'RS', '93310-280', '51', '35823191', 'preiserv@terra.com.br', 'ALBINO O. PREISSLER FILHO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'RS609002', 'SUL', '2160253000239', '962928771', 'PREIS SERVICE COM SERV LT', 'AV.GAL.EMILIO LUCIO ESTEVES', '78', 'STA MARIA GORETTI', 'PORTO ALEGRE', 'RS', '91030-290', '51', '33256653', 'preiserv@terra.com.br', 'ALBINO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'RS620', 'SUL', '2483553000178', '022 -0040168', 'LUIS GILBERTO DE CASTRO', 'AV. JULIO DE CASTILHOS', '24', 'CENTRO', 'CANELA', 'RS', '95680-000', '54', '32821551', 'jlcastro@brturbo.com.br ', 'CASTRO -JANETE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'RS624', 'SUL', '5412790000136', '80157270', 'ELETRONICA GOMES MOREL LT', 'AV.PRESIDENTE VARGAS', '651 SALA1', 'GETULIO VARGAS', 'BAGE', 'RS', '96412-660', '53', '32411295', 'lagmorel@gmail.com', 'LILIAN', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'RS630', 'SUL', '138139000104', '450039307', 'SILTEC ELETRONICA LTDA', 'R DR. JAIME ROSSLER 133', 'SL 2', 'BAIRRO PLANALTO', 'FARROUPILHA', 'RS', '95180-000', '54', '32683603', 'siltec@italnet.com.br  estoque.siltec@terra.com.br', 'JOAO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'RS635', 'SUL', '3345364000100', '290344271', 'ELETRONICA ELIAS LTDA', 'RUA VISCONDE DE PELOTAS', '1176', 'EXPOSICAO', 'CAXIAS DO SUL', 'RS', '95020183', '54', '32268020', 'elelias@terra.com.br  edson.eleelias@terra.com.br', 'ELIAS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'RS640', 'SUL', '2107221000199', '750036036', 'MARIA ZILMEIRE DA SILVA', 'R MEXICO 538', 'sl 01', 'LOTEAMENTO NOVA ALTERNATIVA', 'MARAU', 'RS', '99150000', '54', '33424571', 'eletronicafaganello@terra.com.br', 'MARIA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'RS641', 'SUL', '7573828000188', '570240743', 'SOUZA E MONDO ELETRONICA LTDA', 'AV DORIVAL CANDIDO LUZ DE OLIVEIRA', '489', 'CENTRO', 'GRAVATAI', 'RS', '94030001', '51', '30422830', 'cegrars@yahoo.com.br', 'FERNANDO -MARILUCIA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'RS643', 'SUL', '8361985000192', '490046525', 'VANIA GASPARIN & CIA LTDA', 'AV LUIZ MILANI', '368', 'CENTRO', 'FREDERICO WESTPHALEN', 'RS', '98400-000', '55', '37441850', ' eletronicagasparin@tcheturbo.com.br', 'NELCY', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'RS647', 'SUL', '10.656.390 -0001-06', '1100107328', 'RENATO VILMAR GRUBER ME', 'AV TUPARENDI', '674', 'CENTRO', 'SANTA ROSA', 'RS', '98900-000', '55', '35128982', 'global.eletronica@bol.com.br', 'RENATO -JANETE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'SAE080', 'NE', '0', '0', 'TV CIDADE ASSISTENCIA TEC DE TELEVISORES E VIDEO L', 'RUA CONS. PEDRO LUIZ', '377', 'RIO VERMELHO', 'SALVADOR', 'BA', '41950-610', '71', '33356233', 'tvcidade@atarde.com.br', 'CARLOS CUNHA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'SC149', 'SUL', '73847303000118', '252741684', 'MUNDIAL ELETRO-ELETRONICA LTDA - ME', 'AV 7 DE SETEMBRO 1490', 'SALA 01', 'CENTRO', 'ARARANGUA', 'SC', '88900000', '48', '35220304', 'jcmachado@eletronicamundial.com', 'JOSE CARLOS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'SC153', 'SUL', '78631603000189', '251131408', 'TV SOM CONS. DE APAR. ELTR. LTDA', 'RUA LAURO MILLER', '122', 'CENTRO', 'CONCORDIA', 'SC', '89700-000', '49', '34423704', 'tvsom@netcon.com.br  holde.mar@hotmail.com', 'ALINE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'SC188', 'SUL', '76562529000160', '250948095', 'ELETRONICA UNIVERSO', 'R PEDRO SIMOES OLIVEIRA', '265', 'CENTRO', 'RIO NEGRINHO', 'SC', '89295-000', '47', '36440979', 'elt.universo@gmail.com ', 'DIONIZIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'SC314', 'SUL', '82942988000172', '250126737', 'VALDIR MORONI LTDA', 'R. NEREU RAMOS', '253-D', 'CENTRO', 'CHAPECO', 'SC', '89801023', '49', '33221144', 'moroni@zipway.com.br', 'VALDIR MORONI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'SC320', 'SUL', '83949834000175', '250722593', 'TELECOLOR COM ELETR LTDA', 'RUA LAURO MULLER', '150', 'CENTRO', 'CURITIBANOS', 'SC', '89520-000', '49', '32410851', 'gui261@brturbo.com.br', 'WILSON CESAR VENTURELLA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'SC340', 'SUL', '82785585000167', '250124440', 'OFICINA ESTR  TELE COR', 'R. OTACILIO VIEIRA DA COSTA', '138', 'CENTRO', 'LAGES', 'SC', '88501-050', '49', '32244414', 'telecor.estoque1@gmail.com', 'JORGE BONDAVELLI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'SC358', 'SUL', '81030926000121', '251722473', 'TV MAR COMP ELETR  LTDA', 'R. XV de NOVEMBRO', '142 CX POSTAL 427', 'CENTRO', 'RIO DO SUL', 'SC', '89160-000', '47', '35211920', 'osmar.tvmar@gmail.com', 'OSMAR HEIRICH', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'SC365', 'SUL', '82825993000103', '250009382', 'DAGOSTIN E CIA LTDA', 'RUA DUQUE DE CAXIAS', '1413', 'CENTRO', 'SAO MIGUEL DO OESTE', 'SC', '89900-000', '49', '36220026', 'dagostincia@superig.com.br ', 'PAULO DAGOSTIN', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'SC420', 'SUL', '81863391000170', '252047303', 'CENTER PANAVISION ASS TEC', 'AV CENTENARIO', '3950 - SALA 2', 'CENTRO', 'CRICIUMA', 'SC', '88801-002', '48', '21015555', 'garantia@panavision.com.br  panavision@panavision.com.br', 'JUAREZ NUNES', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'SC604', 'SUL', '83642405000150', '250674033', 'ELETRONICA TEVETEC LTDA', 'AV. GETULIO VARGAS', '591', 'BUCAREIN', 'JOINVILLE', 'SC', '89202-505', '47', '34331146', 'konell.joi@terra.com.br', 'CARLOS ROBERTO KONELL', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'SC609', 'SUL', '2163819000103', '253581265', 'VIDEOSERVICE ELETRONICA L', 'R. DES.ARNO HOESCHEL', '67', 'CENTRO', 'FLORIANOPOLIS', 'SC', '88015-620', '48', '32049700', 'videoservice@videoservice.com.br', 'ALMIR GONCALVES DA ROSA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'SC620', 'SUL', '3371017000143', '253925789', 'ELETRONICA GRETEC LTDA ME', 'RUA JOAO JANUARIO AYROSO', 'Q10 SALA 02', 'JARAGUA ESQUERDO', 'JARAGUA DO SUL', 'SC', '89253-100', '47', '33722050', 'egretec@gmail.com ', 'JOSE CARLOS GREBOGE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'SC621', 'SUL', '3599518000181', '254015441', 'F TRAIANO ELETRONICA LTDA', 'R.DUQUE DE CAXIAS', '556', 'CENTRO', 'JOACABA', 'SC', '89600-000', '49', '35220418', 'ftraiano@brturbo.com.br', 'FERNANDO TRAIANO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'SC623', 'SUL', '1218584000139', '253275792', 'SERGIO COMPON  ELETRON', 'AV. EXP. JOSE PEDRO COELHO', '179 - SALA 01', 'CENTRO', 'TUBARAO', 'SC', '88704-000', '48', '36261651', 'sergioce@tro.matrix.com.br', 'SERGIO  - Luciana', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'SC624', 'SUL', '1741960000175', '253093953', 'INFORMATICA DIRSCHNABEL LTDA', 'RUA 12 DE SETEMBRO', '7', 'CENTRO', 'CANOINHAS', 'SC', '89460000', '47', '36223615', 'DIRSCHNABEL@DIRSCHNABEL.COM.BR  sac@dirschnabel.com.br', 'Jerry  - Giovani', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'SC627', 'SUL', '7141884000143', '254905218', 'MATIAS & PINTO LTDA ME', 'RUA OSVALDO CABRAL', '68', 'CENTRO', 'LAGUNA', 'SC', '88790000', '48', '36443153', 'setecme@msn.com ', 'ELISABETE  - DONITE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'SC630', 'SUL', '79817292000100', '251454304', 'RONEY PAULO BARTH', 'R.FREDERICO  AUGUSTO L. THIEME', '128', 'CENTRO', 'ITAJAI', 'SC', '88301-110', '47', '33444777', 'barth@matrix.com.br ', 'RONEY', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'SC633', 'SUL', '7717329000117', '255091893', 'GSM SILVA LTDA ME', 'RUA DOM HENRIQUE 22  SALA 01', '22 - SALA 1', 'VILA REAL', 'BALNEARIO CAMBORIU', 'SC', '88337155', '47', '33630706', 'gsmsilva@gsmsilva.com.br', 'Fernando', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'SC634', 'SUL', '7673491000180', '255090820', 'JM TELECOMUNICACOES LTDA ME', 'R. PAES LEME', '122', 'CENTRO', 'BRUSQUE', 'SC', '88350-160', '47', '33557518', 'WAPCOM@TERRA.COM.BR', 'MARCUS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'SC635', 'SUL', '85224376000132', '252395760', 'BLUTECNICA COM SERV REPRESENT LTDA ME', 'R ALMIRANTE BARROSO', '712', 'VILA NOVA', 'BLUMENAU', 'SC', '89035-400', '47', '33233907', 'blutecnica@terra.com.br', 'MAYCON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'SE310', 'NE', '32814956000113', '270792589', 'SPACE ELETRONICA LTDA', 'R IANA MONTEIRO DE CARVALHO', '143  - CASA A', 'CENTRO', 'ITABAIANA', 'SE', '49500-000', '79', '34313023', 'spaceeletronica@veloxmail.com.br', 'RAIMUNDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'SE312', 'NE', '6272481000170', '271097027', 'JMPA ELETR  INFORM  LTDA', 'AV. NESTOR SAMPAIO', '788', 'LUZIA', 'ARACAJU', 'SE', '49045-000', '79', '32176080', 'e-digital@ibest.com.br', 'MARCOS PAULO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'SP224', 'SE', '1447318000188', '492327370112', 'MCR ELETRONICA LTDA', 'AV DIOGO ANTONIO FEIJO', '560', 'JD DAS FLORES', 'OSASCO', 'SP', '06013-030', '11', '36837343', 'mcreletronica@uol.com.br', 'MITSUO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'SP304', 'SE', '43003888000129', '165053829115', 'ELETRONICA PHIMAR LTDA', 'RUA GONCALVES DIAS', '1093 - sala 2', 'VILA JONES', 'AMERICANA', 'SP', '13465-440', '19', '34062914', 'phimar@vivax.com.br', 'NIVALDO SANTA CHIARA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'SP305', 'SE', '47940101000106', '168009732', 'S V  DE TOLEDO & CIA LTDA', 'R. LUIZ LEITE', '113', 'CENTRO', 'AMPARO', 'SP', '13900-000', '19', '38072674', 'svdetoledo@bol.com.br', 'SERGIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'SP313', 'SE', '65902314000125', '194038062118', 'CONTELE ELET  INFOR  LTDA', 'R. SANTA CATARINA', '1283', 'CENTRO', 'AVARE', 'SP', '18700-005', '14', '37322142', 'contele@telekon.com.br telekon@telekon.com.br', 'LUIZ - Daely', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'SP316', 'SE', '47052410000140', '204025204119', 'PEDRO CAPOVILLA NETO ME', 'R. VINTE E OITO', '970', 'CENTRO', 'BARRETOS', 'SP', '14780-110', '17', '33222742', 'capovilla@barretos.com.br', 'PEDRO CAPOVILLA NETO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'SP345', 'SE', '44468809000118', '310041495111', 'JOSE LAURINDO SOBRINHO', 'AV HELIO PALERMO', '4592', 'VL STA M CARMO', 'FRANCA', 'SP', '14401-000', '16', '37223898', 'sp345@hotmail.com', 'JOSE LAURINDO SOBRINHO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'SP367', 'SE', '57899395000123', '379022620117', 'JESUS PEREIRA RAMOS-ME', 'R. THOMAZ FRAY', '20', 'CENTRO', 'ITAQUAQUECETUBA', 'SP', '08570-110', '11', '46404162', 'eletronicaitaqua@terra.com.br', 'JESUS PEREIRA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'SP369', 'SE', '53575742000101', '38703370891', 'AILTON COM PROD ELETR LTD', 'R SANTA CRUZ', '781', 'CENTRO', 'ITU', 'SP', '13300-000', '11', '40230188', 'elecon@terra.com.br', 'AILTON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'SP376', 'SE', '47602370000162', '401003406118', 'ASSITEC ASS  PCS  LTDA', 'RUA QUINTINO BOCAIUVA', '1115', 'CENTRO', 'JAU', 'SP', '17202-120', '14', '36222117', 'assitec.jau@terra.com.br', 'UILDE JOSE GAGLEAZZI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'SP378', 'SE', '53919064000157', '407007982117', 'LIVIO TAGLIACARNE JR -ME', 'R. ZACARIAS DE GOES', '193', 'CENTRO', 'JUNDIAI', 'SP', '13201800', '11', '39644284', 'ltagliacarne@itelefonica.com.br ', 'LIVIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'SP388', 'SE', '45915162000198', '441008598110', 'WILSON TARANTIN', 'AV. 7 DE SETEMBRO', '1435', 'CENTRO', 'MATAO', 'SP', '15990-000', '16', '33821046', 'sercompel@uol.com.br', 'WILSON TARANTIN', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'SP392', 'SE', '56621238000199', '455035750115', 'ADEL-TEC COM TEC EQUIP EL', 'AV. MOGI MIRIM', '1039', 'JARDIM ITACOLOMI', 'MOGI GUACU', 'SP', '13840-000', '19', '38181171', 'adeltec@uol.com.br', 'ALESSANDRA  - ELIAS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'SP412', 'SE', '59206821000121', '535130002117', 'TECNO SERVICE ELETR  LTDA', 'R MANUEL FERRAZ DE ARRUDA CAMPOS', '565 Loja 47', 'ALTO', 'PIRACICABA', 'SP', '13419-250', '19', '34340454', 'sp412@uol.com.br', 'ESMERALDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'SP423', 'SE', '60382546000186', '574112377110', 'ANTONIO DA GUIA COSTA REGISTRO - ME', 'RUA CHOICHI ONO', '107', 'VILA SAO FRANCISCO', 'REGISTRO', 'SP', '11900-000', '13', '38212324', 'eletronicaregistro@bol.com.br', 'ANTONIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'SP435', 'SE', '52181203000125', '636123442111', 'BRAZ R FERNANDES E CIA LT', 'AV PERY RONCHETTI', '20', 'CENTRO', 'SAO BERNARDO DO CAMPO', 'SP', '09771-001', '11', '41257000', 'sandra@eletronicabraz.com.br adriana@eletronicabraz.com.br', 'BRAZ -ADRIANA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'SP451', 'SE', '63903629000161', '112816260117', 'ELETRONICA RIGHTEC LTDA', 'R. DO MANIFESTO', '1403', 'IPIRANGA', 'SAO PAULO', 'SP', '04209-001', '11', '22156667', 'rightec@uol.com.br', 'JORGE UEMOTO FILHO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'SP469', 'SE', '49559354000160', '653014303118', 'ELETR  ZOOM LTDA', 'R PEDRO CONTI', '86', 'VL. IRENE', 'SAO ROQUE', 'SP', '18130-160', '11', '47125635', 'zoom@srnet.com.br', 'MARCIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'SP479', 'SE', '45374410000130', '680012960119', 'VALDECIR LUIZ GIBERTONI', 'R GAL. OSORIO', '391', 'CENTRO', 'TAQUARITINGA', 'SP', '15900-000', '16', '32524039', 'teleson.sp@itelefonica.com.br', 'NIVALDO REVERSI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'SP482', 'SE', '57459299000164', '697005851113', 'ELETRONICA PONTALTI LTDA', 'RUA CARIJOS', '36', 'CENTRO', 'TUPA', 'SP', '17601-010', '14', '34962596', 'pontalti@unisite.com.br', 'PAULO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'SP520', 'SE', '74535766000107', '438100130111', 'COM E  PONTUAL DE MARILIA', 'AV NELSON SPIELMANN', '297', 'PALMITAL', 'MARILIA', 'SP', '17509-053', '14', '34547437', 'eltrpontual@gmail.com.br', 'OSVALDO DIOJI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'SP526', 'SE', '29526000102', '419040776110', 'DOMINGUES & MATSUI LTDA', 'RUA MAESTRO CARLOS GOMES', '194', 'CENTRO', 'LINS', 'SP', '16400-155', '14', '35227283', 'eletronicagm@uol.com.br', 'GILMAR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'SP532', 'SE', '57819120000132', '415025425119', 'ELETRONICA SIMARELLI LTDA', 'R.MAJOR ARTHUR FRANCO MOURAO', '119', 'CENTRO', 'LEME', 'SP', '13611-490', '19', '35713528', 'esimarelli@linkway.com.br', 'PAULO ROBERTO SIMARELLI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'SP534', 'SE', '71710263000132', '688116088118', 'EL  VAILLANT COM  COMP EL', 'RUA MONSENHOR SIQUEIRA', '154', 'CENTRO', 'TAUBATE', 'SP', '12020-240', '12', '36219080', 'evaillant@uol.com.br andre.vaillant@uol.com.br', 'ANDRE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'SP537', 'SE', '1349990000130', '639059456119ME', 'WSA ELETRONICA LTDA', 'AV. RODRIGUES ALVES', '497 LOJA 1', 'ROSARIO', 'SAO JOAO DA BOA VISTA', 'SP', '13870-320', '19', '36232990', 'wsa@dglnet.com.br', 'VALTER SOUZA ALBUQUERQUE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'SP548', 'SE', '65455198000143', '562105246119', 'B E TURESSO ME', 'RUA XV DE NOVEMBRO', '1935', 'VILA OCIDENTAL', 'PRESIDENTE PRUDENTE', 'SP', '19015-080', '18', '3916-1028', 'sigma@muranet.com.br SIGMA.ELETRONICA@HOTMAIL.COM', 'BENTO EUGENIO TURESSO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'SP551', 'SE', '1830433000137', '114908394112', 'RUZA SERV ASSIST TEC LTD', 'Av.Elisio Teixeira Leite', '509', 'VILA BRASILANDIA', 'SAO PAULO', 'SP', '02801-000', '11', '39757996', 'atendimentoruza@uol.com.br estoque.ruza@uol.com.br ruzaserv@uol.com.br deptotecnico.ruza@uol.com.br', 'MARCELO - GOMES', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'SP554', 'SE', '51851947000147', '647100104110', 'ELETR SANTOS RIO PRETO LT', 'RUA MARECHAL DEODORO', '2353', 'BOA VISTA', 'SAO JOSE DO RIO PRETO', 'SP', '15025-065', '17', '32325680', 'eletrsil@terra.com.br', 'OSWALDO SANTOS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'SP556', 'SE', '50784636000140', '224019334110', 'ELETRONICA JAMAS LTDA ME', 'AV FLORIANO PEIXOTO', '662', 'CENTRO', 'BOTUCATU', 'SP', '18600-240', '14', '38134090', 'jamas@jamas.com.br adm.jamas@jamas.com.br', 'JAIR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'SP563', 'SE', '46436911000167', '646008269115', 'GIL E GIL E CIA LTDA - ME', 'AV BRASIL', '355', 'CENTRO', 'SAO JOSE DO RIO PARDO', 'SP', '13720-000', '19', '36085760', 'gilgilme@hotmail.com', 'ODARCY GIL', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'SP565', 'SE', '44366789000174', '495024379119', 'ELETR  BRASIL DE OURINHOS', 'RUA PARANA', ' 580 - 2', 'CENTRO', 'OURINHOS', 'SP', '19900-021', '14', '33225457', 'eletronica.brasil@itelefonica.com.br', 'LUCIANO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'SP608', 'SE', '66952144000156', '582313563118', 'A  ELETR  RIOS LTDA ME', 'AV.INDEPENDENCIA', '859', 'VILA SEIXAS', 'RIBEIRAO PRETO', 'SP', '14020-010', '16', '36368156', 'eletronicarios@eletronicarios.com.br', 'ANA PAULA RIOS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'SP611', 'SE', '1879445000156', '442102481114', 'ELETR AUDIO -VIDEO SERV LT', 'RUA DOS BANDEIRANTES', '55', 'VILA BOCAINA', 'MAUA', 'SP', '09310-360', '11', '45145233', 'tvteccolor@uol.com.br', 'ROBERTO AKIRA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'SP612', 'SE', '50306844000133', '389086199115', 'JOAO MOREIRA DA SILVA ME', 'RUA CEL DIONIZIO BARBOSA SANDOVAL', '826', 'CENTRO', 'ITUVERAVA', 'SP', '14500-000', '16', '37293365', 'esideral@netsite.com.br', 'JOAO MOREIRA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'SP622', 'SE', '3241267000169', '282057226116', 'JADIR MOTA CARNEIRO ME', 'RUA CAPITAO OTAVIO RAMOS', '610', 'CENTRO', 'CRUZEIRO', 'SP', '12701360', '12', '31433859', 'jadir@hexato.com.br', 'JADIR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'SP623', 'SE', '765140000150', '371077383114', 'TANIA AP DE ALBUQUERQUE', 'AV. CINCO DE NOVEMBRO', '901', 'VILA NASTRE', 'ITAPETININGA', 'SP', '18207-320', '15', '32710936', 'eletronicatatti@terra.com.br', 'EDMIR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 'SP624', 'SE', '3003067000178', '645280294115', 'ANA CLAUDIA PINTO EL ME', 'AV NELSON D AVILA', '771', 'CENTRO', 'SAO JOSE DOS CAMPOS', 'SP', '12245-030', '12', '39239508', 'aleksandra_vaillantsjc@hotmail.com adriely_vaillantsjc@hotmail.com  andrebotario@superig.com anaclau_contab@hotmail.com', 'ANTONIO BOTARIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 'SP627', 'SE', '3904528000183', '600109179117', 'L BORBOREMA LOPES EL LTDA', 'Rua Marechal Deodoro', '326', 'CENTRO', 'SALTO', 'SP', '13320-000', '11', '40296563', 'alltecheletronic@uol.com.br', 'LUCINETE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'SP632', 'SE', '44049104000166', '626100620110', 'ELETRONICA SYMAR LTDA', 'RUA CEL.FERNANDO PRESTES', '231', 'CENTRO', 'SANTO ANDRE', 'SP', '09020-110', '11', '49905288', 'symar@planetabc.com.br ', 'OSMAR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'SP636', 'SE', '46810776000178', '286050388118', 'ELETRONICA ORENSE LTDA ME', 'RUA ORENSE', '587', 'PQ JABOTICABAL', 'DIADEMA', 'SP', '09920-650', '11', '40430669', 'eletronica.orense@gmail.com ', 'AZENIR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 'SP640', 'SE', '1405991000155', '114992492118', 'J MACEDO ELETR LTDA ME', 'AV PROF PAPINI', '343-C2', 'CIDADE DUTRA', 'SAO PAULO', 'SP', '04805-300', '11', '56676090', 'eletronicjmacedo@uol.com.br', 'JONAS - ELMA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'SP641', 'SE', '46139036000151', '209044926117', 'ELETRONICA ASAMI LTDA', 'RUA MONSENHOR CLARO', '2-68 2-70', 'CENTRO', 'BAURU', 'SP', '17015-130', '14', '31049551', 'asami@travelnet.com.br', 'HITOSHI ASANO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'SP643', 'SE', '52864956000135', '181049850114', 'GALITEZI E CIA LTDA ME', 'RUA PADRE DUARTE', '2958', 'SAO GERALDO', 'ARARAQUARA', 'SP', '14801-310', '16', '33368710', 'galitezi@uol.com.br', 'FABRICIO -MAGALI', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'SP657', 'SE', '4909394000156', '190156619117', 'COMTEC ELETR ATIBAIA - ME', 'R MANOEL DE TOLEDO', '147', 'CENTRO', 'ATIBAIA', 'SP', '12940-640', '11', '44118145', 'comtec.adm@globo.com comtec.atibaia@globo.com comtec.ale@globo.com', 'ANDERSON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'SP665', 'SE', '3640479000119', '353098513119', 'MARISA K N AOYAGI ME', 'RUA PAUL HARRIS', '343', 'CIDADE NOVA', 'INDAIATUBA', 'SP', '13334-070', '19', '38753831', 'nishieletronica@terra.com.br ', 'MARISA e GILBERTO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'SP669', 'SE', '2383787000143', '260075435118', 'MIGUELAO & MIGUELAO LTDA - ME', 'RUA RIO CLARO', '231', 'CENTRO', 'CATANDUVA', 'SP', '15800-260', '17', '35232524', 'migueltv@ig.com.br', 'NOCLAIR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'SP673', 'SE', '69191328000139', '675053710118', 'ELETRONICA HELP-IN LTDA ME', 'AV.DR. JOSE MACIEL', '760', 'JD.MARIA ROSA', 'TABOAO DA SERRA', 'SP', '06763-270', '11', '47871480', 'helpin@superig.com.br', 'PAULO ROBERTO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'SP675', 'SE', '1427565000112', '396034650117', 'DISTASI & ROZANEZ', 'RUA DOZE', '2113', 'CENTRO', 'JALES', 'SP', '15700000', '17', '36324479', 'mult_video@terra.com.br', 'PAULO SERGIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'SP677', 'SE', '7742120000103', '177216230110', 'ELETRONICA LUCENA LTDA - ME', 'RUA MARECHAL DEODORO DA FONSECA', '635 C', 'CENTRO', 'ARACATUBA', 'SP', '16010301', '18', '36218775', 'eletronicalucena@vivax.com.br', 'APARECIDA  - NAIR', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'SP679', 'SE', '3574512000150', '304022650112', 'H.S.BOCCHI ME', 'RUA RIO DE JANEIRO', '1665', 'CENTRO', 'FERNANDOPOLIS', 'SP', '15600000', '17', '34423752', 'h.s.bocchi@terra.com.br eletronicamartins@gmail.com', 'HENRIQUE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'SP682', 'SE', '7289654000207', '149371936113', 'PARTNER COMERCIO E ASSIST TECNICA ELETRO ELETR LTD', 'RUA ANTONIO DE BARROS', '2052', 'TATUAPE', 'SAO PAULO', 'SP', '03401-001', '11', '22966122', 'partner.tatuape@terra.com.br leandro@partner.srv.br', 'LAERCIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'SP684', 'SE', '8020892000102', '454306538114', 'J.C ELETRONICA LTDA ME', 'RUA FRANCISCO FRANCO', '202', 'CENTRO', 'MOGI DAS CRUZES', 'SP', '08710-590', '11', '47941814', 'mc.eletro@uol.com.br ', 'CIRO LEONARDO -MAGNO - JO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'SP685', 'SE', '6980504000100', '344117379118', 'ERSIO ANTONIO PECORARIO ME', 'RUA TIRADENTES', '300', 'CENTRO', 'IBITINGA', 'SP', '14940000', '16', '33417665', 'pecorario@hotmail.com eceletronica@ig.com.br', 'ERSIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 'SP686', 'SE', '58521253000190', '189041193117', 'JM CARVALHO ASSIS ME', 'AV ARMANDO SALLES DE OLIVEIRA', '135', 'CENTRO', 'ASSIS', 'SP', '19806140', '18', '33242649', 'diorafa12@yahoo.com.br ', 'JONAS', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 'SP694', 'SE', '69218600000127', '708008674117', 'EQUIPO COMERCIO E CONSERTOS DE ELETRONICA LTDA ME', 'RUA JOSE MILANI', '71', 'CENTRO', 'VALINHOS', 'SP', '13270200', '19', '38716629', 'equipoeletronica@bol.com.br', 'ADILSON  - REGIANE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 'SP701', 'SE', '3910901000109', '555008080110', 'JORGE LUIS RISSATO ELETRONICA ME', 'R JOAO MUTINELLI', '652', 'CENTRO', 'PORTO FERREIRA', 'SP', '13660-000', '19', '35851891', 'fernanda-esj@uol.com.br', 'JORGE', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 'SP702', 'SE', '8354263000100', '636293893118', 'HDTV SERV TECNICO APAR ELETR LTDA M', 'RUA MANOEL COELHO 925', '925', 'SANTO ANTONIO', 'SAO CAETANO DO SUL', 'SP', '09510-112', '11', '42275339', 'hdtv@uol.com.br maira@novahdtv.com.br', 'JOAO  - MAIRA', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 'SP703', 'SE', '57443871000105', '718025697114', 'ANTONIO DE PIERRI & RAMOS LTDA-ME', 'RUA ACRE', '3202', 'PATRIMONIO VELHO', 'VOTUPORANGA', 'SP', '015500-005', '17', '34214940', 'eletronicapierri@uol.com.br', 'WESLEY', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 'SP704', 'SE', '7289654000126', '336772770114', 'PARTNER COMERCIO E ASSIST TECNICA ELETRO ELETR LTD', 'AVENIDA DR TIMOTEO PENTEADO', '1020', 'VILA PROGRESSO', 'GUARULHOS', 'SP', '07094-000', '11', '24431153', 'adm.partner@terra.com.br rose@partner.srv.br jeyce.partner.guarulhos@hotmail.com', 'LAERCIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 'SP706', 'SE', '48.848.410 -0001-13', '417021445110', 'COMERCIAL ELETRONICA TABOGA LTDA ME', 'R SARG A PIERROTI   221', NULL, 'CENTRO', 'LIMEIRA', 'SP', '13480-134', '19', '34413286', 'tvpaulo@vivax.com.br', 'PAULO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 'SP707', 'SE', '#N -DISP', '#N -DISP', 'ELETRONICA AGTECH COMERCIO DE ELETRO ELETRONICOS L', 'R SAUDADES', '603 F', 'CENTRO', 'BIRIGUI', 'SP', '#N -DISP', '18', '3641-6376', '#N -DISP', 'Jaquelini', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 'SP808', 'SE', '#N -DISP', '#N -DISP', 'JR SERVICE SOLUTION ELETRONICA LTDA', 'R GUAIPA', '353 / 349', 'VILA LEOPOLDINA', 'SAO PAULO', 'SP', '05089-001', '11', '38457575', 'servicesolution@servicesolution.com.br', 'Abreu', 'Rodrigo', 'Daniel', '', 1, '0000-00-00 00:00:00', '2012-12-18 10:44:28'),
(292, 'SP811', 'SE', '49.668.395 -0001-94', '110298169112', '\nTHOMAZ EDSON EQUIPAMENTOS LTDA - ME', 'AV DOS EUCALIPTOS', '508', 'MOEMA', 'SAO PAULO', 'SP', '04517-050', '11', '50415281', 'debora.macedo@hotmail.com', NULL, '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 'SP814', 'SE', '#N -DISP', '#N -DISP', '\nELETRONICA FRANCO LTDA-ME', 'AVEN WASHINGTON LUIZ', '823', 'JARDIM EMILIA', 'SOROCABA', 'SP', '#N -DISP', '15', '32317534', '#N -DISP', NULL, '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 'SP819**', 'SE', '#N -DISP', '#N -DISP', 'COM SERV TEC SAO CARLOS', 'AVENIDA PROF. LUIZ AUGUSTO DE OLIVEIRA', '220', 'VILA MARINA', 'SAO CARLOS', 'SP', '#N -DISP', '16', '33614913', '#N -DISP', 'ANTONIO DE BRITO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'SPE188', 'SE', '51003770000129', '110752414117', 'STILL VOX ELETRONICA LTDA', 'AV. JABAQUARA', '467', 'MIRANDOPOLIS', 'SAO PAULO', 'SP', '04045-000', '11', '25770899', 'stillvoxjb@stillvox.com.br ana.stillvox@terra.com.br', 'SILVIO LEITAO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 'SPE188002', 'SE', '51003770000200', '110827488111', 'STILL VOX ELETRONICA LTDA', 'AL. BARAO DE LIMEIRA', '1180', 'CAMPOS ELISEOS', 'SAO PAULO', 'SP', '01202-000', '11', '32222311', 'stillvoxbr@stillvox.com.br mauricio@stillvox.com.br Atendimento@stillvox.com.br', 'MAURICIO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 'TO318', 'NO', '5113284000146', '290897653', 'COELHO E VICHMEYER LTDA', 'R PRES CASTELO BRANCO', '1304', 'CENTRO', 'GURUPI', 'TO', '77405090', '63', '33511038', 'servicos@radiotenicabandeirante.com.br', 'GLEBSON', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 'TO320', 'NO', '6045713000158', '293731047', 'ELETRONICA PONTO E VIDEO', 'RUA 13 DE MAIO', '1631', 'CENTRO', 'ARAGUAINA', 'TO', '77803-130', '63', '34111818', 'eletronicapontovideo@uol.com.br', 'JOSE RICARDO', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 'TO321', 'NO', '9151165000139', '294036989', 'DAVID FILHO PEREIRA DA SILVA', 'AV LO 27 QD 1212 SUL SN  BL F SL15', ' QD 1212 SUL BLOCO F SALA 15', 'CENTRO', 'PALMAS', 'TO', '77024456', '63', '32175628', 'eletronica.nacional@yahoo.com.br', 'DAVID', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD CONSTRAINT `aros_acos_ibfk_1` FOREIGN KEY (`aro_id`) REFERENCES `aros` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `aros_acos_ibfk_2` FOREIGN KEY (`aco_id`) REFERENCES `acos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `downloads_categories`
--
ALTER TABLE `downloads_categories`
  ADD CONSTRAINT `fk_downloads_categories_downloads` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_downloads_categories_downloads1` FOREIGN KEY (`download_id`) REFERENCES `downloads` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;