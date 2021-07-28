-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-06-2021 a las 21:29:12
-- Versión del servidor: 5.5.62-0+deb8u1
-- Versión de PHP: 5.6.40-0+deb8u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `VacunaT`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ADMINISTRADOR`
--

CREATE TABLE IF NOT EXISTS `ADMINISTRADOR` (
  `CODIGO` int(11) NOT NULL,
  `CONTRASENA` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ADMINISTRADOR`
--

INSERT INTO `ADMINISTRADOR` (`CODIGO`, `CONTRASENA`) VALUES
(17011, 'password'),
(17043, 'password'),
(18037, 'password');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add administrador', 10, 'add_administrador'),
(20, 'Can change administrador', 10, 'change_administrador'),
(21, 'Can delete administrador', 10, 'delete_administrador'),
(22, 'Can add centrovacunacion', 11, 'add_centrovacunacion'),
(23, 'Can change centrovacunacion', 11, 'change_centrovacunacion'),
(24, 'Can delete centrovacunacion', 11, 'delete_centrovacunacion'),
(25, 'Can add departamento', 9, 'add_departamento'),
(26, 'Can change departamento', 9, 'change_departamento'),
(27, 'Can delete departamento', 9, 'delete_departamento'),
(28, 'Can add municipio', 8, 'add_municipio'),
(29, 'Can change municipio', 8, 'change_municipio'),
(30, 'Can delete municipio', 8, 'delete_municipio'),
(31, 'Can add paciente', 7, 'add_paciente'),
(32, 'Can change paciente', 7, 'change_paciente'),
(33, 'Can delete paciente', 7, 'delete_paciente'),
(34, 'Can add vacunacion', 12, 'add_vacunacion'),
(35, 'Can change vacunacion', 12, 'change_vacunacion'),
(36, 'Can delete vacunacion', 12, 'delete_vacunacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$15000$wPDf5G8smcVv$zjFYjNj33gO1Gb3oLNdggt1aRQxfiNbHDDJ2vvZ6y5Q=', '2021-06-27 02:26:44', 1, 'alejandro', '', '', 'alewww@outlook.es', 1, 1, '2021-06-16 05:21:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CENTROVACUNACION`
--

CREATE TABLE IF NOT EXISTS `CENTROVACUNACION` (
  `IDCENTRO` int(11) NOT NULL,
  `IDMUNICIPIO` int(11) DEFAULT NULL,
  `UBICACION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `CENTROVACUNACION`
--

INSERT INTO `CENTROVACUNACION` (`IDCENTRO`, `IDMUNICIPIO`, `UBICACION`) VALUES
(1, 1, 'Ubicado en Ahuachapán'),
(2, 2, 'Ubicado en Apaneca'),
(3, 3, 'Ubicado en Atiquizaya'),
(4, 4, 'Ubicado en Concepción de Ataco'),
(5, 5, 'Ubicado en El Refugio'),
(6, 6, 'Ubicado en Guaymango'),
(7, 7, 'Ubicado en Jujutla'),
(8, 8, 'Ubicado en San Francisco Menéndez'),
(9, 9, 'Ubicado en San Lorenzo'),
(10, 10, 'Ubicado en San Pedro Puxtla'),
(11, 11, 'Ubicado en Tacuba'),
(12, 12, 'Ubicado en Turín'),
(13, 13, 'Ubicado en Cinquera'),
(14, 14, 'Ubicado en Dolores'),
(15, 15, 'Ubicado en Guacotecti'),
(16, 16, 'Ubicado en Ilobasco'),
(17, 17, 'Ubicado en Jutiapa'),
(18, 18, 'Ubicado en San Isidro'),
(19, 19, 'Ubicado en Sensuntepeque'),
(20, 20, 'Ubicado en Tejutepeque'),
(21, 21, 'Ubicado en Victoria'),
(22, 22, 'Ubicado en Agua Caliente'),
(23, 23, 'Ubicado en Arcatao'),
(24, 24, 'Ubicado en Azacualpa'),
(25, 25, 'Ubicado en Chalatenango'),
(26, 26, 'Ubicado en Comalapa'),
(27, 27, 'Ubicado en Citalá'),
(28, 28, 'Ubicado en Concepción Quezaltepeque'),
(29, 29, 'Ubicado en Dulce Nombre de María'),
(30, 30, 'Ubicado en El Carrizal'),
(31, 31, 'Ubicado en El Paraíso'),
(32, 32, 'Ubicado en La Laguna'),
(33, 33, 'Ubicado en La Palma'),
(34, 34, 'Ubicado en La Reina'),
(35, 35, 'Ubicado en Las Vueltas'),
(36, 36, 'Ubicado en Nueva Concepción'),
(37, 37, 'Ubicado en Nueva Trinidad'),
(38, 38, 'Ubicado en Nombre de Jesús'),
(39, 39, 'Ubicado en Ojos de Agua'),
(40, 40, 'Ubicado en Potonico'),
(41, 41, 'Ubicado en San Antonio de la Cruz'),
(42, 42, 'Ubicado en San Antonio Los Ranchos'),
(43, 43, 'Ubicado en San Fernando'),
(44, 44, 'Ubicado en San Francisco Lempa'),
(45, 45, 'Ubicado en San Francisco Morazán'),
(46, 46, 'Ubicado en San Ignacio'),
(47, 47, 'Ubicado en San Isidro Labrador'),
(48, 48, 'Ubicado en San José Cancasque'),
(49, 49, 'Ubicado en San José Las Flores'),
(50, 50, 'Ubicado en San Luis del Carmen'),
(51, 51, 'Ubicado en San Miguel de Mercedes'),
(52, 52, 'Ubicado en San Rafael'),
(53, 53, 'Ubicado en Santa Rita'),
(54, 54, 'Ubicado en Tejutla'),
(55, 55, 'Ubicado en Candelaria'),
(56, 56, 'Ubicado en Cojutepeque'),
(57, 57, 'Ubicado en El Carmen'),
(58, 58, 'Ubicado en El Rosario'),
(59, 59, 'Ubicado en Monte San Juan'),
(60, 60, 'Ubicado en Oratorio de Concepción'),
(61, 61, 'Ubicado en San Bartolomé Perulapía'),
(62, 62, 'Ubicado en San Cristóbal'),
(63, 63, 'Ubicado en San José Guayabal'),
(64, 64, 'Ubicado en San Pedro Perulapán'),
(65, 65, 'Ubicado en San Rafael Cedros'),
(66, 66, 'Ubicado en San Ramón'),
(67, 67, 'Ubicado en Santa Cruz Analquito'),
(68, 68, 'Ubicado en Santa Cruz Michapa'),
(69, 69, 'Ubicado en Suchitoto'),
(70, 70, 'Ubicado en Tenancingo'),
(71, 71, 'Ubicado en Antiguo Cuscatlán'),
(72, 72, 'Ubicado en Chiltiupán'),
(73, 73, 'Ubicado en Ciudad Arce'),
(74, 74, 'Ubicado en Colón'),
(75, 75, 'Ubicado en Comasagua'),
(76, 76, 'Ubicado en Huizúcar'),
(77, 77, 'Ubicado en Jayaque'),
(78, 78, 'Ubicado en Jicalapa'),
(79, 79, 'Ubicado en La Libertad'),
(80, 80, 'Ubicado en Santa Tecla'),
(81, 81, 'Ubicado en Nuevo Cuscatlán'),
(82, 82, 'Ubicado en San Juan Opico'),
(83, 83, 'Ubicado en Quezaltepeque'),
(84, 84, 'Ubicado en Sacacoyo'),
(85, 85, 'Ubicado en San José Villanueva'),
(86, 86, 'Ubicado en San Matías'),
(87, 87, 'Ubicado en San Pablo Tacachico'),
(88, 88, 'Ubicado en Talnique'),
(89, 89, 'Ubicado en Tamanique'),
(90, 90, 'Ubicado en Teotepeque'),
(91, 91, 'Ubicado en Tepecoyo'),
(92, 92, 'Ubicado en  Zaragoza'),
(93, 93, 'Ubicado en Cuyultitán'),
(94, 94, 'Ubicado en El Rosario'),
(95, 95, 'Ubicado en Jerusalén'),
(96, 96, 'Ubicado en Mercedes La Ceiba'),
(97, 97, 'Ubicado en Olocuilta'),
(98, 98, 'Ubicado en Paraíso de Osorio'),
(99, 99, 'Ubicado en San Antonio Masahuat'),
(100, 100, 'Ubicado en San Emigdio'),
(101, 101, 'Ubicado en San Francisco Chinameca'),
(102, 102, 'Ubicado en San Juan Nonualco'),
(103, 103, 'Ubicado en San Juan Talpa'),
(104, 104, 'Ubicado en San Juan Tepezontes'),
(105, 105, 'Ubicado en San Luis Talpa'),
(106, 106, 'Ubicado en San Luis La Herradura'),
(107, 107, 'Ubicado en San Miguel Tepezontes'),
(108, 108, 'Ubicado en San Pedro Masahuat'),
(109, 109, 'Ubicado en San Pedro Nonualco'),
(110, 110, 'Ubicado en San Rafael Obrajuelo'),
(111, 111, 'Ubicado en Santa María Ostuma'),
(112, 112, 'Ubicado en Santiago Nonualco'),
(113, 113, 'Ubicado en Tapalhuaca'),
(114, 114, 'Ubicado en Zacatecoluca'),
(115, 115, 'Ubicado en Anamorós'),
(116, 116, 'Ubicado en Bolívar'),
(117, 117, 'Ubicado en Concepción de Oriente'),
(118, 118, 'Ubicado en Conchagua'),
(119, 119, 'Ubicado en El Carmen'),
(120, 120, 'Ubicado en El Sauce'),
(121, 121, 'Ubicado en Intipucá'),
(122, 122, 'Ubicado en La Unión'),
(123, 123, 'Ubicado en Lislique'),
(124, 124, 'Ubicado en Meanguera del Golfo'),
(125, 125, 'Ubicado en Nueva Esparta'),
(126, 126, 'Ubicado en Pasaquina'),
(127, 127, 'Ubicado en Polorós'),
(128, 128, 'Ubicado en San Alejo'),
(129, 129, 'Ubicado en San José'),
(130, 130, 'Ubicado en Santa Rosa de Lima'),
(131, 131, 'Ubicado en Yayantique'),
(132, 132, 'Ubicado en Yucuaiquín'),
(133, 133, 'Ubicado en Arambala'),
(134, 134, 'Ubicado en Cacaopera'),
(135, 135, 'Ubicado en Chilanga'),
(136, 136, 'Ubicado en Corinto'),
(137, 137, 'Ubicado en Delicias de Concepción'),
(138, 138, 'Ubicado en El Divisadero'),
(139, 139, 'Ubicado en El Rosario'),
(140, 140, 'Ubicado en Gualococti'),
(141, 141, 'Ubicado en Guatajiagua'),
(142, 142, 'Ubicado en Joateca'),
(143, 143, 'Ubicado en Jocoaitique'),
(144, 144, 'Ubicado en Jocoro'),
(145, 145, 'Ubicado en Lolotiquillo'),
(146, 146, 'Ubicado en Meanguera'),
(147, 147, 'Ubicado en Osicala'),
(148, 148, 'Ubicado en Perquín'),
(149, 149, 'Ubicado en San Carlos'),
(150, 150, 'Ubicado en San Fernando'),
(151, 151, 'Ubicado en San Francisco Gotera'),
(152, 152, 'Ubicado en San Isidro'),
(153, 153, 'Ubicado en San Simón'),
(154, 154, 'Ubicado en Sensembra'),
(155, 155, 'Ubicado en Sociedad'),
(156, 156, 'Ubicado en  Torola'),
(157, 157, 'Ubicado en Yamabal'),
(158, 158, 'Ubicado en Yoloaiquín'),
(159, 159, 'Ubicado en Carolina'),
(160, 160, 'Ubicado en Chapeltique'),
(161, 161, 'Ubicado en Chinameca'),
(162, 162, 'Ubicado en Chirilagua'),
(163, 163, 'Ubicado en Ciudad Barrios'),
(164, 164, 'Ubicado en Comacarán'),
(165, 165, 'Ubicado en El Tránsito'),
(166, 166, 'Ubicado en Lolotique'),
(167, 167, 'Ubicado en Moncagua'),
(168, 168, 'Ubicado en Nueva Guadalupe'),
(169, 169, 'Ubicado en Nuevo Edén de San Juan'),
(170, 170, 'Ubicado en Quelepa'),
(171, 171, 'Ubicado en San Antonio del Mosco'),
(172, 172, 'Ubicado en San Gerardo'),
(173, 173, 'Ubicado en San Jorge'),
(174, 174, 'Ubicado en San Luis de la Reina'),
(175, 175, 'Ubicado en San Miguel'),
(176, 176, 'Ubicado en San Rafael Oriente'),
(177, 177, 'Ubicado en Sesori'),
(178, 178, 'Ubicado en Uluazapa'),
(179, 179, 'Ubicado en Aguilares'),
(180, 180, 'Ubicado en Apopa'),
(181, 181, 'Ubicado en Ayutuxtepeque'),
(182, 182, 'Ubicado en Cuscatancingo'),
(183, 183, 'Ubicado en Ciudad Delgado'),
(184, 184, 'Ubicado en El Paisnal'),
(185, 185, 'Ubicado en Guazapa'),
(186, 186, 'Ubicado en Ilopango'),
(187, 187, 'Ubicado en Mejicanos'),
(188, 188, 'Ubicado en Nejapa'),
(189, 189, 'Ubicado en Panchimalco'),
(190, 190, 'Ubicado en Rosario de Mora'),
(191, 191, 'Ubicado en San Marcos'),
(192, 192, 'Ubicado en San Martín'),
(193, 193, 'Ubicado en San Salvador'),
(194, 194, 'Ubicado en Santiago Texacuangos'),
(195, 195, 'Ubicado en Santo Tomás'),
(196, 196, 'Ubicado en Soyapango'),
(197, 197, 'Ubicado en Tonacatepeque'),
(198, 198, 'Ubicado en Apastepeque'),
(199, 199, 'Ubicado en Guadalupe'),
(200, 200, 'Ubicado en San Cayetano Istepeque'),
(201, 201, 'Ubicado en San Esteban Catarina'),
(202, 202, 'Ubicado en San Ildefonso'),
(203, 203, 'Ubicado en San Lorenzo'),
(204, 204, 'Ubicado en San Sebastián'),
(205, 205, 'Ubicado en San Vicente'),
(206, 206, 'Ubicado en Santa Clara'),
(207, 207, 'Ubicado en Santo Domingo'),
(208, 208, 'Ubicado en Tecoluca'),
(209, 209, 'Ubicado en Tepetitán'),
(210, 210, 'Ubicado en Verapaz'),
(211, 211, 'Ubicado en Candelaria de la Frontera'),
(212, 212, 'Ubicado en Chalchuapa'),
(213, 213, 'Ubicado en Coatepeque'),
(214, 214, 'Ubicado en El Congo'),
(215, 215, 'Ubicado en El Porvenir'),
(216, 216, 'Ubicado en Masahuat'),
(217, 217, 'Ubicado en Metapán'),
(218, 218, 'Ubicado en San Antonio Pajonal'),
(219, 219, 'Ubicado en San Sebastián Salitrillo'),
(220, 220, 'Ubicado en Santa Ana'),
(221, 221, 'Ubicado en Santa Rosa Guachipilín'),
(222, 222, 'Ubicado en Santiago de la Frontera'),
(223, 223, 'Ubicado en Texistepeque'),
(224, 224, 'Ubicado en Acajutla'),
(225, 225, 'Ubicado en Armenia'),
(226, 226, 'Ubicado en Caluco'),
(227, 227, 'Ubicado en Cuisnahuat'),
(228, 228, 'Ubicado en Izalco'),
(229, 229, 'Ubicado en Juayúa'),
(230, 230, 'Ubicado en Nahuizalco'),
(231, 231, 'Ubicado en Nahulingo'),
(232, 232, 'Ubicado en Salcoatitán'),
(233, 233, 'Ubicado en San Antonio del Monte'),
(234, 234, 'Ubicado en San Julián'),
(235, 235, 'Ubicado en Santa Catarina Masahuat'),
(236, 236, 'Ubicado en Santa Isabel Ishuatán'),
(237, 237, 'Ubicado en Santo Domingo Guzmán'),
(238, 238, 'Ubicado en Sonsonate'),
(239, 239, 'Ubicado en Sonzacate'),
(240, 240, 'Ubicado en Alegría'),
(241, 241, 'Ubicado en Berlín'),
(242, 242, 'Ubicado en California'),
(243, 243, 'Ubicado en Concepción Batres'),
(244, 244, 'Ubicado en El Triunfo'),
(245, 245, 'Ubicado en Ereguayquín'),
(246, 246, 'Ubicado en Estanzuelas'),
(247, 247, 'Ubicado en Jiquilisco'),
(248, 248, 'Ubicado en Jucuapa'),
(249, 249, 'Ubicado en Jucuarán'),
(250, 250, 'Ubicado en Mercedes Umaña'),
(251, 251, 'Ubicado en Nueva Granada'),
(252, 252, 'Ubicado en Ozatlán'),
(253, 253, 'Ubicado en Puerto El Triunfo'),
(254, 254, 'Ubicado en San Agustín'),
(255, 255, 'Ubicado en San Buenaventura'),
(256, 256, 'Ubicado en San Dionisio'),
(257, 257, 'Ubicado en San Francisco Javier'),
(258, 258, 'Ubicado en Santa Elena'),
(259, 259, 'Ubicado en Santa María'),
(260, 260, 'Ubicado en Santiago de María'),
(261, 261, 'Ubicado en Tecapán'),
(262, 262, 'Ubicado en Usulután');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DEPARTAMENTO`
--

CREATE TABLE IF NOT EXISTS `DEPARTAMENTO` (
  `NOMBREDEPARTAMENTO` text NOT NULL,
  `IDDEPARTAMENTO` int(11) NOT NULL,
  `IDMUNICIPIO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `DEPARTAMENTO`
--

INSERT INTO `DEPARTAMENTO` (`NOMBREDEPARTAMENTO`, `IDDEPARTAMENTO`, `IDMUNICIPIO`) VALUES
('Ahuachapan', 1, NULL),
('Cabañas', 2, NULL),
('Chalatenango', 3, NULL),
('Cuscatlán', 4, NULL),
('La Libertad', 5, NULL),
('La Paz', 6, NULL),
('La Unión', 7, NULL),
('Morazán', 8, NULL),
('San Miguel', 9, NULL),
('San Salvador', 10, NULL),
('San Vicente', 11, NULL),
('Santa Ana', 12, NULL),
('Sonsonate', 13, NULL),
('Usulután', 14, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-06-18 02:56:00', '1', 'Administrador object', 1, '', 10, 1),
(2, '2021-06-19 03:56:16', '16', 'ugiujhg', 1, '', 9, 1),
(3, '2021-06-19 03:56:37', '16', 'ugiujhg', 3, '', 9, 1),
(4, '2021-06-19 04:01:18', '15', 'prueba', 1, '', 9, 1),
(5, '2021-06-19 04:01:29', '15', 'prueba', 3, '', 9, 1),
(6, '2021-06-19 04:08:43', '59547295', 'luis alejandro', 1, '', 7, 1),
(7, '2021-06-19 05:04:40', '15', 'Prueba', 1, '', 9, 1),
(8, '2021-06-19 05:04:49', '15', 'Prueba', 3, '', 9, 1),
(9, '2021-06-19 05:05:11', '30000', 'prueba', 1, '', 8, 1),
(10, '2021-06-19 05:05:21', '30000', 'prueba', 3, '', 8, 1),
(11, '2021-06-23 23:28:57', '59547295', '59547295', 1, '', 7, 1),
(12, '2021-06-23 23:52:17', '17043', '17043', 1, '', 10, 1),
(13, '2021-06-23 23:53:41', '59547295', 'Alejandro Cruz', 2, 'Modificado/a codigo.', 7, 1),
(14, '2021-06-23 23:54:06', '59547295', 'Luis Alejandro Mejia Cruz', 2, 'Modificado/a nombre.', 7, 1),
(15, '2021-06-23 23:55:11', '18037', '18037', 1, '', 10, 1),
(16, '2021-06-23 23:55:27', '17011', '17011', 1, '', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'paciente', 'Registro', 'paciente'),
(8, 'municipio', 'Registro', 'municipio'),
(9, 'departamento', 'Registro', 'departamento'),
(10, 'administrador', 'Registro', 'administrador'),
(11, 'centrovacunacion', 'Registro', 'centrovacunacion'),
(12, 'vacunacion', 'Registro', 'vacunacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-16 05:19:32'),
(2, 'auth', '0001_initial', '2021-06-16 05:19:36'),
(3, 'admin', '0001_initial', '2021-06-16 05:19:37'),
(4, 'sessions', '0001_initial', '2021-06-16 05:19:38'),
(5, 'Registro', '0001_initial', '2021-06-20 01:56:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5g4tntg8nc4rpzn6bx5kd2tsqk8sgzl2', 'Y2U2NGFhMTRiMzAxZDEwNzdjNzg0NjFiZjJhY2IyZjk2NDExZGZlMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwOTBmYTQ3MDNkODUyMGFhYmNhZTRlMDIyYmRmNzMyN2FmYmMzNjEiLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2021-07-09 21:11:52'),
('lj9l3xdluqz87omrlgvdjq8jgc3qm0mf', 'NmZiOTAzODk5Y2YzNTAwYzczYjI2YzE4ZTc2ZGIzNDg2NmUyZGY3MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwOTBmYTQ3MDNkODUyMGFhYmNhZTRlMDIyYmRmNzMyN2FmYmMzNjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2021-07-04 02:47:13'),
('vn4d0fhxjwpihbojqh162q5r8uk7gl79', 'Y2U2NGFhMTRiMzAxZDEwNzdjNzg0NjFiZjJhY2IyZjk2NDExZGZlMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwOTBmYTQ3MDNkODUyMGFhYmNhZTRlMDIyYmRmNzMyN2FmYmMzNjEiLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2021-07-07 03:08:42'),
('x2ka3q5m9gtq3c6e1j8daxmxs9ym024h', 'NmZiOTAzODk5Y2YzNTAwYzczYjI2YzE4ZTc2ZGIzNDg2NmUyZGY3MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwOTBmYTQ3MDNkODUyMGFhYmNhZTRlMDIyYmRmNzMyN2FmYmMzNjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2021-07-11 02:26:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MUNICIPIO`
--

CREATE TABLE IF NOT EXISTS `MUNICIPIO` (
  `NOMBREMUNICIPIO` text NOT NULL,
  `IDMUNICIPIO` int(11) NOT NULL,
  `IDDEPARTAMENTO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `MUNICIPIO`
--

INSERT INTO `MUNICIPIO` (`NOMBREMUNICIPIO`, `IDMUNICIPIO`, `IDDEPARTAMENTO`) VALUES
('Ahuachapán', 1, 1),
('Apaneca', 2, 1),
('Atiquizaya', 3, 1),
('Concepción de Ataco', 4, 1),
('El Refugio', 5, 1),
('Guaymango', 6, 1),
('Jujutla', 7, 1),
('San Francisco Menéndez', 8, 1),
('San Lorenzo', 9, 1),
('San Pedro Puxtla', 10, 1),
('Tacuba', 11, 1),
('Turín', 12, 1),
('Cinquera', 13, 2),
('Dolores', 14, 2),
('Guacotecti', 15, 2),
('Ilobasco', 16, 2),
('Jutiapa', 17, 2),
('San Isidro', 18, 2),
('Sensuntepeque', 19, 2),
('Tejutepeque', 20, 2),
('Victoria', 21, 2),
('Agua Caliente', 22, 3),
('Arcatao', 23, 3),
('Azacualpa', 24, 3),
('Chalatenango', 25, 3),
('Comalapa', 26, 3),
('Citalá', 27, 3),
('Concepción Quezaltepeque', 28, 3),
('Dulce Nombre de María', 29, 3),
('El Carrizal', 30, 3),
('El Paraíso', 31, 3),
('La Laguna', 32, 3),
('La Palma', 33, 3),
('La Reina', 34, 3),
('Las Vueltas', 35, 3),
('Nueva Concepción', 36, 3),
('Nueva Trinidad', 37, 3),
('Nombre de Jesús', 38, 3),
('Ojos de Agua', 39, 3),
('Potonico', 40, 3),
('San Antonio de la Cruz', 41, 3),
('San Antonio Los Ranchos', 42, 3),
('San Fernando', 43, 3),
('San Francisco Lempa', 44, 3),
('San Francisco Morazán', 45, 3),
('San Ignacio', 46, 3),
('San Isidro Labrador', 47, 3),
('San José Cancasque', 48, 3),
('San José Las Flores', 49, 3),
('San Luis del Carmen', 50, 3),
('San Miguel de Mercedes', 51, 3),
('San Rafael', 52, 3),
('Santa Rita', 53, 3),
('Tejutla', 54, 3),
('Candelaria', 55, 4),
('Cojutepeque', 56, 4),
('El Carmen', 57, 4),
('El Rosario', 58, 4),
('Monte San Juan', 59, 4),
('Oratorio de Concepción', 60, 4),
('San Bartolomé Perulapía', 61, 4),
('San Cristóbal', 62, 4),
('San José Guayabal', 63, 4),
('San Pedro Perulapán', 64, 4),
('San Rafael Cedros', 65, 4),
('San Ramón', 66, 4),
('Santa Cruz Analquito', 67, 4),
('Santa Cruz Michapa', 68, 4),
('Suchitoto', 69, 4),
('Tenancingo', 70, 4),
('Antiguo Cuscatlán', 71, 5),
('Chiltiupán', 72, 5),
('Ciudad Arce', 73, 5),
('Colón', 74, 5),
('Comasagua', 75, 5),
('Huizúcar', 76, 5),
('Jayaque', 77, 5),
('Jicalapa', 78, 5),
('La Libertad', 79, 5),
('Santa Tecla', 80, 5),
('Nuevo Cuscatlán', 81, 5),
('San Juan Opico', 82, 5),
('Quezaltepeque', 83, 5),
('Sacacoyo', 84, 5),
('San José Villanueva', 85, 5),
('San Matías', 86, 5),
('San Pablo Tacachico', 87, 5),
('Talnique', 88, 5),
('Tamanique', 89, 5),
('Teotepeque', 90, 5),
('Tepecoyo', 91, 5),
(' Zaragoza', 92, 5),
('Cuyultitán', 93, 6),
('El Rosario', 94, 6),
('Jerusalén', 95, 6),
('Mercedes La Ceiba', 96, 6),
('Olocuilta', 97, 6),
('Paraíso de Osorio', 98, 6),
('San Antonio Masahuat', 99, 6),
('San Emigdio', 100, 6),
('San Francisco Chinameca', 101, 6),
('San Juan Nonualco', 102, 6),
('San Juan Talpa', 103, 6),
('San Juan Tepezontes', 104, 6),
('San Luis Talpa', 105, 6),
('San Luis La Herradura', 106, 6),
('San Miguel Tepezontes', 107, 6),
('San Pedro Masahuat', 108, 6),
('San Pedro Nonualco', 109, 6),
('San Rafael Obrajuelo', 110, 6),
('Santa María Ostuma', 111, 6),
('Santiago Nonualco', 112, 6),
('Tapalhuaca', 113, 6),
('Zacatecoluca', 114, 6),
('Anamorós', 115, 7),
('Bolívar', 116, 7),
('Concepción de Oriente', 117, 7),
('Conchagua', 118, 7),
('El Carmen', 119, 7),
('El Sauce', 120, 7),
('Intipucá', 121, 7),
('La Unión', 122, 7),
('Lislique', 123, 7),
('Meanguera del Golfo', 124, 7),
('Nueva Esparta', 125, 7),
('Pasaquina', 126, 7),
('Polorós', 127, 7),
('San Alejo', 128, 7),
('San José', 129, 7),
('Santa Rosa de Lima', 130, 7),
('Yayantique', 131, 7),
('Yucuaiquín', 132, 7),
('Arambala', 133, 8),
('Cacaopera', 134, 8),
('Chilanga', 135, 8),
('Corinto', 136, 8),
('Delicias de Concepción', 137, 8),
('El Divisadero', 138, 8),
('El Rosario', 139, 8),
('Gualococti', 140, 8),
('Guatajiagua', 141, 8),
('Joateca', 142, 8),
('Jocoaitique', 143, 8),
('Jocoro', 144, 8),
('Lolotiquillo', 145, 8),
('Meanguera', 146, 8),
('Osicala', 147, 8),
('Perquín', 148, 8),
('San Carlos', 149, 8),
('San Fernando', 150, 8),
('San Francisco Gotera', 151, 8),
('San Isidro', 152, 8),
('San Simón', 153, 8),
('Sensembra', 154, 8),
('Sociedad', 155, 8),
(' Torola', 156, 8),
('Yamabal', 157, 8),
('Yoloaiquín', 158, 8),
('Carolina', 159, 9),
('Chapeltique', 160, 9),
('Chinameca', 161, 9),
('Chirilagua', 162, 9),
('Ciudad Barrios', 163, 9),
('Comacarán', 164, 9),
('El Tránsito', 165, 9),
('Lolotique', 166, 9),
('Moncagua', 167, 9),
('Nueva Guadalupe', 168, 9),
('Nuevo Edén de San Juan', 169, 9),
('Quelepa', 170, 9),
('San Antonio del Mosco', 171, 9),
('San Gerardo', 172, 9),
('San Jorge', 173, 9),
('San Luis de la Reina', 174, 9),
('San Miguel', 175, 9),
('San Rafael Oriente', 176, 9),
('Sesori', 177, 9),
('Uluazapa', 178, 9),
('Aguilares', 179, 10),
('Apopa', 180, 10),
('Ayutuxtepeque', 181, 10),
('Cuscatancingo', 182, 10),
('Ciudad Delgado', 183, 10),
('El Paisnal', 184, 10),
('Guazapa', 185, 10),
('Ilopango', 186, 10),
('Mejicanos', 187, 10),
('Nejapa', 188, 10),
('Panchimalco', 189, 10),
('Rosario de Mora', 190, 10),
('San Marcos', 191, 10),
('San Martín', 192, 10),
('San Salvador', 193, 10),
('Santiago Texacuangos', 194, 10),
('Santo Tomás', 195, 10),
('Soyapango', 196, 10),
('Tonacatepeque', 197, 10),
('Apastepeque', 198, 11),
('Guadalupe', 199, 11),
('San Cayetano Istepeque', 200, 11),
('San Esteban Catarina', 201, 11),
('San Ildefonso', 202, 11),
('San Lorenzo', 203, 11),
('San Sebastián', 204, 11),
('San Vicente', 205, 11),
('Santa Clara', 206, 11),
('Santo Domingo', 207, 11),
('Tecoluca', 208, 11),
('Tepetitán', 209, 11),
('Verapaz', 210, 11),
('Candelaria de la Frontera', 211, 12),
('Chalchuapa', 212, 12),
('Coatepeque', 213, 12),
('El Congo', 214, 12),
('El Porvenir', 215, 12),
('Masahuat', 216, 12),
('Metapán', 217, 12),
('San Antonio Pajonal', 218, 12),
('San Sebastián Salitrillo', 219, 12),
('Santa Ana', 220, 12),
('Santa Rosa Guachipilín', 221, 12),
('Santiago de la Frontera', 222, 12),
('Texistepeque', 223, 12),
('Acajutla', 224, 13),
('Armenia', 225, 13),
('Caluco', 226, 13),
('Cuisnahuat', 227, 13),
('Izalco', 228, 13),
('Juayúa', 229, 13),
('Nahuizalco', 230, 13),
('Nahulingo', 231, 13),
('Salcoatitán', 232, 13),
('San Antonio del Monte', 233, 13),
('San Julián', 234, 13),
('Santa Catarina Masahuat', 235, 13),
('Santa Isabel Ishuatán', 236, 13),
('Santo Domingo Guzmán', 237, 13),
('Sonsonate', 238, 13),
('Sonzacate', 239, 13),
('Alegría', 240, 14),
('Berlín', 241, 14),
('California', 242, 14),
('Concepción Batres', 243, 14),
('El Triunfo', 244, 14),
('Ereguayquín', 245, 14),
('Estanzuelas', 246, 14),
('Jiquilisco', 247, 14),
('Jucuapa', 248, 14),
('Jucuarán', 249, 14),
('Mercedes Umaña', 250, 14),
('Nueva Granada', 251, 14),
('Ozatlán', 252, 14),
('Puerto El Triunfo', 253, 14),
('San Agustín', 254, 14),
('San Buenaventura', 255, 14),
('San Dionisio', 256, 14),
('San Francisco Javier', 257, 14),
('Santa Elena', 258, 14),
('Santa María', 259, 14),
('Santiago de María', 260, 14),
('Tecapán', 261, 14),
('Usulután', 262, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PACIENTE`
--

CREATE TABLE IF NOT EXISTS `PACIENTE` (
  `DUI` int(9) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `EDAD` int(11) NOT NULL,
  `GENERO` char(11) NOT NULL,
  `IDMUNICIPIO` int(11) DEFAULT NULL,
  `FECHAPRIMERADOSIS` date NOT NULL,
  `FECHASEGUNDADOSIS` date DEFAULT NULL,
  `CODIGO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `PACIENTE`
--

INSERT INTO `PACIENTE` (`DUI`, `NOMBRE`, `EDAD`, `GENERO`, `IDMUNICIPIO`, `FECHAPRIMERADOSIS`, `FECHASEGUNDADOSIS`, `CODIGO`) VALUES
(59547281, 'Fernando Jared Mejia Cruz', 13, 'M', 215, '2021-06-18', '2021-06-23', 17043),
(59547295, 'Luis Alejandro Mejia Cruz', 21, 'M', 186, '2021-06-23', '2021-06-23', 17043),
(123456789, 'Rodrigo Josue Rodriguez Castillo', 16, 'M', 223, '2021-06-18', NULL, 17043),
(134833424, 'Maria Julia Aguilar Reyes', 53, 'F', 213, '2021-06-08', NULL, 18037),
(143758709, 'Hansel Andres Espejo Ramos', 29, 'F', 200, '2021-05-09', '2021-07-12', 17043),
(144878045, 'Aranxa Ruiz Vasquez', 37, 'F', 4, '2021-02-21', '2021-08-02', 18037),
(181576526, 'Daniel  Torres Rojas ', 41, 'M', 85, '2021-06-06', '2021-07-13', 18037),
(206558521, 'Karina Guillen Marin', 21, 'F', 45, '2021-06-10', '2021-09-16', 18037),
(232841429, 'Miguel angel Hernandez Prado', 31, 'M', 122, '2021-05-07', '2021-07-25', 17011),
(274713033, 'Pablo Mere Hidalgo', 15, 'M', 159, '2021-02-26', '2021-08-15', 17043),
(302538873, 'Danna Veronica Hernandez Gonzalez', 23, 'F', 73, '2021-03-25', '2021-08-27', 18037),
(322550675, 'Diana Laura Morales Gonzalez', 24, 'F', 259, '2021-03-03', '2021-08-21', 17011),
(345969476, 'Andrea Chavez Heredia', 15, 'F', 119, '2021-06-16', '2021-09-12', 17011),
(346928162, 'Rocio Gonzalez Diaz', 24, 'F', 169, '2021-05-04', '2021-09-12', 17043),
(356724983, 'Steven Antonio Aguilar Guevara', 23, 'M', 211, '2021-05-13', '2021-06-01', 17043),
(392926260, 'Yail Tsayam  Reyes Baez', 46, 'M', 244, '2021-05-15', '2021-07-27', 17011),
(439789127, 'Samanta Lara Agapito', 56, 'F', 253, '2021-03-31', '2021-09-06', 17011),
(466822864, 'Jairo David Triana Avila', 39, 'M', 231, '2021-03-20', '2021-08-29', 17043),
(468316438, 'Patricio Jose Rodriguez Martinez', 29, 'M', 7, '2021-06-24', NULL, 18037),
(476566629, 'Aelin Moreno Huitron', 25, 'F', 261, '2021-03-25', '2021-08-18', 18037),
(481887704, 'Jessica Liliana Moreno Reveles', 56, 'F', 133, '2021-05-19', '2021-09-26', 17043),
(483773745, 'Yesenia Esmeralda Cruz Lopez', 45, 'F', 186, '2021-05-03', '2021-06-28', 17043),
(486279315, 'Maritza Daniela Rodriguez', 17, 'F', 1, '2021-05-19', NULL, 17043),
(508547431, 'Lisset Vianey Garcia Orozco', 31, 'F', 105, '2021-03-06', '2021-07-24', 17043),
(549849392, 'Esteban  Reyes Saldaña', 25, 'M', 146, '2021-04-26', '2021-08-31', 18037),
(550536292, 'Luis Felipe Delgado Barron', 33, 'M', 141, '2021-02-23', '2021-09-09', 18037),
(552831338, 'Jaime Daniel Hernandez Palacios', 25, 'M', 68, '2021-02-24', '2021-07-23', 18037),
(576943215, 'Julio Alberto Dominguez Rosario', 41, 'M', 79, '2021-06-06', NULL, 18037),
(579031130, 'Abigali Rodriguez Jimenez', 15, 'F', 19, '2021-03-07', '2021-09-16', 17011),
(582649371, 'Matias Daniel Rodriguez Alfaro', 15, 'M', 86, '2021-05-19', NULL, 17043),
(598117897, 'Yair Jofra Moreno Chavez', 41, 'M', 52, '2021-04-21', '2021-08-12', 17043),
(603561803, 'Irma Carolina  Parga Fuentes', 45, 'F', 32, '2021-03-13', '2021-07-27', 17043),
(617265853, 'Itzel Nuñez Garcia', 35, 'F', 193, '2021-04-10', '2021-09-03', 17043),
(625419871, 'Eduardo Elihu Munguia Gonzalez', 25, 'M', 232, '2021-06-15', '2021-08-22', 17043),
(653800270, 'Cipriano Ariel Gonzalez Trejo', 46, 'M', 208, '2021-05-15', '2021-08-24', 18037),
(663008899, 'Karla Paulette Flores Silva', 17, 'F', 57, '2021-06-03', '2021-07-17', 17011),
(663293662, 'Ruth Silvana Cortes Lagunes', 19, 'F', 203, '2021-04-01', '2021-09-08', 18037),
(686888447, 'Ariana  De Jesus Ramos', 25, 'F', 75, '2021-05-30', '2021-09-16', 18037),
(701219375, 'Daniela Ivette  Vega Hernandez', 45, 'F', 153, '2021-04-11', '2021-07-27', 17043),
(713819625, 'Rosa Luz  Zamora Peinado', 15, 'F', 12, '2021-02-23', '2021-08-01', 18037),
(719828650, 'Maria Maximov Cortes', 29, 'F', 250, '2021-06-09', '2021-08-04', 17011),
(735947985, 'Adriana Azzeneth  Ortega Romero', 24, 'F', 162, '2021-05-29', '2021-07-30', 18037),
(744486361, 'Julia Andrea Lunar Perez', 27, 'F', 5, '2021-03-13', '2021-08-30', 17011),
(745889549, 'Jaime Francisco Aguayo Gonzalez', 37, 'M', 260, '2021-05-24', '2021-08-11', 17043),
(745896123, 'Marlon Daniel Rodriguez Mejia', 18, 'M', 13, '2021-06-18', '2021-07-29', 17011),
(757112542, 'Mitzi Guadalupe  Saldivar Omaña', 46, 'F', 106, '2021-03-24', '2021-09-26', 17043),
(768426915, 'Almiranda Sofia Pineda Morales', 16, 'F', 1, '2021-06-16', NULL, 17011),
(789123456, 'Maria Jose Lopez Avelar', 19, 'F', 11, '2021-05-03', '2021-06-14', 17043),
(795595779, 'Pablo Yamild Rosiles Loeza', 39, 'M', 126, '2021-03-02', '2021-07-19', 18037),
(800084442, 'Jose Ignacio Gomez Vargas', 55, 'M', 94, '2021-03-23', '2021-07-24', 17011),
(811554231, 'Montserrat Carolina Garcia Arreguin', 27, 'F', 152, '2021-04-21', '2021-08-16', 18037),
(826459713, 'Lorena Rosibel Rodriguez Aparicio', 35, 'F', 8, '2021-05-05', '2021-06-27', 17043),
(848129688, 'Erandhi Claudel Ornelas Guzman', 24, 'F', 71, '2021-06-19', '2021-09-26', 17011),
(869348665, 'Luis Fernando Herrera Arias', 55, 'M', 33, '2021-05-05', '2021-08-10', 17011),
(883890718, 'Mariana Sanchez Cid', 37, 'F', 197, '2021-06-20', '2021-09-16', 17011),
(887430507, 'Miguel Alejandro Guerrero Padres', 19, 'M', 116, '2021-03-19', '2021-09-03', 17011),
(913717511, 'Aniyensy Sarai Flores Aguilar', 25, 'F', 47, '2021-05-29', '2021-08-27', 17011),
(928653147, 'Carlos Alexander Hernandez Martinez', 34, 'M', 41, '2021-06-18', NULL, 17043),
(952189542, 'Alejandra Berenice Perez Moreno', 39, 'F', 59, '2021-03-17', '2021-09-21', 17011),
(963852741, 'Karla Paola Martinez Santamaria', 19, 'F', 16, '2021-05-19', '2021-06-01', 18037);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VACUNACION`
--

CREATE TABLE IF NOT EXISTS `VACUNACION` (
  `IDCENTRO` int(11) DEFAULT NULL,
  `DUI` int(11) NOT NULL,
  `DOSIS` int(11) NOT NULL,
  `IDVACUNACION` int(11) NOT NULL,
  `FECHA_APLICACION` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ADMINISTRADOR`
--
ALTER TABLE `ADMINISTRADOR`
 ADD PRIMARY KEY (`CODIGO`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`), ADD KEY `auth_group_permissions_0e939a4f` (`group_id`), ADD KEY `auth_group_permissions_8373b171` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`), ADD KEY `auth_permission_417f1b1c` (`content_type_id`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`group_id`), ADD KEY `auth_user_groups_e8701ad4` (`user_id`), ADD KEY `auth_user_groups_0e939a4f` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permissions_e8701ad4` (`user_id`), ADD KEY `auth_user_user_permissions_8373b171` (`permission_id`);

--
-- Indices de la tabla `CENTROVACUNACION`
--
ALTER TABLE `CENTROVACUNACION`
 ADD PRIMARY KEY (`IDCENTRO`), ADD KEY `FK_UBICADO` (`IDMUNICIPIO`);

--
-- Indices de la tabla `DEPARTAMENTO`
--
ALTER TABLE `DEPARTAMENTO`
 ADD PRIMARY KEY (`IDDEPARTAMENTO`), ADD KEY `FK_PERTENECE2` (`IDMUNICIPIO`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_417f1b1c` (`content_type_id`), ADD KEY `django_admin_log_e8701ad4` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indices de la tabla `MUNICIPIO`
--
ALTER TABLE `MUNICIPIO`
 ADD PRIMARY KEY (`IDMUNICIPIO`), ADD KEY `FK_PERTENECE` (`IDDEPARTAMENTO`);

--
-- Indices de la tabla `PACIENTE`
--
ALTER TABLE `PACIENTE`
 ADD PRIMARY KEY (`DUI`), ADD UNIQUE KEY `DUI` (`DUI`), ADD KEY `FK_REGISTRA` (`CODIGO`), ADD KEY `FK_RESIDE` (`IDMUNICIPIO`);

--
-- Indices de la tabla `VACUNACION`
--
ALTER TABLE `VACUNACION`
 ADD PRIMARY KEY (`IDVACUNACION`), ADD KEY `FK_VACUNACION` (`IDCENTRO`), ADD KEY `FK_VACUNADO` (`DUI`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
ADD CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `CENTROVACUNACION`
--
ALTER TABLE `CENTROVACUNACION`
ADD CONSTRAINT `FK_UBICADO` FOREIGN KEY (`IDMUNICIPIO`) REFERENCES `MUNICIPIO` (`IDMUNICIPIO`);

--
-- Filtros para la tabla `DEPARTAMENTO`
--
ALTER TABLE `DEPARTAMENTO`
ADD CONSTRAINT `FK_PERTENECE2` FOREIGN KEY (`IDMUNICIPIO`) REFERENCES `MUNICIPIO` (`IDMUNICIPIO`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
ADD CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `MUNICIPIO`
--
ALTER TABLE `MUNICIPIO`
ADD CONSTRAINT `FK_PERTENECE` FOREIGN KEY (`IDDEPARTAMENTO`) REFERENCES `DEPARTAMENTO` (`IDDEPARTAMENTO`);

--
-- Filtros para la tabla `PACIENTE`
--
ALTER TABLE `PACIENTE`
ADD CONSTRAINT `FK_REGISTRA` FOREIGN KEY (`CODIGO`) REFERENCES `ADMINISTRADOR` (`CODIGO`),
ADD CONSTRAINT `FK_RESIDE` FOREIGN KEY (`IDMUNICIPIO`) REFERENCES `MUNICIPIO` (`IDMUNICIPIO`);

--
-- Filtros para la tabla `VACUNACION`
--
ALTER TABLE `VACUNACION`
ADD CONSTRAINT `FK_VACUNACION` FOREIGN KEY (`IDCENTRO`) REFERENCES `CENTROVACUNACION` (`IDCENTRO`),
ADD CONSTRAINT `FK_VACUNADO` FOREIGN KEY (`DUI`) REFERENCES `PACIENTE` (`DUI`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
