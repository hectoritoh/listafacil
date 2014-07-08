-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2014 a las 10:43:53
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `lista_facil_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `descripcion` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borrado` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `nombre`, `url`, `descripcion`, `borrado`, `created_at`, `updated_at`) VALUES
(1, 'Banner', '53f0f9d_slider1_1.jpg', NULL, 0, '2014-04-07 22:55:42', '2014-04-07 23:05:59'),
(2, 'Utiles Escolares', 'b25ce15_slider2_1.jpg', 'Utiles escolares de todo tipo , y listas completas pro colegios a su alcance .', 0, '2014-04-07 22:56:22', '2014-04-07 23:06:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borrado` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripcion`, `borrado`, `created_at`, `updated_at`) VALUES
(1, 'Marcadores & Borrador Pizarra', 'Marcadores & Borrador Pizarra', 0, '2014-04-04 20:15:39', '2014-04-04 20:15:39'),
(2, 'Lápiz - Portaminas', 'Lápiz - Portaminas', 0, '2014-04-04 20:16:09', '2014-04-04 20:16:09'),
(3, 'Tijeras ,Pistola Silicon ,Tachu', 'Tijeras,Pistola Silicon,Tachu', 0, '2014-04-04 20:20:24', '2014-04-04 20:20:24'),
(4, 'Crayones', 'Crayones', 0, '2014-04-04 20:16:44', '2014-04-04 20:16:44'),
(5, 'Marcadores Pinturas', 'Marcadores Pinturas', 0, '2014-04-04 20:16:57', '2014-04-04 20:16:57'),
(6, 'Manualidades', 'Manualidades', 0, '2014-04-04 20:17:08', '2014-04-04 20:17:08'),
(7, 'Goma-Silicon', 'Goma-Silicon', 0, '2014-04-04 20:17:18', '2014-04-04 20:17:18'),
(8, 'Juegos Geometricos+Compas', 'Juegos Geometricos+Compas', 0, '2014-04-04 20:17:29', '2014-04-04 20:17:29'),
(9, 'Plastilinas-masas', 'Plastilinas-masas', 0, '2014-04-04 20:17:44', '2014-04-04 20:17:44'),
(10, 'Tempera-acuarelas-Dedos', 'Tempera-acuarelas-Dedos', 0, '2014-04-04 20:17:56', '2014-04-04 20:17:56'),
(11, 'Accesorios Oficina', 'Accesorios Oficina', 0, '2014-04-04 20:18:11', '2014-04-04 20:18:11'),
(12, 'Suministros Oficina', 'Suministros Oficina', 0, '2014-04-04 20:18:23', '2014-04-04 20:18:23'),
(13, 'Lápiz de Colores', 'Lápiz de Colores', 0, '2014-04-04 20:18:33', '2014-04-04 20:18:33'),
(14, 'Tableros & pizarras-didactico', 'Tableros & pizarras-didactico', 0, '2014-04-04 20:18:47', '2014-04-04 20:18:47'),
(15, 'Formatos Fomix', 'Formatos Fomix', 0, '2014-04-04 20:19:01', '2014-04-04 20:19:01'),
(16, 'Hojas,Sobre,Separadores,Protec', 'Hojas,Sobre,Separadores,Protec', 0, '2014-04-04 20:19:14', '2014-04-04 20:19:14'),
(17, 'Boligrafos', 'Boligrafos', 0, '2014-04-04 20:19:26', '2014-04-04 20:19:26'),
(18, 'Formato papel&Cartulina', 'Formato papel&Cartulina', 0, '2014-04-04 20:19:40', '2014-04-04 20:19:40'),
(19, 'Archivadores&Carpetas', 'Archivadores&Carpetas', 0, '2014-04-04 20:19:53', '2014-04-04 20:19:53'),
(20, 'Calculadoras', 'Calculadoras', 0, '2014-04-04 20:20:03', '2014-04-04 20:20:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE IF NOT EXISTS `comentario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `borrado` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_artsenal`
--

CREATE TABLE IF NOT EXISTS `contenido_artsenal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` int(11) NOT NULL,
  `titulo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenido` longtext COLLATE utf8_unicode_ci NOT NULL,
  `publicado` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_lista`
--

CREATE TABLE IF NOT EXISTS `detalle_lista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lista_id` int(11) DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_25E9A4B96736D68F` (`lista_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `detalle_lista`
--

INSERT INTO `detalle_lista` (`id`, `lista_id`, `nombre`, `precio`, `cantidad`, `created_at`, `updated_at`) VALUES
(8, 1, 'asdada', 12, 1, '2014-04-07 20:59:57', '2014-04-07 20:59:57'),
(9, 1, 'producto2', 34, 6, '2014-04-07 20:59:57', '2014-04-07 20:59:57'),
(10, 3, 'lapiz', 23, 3, '2014-04-07 22:15:30', '2014-04-07 22:15:30'),
(11, 3, 'regla', 3, 5, '2014-04-07 22:15:30', '2014-04-07 22:15:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `fos_user`
--

INSERT INTO `fos_user` (`id`, `nombres`, `apellidos`, `sexo`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, '', '', 0, 'admin', 'admin', 'misticalelf9@gmail.com', 'misticalelf9@gmail.com', 1, 'lovpd2o678ggsksck8cs4kccwgccowg', 'EbuBgrrGXRarfgUEwKeHQmGiWsJc6DveJ1d2yJbk5dD5OIdn9BEm9ZEXyCRnyLAwYNIy/D+qvDDedUgI4ACnlg==', '2014-04-11 09:25:02', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE IF NOT EXISTS `institucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borrado` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id`, `nombre`, `descripcion`, `borrado`, `created_at`, `updated_at`) VALUES
(1, 'Anai', 'Academia naval', 0, '2014-04-04 23:32:44', '2014-04-04 23:32:44'),
(2, '28 de mayo', 'colegio de mujeres', 0, '2014-04-04 23:33:03', '2014-04-04 23:33:03'),
(3, 'Otto Arosemena Gomez', 'Colegio fiscal', 0, '2014-04-04 23:33:34', '2014-04-04 23:33:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista`
--

CREATE TABLE IF NOT EXISTS `lista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institucion_id` int(11) DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borrado` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FB9FEEEDB239FBC6` (`institucion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `lista`
--

INSERT INTO `lista` (`id`, `institucion_id`, `nombre`, `descripcion`, `borrado`, `created_at`, `updated_at`) VALUES
(1, 1, '4 Fima', '4to Curso de fisico matematico', 0, '2014-04-04 23:45:45', '2014-04-04 23:45:45'),
(2, 2, '4 de Quibio', 'Descripcion', 0, '2014-04-06 16:29:40', '2014-04-06 16:30:01'),
(3, 2, 'lista nueva', '4 fimaD', 0, '2014-04-07 22:15:30', '2014-04-07 22:15:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `borrado` int(11) DEFAULT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `marca` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A7BB06153397707A` (`categoria_id`),
  KEY `search_idx` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=407 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `categoria_id`, `nombre`, `cantidad`, `precio`, `descripcion`, `borrado`, `imagen`, `created`, `updated`, `slug`, `marca`) VALUES
(151, 2, 'Lapiz bicolor 144DT x 12', 0, 0, '', 0, 'lapiz_bicolor_144dt_x_12.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '151_Lapiz_Bicolor_144dt_X_12', '\r'),
(152, 2, 'Lapiz bicolor 144DT master 168 Doc', 0, 0, '', 0, 'lapiz_bicolor_144dt_master_168_doc.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '152_Lapiz_Bicolor_144dt_Master_168_Doc', '\r'),
(153, 3, 'Tijera escolar punta redonda de 5 cm', 0, 0, '', 0, 'tijera_escolar_punta_redonda_de_5_cm.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '153_Tijera_Escolar_Punta_Redonda_De_5_Cm_Lancer', 'Lancer\r'),
(154, 3, 'Tijera escolar punta redonda de 5 cm', 0, 0, '', 0, 'tijera_escolar_punta_redonda_de_5_cm.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '154_Tijera_Escolar_Punta_Redonda_De_5_Cm_Jeff', 'Jeff\r'),
(155, 3, 'Tijera escolar punta redonda de 5 cm', 0, 0, '', 0, 'tijera_escolar_punta_redonda_de_5_cm.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '155_Tijera_Escolar_Punta_Redonda_De_5_Cm_Pelikan', 'Pelikan\r'),
(156, 3, 'Tijera Escolar para zurdos Pelikan', 0, 0, '', 0, 'tijera_escolar_para_zurdos_pelikan.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '156_Tijera_Escolar_Para_Zurdos_Pelikan_Pelikan', 'Pelikan\r'),
(157, 3, 'Pistola de silicon para barra delgada', 0, 0, '', 0, 'pistola_de_silicon_para_barra_delgada___gruesa.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '157_Pistola_De_Silicon_Para_Barra_Delgada', '\r'),
(158, 3, 'Pistola de silicon para barra gruesa', 0, 0, '', 0, 'pistola_de_silicon_para_barra_delgada___gruesa.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '158_Pistola_De_Silicon_Para_Barra_Gruesa', '\r'),
(159, 3, 'Tachuelas de doradas', 0, 0, '', 0, 'tachuelas_de_doradas___plateadas.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '159_Tachuelas_De_Doradas', '\r'),
(160, 3, 'Tachuelas de plateadas', 0, 0, '', 0, 'tachuelas_de_doradas___plateadas.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '160_Tachuelas_De_Plateadas', '\r'),
(161, 3, 'Tachuelas de colores (Cajas)', 0, 0, '', 0, 'tachuelas_de_colores_(cajas).jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '161_Tachuelas_De_Colores_Cajas', '\r'),
(162, 6, 'Escarcha en blister x 12 V/C Carioca', 0, 0, '', 0, 'escarcha_en_blister_x_12_v_c_carioca.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '162_Escarcha_En_Blister_X_12_V_C_Carioca_Carioca', 'Carioca\r'),
(163, 10, 'Acuarela Economica x 8 Carioca', 0, 0, '', 0, 'acuarela_economica_x_8_carioca.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:33', '163_Acuarela_Economica_X_8_Carioca_Carioca', 'Carioca\r'),
(164, 10, 'Acuarela Steadtler 888 ', 0, 0, '', 0, 'acuarela_steadtler_888.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '164_Acuarela_Steadtler_888_Steadtler', 'Steadtler\r'),
(165, 10, 'Acuarela Pelikan ', 0, 0, '', 0, 'acuarela_pelikan.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '165_Acuarela_Pelikan_Pelikan', 'Pelikan\r'),
(166, 11, 'Clips Mariposa Artesco 50 pzas', 0, 0, '', 0, 'clips_mariposa_artesco_50_pzas.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '166_Clips_Mariposa_Artesco_50_Pzas_Artesco', 'Artesco\r'),
(167, 11, 'Almohadilla para tinta Lancer', 0, 0, '', 0, 'almohadilla_para_tinta_lancer.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '167_Almohadilla_Para_Tinta_Lancer_Lancer', 'Lancer\r'),
(168, 11, 'Almohadilla para tinta Pelikan', 0, 0, '', 0, 'almohadilla_para_tinta_pelikan.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '168_Almohadilla_Para_Tinta_Pelikan_Pelikan', 'Pelikan\r'),
(169, 14, 'Abacos con pizarra de 50 bolas Marcarpintero', 0, 0, '', 0, 'abacos_con_pizarra_marcarpintero_(50_bolas_con_pizarra).jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '169_Abacos_Con_Pizarra_De_50_Bolas_Marcarpintero', '\r'),
(170, 14, 'Abacos con pizarra de 100 bolas Marcarpintero', 0, 0, '', 0, 'abaco_circular_–_marcarpintero.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '170_Abacos_Con_Pizarra_De_100_Bolas_Marcarpintero', '\r'),
(171, 14, 'Abacos sin pizarra de 100 bolas Marcarpintero', 0, 0, '', 0, 'abacos_sin_pizarra_marcarpintero.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '171_Abacos_Sin_Pizarra_De_100_Bolas_Marcarpintero', '\r'),
(172, 15, 'Fomix 115x60cm AZU 2945U', 0, 0, '', 0, '101fomix_azul_2945u.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '172_Fomix_115x60cm_Azu_2945u', '\r'),
(173, 19, 'Archivador T/O 7 CM', 0, 0, '', 0, 'archivador_tamaño_oficio_7cm.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '173_Archivador_T_O_7_Cm_Cm', 'CM\r'),
(174, 19, 'Archivador T/Telegrama', 0, 0, '', 0, 'archivador_telegrama.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '174_Archivador_T_Telegrama', '\r'),
(175, 19, 'Archivador T/O 5 CM', 0, 0, '', 0, 'archivador_tamaño_oficio_5cm.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '175_Archivador_T_O_5_Cm_Cm', 'CM\r'),
(176, 19, 'Archivador UNICO T/O 7cm ', 0, 0, '', 0, 'archivador_único_de_7cm.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '176_Archivador_Unico_T_O_7cm', '\r'),
(177, 19, 'Archivador UNICO T/Telegrama 7cm ', 0, 0, '', 0, 'archivador_único_de_7cm.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:34', '177_Archivador_Unico_T_Telegrama_7cm', '\r'),
(178, 19, 'Archivador UNICO T/Memorandum 7cm ', 0, 0, '', 0, 'archivador_único_de_7cm.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '178_Archivador_Unico_T_Memorandum_7cm', '\r'),
(179, 19, 'Archivador combinado con elastico 13 division', 0, 0, '', 0, 'archivador_combinado_con_elástico_–_13_divisiones.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '179_Archivador_Combinado_Con_Elastico_13_Division', '\r'),
(180, 19, 'Archivador con elastico 13 divisiones + Bolsi', 0, 0, '', 0, 'archivador_con_elástico_13_divisiones_+_bolsillo_de_cd', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '180_Archivador_Con_Elastico_13_Divisiones_Bolsi', '\r'),
(181, 20, 'CALCULADORA C/IMPRESORA CASIO DR-T220WE 12 DG', 0, 0, '', 0, 'calculadora_c_impresora_casio_dr_t220we.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '181_Calculadora_C_Impresora_Casio_Dr_T220we_12_Dg_Casio', 'Casio\r'),
(182, 20, 'CALCULADORA C/IMPRESORA CASIO HR-8TM-BK', 0, 0, '', 0, 'calculadora_c_impresora_casio_hr_8tm_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '182_Calculadora_C_Impresora_Casio_Hr_8tm_Bk_Casio', 'Casio\r'),
(183, 20, 'CALCULADORA C/IMPRESORA CASIO HR-8TM-GY-A', 0, 0, '', 0, 'calculadora_c_impresora_casio_hr_8tm.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '183_Calculadora_C_Impresora_Casio_Hr_8tm_Gy_A_Casio', 'Casio\r'),
(184, 20, 'CALCULADORA C/IMPRESORA CASIO HR-150TM-BK    ', 0, 0, '', 0, 'calculadora_c_impresora_casio_hr_150tm_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '184_Calculadora_C_Impresora_Casio_Hr_150tm_Bk_Casio', 'Casio\r'),
(185, 20, 'CALCULADORA CASIO  SL-100VC-BU-S', 0, 0, '', 0, 'calculadora_casio_sl_100vc_bu_s.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '185_Calculadora_Casio_Sl_100vc_Bu_S_Casio', 'Casio\r'),
(186, 20, 'CALCULADORA CASIO  SL-100VC-OE-S', 0, 0, '', 0, 'calculadora_casio_sl_100vc_oe_s.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '186_Calculadora_Casio_Sl_100vc_Oe_S_Casio', 'Casio\r'),
(187, 20, 'CALCULADORA CASIO ALGEBRA FX 2.0 PLUS', 0, 0, '', 0, 'calculadora_casio_algebra_fx_2.0_plus.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '187_Calculadora_Casio_Algebra_Fx_2_0_Plus_Casio', 'Casio\r'),
(188, 20, 'CALCULADORA CASIO C/IMPRESORA DR-120LB', 0, 0, '', 0, 'calculadora_casio_c_impresora_dr_120lb.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '188_Calculadora_Casio_C_Impresora_Dr_120lb_Casio', 'Casio\r'),
(189, 20, 'CALCULADORA CASIO C/IMPRESORA HR-100TM-BK', 0, 0, '', 0, 'calculadora_casio_c_impresora_hr_100tm_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '189_Calculadora_Casio_C_Impresora_Hr_100tm_Bk_Casio', 'Casio\r'),
(190, 20, 'CALCULADORA CASIO C/IMPRESORA HR-8TM-RD', 0, 0, '', 0, 'calculadora_casio_c_impresora_hr_8tm_rd.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '190_Calculadora_Casio_C_Impresora_Hr_8tm_Rd_Casio', 'Casio\r'),
(191, 20, 'CALCULADORA CASIO CIENTIFICA FX-3650P', 0, 0, '', 0, 'calculadora_casio_cientifica_fx_3650p.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '191_Calculadora_Casio_Cientifica_Fx_3650p_Casio', 'Casio\r'),
(192, 20, 'CALCULADORA CASIO CIENTIFICA FX-4500PA', 0, 0, '', 0, 'calculadora_casio_cientifica_fx_4500pa.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '192_Calculadora_Casio_Cientifica_Fx_4500pa_Casio', 'Casio\r'),
(193, 20, 'CALCULADORA CASIO CIENTIFICA FX-65', 0, 0, '', 0, 'calculadora_casio_científica_fx_65.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '193_Calculadora_Casio_Cientifica_Fx_65_Casio', 'Casio\r'),
(194, 20, 'CALCULADORA CASIO CIENTIFICA FX-820MS', 0, 0, '', 0, 'calculadora_casio_cientifica_fx_820ms.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '194_Calculadora_Casio_Cientifica_Fx_820ms_Casio', 'Casio\r'),
(195, 20, 'CALCULADORA CASIO CIENTIFICA FX-82ES PLUS BK', 0, 0, '', 0, 'calculadora_casio_cientifica_fx_82es_plus_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:35', '195_Calculadora_Casio_Cientifica_Fx_82es_Plus_Bk_Casio', 'Casio\r'),
(196, 20, 'CALCULADORA CASIO CIENTIFICA FX-82ES PLUS WE', 0, 0, '', 0, 'calculadora_casio_cientifica_fx_82es_plus_we.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '196_Calculadora_Casio_Cientifica_Fx_82es_Plus_We_Casio', 'Casio\r'),
(197, 20, 'CALCULADORA CASIO CIENTIFICA FX-85ES', 0, 0, '', 0, 'calculadora_casio_cientifica_fx_85es.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '197_Calculadora_Casio_Cientifica_Fx_85es_Casio', 'Casio\r'),
(198, 20, 'CALCULADORA CASIO CIENTIFICA FX-95MS', 0, 0, '', 0, 'calculadora_casio_cientifica_fx_95ms.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '198_Calculadora_Casio_Cientifica_Fx_95ms_Casio', 'Casio\r'),
(199, 20, 'CALCULADORA CASIO CIENTIFICA FX-991MS', 0, 0, '', 0, 'calculadora_casio_cientifica_fx_991ms.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '199_Calculadora_Casio_Cientifica_Fx_991ms_Casio', 'Casio\r'),
(200, 20, 'CALCULADORA CASIO CIENTIFICA/FINANCIERA CLASS', 0, 0, '', 0, 'calculadora_casio_cientifica_financiera_classpad300_macoser.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '200_Calculadora_Casio_Cientifica_Financiera_Class_Casio', 'Casio\r'),
(201, 20, 'CALCULADORA CASIO CIENTIFICA/GRAFICA BACH. IN', 0, 0, '', 0, 'calculadora_casio_científica_gráfica_fx_9860gslim.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '201_Calculadora_Casio_Cientifica_Grafica_Bach_In_Casio', 'Casio\r'),
(202, 20, 'CALCULADORA CASIO CIENTIFICA/GRAFICA FX-9750G', 0, 0, '', 0, 'calculadora_casio_cientifica_grafica_fx_9750gii.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '202_Calculadora_Casio_Cientifica_Grafica_Fx_9750g_Casio', 'Casio\r'),
(203, 20, 'CALCULADORA CASIO CIENTIFICA/GRAFICA V/COLORE', 0, 0, '', 0, 'calculadora_casio_científica_gráfica_v_colores_cfx_9850g.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '203_Calculadora_Casio_Cientifica_Grafica_V_Colore_Casio', 'Casio\r'),
(204, 20, 'CALCULADORA CASIO CIENTIFICA/PROGRAMABLE FX-5', 0, 0, '', 0, 'calculadora_casio_científica_programable_fx_5500l.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '204_Calculadora_Casio_Cientifica_Programable_Fx_5_Casio', 'Casio\r'),
(205, 20, 'CALCULADORA CASIO DE BOLSILLO SL-300LV', 0, 0, '', 0, 'calculadora_casio_de_bolsillo_sl_300lv.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '205_Calculadora_Casio_De_Bolsillo_Sl_300lv_Casio', 'Casio\r'),
(206, 20, 'CALCULADORA CASIO DE BOLSILLO SL-760LB-BK', 0, 0, '', 0, 'calculadora_casio_de_bolsillo_sl_760lb_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '206_Calculadora_Casio_De_Bolsillo_Sl_760lb_Bk_Casio', 'Casio\r'),
(207, 20, 'CALCULADORA CASIO DE BOLSILLO SL-787LT-GD', 0, 0, '', 0, 'calculadora_casio_de_bolsillo_sl_787lt_gd.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '207_Calculadora_Casio_De_Bolsillo_Sl_787lt_Gd_Casio', 'Casio\r'),
(208, 20, 'CALCULADORA CASIO DE MESA DF-120TE', 0, 0, '', 0, 'calculadora_casio_de_mesa_df_120te.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '208_Calculadora_Casio_De_Mesa_Df_120te_Casio', 'Casio\r'),
(209, 20, 'CALCULADORA CASIO DE MESA DX-12V', 0, 0, '', 0, 'calculadora_casio_de_mesa_dx_12v.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '209_Calculadora_Casio_De_Mesa_Dx_12v_Casio', 'Casio\r'),
(210, 20, 'CALCULADORA CASIO DE MESA MX-12V', 0, 0, '', 0, 'calculadora_casio_de_mesa_mx_12v.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '210_Calculadora_Casio_De_Mesa_Mx_12v_Casio', 'Casio\r'),
(211, 20, 'CALCULADORA CASIO ELECTRICA FR-2650T', 0, 0, '', 0, 'calculadora_casio_electrica_fr_2650t.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '211_Calculadora_Casio_Electrica_Fr_2650t_Casio', 'Casio\r'),
(212, 20, 'CALCULADORA CASIO FINANCIERA FC-100V', 0, 0, '', 0, 'calculadora_casio_financiera_fc_100v.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '212_Calculadora_Casio_Financiera_Fc_100v_Casio', 'Casio\r'),
(213, 20, 'CALCULADORA CASIO FINANCIERA FC-200V', 0, 0, '', 0, 'calculadora_casio_financiera_fc_200v.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '213_Calculadora_Casio_Financiera_Fc_200v_Casio', 'Casio\r'),
(214, 20, 'CALCULADORA CASIO LC-403TV-W', 0, 0, '', 0, 'calculadora_casio_lc_403tv_w.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '214_Calculadora_Casio_Lc_403tv_W_Casio', 'Casio\r'),
(215, 20, 'CALCULADORA CASIO MS -10VC ANARANJADO', 0, 0, '', 0, 'calculadora_casio_ms__10vc_anaranjado.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '215_Calculadora_Casio_Ms_10vc_Anaranjado_Casio', 'Casio\r'),
(216, 20, 'CALCULADORA CASIO MS -5VC-GN VERDE', 0, 0, '', 0, 'calculadora_casio_ms__5vc_gn_verde.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '216_Calculadora_Casio_Ms_5vc_Gn_Verde_Casio', 'Casio\r'),
(217, 20, 'CALCULADORA CASIO MS -5VC-PK ROSADO', 0, 0, '', 0, 'calculadora_casio_ms__5vc_pk_rosado.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '217_Calculadora_Casio_Ms_5vc_Pk_Rosado_Casio', 'Casio\r'),
(218, 20, 'CALCULADORA CASIO MS-10VC-BU  AZUL', 0, 0, '', 0, 'calculadora_casio_ms_10vc_bu_azul.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '218_Calculadora_Casio_Ms_10vc_Bu_Azul_Casio', 'Casio\r'),
(219, 20, 'CALCULADORA CASIO MS-10VC-GN  VERDE', 0, 0, '', 0, 'calculadora_casio_ms_10vc_gn_verde.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '219_Calculadora_Casio_Ms_10vc_Gn_Verde_Casio', 'Casio\r'),
(220, 20, 'CALCULADORA CASIO MS-8TV-WA', 0, 0, '', 0, 'calculadora_casio_ms_8tv_wa.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '220_Calculadora_Casio_Ms_8tv_Wa_Casio', 'Casio\r'),
(221, 20, 'CALCULADORA CASIO SL-300VC-PL PURPURA', 0, 0, '', 0, 'calculadora_casio_sl_300vc_pl_purpura.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '221_Calculadora_Casio_Sl_300vc_Pl_Purpura_Casio', 'Casio\r'),
(222, 20, 'CALCULADORA CIENTIFICA CASIO FX-100MS', 0, 0, '', 0, 'calculadora_cientifica_casio_fx_100ms.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '222_Calculadora_Cientifica_Casio_Fx_100ms_Casio', 'Casio\r'),
(223, 20, 'CALCULADORA CIENTIFICA CASIO FX-350 ES', 0, 0, '', 0, 'calculadora_cientifica_casio_fx_350_es.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '223_Calculadora_Cientifica_Casio_Fx_350_Es_Casio', 'Casio\r'),
(224, 20, 'CALCULADORA CIENTIFICA CASIO FX-350ES PLUS', 0, 0, '', 0, 'calculadora_cientifica_casio_fx_350es_plus.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:36', '224_Calculadora_Cientifica_Casio_Fx_350es_Plus_Casio', 'Casio\r'),
(225, 20, 'CALCULADORA CIENTIFICA CASIO FX-500 ES', 0, 0, '', 0, 'calculadora_cientifica_casio_fx_500_es.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '225_Calculadora_Cientifica_Casio_Fx_500_Es_Casio', 'Casio\r'),
(226, 20, 'CALCULADORA CIENTIFICA CASIO FX-570ES PLUS', 0, 0, '', 0, 'calculadora_cientifica_casio_fx_570es_plus.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '226_Calculadora_Cientifica_Casio_Fx_570es_Plus_Casio', 'Casio\r'),
(227, 20, 'CALCULADORA CIENTIFICA CASIO FX-85ES PLUS', 0, 0, '', 0, 'calculadora_cientifica_casio_fx_85es_plus.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '227_Calculadora_Cientifica_Casio_Fx_85es_Plus_Casio', 'Casio\r'),
(228, 20, 'CALCULADORA CIENTIFICA CASIO FX-901', 0, 0, '', 0, 'calculadora_científica_casio_fx_901.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '228_Calculadora_Cientifica_Casio_Fx_901_Casio', 'Casio\r'),
(229, 20, 'CALCULADORA CIENTIFICA CASIO FX-95ESPLUS-BK  ', 0, 0, '', 0, 'calculadora_científica_casio_fx_95esplus_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '229_Calculadora_Cientifica_Casio_Fx_95esplus_Bk_Casio', 'Casio\r'),
(230, 20, 'CALCULADORA CIENTIFICA CASIO FX-991ES PLUS', 0, 0, '', 0, 'calculadora_cientifica_casio_fx_991es_plus.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '230_Calculadora_Cientifica_Casio_Fx_991es_Plus_Casio', 'Casio\r'),
(231, 20, 'CALCULADORA CIENTIFICA CASIO FX-350ESPLUS-BK ', 0, 0, '', 0, 'calculadora_científica_casio_fx_350esplus_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '231_Calculadora_Cientifica_Casio_Fx_350esplus_Bk_Casio', 'Casio\r'),
(232, 20, 'CALCULADORA CIENTIFICA CASIO FX-570ESPLUS-SR ', 0, 0, '', 0, 'calculadora_científica_casio_fx_570esplus_sr.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '232_Calculadora_Cientifica_Casio_Fx_570esplus_Sr_Casio', 'Casio\r'),
(233, 20, 'CALCULADORA CIENTIFICA CASIO FX-82ES         ', 0, 0, '', 0, 'calculadora_científica_casio_fx_82es.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '233_Calculadora_Cientifica_Casio_Fx_82es_Casio', 'Casio\r'),
(234, 20, 'CALCULADORA CIENTIFICA CASIO FX-85ESPLUS-BK  ', 0, 0, '', 0, 'calculadora_científica_casio_fx_85esplus_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '234_Calculadora_Cientifica_Casio_Fx_85esplus_Bk_Casio', 'Casio\r'),
(235, 20, 'CALCULADORA CIENTIFICA CASIO FX-991ESPLUS-SR ', 0, 0, '', 0, 'calculadora_científica_casio_fx_991esplus_sr.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '235_Calculadora_Cientifica_Casio_Fx_991esplus_Sr_Casio', 'Casio\r'),
(236, 20, 'CALCULADORA CIENTIFICA/FINANCIERA CASIO CLASS', 0, 0, '', 0, 'calculadora_científica_financiera_casio_classpad_330.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '236_Calculadora_Cientifica_Financiera_Casio_Class_Casio', 'Casio\r'),
(237, 20, 'CALCULADORA CITIZEN  TDS-2000', 0, 0, '', 0, 'calculadora_citizen_tds_2000.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '237_Calculadora_Citizen_Tds_2000_Citizen', 'Citizen\r'),
(238, 20, 'CALCULADORA DE BOLSILLO CASIO HL-100LB       ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_hl_100lb.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '238_Calculadora_De_Bolsillo_Casio_Hl_100lb_Casio', 'Casio\r'),
(239, 20, 'CALCULADORA DE BOLSILLO CASIO HL-815L-WE     ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_hl_815l_we.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '239_Calculadora_De_Bolsillo_Casio_Hl_815l_We_Casio', 'Casio\r'),
(240, 20, 'CALCULADORA DE BOLSILLO CASIO HL-820LV-WE    ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_hl_820lv_we.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:37', '240_Calculadora_De_Bolsillo_Casio_Hl_820lv_We_Casio', 'Casio\r'),
(241, 20, 'CALCULADORA DE BOLSILLO CASIO HL-820VA       ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_hl_820va.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '241_Calculadora_De_Bolsillo_Casio_Hl_820va_Casio', 'Casio\r'),
(242, 20, 'CALCULADORA DE BOLSILLO CASIO SL-200TE       ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_sl_200te.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '242_Calculadora_De_Bolsillo_Casio_Sl_200te_Casio', 'Casio\r'),
(243, 20, 'CALCULADORA DE BOLSILLO CASIO SL-210TE       ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_sl_210te.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '243_Calculadora_De_Bolsillo_Casio_Sl_210te_Casio', 'Casio\r'),
(244, 20, 'CALCULADORA DE BOLSILLO CASIO SL-787TV-BK-W', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_sl_787tv_bk_w.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '244_Calculadora_De_Bolsillo_Casio_Sl_787tv_Bk_W_Casio', 'Casio\r'),
(245, 20, 'CALCULADORA DE BOLSILLO CASIO SL-797TV-BK', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_sl_797tv_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '245_Calculadora_De_Bolsillo_Casio_Sl_797tv_Bk_Casio', 'Casio\r'),
(246, 20, 'CALCULADORA DE BOLSILLO CASIO SL-797TV-GD', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_sl_797tv_gd.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '246_Calculadora_De_Bolsillo_Casio_Sl_797tv_Gd_Casio', 'Casio\r'),
(247, 20, 'CALCULADORA DE BOLSILLO CASIO SX-300         ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_sx_300.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '247_Calculadora_De_Bolsillo_Casio_Sx_300_Casio', 'Casio\r'),
(248, 20, 'CALCULADORA DE BOLSILLO CASIO HL-4A          ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_hl_4a.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '248_Calculadora_De_Bolsillo_Casio_Hl_4a_Casio', 'Casio\r'),
(249, 20, 'CALCULADORA DE BOLSILLO CASIO HL-820LV-BK    ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_hl_820lv_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '249_Calculadora_De_Bolsillo_Casio_Hl_820lv_Bk_Casio', 'Casio\r'),
(250, 20, 'CALCULADORA DE BOLSILLO CASIO SL-220TE       ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_sl_220te.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '250_Calculadora_De_Bolsillo_Casio_Sl_220te_Casio', 'Casio\r'),
(251, 20, 'CALCULADORA DE BOLSILLO CASIO SX-300P        ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_sx_300p.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '251_Calculadora_De_Bolsillo_Casio_Sx_300p_Casio', 'Casio\r'),
(252, 20, 'CALCULADORA DE BOLSILLO CASIO SX-320P        ', 0, 0, '', 0, 'calculadora_de_bolsillo_casio_sx_320p.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '252_Calculadora_De_Bolsillo_Casio_Sx_320p_Casio', 'Casio\r'),
(253, 20, 'CALCULADORA DE ESCRITORIO CASIO GX-14S', 0, 0, '', 0, 'calculadora_de_escritorio_casio_gx_14s.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '253_Calculadora_De_Escritorio_Casio_Gx_14s_Casio', 'Casio\r'),
(254, 20, 'CALCULADORA DE MESA CASIO 10 DIGITOS', 0, 0, '', 0, 'calculadora_de_mesa_casio_10_digitos.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '254_Calculadora_De_Mesa_Casio_10_Digitos_Casio', 'Casio\r'),
(255, 20, 'CALCULADORA DE MESA CASIO 12 DIGITOS', 0, 0, '', 0, 'calculadora_de_mesa_casio_12_digitos.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '255_Calculadora_De_Mesa_Casio_12_Digitos_Casio', 'Casio\r'),
(256, 20, 'CALCULADORA DE MESA CASIO 12 DIGITOS AX-120TV', 0, 0, '', 0, 'calculadora_de_mesa_casio_12_digitos_ax_120tv.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '256_Calculadora_De_Mesa_Casio_12_Digitos_Ax_120tv_Casio', 'Casio\r'),
(257, 20, 'CALCULADORA DE MESA CASIO 12 DIGITOS  AX-120V', 0, 0, '', 0, 'calculadora_de_mesa_casio_12_digitos__ax_120v.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:38', '257_Calculadora_De_Mesa_Casio_12_Digitos_Ax_120v_Casio', 'Casio\r'),
(258, 20, 'CALCULADORA DE MESA CASIO AX-120S', 0, 0, '', 0, 'calculadora_de_mesa_casio_ax_120s.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '258_Calculadora_De_Mesa_Casio_Ax_120s_Casio', 'Casio\r'),
(259, 20, 'CALCULADORA DE MESA CASIO GX-125', 0, 0, '', 0, 'calculadora_de_mesa_casio_gx_125.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '259_Calculadora_De_Mesa_Casio_Gx_125_Casio', 'Casio\r'),
(260, 20, 'CALCULADORA DE MESA CASIO JW-200TV-BK', 0, 0, '', 0, 'calculadora_de_mesa_casio_jw_200tv_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '260_Calculadora_De_Mesa_Casio_Jw_200tv_Bk_Casio', 'Casio\r'),
(261, 20, 'CALCULADORA DE MESA CASIO JW-200TV-BR', 0, 0, '', 0, 'calculadora_de_mesa_casio_jw_200tv_br.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '261_Calculadora_De_Mesa_Casio_Jw_200tv_Br_Casio', 'Casio\r'),
(262, 20, 'CALCULADORA DE MESA CASIO JW-200TV-BU', 0, 0, '', 0, 'calculadora_de_mesa_casio_jw_200tv_bu.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '262_Calculadora_De_Mesa_Casio_Jw_200tv_Bu_Casio', 'Casio\r'),
(263, 20, 'CALCULADORA DE MESA CASIO JW-200TV-RD', 0, 0, '', 0, 'calculadora_de_mesa_casio_jw_200tv_rd.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '263_Calculadora_De_Mesa_Casio_Jw_200tv_Rd_Casio', 'Casio\r'),
(264, 20, 'CALCULADORA DE MESA CASIO JW-200TV-WE', 0, 0, '', 0, 'calculadora_de_mesa_casio_jw_200tv_we.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '264_Calculadora_De_Mesa_Casio_Jw_200tv_We_Casio', 'Casio\r'),
(265, 20, 'CALCULADORA DE MESA CASIO MX-120S', 0, 0, '', 0, 'calculadora_de_mesa_casio_mx_120s.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '265_Calculadora_De_Mesa_Casio_Mx_120s_Casio', 'Casio\r'),
(266, 20, 'CALCULADORA DE MESA CASIO MX-120V            ', 0, 0, '', 0, 'calculadora_de_mesa_casio_mx_120v.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '266_Calculadora_De_Mesa_Casio_Mx_120v_Casio', 'Casio\r'),
(267, 20, 'CALCULADORA DE MESA CASIO MX-8V-BK           ', 0, 0, '', 0, 'calculadora_de_mesa_casio_mx_8v_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '267_Calculadora_De_Mesa_Casio_Mx_8v_Bk_Casio', 'Casio\r'),
(268, 20, 'CALCULADORA DE MESA CASIO RT-7000-BK', 0, 0, '', 0, 'calculadora_de_mesa_casio_rt_7000_bk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '268_Calculadora_De_Mesa_Casio_Rt_7000_Bk_Casio', 'Casio\r'),
(269, 20, 'CALCULADORA DE MESA CASIO  MS-10VC WE', 0, 0, '', 0, 'calculadora_de_mesa_casio_ms_10vc_we.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '269_Calculadora_De_Mesa_Casio_Ms_10vc_We_Casio', 'Casio\r'),
(270, 20, 'CALCULADORA DE MESA CASIO  MS-10VC-PK', 0, 0, '', 0, 'calculadora_de_mesa_casio__ms_10vc_pk.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '270_Calculadora_De_Mesa_Casio_Ms_10vc_Pk_Casio', 'Casio\r'),
(271, 20, 'CALCULADORA DE MESA CASIO  MS-10VC-PL', 0, 0, '', 0, 'calculadora_de_mesa_casio__ms_10vc_pl.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '271_Calculadora_De_Mesa_Casio_Ms_10vc_Pl_Casio', 'Casio\r'),
(272, 20, 'CALCULADORA DE MESA CASIO  MS-10VC-RD ROJO', 0, 0, '', 0, 'calculadora_de_mesa_casio_ms_10vc_rd_rojo.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '272_Calculadora_De_Mesa_Casio_Ms_10vc_Rd_Rojo_Casio', 'Casio\r'),
(273, 20, 'CALCULADORA DE MESA CASIO  MS-10VC-YW', 0, 0, '', 0, 'calculadora_de_mesa_casio_ms_10vc_yw.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '273_Calculadora_De_Mesa_Casio_Ms_10vc_Yw_Casio', 'Casio\r'),
(274, 20, 'CALCULADORA DE MESA CASIO  SL-100VC-OE NARANJ', 0, 0, '', 0, 'calculadora_casio_sl_100vc_oe_s.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '274_Calculadora_De_Mesa_Casio_Sl_100vc_Oe_Naranj_Casio', 'Casio\r'),
(275, 20, 'CALCULADORA DE MESA CASIO  SL-300VC- BE AZUL ', 0, 0, '', 0, 'calculadora_de_mesa_casio__sl_300vc__be_azul_agua.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '275_Calculadora_De_Mesa_Casio_Sl_300vc_Be_Azul_Casio', 'Casio\r'),
(276, 20, 'CALCULADORA DE MESA CASIO  SL-300VC-BK NEGRO ', 0, 0, '', 0, 'calculadora_de_mesa_casio__sl_300vc_bk_negro.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '276_Calculadora_De_Mesa_Casio_Sl_300vc_Bk_Negro_Casio', 'Casio\r'),
(277, 20, 'CALCULADORA DE MESA CASIO  SL-300VC-GN VERDE', 0, 0, '', 0, 'calculadora_de_mesa_casio__sl_300vc_gn_verde.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:39', '277_Calculadora_De_Mesa_Casio_Sl_300vc_Gn_Verde_Casio', 'Casio\r'),
(278, 20, 'CALCULADORA DE MESA CASIO  SL-300VC-OE NARANJ', 0, 0, '', 0, 'calculadora_de_mesa_casio__sl_300vc_oe_naranja.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:40', '278_Calculadora_De_Mesa_Casio_Sl_300vc_Oe_Naranj_Casio', 'Casio\r'),
(279, 20, 'CALCULADORA DE MESA CASIO  SL-300VC-PK ROSADO', 0, 0, '', 0, 'calculadora_de_mesa_casio__sl_300vc_pk_rosado.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:40', '279_Calculadora_De_Mesa_Casio_Sl_300vc_Pk_Rosado_Casio', 'Casio\r'),
(280, 20, 'CALCULADORA DE MESA CASIO  SL-300VC-WE BLANCO', 0, 0, '', 0, 'calculadora_de_mesa_casio__sl_300vc_we_blanco.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:40', '280_Calculadora_De_Mesa_Casio_Sl_300vc_We_Blanco_Casio', 'Casio\r'),
(281, 20, 'CALCULADORA DE MESA CASIO DX-12S             ', 0, 0, '', 0, 'calculadora_de_mesa_casio_dx_12s.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:40', '281_Calculadora_De_Mesa_Casio_Dx_12s_Casio', 'Casio\r'),
(282, 20, 'CALCULADORA DE MESA CASIO MS-6VC-YW AMARILLO', 0, 0, '', 0, 'calculadora_de_mesa_casio_ms_6vc_yw_amarillo.jpg', '0000-00-00 00:00:00', '2014-04-11 10:34:40', '282_Calculadora_De_Mesa_Casio_Ms_6vc_Yw_Amarillo_Casio', 'Casio\r'),
(406, 1, 'producto prueba', 1, 1, '', 0, 'logos1.png', '2014-04-11 10:11:21', '2014-04-11 10:34:40', '406_Producto_Prueba_Marca_Prueba', 'marca prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_comentario`
--

CREATE TABLE IF NOT EXISTS `producto_comentario` (
  `producto_id` int(11) NOT NULL,
  `comentario_id` int(11) NOT NULL,
  PRIMARY KEY (`producto_id`,`comentario_id`),
  UNIQUE KEY `UNIQ_90DCBF61F3F2D7EC` (`comentario_id`),
  KEY `IDX_90DCBF617645698E` (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_imagen`
--

CREATE TABLE IF NOT EXISTS `producto_imagen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `borrado` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_lista`
--
ALTER TABLE `detalle_lista`
  ADD CONSTRAINT `FK_25E9A4B96736D68F` FOREIGN KEY (`lista_id`) REFERENCES `lista` (`id`);

--
-- Filtros para la tabla `lista`
--
ALTER TABLE `lista`
  ADD CONSTRAINT `FK_FB9FEEEDB239FBC6` FOREIGN KEY (`institucion_id`) REFERENCES `institucion` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_A7BB06153397707A` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `producto_comentario`
--
ALTER TABLE `producto_comentario`
  ADD CONSTRAINT `FK_90DCBF61F3F2D7EC` FOREIGN KEY (`comentario_id`) REFERENCES `comentario` (`id`),
  ADD CONSTRAINT `FK_90DCBF617645698E` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
