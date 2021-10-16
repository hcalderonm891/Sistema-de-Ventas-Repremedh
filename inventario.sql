-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2019 a las 23:14:31
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sis_inventario`
--
CREATE DATABASE IF NOT EXISTS `sis_inventario` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sis_inventario`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Analgésicos', '2021-10-05 20:53:29'),
(2, 'Anestésicos', '2021-10-05 20:53:29'),
(3, 'Antiinflamatorios', '2021-10-05 20:53:29'),
(4, 'Anticepticos', '2021-10-05 20:53:29'),
(5, 'Antibióticos', '2021-10-05 20:53:29'),
(6, 'Material Quirurgico', '2021-10-05 20:53:29'),
(7, 'Material de Curación', '2021-10-05 20:55:40'),
(8, 'Equipo Médico', '2021-10-05 20:55:40');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'Hospital General San Juan de Dios', 2147483647, 'comprasHGSD@hotmail.com', '(502) 341-2345', '11 Calle 0-56 z1 Guatemala', '2019-08-02', 357, '2021-08-06 11:47:02', '2021-10-06 20:47:02'),
(2, 'Area de Salud de Chimaltenango', 4836472145, 'comprasdaschm@gmail.com', '(502) 876-5432', '34 Calle # 33-05, z3 Chimaltenango', '2019-08-07', 87, '2021-07-26 10:27:42', '2021-10-06 20:55:42'),
(3, 'Igss Consultorio Zacapa', 325235235, 'comprasigsszacapa@hotmail.com', '(502) 545-3446', 'Blvrd Ramiro de leon # 34-23, z2 Zacapa', '2019-08-08', 32, '2021-05-26 09:27:13', '2021-10-06 21:05:13'),
(4, 'Hospital Nacional de Occidente', 34565432, 'hnacoccidente@hotmail.com', '(502) 345-6678', '10 Calle # 25-86 z3, Quetzaltenango', '2019-08-12', 319, '2021-07-25 10:10:41', '2021-10-06 21:10:41'),
(5, 'Hospita Nacional de El Progreso', 786786545, 'comprashprog@hotmail.com', '(502) 674-5453', '5 Calle # 5-26 z1 Guastatoya', '2019-08-14', 145, '2021-08-26 11:26:28', '2021-10-06 21:19:28'),
(6, 'Area de Salud de Baja Verapaz', 65756735, 'comprasdasbv@gmail.com', '(502) 346-3463', '11 Avenida # 14-32 z2 Baja Verapaz', '2019-08-15', 95, '2021-08-27 10:25:55', '2021-10-06 21:25:55'),
(7, 'Igss Hospital de Coatepeque', 2147483647, 'comprasigsscoa@gmail.com', '(502) 634-6565', '1 calle # 1-25 z 1 Coatepeque', '2019-08-15', 215, '2021-09-20 14:33:23', '2021-10-06 21:33:23'),
(8, 'Igss Policlinica zona 1', 436346346, 'iggspoliclinicacompras@gmail.com', '(502) 463-4634', '18 calle # 3-78 z1 Guatemala', '2019-08-18', 218, '2021-09-28 12:25:08', '2021-10-06 21:35:08'),
(9, 'Area de Salud de Sacatepequez', 43634643, 'comprasdassac@hotmail.com', '(502) 574-5634', '4 calle poniente # 75 z3 Antigua Guatemala', '2019-08-18', 104, '2021-09-29 11:24:50', '2021-10-06 21:42:50'),
(10, 'Hospital de Poptun Peten', 436346346, 'comprashpt@yahoo.com', '(502) 346-3464', '2 Avenida # 15-33 z1 Poptun', '2019-08-19', 245, '2021-10-01 09:24:24', '2021-10-06 21:53:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--



INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1,1, '101', 'ACETAMINOFEN TABLETA 500 MG', 'vistas/img/productos/101/101.jpg',750,1,2,3735, '2021-10-07 11:11:04'),
(2,5, '102', 'ACICLOVIR 250MG', 'vistas/img/productos/102/102.jpg',750,15,21,2250, '2021-10-07 11:11:04'),
(3,4, '103', 'AGUA OXIGENADA 3 GALON', 'vistas/img/productos/103/103.jpg',120,18,25,360, '2021-10-07 11:11:04'),
(4,4, '104', 'AGUA TRIDESTILADA 1000ML', 'vistas/img/productos/104/104.jpg',450,8,11,1350, '2021-10-07 11:11:04'),
(5,6, '105', 'AGUJA PARA ANESTESIA EPIDURAL', 'vistas/img/productos/105/105.jpg',1261,12,17,3783, '2021-10-07 11:11:04'),
(6,6, '106', 'AGUJAS DESCARTABLES', 'vistas/img/productos/106/106.jpg',145,1,2,435, '2021-10-07 11:11:04'),
(7,5, '107', 'ALBENDAZOL SUSPENSION', 'vistas/img/productos/107/107.jpg',1800,1,2,5400, '2021-10-07 11:11:04'),
(8,7, '108', 'ALGODON ROLLO LIBRA', 'vistas/img/productos/108/108.jpg',396,20,28,1188, '2021-10-07 11:11:04'),
(9,5, '109', 'AMIKACINA 100MG AMPOLLA 2ML', 'vistas/img/productos/109/109.jpg',125,3,4,3750, '2021-10-07 11:11:04'),
(10,5, '110', 'AMINOFILINA AMPOLLA 250 MG', 'vistas/img/productos/110/110.jpg',480,443,6.34,1440, '2021-10-07 11:11:04'),
(11,5, '111', 'AMOXICILINA 500 MG', 'vistas/img/productos/111/111.jpg',165,1,2,4950, '2021-10-07 11:11:04'),
(12,6, '112', 'ANGIOCATH No 22', 'vistas/img/productos/112/112.jpg',200,2,4,600, '2021-10-07 11:11:04'),
(13,5, '113', 'ATROPINA SULFATO 0.25MG ', 'vistas/img/productos/113/113.jpg',1560,2,4,4680, '2021-10-07 11:11:04'),
(14,7, '114', 'BAJALENGUAS DE MADERA', 'vistas/img/productos/114/114.jpg',4700,1,2,1410, '2021-10-07 11:11:04'),
(15,6, '115', 'BOLSA DE ORINA 2000ML unidad', 'vistas/img/productos/115/115.jpg',457,2,3,1371, '2021-10-07 11:11:04'),
(16,5, '116', 'BUPIVACAINA 5 CON EPINEFRINA 20ML', 'vistas/img/productos/116/116.jpg',2500,23,33,7500, '2021-10-07 11:11:04'),
(17,3, '117', 'CEFALOTINA SOLUCION INYECTABLE 1G', 'vistas/img/productos/117/117.jpg',1941,3,5,5823, '2021-10-07 11:11:04'),
(18,3, '201', 'CEFOTAXIMA  1 GRAMO', 'vistas/img/productos/201/201.jpg',1024,5,7,3072, '2021-10-07 11:11:04'),
(19,5, '202', 'CEFTRIAXONA 1 GRAMO', 'vistas/img/productos/202/202.jpg',3800,4,6,1140, '2021-10-07 11:11:04'),
(20,5, '203', 'CIPROFLOXACINA 200MG', 'vistas/img/productos/203/203.jpg',2312,4,6,6936, '2021-10-07 11:12:05'),
(21,6, '204', 'CLAMP UMBILICAL', 'vistas/img/productos/204/204.jpg',5400,1,2,1620, '2021-10-07 11:12:05'),
(22,1, '205', 'CLORFENIRAMINA 10 MG', 'vistas/img/productos/205/205.jpg',2640,1,2,7920, '2021-10-07 11:12:05'),
(23,5, '206', 'CLOROQUINA FOSFATO 250 MG', 'vistas/img/productos/206/206.jpg',5480,1,3,1644, '2021-10-07 11:12:05'),
(24,4, '207', 'CLOTRIMAZOL CREMA 1 ', 'vistas/img/productos/207/207.jpg',600,1,3,1800, '2021-10-07 11:12:05'),
(25,5, '301', 'COMPLEJO B VIAL 10ML', 'vistas/img/productos/301/301.jpg',1254,3,5,3762, '2021-10-07 11:12:05'),
(26,6, '302', 'CUBRE ZAPATO SIMPLE ', 'vistas/img/productos/302/302.jpg',5840,1,2,1752, '2021-10-07 11:12:05'),
(27,3, '303', 'DEXAMETASONA  1 ML', 'vistas/img/productos/303/303.jpg',3548,1,2,1064, '2021-10-07 11:12:05'),
(28,4, '304', 'DEXTROSA AL 5 1000ML', 'vistas/img/productos/304/304.jpg',1100,10,15,3300, '2021-10-07 11:12:05'),
(29,3, '305', 'DICLOFENACO SODICO 75 MG', 'vistas/img/productos/305/305.jpg',8522,1,2,2555, '2021-10-07 11:12:05'),
(30,3, '306', 'DIPIRONA 1GR 2ML', 'vistas/img/productos/306/306.jpg',6452,2,3,1935, '2021-10-07 11:12:05'),
(31,5, '307', 'DOBUTAMINA 250 MG', 'vistas/img/productos/307/307.jpg',852,15,22,2556, '2021-10-07 11:12:05'),
(32,5, '308', 'DOPAMINA AMPOLLA 200 MG', 'vistas/img/productos/308/308.jpg',1061,6,8,3183, '2021-10-07 11:12:05'),
(33,5, '309', 'ENOXAPARINA 20MG', 'vistas/img/productos/309/309.jpg',125,23,33,375, '2021-10-07 11:12:05'),
(34,3, '310', 'EPINEFRINA  1  MG', 'vistas/img/productos/310/310.jpg',6550,2,3,1965, '2021-10-07 11:12:05'),
(35,6, '311', 'EQUIPOS DE SUERO', 'vistas/img/productos/311/311.jpg',250,2,3,750, '2021-10-07 11:12:05'),
(36,7, '401', 'ESPARADRAPO DE SEDA', 'vistas/img/productos/401/401.jpg',451,25,36,1353, '2021-10-07 11:12:05'),
(37,6, '402', 'ESPECULOS VAGINALES', 'vistas/img/productos/402/402.jpg',804,4,5,2412, '2021-10-07 11:12:05'),
(38,1, '403', 'FUROSEMIDA 10 MG', 'vistas/img/productos/403/403.jpg',188,1,2,5640, '2021-10-07 11:12:05'),
(39,5, '404', 'GANCICLOVIR 500MG', 'vistas/img/productos/404/404.jpg',245,105,150,735, '2021-10-07 11:12:05'),
(40,7, '405', 'GASA PIEZA DOBLADA', 'vistas/img/productos/405/405.jpg',58,118,169,174, '2021-10-07 11:12:05'),
(41,5, '406', 'GENTAMICINA 80 MG', 'vistas/img/productos/406/406.jpg',240,2,3,7200, '2021-10-07 11:13:06'),
(42,6, '407', 'GORROS PARA CIRUJANO', 'vistas/img/productos/407/407.jpg',284,1,2,8535, '2021-10-07 11:13:06'),
(43,6, '408', 'GUANTES DESCARTABLES MEDIANOS', 'vistas/img/productos/408/408.jpg',625,1,2,1876, '2021-10-07 11:13:06'),
(44,4, '501', 'HIERRO SACARATO 100MG ', 'vistas/img/productos/501/501.jpg',1850,11,15,5550, '2021-10-07 11:13:06'),
(45,7, '502', 'HISOPOS DE MADERA 15 CMS', 'vistas/img/productos/502/502.jpg',421,5,6,1263, '2021-10-07 11:13:06'),
(46,6, '503', 'HOJA DE BISTURI No 20', 'vistas/img/productos/503/503.jpg',3600,1,2,1080, '2021-10-07 11:13:06'),
(47,3, '504', 'IBUPROFEN 400MG', 'vistas/img/productos/504/504.jpg',7496,2,3,2248, '2021-10-07 11:13:06'),
(48,4, '505', 'INSULINA HUMANA CRISTALINA 100UI', 'vistas/img/productos/505/505.jpg',354,44,62,1062, '2021-10-07 11:13:06'),
(49,4, '506', 'INSULINA NPH 100UI', 'vistas/img/productos/506/506.jpg',2451,22,32,7353, '2021-10-07 11:13:06'),
(50,6, '507', 'JALEA LUBRICANTE PARA ULTRASONIDO  TUBO', 'vistas/img/productos/507/507.jpg',244,7,10,732, '2021-10-07 11:13:06'),
(51,6, '508', 'JERINGA DESCARTABLE 10 CC', 'vistas/img/productos/508/508.jpg',1300,1,2,3900, '2021-10-07 11:13:06'),
(52,1, '509', 'LANSOPRAZOL 30MG', 'vistas/img/productos/509/509.jpg',1250,2,3,3750, '2021-10-07 11:13:06'),
(53,2, '510', 'LEVOFLOXACINA 500MG', 'vistas/img/productos/510/510.jpg',3521,8,12,1056, '2021-10-07 11:13:06'),
(54,3, '511', 'LIDOCAINA CON EPINEFRINA', 'vistas/img/productos/511/511.jpg',5412,16,23,1623, '2021-10-07 11:13:06'),
(55,6, '512', 'LLAVES DE TRES VIAS', 'vistas/img/productos/512/512.jpg',6541,4,6,1962, '2021-10-07 11:13:06'),
(56,5, '513', 'LOSARTAN POTASICO 50MG', 'vistas/img/productos/513/513.jpg',8514,1,2,2554, '2021-10-07 11:13:06'),
(57,8, '514', 'MAQUINA DE ANESTESIA', 'vistas/img/productos/514/514.jpg',2,9000,15000,6, '2021-10-07 11:13:06'),
(58,6, '515', 'MASCARILLA RECTANGULAR CON ELASTICO', 'vistas/img/productos/515/515.jpg',1500,1,2,4500, '2021-10-07 11:14:07'),
(59,1, '516', 'METFORMINA 850 MG', 'vistas/img/productos/516/516.jpg',2541,1,2,7623, '2021-10-07 11:14:07'),
(60,5, '517', 'OMEPRAZOL 40 MG', 'vistas/img/productos/517/517.jpg',5214,4,6,1564, '2021-10-07 11:14:07');


/*(61, 5, 'MD000568', 'PENICILINA SODICA CRISTALINA', 'vistas/img/productos/518/518.jpg', 1200, 2.04, 2.92, 3600, '2021-10-07 11:14:07'),
(62, 7, 'MQ000459', 'PERICRANEALES No 23G', 'vistas/img/productos/519/519.jpg', 2451, 1.41, 2.02, 7353, '2021-10-07 11:14:07'),
(63, 2, 'MD000604', 'RANITIDINA 50MG', 'vistas/img/productos/520/520.jpg', 5500, 0.76, 1.09, 16500, '2021-10-07 11:14:07'),
(64, 3, 'MD000776', 'SALBUTAMOL 2 MG Jarabe', 'vistas/img/productos/521/521.jpg', 3900, 3.13, 4.47, 11700, '2021-10-07 11:14:07'),
(65, 6, 'MQ000507', 'SELLOS DE HEPARINA', 'vistas/img/productos/522/522.jpg', 2500, 0.54, 0.77, 7500, '2021-10-07 11:14:07'),
(66, 8, 'MQ000605', 'TERMOMETRO ORAL ', 'vistas/img/productos/523/523.jpg', 120, 4.07, 5.82, 360, '2021-10-07 11:14:07'),
(67, 4, 'MD000665', 'TINTURA DE YODO GALON', 'vistas/img/productos/524/524.jpg', 45, 424.1, 605.89, 135, '2021-10-07 11:14:07'),
(68, 6, 'MQ000649', 'TUBO PENROSE', 'vistas/img/productos/525/525.jpg', 89, 3.34, 4.79, 267, '2021-10-07 11:14:07'),
(69, 7, 'MQ000676', 'VENDA ELASTICA', 'vistas/img/productos/526/526.jpg', 145, 0.32, 0.49, 435, '2021-10-07 11:14:07'),
(70, 1, 'MD000682', 'VITAMINA K ', 'vistas/img/productos/527/527.jpg', 1252, 5.76, 8.23, 3756, '2021-10-07 11:14:07');
*/
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2019-06-20 16:06:09', '2019-06-20 21:06:09'),
(57, 'Juan Fernando Urrego', 'juan', '$2a$07$asxx54ahjppf45sd87a5auwRi.z6UsW7kVIpm0CUEuCpmsvT2sG6O', 'Vendedor', 'vistas/img/usuarios/juan/461.jpg', 1, '2018-02-06 16:58:50', '2019-06-20 20:28:19'),
(58, 'Julio Gómez', 'julio', '$2a$07$asxx54ahjppf45sd87a5auQhldmFjGsrgUipGlmQgDAcqevQZSAAC', 'Especial', 'vistas/img/usuarios/julio/100.png', 1, '2018-02-06 17:09:22', '2019-05-25 06:06:39'),
(59, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5auLd2AxYsA/2BbmGKNk2kMChC3oj7V0Ca', 'Vendedor', 'vistas/img/usuarios/ana/260.png', 1, '2017-12-26 19:21:40', '2019-05-25 06:06:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(17, 10001, 3, 1, '[{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"2\",\"stock\":\"13\",\"precio\":\"1200\",\"total\":\"2400\"},{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"2\",\"stock\":\"7\",\"precio\":\"6300\",\"total\":\"12600\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"4200\",\"total\":\"4200\"}]', 3648, 19200, 22848, 'Efectivo', '2018-02-02 01:11:04'),
(18, 10002, 4, 59, '[{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"2\",\"stock\":\"18\",\"precio\":\"2156\",\"total\":\"4312\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2156\",\"total\":\"2156\"}]', 2585.52, 13608, 16193.5, 'TC-34346346346', '2018-02-02 14:57:20'),
(19, 10003, 5, 59, '[{\"id\":\"8\",\"descripcion\":\"Guadañadora \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2156\",\"total\":\"2156\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"2156\",\"total\":\"2156\"}]', 1510.88, 7952, 9462.88, 'Efectivo', '2018-01-18 14:57:40'),
(20, 10004, 5, 59, '[{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"5\",\"stock\":\"14\",\"precio\":\"4200\",\"total\":\"21000\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"2156\",\"total\":\"2156\"}]', 5463.64, 28756, 34219.6, 'TD-454475467567', '2018-01-25 14:58:09'),
(21, 10005, 6, 57, '[{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"2156\",\"total\":\"2156\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"5\",\"stock\":\"9\",\"precio\":\"4200\",\"total\":\"21000\"}]', 5463.64, 28756, 34219.6, 'TC-6756856867', '2018-01-09 14:59:07'),
(22, 10006, 10, 1, '[{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"4200\",\"total\":\"4200\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"3\",\"stock\":\"13\",\"precio\":\"2156\",\"total\":\"6468\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"1540\",\"total\":\"1540\"}]', 3383.52, 17808, 21191.5, 'Efectivo', '2018-01-26 15:03:22'),
(23, 10007, 9, 1, '[{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"2156\",\"total\":\"2156\"},{\"id\":\"8\",\"descripcion\":\"Guadañadora \",\"cantidad\":\"6\",\"stock\":\"13\",\"precio\":\"2156\",\"total\":\"12936\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"3640\",\"total\":\"3640\"}]', 3851.68, 20272, 24123.7, 'TC-357547467346', '2017-11-30 15:03:53'),
(24, 10008, 12, 1, '[{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"6300\",\"total\":\"6300\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"5\",\"stock\":\"12\",\"precio\":\"2156\",\"total\":\"10780\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"3640\",\"total\":\"3640\"}]', 4229.4, 22260, 26489.4, 'TD-35745575', '2017-12-25 15:04:11'),
(25, 10009, 11, 1, '[{\"id\":\"10\",\"descripcion\":\"Hidrolavadora Gasolina\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3094\",\"total\":\"3094\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"1540\",\"total\":\"1540\"}]', 1572.06, 8274, 9846.06, 'TD-5745745745', '2017-08-15 15:04:38'),
(26, 10010, 8, 1, '[{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"10\",\"descripcion\":\"Hidrolavadora Gasolina\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"3094\",\"total\":\"3094\"}]', 1279.46, 6734, 8013.46, 'Efectivo', '2017-12-07 15:05:09'),
(27, 10011, 7, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"812\",\"total\":\"812\"}]', 550.62, 2898, 3448.62, 'Efectivo', '2017-12-25 22:23:38'),
(28, 10012, 12, 57, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1078\",\"total\":\"1078\"}]', 529.34, 2786, 3315.34, 'TC-3545235235', '2017-12-25 22:24:24'),
(29, 10013, 11, 57, '[{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"5\",\"stock\":\"14\",\"precio\":\"1302\",\"total\":\"6510\"}]', 1449.7, 7630, 9079.7, 'TC-425235235235', '2017-12-26 22:24:50'),
(30, 10014, 10, 57, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"10\",\"stock\":\"9\",\"precio\":\"1078\",\"total\":\"10780\"}]', 2261, 11900, 14161, 'Efectivo', '2017-12-26 22:25:09'),
(31, 10015, 9, 57, '[{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"3\",\"stock\":\"16\",\"precio\":\"812\",\"total\":\"2436\"}]', 462.84, 2436, 2898.84, 'Efectivo', '2017-12-26 22:25:33'),
(32, 10016, 8, 57, '[{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"5\",\"stock\":\"11\",\"precio\":\"812\",\"total\":\"4060\"},{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"630\",\"total\":\"630\"}]', 1002.82, 5278, 6280.82, 'TD-4523523523', '2017-12-26 22:25:55'),
(33, 10017, 7, 57, '[{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"4\",\"stock\":\"7\",\"precio\":\"812\",\"total\":\"3248\"},{\"id\":\"52\",\"descripcion\":\"Bascula \",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"182\",\"total\":\"546\"},{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"2\",\"stock\":\"18\",\"precio\":\"560\",\"total\":\"1120\"},{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"630\",\"total\":\"630\"}]', 1053.36, 5544, 6597.36, 'Efectivo', '2017-12-26 22:26:28'),
(34, 10018, 6, 57, '[{\"id\":\"51\",\"descripcion\":\"Tensor\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"140\",\"total\":\"140\"},{\"id\":\"52\",\"descripcion\":\"Bascula \",\"cantidad\":\"5\",\"stock\":\"12\",\"precio\":\"182\",\"total\":\"910\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"1078\",\"total\":\"1078\"}]', 404.32, 2128, 2532.32, 'Efectivo', '2017-12-26 22:26:51'),
(35, 10019, 5, 57, '[{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"15\",\"stock\":\"3\",\"precio\":\"630\",\"total\":\"9450\"},{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"560\",\"total\":\"560\"}]', 1901.9, 10010, 11911.9, 'Efectivo', '2017-12-26 22:27:13'),
(36, 10020, 4, 57, '[{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"560\",\"total\":\"560\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"924\",\"total\":\"924\"}]', 281.96, 1484, 1765.96, 'TC-46346346346', '2017-12-26 22:27:42'),
(37, 10021, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"196\",\"total\":\"196\"}]', 149.8, 1498, 1647.8, 'Efectivo', '2018-02-06 22:47:02'),
(38, 10022, 6, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"14\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"812\",\"total\":\"812\"},{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"630\",\"total\":\"630\"}]', 141.12, 3528, 3669.12, 'Efectivo', '2019-05-25 06:10:41'),
(39, 10023, 9, 1, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"812\",\"total\":\"812\"}]', 277.2, 2310, 2587.2, 'Efectivo', '2019-06-20 20:33:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
