-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2022 a las 19:57:49
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `camellando_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_academic_qualification`
--

CREATE TABLE `tbl_academic_qualification` (
  `id_academic_qualification` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `academic_level` varchar(50) NOT NULL,
  `graduate` varchar(50) NOT NULL,
  `date_end` date NOT NULL,
  `certificate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_city`
--

CREATE TABLE `tbl_city` (
  `id_city` int(11) NOT NULL,
  `departament` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_city`
--

INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1, 'AMAZONAS', 'EL ENCANTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(2, 'AMAZONAS', 'LA CHORRERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(3, 'AMAZONAS', 'LA PEDRERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(4, 'AMAZONAS', 'LA VICTORIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(5, 'AMAZONAS', 'LETICIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(6, 'AMAZONAS', 'MIRITI - PARANÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(7, 'AMAZONAS', 'PUERTO ALEGRIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(8, 'AMAZONAS', 'PUERTO ARICA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(9, 'AMAZONAS', 'PUERTO NARIÑO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(10, 'AMAZONAS', 'PUERTO SANTANDER');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(11, 'AMAZONAS', 'TARAPACÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(12, 'ANTIOQUIA', 'ABEJORRAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(13, 'ANTIOQUIA', 'ABRIAQUÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(14, 'ANTIOQUIA', 'ALEJANDRÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(15, 'ANTIOQUIA', 'AMAGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(16, 'ANTIOQUIA', 'AMALFI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(17, 'ANTIOQUIA', 'ANDES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(18, 'ANTIOQUIA', 'ANGELOPOLIS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(19, 'ANTIOQUIA', 'ANGOSTURA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(20, 'ANTIOQUIA', 'ANORÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(21, 'ANTIOQUIA', 'ANZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(22, 'ANTIOQUIA', 'APARTADÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(23, 'ANTIOQUIA', 'ARBOLETES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(24, 'ANTIOQUIA', 'ARGELIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(25, 'ANTIOQUIA', 'ARMENIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(26, 'ANTIOQUIA', 'BARBOSA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(27, 'ANTIOQUIA', 'BELLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(28, 'ANTIOQUIA', 'BELMIRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(29, 'ANTIOQUIA', 'BETANIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(30, 'ANTIOQUIA', 'BETULIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(31, 'ANTIOQUIA', 'BRICEÑO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(32, 'ANTIOQUIA', 'BURITICÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(33, 'ANTIOQUIA', 'CÁCERES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(34, 'ANTIOQUIA', 'CAICEDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(35, 'ANTIOQUIA', 'CALDAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(36, 'ANTIOQUIA', 'CAMPAMENTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(37, 'ANTIOQUIA', 'CAÑASGORDAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(38, 'ANTIOQUIA', 'CARACOLÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(39, 'ANTIOQUIA', 'CARAMANTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(40, 'ANTIOQUIA', 'CAREPA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(41, 'ANTIOQUIA', 'CARMEN DE VIBORAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(42, 'ANTIOQUIA', 'CAROLINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(43, 'ANTIOQUIA', 'CAUCASIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(44, 'ANTIOQUIA', 'CHIGORODÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(45, 'ANTIOQUIA', 'CISNEROS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(46, 'ANTIOQUIA', 'CIUDAD BOLÍVAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(47, 'ANTIOQUIA', 'COCORNÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(48, 'ANTIOQUIA', 'CONCEPCIÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(49, 'ANTIOQUIA', 'CONCORDIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(50, 'ANTIOQUIA', 'COPACABANA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(51, 'ANTIOQUIA', 'DABEIBA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(52, 'ANTIOQUIA', 'DON MATiAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(53, 'ANTIOQUIA', 'EBÉJICO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(54, 'ANTIOQUIA', 'EL BAGRE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(55, 'ANTIOQUIA', 'ENTRERRIOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(56, 'ANTIOQUIA', 'ENVIGADO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(57, 'ANTIOQUIA', 'FREDONIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(58, 'ANTIOQUIA', 'FRONTINO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(59, 'ANTIOQUIA', 'GIRALDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(60, 'ANTIOQUIA', 'GIRARDOTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(61, 'ANTIOQUIA', 'GÓMEZ PLATA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(62, 'ANTIOQUIA', 'GRANADA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(63, 'ANTIOQUIA', 'GUADALUPE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(64, 'ANTIOQUIA', 'GUARNE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(65, 'ANTIOQUIA', 'GUATAPE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(66, 'ANTIOQUIA', 'HELICONIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(67, 'ANTIOQUIA', 'HISPANIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(68, 'ANTIOQUIA', 'ITAGUI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(69, 'ANTIOQUIA', 'ITUANGO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(70, 'ANTIOQUIA', 'JARDÍN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(71, 'ANTIOQUIA', 'JERICÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(72, 'ANTIOQUIA', 'LA CEJA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(73, 'ANTIOQUIA', 'LA ESTRELLA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(74, 'ANTIOQUIA', 'LA PINTADA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(75, 'ANTIOQUIA', 'LA UNIÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(76, 'ANTIOQUIA', 'LIBORINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(77, 'ANTIOQUIA', 'MACEO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(78, 'ANTIOQUIA', 'MARINILLA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(79, 'ANTIOQUIA', 'MEDELLÍN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(80, 'ANTIOQUIA', 'MONTEBELLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(81, 'ANTIOQUIA', 'MURINDÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(82, 'ANTIOQUIA', 'MUTATA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(83, 'ANTIOQUIA', 'NARIÑO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(84, 'ANTIOQUIA', 'NECHÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(85, 'ANTIOQUIA', 'NECOCLÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(86, 'ANTIOQUIA', 'OLAYA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(87, 'ANTIOQUIA', 'PEÑOL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(88, 'ANTIOQUIA', 'PEQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(89, 'ANTIOQUIA', 'PUEBLORRICO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(90, 'ANTIOQUIA', 'PUERTO BERRiO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(91, 'ANTIOQUIA', 'PUERTO NARE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(92, 'ANTIOQUIA', 'PUERTO TRIUNFO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(93, 'ANTIOQUIA', 'REMEDIOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(94, 'ANTIOQUIA', 'RETIRO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(95, 'ANTIOQUIA', 'RIONEGRO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(96, 'ANTIOQUIA', 'SABANALARGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(97, 'ANTIOQUIA', 'SABANETA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(98, 'ANTIOQUIA', 'SALGAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(99, 'ANTIOQUIA', 'SAN ANDRÉS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(100, 'ANTIOQUIA', 'SAN CARLOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(101, 'ANTIOQUIA', 'SAN FRANCISCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(102, 'ANTIOQUIA', 'SAN JERÓNIMO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(103, 'ANTIOQUIA', 'SAN JOSÉ DE LA MONTAÑA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(104, 'ANTIOQUIA', 'SAN JUAN DE URABA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(105, 'ANTIOQUIA', 'SAN LUIS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(106, 'ANTIOQUIA', 'SAN PEDRO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(107, 'ANTIOQUIA', 'SAN PEDRO DE URABA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(108, 'ANTIOQUIA', 'SAN RAFAEL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(109, 'ANTIOQUIA', 'SAN ROQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(110, 'ANTIOQUIA', 'SAN VICENTE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(111, 'ANTIOQUIA', 'SANTA BaRBARA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(112, 'ANTIOQUIA', 'SANTA ROSA de osos');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(113, 'ANTIOQUIA', 'SANTAFÉ DE ANTIOQUIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(114, 'ANTIOQUIA', 'SANTO DOMINGO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(115, 'ANTIOQUIA', 'SANTUARIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(116, 'ANTIOQUIA', 'SEGOVIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(117, 'ANTIOQUIA', 'SONSON');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(118, 'ANTIOQUIA', 'SOPETRaN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(119, 'ANTIOQUIA', 'TÁMESIS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(120, 'ANTIOQUIA', 'TARAZÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(121, 'ANTIOQUIA', 'TARSO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(122, 'ANTIOQUIA', 'TITIRIBÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(123, 'ANTIOQUIA', 'TOLEDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(124, 'ANTIOQUIA', 'TURBO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(125, 'ANTIOQUIA', 'URAMITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(126, 'ANTIOQUIA', 'URRAO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(127, 'ANTIOQUIA', 'VALDIVIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(128, 'ANTIOQUIA', 'VALPARAISO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(129, 'ANTIOQUIA', 'VEGACHÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(130, 'ANTIOQUIA', 'VENECIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(131, 'ANTIOQUIA', 'VIGÍA DEL FUERTE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(132, 'ANTIOQUIA', 'YALÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(133, 'ANTIOQUIA', 'YARUMAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(134, 'ANTIOQUIA', 'YOLOMBÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(135, 'ANTIOQUIA', 'YONDÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(136, 'ANTIOQUIA', 'ZARAGOZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(137, 'ARAUCA', 'ARAUCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(138, 'ARAUCA', 'ARAUQUITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(139, 'ARAUCA', 'CRAVO NORTE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(140, 'ARAUCA', 'FORTUL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(141, 'ARAUCA', 'PUERTO RONDÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(142, 'ARAUCA', 'SARAVENA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(143, 'ARAUCA', 'TAME');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(144, 'ARCHIPIELAGO DE SAN ANDRES', 'PROVIDENCIA Y SANTA CATALINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(145, 'ARCHIPIELAGO DE SAN ANDRES', 'SAN ANDReS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(146, 'ATLÁNTICO', 'BARANOA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(147, 'ATLÁNTICO', 'BARRANQUILLA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(148, 'ATLÁNTICO', 'CAMPO DE LA CRUZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(149, 'ATLÁNTICO', 'CANDELARIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(150, 'ATLÁNTICO', 'GALAPA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(151, 'ATLÁNTICO', 'JUAN DE ACOSTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(152, 'ATLÁNTICO', 'LURUACO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(153, 'ATLÁNTICO', 'MALAMBO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(154, 'ATLÁNTICO', 'MANATi');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(155, 'ATLÁNTICO', 'PALMAR DE VARELA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(156, 'ATLÁNTICO', 'PIOJÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(157, 'ATLÁNTICO', 'POLONUEVO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(158, 'ATLÁNTICO', 'PONEDERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(159, 'ATLÁNTICO', 'PUERTO COLOMBIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(160, 'ATLÁNTICO', 'REPELON');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(161, 'ATLÁNTICO', 'Sabanagrande');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(162, 'ATLÁNTICO', 'SABANALARGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(163, 'ATLÁNTICO', 'SANTA LUCiA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(164, 'ATLÁNTICO', 'Santo Tomas');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(165, 'ATLÁNTICO', 'SOLEDAD');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(166, 'ATLÁNTICO', 'SUAN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(167, 'ATLÁNTICO', 'TUBARA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(168, 'ATLÁNTICO', 'USIACURi');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(169, 'BOGOTÁ D.C.', 'BOGOTA D.C.');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(170, 'BOLIVAR', 'ACHÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(171, 'BOLIVAR', 'ALTOS DEL ROSARIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(172, 'BOLIVAR', 'ARENAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(173, 'BOLIVAR', 'ARJONA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(174, 'BOLIVAR', 'ARROYOHONDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(175, 'BOLIVAR', 'BARRANCO DE LOBA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(176, 'BOLIVAR', 'CALAMAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(177, 'BOLIVAR', 'CANTAGALLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(178, 'BOLIVAR', 'CARMEN DE BOLÍVAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(179, 'BOLIVAR', 'CARTAGENA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(180, 'BOLIVAR', 'CICUCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(181, 'BOLIVAR', 'CLEMENCIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(182, 'BOLIVAR', 'CÓRDOBA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(183, 'BOLIVAR', 'EL GUAMO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(184, 'BOLIVAR', 'EL PEÑON');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(185, 'BOLIVAR', 'HATILLO DE LOBA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(186, 'BOLIVAR', 'MAGANGUÉ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(187, 'BOLIVAR', 'MAHATES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(188, 'BOLIVAR', 'MARGARITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(189, 'BOLIVAR', 'MARÍA LA BAJA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(190, 'BOLIVAR', 'MOMPÓS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(191, 'BOLIVAR', 'MONTECRISTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(192, 'BOLIVAR', 'MORALES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(193, 'BOLIVAR', 'PINILLOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(194, 'BOLIVAR', 'REGIDOR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(195, 'BOLIVAR', 'RÍO VIEJO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(196, 'BOLIVAR', 'SAN CRISTOBAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(197, 'BOLIVAR', 'SAN ESTANISLAO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(198, 'BOLIVAR', 'SAN FERNANDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(199, 'BOLIVAR', 'SAN JACINTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(200, 'BOLIVAR', 'SAN JACINTO DEL CAUCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(201, 'BOLIVAR', 'SAN JUAN NEPOMUCENO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(202, 'BOLIVAR', 'SAN MARTIN DE LOBA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(203, 'BOLIVAR', 'SAN PABLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(204, 'BOLIVAR', 'SANTA CATALINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(205, 'BOLIVAR', 'SANTA ROSA DE LIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(206, 'BOLIVAR', 'SANTA ROSA DEL SUR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(207, 'BOLIVAR', 'SIMITÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(208, 'BOLIVAR', 'SOPLAVIENTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(209, 'BOLIVAR', 'TALAIGUA NUEVO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(210, 'BOLIVAR', 'TIQUISIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(211, 'BOLIVAR', 'TURBACO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(212, 'BOLIVAR', 'TURBANA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(213, 'BOLIVAR', 'VILLANUEVA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(214, 'BOLIVAR', 'ZAMBRANO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(215, 'BOYACÁ', 'ALMEIDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(216, 'BOYACÁ', 'AQUITANIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(217, 'BOYACÁ', 'ARCABUCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(218, 'BOYACÁ', 'BELÉN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(219, 'BOYACÁ', 'BERBEO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(220, 'BOYACÁ', 'BETÉITIVA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(221, 'BOYACÁ', 'BOAVITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(222, 'BOYACÁ', 'BOYACÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(223, 'BOYACÁ', 'BRICEÑO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(224, 'BOYACÁ', 'BUENAVISTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(225, 'BOYACÁ', 'BUSBANZÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(226, 'BOYACÁ', 'CALDAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(227, 'BOYACÁ', 'CAMPOHERMOSO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(228, 'BOYACÁ', 'CERINZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(229, 'BOYACÁ', 'CHINAVITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(230, 'BOYACÁ', 'CHIQUINQUIRÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(231, 'BOYACÁ', 'CHÍQUIZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(232, 'BOYACÁ', 'CHISCAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(233, 'BOYACÁ', 'CHITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(234, 'BOYACÁ', 'CHITARAQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(235, 'BOYACÁ', 'CHIVATÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(236, 'BOYACÁ', 'CHIVOR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(237, 'BOYACÁ', 'CIÉNEGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(238, 'BOYACÁ', 'CÓMBITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(239, 'BOYACÁ', 'COPER');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(240, 'BOYACÁ', 'CORRALES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(241, 'BOYACÁ', 'COVARACHÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(242, 'BOYACÁ', 'CUBARÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(243, 'BOYACÁ', 'CUCAITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(244, 'BOYACÁ', 'CUÍTIVA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(245, 'BOYACÁ', 'DUITAMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(246, 'BOYACÁ', 'EL COCUY');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(247, 'BOYACÁ', 'EL ESPINO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(248, 'BOYACÁ', 'FIRAVITOBA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(249, 'BOYACÁ', 'FLORESTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(250, 'BOYACÁ', 'GACHANTIVÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(251, 'BOYACÁ', 'GAMEZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(252, 'BOYACÁ', 'GARAGOA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(253, 'BOYACÁ', 'GUACAMAYAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(254, 'BOYACÁ', 'GUATEQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(255, 'BOYACÁ', 'GUAYATÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(256, 'BOYACÁ', 'GÜICÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(257, 'BOYACÁ', 'IZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(258, 'BOYACÁ', 'JENESANO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(259, 'BOYACÁ', 'JERICÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(260, 'BOYACÁ', 'LA CAPILLA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(261, 'BOYACÁ', 'LA UVITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(262, 'BOYACÁ', 'LA VICTORIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(263, 'BOYACÁ', 'LABRANZAGRANDE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(264, 'BOYACÁ', 'MACANAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(265, 'BOYACÁ', 'MARIPÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(266, 'BOYACÁ', 'MIRAFLORES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(267, 'BOYACÁ', 'MONGUA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(268, 'BOYACÁ', 'MONGUÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(269, 'BOYACÁ', 'MONIQUIRÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(270, 'BOYACÁ', 'MOTAVITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(271, 'BOYACÁ', 'MUZO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(272, 'BOYACÁ', 'NOBSA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(273, 'BOYACÁ', 'NUEVO COLÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(274, 'BOYACÁ', 'OICATÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(275, 'BOYACÁ', 'OTANCHE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(276, 'BOYACÁ', 'PACHAVITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(277, 'BOYACÁ', 'PÁEZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(278, 'BOYACÁ', 'PAIPA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(279, 'BOYACÁ', 'PAJARITO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(280, 'BOYACÁ', 'PANQUEBA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(281, 'BOYACÁ', 'PAUNA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(282, 'BOYACÁ', 'PAYA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(283, 'BOYACÁ', 'PAZ DE RÍO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(284, 'BOYACÁ', 'PESCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(285, 'BOYACÁ', 'PISBA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(286, 'BOYACÁ', 'PUERTO BOYACa');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(287, 'BOYACÁ', 'QUÍPAMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(288, 'BOYACÁ', 'RAMIRIQUÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(289, 'BOYACÁ', 'RÁQUIRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(290, 'BOYACÁ', 'RONDÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(291, 'BOYACÁ', 'SABOYÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(292, 'BOYACÁ', 'SÁCHICA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(293, 'BOYACÁ', 'SAMACÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(294, 'BOYACÁ', 'SAN EDUARDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(295, 'BOYACÁ', 'SAN JOSÉ DE PARE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(296, 'BOYACÁ', 'SAN LUIS DE GACENO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(297, 'BOYACÁ', 'SAN MATEO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(298, 'BOYACÁ', 'SAN MIGUEL DE SEMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(299, 'BOYACÁ', 'SAN PABLO BORBUR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(300, 'BOYACÁ', 'SAN ROSA VITERBO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(301, 'BOYACÁ', 'SANTA MARÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(302, 'BOYACÁ', 'SANTA SOFÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(303, 'BOYACÁ', 'SANTANA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(304, 'BOYACÁ', 'SATIVANORTE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(305, 'BOYACÁ', 'SATIVASUR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(306, 'BOYACÁ', 'SIACHOQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(307, 'BOYACÁ', 'SOATÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(308, 'BOYACÁ', 'SOCHA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(309, 'BOYACÁ', 'SOCOTÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(310, 'BOYACÁ', 'SOGAMOSO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(311, 'BOYACÁ', 'SOMONDOCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(312, 'BOYACÁ', 'SORA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(313, 'BOYACÁ', 'SORACÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(314, 'BOYACÁ', 'SOTAQUIRÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(315, 'BOYACÁ', 'SUSACÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(316, 'BOYACÁ', 'SUTAMARCHÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(317, 'BOYACÁ', 'SUTATENZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(318, 'BOYACÁ', 'TASCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(319, 'BOYACÁ', 'TENZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(320, 'BOYACÁ', 'TIBANÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(321, 'BOYACÁ', 'TIBASOSA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(322, 'BOYACÁ', 'TINJACÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(323, 'BOYACÁ', 'TIPACOQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(324, 'BOYACÁ', 'TOCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(325, 'BOYACÁ', 'TOGÜÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(326, 'BOYACÁ', 'TÓPAGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(327, 'BOYACÁ', 'TOTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(328, 'BOYACÁ', 'TUNJA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(329, 'BOYACÁ', 'TUNUNGUÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(330, 'BOYACÁ', 'TURMEQUÉ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(331, 'BOYACÁ', 'TUTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(332, 'BOYACÁ', 'TUTAZÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(333, 'BOYACÁ', 'UMBITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(334, 'BOYACÁ', 'VENTAQUEMADA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(335, 'BOYACÁ', 'VILLA DE LEYVA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(336, 'BOYACÁ', 'VIRACACHÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(337, 'BOYACÁ', 'ZETAQUIRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(338, 'CALDAS', 'AGUADAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(339, 'CALDAS', 'ANSERMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(340, 'CALDAS', 'ARANZAZU');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(341, 'CALDAS', 'BELALCÁZAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(342, 'CALDAS', 'CHINCHINa');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(343, 'CALDAS', 'FILADELFIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(344, 'CALDAS', 'LA DORADA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(345, 'CALDAS', 'LA MERCED');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(346, 'CALDAS', 'MANIZALES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(347, 'CALDAS', 'MANZANARES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(348, 'CALDAS', 'MARMATO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(349, 'CALDAS', 'MARQUETALIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(350, 'CALDAS', 'MARULANDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(351, 'CALDAS', 'NEIRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(352, 'CALDAS', 'NORCASIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(353, 'CALDAS', 'PÁCORA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(354, 'CALDAS', 'PALESTINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(355, 'CALDAS', 'PENSILVANIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(356, 'CALDAS', 'RIOSUCIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(357, 'CALDAS', 'RISARALDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(358, 'CALDAS', 'SALAMINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(359, 'CALDAS', 'SAMANÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(360, 'CALDAS', 'SAN JOSÉ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(361, 'CALDAS', 'SUPÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(362, 'CALDAS', 'VICTORIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(363, 'CALDAS', 'VILLAMARiA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(364, 'CALDAS', 'VITERBO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(365, 'CAQUETA', 'ALBANIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(366, 'CAQUETA', 'BELÉN DE LOS ANDAQUIES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(367, 'CAQUETA', 'CARTAGENA DEL CHAIRÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(368, 'CAQUETA', 'CURRILLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(369, 'CAQUETA', 'EL DONCELLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(370, 'CAQUETA', 'EL PAUJIL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(371, 'CAQUETA', 'FLORENCIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(372, 'CAQUETA', 'LA MONTAÑITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(373, 'CAQUETA', 'MILaN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(374, 'CAQUETA', 'MORELIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(375, 'CAQUETA', 'PUERTO RICO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(376, 'CAQUETA', 'SAN JOSE DEL FRAGUA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(377, 'CAQUETA', 'SAN VICENTE DEL CAGUÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(378, 'CAQUETA', 'SOLANO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(379, 'CAQUETA', 'SOLITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(380, 'CAQUETA', 'VALPARAISO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(381, 'CASANARE', 'AGUAZUL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(382, 'CASANARE', 'CHAMEZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(383, 'CASANARE', 'HATO COROZAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(384, 'CASANARE', 'LA SALINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(385, 'CASANARE', 'MANÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(386, 'CASANARE', 'MONTERREY');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(387, 'CASANARE', 'NUNCHÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(388, 'CASANARE', 'OROCUÉ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(389, 'CASANARE', 'PAZ DE ARIPORO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(390, 'CASANARE', 'PORE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(391, 'CASANARE', 'RECETOR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(392, 'CASANARE', 'SABANALARGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(393, 'CASANARE', 'SÁCAMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(394, 'CASANARE', 'SAN LUIS DE PALENQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(395, 'CASANARE', 'TÁMARA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(396, 'CASANARE', 'TAURAMENA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(397, 'CASANARE', 'TRINIDAD');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(398, 'CASANARE', 'VILLANUEVA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(399, 'CASANARE', 'YOPAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(400, 'CAUCA', 'ALMAGUER');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(401, 'CAUCA', 'ARGELIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(402, 'CAUCA', 'BALBOA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(403, 'CAUCA', 'BOLÍVAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(404, 'CAUCA', 'BUENOS AIRES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(405, 'CAUCA', 'CAJIBÍO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(406, 'CAUCA', 'CALDONO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(407, 'CAUCA', 'CALOTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(408, 'CAUCA', 'CORINTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(409, 'CAUCA', 'EL TAMBO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(410, 'CAUCA', 'FLORENCIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(411, 'CAUCA', 'GUAPI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(412, 'CAUCA', 'INZÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(413, 'CAUCA', 'JAMBALO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(414, 'CAUCA', 'LA SIERRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(415, 'CAUCA', 'LA VEGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(416, 'CAUCA', 'LOPEZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(417, 'CAUCA', 'MERCADERES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(418, 'CAUCA', 'MIRANDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(419, 'CAUCA', 'MORALES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(420, 'CAUCA', 'PADILLA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(421, 'CAUCA', 'PAEZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(422, 'CAUCA', 'PATIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(423, 'CAUCA', 'PIAMONTE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(424, 'CAUCA', 'PIENDAMO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(425, 'CAUCA', 'POPAYÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(426, 'CAUCA', 'PUERTO TEJADA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(427, 'CAUCA', 'PURACE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(428, 'CAUCA', 'ROSAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(429, 'CAUCA', 'SAN SEBASTIAN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(430, 'CAUCA', 'SANTA ROSA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(431, 'CAUCA', 'SANTANDER DE QUILICHAO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(432, 'CAUCA', 'Silvia');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(433, 'CAUCA', 'SOTARA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(434, 'CAUCA', 'SUAREZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(435, 'CAUCA', 'SUCRE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(436, 'CAUCA', 'TIMBIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(437, 'CAUCA', 'TIMBIQUI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(438, 'CAUCA', 'TORIBIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(439, 'CAUCA', 'TOTORO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(440, 'CAUCA', 'VILLA RICA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(441, 'CESAR', 'AGUACHICA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(442, 'CESAR', 'AGUSTÍN CODAZZI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(443, 'CESAR', 'ASTREA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(444, 'CESAR', 'BECERRIL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(445, 'CESAR', 'BOSCONIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(446, 'CESAR', 'CHIMICHAGUA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(447, 'CESAR', 'CHIRIGUANA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(448, 'CESAR', 'CURUMANÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(449, 'CESAR', 'EL COPEY');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(450, 'CESAR', 'EL PASO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(451, 'CESAR', 'GAMARRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(452, 'CESAR', 'GONZÁLEZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(453, 'CESAR', 'LA GLORIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(454, 'CESAR', 'LA JAGUA DE IBIRICO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(455, 'CESAR', 'LA PAZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(456, 'CESAR', 'MANAURE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(457, 'CESAR', 'PAILITAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(458, 'CESAR', 'PELAYA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(459, 'CESAR', 'PUEBLO BELLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(460, 'CESAR', 'RÍO DE ORO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(461, 'CESAR', 'SAN ALBERTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(462, 'CESAR', 'SAN DIEGO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(463, 'CESAR', 'SAN MARTÍN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(464, 'CESAR', 'TAMALAMEQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(465, 'CESAR', 'VALLEDUPAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(466, 'CHOCO', 'ACANDÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(467, 'CHOCO', 'ALTO BAUDÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(468, 'CHOCO', 'ATRATO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(469, 'CHOCO', 'BAGADÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(470, 'CHOCO', 'BAHÍA SOLANO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(471, 'CHOCO', 'BAJO BAUDÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(472, 'CHOCO', 'BELÉN DE BAJIRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(473, 'CHOCO', 'BOJAYA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(474, 'CHOCO', 'CANTON DE SAN PABLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(475, 'CHOCO', 'CARMÉN DEL DARIÉN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(476, 'CHOCO', 'CERTEGUI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(477, 'CHOCO', 'CONDOTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(478, 'CHOCO', 'EL CARMEN DE ATRATO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(479, 'CHOCO', 'El Litoral del San Juan');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(480, 'CHOCO', 'ITSMINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(481, 'CHOCO', 'JURADÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(482, 'CHOCO', 'LLORÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(483, 'CHOCO', 'MEDIO ATRATO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(484, 'CHOCO', 'MEDIO BAUDÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(485, 'CHOCO', 'MEDIO SAN JUAN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(486, 'CHOCO', 'NÓVITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(487, 'CHOCO', 'NUQUÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(488, 'CHOCO', 'QUIBDÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(489, 'CHOCO', 'RÍO FRÍO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(490, 'CHOCO', 'RIO QUITO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(491, 'CHOCO', 'RIOSUCIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(492, 'CHOCO', 'SAN JOSÉ DEL PALMAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(493, 'CHOCO', 'SIPÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(494, 'CHOCO', 'TADÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(495, 'CHOCO', 'UNGUÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(496, 'CHOCO', 'UNION PANAMERICANA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(497, 'CORDOBA', 'AYAPEL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(498, 'CORDOBA', 'BUENAVISTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(499, 'CORDOBA', 'CANALETE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(500, 'CORDOBA', 'CERETÉ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(501, 'CORDOBA', 'CHIMÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(502, 'CORDOBA', 'CHINÚ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(503, 'CORDOBA', 'CIÉNAGA DE ORO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(504, 'CORDOBA', 'COTORRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(505, 'CORDOBA', 'LA APARTADA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(506, 'CORDOBA', 'LORICA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(507, 'CORDOBA', 'LOS CÓRDOBAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(508, 'CORDOBA', 'MOMIL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(509, 'CORDOBA', 'MONTELÍBANO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(510, 'CORDOBA', 'MONTERÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(511, 'CORDOBA', 'MOÑITOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(512, 'CORDOBA', 'PLANETA RICA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(513, 'CORDOBA', 'PUEBLO NUEVO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(514, 'CORDOBA', 'PUERTO ESCONDIDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(515, 'CORDOBA', 'PUERTO LIBERTADOR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(516, 'CORDOBA', 'PURÍSIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(517, 'CORDOBA', 'SAHAGÚN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(518, 'CORDOBA', 'SAN ANDRÉS SOTAVENTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(519, 'CORDOBA', 'SAN ANTERO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(520, 'CORDOBA', 'SAN BERNARDO DEL VIENTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(521, 'CORDOBA', 'SAN CARLOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(522, 'CORDOBA', 'SAN PELAYO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(523, 'CORDOBA', 'TIERRALTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(524, 'CORDOBA', 'VALENCIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(525, 'CUNDINAMARCA', 'AGUA DE DIOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(526, 'CUNDINAMARCA', 'ALBÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(527, 'CUNDINAMARCA', 'ANAPOIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(528, 'CUNDINAMARCA', 'ANOLAIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(529, 'CUNDINAMARCA', 'APULO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(530, 'CUNDINAMARCA', 'ARBELÁEZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(531, 'CUNDINAMARCA', 'BELTRÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(532, 'CUNDINAMARCA', 'BITUIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(533, 'CUNDINAMARCA', 'BOJACÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(534, 'CUNDINAMARCA', 'CABRERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(535, 'CUNDINAMARCA', 'CACHIPAY');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(536, 'CUNDINAMARCA', 'CAJICÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(537, 'CUNDINAMARCA', 'CAPARRAPÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(538, 'CUNDINAMARCA', 'CAQUEZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(539, 'CUNDINAMARCA', 'CARMEN DE CARUPA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(540, 'CUNDINAMARCA', 'CHAGUANÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(541, 'CUNDINAMARCA', 'CHÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(542, 'CUNDINAMARCA', 'CHIPAQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(543, 'CUNDINAMARCA', 'CHOACHÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(544, 'CUNDINAMARCA', 'CHOCONTÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(545, 'CUNDINAMARCA', 'COGUA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(546, 'CUNDINAMARCA', 'COTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(547, 'CUNDINAMARCA', 'CUCUNUBÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(548, 'CUNDINAMARCA', 'EL COLEGIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(549, 'CUNDINAMARCA', 'EL PEÑÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(550, 'CUNDINAMARCA', 'EL ROSAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(551, 'CUNDINAMARCA', 'FACATATIVÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(552, 'CUNDINAMARCA', 'FOMEQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(553, 'CUNDINAMARCA', 'FOSCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(554, 'CUNDINAMARCA', 'FUNZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(555, 'CUNDINAMARCA', 'FÚQUENE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(556, 'CUNDINAMARCA', 'FUSAGASUGÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(557, 'CUNDINAMARCA', 'GACHALA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(558, 'CUNDINAMARCA', 'GACHANCIPÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(559, 'CUNDINAMARCA', 'GACHETA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(560, 'CUNDINAMARCA', 'GAMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(561, 'CUNDINAMARCA', 'GIRARDOT');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(562, 'CUNDINAMARCA', 'GRANADA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(563, 'CUNDINAMARCA', 'GUACHETÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(564, 'CUNDINAMARCA', 'GUADUAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(565, 'CUNDINAMARCA', 'GUASCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(566, 'CUNDINAMARCA', 'GUATAQUÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(567, 'CUNDINAMARCA', 'GUATAVITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(568, 'CUNDINAMARCA', 'GUAYABAL DE SIQUIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(569, 'CUNDINAMARCA', 'GUAYABETAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(570, 'CUNDINAMARCA', 'GUTIÉRREZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(571, 'CUNDINAMARCA', 'JERUSALÉN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(572, 'CUNDINAMARCA', 'JUNÍN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(573, 'CUNDINAMARCA', 'LA CALERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(574, 'CUNDINAMARCA', 'LA MESA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(575, 'CUNDINAMARCA', 'LA PALMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(576, 'CUNDINAMARCA', 'LA PEÑA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(577, 'CUNDINAMARCA', 'LA VEGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(578, 'CUNDINAMARCA', 'LENGUAZAQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(579, 'CUNDINAMARCA', 'MACHETA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(580, 'CUNDINAMARCA', 'MADRID');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(581, 'CUNDINAMARCA', 'MANTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(582, 'CUNDINAMARCA', 'MEDINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(583, 'CUNDINAMARCA', 'MOSQUERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(584, 'CUNDINAMARCA', 'NARIÑO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(585, 'CUNDINAMARCA', 'NEMOCoN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(586, 'CUNDINAMARCA', 'NILO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(587, 'CUNDINAMARCA', 'NIMAIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(588, 'CUNDINAMARCA', 'NOCAIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(589, 'CUNDINAMARCA', 'PACHO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(590, 'CUNDINAMARCA', 'PAIME');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(591, 'CUNDINAMARCA', 'PANDI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(592, 'CUNDINAMARCA', 'PARATEBUENO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(593, 'CUNDINAMARCA', 'PASCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(594, 'CUNDINAMARCA', 'PUERTO SALGAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(595, 'CUNDINAMARCA', 'PULI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(596, 'CUNDINAMARCA', 'QUEBRADANEGRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(597, 'CUNDINAMARCA', 'QUETAME');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(598, 'CUNDINAMARCA', 'QUIPILE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(599, 'CUNDINAMARCA', 'RICAURTE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(600, 'CUNDINAMARCA', 'SAN ANTONIO DE TEQUENDAMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(601, 'CUNDINAMARCA', 'SAN BERNARDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(602, 'CUNDINAMARCA', 'SAN CAYETANO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(603, 'CUNDINAMARCA', 'SAN FRANCISCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(604, 'CUNDINAMARCA', 'SAN JUAN DE RÍO SECO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(605, 'CUNDINAMARCA', 'SASAIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(606, 'CUNDINAMARCA', 'SESQUILÉ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(607, 'CUNDINAMARCA', 'SIBATÉ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(608, 'CUNDINAMARCA', 'SILVANIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(609, 'CUNDINAMARCA', 'SIMIJACA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(610, 'CUNDINAMARCA', 'SOACHA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(611, 'CUNDINAMARCA', 'SOPÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(612, 'CUNDINAMARCA', 'SUBACHOQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(613, 'CUNDINAMARCA', 'SUESCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(614, 'CUNDINAMARCA', 'SUPATÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(615, 'CUNDINAMARCA', 'SUSA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(616, 'CUNDINAMARCA', 'SUTATAUSA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(617, 'CUNDINAMARCA', 'TABIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(618, 'CUNDINAMARCA', 'TAUSA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(619, 'CUNDINAMARCA', 'TENA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(620, 'CUNDINAMARCA', 'TENJO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(621, 'CUNDINAMARCA', 'TIBACUY');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(622, 'CUNDINAMARCA', 'TIBIRITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(623, 'CUNDINAMARCA', 'TOCAIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(624, 'CUNDINAMARCA', 'TOCANCIPÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(625, 'CUNDINAMARCA', 'TOPAIPI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(626, 'CUNDINAMARCA', 'UBALÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(627, 'CUNDINAMARCA', 'UBAQUE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(628, 'CUNDINAMARCA', 'UBATE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(629, 'CUNDINAMARCA', 'UNE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(630, 'CUNDINAMARCA', 'ÚTICA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(631, 'CUNDINAMARCA', 'VENECIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(632, 'CUNDINAMARCA', 'VERGARA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(633, 'CUNDINAMARCA', 'VIANÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(634, 'CUNDINAMARCA', 'VILLAGOMEZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(635, 'CUNDINAMARCA', 'VILLAPINZÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(636, 'CUNDINAMARCA', 'VILLETA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(637, 'CUNDINAMARCA', 'VIOTÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(638, 'CUNDINAMARCA', 'YACOPÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(639, 'CUNDINAMARCA', 'ZIPACoN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(640, 'CUNDINAMARCA', 'ZIPAQUIRÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(641, 'GUAINIA', 'BARRANCO MINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(642, 'GUAINIA', 'CACAHUAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(643, 'GUAINIA', 'INÍRIDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(644, 'GUAINIA', 'LA GUADALUPE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(645, 'GUAINIA', 'MAPIRIPaN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(646, 'GUAINIA', 'MORICHAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(647, 'GUAINIA', 'PANA PANA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(648, 'GUAINIA', 'PUERTO COLOMBIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(649, 'GUAINIA', 'SAN FELIPE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(650, 'GUAVIARE', 'CALAMAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(651, 'GUAVIARE', 'EL RETORNO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(652, 'GUAVIARE', 'MIRAFLORES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(653, 'GUAVIARE', 'SAN JOSÉ DEL GUAVIARE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(654, 'HUILA', 'ACEVEDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(655, 'HUILA', 'AGRADO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(656, 'HUILA', 'AIPE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(657, 'HUILA', 'ALGECIRAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(658, 'HUILA', 'ALTAMIRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(659, 'HUILA', 'BARAYA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(660, 'HUILA', 'CAMPOALEGRE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(661, 'HUILA', 'COLOMBIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(662, 'HUILA', 'ELÍAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(663, 'HUILA', 'GARZÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(664, 'HUILA', 'GIGANTE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(665, 'HUILA', 'GUADALUPE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(666, 'HUILA', 'HOBO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(667, 'HUILA', 'IQUIRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(668, 'HUILA', 'ISNOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(669, 'HUILA', 'LA ARGENTINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(670, 'HUILA', 'LA PLATA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(671, 'HUILA', 'NÁTAGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(672, 'HUILA', 'NEIVA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(673, 'HUILA', 'OPORAPA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(674, 'HUILA', 'PAICOL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(675, 'HUILA', 'PALERMO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(676, 'HUILA', 'PALESTINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(677, 'HUILA', 'PITAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(678, 'HUILA', 'PITALITO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(679, 'HUILA', 'RIVERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(680, 'HUILA', 'SALADOBLANCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(681, 'HUILA', 'SAN AGUSTÍN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(682, 'HUILA', 'SANTA MARÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(683, 'HUILA', 'SUAZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(684, 'HUILA', 'TARQUI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(685, 'HUILA', 'TELLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(686, 'HUILA', 'TERUEL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(687, 'HUILA', 'TESALIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(688, 'HUILA', 'TIMANÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(689, 'HUILA', 'VILLAVIEJA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(690, 'HUILA', 'YAGUARÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(691, 'LA GUAJIRA', 'ALBANIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(692, 'LA GUAJIRA', 'BARRANCAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(693, 'LA GUAJIRA', 'DIBULLA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(694, 'LA GUAJIRA', 'DISTRACCION');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(695, 'LA GUAJIRA', 'EL MOLINO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(696, 'LA GUAJIRA', 'FONSECA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(697, 'LA GUAJIRA', 'HATONUEVO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(698, 'LA GUAJIRA', 'LA JAGUA DEL PILAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(699, 'LA GUAJIRA', 'MAICAO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(700, 'LA GUAJIRA', 'MANAURE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(701, 'LA GUAJIRA', 'RIOHACHA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(702, 'LA GUAJIRA', 'SAN JUAN DEL CESAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(703, 'LA GUAJIRA', 'URIBIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(704, 'LA GUAJIRA', 'URUMITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(705, 'LA GUAJIRA', 'VILLANUEVA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(706, 'MAGDALENA', 'ALGARROBO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(707, 'MAGDALENA', 'ARACATACA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(708, 'MAGDALENA', 'ARIGUANÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(709, 'MAGDALENA', 'CERRO SAN ANTONIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(710, 'MAGDALENA', 'CHIBOLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(711, 'MAGDALENA', 'CIÉNAGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(712, 'MAGDALENA', 'CONCORDIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(713, 'MAGDALENA', 'EL BANCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(714, 'MAGDALENA', 'EL PIÑON');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(715, 'MAGDALENA', 'EL RETEN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(716, 'MAGDALENA', 'FUNDACION');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(717, 'MAGDALENA', 'GUAMAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(718, 'MAGDALENA', 'NUEVA GRANADA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(719, 'MAGDALENA', 'PEDRAZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(720, 'MAGDALENA', 'PIJIÑO DEL CARMEN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(721, 'MAGDALENA', 'PIVIJAY');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(722, 'MAGDALENA', 'PLATO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(723, 'MAGDALENA', 'PUEBLO VIEJO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(724, 'MAGDALENA', 'REMOLINO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(725, 'MAGDALENA', 'SABANAS DE SAN ANGEL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(726, 'MAGDALENA', 'SALAMINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(727, 'MAGDALENA', 'SAN SEBASTIAN DE BUENAVISTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(728, 'MAGDALENA', 'SAN ZENON');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(729, 'MAGDALENA', 'SANTA ANA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(730, 'MAGDALENA', 'SANTA BARBARA DE PINTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(731, 'MAGDALENA', 'SANTA MARTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(732, 'MAGDALENA', 'SITIONUEVO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(733, 'MAGDALENA', 'TENERIFE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(734, 'MAGDALENA', 'ZAPAYAN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(735, 'MAGDALENA', 'ZONA BANANERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(736, 'META', 'ACACiAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(737, 'META', 'BARRANCA DE UPIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(738, 'META', 'CABUYARO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(739, 'META', 'CASTILLA LA NUEVA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(740, 'META', 'CUMARAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(741, 'META', 'EL CALVARIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(742, 'META', 'EL CASTILLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(743, 'META', 'EL DORADO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(744, 'META', 'FUENTE DE ORO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(745, 'META', 'GRANADA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(746, 'META', 'GUAMAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(747, 'META', 'LA MACARENA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(748, 'META', 'LA URIBE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(749, 'META', 'LEJANÍAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(750, 'META', 'MAPIRIPaN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(751, 'META', 'MESETAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(752, 'META', 'PUERTO CONCORDIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(753, 'META', 'PUERTO GAITÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(754, 'META', 'PUERTO LLERAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(755, 'META', 'PUERTO LoPEZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(756, 'META', 'PUERTO RICO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(757, 'META', 'RESTREPO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(758, 'META', 'SAN CARLOS GUAROA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(759, 'META', 'SAN JUAN DE ARAMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(760, 'META', 'SAN JUANITO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(761, 'META', 'SAN LUIS DE CUBARRAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(762, 'META', 'SAN MARTÍN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(763, 'META', 'VILLAVICENCIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(764, 'META', 'VISTA HERMOSA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(765, 'NARIÑO', 'ALBAN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(766, 'NARIÑO', 'ALDANA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(767, 'NARIÑO', 'ANCUYA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(768, 'NARIÑO', 'ARBOLEDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(769, 'NARIÑO', 'BARBACOAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(770, 'NARIÑO', 'BELEN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(771, 'NARIÑO', 'BUESACO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(772, 'NARIÑO', 'CHACHAGUI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(773, 'NARIÑO', 'COLON');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(774, 'NARIÑO', 'CONSACA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(775, 'NARIÑO', 'CONTADERO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(776, 'NARIÑO', 'CÓRDOBA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(777, 'NARIÑO', 'CUASPUD');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(778, 'NARIÑO', 'CUMBAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(779, 'NARIÑO', 'CUMBITARA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(780, 'NARIÑO', 'EL CHARCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(781, 'NARIÑO', 'EL PEÑOL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(782, 'NARIÑO', 'EL ROSARIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(783, 'NARIÑO', 'El Tablon de Gomez');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(784, 'NARIÑO', 'EL TAMBO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(785, 'NARIÑO', 'FRANCISCO PIZARRO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(786, 'NARIÑO', 'FUNES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(787, 'NARIÑO', 'GUACHUCAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(788, 'NARIÑO', 'GUAITARILLA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(789, 'NARIÑO', 'GUALMATAN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(790, 'NARIÑO', 'ILES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(791, 'NARIÑO', 'IMUES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(792, 'NARIÑO', 'IPIALES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(793, 'NARIÑO', 'LA CRUZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(794, 'NARIÑO', 'LA FLORIDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(795, 'NARIÑO', 'LA LLANADA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(796, 'NARIÑO', 'LA TOLA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(797, 'NARIÑO', 'LA UNION');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(798, 'NARIÑO', 'LEIVA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(799, 'NARIÑO', 'LINARES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(800, 'NARIÑO', 'LOS ANDES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(801, 'NARIÑO', 'Magui');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(802, 'NARIÑO', 'MALLAMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(803, 'NARIÑO', 'MOSQUERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(804, 'NARIÑO', 'NARIÑO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(805, 'NARIÑO', 'OLAYA HERRERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(806, 'NARIÑO', 'OSPINA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(807, 'NARIÑO', 'PASTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(808, 'NARIÑO', 'POLICARPA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(809, 'NARIÑO', 'POTOSÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(810, 'NARIÑO', 'PROVIDENCIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(811, 'NARIÑO', 'PUERRES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(812, 'NARIÑO', 'PUPIALES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(813, 'NARIÑO', 'RICAURTE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(814, 'NARIÑO', 'ROBERTO PAYAN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(815, 'NARIÑO', 'SAMANIEGO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(816, 'NARIÑO', 'SAN BERNARDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(817, 'NARIÑO', 'SAN LORENZO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(818, 'NARIÑO', 'SAN PABLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(819, 'NARIÑO', 'SAN PEDRO DE CARTAGO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(820, 'NARIÑO', 'SANDONÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(821, 'NARIÑO', 'SANTA BaRBARA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(822, 'NARIÑO', 'SANTA CRUZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(823, 'NARIÑO', 'SAPUYES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(824, 'NARIÑO', 'TAMINANGO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(825, 'NARIÑO', 'TANGUA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(826, 'NARIÑO', 'TUMACO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(827, 'NARIÑO', 'TUQUERRES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(828, 'NARIÑO', 'YACUANQUER');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(829, 'NORTE DE SANTANDER', 'ABREGO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(830, 'NORTE DE SANTANDER', 'ARBOLEDAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(831, 'NORTE DE SANTANDER', 'BOCHALEMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(832, 'NORTE DE SANTANDER', 'BUCARASICA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(833, 'NORTE DE SANTANDER', 'CACHIRÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(834, 'NORTE DE SANTANDER', 'CÁCOTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(835, 'NORTE DE SANTANDER', 'CHINÁCOTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(836, 'NORTE DE SANTANDER', 'CHITAGÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(837, 'NORTE DE SANTANDER', 'CONVENCIÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(838, 'NORTE DE SANTANDER', 'CÚCUTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(839, 'NORTE DE SANTANDER', 'CUCUTILLA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(840, 'NORTE DE SANTANDER', 'DURANIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(841, 'NORTE DE SANTANDER', 'EL CARMEN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(842, 'NORTE DE SANTANDER', 'EL TARRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(843, 'NORTE DE SANTANDER', 'EL ZULIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(844, 'NORTE DE SANTANDER', 'GRAMALOTE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(845, 'NORTE DE SANTANDER', 'HACARÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(846, 'NORTE DE SANTANDER', 'HERRÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(847, 'NORTE DE SANTANDER', 'LA ESPERANZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(848, 'NORTE DE SANTANDER', 'LA PLAYA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(849, 'NORTE DE SANTANDER', 'LABATECA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(850, 'NORTE DE SANTANDER', 'LOS PATIOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(851, 'NORTE DE SANTANDER', 'LOURDES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(852, 'NORTE DE SANTANDER', 'MUTISCUA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(853, 'NORTE DE SANTANDER', 'OCAÑA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(854, 'NORTE DE SANTANDER', 'PAMPLONA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(855, 'NORTE DE SANTANDER', 'PAMPLONITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(856, 'NORTE DE SANTANDER', 'PUERTO SANTANDER');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(857, 'NORTE DE SANTANDER', 'RAGONVALIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(858, 'NORTE DE SANTANDER', 'SALAZAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(859, 'NORTE DE SANTANDER', 'SAN CALIXTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(860, 'NORTE DE SANTANDER', 'SAN CAYETANO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(861, 'NORTE DE SANTANDER', 'SANTIAGO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(862, 'NORTE DE SANTANDER', 'SARDINATA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(863, 'NORTE DE SANTANDER', 'SILOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(864, 'NORTE DE SANTANDER', 'TEORAMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(865, 'NORTE DE SANTANDER', 'TIBÚ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(866, 'NORTE DE SANTANDER', 'TOLEDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(867, 'NORTE DE SANTANDER', 'VILLA CARO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(868, 'NORTE DE SANTANDER', 'VILLA DEL ROSARIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(869, 'PUTUMAYO', 'COLÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(870, 'PUTUMAYO', 'MOCOA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(871, 'PUTUMAYO', 'ORITO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(872, 'PUTUMAYO', 'PUERTO ASIS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(873, 'PUTUMAYO', 'PUERTO CAICEDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(874, 'PUTUMAYO', 'PUERTO GUZMAN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(875, 'PUTUMAYO', 'PUERTO LEGUIZAMO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(876, 'PUTUMAYO', 'SAN FRANCISCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(877, 'PUTUMAYO', 'SAN MIGUEL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(878, 'PUTUMAYO', 'SANTIAGO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(879, 'PUTUMAYO', 'SIBUNDOY');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(880, 'PUTUMAYO', 'VALLE DEL GUAMUEZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(881, 'PUTUMAYO', 'VILLA GARZON');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(882, 'QUINDIO', 'ARMENIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(883, 'QUINDIO', 'BUENAVISTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(884, 'QUINDIO', 'CALARCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(885, 'QUINDIO', 'CIRCASIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(886, 'QUINDIO', 'CoRDOBA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(887, 'QUINDIO', 'FILANDIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(888, 'QUINDIO', 'GeNOVA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(889, 'QUINDIO', 'LA TEBAIDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(890, 'QUINDIO', 'Montengro');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(891, 'QUINDIO', 'PIJAO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(892, 'QUINDIO', 'QUIMBAYA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(893, 'QUINDIO', 'SALENTO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(894, 'RISARALDA', 'APÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(895, 'RISARALDA', 'BALBOA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(896, 'RISARALDA', 'BELÉN DE UMBRÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(897, 'RISARALDA', 'DOSQUEBRADAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(898, 'RISARALDA', 'GUÁTICA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(899, 'RISARALDA', 'LA CELIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(900, 'RISARALDA', 'LA VIRGINIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(901, 'RISARALDA', 'MARSELLA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(902, 'RISARALDA', 'MISTRATÓ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(903, 'RISARALDA', 'PEREIRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(904, 'RISARALDA', 'PUEBLO RICO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(905, 'RISARALDA', 'QUINCHiA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(906, 'RISARALDA', 'SANTA ROSA DE CABAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(907, 'RISARALDA', 'SANTUARIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(908, 'SANTANDER', 'AGUADA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(909, 'SANTANDER', 'ALBANIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(910, 'SANTANDER', 'ARATOCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(911, 'SANTANDER', 'BARBOSA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(912, 'SANTANDER', 'BARICHARA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(913, 'SANTANDER', 'BARRANCABERMEJA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(914, 'SANTANDER', 'BETULIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(915, 'SANTANDER', 'BOLÍVAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(916, 'SANTANDER', 'BUCARAMANGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(917, 'SANTANDER', 'CABRERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(918, 'SANTANDER', 'CALIFORNIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(919, 'SANTANDER', 'CAPITANEJO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(920, 'SANTANDER', 'CARCASÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(921, 'SANTANDER', 'CEPITÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(922, 'SANTANDER', 'CERRITO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(923, 'SANTANDER', 'CHARALÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(924, 'SANTANDER', 'CHARTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(925, 'SANTANDER', 'CHIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(926, 'SANTANDER', 'CHIPATÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(927, 'SANTANDER', 'CIMITARRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(928, 'SANTANDER', 'CONCEPCIÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(929, 'SANTANDER', 'CONFINES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(930, 'SANTANDER', 'CONTRATACIÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(931, 'SANTANDER', 'COROMORO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(932, 'SANTANDER', 'CURITÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(933, 'SANTANDER', 'EL CARMEN DE CHUCURÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(934, 'SANTANDER', 'EL GUACAMAYO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(935, 'SANTANDER', 'EL PEÑÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(936, 'SANTANDER', 'EL PLAYÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(937, 'SANTANDER', 'ENCINO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(938, 'SANTANDER', 'ENCISO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(939, 'SANTANDER', 'FLORIÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(940, 'SANTANDER', 'FLORIDABLANCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(941, 'SANTANDER', 'GALÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(942, 'SANTANDER', 'GAMBITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(943, 'SANTANDER', 'GIRÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(944, 'SANTANDER', 'GUACA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(945, 'SANTANDER', 'GUADALUPE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(946, 'SANTANDER', 'GUAPOTÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(947, 'SANTANDER', 'GUAVATÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(948, 'SANTANDER', 'GuEPSA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(949, 'SANTANDER', 'HATO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(950, 'SANTANDER', 'JESÚS MARÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(951, 'SANTANDER', 'JORDÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(952, 'SANTANDER', 'LA BELLEZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(953, 'SANTANDER', 'LA PAZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(954, 'SANTANDER', 'LANDÁZURI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(955, 'SANTANDER', 'LEBRÍJA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(956, 'SANTANDER', 'LOS SANTOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(957, 'SANTANDER', 'MACARAVITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(958, 'SANTANDER', 'MÁLAGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(959, 'SANTANDER', 'MATANZA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(960, 'SANTANDER', 'MOGOTES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(961, 'SANTANDER', 'MOLAGAVITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(962, 'SANTANDER', 'OCAMONTE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(963, 'SANTANDER', 'OIBA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(964, 'SANTANDER', 'ONZAGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(965, 'SANTANDER', 'PALMAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(966, 'SANTANDER', 'PALMAS DEL SOCORRO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(967, 'SANTANDER', 'PÁRAMO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(968, 'SANTANDER', 'PIEDECUESTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(969, 'SANTANDER', 'PINCHOTE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(970, 'SANTANDER', 'PUENTE NACIONAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(971, 'SANTANDER', 'PUERTO PARRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(972, 'SANTANDER', 'PUERTO WILCHES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(973, 'SANTANDER', 'RIONEGRO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(974, 'SANTANDER', 'SABANA DE TORRES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(975, 'SANTANDER', 'SAN ANDRÉS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(976, 'SANTANDER', 'SAN BENITO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(977, 'SANTANDER', 'SAN GIL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(978, 'SANTANDER', 'SAN JOAQUÍN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(979, 'SANTANDER', 'SAN JOSÉ DE MIRANDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(980, 'SANTANDER', 'SAN MIGUEL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(981, 'SANTANDER', 'SAN VICENTE DE CHUCURÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(982, 'SANTANDER', 'SANTA BÁRBARA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(983, 'SANTANDER', 'SANTA HELENA DEL OPÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(984, 'SANTANDER', 'SIMACOTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(985, 'SANTANDER', 'SOCORRO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(986, 'SANTANDER', 'SUAITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(987, 'SANTANDER', 'SUCRE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(988, 'SANTANDER', 'SURATA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(989, 'SANTANDER', 'TONA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(990, 'SANTANDER', 'VALLE DE SAN JOSÉ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(991, 'SANTANDER', 'VÉLEZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(992, 'SANTANDER', 'VETAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(993, 'SANTANDER', 'VILLANUEVA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(994, 'SANTANDER', 'ZAPATOCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(995, 'SUCRE', 'BUENAVISTA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(996, 'SUCRE', 'CAIMITO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(997, 'SUCRE', 'CHALÁN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(998, 'SUCRE', 'COLOSO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(999, 'SUCRE', 'COROZAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1000, 'SUCRE', 'COVEÑAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1001, 'SUCRE', 'EL ROBLE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1002, 'SUCRE', 'GALERAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1003, 'SUCRE', 'GUARANDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1004, 'SUCRE', 'LA UNIÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1005, 'SUCRE', 'LOS PALMITOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1006, 'SUCRE', 'MAJAGUAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1007, 'SUCRE', 'MORROA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1008, 'SUCRE', 'OVEJAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1009, 'SUCRE', 'PALMITO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1010, 'SUCRE', 'SAMPUÉS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1011, 'SUCRE', 'SAN BENITO ABAD');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1012, 'SUCRE', 'SAN JUAN BETULIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1013, 'SUCRE', 'SAN MARCOS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1014, 'SUCRE', 'SAN ONOFRE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1015, 'SUCRE', 'SAN PEDRO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1016, 'SUCRE', 'SANTIAGO DE TOLÚ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1017, 'SUCRE', 'SINCÉ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1018, 'SUCRE', 'SINCELEJO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1019, 'SUCRE', 'SUCRE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1020, 'SUCRE', 'TOLÚ VIEJO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1021, 'TOLIMA', 'ALPUJARRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1022, 'TOLIMA', 'ALVARADO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1023, 'TOLIMA', 'AMBALEMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1024, 'TOLIMA', 'ANZOÁTEGUI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1025, 'TOLIMA', 'ARMERO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1026, 'TOLIMA', 'ATACO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1027, 'TOLIMA', 'CAJAMARCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1028, 'TOLIMA', 'CARMEN DE APICALÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1029, 'TOLIMA', 'CASABIANCA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1030, 'TOLIMA', 'CHAPARRAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1031, 'TOLIMA', 'COELLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1032, 'TOLIMA', 'COYAIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1033, 'TOLIMA', 'CUNDAY');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1034, 'TOLIMA', 'DOLORES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1035, 'TOLIMA', 'ESPINAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1036, 'TOLIMA', 'FALAN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1037, 'TOLIMA', 'FLANDES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1038, 'TOLIMA', 'FRESNO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1039, 'TOLIMA', 'GUAMO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1040, 'TOLIMA', 'HERVEO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1041, 'TOLIMA', 'HONDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1042, 'TOLIMA', 'IBAGUe');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1043, 'TOLIMA', 'ICONONZO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1044, 'TOLIMA', 'LeRIDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1045, 'TOLIMA', 'LiBANO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1046, 'TOLIMA', 'MARIQUITA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1047, 'TOLIMA', 'MELGAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1048, 'TOLIMA', 'MURILLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1049, 'TOLIMA', 'NATAGAIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1050, 'TOLIMA', 'ORTEGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1051, 'TOLIMA', 'PALOCABILDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1052, 'TOLIMA', 'PIEDRAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1053, 'TOLIMA', 'PLANADAS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1054, 'TOLIMA', 'PRADO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1055, 'TOLIMA', 'PURIFICACIÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1056, 'TOLIMA', 'RIOBLANCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1057, 'TOLIMA', 'RONCESVALLES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1058, 'TOLIMA', 'ROVIRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1059, 'TOLIMA', 'SALDAÑA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1060, 'TOLIMA', 'SAN ANTONIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1061, 'TOLIMA', 'SAN LUIS');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1062, 'TOLIMA', 'SANTA ISABEL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1063, 'TOLIMA', 'SUÁREZ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1064, 'TOLIMA', 'VALLE DE SAN JUAN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1065, 'TOLIMA', 'VENADILLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1066, 'TOLIMA', 'VILLAHERMOSA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1067, 'TOLIMA', 'VILLARRICA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1068, 'VALLE DEL CAUCA', 'ALCALa');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1069, 'VALLE DEL CAUCA', 'ANDALUCÍA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1070, 'VALLE DEL CAUCA', 'ANSERMANUEVO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1071, 'VALLE DEL CAUCA', 'ARGELIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1072, 'VALLE DEL CAUCA', 'BOLÍVAR');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1073, 'VALLE DEL CAUCA', 'BUENAVENTURA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1074, 'VALLE DEL CAUCA', 'BUGA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1075, 'VALLE DEL CAUCA', 'BUGALAGRANDE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1076, 'VALLE DEL CAUCA', 'CAICEDONIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1077, 'VALLE DEL CAUCA', 'CALI');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1078, 'VALLE DEL CAUCA', 'CALIMA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1079, 'VALLE DEL CAUCA', 'CANDELARIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1080, 'VALLE DEL CAUCA', 'CARTAGO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1081, 'VALLE DEL CAUCA', 'DAGUA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1082, 'VALLE DEL CAUCA', 'EL ÁGUILA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1083, 'VALLE DEL CAUCA', 'EL CAIRO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1084, 'VALLE DEL CAUCA', 'EL CERRITO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1085, 'VALLE DEL CAUCA', 'EL DOVIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1086, 'VALLE DEL CAUCA', 'FLORIDA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1087, 'VALLE DEL CAUCA', 'GINEBRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1088, 'VALLE DEL CAUCA', 'GUACARÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1089, 'VALLE DEL CAUCA', 'JAMUNDÍ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1090, 'VALLE DEL CAUCA', 'LA CUMBRE');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1091, 'VALLE DEL CAUCA', 'LA UNIÓN');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1092, 'VALLE DEL CAUCA', 'LA VICTORIA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1093, 'VALLE DEL CAUCA', 'OBANDO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1094, 'VALLE DEL CAUCA', 'PALMIRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1095, 'VALLE DEL CAUCA', 'PRADERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1096, 'VALLE DEL CAUCA', 'RESTREPO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1097, 'VALLE DEL CAUCA', 'RIOFRIO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1098, 'VALLE DEL CAUCA', 'ROLDANILLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1099, 'VALLE DEL CAUCA', 'SAN PEDRO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1100, 'VALLE DEL CAUCA', 'SEVILLA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1101, 'VALLE DEL CAUCA', 'TORO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1102, 'VALLE DEL CAUCA', 'TRUJILLO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1103, 'VALLE DEL CAUCA', 'TULUÁ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1104, 'VALLE DEL CAUCA', 'ULLOA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1105, 'VALLE DEL CAUCA', 'VERSALLES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1106, 'VALLE DEL CAUCA', 'VIJES');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1107, 'VALLE DEL CAUCA', 'YOTOCO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1108, 'VALLE DEL CAUCA', 'YUMBO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1109, 'VALLE DEL CAUCA', 'ZARZAL');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1110, 'VAUPES', 'CARURU');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1111, 'VAUPES', 'MITÚ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1112, 'VAUPES', 'PACOA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1113, 'VAUPES', 'PAPUNAHUA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1114, 'VAUPES', 'TARAIRA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1115, 'VAUPES', 'YAVARATÉ');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1116, 'VICHADA', 'CUMARIBO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1117, 'VICHADA', 'LA PRIMAVERA');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1118, 'VICHADA', 'PUERTO CARREÑO');
INSERT INTO `tbl_city` (`id_city`, `departament`, `city`) VALUES(1119, 'VICHADA', 'SANTA ROSALÍA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_experience`
--

CREATE TABLE `tbl_experience` (
  `id_experience` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `supervisor` varchar(100) NOT NULL,
  `supervisor_phone` varchar(100) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `type_experiences` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` int(11) NOT NULL,
  `id_city` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `experience` longtext NOT NULL,
  `description` longtext NOT NULL,
  `responsibility` longtext NOT NULL,
  `requirements` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `date_posted` date NOT NULL,
  `closig_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_job_applications`
--

CREATE TABLE `tbl_job_applications` (
  `id_job_applications` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `descriptions_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id_language` int(11) NOT NULL,
  `name_lenguage` varchar(255) NOT NULL,
  `read_language` varchar(255) DEFAULT NULL,
  `writte_language` varchar(255) DEFAULT NULL,
  `listen_language` varchar(255) DEFAULT NULL,
  `level_language` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_language`
--

INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(1, 'abjaso (o abjasiano)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(2, 'afar', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(3, 'afrikaans', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(4, 'aimara', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(5, 'akano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(6, 'albanés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(7, 'alemán', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(8, 'amárico', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(9, 'árabe', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(10, 'aragonés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(11, 'armenio', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(12, 'asamés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(13, 'avar', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(14, 'avéstico', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(15, 'azerí', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(16, 'bambara', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(17, 'baskir', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(18, 'bengalí', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(19, 'bhojpurí', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(20, 'bielorruso', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(21, 'birmano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(22, 'bislama', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(23, 'bosnio', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(24, 'bretón', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(25, 'búlgaro', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(26, 'cachemiro', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(27, 'camboyano (o jemer)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(28, 'canarés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(29, 'catalán', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(30, 'chamorro', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(31, 'checheno', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(32, 'checo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(33, 'chichewa', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(34, 'chino', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(35, 'chuan (o zhuang)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(36, 'chuvasio', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(37, 'cingalés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(38, 'coreano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(39, 'córnico', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(40, 'corso', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(41, 'cree', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(42, 'croata', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(43, 'danés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(44, 'dzongkha', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(45, 'eslavo eclesiástico antiguo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(46, 'eslovaco', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(47, 'esloveno', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(48, 'español (o castellano)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(49, 'esperanto', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(50, 'estonio', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(51, 'ewe', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(52, 'feroés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(53, 'fijiano (o fidji)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(54, 'finés (o finlandés)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(55, 'francés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(56, 'frisón (o frisio)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(57, 'fula', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(58, 'gaélico escocés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(59, 'galés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(60, 'gallego', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(61, 'georgiano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(62, 'griego (moderno)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(63, 'groenlandés (o kalaallisut)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(64, 'guaraní', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(65, 'guyaratí (o guyaratí)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(66, 'haitiano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(67, 'hausa', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(68, 'hebreo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(69, 'herero', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(70, 'hindi (o hindú)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(71, 'hiri motu', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(72, 'húngaro', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(73, 'ido', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(74, 'igbo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(75, 'indonesio', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(76, 'inglés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(77, 'interlingua', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(78, 'inuktitut', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(79, 'inupiaq', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(80, 'irlandés (o gaélico)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(81, 'islandés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(82, 'italiano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(83, 'japonés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(84, 'javanés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(85, 'kanuri', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(86, 'kazajo (o kazajio)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(87, 'kikuyu', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(88, 'kirguís', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(89, 'kirundi', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(90, 'komi', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(91, 'kongo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(92, 'kuanyama', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(93, 'kurdo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(94, 'lao', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(95, 'latín', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(96, 'letón', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(97, 'limburgués', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(98, 'lingala', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(99, 'lituano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(100, 'luba-katanga', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(101, 'luganda', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(102, 'luxemburgués', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(103, 'macedonio', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(104, 'malayalam', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(105, 'malayo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(106, 'maldivo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(107, 'malgache (o malagasy)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(108, 'maltés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(109, 'manés (gaélico manés o de Isla de Man)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(110, 'maorí', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(111, 'maratí', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(112, 'marshalés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(113, 'moldavo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(114, 'mongol', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(115, 'nauruano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(116, 'navajo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(117, 'ndebele del norte', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(118, 'ndebele del sur', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(119, 'ndonga', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(120, 'neerlandés (u holandés)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(121, 'nepalí', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(122, 'noruego', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(123, 'noruego bokmål', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(124, 'nynorsk', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(125, 'occidental', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(126, 'occitano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(127, 'ojibwa', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(128, 'oriya', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(129, 'oromo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(130, 'osético', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(131, 'pali', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(132, 'panyabí (o penyabi)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(133, 'pastú (o pashto)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(134, 'persa', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(135, 'polaco', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(136, 'portugués', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(137, 'quechua', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(138, 'retorrománico', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(139, 'ruandés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(140, 'rumano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(141, 'ruso', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(142, 'sami septentrional', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(143, 'samoano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(144, 'sango', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(145, 'sánscrito', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(146, 'sardo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(147, 'serbio', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(148, 'sesotho', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(149, 'setsuana', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(150, 'shona', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(151, 'sindhi', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(152, 'somalí', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(153, 'suajili', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(154, 'suazi (swati o siSwati)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(155, 'sueco', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(156, 'sundanés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(157, 'tagalo', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(158, 'tahitiano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(159, 'tailandés', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(160, 'tamil', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(161, 'tártaro', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(162, 'tayiko', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(163, 'telugú', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(164, 'tibetano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(165, 'tigriña', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(166, 'tongano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(167, 'tsonga', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(168, 'turco', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(169, 'turcomano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(170, 'twi', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(171, 'ucraniano', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(172, 'uigur', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(173, 'urdu', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(174, 'uzbeko', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(175, 'valón', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(176, 'vascuence (o euskera)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(177, 'venda', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(178, 'vietnamita', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(179, 'volapük', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(180, 'wolof', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(181, 'xhosa', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(182, 'yi de Sichuán', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(183, 'yídish (o yiddish)', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(184, 'yoruba', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(185, 'zulú', NULL, NULL, NULL, NULL);
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(188, 'alemán', 'Medio', 'Bajo', 'Bajo', 'Medio');
INSERT INTO `tbl_language` (`id_language`, `name_lenguage`, `read_language`, `writte_language`, `listen_language`, `level_language`) VALUES(189, 'inglés', 'Medio', 'Medio', 'Medio', 'Medio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_professional`
--

CREATE TABLE `tbl_professional` (
  `id_professional` int(11) NOT NULL,
  `level_professional` varchar(100) NOT NULL,
  `timeframe` varchar(100) NOT NULL,
  `id_experience` int(11) DEFAULT NULL,
  `id_referees` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_academic_qualification` int(11) DEFAULT NULL,
  `id_job_applications` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_referees`
--

CREATE TABLE `tbl_referees` (
  `id_referees` int(11) NOT NULL,
  `ref_name` varchar(100) NOT NULL,
  `ref_mail` varchar(100) NOT NULL,
  `ref_title` varchar(100) NOT NULL,
  `ref_phone` varchar(100) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `type_referees` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `web_site` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `id_city` int(11) DEFAULT NULL,
  `id_professional` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  ADD PRIMARY KEY (`id_academic_qualification`);

--
-- Indices de la tabla `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`id_city`);

--
-- Indices de la tabla `tbl_experience`
--
ALTER TABLE `tbl_experience`
  ADD PRIMARY KEY (`id_experience`);

--
-- Indices de la tabla `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `id_city` (`id_city`);

--
-- Indices de la tabla `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  ADD PRIMARY KEY (`id_job_applications`),
  ADD KEY `job_id` (`job_id`);

--
-- Indices de la tabla `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id_language`);

--
-- Indices de la tabla `tbl_professional`
--
ALTER TABLE `tbl_professional`
  ADD PRIMARY KEY (`id_professional`),
  ADD KEY `id_experience` (`id_experience`),
  ADD KEY `id_academic_qualification` (`id_academic_qualification`),
  ADD KEY `id_referees` (`id_referees`),
  ADD KEY `id_language` (`id_language`),
  ADD KEY `id_job_applications` (`id_job_applications`);

--
-- Indices de la tabla `tbl_referees`
--
ALTER TABLE `tbl_referees`
  ADD PRIMARY KEY (`id_referees`);

--
-- Indices de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_city` (`id_city`),
  ADD KEY `id_professional` (`id_professional`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  MODIFY `id_academic_qualification` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1120;

--
-- AUTO_INCREMENT de la tabla `tbl_experience`
--
ALTER TABLE `tbl_experience`
  MODIFY `id_experience` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  MODIFY `id_job_applications` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id_language` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT de la tabla `tbl_professional`
--
ALTER TABLE `tbl_professional`
  MODIFY `id_professional` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_referees`
--
ALTER TABLE `tbl_referees`
  MODIFY `id_referees` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD CONSTRAINT `tbl_jobs_ibfk_1` FOREIGN KEY (`id_city`) REFERENCES `tbl_city` (`id_city`);

--
-- Filtros para la tabla `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  ADD CONSTRAINT `tbl_job_applications_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `tbl_jobs` (`job_id`);

--
-- Filtros para la tabla `tbl_professional`
--
ALTER TABLE `tbl_professional`
  ADD CONSTRAINT `tbl_professional_ibfk_1` FOREIGN KEY (`id_experience`) REFERENCES `tbl_experience` (`id_experience`),
  ADD CONSTRAINT `tbl_professional_ibfk_2` FOREIGN KEY (`id_academic_qualification`) REFERENCES `tbl_academic_qualification` (`id_academic_qualification`),
  ADD CONSTRAINT `tbl_professional_ibfk_3` FOREIGN KEY (`id_referees`) REFERENCES `tbl_referees` (`id_referees`),
  ADD CONSTRAINT `tbl_professional_ibfk_4` FOREIGN KEY (`id_language`) REFERENCES `tbl_language` (`id_language`),
  ADD CONSTRAINT `tbl_professional_ibfk_5` FOREIGN KEY (`id_job_applications`) REFERENCES `tbl_job_applications` (`id_job_applications`);

--
-- Filtros para la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_city`) REFERENCES `tbl_city` (`id_city`),
  ADD CONSTRAINT `tbl_user_ibfk_2` FOREIGN KEY (`id_professional`) REFERENCES `tbl_professional` (`id_professional`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
