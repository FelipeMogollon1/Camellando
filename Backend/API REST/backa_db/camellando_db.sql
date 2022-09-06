-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2022 a las 02:44:37
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
-- Estructura de tabla para la tabla `tbl_cargo`
--

CREATE TABLE `tbl_cargo` (
  `id_cargo` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_cargo`
--

INSERT INTO `tbl_cargo` (`id_cargo`, `nombre`) VALUES
(1, 'Agricultura y Agronegocios'),
(2, 'Asistencia sanitaria y farmaceutica'),
(3, 'CEO y Gerencia General'),
(4, 'Comercios y servicios'),
(5, 'Comunidad y Social'),
(6, 'Contabilidad'),
(7, 'Creativo y DiseÁ±o'),
(8, 'Educacion y entrenamiento'),
(9, 'Estrategia y Consultoria'),
(10, 'Fabricacion'),
(11, 'Informatica y Telecomunicaciones'),
(12, 'Ingenieria y construccion'),
(13, 'Investigacion, Ciencia y Biotecnologia'),
(14, 'Legal'),
(15, 'Marketing, Medios y Marca'),
(16, 'Mineria y Recursos Naturales'),
(17, 'Proyectos y Administracion'),
(18, 'Recursos humanos y administracion'),
(19, 'Revision de cuentas'),
(20, 'Seguridad'),
(21, 'Servicios bancarios y financieros'),
(22, 'Transporte y Logistica'),
(23, 'Turismo y viajes'),
(24, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_educacion`
--

CREATE TABLE `tbl_educacion` (
  `id_educacion` int(11) NOT NULL,
  `nivel` varchar(100) NOT NULL,
  `centroEducativo` varchar(200) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `desdeMes` varchar(20) NOT NULL,
  `desdeano` int(10) UNSIGNED NOT NULL,
  `hastaMes` varchar(20) NOT NULL,
  `hastaAno` int(10) UNSIGNED NOT NULL,
  `id_perfilProfesional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_experiencia`
--

CREATE TABLE `tbl_experiencia` (
  `id_experiencia` int(11) NOT NULL,
  `nombreCargo` varchar(100) NOT NULL,
  `areaProfesional` varchar(100) NOT NULL,
  `nombreEmpresa` varchar(100) NOT NULL,
  `actividadEmpresa` varchar(100) NOT NULL,
  `ubicacion` int(11) NOT NULL,
  `funcionesLogros` longtext NOT NULL,
  `estado` varchar(15) NOT NULL,
  `desdeMes` varchar(15) NOT NULL,
  `desdeano` int(10) UNSIGNED NOT NULL,
  `hastaMes` varchar(15) NOT NULL,
  `hastaAno` int(10) UNSIGNED NOT NULL,
  `id_perfilProfesional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_idioma`
--

CREATE TABLE `tbl_idioma` (
  `id_idioma` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `lectura` varchar(20) NOT NULL,
  `escritura` varchar(20) NOT NULL,
  `escuchar` varchar(20) NOT NULL,
  `id_perfilProfesional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_informacionpersonal`
--

CREATE TABLE `tbl_informacionpersonal` (
  `id_informacionPersonal` int(11) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `tipoIdentificacion` varchar(15) NOT NULL,
  `numeroIdentificacion` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `ubicacion` int(11) NOT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `id_usuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_oferta`
--

CREATE TABLE `tbl_oferta` (
  `id_oferta` int(11) NOT NULL,
  `tituloTrabajo` varchar(50) NOT NULL,
  `cargo` int(11) NOT NULL,
  `ubicacion` int(11) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaCierre` date NOT NULL,
  `experiencia` varchar(150) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  `responsabilidades` longtext DEFAULT NULL,
  `requerimientos` longtext DEFAULT NULL,
  `id_perfilEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_perfilempresa`
--

CREATE TABLE `tbl_perfilempresa` (
  `id_perfilEmpresa` int(11) NOT NULL,
  `nombreEmpresa` varchar(150) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `fechaEstablecida` date DEFAULT NULL,
  `rubro` varchar(150) NOT NULL,
  `trabajadores` int(11) DEFAULT NULL,
  `sitioWeb` varchar(150) DEFAULT NULL,
  `ubicacion` int(11) NOT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  `historiaEmpresa` longtext DEFAULT NULL,
  `servicios` longtext DEFAULT NULL,
  `experiencia` longtext DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `fechaRegistro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_perfilempresa`
--

INSERT INTO `tbl_perfilempresa` (`id_perfilEmpresa`, `nombreEmpresa`, `correo`, `contrasena`, `nit`, `fechaEstablecida`, `rubro`, `trabajadores`, `sitioWeb`, `ubicacion`, `direccion`, `telefono`, `historiaEmpresa`, `servicios`, `experiencia`, `logo`, `fechaRegistro`) VALUES
(1, 'Nutresa', 'nutresa@gmail.com', 'nutresa123', '123456789', '1889-09-24', 'Produccion de productos alimenticios', 5000000, 'www.nutresa.com', 5, 'calle 1 carrera 1 10 - 20', '3219876547', 'somos una empresa antioqueña creada con el crecimiento de la ciudad', 'empresa de alimentos', '50 años de experiencia', 'images/foto1.jpg', '2022-09-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_perfilprofesional`
--

CREATE TABLE `tbl_perfilprofesional` (
  `id_perfilProfesional` int(11) NOT NULL,
  `cargo` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `salarioMinimo` int(10) UNSIGNED NOT NULL,
  `disponibilidadViajar` varchar(2) NOT NULL,
  `disponibilidadCambiarDomicilio` varchar(2) NOT NULL,
  `id_informacionPersonal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_postulados`
--

CREATE TABLE `tbl_postulados` (
  `id_postulados` int(11) NOT NULL,
  `id_perfilProfesional` int(11) NOT NULL,
  `id_oferta` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rol`
--

CREATE TABLE `tbl_rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_rol`
--

INSERT INTO `tbl_rol` (`id_rol`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Persona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ubicacion`
--

CREATE TABLE `tbl_ubicacion` (
  `id_ubicacion` int(11) NOT NULL,
  `departamento` varchar(150) NOT NULL,
  `ciudad` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_ubicacion`
--

INSERT INTO `tbl_ubicacion` (`id_ubicacion`, `departamento`, `ciudad`) VALUES
(1, 'Amazonas', 'Leticia'),
(2, 'Amazonas', 'El Encanto'),
(3, 'Amazonas', 'La Chorrera'),
(4, 'Amazonas', 'La Pedrera'),
(5, 'Amazonas', 'La Victoria'),
(6, 'Amazonas', 'Puerto Arica'),
(7, 'Amazonas', 'Puerto Nariño'),
(8, 'Amazonas', 'Puerto Santander'),
(9, 'Amazonas', 'Tarapacá'),
(10, 'Amazonas', 'Puerto Alegría'),
(11, 'Amazonas', 'Miriti Paraná'),
(12, 'Antioquia', 'Medellín'),
(13, 'Antioquia', 'Abejorral'),
(14, 'Antioquia', 'Abriaquí'),
(15, 'Antioquia', 'Alejandría'),
(16, 'Antioquia', 'Amagá'),
(17, 'Antioquia', 'Amalfi'),
(18, 'Antioquia', 'Andes'),
(19, 'Antioquia', 'Angelópolis'),
(20, 'Antioquia', 'Angostura'),
(21, 'Antioquia', 'Anorí'),
(22, 'Antioquia', 'Anza'),
(23, 'Antioquia', 'Apartadó'),
(24, 'Antioquia', 'Arboletes'),
(25, 'Antioquia', 'Argelia'),
(26, 'Antioquia', 'Armenia'),
(27, 'Antioquia', 'Barbosa'),
(28, 'Antioquia', 'Bello'),
(29, 'Antioquia', 'Betania'),
(30, 'Antioquia', 'Betulia'),
(31, 'Antioquia', 'Ciudad Bolívar'),
(32, 'Antioquia', 'Briceño'),
(33, 'Antioquia', 'Buriticá'),
(34, 'Antioquia', 'Cáceres'),
(35, 'Antioquia', 'Caicedo'),
(36, 'Antioquia', 'Caldas'),
(37, 'Antioquia', 'Campamento'),
(38, 'Antioquia', 'Cañasgordas'),
(39, 'Antioquia', 'Caracolí'),
(40, 'Antioquia', 'Caramanta'),
(41, 'Antioquia', 'Carepa'),
(42, 'Antioquia', 'Carolina'),
(43, 'Antioquia', 'Caucasia'),
(44, 'Antioquia', 'Chigorodó'),
(45, 'Antioquia', 'Cisneros'),
(46, 'Antioquia', 'Cocorná'),
(47, 'Antioquia', 'Concepción'),
(48, 'Antioquia', 'Concordia'),
(49, 'Antioquia', 'Copacabana'),
(50, 'Antioquia', 'Dabeiba'),
(51, 'Antioquia', 'Don Matías'),
(52, 'Antioquia', 'Ebéjico'),
(53, 'Antioquia', 'El Bagre'),
(54, 'Antioquia', 'Entrerrios'),
(55, 'Antioquia', 'Envigado'),
(56, 'Antioquia', 'Fredonia'),
(57, 'Antioquia', 'Giraldo'),
(58, 'Antioquia', 'Girardota'),
(59, 'Antioquia', 'Gómez Plata'),
(60, 'Antioquia', 'Guadalupe'),
(61, 'Antioquia', 'Guarne'),
(62, 'Antioquia', 'Guatapé'),
(63, 'Antioquia', 'Heliconia'),
(64, 'Antioquia', 'Hispania'),
(65, 'Antioquia', 'Itagui'),
(66, 'Antioquia', 'Ituango'),
(67, 'Antioquia', 'Belmira'),
(68, 'Antioquia', 'Jericó'),
(69, 'Antioquia', 'La Ceja'),
(70, 'Antioquia', 'La Estrella'),
(71, 'Antioquia', 'La Pintada'),
(72, 'Antioquia', 'La Unión'),
(73, 'Antioquia', 'Liborina'),
(74, 'Antioquia', 'Maceo'),
(75, 'Antioquia', 'Marinilla'),
(76, 'Antioquia', 'Montebello'),
(77, 'Antioquia', 'Murindó'),
(78, 'Antioquia', 'Mutatá'),
(79, 'Antioquia', 'Nariño'),
(80, 'Antioquia', 'Necoclí'),
(81, 'Antioquia', 'Nechí'),
(82, 'Antioquia', 'Olaya'),
(83, 'Antioquia', 'Peñol'),
(84, 'Antioquia', 'Peque'),
(85, 'Antioquia', 'Pueblorrico'),
(86, 'Antioquia', 'Puerto Berrío'),
(87, 'Antioquia', 'Puerto Nare'),
(88, 'Antioquia', 'Puerto Triunfo'),
(89, 'Antioquia', 'Remedios'),
(90, 'Antioquia', 'Retiro'),
(91, 'Antioquia', 'Rionegro'),
(92, 'Antioquia', 'Sabanalarga'),
(93, 'Antioquia', 'Sabaneta'),
(94, 'Antioquia', 'Salgar'),
(95, 'Antioquia', 'San Francisco'),
(96, 'Antioquia', 'San Jerónimo'),
(97, 'Antioquia', 'San Luis'),
(98, 'Antioquia', 'San Pedro'),
(99, 'Antioquia', 'San Rafael'),
(100, 'Antioquia', 'San Roque'),
(101, 'Antioquia', 'San Vicente'),
(102, 'Antioquia', 'Santa Bárbara'),
(103, 'Antioquia', 'Santo Domingo'),
(104, 'Antioquia', 'El Santuario'),
(105, 'Antioquia', 'Segovia'),
(106, 'Antioquia', 'Sopetrán'),
(107, 'Antioquia', 'Támesis'),
(108, 'Antioquia', 'Tarazá'),
(109, 'Antioquia', 'Tarso'),
(110, 'Antioquia', 'Titiribí'),
(111, 'Antioquia', 'Toledo'),
(112, 'Antioquia', 'Turbo'),
(113, 'Antioquia', 'Uramita'),
(114, 'Antioquia', 'Urrao'),
(115, 'Antioquia', 'Valdivia'),
(116, 'Antioquia', 'Valparaíso'),
(117, 'Antioquia', 'Vegachí'),
(118, 'Antioquia', 'Venecia'),
(119, 'Antioquia', 'Yalí'),
(120, 'Antioquia', 'Yarumal'),
(121, 'Antioquia', 'Yolombó'),
(122, 'Antioquia', 'Yondó'),
(123, 'Antioquia', 'Zaragoza'),
(124, 'Antioquia', 'San Pedro de Uraba'),
(125, 'Antioquia', 'Santafé de Antioquia'),
(126, 'Antioquia', 'Santa Rosa de Osos'),
(127, 'Antioquia', 'San Andrés de Cuerquía'),
(128, 'Antioquia', 'Vigía del Fuerte'),
(129, 'Antioquia', 'San José de La Montaña'),
(130, 'Antioquia', 'San Juan de Urabá'),
(131, 'Antioquia', 'El Carmen de Viboral'),
(132, 'Antioquia', 'San Carlos'),
(133, 'Antioquia', 'Frontino'),
(134, 'Antioquia', 'Granada'),
(135, 'Antioquia', 'Jardín'),
(136, 'Antioquia', 'Sonsón'),
(137, 'Arauca', 'Arauquita'),
(138, 'Arauca', 'Cravo Norte'),
(139, 'Arauca', 'Fortul'),
(140, 'Arauca', 'Puerto Rondón'),
(141, 'Arauca', 'Saravena'),
(142, 'Arauca', 'Tame'),
(143, 'Arauca', 'Arauca'),
(144, 'Archipiélago de San Andrés, Providencia y Santa Catalina', 'Providencia'),
(145, 'Archipiélago de San Andrés, Providencia y Santa Catalina', 'San Andrés'),
(146, 'Atlántico', 'Barranquilla'),
(147, 'Atlántico', 'Baranoa'),
(148, 'Atlántico', 'Candelaria'),
(149, 'Atlántico', 'Galapa'),
(150, 'Atlántico', 'Luruaco'),
(151, 'Atlántico', 'Malambo'),
(152, 'Atlántico', 'Manatí'),
(153, 'Atlántico', 'Piojó'),
(154, 'Atlántico', 'Polonuevo'),
(155, 'Atlántico', 'Sabanagrande'),
(156, 'Atlántico', 'Sabanalarga'),
(157, 'Atlántico', 'Santa Lucía'),
(158, 'Atlántico', 'Santo Tomás'),
(159, 'Atlántico', 'Soledad'),
(160, 'Atlántico', 'Suan'),
(161, 'Atlántico', 'Tubará'),
(162, 'Atlántico', 'Usiacurí'),
(163, 'Atlántico', 'Juan de Acosta'),
(164, 'Atlántico', 'Palmar de Varela'),
(165, 'Atlántico', 'Campo de La Cruz'),
(166, 'Atlántico', 'Repelón'),
(167, 'Atlántico', 'Puerto Colombia'),
(168, 'Atlántico', 'Ponedera'),
(169, 'Bogotá D.C.', 'Bogotá D.C.'),
(170, 'Bolívar', 'Achí'),
(171, 'Bolívar', 'Arenal'),
(172, 'Bolívar', 'Arjona'),
(173, 'Bolívar', 'Arroyohondo'),
(174, 'Bolívar', 'Calamar'),
(175, 'Bolívar', 'Cantagallo'),
(176, 'Bolívar', 'Cicuco'),
(177, 'Bolívar', 'Córdoba'),
(178, 'Bolívar', 'Clemencia'),
(179, 'Bolívar', 'El Guamo'),
(180, 'Bolívar', 'Magangué'),
(181, 'Bolívar', 'Mahates'),
(182, 'Bolívar', 'Margarita'),
(183, 'Bolívar', 'Montecristo'),
(184, 'Bolívar', 'Mompós'),
(185, 'Bolívar', 'Morales'),
(186, 'Bolívar', 'Norosí'),
(187, 'Bolívar', 'Pinillos'),
(188, 'Bolívar', 'Regidor'),
(189, 'Bolívar', 'Río Viejo'),
(190, 'Bolívar', 'San Estanislao'),
(191, 'Bolívar', 'San Fernando'),
(192, 'Bolívar', 'San Juan Nepomuceno'),
(193, 'Bolívar', 'Santa Catalina'),
(194, 'Bolívar', 'Santa Rosa'),
(195, 'Bolívar', 'Simití'),
(196, 'Bolívar', 'Soplaviento'),
(197, 'Bolívar', 'Talaigua Nuevo'),
(198, 'Bolívar', 'Tiquisio'),
(199, 'Bolívar', 'Turbaco'),
(200, 'Bolívar', 'Turbaná'),
(201, 'Bolívar', 'Villanueva'),
(202, 'Bolívar', 'Barranco de Loba'),
(203, 'Bolívar', 'Santa Rosa del Sur'),
(204, 'Bolívar', 'Hatillo de Loba'),
(205, 'Bolívar', 'El Carmen de Bolívar'),
(206, 'Bolívar', 'San Martín de Loba'),
(207, 'Bolívar', 'Altos del Rosario'),
(208, 'Bolívar', 'San Jacinto del Cauca'),
(209, 'Bolívar', 'San Pablo de Borbur'),
(210, 'Bolívar', 'San Jacinto'),
(211, 'Bolívar', 'El Peñón'),
(212, 'Bolívar', 'Cartagena'),
(213, 'Bolívar', 'María la Baja'),
(214, 'Bolívar', 'San Cristóbal'),
(215, 'Bolívar', 'Zambrano'),
(216, 'Boyacá', 'Tununguá'),
(217, 'Boyacá', 'Motavita'),
(218, 'Boyacá', 'Ciénega'),
(219, 'Boyacá', 'Tunja'),
(220, 'Boyacá', 'Almeida'),
(221, 'Boyacá', 'Aquitania'),
(222, 'Boyacá', 'Arcabuco'),
(223, 'Boyacá', 'Berbeo'),
(224, 'Boyacá', 'Betéitiva'),
(225, 'Boyacá', 'Boavita'),
(226, 'Boyacá', 'Boyacá'),
(227, 'Boyacá', 'Briceño'),
(228, 'Boyacá', 'Buena Vista'),
(229, 'Boyacá', 'Busbanzá'),
(230, 'Boyacá', 'Caldas'),
(231, 'Boyacá', 'Campohermoso'),
(232, 'Boyacá', 'Cerinza'),
(233, 'Boyacá', 'Chinavita'),
(234, 'Boyacá', 'Chiquinquirá'),
(235, 'Boyacá', 'Chiscas'),
(236, 'Boyacá', 'Chita'),
(237, 'Boyacá', 'Chitaraque'),
(238, 'Boyacá', 'Chivatá'),
(239, 'Boyacá', 'Cómbita'),
(240, 'Boyacá', 'Coper'),
(241, 'Boyacá', 'Corrales'),
(242, 'Boyacá', 'Covarachía'),
(243, 'Boyacá', 'Cubará'),
(244, 'Boyacá', 'Cucaita'),
(245, 'Boyacá', 'Cuítiva'),
(246, 'Boyacá', 'Chíquiza'),
(247, 'Boyacá', 'Chivor'),
(248, 'Boyacá', 'Duitama'),
(249, 'Boyacá', 'El Cocuy'),
(250, 'Boyacá', 'El Espino'),
(251, 'Boyacá', 'Firavitoba'),
(252, 'Boyacá', 'Floresta'),
(253, 'Boyacá', 'Gachantivá'),
(254, 'Boyacá', 'Gameza'),
(255, 'Boyacá', 'Garagoa'),
(256, 'Boyacá', 'Guacamayas'),
(257, 'Boyacá', 'Guateque'),
(258, 'Boyacá', 'Guayatá'),
(259, 'Boyacá', 'Güicán'),
(260, 'Boyacá', 'Iza'),
(261, 'Boyacá', 'Jenesano'),
(262, 'Boyacá', 'Jericó'),
(263, 'Boyacá', 'Labranzagrande'),
(264, 'Boyacá', 'La Capilla'),
(265, 'Boyacá', 'La Victoria'),
(266, 'Boyacá', 'Macanal'),
(267, 'Boyacá', 'Maripí'),
(268, 'Boyacá', 'Miraflores'),
(269, 'Boyacá', 'Mongua'),
(270, 'Boyacá', 'Monguí'),
(271, 'Boyacá', 'Moniquirá'),
(272, 'Boyacá', 'Muzo'),
(273, 'Boyacá', 'Nobsa'),
(274, 'Boyacá', 'Nuevo Colón'),
(275, 'Boyacá', 'Oicatá'),
(276, 'Boyacá', 'Otanche'),
(277, 'Boyacá', 'Pachavita'),
(278, 'Boyacá', 'Páez'),
(279, 'Boyacá', 'Paipa'),
(280, 'Boyacá', 'Pajarito'),
(281, 'Boyacá', 'Panqueba'),
(282, 'Boyacá', 'Pauna'),
(283, 'Boyacá', 'Paya'),
(284, 'Boyacá', 'Pesca'),
(285, 'Boyacá', 'Pisba'),
(286, 'Boyacá', 'Puerto Boyacá'),
(287, 'Boyacá', 'Quípama'),
(288, 'Boyacá', 'Ramiriquí'),
(289, 'Boyacá', 'Ráquira'),
(290, 'Boyacá', 'Rondón'),
(291, 'Boyacá', 'Saboyá'),
(292, 'Boyacá', 'Sáchica'),
(293, 'Boyacá', 'Samacá'),
(294, 'Boyacá', 'San Eduardo'),
(295, 'Boyacá', 'San Mateo'),
(296, 'Boyacá', 'Santana'),
(297, 'Boyacá', 'Santa María'),
(298, 'Boyacá', 'Santa Sofía'),
(299, 'Boyacá', 'Sativanorte'),
(300, 'Boyacá', 'Sativasur'),
(301, 'Boyacá', 'Siachoque'),
(302, 'Boyacá', 'Soatá'),
(303, 'Boyacá', 'Socotá'),
(304, 'Boyacá', 'Socha'),
(305, 'Boyacá', 'Sogamoso'),
(306, 'Boyacá', 'Somondoco'),
(307, 'Boyacá', 'Sora'),
(308, 'Boyacá', 'Sotaquirá'),
(309, 'Boyacá', 'Soracá'),
(310, 'Boyacá', 'Susacón'),
(311, 'Boyacá', 'Sutamarchán'),
(312, 'Boyacá', 'Sutatenza'),
(313, 'Boyacá', 'Tasco'),
(314, 'Boyacá', 'Tenza'),
(315, 'Boyacá', 'Tibaná'),
(316, 'Boyacá', 'Tinjacá'),
(317, 'Boyacá', 'Tipacoque'),
(318, 'Boyacá', 'Toca'),
(319, 'Boyacá', 'Tópaga'),
(320, 'Boyacá', 'Tota'),
(321, 'Boyacá', 'Turmequé'),
(322, 'Boyacá', 'Tutazá'),
(323, 'Boyacá', 'Umbita'),
(324, 'Boyacá', 'Ventaquemada'),
(325, 'Boyacá', 'Viracachá'),
(326, 'Boyacá', 'Zetaquira'),
(327, 'Boyacá', 'Togüí'),
(328, 'Boyacá', 'Villa de Leyva'),
(329, 'Boyacá', 'Paz de Río'),
(330, 'Boyacá', 'Santa Rosa de Viterbo'),
(331, 'Boyacá', 'San Pablo de Borbur'),
(332, 'Boyacá', 'San Luis de Gaceno'),
(333, 'Boyacá', 'San José de Pare'),
(334, 'Boyacá', 'San Miguel de Sema'),
(335, 'Boyacá', 'Tuta'),
(336, 'Boyacá', 'Tibasosa'),
(337, 'Boyacá', 'La Uvita'),
(338, 'Boyacá', 'Belén'),
(339, 'Caldas', 'Manizales'),
(340, 'Caldas', 'Aguadas'),
(341, 'Caldas', 'Anserma'),
(342, 'Caldas', 'Aranzazu'),
(343, 'Caldas', 'Belalcázar'),
(344, 'Caldas', 'Chinchiná'),
(345, 'Caldas', 'Filadelfia'),
(346, 'Caldas', 'La Dorada'),
(347, 'Caldas', 'La Merced'),
(348, 'Caldas', 'Manzanares'),
(349, 'Caldas', 'Marmato'),
(350, 'Caldas', 'Marulanda'),
(351, 'Caldas', 'Neira'),
(352, 'Caldas', 'Norcasia'),
(353, 'Caldas', 'Pácora'),
(354, 'Caldas', 'Palestina'),
(355, 'Caldas', 'Pensilvania'),
(356, 'Caldas', 'Riosucio'),
(357, 'Caldas', 'Risaralda'),
(358, 'Caldas', 'Salamina'),
(359, 'Caldas', 'Samaná'),
(360, 'Caldas', 'San José'),
(361, 'Caldas', 'Supía'),
(362, 'Caldas', 'Victoria'),
(363, 'Caldas', 'Villamaría'),
(364, 'Caldas', 'Viterbo'),
(365, 'Caldas', 'Marquetalia'),
(366, 'Caquetá', 'Florencia'),
(367, 'Caquetá', 'Albania'),
(368, 'Caquetá', 'Curillo'),
(369, 'Caquetá', 'El Doncello'),
(370, 'Caquetá', 'El Paujil'),
(371, 'Caquetá', 'Morelia'),
(372, 'Caquetá', 'Puerto Rico'),
(373, 'Caquetá', 'Solano'),
(374, 'Caquetá', 'Solita'),
(375, 'Caquetá', 'Valparaíso'),
(376, 'Caquetá', 'San José del Fragua'),
(377, 'Caquetá', 'Belén de Los Andaquies'),
(378, 'Caquetá', 'Cartagena del Chairá'),
(379, 'Caquetá', 'Milán'),
(380, 'Caquetá', 'La Montañita'),
(381, 'Caquetá', 'San Vicente del Caguán'),
(382, 'Casanare', 'Yopal'),
(383, 'Casanare', 'Aguazul'),
(384, 'Casanare', 'Chámeza'),
(385, 'Casanare', 'Hato Corozal'),
(386, 'Casanare', 'La Salina'),
(387, 'Casanare', 'Monterrey'),
(388, 'Casanare', 'Pore'),
(389, 'Casanare', 'Recetor'),
(390, 'Casanare', 'Sabanalarga'),
(391, 'Casanare', 'Sácama'),
(392, 'Casanare', 'Tauramena'),
(393, 'Casanare', 'Trinidad'),
(394, 'Casanare', 'Villanueva'),
(395, 'Casanare', 'San Luis de Gaceno'),
(396, 'Casanare', 'Paz de Ariporo'),
(397, 'Casanare', 'Nunchía'),
(398, 'Casanare', 'Maní'),
(399, 'Casanare', 'Támara'),
(400, 'Casanare', 'Orocué'),
(401, 'Cauca', 'Popayán'),
(402, 'Cauca', 'Almaguer'),
(403, 'Cauca', 'Argelia'),
(404, 'Cauca', 'Balboa'),
(405, 'Cauca', 'Bolívar'),
(406, 'Cauca', 'Buenos Aires'),
(407, 'Cauca', 'Cajibío'),
(408, 'Cauca', 'Caldono'),
(409, 'Cauca', 'Caloto'),
(410, 'Cauca', 'Corinto'),
(411, 'Cauca', 'El Tambo'),
(412, 'Cauca', 'Florencia'),
(413, 'Cauca', 'Guachené'),
(414, 'Cauca', 'Guapi'),
(415, 'Cauca', 'Inzá'),
(416, 'Cauca', 'Jambaló'),
(417, 'Cauca', 'La Sierra'),
(418, 'Cauca', 'La Vega'),
(419, 'Cauca', 'López'),
(420, 'Cauca', 'Mercaderes'),
(421, 'Cauca', 'Miranda'),
(422, 'Cauca', 'Morales'),
(423, 'Cauca', 'Padilla'),
(424, 'Cauca', 'Patía'),
(425, 'Cauca', 'Piamonte'),
(426, 'Cauca', 'Piendamó'),
(427, 'Cauca', 'Puerto Tejada'),
(428, 'Cauca', 'Puracé'),
(429, 'Cauca', 'Rosas'),
(430, 'Cauca', 'Santa Rosa'),
(431, 'Cauca', 'Silvia'),
(432, 'Cauca', 'Sotara'),
(433, 'Cauca', 'Suárez'),
(434, 'Cauca', 'Sucre'),
(435, 'Cauca', 'Timbío'),
(436, 'Cauca', 'Timbiquí'),
(437, 'Cauca', 'Toribio'),
(438, 'Cauca', 'Totoró'),
(439, 'Cauca', 'Villa Rica'),
(440, 'Cauca', 'Santander de Quilichao'),
(441, 'Cauca', 'San Sebastián'),
(442, 'Cauca', 'Páez'),
(443, 'Cesar', 'Valledupar'),
(444, 'Cesar', 'Aguachica'),
(445, 'Cesar', 'Agustín Codazzi'),
(446, 'Cesar', 'Astrea'),
(447, 'Cesar', 'Becerril'),
(448, 'Cesar', 'Bosconia'),
(449, 'Cesar', 'Chimichagua'),
(450, 'Cesar', 'Chiriguaná'),
(451, 'Cesar', 'Curumaní'),
(452, 'Cesar', 'El Copey'),
(453, 'Cesar', 'El Paso'),
(454, 'Cesar', 'Gamarra'),
(455, 'Cesar', 'González'),
(456, 'Cesar', 'La Gloria'),
(457, 'Cesar', 'Manaure'),
(458, 'Cesar', 'Pailitas'),
(459, 'Cesar', 'Pelaya'),
(460, 'Cesar', 'Pueblo Bello'),
(461, 'Cesar', 'La Paz'),
(462, 'Cesar', 'San Alberto'),
(463, 'Cesar', 'San Diego'),
(464, 'Cesar', 'San Martín'),
(465, 'Cesar', 'Tamalameque'),
(466, 'Cesar', 'Río de Oro'),
(467, 'Cesar', 'La Jagua de Ibirico'),
(468, 'Chocó', 'Istmina'),
(469, 'Chocó', 'Quibdó'),
(470, 'Chocó', 'Acandí'),
(471, 'Chocó', 'Alto Baudo'),
(472, 'Chocó', 'Atrato'),
(473, 'Chocó', 'Bagadó'),
(474, 'Chocó', 'Bahía Solano'),
(475, 'Chocó', 'Bajo Baudó'),
(476, 'Chocó', 'Bojaya'),
(477, 'Chocó', 'Cértegui'),
(478, 'Chocó', 'Condoto'),
(479, 'Chocó', 'Juradó'),
(480, 'Chocó', 'Lloró'),
(481, 'Chocó', 'Medio Atrato'),
(482, 'Chocó', 'Medio Baudó'),
(483, 'Chocó', 'Medio San Juan'),
(484, 'Chocó', 'Nóvita'),
(485, 'Chocó', 'Nuquí'),
(486, 'Chocó', 'Río Iro'),
(487, 'Chocó', 'Río Quito'),
(488, 'Chocó', 'Riosucio'),
(489, 'Chocó', 'Sipí'),
(490, 'Chocó', 'Unguía'),
(491, 'Chocó', 'El Litoral del San Juan'),
(492, 'Chocó', 'El Cantón del San Pablo'),
(493, 'Chocó', 'El Carmen de Atrato'),
(494, 'Chocó', 'San José del Palmar'),
(495, 'Chocó', 'Belén de Bajira'),
(496, 'Chocó', 'Carmen del Darien'),
(497, 'Chocó', 'Tadó'),
(498, 'Chocó', 'Unión Panamericana'),
(499, 'Córdoba', 'San Bernardo del Viento'),
(500, 'Córdoba', 'Montería'),
(501, 'Córdoba', 'Ayapel'),
(502, 'Córdoba', 'Buenavista'),
(503, 'Córdoba', 'Canalete'),
(504, 'Córdoba', 'Cereté'),
(505, 'Córdoba', 'Chimá'),
(506, 'Córdoba', 'Chinú'),
(507, 'Córdoba', 'Cotorra'),
(508, 'Córdoba', 'Lorica'),
(509, 'Córdoba', 'Los Córdobas'),
(510, 'Córdoba', 'Momil'),
(511, 'Córdoba', 'Moñitos'),
(512, 'Córdoba', 'Planeta Rica'),
(513, 'Córdoba', 'Pueblo Nuevo'),
(514, 'Córdoba', 'Puerto Escondido'),
(515, 'Córdoba', 'Purísima'),
(516, 'Córdoba', 'Sahagún'),
(517, 'Córdoba', 'San Andrés Sotavento'),
(518, 'Córdoba', 'San Antero'),
(519, 'Córdoba', 'San Pelayo'),
(520, 'Córdoba', 'Tierralta'),
(521, 'Córdoba', 'Tuchín'),
(522, 'Córdoba', 'Valencia'),
(523, 'Córdoba', 'San José de Uré'),
(524, 'Córdoba', 'Ciénaga de Oro'),
(525, 'Córdoba', 'San Carlos'),
(526, 'Córdoba', 'Montelíbano'),
(527, 'Córdoba', 'La Apartada'),
(528, 'Córdoba', 'Puerto Libertador'),
(529, 'Cundinamarca', 'Anapoima'),
(530, 'Cundinamarca', 'Arbeláez'),
(531, 'Cundinamarca', 'Beltrán'),
(532, 'Cundinamarca', 'Bituima'),
(533, 'Cundinamarca', 'Bojacá'),
(534, 'Cundinamarca', 'Cabrera'),
(535, 'Cundinamarca', 'Cachipay'),
(536, 'Cundinamarca', 'Cajicá'),
(537, 'Cundinamarca', 'Caparrapí'),
(538, 'Cundinamarca', 'Caqueza'),
(539, 'Cundinamarca', 'Chaguaní'),
(540, 'Cundinamarca', 'Chipaque'),
(541, 'Cundinamarca', 'Choachí'),
(542, 'Cundinamarca', 'Chocontá'),
(543, 'Cundinamarca', 'Cogua'),
(544, 'Cundinamarca', 'Cota'),
(545, 'Cundinamarca', 'Cucunubá'),
(546, 'Cundinamarca', 'El Colegio'),
(547, 'Cundinamarca', 'El Rosal'),
(548, 'Cundinamarca', 'Fomeque'),
(549, 'Cundinamarca', 'Fosca'),
(550, 'Cundinamarca', 'Funza'),
(551, 'Cundinamarca', 'Fúquene'),
(552, 'Cundinamarca', 'Gachala'),
(553, 'Cundinamarca', 'Gachancipá'),
(554, 'Cundinamarca', 'Gachetá'),
(555, 'Cundinamarca', 'Girardot'),
(556, 'Cundinamarca', 'Granada'),
(557, 'Cundinamarca', 'Guachetá'),
(558, 'Cundinamarca', 'Guaduas'),
(559, 'Cundinamarca', 'Guasca'),
(560, 'Cundinamarca', 'Guataquí'),
(561, 'Cundinamarca', 'Guatavita'),
(562, 'Cundinamarca', 'Guayabetal'),
(563, 'Cundinamarca', 'Gutiérrez'),
(564, 'Cundinamarca', 'Jerusalén'),
(565, 'Cundinamarca', 'Junín'),
(566, 'Cundinamarca', 'La Calera'),
(567, 'Cundinamarca', 'La Mesa'),
(568, 'Cundinamarca', 'La Palma'),
(569, 'Cundinamarca', 'La Peña'),
(570, 'Cundinamarca', 'La Vega'),
(571, 'Cundinamarca', 'Lenguazaque'),
(572, 'Cundinamarca', 'Macheta'),
(573, 'Cundinamarca', 'Madrid'),
(574, 'Cundinamarca', 'Manta'),
(575, 'Cundinamarca', 'Medina'),
(576, 'Cundinamarca', 'Mosquera'),
(577, 'Cundinamarca', 'Nariño'),
(578, 'Cundinamarca', 'Nemocón'),
(579, 'Cundinamarca', 'Nilo'),
(580, 'Cundinamarca', 'Nimaima'),
(581, 'Cundinamarca', 'Nocaima'),
(582, 'Cundinamarca', 'Venecia'),
(583, 'Cundinamarca', 'Pacho'),
(584, 'Cundinamarca', 'Paime'),
(585, 'Cundinamarca', 'Pandi'),
(586, 'Cundinamarca', 'Paratebueno'),
(587, 'Cundinamarca', 'Pasca'),
(588, 'Cundinamarca', 'Puerto Salgar'),
(589, 'Cundinamarca', 'Pulí'),
(590, 'Cundinamarca', 'Quebradanegra'),
(591, 'Cundinamarca', 'Quetame'),
(592, 'Cundinamarca', 'Quipile'),
(593, 'Cundinamarca', 'Apulo'),
(594, 'Cundinamarca', 'Ricaurte'),
(595, 'Cundinamarca', 'San Bernardo'),
(596, 'Cundinamarca', 'San Cayetano'),
(597, 'Cundinamarca', 'San Francisco'),
(598, 'Cundinamarca', 'Sesquilé'),
(599, 'Cundinamarca', 'Sibaté'),
(600, 'Cundinamarca', 'Silvania'),
(601, 'Cundinamarca', 'Simijaca'),
(602, 'Cundinamarca', 'Soacha'),
(603, 'Cundinamarca', 'Subachoque'),
(604, 'Cundinamarca', 'Suesca'),
(605, 'Cundinamarca', 'Supatá'),
(606, 'Cundinamarca', 'Susa'),
(607, 'Cundinamarca', 'Sutatausa'),
(608, 'Cundinamarca', 'Tabio'),
(609, 'Cundinamarca', 'Tausa'),
(610, 'Cundinamarca', 'Tena'),
(611, 'Cundinamarca', 'Tenjo'),
(612, 'Cundinamarca', 'Tibacuy'),
(613, 'Cundinamarca', 'Tibirita'),
(614, 'Cundinamarca', 'Tocaima'),
(615, 'Cundinamarca', 'Tocancipá'),
(616, 'Cundinamarca', 'Topaipí'),
(617, 'Cundinamarca', 'Ubalá'),
(618, 'Cundinamarca', 'Ubaque'),
(619, 'Cundinamarca', 'Une'),
(620, 'Cundinamarca', 'Útica'),
(621, 'Cundinamarca', 'Vianí'),
(622, 'Cundinamarca', 'Villagómez'),
(623, 'Cundinamarca', 'Villapinzón'),
(624, 'Cundinamarca', 'Villeta'),
(625, 'Cundinamarca', 'Viotá'),
(626, 'Cundinamarca', 'Zipacón'),
(627, 'Cundinamarca', 'San Juan de Río Seco'),
(628, 'Cundinamarca', 'Villa de San Diego de Ubate'),
(629, 'Cundinamarca', 'Guayabal de Siquima'),
(630, 'Cundinamarca', 'San Antonio del Tequendama'),
(631, 'Cundinamarca', 'Agua de Dios'),
(632, 'Cundinamarca', 'Carmen de Carupa'),
(633, 'Cundinamarca', 'Vergara'),
(634, 'Cundinamarca', 'Albán'),
(635, 'Cundinamarca', 'Anolaima'),
(636, 'Cundinamarca', 'Chía'),
(637, 'Cundinamarca', 'El Peñón'),
(638, 'Cundinamarca', 'Sopó'),
(639, 'Cundinamarca', 'Gama'),
(640, 'Cundinamarca', 'Sasaima'),
(641, 'Cundinamarca', 'Yacopí'),
(642, 'Cundinamarca', 'Fusagasugá'),
(643, 'Cundinamarca', 'Zipaquirá'),
(644, 'Cundinamarca', 'Facatativá'),
(645, 'Guainía', 'Inírida'),
(646, 'Guainía', 'Barranco Minas'),
(647, 'Guainía', 'Mapiripana'),
(648, 'Guainía', 'San Felipe'),
(649, 'Guainía', 'Puerto Colombia'),
(650, 'Guainía', 'La Guadalupe'),
(651, 'Guainía', 'Cacahual'),
(652, 'Guainía', 'Pana Pana'),
(653, 'Guainía', 'Morichal'),
(654, 'Guaviare', 'Calamar'),
(655, 'Guaviare', 'San José del Guaviare'),
(656, 'Guaviare', 'Miraflores'),
(657, 'Guaviare', 'El Retorno'),
(658, 'Huila', 'Neiva'),
(659, 'Huila', 'Acevedo'),
(660, 'Huila', 'Agrado'),
(661, 'Huila', 'Aipe'),
(662, 'Huila', 'Algeciras'),
(663, 'Huila', 'Altamira'),
(664, 'Huila', 'Baraya'),
(665, 'Huila', 'Campoalegre'),
(666, 'Huila', 'Colombia'),
(667, 'Huila', 'Elías'),
(668, 'Huila', 'Garzón'),
(669, 'Huila', 'Gigante'),
(670, 'Huila', 'Guadalupe'),
(671, 'Huila', 'Hobo'),
(672, 'Huila', 'Iquira'),
(673, 'Huila', 'Isnos'),
(674, 'Huila', 'La Argentina'),
(675, 'Huila', 'La Plata'),
(676, 'Huila', 'Nátaga'),
(677, 'Huila', 'Oporapa'),
(678, 'Huila', 'Paicol'),
(679, 'Huila', 'Palermo'),
(680, 'Huila', 'Palestina'),
(681, 'Huila', 'Pital'),
(682, 'Huila', 'Pitalito'),
(683, 'Huila', 'Rivera'),
(684, 'Huila', 'Saladoblanco'),
(685, 'Huila', 'Santa María'),
(686, 'Huila', 'Suaza'),
(687, 'Huila', 'Tarqui'),
(688, 'Huila', 'Tesalia'),
(689, 'Huila', 'Tello'),
(690, 'Huila', 'Teruel'),
(691, 'Huila', 'Timaná'),
(692, 'Huila', 'Villavieja'),
(693, 'Huila', 'Yaguará'),
(694, 'Huila', 'San Agustín'),
(695, 'La Guajira', 'Riohacha'),
(696, 'La Guajira', 'Albania'),
(697, 'La Guajira', 'Barrancas'),
(698, 'La Guajira', 'Dibula'),
(699, 'La Guajira', 'Distracción'),
(700, 'La Guajira', 'El Molino'),
(701, 'La Guajira', 'Fonseca'),
(702, 'La Guajira', 'Hatonuevo'),
(703, 'La Guajira', 'Maicao'),
(704, 'La Guajira', 'Manaure'),
(705, 'La Guajira', 'Uribia'),
(706, 'La Guajira', 'Urumita'),
(707, 'La Guajira', 'Villanueva'),
(708, 'La Guajira', 'La Jagua del Pilar'),
(709, 'La Guajira', 'San Juan del Cesar'),
(710, 'Magdalena', 'Santa Marta'),
(711, 'Magdalena', 'Algarrobo'),
(712, 'Magdalena', 'Aracataca'),
(713, 'Magdalena', 'Ariguaní'),
(714, 'Magdalena', 'Cerro San Antonio'),
(715, 'Magdalena', 'Chivolo'),
(716, 'Magdalena', 'Concordia'),
(717, 'Magdalena', 'El Banco'),
(718, 'Magdalena', 'El Piñon'),
(719, 'Magdalena', 'El Retén'),
(720, 'Magdalena', 'Fundación'),
(721, 'Magdalena', 'Guamal'),
(722, 'Magdalena', 'Nueva Granada'),
(723, 'Magdalena', 'Pedraza'),
(724, 'Magdalena', 'Pivijay'),
(725, 'Magdalena', 'Plato'),
(726, 'Magdalena', 'Remolino'),
(727, 'Magdalena', 'Salamina'),
(728, 'Magdalena', 'San Zenón'),
(729, 'Magdalena', 'Santa Ana'),
(730, 'Magdalena', 'Sitionuevo'),
(731, 'Magdalena', 'Tenerife'),
(732, 'Magdalena', 'Zapayán'),
(733, 'Magdalena', 'Zona Bananera'),
(734, 'Magdalena', 'San Sebastián de Buenavista'),
(735, 'Magdalena', 'Sabanas de San Angel'),
(736, 'Magdalena', 'Pijiño del Carmen'),
(737, 'Magdalena', 'Santa Bárbara de Pinto'),
(738, 'Magdalena', 'Pueblo Viejo'),
(739, 'Magdalena', 'Ciénaga'),
(740, 'Meta', 'Uribe'),
(741, 'Meta', 'Villavicencio'),
(742, 'Meta', 'Acacias'),
(743, 'Meta', 'Cabuyaro'),
(744, 'Meta', 'Cubarral'),
(745, 'Meta', 'Cumaral'),
(746, 'Meta', 'El Calvario'),
(747, 'Meta', 'El Castillo'),
(748, 'Meta', 'El Dorado'),
(749, 'Meta', 'Granada'),
(750, 'Meta', 'Guamal'),
(751, 'Meta', 'Mapiripán'),
(752, 'Meta', 'Mesetas'),
(753, 'Meta', 'La Macarena'),
(754, 'Meta', 'Lejanías'),
(755, 'Meta', 'Puerto Concordia'),
(756, 'Meta', 'Puerto Gaitán'),
(757, 'Meta', 'Puerto López'),
(758, 'Meta', 'Puerto Lleras'),
(759, 'Meta', 'Puerto Rico'),
(760, 'Meta', 'Restrepo'),
(761, 'Meta', 'San Juanito'),
(762, 'Meta', 'San Martín'),
(763, 'Meta', 'Vista Hermosa'),
(764, 'Meta', 'Barranca de Upía'),
(765, 'Meta', 'Fuente de Oro'),
(766, 'Meta', 'San Carlos de Guaroa'),
(767, 'Meta', 'San Juan de Arama'),
(768, 'Meta', 'Castilla la Nueva'),
(769, 'Nariño', 'Santacruz'),
(770, 'Nariño', 'Pasto'),
(771, 'Nariño', 'Albán'),
(772, 'Nariño', 'Aldana'),
(773, 'Nariño', 'Ancuyá'),
(774, 'Nariño', 'Barbacoas'),
(775, 'Nariño', 'Colón'),
(776, 'Nariño', 'Consaca'),
(777, 'Nariño', 'Contadero'),
(778, 'Nariño', 'Córdoba'),
(779, 'Nariño', 'Cuaspud'),
(780, 'Nariño', 'Cumbal'),
(781, 'Nariño', 'Cumbitara'),
(782, 'Nariño', 'El Charco'),
(783, 'Nariño', 'El Peñol'),
(784, 'Nariño', 'El Rosario'),
(785, 'Nariño', 'El Tambo'),
(786, 'Nariño', 'Funes'),
(787, 'Nariño', 'Guachucal'),
(788, 'Nariño', 'Guaitarilla'),
(789, 'Nariño', 'Gualmatán'),
(790, 'Nariño', 'Iles'),
(791, 'Nariño', 'Imués'),
(792, 'Nariño', 'Ipiales'),
(793, 'Nariño', 'La Cruz'),
(794, 'Nariño', 'La Florida'),
(795, 'Nariño', 'La Llanada'),
(796, 'Nariño', 'La Tola'),
(797, 'Nariño', 'La Unión'),
(798, 'Nariño', 'Leiva'),
(799, 'Nariño', 'Linares'),
(800, 'Nariño', 'Los Andes'),
(801, 'Nariño', 'Magüí'),
(802, 'Nariño', 'Mallama'),
(803, 'Nariño', 'Mosquera'),
(804, 'Nariño', 'Nariño'),
(805, 'Nariño', 'Olaya Herrera'),
(806, 'Nariño', 'Ospina'),
(807, 'Nariño', 'Francisco Pizarro'),
(808, 'Nariño', 'Policarpa'),
(809, 'Nariño', 'Potosí'),
(810, 'Nariño', 'Providencia'),
(811, 'Nariño', 'Puerres'),
(812, 'Nariño', 'Pupiales'),
(813, 'Nariño', 'Ricaurte'),
(814, 'Nariño', 'Roberto Payán'),
(815, 'Nariño', 'Samaniego'),
(816, 'Nariño', 'Sandoná'),
(817, 'Nariño', 'San Bernardo'),
(818, 'Nariño', 'San Lorenzo'),
(819, 'Nariño', 'San Pablo'),
(820, 'Nariño', 'Santa Bárbara'),
(821, 'Nariño', 'Sapuyes'),
(822, 'Nariño', 'Taminango'),
(823, 'Nariño', 'Tangua'),
(824, 'Nariño', 'Túquerres'),
(825, 'Nariño', 'Yacuanquer'),
(826, 'Nariño', 'San Pedro de Cartago'),
(827, 'Nariño', 'El Tablón de Gómez'),
(828, 'Nariño', 'Buesaco'),
(829, 'Nariño', 'San Andrés de Tumaco'),
(830, 'Nariño', 'Belén'),
(831, 'Nariño', 'Chachagüí'),
(832, 'Nariño', 'Arboleda'),
(833, 'Norte de Santander', 'Silos'),
(834, 'Norte de Santander', 'Cácota'),
(835, 'Norte de Santander', 'Toledo'),
(836, 'Norte de Santander', 'Mutiscua'),
(837, 'Norte de Santander', 'El Zulia'),
(838, 'Norte de Santander', 'Salazar'),
(839, 'Norte de Santander', 'Cucutilla'),
(840, 'Norte de Santander', 'Puerto Santander'),
(841, 'Norte de Santander', 'Gramalote'),
(842, 'Norte de Santander', 'El Tarra'),
(843, 'Norte de Santander', 'Teorama'),
(844, 'Norte de Santander', 'Arboledas'),
(845, 'Norte de Santander', 'Lourdes'),
(846, 'Norte de Santander', 'Bochalema'),
(847, 'Norte de Santander', 'Convención'),
(848, 'Norte de Santander', 'Hacarí'),
(849, 'Norte de Santander', 'Herrán'),
(850, 'Norte de Santander', 'Tibú'),
(851, 'Norte de Santander', 'San Cayetano'),
(852, 'Norte de Santander', 'San Calixto'),
(853, 'Norte de Santander', 'La Playa'),
(854, 'Norte de Santander', 'Chinácota'),
(855, 'Norte de Santander', 'Ragonvalia'),
(856, 'Norte de Santander', 'La Esperanza'),
(857, 'Norte de Santander', 'Villa del Rosario'),
(858, 'Norte de Santander', 'Chitagá'),
(859, 'Norte de Santander', 'Sardinata'),
(860, 'Norte de Santander', 'Abrego'),
(861, 'Norte de Santander', 'Los Patios'),
(862, 'Norte de Santander', 'Ocaña'),
(863, 'Norte de Santander', 'Bucarasica'),
(864, 'Norte de Santander', 'Santiago'),
(865, 'Norte de Santander', 'Labateca'),
(866, 'Norte de Santander', 'Cachirá'),
(867, 'Norte de Santander', 'Villa Caro'),
(868, 'Norte de Santander', 'Durania'),
(869, 'Norte de Santander', 'Pamplona'),
(870, 'Norte de Santander', 'Pamplonita'),
(871, 'Norte de Santander', 'Cúcuta'),
(872, 'Norte de Santander', 'El Carmen'),
(873, 'Putumayo', 'Mocoa'),
(874, 'Putumayo', 'Colón'),
(875, 'Putumayo', 'Orito'),
(876, 'Putumayo', 'Puerto Caicedo'),
(877, 'Putumayo', 'Puerto Guzmán'),
(878, 'Putumayo', 'Leguízamo'),
(879, 'Putumayo', 'Sibundoy'),
(880, 'Putumayo', 'San Francisco'),
(881, 'Putumayo', 'San Miguel'),
(882, 'Putumayo', 'Santiago'),
(883, 'Putumayo', 'Valle de Guamez'),
(884, 'Putumayo', 'Puerto Asís'),
(885, 'Putumayo', 'Villagarzón'),
(886, 'Quindío', 'Armenia'),
(887, 'Quindío', 'Buenavista'),
(888, 'Quindío', 'Circasia'),
(889, 'Quindío', 'Córdoba'),
(890, 'Quindío', 'Filandia'),
(891, 'Quindío', 'La Tebaida'),
(892, 'Quindío', 'Montenegro'),
(893, 'Quindío', 'Pijao'),
(894, 'Quindío', 'Quimbaya'),
(895, 'Quindío', 'Salento'),
(896, 'Quindío', 'Calarcá'),
(897, 'Quindío', 'Génova'),
(898, 'Risaralda', 'Pereira'),
(899, 'Risaralda', 'Apía'),
(900, 'Risaralda', 'Balboa'),
(901, 'Risaralda', 'Dosquebradas'),
(902, 'Risaralda', 'Guática'),
(903, 'Risaralda', 'La Celia'),
(904, 'Risaralda', 'La Virginia'),
(905, 'Risaralda', 'Marsella'),
(906, 'Risaralda', 'Mistrató'),
(907, 'Risaralda', 'Pueblo Rico'),
(908, 'Risaralda', 'Quinchía'),
(909, 'Risaralda', 'Santuario'),
(910, 'Risaralda', 'Santa Rosa de Cabal'),
(911, 'Risaralda', 'Belén de Umbría'),
(912, 'Santander', 'Puerto Wilches'),
(913, 'Santander', 'Puerto Parra'),
(914, 'Santander', 'Bucaramanga'),
(915, 'Santander', 'Aguada'),
(916, 'Santander', 'Albania'),
(917, 'Santander', 'Aratoca'),
(918, 'Santander', 'Barbosa'),
(919, 'Santander', 'Barichara'),
(920, 'Santander', 'Barrancabermeja'),
(921, 'Santander', 'Betulia'),
(922, 'Santander', 'Bolívar'),
(923, 'Santander', 'Cabrera'),
(924, 'Santander', 'California'),
(925, 'Santander', 'Carcasí'),
(926, 'Santander', 'Cepitá'),
(927, 'Santander', 'Cerrito'),
(928, 'Santander', 'Charalá'),
(929, 'Santander', 'Charta'),
(930, 'Santander', 'Chipatá'),
(931, 'Santander', 'Cimitarra'),
(932, 'Santander', 'Concepción'),
(933, 'Santander', 'Confines'),
(934, 'Santander', 'Contratación'),
(935, 'Santander', 'Coromoro'),
(936, 'Santander', 'Curití'),
(937, 'Santander', 'El Guacamayo'),
(938, 'Santander', 'El Playón'),
(939, 'Santander', 'Encino'),
(940, 'Santander', 'Enciso'),
(941, 'Santander', 'Florián'),
(942, 'Santander', 'Floridablanca'),
(943, 'Santander', 'Galán'),
(944, 'Santander', 'Gambita'),
(945, 'Santander', 'Girón'),
(946, 'Santander', 'Guaca'),
(947, 'Santander', 'Guadalupe'),
(948, 'Santander', 'Guapotá'),
(949, 'Santander', 'Guavatá'),
(950, 'Santander', 'Güepsa'),
(951, 'Santander', 'Jesús María'),
(952, 'Santander', 'Jordán'),
(953, 'Santander', 'La Belleza'),
(954, 'Santander', 'Landázuri'),
(955, 'Santander', 'La Paz'),
(956, 'Santander', 'Lebríja'),
(957, 'Santander', 'Los Santos'),
(958, 'Santander', 'Macaravita'),
(959, 'Santander', 'Málaga'),
(960, 'Santander', 'Matanza'),
(961, 'Santander', 'Mogotes'),
(962, 'Santander', 'Molagavita'),
(963, 'Santander', 'Ocamonte'),
(964, 'Santander', 'Oiba'),
(965, 'Santander', 'Onzaga'),
(966, 'Santander', 'Palmar'),
(967, 'Santander', 'Páramo'),
(968, 'Santander', 'Piedecuesta'),
(969, 'Santander', 'Pinchote'),
(970, 'Santander', 'Puente Nacional'),
(971, 'Santander', 'Rionegro'),
(972, 'Santander', 'San Andrés'),
(973, 'Santander', 'San Gil'),
(974, 'Santander', 'San Joaquín'),
(975, 'Santander', 'San Miguel'),
(976, 'Santander', 'Santa Bárbara'),
(977, 'Santander', 'Simacota'),
(978, 'Santander', 'Socorro'),
(979, 'Santander', 'Suaita'),
(980, 'Santander', 'Sucre'),
(981, 'Santander', 'Suratá'),
(982, 'Santander', 'Tona'),
(983, 'Santander', 'Vélez'),
(984, 'Santander', 'Vetas'),
(985, 'Santander', 'Villanueva'),
(986, 'Santander', 'Zapatoca'),
(987, 'Santander', 'Palmas del Socorro'),
(988, 'Santander', 'San Vicente de Chucurí'),
(989, 'Santander', 'San José de Miranda'),
(990, 'Santander', 'Santa Helena del Opón'),
(991, 'Santander', 'Sabana de Torres'),
(992, 'Santander', 'El Carmen de Chucurí'),
(993, 'Santander', 'Valle de San José'),
(994, 'Santander', 'San Benito'),
(995, 'Santander', 'Hato'),
(996, 'Santander', 'Chimá'),
(997, 'Santander', 'Capitanejo'),
(998, 'Santander', 'El Peñón'),
(999, 'Sucre', 'Sincelejo'),
(1000, 'Sucre', 'Buenavista'),
(1001, 'Sucre', 'Caimito'),
(1002, 'Sucre', 'Coloso'),
(1003, 'Sucre', 'Coveñas'),
(1004, 'Sucre', 'Chalán'),
(1005, 'Sucre', 'El Roble'),
(1006, 'Sucre', 'Galeras'),
(1007, 'Sucre', 'Guaranda'),
(1008, 'Sucre', 'La Unión'),
(1009, 'Sucre', 'Los Palmitos'),
(1010, 'Sucre', 'Majagual'),
(1011, 'Sucre', 'Morroa'),
(1012, 'Sucre', 'Ovejas'),
(1013, 'Sucre', 'Palmito'),
(1014, 'Sucre', 'San Benito Abad'),
(1015, 'Sucre', 'San Marcos'),
(1016, 'Sucre', 'San Onofre'),
(1017, 'Sucre', 'San Pedro'),
(1018, 'Sucre', 'Sucre'),
(1019, 'Sucre', 'Tolú Viejo'),
(1020, 'Sucre', 'San Luis de Sincé'),
(1021, 'Sucre', 'San Juan de Betulia'),
(1022, 'Sucre', 'Santiago de Tolú'),
(1023, 'Sucre', 'Sampués'),
(1024, 'Sucre', 'Corozal'),
(1025, 'Tolima', 'Alpujarra'),
(1026, 'Tolima', 'Alvarado'),
(1027, 'Tolima', 'Ambalema'),
(1028, 'Tolima', 'Armero'),
(1029, 'Tolima', 'Ataco'),
(1030, 'Tolima', 'Cajamarca'),
(1031, 'Tolima', 'Chaparral'),
(1032, 'Tolima', 'Coello'),
(1033, 'Tolima', 'Coyaima'),
(1034, 'Tolima', 'Cunday'),
(1035, 'Tolima', 'Dolores'),
(1036, 'Tolima', 'Espinal'),
(1037, 'Tolima', 'Falan'),
(1038, 'Tolima', 'Flandes'),
(1039, 'Tolima', 'Fresno'),
(1040, 'Tolima', 'Guamo'),
(1041, 'Tolima', 'Herveo'),
(1042, 'Tolima', 'Honda'),
(1043, 'Tolima', 'Icononzo'),
(1044, 'Tolima', 'Mariquita'),
(1045, 'Tolima', 'Melgar'),
(1046, 'Tolima', 'Murillo'),
(1047, 'Tolima', 'Natagaima'),
(1048, 'Tolima', 'Ortega'),
(1049, 'Tolima', 'Palocabildo'),
(1050, 'Tolima', 'Piedras'),
(1051, 'Tolima', 'Planadas'),
(1052, 'Tolima', 'Prado'),
(1053, 'Tolima', 'Purificación'),
(1054, 'Tolima', 'Rio Blanco'),
(1055, 'Tolima', 'Roncesvalles'),
(1056, 'Tolima', 'Rovira'),
(1057, 'Tolima', 'Saldaña'),
(1058, 'Tolima', 'Santa Isabel'),
(1059, 'Tolima', 'Venadillo'),
(1060, 'Tolima', 'Villahermosa'),
(1061, 'Tolima', 'Villarrica'),
(1062, 'Tolima', 'Valle de San Juan'),
(1063, 'Tolima', 'Carmen de Apicala'),
(1064, 'Tolima', 'San Luis'),
(1065, 'Tolima', 'San Antonio'),
(1066, 'Tolima', 'Casabianca'),
(1067, 'Tolima', 'Anzoátegui'),
(1068, 'Tolima', 'Ibagué'),
(1069, 'Tolima', 'Líbano'),
(1070, 'Tolima', 'Lérida'),
(1071, 'Tolima', 'Suárez'),
(1072, 'Valle del Cauca', 'El Dovio'),
(1073, 'Valle del Cauca', 'Roldanillo'),
(1074, 'Valle del Cauca', 'Argelia'),
(1075, 'Valle del Cauca', 'Sevilla'),
(1076, 'Valle del Cauca', 'Zarzal'),
(1077, 'Valle del Cauca', 'El Cerrito'),
(1078, 'Valle del Cauca', 'Cartago'),
(1079, 'Valle del Cauca', 'Caicedonia'),
(1080, 'Valle del Cauca', 'El Cairo'),
(1081, 'Valle del Cauca', 'La Unión'),
(1082, 'Valle del Cauca', 'Restrepo'),
(1083, 'Valle del Cauca', 'Dagua'),
(1084, 'Valle del Cauca', 'Guacarí'),
(1085, 'Valle del Cauca', 'Ansermanuevo'),
(1086, 'Valle del Cauca', 'Bugalagrande'),
(1087, 'Valle del Cauca', 'La Victoria'),
(1088, 'Valle del Cauca', 'Ginebra'),
(1089, 'Valle del Cauca', 'Yumbo'),
(1090, 'Valle del Cauca', 'Obando'),
(1091, 'Valle del Cauca', 'Bolívar'),
(1092, 'Valle del Cauca', 'Cali'),
(1093, 'Valle del Cauca', 'San Pedro'),
(1094, 'Valle del Cauca', 'Guadalajara de Buga'),
(1095, 'Valle del Cauca', 'Calima'),
(1096, 'Valle del Cauca', 'Andalucía'),
(1097, 'Valle del Cauca', 'Pradera'),
(1098, 'Valle del Cauca', 'Yotoco'),
(1099, 'Valle del Cauca', 'Palmira'),
(1100, 'Valle del Cauca', 'Riofrío'),
(1101, 'Valle del Cauca', 'Alcalá'),
(1102, 'Valle del Cauca', 'Versalles'),
(1103, 'Valle del Cauca', 'El Águila'),
(1104, 'Valle del Cauca', 'Toro'),
(1105, 'Valle del Cauca', 'Candelaria'),
(1106, 'Valle del Cauca', 'La Cumbre'),
(1107, 'Valle del Cauca', 'Ulloa'),
(1108, 'Valle del Cauca', 'Trujillo'),
(1109, 'Valle del Cauca', 'Vijes'),
(1110, 'Valle del Cauca', 'Tuluá'),
(1111, 'Valle del Cauca', 'Florida'),
(1112, 'Valle del Cauca', 'Jamundí'),
(1113, 'Valle del Cauca', 'Buenaventura'),
(1114, 'Vaupés', 'Mitú'),
(1115, 'Vaupés', 'Carurú'),
(1116, 'Vaupés', 'Taraira'),
(1117, 'Vaupés', 'Papunahua'),
(1118, 'Vaupés', 'Yavaraté'),
(1119, 'Vaupés', 'Pacoa'),
(1120, 'Vichada', 'Puerto Carreño'),
(1121, 'Vichada', 'La Primavera'),
(1122, 'Vichada', 'Santa Rosalía'),
(1123, 'Vichada', 'Cumaribo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  `rol` int(11) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `fechaRegistro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id_usuarios`, `nombre`, `apellido`, `correo`, `contrasena`, `rol`, `estado`, `fechaRegistro`) VALUES
(1, 'Pedro', 'Garcia', 'pedrogarcia1995@gmail.com', '12345678', 2, 'activo', '1995-05-25'),
(2, 'Administrador', 'Administrador', 'admin@gmail.com', 'admin', 1, 'activo', '1983-09-15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_cargo`
--
ALTER TABLE `tbl_cargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `tbl_educacion`
--
ALTER TABLE `tbl_educacion`
  ADD PRIMARY KEY (`id_educacion`),
  ADD KEY `id_perfilProfesional` (`id_perfilProfesional`);

--
-- Indices de la tabla `tbl_experiencia`
--
ALTER TABLE `tbl_experiencia`
  ADD PRIMARY KEY (`id_experiencia`),
  ADD KEY `id_perfilProfesional` (`id_perfilProfesional`),
  ADD KEY `ubicacion` (`ubicacion`);

--
-- Indices de la tabla `tbl_idioma`
--
ALTER TABLE `tbl_idioma`
  ADD PRIMARY KEY (`id_idioma`),
  ADD KEY `id_perfilProfesional` (`id_perfilProfesional`);

--
-- Indices de la tabla `tbl_informacionpersonal`
--
ALTER TABLE `tbl_informacionpersonal`
  ADD PRIMARY KEY (`id_informacionPersonal`),
  ADD KEY `id_usuarios` (`id_usuarios`),
  ADD KEY `ubicacion` (`ubicacion`);

--
-- Indices de la tabla `tbl_oferta`
--
ALTER TABLE `tbl_oferta`
  ADD PRIMARY KEY (`id_oferta`),
  ADD KEY `id_perfilEmpresa` (`id_perfilEmpresa`),
  ADD KEY `ubicacion` (`ubicacion`);

--
-- Indices de la tabla `tbl_perfilempresa`
--
ALTER TABLE `tbl_perfilempresa`
  ADD PRIMARY KEY (`id_perfilEmpresa`);

--
-- Indices de la tabla `tbl_perfilprofesional`
--
ALTER TABLE `tbl_perfilprofesional`
  ADD PRIMARY KEY (`id_perfilProfesional`),
  ADD KEY `id_informacionPersonal` (`id_informacionPersonal`),
  ADD KEY `cargo` (`cargo`);

--
-- Indices de la tabla `tbl_postulados`
--
ALTER TABLE `tbl_postulados`
  ADD PRIMARY KEY (`id_postulados`),
  ADD KEY `id_perfilProfesional` (`id_perfilProfesional`),
  ADD KEY `id_oferta` (`id_oferta`);

--
-- Indices de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tbl_ubicacion`
--
ALTER TABLE `tbl_ubicacion`
  ADD PRIMARY KEY (`id_ubicacion`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD KEY `rol` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_educacion`
--
ALTER TABLE `tbl_educacion`
  MODIFY `id_educacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_experiencia`
--
ALTER TABLE `tbl_experiencia`
  MODIFY `id_experiencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_idioma`
--
ALTER TABLE `tbl_idioma`
  MODIFY `id_idioma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_informacionpersonal`
--
ALTER TABLE `tbl_informacionpersonal`
  MODIFY `id_informacionPersonal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_oferta`
--
ALTER TABLE `tbl_oferta`
  MODIFY `id_oferta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_perfilempresa`
--
ALTER TABLE `tbl_perfilempresa`
  MODIFY `id_perfilEmpresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_perfilprofesional`
--
ALTER TABLE `tbl_perfilprofesional`
  MODIFY `id_perfilProfesional` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_postulados`
--
ALTER TABLE `tbl_postulados`
  MODIFY `id_postulados` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_ubicacion`
--
ALTER TABLE `tbl_ubicacion`
  MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1124;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_educacion`
--
ALTER TABLE `tbl_educacion`
  ADD CONSTRAINT `tbl_educacion_ibfk_1` FOREIGN KEY (`id_perfilProfesional`) REFERENCES `tbl_perfilprofesional` (`id_perfilProfesional`);

--
-- Filtros para la tabla `tbl_experiencia`
--
ALTER TABLE `tbl_experiencia`
  ADD CONSTRAINT `tbl_experiencia_ibfk_1` FOREIGN KEY (`id_perfilProfesional`) REFERENCES `tbl_perfilprofesional` (`id_perfilProfesional`),
  ADD CONSTRAINT `tbl_experiencia_ibfk_2` FOREIGN KEY (`ubicacion`) REFERENCES `tbl_ubicacion` (`id_ubicacion`);

--
-- Filtros para la tabla `tbl_idioma`
--
ALTER TABLE `tbl_idioma`
  ADD CONSTRAINT `tbl_idioma_ibfk_1` FOREIGN KEY (`id_perfilProfesional`) REFERENCES `tbl_perfilprofesional` (`id_perfilProfesional`);

--
-- Filtros para la tabla `tbl_informacionpersonal`
--
ALTER TABLE `tbl_informacionpersonal`
  ADD CONSTRAINT `tbl_informacionpersonal_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `tbl_usuarios` (`id_usuarios`),
  ADD CONSTRAINT `tbl_informacionpersonal_ibfk_2` FOREIGN KEY (`ubicacion`) REFERENCES `tbl_ubicacion` (`id_ubicacion`);

--
-- Filtros para la tabla `tbl_oferta`
--
ALTER TABLE `tbl_oferta`
  ADD CONSTRAINT `tbl_oferta_ibfk_1` FOREIGN KEY (`id_perfilEmpresa`) REFERENCES `tbl_perfilempresa` (`id_perfilEmpresa`),
  ADD CONSTRAINT `tbl_oferta_ibfk_2` FOREIGN KEY (`ubicacion`) REFERENCES `tbl_ubicacion` (`id_ubicacion`);

--
-- Filtros para la tabla `tbl_perfilprofesional`
--
ALTER TABLE `tbl_perfilprofesional`
  ADD CONSTRAINT `tbl_perfilprofesional_ibfk_1` FOREIGN KEY (`id_informacionPersonal`) REFERENCES `tbl_informacionpersonal` (`id_informacionPersonal`),
  ADD CONSTRAINT `tbl_perfilprofesional_ibfk_2` FOREIGN KEY (`cargo`) REFERENCES `tbl_cargo` (`id_cargo`);

--
-- Filtros para la tabla `tbl_postulados`
--
ALTER TABLE `tbl_postulados`
  ADD CONSTRAINT `tbl_postulados_ibfk_1` FOREIGN KEY (`id_perfilProfesional`) REFERENCES `tbl_perfilprofesional` (`id_perfilProfesional`),
  ADD CONSTRAINT `tbl_postulados_ibfk_2` FOREIGN KEY (`id_oferta`) REFERENCES `tbl_oferta` (`id_oferta`);

--
-- Filtros para la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD CONSTRAINT `tbl_usuarios_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `tbl_rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
