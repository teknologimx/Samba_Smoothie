-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2018 a las 20:32:02
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `samba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` varchar(32) DEFAULT NULL,
  `archivo_foto` varchar(27) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `descripcion` varchar(59) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `nombre` varchar(24) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `archivo_foto`, `date_created`, `descripcion`, `id_autor`, `last_updated`, `nombre`) VALUES
('ff808081614f940e01614f9441c20007', 'Categoria_1519152801177.png', '2018-02-01 04:16:11.715', 'Alimentos sanos para diabéticos.', '', '2018-02-20 18:53:21.177', 'Diabetes'),
('ff808081614f940e01614f9441ce0008', 'Categoria_1519152844754.png', '2018-02-01 04:16:11.727', 'Alimentos que no incluye productos de origen animal.', '', '2018-02-20 18:54:04.755', 'Vegano'),
('ff808081614f940e01614f9441da000a', 'Categoria_1519152865683.png', '2018-02-01 04:16:11.739', 'Alimentos verdes como semillas y legumbres, libre de carne.', '', '2018-02-20 18:54:25.684', 'Vegetarianos'),
('ff808081614f940e01618bd78e950038', 'Categoria_1519152791626.png', '2018-02-12 21:06:55.254', 'Platillos deliciosos para personas sin problemas de salud.', '8', '2018-03-10 18:40:35.075', 'Consumo General'),
('ff808081614f940e01614f9441ec000d', 'Categoria_1519152825284.png', '2018-02-01 04:16:11.756', 'Alimentos libres de gluten.', '', '2018-03-10 18:40:50.692', 'Intolerante al Gluten'),
('ff808081614f940e01614f9441e8000c', 'Categoria_1519152814141.png', '2018-02-01 04:16:11.752', 'Alimentos libres de lactosa.', '', '2018-03-10 18:41:00.503', 'Intolerante a la Lactosa'),
('ff808081614f940e01614f9441e0000b', 'Categoria_1519152772658.png', '2018-02-01 04:16:11.745', 'Mantiene feliz a tu intestino.', '', '2018-03-10 18:41:10.077', 'Colitis y Gastritis'),
('ff808081614f940e01614f9441d40009', 'Categoria_1519152834526.png', '2018-02-01 04:16:11.733', 'Mantienen la línea y mejoran tu salud.', '', '2018-05-31 14:55:50.424', 'Obesidad y Sobrepeso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `embarques`
--

CREATE TABLE IF NOT EXISTS `embarques` (
  `id` varchar(32) DEFAULT NULL,
  `archivo_evidencia` varchar(27) DEFAULT NULL,
  `codigo` varchar(14) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `demora` varchar(6) DEFAULT NULL,
  `empresa_id` varchar(32) DEFAULT NULL,
  `establecimiento_id` varchar(32) DEFAULT NULL,
  `estatus` varchar(11) DEFAULT NULL,
  `fecha_hora_entrega` varchar(19) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `id_repartidor_id` varchar(16) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `embarques`
--

INSERT INTO `embarques` (`id`, `archivo_evidencia`, `codigo`, `date_created`, `demora`, `empresa_id`, `establecimiento_id`, `estatus`, `fecha_hora_entrega`, `id_autor`, `id_repartidor_id`, `last_updated`) VALUES
('ff808081614f940e0161e46ffd9a0166', '', '180306IEIA0900', '2018-03-02 02:00:00.177', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-06 09:00:00', '', '', '2018-03-02 02:00:00.177'),
('ff808081614f940e0161e9965936017d', '', '180307IEIA0900', '2018-03-03 02:00:00.057', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-07 09:00:00', '', '', '2018-03-03 02:00:00.057'),
('ff808081614f940e01620356253601ab', 'Evidencia_1520955462465.jpg', '180312IEIA1200', '2018-03-08 02:00:00.057', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-12 12:00:00', '', '19', '2018-03-13 15:37:42.481'),
('ff808081614f940e0162087c813901ba', 'Evidencia_1520958083014.jpg', '180313IEIA1200', '2018-03-09 02:00:00.062', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-13 12:00:00', '', '19', '2018-03-13 16:21:23.017'),
('ff808081614f940e01620da2dd3301d6', 'Evidencia_1521052497705.jpg', '180314IEIA1200', '2018-03-10 02:00:00.055', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-14 12:00:00', '', '19', '2018-03-14 18:34:57.711'),
('ff80808162283e0a0162652ef95b0092', '', '180331IEIA0900', '2018-03-27 02:00:00.092', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-31 09:00:00', '', '', '2018-03-27 02:00:00.092'),
('ff808081614f940e016212c9393e01eb', 'Evidencia_1521140082129.jpg', '180315IEIA1200', '2018-03-11 02:00:00.065', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-15 12:00:00', '', '19', '2018-03-15 18:54:42.134'),
('ff80808162283e0a01623bfc19360061', '', '180323IEIA0900', '2018-03-19 02:00:00.057', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-23 09:00:00', '', '', '2018-03-19 02:00:00.057'),
('ff80808162283e0a01622c8905830037', 'Evidencia_1521571070459.jpg', '180320IEIA1200', '2018-03-16 02:00:00.134', '5', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-20 12:00:00', '', '19', '2018-03-20 18:37:50.465'),
('ff80808162283e0a016231af61390040', 'Evidencia_1521660515916.jpg', '180321IEIA1200', '2018-03-17 02:00:00.061', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-21 12:00:00', '', '19', '2018-03-21 19:28:35.92'),
('ff80808162283e0a01624b6f2d350070', '', '180326IEIA1200', '2018-03-22 02:00:00.056', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 12:00:00', '', '', '2018-03-22 02:00:00.056'),
('ff80808162283e0a01624b6f2d510071', '', '180326IEIA0900', '2018-03-22 02:00:00.082', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 09:00:00', '', '', '2018-03-22 02:00:00.082'),
('ff80808162283e0a016236d5bd27005e', 'Evidencia_1521734094135.jpg', '180322IEIA0900', '2018-03-18 02:00:00.041', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-22 09:00:00', '', '19', '2018-03-22 15:54:54.141'),
('ff80808162283e0a016236d5bd40005f', 'Evidencia_1521734179820.jpg', '180322IEIA1200', '2018-03-18 02:00:00.065', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-22 12:00:00', '', '19', '2018-03-22 15:56:19.823'),
('ff80808162283e0a01625095894b0076', '', '180327IEIA1200', '2018-03-23 02:00:00.076', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-27 12:00:00', '', '', '2018-03-23 02:00:00.076'),
('ff80808162283e0a0162652ef9310091', '', '180331IEIA1200', '2018-03-27 02:00:00.052', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-31 12:00:00', '', '', '2018-03-27 02:00:00.052'),
('ff80808162283e0a0162509589370075', '', '180327IEIA0900', '2018-03-23 02:00:00.059', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Cocinando', '2018-03-27 09:00:00', '', '', '2018-03-30 06:09:08.133'),
('ff808081626a161b016279c8694d0032', '', '180404IEIA0900', '2018-03-31 02:00:00.081', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-04 09:00:00', '', '', '2018-03-31 02:00:00.081'),
('ff80808162adb3bc0162babef722002d', 'Evidencia_1523905191240.jpg', '180416IEIA1200', '2018-04-12 16:45:00.087', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-04-16 12:00:00', '', '19', '2018-04-16 18:59:51.245'),
('ff80808162adb3bc0162db33603c0043', '', '180423IEIA1200', '2018-04-19 00:00:00.064', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-23 12:00:00', '', '', '2018-04-19 00:00:00.064'),
('ff80808162adb3bc0162e580184a0047', '', '180425IEIA1200', '2018-04-21 00:00:00.079', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-25 12:00:00', '', '', '2018-04-21 00:00:00.079'),
('ff80808162adb3bc0162cf653846003b', 'Evidencia_1524333503019.jpg', '180420IEIA1200', '2018-04-16 16:59:00.041', '15', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-04-20 12:00:00', '', '19', '2018-04-21 17:58:23.03'),
('ff80808162adb3bc0162eaa6744b004e', '', '180426IEIA1200', '2018-04-22 00:00:00.084', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-26 12:00:00', '', '', '2018-04-22 00:00:00.084'),
('ff80808162adb3bc0163046640290059', '', '180501IEIA1200', '2018-04-27 00:00:00.044', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-01 12:00:00', '', '', '2018-04-27 00:00:00.044'),
('ff80808162adb3bc016317c3d4b9005d', '', '180504IEIA1200', '2018-04-30 18:15:00.026', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-04 12:00:00', '', '', '2018-04-30 18:15:00.026'),
('ff80808162adb3bc01633bde145c0067', '', '180511IEIA1200', '2018-05-07 18:30:00.029', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-11 12:00:00', '', '', '2018-05-07 18:30:00.029'),
('ff8080816345dd260163cc619fb70066', '', '180608IEIA1200', '2018-06-04 19:59:00.024', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-06-08 12:00:00', '', '', '2018-06-04 19:59:00.024'),
('ff8080816345dd260163adcec7dc0042', '', '180602IEIA1200', '2018-05-29 21:30:00.029', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-06-02 12:00:00', '', '', '2018-05-29 21:30:00.029'),
('ff8080816345dd260163d6098c4a0087', '', '18061012341500', '2018-06-06 16:59:00.043', '0', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Nuevo', '2018-06-10 15:00:00', '', '', '2018-06-06 16:59:00.043'),
('ff8080816345dd260163cd151136007b', '', '18060812341500', '2018-06-04 23:15:00.023', '0', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'En tránsito', '2018-06-08 15:00:00', '', '47', '2018-06-11 21:38:33.579'),
('ff8080816345dd2601636081a8430030', 'Evidencia_1527710041192.jpg', '180518IEIA0900', '2018-05-14 21:15:00.036', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-05-18 09:00:00', '', '19', '2018-05-30 19:54:01.199'),
('ff8080816345dd2601635f7cbb7e0029', 'Evidencia_1527710091609.jpg', '180518IEIA1200', '2018-05-14 16:30:00.079', '0', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-05-18 12:00:00', '', '19', '2018-05-30 19:54:51.613'),
('ff8080816345dd260163dab539f70096', '', '18061112342000', '2018-06-07 14:45:00.024', '0', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'En tránsito', '2018-06-11 20:00:00', '', '47', '2018-06-11 23:12:09.22'),
('ff8080816345dd260163e168ecb8009c', '', '18061212342000', '2018-06-08 21:59:00.025', '0', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Nuevo', '2018-06-12 20:00:00', '', '', '2018-06-08 21:59:00.025'),
('ff8080816345dd260163d78afc22008f', '', '18061112341000', '2018-06-07 00:00:00.037', '0', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'En tránsito', '2018-06-11 10:00:00', '', '47', '2018-06-11 23:05:36.453');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
  `id` varchar(32) DEFAULT NULL,
  `activo` varchar(6) DEFAULT NULL,
  `archivo_foto` varchar(12) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `codigo` varchar(6) DEFAULT NULL,
  `contacto` varchar(17) DEFAULT NULL,
  `contacto_cargo` varchar(23) DEFAULT NULL,
  `contacto_email` varchar(20) DEFAULT NULL,
  `contacto_telefono` varchar(17) DEFAULT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `domicilio` varchar(48) DEFAULT NULL,
  `establecimiento_id` varchar(32) DEFAULT NULL,
  `giro` varchar(14) DEFAULT NULL,
  `hora_entrega_1` varchar(14) DEFAULT NULL,
  `hora_entrega_2` varchar(14) DEFAULT NULL,
  `hora_entrega_3` varchar(14) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `no_empleados` varchar(12) DEFAULT NULL,
  `nombre` varchar(17) DEFAULT NULL,
  `razon_social` varchar(50) DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `telefono` varchar(14) DEFAULT NULL,
  `url` varchar(17) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `activo`, `archivo_foto`, `ciudad`, `codigo`, `contacto`, `contacto_cargo`, `contacto_email`, `contacto_telefono`, `cp`, `date_created`, `domicilio`, `establecimiento_id`, `giro`, `hora_entrega_1`, `hora_entrega_2`, `hora_entrega_3`, `id_autor`, `last_updated`, `no_empleados`, `nombre`, `razon_social`, `rfc`, `telefono`, `url`) VALUES
('ff808081614f940e01614fce2547002a', 'False', '', 'Cuernavaca', '0001', 'Jorge Ceyca', 'Gerente', 'nissan@gmail.com', '777 777-7777', '62440', '2018-02-01 05:19:25.523', 'Autopista México-Acapulco 745', 'ff808081614f940e01614fcbbf050029', 'Sector privado', '08:00 AM', '01:00 PM', '07:00 PM', '14', '2018-03-03 20:57:10.348', '100', 'Nissan Cuernavaca', 'Nissan Cuernavca', 'IARW731123T22', '777 777-7777', 'www.nissan.com.mx'),
('ff808081614f940e0161afe7434c0108', 'True', '', 'San Luis Potosí, SLP', 'IEIA', 'Guadalupe Carrión', 'Auxiliar Administrativo', 'gcarrion@ieia.com.mx', '(444) 825-5076', '78216', '2018-02-19 21:10:24.333', 'Av. Cordillera Occidental #635, Lomas 4a sección', 'ff808081614f940e0161a52a2c3300ec', 'Sector privado', '09:00 AM', '12:00 PM', '', '8', '2018-03-06 17:14:40.896', '20', 'IEIA', 'Instituto de Evaluación e Ingeniería Avanzada S.C.', 'IEI010123GC5', '(444) 825-5077', ''),
('ff8080816345dd260163ccdac7f9006b', 'True', '', 'CDMX', '1234', '', '', 'coffeeytv@gmail.com', '(555) 555-5555', '', '2018-06-04 22:11:20.198', '', 'ff8080816345dd260163ccc6d0d80069', 'Sector privado', '10:00 AM', '03:00 PM', '08:00 PM', '8', '2018-06-04 22:11:20.198', '30', 'Bambu', 'Software', 'BAMBU12345678', '(555) 555-5555', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimientos`
--

CREATE TABLE IF NOT EXISTS `establecimientos` (
  `id` varchar(32) DEFAULT NULL,
  `administrador_id` varchar(16) DEFAULT NULL,
  `ciudad` varchar(15) DEFAULT NULL,
  `codigo` varchar(6) DEFAULT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `domicilio` varchar(41) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `nombre` varchar(16) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `total_vendido` varchar(13) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `establecimientos`
--

INSERT INTO `establecimientos` (`id`, `administrador_id`, `ciudad`, `codigo`, `cp`, `date_created`, `domicilio`, `id_autor`, `last_updated`, `nombre`, `telefono`, `total_vendido`) VALUES
('ff808081614f940e01614fcbbf050029', '10', 'Cuernavaca', '0001', '62440', '2018-02-01 05:16:48.273', 'Lomas de Córtez', '14', '2018-02-01 05:16:48.273', 'Samba cuernavaca', '777 777-7777', '0'),
('ff808081614f940e0161a52a2c3300ec', '18', 'San Luis Potosí', 'FDCA', '78364', '2018-02-17 19:07:39.955', 'Flor de Canela #125 A Colonia Las Flores.', '8', '2018-06-04 19:57:52.451', 'Flor de Canela', '444 811-5838', '8036'),
('ff8080816345dd260163ccc6d0d80069', '42', 'CMDX', '1234', '04710', '2018-06-04 21:49:31.738', 'Avery Brundage 6, Olímipica', '8', '2018-06-08 21:54:21.654', 'Cocina Bambu', '555 555-5555', '290');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extras`
--

CREATE TABLE IF NOT EXISTS `extras` (
  `id` varchar(32) DEFAULT NULL,
  `archivo_foto` varchar(23) DEFAULT NULL,
  `categoria_id` varchar(32) DEFAULT NULL,
  `costo` varchar(5) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `descripcion` varchar(120) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `nombre` varchar(28) DEFAULT NULL,
  `precio` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `extras`
--

INSERT INTO `extras` (`id`, `archivo_foto`, `categoria_id`, `costo`, `date_created`, `descripcion`, `id_autor`, `last_updated`, `nombre`, `precio`) VALUES
('ff808081614f940e01614f94426c001f', 'Extra_1519079677673.jpg', 'ff808081614f940e01614f9441c20007', '0.9', '2018-02-01 04:16:11.886', 'Raíz que protege al hígado y ayuda a mantener una presión arterial saludable.', '', '2018-03-07 19:23:43.004', 'Cúrcuma', '15'),
('ff808081614f940e0161af5494d600fe', 'Extra_1519079704376.jpg', 'ff808081614f940e01618bd78e950038', '0.49', '2018-02-19 18:30:11.414', 'Polvo de guaraná que aumenta la energía suavemente.', '8', '2018-03-07 19:24:11.446', 'Energizante', '15'),
('ff808081614f940e0161af5fcd810101', 'Extra_1520105131650.jpg', 'ff808081614f940e01618bd78e950038', '3.3', '2018-02-19 18:42:26.818', 'Aderezo César extra para dar mayor sabor a tu ensalada.', '8', '2018-03-07 19:24:52.486', 'Extra aderezo César', '15'),
('ff808081614f940e0161e84a3fa8016b', 'Extra_1520020635559.jpg', 'ff808081614f940e01618bd78e950038', '1.62', '2018-03-02 19:57:15.56', 'Añade jamón de pavo a tus ensaladas o a cualquier platillo.', '8', '2018-03-07 19:33:26.574', 'Jamón', '15'),
('ff808081614f940e0161af3576fe00fa', 'Extra_1519062972156.png', 'ff808081614f940e01618bd78e950038', '6.75', '2018-02-19 17:56:12.16', 'Proteína de suero de leche que apoya el crecimiento del músculo después de cargar pesas.', '8', '2018-03-07 19:45:18.96', 'Proteína de leche', '15'),
('ff808081614f940e0161af0e83b100f2', 'Extra_1519060492550.jpg', 'ff808081614f940e01614f9441e0000b', '0.37', '2018-02-19 17:13:39.506', 'Raíz que disminuye la colitis y gastritis.  Ayuda a eliminar el apetito.', '8', '2018-03-07 19:36:39.134', 'Jengibre', '15'),
('ff808081614f940e0161af1e58d900f7', 'Extra_1519061457112.jpg', 'ff808081614f940e01614f9441d40009', '1.9', '2018-02-19 17:30:57.113', 'Raíz que aumenta la fuerza muscular y masa magra de deportistas al cargar pesas.', '8', '2018-03-07 19:40:56.111', 'Maca', '15'),
('ff808081614f940e01614f94427e0021', 'Extra_1519079589651.jpg', 'ff808081614f940e01614f9441ce0008', '0.3', '2018-02-01 04:16:11.903', 'Cereal sin gluten con alto contenido en aminoácidos.', '', '2018-03-07 19:20:45.328', 'Amaranto', '15'),
('ff808081614f940e0161e83520120168', 'Extra_1520092215313.jpg', 'ff808081614f940e01618bd78e950038', '8.95', '2018-03-02 19:34:11.221', 'Deliciosa mezcla de atún con verduras y mayonesa.', '8', '2018-03-07 19:21:25.098', 'Atún', '20'),
('ff808081614f940e01614f9442870023', 'Extra_1519079630582.jpg', 'ff808081614f940e01614f9441c20007', '1.43', '2018-02-01 04:16:11.912', 'Semilla alta en proteínas y omega 3 para mantener la salud del corazón.', '', '2018-03-07 19:22:24.483', 'Chia', '15'),
('ff808081614f940e0161af61cd690103', 'Extra_1519080002333.jpg', 'ff808081614f940e01618bd78e950038', '2.88', '2018-02-19 18:44:37.865', 'Agrega aderezo de la casa para dar más sabor a tus comidas.', '8', '2018-03-07 19:27:22.64', 'Extra aderezo De la casa', '15'),
('ff808081614f940e0161e83bc23f0169', 'Extra_1520019685947.jpg', 'ff808081614f940e01618bd78e950038', '3.39', '2018-03-02 19:41:25.952', 'Queso extra para tu platillo.', '8', '2018-03-07 19:47:20.078', 'Queso gouda', '15'),
('ff808081614f940e0161af630a360105', 'Extra_1520105163357.jpg', 'ff808081614f940e01618bd78e950038', '5.7', '2018-02-19 18:45:58.967', 'Añade aderezo de ciruela a tus ensaladas.', '8', '2018-03-07 19:25:53.56', 'Extra aderezo Ciruela', '15'),
('ff808081614f940e0161af614ca10102', 'Extra_1519079531288.jpg', 'ff808081614f940e01614f9441da000a', '4.18', '2018-02-19 18:44:04.898', 'Acompaña tus comidas con aderezo de miel y mostaza.', '8', '2018-03-07 19:30:13.709', 'Extra aderezo Miel y mostaza', '15'),
('ff808081614f940e0161af5c86910100', 'Extra_1520105186878.jpg', 'ff808081614f940e01614f9441ce0008', '4.98', '2018-02-19 18:38:52.05', 'Aderezo griego extra para dar más sabor a tu comida.', '8', '2018-03-07 19:29:13.862', 'Extra aderezo Griego', '15'),
('ff808081614f940e0161af626c990104', 'Extra_1519079547797.jpg', 'ff808081614f940e01618bd78e950038', '4.5', '2018-02-19 18:45:18.618', 'Añade aderezo ranch a tus ensaladas para darles más sabor.', '8', '2018-03-07 19:30:36.684', 'Extra aderezo Ranch', '15'),
('ff808081614f940e01614f944258001d', 'Extra_1519079572824.jpg', 'ff808081614f940e01614f9441c20007', '3.09', '2018-02-01 04:16:11.865', 'Fruto seco que reduce el riesgo de sufrir infartos y ayuda a la salud cerebral.', '', '2018-03-07 19:19:08.683', 'Almendras', '15'),
('ff808081614f940e01614f9442910024', 'granola.png', 'ff808081614f940e01614f9441e0000b', '1.35', '2018-02-01 04:16:11.921', 'Mezcla de avena con semillas y un toque de miel, ideal para acompañar cualquier bebida.', '', '2018-03-07 19:32:50.739', 'Granola', '15'),
('ff808081614f940e01614f9442770020', 'Extra_1519079613549.jpg', 'ff808081614f940e01614f9441ce0008', '0.625', '2018-02-01 04:16:11.897', 'Cereal que aporta gran cantidad de energía y es saludable para el corazón.', '', '2018-03-07 19:21:52.488', 'Avena', '15'),
('ff808081614f940e0161af1149cc00f3', 'Extra_1519060601291.jpg', 'ff808081614f940e01614f9441e8000c', '5.55', '2018-02-19 17:16:41.292', 'Leche vegetal a base de almendras, ideal para personas intolerantes a la lactosa y al gluten.', '8', '2018-03-07 19:38:38.616', 'Leche de almendras', '15'),
('ff808081614f940e0161af1300b400f4', 'Extra_1519060713651.jpg', 'ff808081614f940e01614f9441e8000c', '7.8', '2018-02-19 17:18:33.652', 'Leche vegetal de arroz que te da energía sin dañar tu intestino.', '8', '2018-03-07 19:39:05.247', 'Leche de arroz', '15'),
('ff808081614f940e0161af1517ea00f5', 'Extra_1519060850665.jpg', 'ff808081614f940e01614f9441e8000c', '4.95', '2018-02-19 17:20:50.667', 'Bebida de coco rica en potasio y fósforo. Ideal para intolerantes a la lactosa.', '8', '2018-03-07 19:39:33.611', 'Leche de coco', '15'),
('ff808081614f940e0161af183df800f6', 'Extra_1519061102675.jpg', 'ff808081614f940e01614f9441ce0008', '0.64', '2018-02-19 17:24:17.016', 'Semillas ricas en omega 3 que barre el colesterol malo.  Mejora el funcionamiento intestinal y combate el estreñimiento.', '8', '2018-03-07 19:40:27.335', 'Linaza', '15'),
('ff808081614f940e0161af2134ec00f8', 'Extra_1519061644523.jpg', 'ff808081614f940e01614f9441c20007', '0.5', '2018-02-19 17:34:04.525', 'Planta ideal para bajar niveles de glucosa y presión arterial en casos de diabetes e hipertensión.', '8', '2018-03-07 19:41:20.329', 'Moringa', '15'),
('ff808081614f940e0161af24e6cf00f9', 'Extra_1519061886670.jpg', 'ff808081614f940e01614f9441d40009', '8.36', '2018-02-19 17:38:06.672', 'Oleaginosa rica en ácidos grasos esenciales para la salud del cerebro y corazón.', '8', '2018-03-07 19:41:51.667', 'Nuez', '15'),
('ff808081614f940e0161e84c21c3016c', 'Extra_1520020758979.jpg', 'ff808081614f940e01618bd78e950038', '1.86', '2018-03-02 19:59:18.98', 'Añade pepperoni a tu emparedado o a cualquier platillo.', '8', '2018-03-07 19:43:42.619', 'Pepperoni', '15'),
('ff808081614f940e0161aed4844e00f1', 'Extra_1519056618573.jpg', 'ff808081614f940e01614f9441d40009', '13', '2018-02-19 16:10:18.592', 'Pollo sazonado y cocinado a la plancha para reducir el contenido calórico.', '8', '2018-03-07 19:44:20.297', 'Pollo a la plancha', '20'),
('ff808081614f940e0161af37294800fb', 'Extra_1519063083336.jpg', 'ff808081614f940e01614f9441d40009', '6.76', '2018-02-19 17:58:03.337', 'Proteína vegetal que promueve el crecimiento muscular después de una rutina de ejercicio de pesas.', '8', '2018-03-07 19:46:01.046', 'Proteína de soya', '15'),
('ff808081614f940e0161af5131d800fd', 'Extra_1519080190990.jpg', 'ff808081614f940e01614f9441d40009', '0.25', '2018-02-19 18:26:29.464', 'Fibra de nopal que reduce el apetito.', '8', '2018-03-07 19:46:36.36', 'Quemagrasa', '15'),
('ff808081614f940e0161e83c5cbb016a', 'Extra_1520019725498.png', 'ff808081614f940e01614f9441d40009', '3.4', '2018-03-02 19:42:05.499', 'Agrega queso panela a tu emparedado, sopa o a cualquier platillo.', '8', '2018-03-07 19:47:57.356', 'Queso panela', '15'),
('ff808081614f940e01614f9442830022', 'salvado.png', 'ff808081614f940e01614f9441ce0008', '0.38', '2018-02-01 04:16:11.907', 'Cereal con gran cantidad de fibraque mejora tu salud intestinal.', '', '2018-03-07 19:48:19.561', 'Salvado', '15'),
('ff808081614f940e0161af57464900ff', 'Extra_1519079657882.jpg', 'ff808081614f940e01618bd78e950038', '3.84', '2018-02-19 18:33:07.913', 'Deliciosos trocitos de pan condimentado, ideal para acompañar ensaladas, cremas y sopas.', '8', '2018-03-07 19:22:57.1', 'Crutones', '15'),
('ff808081614f940e0161e859ef07016f', 'Extra_1520021663495.jpg', 'ff808081614f940e01614f9441ce0008', '5.9', '2018-03-02 20:14:23.496', 'Añade fresas a cualquiera de tus platillos.', '8', '2018-03-07 19:31:02.745', 'Extra fresa', '15'),
('ff808081614f940e0161e857ce52016e', 'Extra_1520021524049.jpg', 'ff808081614f940e01614f9441e0000b', '3.15', '2018-03-02 20:12:04.05', 'Agrega manzana a tus platillos.', '8', '2018-03-07 19:31:39.993', 'Extra manzana', '15'),
('ff808081614f940e0161e853df06016d', 'Extra_1520021761288.jpg', 'ff808081614f940e01614f9441da000a', '1.07', '2018-03-02 20:07:46.183', 'Elige plátano como complemento.', '8', '2018-03-07 19:32:12.188', 'Extra plátano', '15'),
('ff808081614f940e0161e85d20350170', 'Extra_1520021872692.jpg', 'ff808081614f940e01614f9441ce0008', '3', '2018-03-02 20:17:52.694', 'Sustituye la leche de vaca por leche vegetal de soya.', '8', '2018-03-07 19:39:57.063', 'Leche de soya', '15'),
('ff808081614f940e0161e860609c0171', 'Extra_1520022085787.jpg', 'ff808081614f940e01618bd78e950038', '2.61', '2018-03-02 20:21:25.789', 'Agrega rebanadas de pechuga de pavo a tus platillos.', '8', '2018-03-07 19:43:00.319', 'Pechuga de pavo', '15'),
('ff808081614f940e0161e8661fd20172', 'Extra_1520105228125.jpg', 'ff808081614f940e01618bd78e950038', '13.25', '2018-03-02 20:27:42.419', 'Añade pollo picante a tus platillos.', '8', '2018-03-07 19:44:47.36', 'Pollo blaze', '20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE IF NOT EXISTS `ingredientes` (
  `id` varchar(32) DEFAULT NULL,
  `archivo_foto` varchar(12) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `nombre` varchar(27) DEFAULT NULL,
  `unidad_medicion` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `archivo_foto`, `date_created`, `id_autor`, `last_updated`, `nombre`, `unidad_medicion`) VALUES
('ff808081614f940e01618f95bdf8003a', '', '2018-02-13 14:33:30.872', '8', '2018-02-13 14:33:30.872', 'Bollo integral con ajonjolí', 'g'),
('ff808081614f940e01618fb88e5f006f', '', '2018-02-13 15:11:32.448', '8', '2018-02-13 15:11:32.448', 'Calabacita', 'g'),
('ff808081614f940e01618f976a23003b', '', '2018-02-13 14:35:20.483', '8', '2018-02-13 14:35:20.483', 'Hummus de garbanzo', 'g'),
('ff808081614f940e01618f97b389003c', '', '2018-02-13 14:35:39.274', '8', '2018-02-13 14:35:39.274', 'Carne molida de res', 'g'),
('ff808081614f940e01618f97edac003d', '', '2018-02-13 14:35:54.156', '8', '2018-02-13 14:35:54.156', 'Mix de semillas', 'g'),
('ff808081614f940e01618f9896a7003f', '', '2018-02-13 14:36:37.416', '8', '2018-02-13 14:36:37.416', 'Queso gouda', 'g'),
('ff808081614f940e01618f98cd1b0040', '', '2018-02-13 14:36:51.355', '8', '2018-02-13 14:36:51.355', 'Lechuga italiana', 'g'),
('ff808081614f940e01618f99079f0041', '', '2018-02-13 14:37:06.336', '8', '2018-02-13 14:37:06.336', 'Pimiento morrón', 'g'),
('ff808081614f940e01618f993ac60042', '', '2018-02-13 14:37:19.43', '8', '2018-02-13 14:37:19.43', 'Cebolla', 'g'),
('ff808081614f940e01618f9968d40043', '', '2018-02-13 14:37:31.22', '8', '2018-02-13 14:37:31.22', 'Cebolla morada', 'g'),
('ff808081614f940e01618f999f4b0044', '', '2018-02-13 14:37:45.163', '8', '2018-02-13 14:37:45.163', 'Jitomate', 'g'),
('ff808081614f940e01618f9a5f760045', '', '2018-02-13 14:38:34.358', '8', '2018-02-13 14:38:34.358', 'Aderezo de la casa', 'ml'),
('ff808081614f940e01618f9ac1af0046', '', '2018-02-13 14:38:59.504', '8', '2018-02-13 14:38:59.504', 'Pan chapata integral', 'pieza'),
('ff808081614f940e01618f9862f8003e', '', '2018-02-13 14:36:24.184', '8', '2018-02-13 14:39:09.802', 'Jamón de pavo', 'rebanada'),
('ff808081614f940e01618f9ba4810047', '', '2018-02-13 14:39:57.57', '8', '2018-02-13 14:39:57.57', 'Aderezo de mostaza', 'ml'),
('ff808081614f940e01618f9be20a0048', '', '2018-02-13 14:40:13.322', '8', '2018-02-13 14:40:13.322', 'Aderezo de chipotle', 'ml'),
('ff808081614f940e01618f9c630c0049', '', '2018-02-13 14:40:46.349', '8', '2018-02-13 14:40:46.349', 'Atún', 'g'),
('ff808081614f940e01618f9ca094004a', '', '2018-02-13 14:41:02.1', '8', '2018-02-13 14:41:02.1', 'Verduras mixtas', 'g'),
('ff808081614f940e01618f9ccd35004b', '', '2018-02-13 14:41:13.525', '8', '2018-02-13 14:41:13.525', 'Pepino', 'g'),
('ff808081614f940e01618f9d12cc004c', '', '2018-02-13 14:41:31.34', '8', '2018-02-13 14:41:31.34', 'Jamón de pechuga de pavo', 'rebanada'),
('ff808081614f940e01618f9d51f7004d', '', '2018-02-13 14:41:47.511', '8', '2018-02-13 14:41:47.511', 'Baguette integral', 'pieza'),
('ff808081614f940e01618fa291de004e', '', '2018-02-13 14:47:31.55', '8', '2018-02-13 14:47:31.55', 'Pollo a la plancha', 'g'),
('ff808081614f940e01618fa2ee5f004f', '', '2018-02-13 14:47:55.231', '8', '2018-02-13 14:47:55.231', 'Pollo blaze', 'g'),
('ff808081614f940e01618fa331960050', '', '2018-02-13 14:48:12.438', '8', '2018-02-13 14:48:12.438', 'Tortilla de harina integral', 'pieza'),
('ff808081614f940e01618fa3c08f0051', '', '2018-02-13 14:48:49.039', '8', '2018-02-13 14:48:49.039', 'Baguel con parmesano', 'pieza'),
('ff808081614f940e01618fa409580052', '', '2018-02-13 14:49:07.672', '8', '2018-02-13 14:49:07.672', 'Aderezo de salmón', 'ml'),
('ff808081614f940e01618fa449bf0053', '', '2018-02-13 14:49:24.159', '8', '2018-02-13 14:49:24.159', 'Queso jack', 'rebanada'),
('ff808081614f940e01618fa4c5070054', '', '2018-02-13 14:49:55.719', '8', '2018-02-13 14:49:55.719', 'Jamón de cerdo', 'rebanada'),
('ff808081614f940e01618fa4fd210055', '', '2018-02-13 14:50:10.082', '8', '2018-02-13 14:50:10.082', 'Pan multigrano', 'rebanada'),
('ff808081614f940e01618fa533b20056', '', '2018-02-13 14:50:24.05', '8', '2018-02-13 14:50:24.05', 'Lechuga sangría', 'g'),
('ff808081614f940e01618fa57a210057', '', '2018-02-13 14:50:42.081', '8', '2018-02-13 14:50:42.081', 'Lechuga orejona', 'g'),
('ff808081614f940e01618fa5acec0058', '', '2018-02-13 14:50:55.085', '8', '2018-02-13 14:50:55.085', 'Espinaca', 'g'),
('ff808081614f940e01618fa5ded60059', '', '2018-02-13 14:51:07.862', '8', '2018-02-13 14:51:07.862', 'Manzana', 'g'),
('ff808081614f940e01618fa606e6005a', '', '2018-02-13 14:51:18.118', '8', '2018-02-13 14:51:18.118', 'Arándanos', 'g'),
('ff808081614f940e01618fa636ff005b', '', '2018-02-13 14:51:30.431', '8', '2018-02-13 14:51:30.431', 'Nuez de castilla', 'g'),
('ff808081614f940e01618fa677f1005c', '', '2018-02-13 14:51:47.058', '8', '2018-02-13 14:51:47.058', 'Uva', 'g'),
('ff808081614f940e01618fa6b67f005d', '', '2018-02-13 14:52:03.072', '8', '2018-02-13 14:52:03.072', 'Aderezo de ciruela', 'ml'),
('ff808081614f940e01618fa70c10005e', '', '2018-02-13 14:52:24.977', '8', '2018-02-13 14:52:24.977', 'Jugo de limón', 'ml'),
('ff808081614f940e01618fa77497005f', '', '2018-02-13 14:52:51.735', '8', '2018-02-13 14:52:51.735', 'Queso feta', 'g'),
('ff808081614f940e01618fa7b3950060', '', '2018-02-13 14:53:07.861', '8', '2018-02-13 14:53:07.861', 'Tzatziki', 'g'),
('ff808081614f940e01618faa039d0061', '', '2018-02-13 14:55:39.422', '8', '2018-02-13 14:55:39.422', 'Aderezo griego', 'g'),
('ff808081614f940e01618fac66a40062', '', '2018-02-13 14:58:15.845', '8', '2018-02-13 14:58:15.845', 'Queso parmesano rallado', 'g'),
('ff808081614f940e01618facf81a0063', '', '2018-02-13 14:58:53.083', '8', '2018-02-13 14:58:53.083', 'Queso parmesano en hojuela', 'g'),
('ff808081614f940e01618fb0501b0064', '', '2018-02-13 15:02:32.219', '8', '2018-02-13 15:02:32.219', 'Crutones', 'pieza'),
('ff808081614f940e01618fb09c420065', '', '2018-02-13 15:02:51.715', '8', '2018-02-13 15:02:51.715', 'Aceituna negra', 'g'),
('ff808081614f940e01618fb148b00066', '', '2018-02-13 15:03:35.857', '8', '2018-02-13 15:03:35.857', 'Aderezo césar', 'ml'),
('ff808081614f940e01618fb192c70067', '', '2018-02-13 15:03:54.823', '8', '2018-02-13 15:03:54.823', 'Aderezo de miel y mostaza', 'ml'),
('ff808081614f940e01618fb1cf5c0068', '', '2018-02-13 15:04:10.333', '8', '2018-02-13 15:04:10.333', 'Zanahoria', 'g'),
('ff808081614f940e01618fb1fd340069', '', '2018-02-13 15:04:22.069', '8', '2018-02-13 15:04:22.069', 'Aderezo ranch', 'ml'),
('ff808081614f940e01618fb23d3b006a', '', '2018-02-13 15:04:38.46', '8', '2018-02-13 15:04:38.46', 'Pan flat', 'pieza'),
('ff808081614f940e01618fb2824a006b', '', '2018-02-13 15:04:56.139', '8', '2018-02-13 15:04:56.139', 'Queso panela', 'g'),
('ff808081614f940e01618fb2cecd006c', '', '2018-02-13 15:05:15.726', '8', '2018-02-13 15:05:15.726', 'Jamón selva negra', 'rebanada'),
('ff808081614f940e01618fb32a4c006d', '', '2018-02-13 15:05:39.149', '8', '2018-02-13 15:05:39.149', 'Aderezo tapenade', 'ml'),
('ff808081614f940e01618fb357f7006e', '', '2018-02-13 15:05:50.839', '8', '2018-02-13 15:05:50.839', 'Berenjena', 'g'),
('ff808081614f940e01618fb8ea4f0070', '', '2018-02-13 15:11:55.983', '8', '2018-02-13 15:11:55.983', 'Champiñones', 'g'),
('ff808081614f940e01618fb915170071', '', '2018-02-13 15:12:06.935', '8', '2018-02-13 15:12:06.935', 'Portobello', 'g'),
('ff808081614f940e0161902f0b9f0074', '', '2018-02-13 17:20:57.759', '8', '2018-02-13 17:20:57.759', 'Pasta integral', 'g'),
('ff808081614f940e0161902f70f00075', '', '2018-02-13 17:21:23.696', '8', '2018-02-13 17:21:23.696', 'Pasta', 'g'),
('ff808081614f940e016190384aef0076', '', '2018-02-13 17:31:03.791', '8', '2018-02-13 17:31:03.791', 'Puré de tomate', 'ml'),
('ff808081614f940e01619038773e0077', '', '2018-02-13 17:31:15.134', '8', '2018-02-13 17:31:15.134', 'Sal', 'g'),
('ff808081614f940e01619038ac390078', '', '2018-02-13 17:31:28.698', '8', '2018-02-13 17:31:28.698', 'Consomé', 'g'),
('ff808081614f940e01619038f4dc0079', '', '2018-02-13 17:31:47.292', '8', '2018-02-13 17:31:47.292', 'Chile poblano', 'g'),
('ff808081614f940e016190393036007a', '', '2018-02-13 17:32:02.486', '8', '2018-02-13 17:32:02.486', 'Hierbas finas', 'g'),
('ff808081614f940e0161903961f9007b', '', '2018-02-13 17:32:15.225', '8', '2018-02-13 17:32:15.225', 'Orégano', 'g'),
('ff808081614f940e01619039938f007c', '', '2018-02-13 17:32:27.92', '8', '2018-02-13 17:32:27.92', 'Sal de ajo', 'g'),
('ff808081614f940e0161903a1760007d', '', '2018-02-13 17:33:01.665', '8', '2018-02-13 17:33:01.665', 'Leche deslactosada', 'l'),
('ff808081614f940e0161903a40f3007e', '', '2018-02-13 17:33:12.308', '8', '2018-02-13 17:33:12.308', 'Crema', 'g'),
('ff808081614f940e0161903a7015007f', '', '2018-02-13 17:33:24.374', '8', '2018-02-13 17:33:24.374', 'Arroz', 'g'),
('ff808081614f940e0161903a9c5b0080', '', '2018-02-13 17:33:35.707', '8', '2018-02-13 17:33:35.707', 'Ajo', 'g'),
('ff808081614f940e0161903acb9f0081', '', '2018-02-13 17:33:47.807', '8', '2018-02-13 17:33:47.807', 'Aceite de oliva', 'ml'),
('ff808081614f940e0161903b06980082', '', '2018-02-13 17:34:02.905', '8', '2018-02-13 17:34:02.905', 'Yogurt', 'ml'),
('ff808081614f940e0161903bdf000083', '', '2018-02-13 17:34:58.305', '8', '2018-02-13 17:34:58.305', 'Blue berry', 'g'),
('ff808081614f940e0161903cc34a0084', '', '2018-02-13 17:35:56.747', '8', '2018-02-13 17:35:56.747', 'Fresa', 'g'),
('ff808081614f940e0161903d5d6d0085', '', '2018-02-13 17:36:36.206', '8', '2018-02-13 17:36:36.206', 'Piña', 'g'),
('ff808081614f940e0161903d8c010086', '', '2018-02-13 17:36:48.13', '8', '2018-02-13 17:36:48.13', 'Naranja', 'g'),
('ff808081614f940e0161903db1ae0087', '', '2018-02-13 17:36:57.775', '8', '2018-02-13 17:36:57.775', 'Guayaba', 'g'),
('ff808081614f940e0161903e36b30088', '', '2018-02-13 17:37:31.827', '8', '2018-02-13 17:37:31.827', 'Apio', 'g'),
('ff808081614f940e0161903ead4f0089', '', '2018-02-13 17:38:02.192', '8', '2018-02-13 17:38:02.192', 'Gelatina sin azúcar', 'g'),
('ff808081614f940e0161903ed3b6008a', '', '2018-02-13 17:38:12.022', '8', '2018-02-13 17:38:12.022', 'Mango', 'g'),
('ff808081614f940e0161903f9d4b008b', '', '2018-02-13 17:39:03.627', '8', '2018-02-13 17:39:03.627', 'Harina de trigo', 'g'),
('ff808081614f940e0161903fc7eb008c', '', '2018-02-13 17:39:14.539', '8', '2018-02-13 17:39:14.539', 'Huevo', 'pieza'),
('ff808081614f940e0161903fee33008d', '', '2018-02-13 17:39:24.34', '8', '2018-02-13 17:39:24.34', 'Mantequilla', 'g'),
('ff808081614f940e01619040cebc0090', '', '2018-02-13 17:40:21.82', '8', '2018-02-13 17:40:21.82', 'Chocolate snickers', 'g'),
('ff808081614f940e0161904ad73c0091', '', '2018-02-13 17:51:19.357', '8', '2018-02-13 17:51:19.357', 'Jugo de naranja', 'ml'),
('ff808081614f940e0161904e11a20092', '', '2018-02-13 17:54:50.915', '8', '2018-02-13 17:54:50.915', 'Granos de elote', 'g'),
('ff808081614f940e0161904e88dd0094', '', '2018-02-13 17:55:21.437', '8', '2018-02-13 17:55:21.437', 'Queso crema', 'g'),
('ff808081614f940e0161904ec7fc0095', '', '2018-02-13 17:55:37.596', '8', '2018-02-13 17:55:37.596', 'Chocolate blanco', 'g'),
('ff808081614f940e0161904f02f40096', '', '2018-02-13 17:55:52.692', '8', '2018-02-13 17:55:52.692', 'Hierbabuena', 'g'),
('ff808081614f940e0161904f26f10097', '', '2018-02-13 17:56:01.905', '8', '2018-02-13 17:56:01.905', 'Chía', 'g'),
('ff808081614f940e0161967aaa6300b1', '', '2018-02-14 22:41:16.9', '8', '2018-02-14 22:41:16.9', 'Salsa chipotle', 'ml'),
('ff808081614f940e0161968f533600b5', '', '2018-02-14 23:03:50.838', '8', '2018-02-14 23:03:50.838', 'Betabel', 'g'),
('ff808081614f940e01619a58b49b00bc', '', '2018-02-15 16:42:40.156', '8', '2018-02-15 16:42:40.156', 'Gelatina', 'g'),
('ff808081614f940e01619a5a9c3800bd', '', '2018-02-15 16:44:44.985', '8', '2018-02-15 16:44:44.985', 'Splenda', 'g'),
('ff808081614f940e01619a5fe8ed00bf', '', '2018-02-15 16:50:32.301', '8', '2018-02-15 16:50:32.301', 'Mix de frutos rojos', 'g'),
('ff808081614f940e01619a602a6700c0', '', '2018-02-15 16:50:49.063', '8', '2018-02-15 16:50:49.063', 'Azúcar', 'g'),
('ff808081614f940e01619a6b4fa900c2', '', '2018-02-15 17:02:59.497', '8', '2018-02-15 17:02:59.497', 'Nuez', 'g'),
('ff808081614f940e01619a6b978e00c3', '', '2018-02-15 17:03:17.902', '8', '2018-02-15 17:03:17.902', 'Taro', 'g'),
('ff808081614f940e01619b5df67200d4', '', '2018-02-15 21:28:01.906', '8', '2018-02-15 21:28:01.906', 'Salsa Maggy', 'ml'),
('ff808081614f940e01619b5e399400d5', '', '2018-02-15 21:28:19.092', '8', '2018-02-15 21:28:19.092', 'Arroz integral', 'g'),
('ff808081614f940e0161904e4d690093', '', '2018-02-13 17:55:06.217', '8', '2018-02-15 21:35:31.678', 'Leche evaporada', 'ml'),
('ff808081614f940e01619b6e2a7c00d8', '', '2018-02-15 21:45:43.804', '8', '2018-02-15 21:45:43.804', 'Repollo', 'g'),
('ff808081614f940e01619b6e5aef00d9', '', '2018-02-15 21:45:56.207', '8', '2018-02-15 21:45:56.207', 'Col morada', 'g'),
('ff808081614f940e01619b6e8e6300da', '', '2018-02-15 21:46:09.379', '8', '2018-02-15 21:46:09.379', 'Fideo chino', 'g'),
('ff808081614f940e01619b6ec4f400db', '', '2018-02-15 21:46:23.348', '8', '2018-02-15 21:46:23.348', 'Aderezo de cacahuate', 'ml'),
('ff808081614f940e0161a0a2db7b00e3', '', '2018-02-16 22:01:23.067', '8', '2018-02-16 22:01:23.067', 'Mayonesa', 'ml'),
('ff808081614f940e0161a4a535c400e6', '', '2018-02-17 16:42:26.117', '8', '2018-02-17 16:42:26.117', 'Brócoli', 'g'),
('ff808081614f940e0161a523e6a600eb', '', '2018-02-17 19:00:48.934', '8', '2018-02-17 19:00:48.934', 'Harina sin gluten', 'g'),
('ff808081614f940e0162112b68c101dc', '', '2018-03-10 18:28:00.322', '8', '2018-03-10 18:28:00.322', 'Chocolate', 'g'),
('ff808081614f940e0162112bb68701dd', '', '2018-03-10 18:28:20.231', '8', '2018-03-10 18:28:20.231', 'Plátano', 'g'),
('ff808081614f940e0162112be28801de', '', '2018-03-10 18:28:31.496', '8', '2018-03-10 18:28:31.496', 'Linaza', 'g'),
('ff808081614f940e0162112c08f001df', '', '2018-03-10 18:28:41.328', '8', '2018-03-10 18:28:41.328', 'Granola', 'g'),
('ff808081614f940e0162112c41e301e0', '', '2018-03-10 18:28:55.908', '8', '2018-03-10 18:28:55.908', 'Vainilla', 'ml');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE IF NOT EXISTS `ordenes` (
  `id` varchar(32) DEFAULT NULL,
  `calificacion_comentario` varchar(26) DEFAULT NULL,
  `calificacion_comida` varchar(19) DEFAULT NULL,
  `calificacion_servicio` varchar(21) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `empresa_id` varchar(32) DEFAULT NULL,
  `establecimiento_id` varchar(32) DEFAULT NULL,
  `estatus` varchar(11) DEFAULT NULL,
  `fecha_pago` varchar(23) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `modo_pago` varchar(10) DEFAULT NULL,
  `monto_pagado` varchar(12) DEFAULT NULL,
  `no_orden` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`id`, `calificacion_comentario`, `calificacion_comida`, `calificacion_servicio`, `date_created`, `empresa_id`, `establecimiento_id`, `estatus`, `fecha_pago`, `id_autor`, `last_updated`, `modo_pago`, `monto_pagado`, `no_orden`) VALUES
('ff808081614f940e0161e3bc6d330161', '', '0', '0', '2018-03-01 22:43:52.245', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-01 22:43:52.101', '33', '2018-03-01 22:43:52.245', 'Por nómina', '0', '0000002'),
('ff808081614f940e0161e3bc6e480163', '', '0', '0', '2018-03-01 22:43:52.52', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-01 22:43:52.397', '33', '2018-03-01 22:43:52.52', 'Por nómina', '0', '0000003'),
('ff808081614f940e0161e8c1ddbc017a', '', '0', '0', '2018-03-02 22:07:54.813', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-02 22:07:54.675', '30', '2018-03-02 22:07:54.813', 'Por nómina', '100', '0000004'),
('ff808081614f940e0161f7c52f6e0191', '', '0', '0', '2018-03-05 20:05:50.575', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-05 20:05:50.422', '30', '2018-03-05 20:05:50.575', 'Por nómina', '244', '0000005'),
('ff808081614f940e0161fc53fcad019c', '', '0', '0', '2018-03-06 17:20:18.094', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-06 17:20:17.959', '30', '2018-03-06 17:20:18.094', 'Por nómina', '325', '0000006'),
('ff808081614f940e01621153c5cf01e7', '', '0', '0', '2018-03-10 19:12:05.584', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-10 19:12:05.452', '29', '2018-03-10 19:12:05.584', 'Por nómina', '262', '0000014'),
('ff808081614f940e01622088073c01fb', '', '0', '0', '2018-03-13 18:03:28.445', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-13 18:03:28.242', '33', '2018-03-13 18:03:28.445', 'Por nómina', '488', '0000015'),
('ff808081614f940e0162015146c201a4', 'Súper rica y en tiempo', '4', '4', '2018-03-07 16:35:26.531', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-07 16:35:26.386', '34', '2018-03-13 18:17:29.571', 'Por nómina', '1515', '0000007'),
('ff808081614f940e0162209eae6801ff', '', '0', '0', '2018-03-13 18:28:13.033', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-13 18:28:12.898', '34', '2018-03-13 18:28:13.033', 'Por nómina', '390', '0000016'),
('ff808081614f940e016220f76d3a0206', '', '0', '0', '2018-03-13 20:05:09.051', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-13 20:05:08.898', '30', '2018-03-13 20:05:09.051', 'Por nómina', '60', '0000017'),
('ff808081614f940e01622101ba690209', '', '0', '0', '2018-03-13 20:16:24.17', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-13 20:16:24.027', '29', '2018-03-13 20:16:24.17', 'Por nómina', '780', '0000018'),
('ff80808162283e0a01623663fe130052', '', '0', '0', '2018-03-17 23:55:45.556', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 23:55:45.42', '16', '2018-03-17 23:55:45.556', 'Por saldo', '0', '0000027'),
('ff80808162283e0a01623666257d0055', '', '0', '0', '2018-03-17 23:58:06.718', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 23:58:06.538', '16', '2018-03-17 23:58:06.718', 'Por saldo', '65', '0000028'),
('ff80808162283e0a016236662720005a', '', '0', '0', '2018-03-17 23:58:07.137', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 23:58:06.973', '16', '2018-03-17 23:58:07.137', 'Por saldo', '120', '0000029'),
('ff80808162283e0a01625e1bc40e0079', '', '0', '0', '2018-03-25 17:01:40.75', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-25 17:01:40.572', '16', '2018-03-25 17:01:40.75', 'Por saldo', '67', '0000032'),
('ff808081614f940e01620bed7d8101c4', '', '0', '0', '2018-03-09 18:02:16.322', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-09 18:02:16.192', '33', '2018-03-15 18:54:42.152', 'Por nómina', '35', '0000010'),
('ff808081614f940e0161e3983ea7015a', '', '0', '0', '2018-03-01 22:04:21.038', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-03-01 22:04:20.767', '30', '2018-03-15 22:09:00.286', 'Por nómina', '0', '0000001'),
('ff80808162283e0a01622bb46928002f', '', '0', '0', '2018-03-15 22:07:46.473', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-03-15 22:07:46.319', '30', '2018-03-15 22:09:21.791', 'Por nómina', '67', '0000021'),
('ff80808162283e0a0162365a670f004f', '', '0', '0', '2018-03-17 23:45:17.072', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 23:45:16.932', '16', '2018-03-17 23:45:17.072', 'Por saldo', '55', '0000026'),
('ff80808162283e0a01624a131d1e006a', '', '0', '0', '2018-03-21 19:39:49.407', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-21 19:39:49.262', '33', '2018-03-21 19:39:49.407', 'Por nómina', '50', '0000030'),
('ff80808162283e0a01624a1823c3006e', '', '0', '0', '2018-03-21 19:45:18.788', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-21 19:45:18.648', '33', '2018-03-21 19:45:18.788', 'Por nómina', '67', '0000031'),
('ff808081614f940e01620709065c01b6', 'Ok', '5', '5', '2018-03-08 19:14:14.748', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-08 19:14:14.6', '30', '2018-03-25 23:56:20.412', 'Por nómina', '165', '0000008'),
('ff80808162283e0a01625ff6fe5c008c', '', '0', '0', '2018-03-26 01:40:45.277', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 01:40:45.047', '16', '2018-03-26 01:40:45.277', 'Por saldo', '50', '0000033'),
('ff808081626a161b01627159823e002d', '', '0', '0', '2018-03-29 10:41:54.258', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-29 10:41:53.863', '16', '2018-03-29 10:41:54.258', 'Por saldo', '50', '0000034'),
('ff80808162283e0a0162366626630057', '', '0', '0', '2018-03-17 23:58:06.948', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-17 23:58:06.803', '16', '2018-03-30 06:09:10.212', 'Por saldo', '0', '0000029'),
('ff808081614f940e01620cd6780801d2', 'Todo bien.', '4', '4', '2018-03-09 22:16:44.809', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-09 22:16:44.661', '30', '2018-04-09 19:34:23.153', 'Por nómina', '295', '0000012'),
('ff808081614f940e01620c35d97a01cb', 'Llego tarde mi pedido.', '4', '2', '2018-03-09 19:21:18.459', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-09 19:21:18.32', '30', '2018-04-09 19:35:41.268', 'Por nómina', '405', '0000011'),
('ff808081614f940e0162113f9bbe01e2', '', '4', '4', '2018-03-10 18:50:04.095', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-10 18:50:03.901', '30', '2018-04-09 19:36:03.582', 'Por nómina', '67', '0000013'),
('ff80808162283e0a01622bb1c510002c', '', '5', '4', '2018-03-15 22:04:53.393', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-15 22:04:53.116', '30', '2018-04-09 19:36:31.535', 'Por nómina', '90', '0000020'),
('ff808081614f940e0162259e93d50213', '', '5', '5', '2018-03-14 17:46:12.31', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-14 17:46:12.153', '30', '2018-04-09 19:36:47.295', 'Por nómina', '67', '0000019'),
('ff80808162283e0a01623085fb56003b', '', '5', '5', '2018-03-16 20:35:09.782', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-16 20:35:09.628', '30', '2018-04-09 19:36:59.899', 'Por nómina', '55', '0000023'),
('ff80808162283e0a016236579748004b', '', '4', '5', '2018-03-17 23:42:12.809', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-17 23:42:12.644', '30', '2018-04-09 19:37:22.218', 'Por saldo', '60', '0000025'),
('ff80808162283e0a01623091544c003e', '', '4', '4', '2018-03-16 20:47:33.453', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-16 20:47:33.315', '30', '2018-04-09 19:37:39.667', 'Por nómina', '55', '0000024'),
('ff80808162283e0a01622bc16f720035', '', '4', '5', '2018-03-15 22:22:00.051', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-15 22:21:59.91', '30', '2018-04-09 19:37:52.87', 'Por nómina', '70', '0000022'),
('ff808081614f940e01620bed776c01c2', '', '3', '5', '2018-03-09 18:02:14.765', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-09 18:02:14.601', '33', '2018-04-16 19:16:14.463', 'Por nómina', '125', '0000009'),
('ff80808162adb3bc0162cf60efa30038', '', '3', '3', '2018-04-16 16:54:19.3', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-04-16 16:54:19.037', '30', '2018-04-26 18:44:50.873', 'Por nómina', '180', '0000037'),
('ff80808162adb3bc0162bab8d6ff002b', '', '4', '3', '2018-04-12 16:38:18.638', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-04-12 16:38:18.197', '33', '2018-04-16 19:16:28.835', 'Por nómina', '50', '0000035'),
('ff80808162adb3bc0162bb0eb0b80031', '', '3', '4', '2018-04-12 18:12:04.921', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-04-12 18:12:04.758', '30', '2018-04-16 19:30:02.337', 'Por nómina', '75', '0000036'),
('ff80808162adb3bc0162d960dc3a0041', '', '0', '0', '2018-04-18 15:30:26.49', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-18 15:30:26.316', '30', '2018-04-18 15:30:26.49', 'Por nómina', '80', '0000038'),
('ff80808162adb3bc0162e4cfb3500045', '', '0', '0', '2018-04-20 20:47:19.889', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-20 20:47:19.706', '30', '2018-04-20 20:47:19.889', 'Por nómina', '55', '0000039'),
('ff80808162adb3bc0162e8db669e0049', '', '0', '0', '2018-04-21 15:38:35.55', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-21 15:38:35.375', '30', '2018-04-21 15:38:35.55', 'Por nómina', '55', '0000040'),
('ff80808162adb3bc016303378dbb0055', '', '0', '0', '2018-04-26 18:29:22.492', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-26 18:29:22.349', '30', '2018-04-26 18:29:22.492', 'Por nómina', '67', '0000041'),
('ff80808162adb3bc016317b773b0005b', '', '0', '0', '2018-04-30 18:01:28.753', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-30 18:01:28.592', '30', '2018-04-30 18:01:28.753', 'Por nómina', '55', '0000042'),
('ff80808162adb3bc0163180aa0d2005f', '', '0', '0', '2018-04-30 19:32:19.795', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-30 19:32:19.648', '30', '2018-04-30 19:32:19.795', 'Por saldo', '67', '0000043'),
('ff80808162adb3bc01633bddbb630065', '', '0', '0', '2018-05-07 18:29:37.252', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-07 18:29:37.097', '30', '2018-05-07 18:29:37.252', 'Por nómina', '0', '0000044'),
('ff8080816345dd26016384f118a20038', '', '0', '0', '2018-05-21 23:03:03.074', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-21 23:03:02.941', '30', '2018-05-21 23:03:03.074', 'Por saldo', '250', '0000048'),
('ff8080816345dd260163d5fda0650083', '', '0', '0', '2018-06-06 16:45:58.757', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Cancelado', '2018-06-06 16:45:58.612', '46', '2018-06-06 21:18:58.082', 'Por saldo', '30', '0000057'),
('ff8080816345dd260163adc659850040', '', '0', '0', '2018-05-29 21:20:47.493', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-29 21:20:47.358', '30', '2018-05-29 21:20:47.493', 'Por nómina', '55', '0000049'),
('ff8080816345dd260163e164ad58009a', '', '0', '0', '2018-06-08 21:54:21.656', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Nuevo', '2018-06-08 21:54:21.51', '46', '2018-06-08 21:54:21.656', 'Por saldo', '30', '0000061'),
('ff8080816345dd26016360775124002b', 'Tardo en cargar la página.', '1', '1', '2018-05-14 21:03:42.372', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-05-14 21:03:42.223', '30', '2018-05-30 20:06:16.967', 'Por nómina', '164', '0000046'),
('ff8080816345dd2601635f72db5b0027', '', '1', '2', '2018-05-14 16:19:12.871', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-05-14 16:19:12.541', '30', '2018-05-30 20:07:06.099', 'Por nómina', '70', '0000045'),
('ff8080816345dd260163607b8b75002e', '', '1', '1', '2018-05-14 21:08:19.446', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-05-14 21:08:19.301', '30', '2018-05-30 20:08:12.972', 'Por nómina', '67', '0000047'),
('ff8080816345dd260163b70a89c2004c', '', '0', '0', '2018-05-31 16:31:51.235', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-31 16:31:51.102', '30', '2018-05-31 16:31:51.235', 'Por nómina', '60', '0000050'),
('ff8080816345dd260163b7f606b70052', '', '0', '0', '2018-05-31 20:49:04.183', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-31 20:49:04.029', '34', '2018-05-31 20:49:04.183', 'Por nómina', '130', '0000051'),
('ff8080816345dd260163b7f609780054', '', '0', '0', '2018-05-31 20:49:04.891', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-31 20:49:04.748', '34', '2018-05-31 20:49:04.891', 'Por nómina', '30', '0000052'),
('ff8080816345dd260163b7f60c9a0058', '', '0', '0', '2018-05-31 20:49:05.69', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-31 20:49:05.557', '34', '2018-05-31 20:49:05.69', 'Por nómina', '75', '0000053'),
('ff8080816345dd260163b7f60f8f005b', '', '0', '0', '2018-05-31 20:49:06.448', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-31 20:49:06.327', '34', '2018-05-31 20:49:06.448', 'Por nómina', '140', '0000054'),
('ff8080816345dd260163cc6097c50064', '', '0', '0', '2018-06-04 19:57:52.453', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-06-04 19:57:52.295', '44', '2018-06-04 21:07:47.699', 'Por saldo', '67', '0000055'),
('ff8080816345dd260163cd1266ce0079', '', '0', '0', '2018-06-04 23:12:05.326', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'En tránsito', '2018-06-04 23:12:05.193', '46', '2018-06-11 21:38:33.585', 'Por saldo', '60', '0000056'),
('ff8080816345dd260163d6d3862a008c', '', '0', '0', '2018-06-06 20:39:36.747', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'En tránsito', '2018-06-06 20:39:36.606', '46', '2018-06-11 23:05:36.46', 'Por saldo', '30', '0000058'),
('ff8080816345dd260163dab4096b0093', '', '0', '0', '2018-06-07 14:43:42.06', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'En tránsito', '2018-06-07 14:43:41.936', '46', '2018-06-11 23:05:36.463', 'Por saldo', '80', '0000060'),
('ff8080816345dd260163dab408ac0091', '', '0', '0', '2018-06-07 14:43:41.868', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'En tránsito', '2018-06-07 14:43:41.716', '46', '2018-06-11 23:12:09.224', 'Por saldo', '60', '0000059');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenesdetalles`
--

CREATE TABLE IF NOT EXISTS `ordenesdetalles` (
  `id` varchar(32) DEFAULT NULL,
  `cantidad` varchar(8) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `embarque_id` varchar(32) DEFAULT NULL,
  `es_personalizado` varchar(16) DEFAULT NULL,
  `establecimiento_id` varchar(32) DEFAULT NULL,
  `estatus` varchar(9) DEFAULT NULL,
  `fecha_entrega` varchar(19) DEFAULT NULL,
  `fecha_pago` varchar(23) DEFAULT NULL,
  `hora_entrega` varchar(12) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `modo_pago` varchar(10) DEFAULT NULL,
  `monto_pagado` varchar(12) DEFAULT NULL,
  `orden_id` varchar(32) DEFAULT NULL,
  `personalizado` varchar(79) DEFAULT NULL,
  `platillo_id` varchar(32) DEFAULT NULL,
  `realmente_pagado` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ordenesdetalles`
--

INSERT INTO `ordenesdetalles` (`id`, `cantidad`, `date_created`, `embarque_id`, `es_personalizado`, `establecimiento_id`, `estatus`, `fecha_entrega`, `fecha_pago`, `hora_entrega`, `id_autor`, `last_updated`, `modo_pago`, `monto_pagado`, `orden_id`, `personalizado`, `platillo_id`, `realmente_pagado`) VALUES
('ff808081614f940e0161e3bc703f0164', '1', '2018-03-01 22:43:53.024', 'ff808081614f940e0161e46ffd9a0166', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-06 00:00:00', '2018-03-01 22:43:53.017', '09:00 AM', '33', '2018-03-02 02:00:00.19', 'Por nómina', '0', 'ff808081614f940e0161e3bc6d330161', ' ', 'ff808081614f940e0161d3adcec90126', 'False'),
('ff808081614f940e0161e8c1e508017b', '2', '2018-03-02 22:07:56.681', 'ff808081614f940e0161e9965936017d', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-07 00:00:00', '2018-03-02 22:07:56.672', '09:00 AM', '30', '2018-03-03 02:00:00.063', 'Por nómina', '40', 'ff808081614f940e0161e8c1ddbc017a', ' Sin :  Sin :   Extras : Pollo a la plancha ($20) Crutones ($0) ', 'ff808081614f940e0161d3abca9d011f', 'False'),
('ff808081614f940e0161e3bc72160165', '1', '2018-03-01 22:43:53.497', 'ff808081614f940e0161e9965936017d', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-07 00:00:00', '2018-03-01 22:43:53.487', '09:00 AM', '33', '2018-03-03 02:00:00.069', 'Por nómina', '0', 'ff808081614f940e0161e3bc6e480163', ' ', 'ff808081614f940e0161d3acc03d0122', 'False'),
('ff808081614f940e0161e8c1e62d017c', '3', '2018-03-02 22:07:56.973', 'ff808081614f940e0161e9965936017d', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-07 00:00:00', '2018-03-02 22:07:56.966', '09:00 AM', '30', '2018-03-03 02:00:00.075', 'Por nómina', '60', 'ff808081614f940e0161e8c1ddbc017a', ' Sin : Lechuga italiana Pimiento morrón   Extras : Granola ($10) Granola ($10) ', 'ff808081614f940e0161d3acc03d0122', 'False'),
('ff808081614f940e0161f7c537a60192', '2', '2018-03-05 20:05:52.679', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-09 00:00:00', '2018-03-05 20:05:52.669', '09:00 AM', '30', '2018-03-05 20:05:52.679', 'Por nómina', '110', 'ff808081614f940e0161f7c52f6e0191', ' ', 'ff808081614f940e0161d3aea891012a', 'False'),
('ff808081614f940e0161f7c538cb0193', '2', '2018-03-05 20:05:52.972', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-09 00:00:00', '2018-03-05 20:05:52.965', '09:00 AM', '30', '2018-03-05 20:05:52.972', 'Por nómina', '134', 'ff808081614f940e0161f7c52f6e0191', ' ', 'ff808081614f940e0161d3ab8b6c011e', 'False'),
('ff808081614f940e0161fc540590019e', '4', '2018-03-06 17:20:20.369', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-10 00:00:00', '2018-03-06 17:20:20.36', '12:00 PM', '30', '2018-03-06 17:20:20.369', 'Por nómina', '220', 'ff808081614f940e0161fc53fcad019c', ' ', 'ff808081614f940e0161d3b05a01012e', 'False'),
('ff808081614f940e0161fc540589019d', '3', '2018-03-06 17:20:20.362', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-10 00:00:00', '2018-03-06 17:20:20.352', '12:00 PM', '30', '2018-03-06 17:20:20.362', 'Por nómina', '105', 'ff808081614f940e0161fc53fcad019c', ' ', 'ff808081614f940e0161dd2143020146', 'False'),
('ff808081614f940e0161fc54068a019f', '1', '2018-03-06 17:20:20.619', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-10 00:00:00', '2018-03-06 17:20:20.609', '12:00 PM', '30', '2018-03-06 17:20:20.619', 'Por nómina', '0', 'ff808081614f940e0161fc53fcad019c', ' ', 'ff808081614f940e0161d3ae72910129', 'False'),
('ff808081614f940e01620151493901a5', '20', '2018-03-07 16:35:27.162', 'ff808081614f940e01620356253601ab', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-12 00:00:00', '2018-03-07 16:35:27.152', '12:00 PM', '34', '2018-03-12 19:10:01.382', 'Por nómina', '1340', 'ff808081614f940e0162015146c201a4', ' ', 'ff808081614f940e0161dd231586014a', 'False'),
('ff808081614f940e016207090d4e01b8', '2', '2018-03-08 19:14:16.527', 'ff808081614f940e0162087c813901ba', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-13 00:00:00', '2018-03-08 19:14:16.518', '12:00 PM', '30', '2018-03-12 19:15:49.909', 'Por nómina', '0', 'ff808081614f940e01620709065c01b6', ' ', 'ff808081614f940e0161d3ad64430124', 'False'),
('ff808081614f940e016220880ac201fc', '4', '2018-03-13 18:03:29.347', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 00:00:00', '2018-03-13 18:03:29.337', '12:00 PM', '33', '2018-03-13 18:03:29.347', 'Por nómina', '220', 'ff808081614f940e01622088073c01fb', ' ', 'ff808081614f940e0161d3b05a01012e', 'False'),
('ff808081614f940e016207090c4001b7', '3', '2018-03-08 19:14:16.257', 'ff808081614f940e0162087c813901ba', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-13 00:00:00', '2018-03-08 19:14:16.247', '12:00 PM', '30', '2018-03-12 19:15:35.231', 'Por nómina', '165', 'ff808081614f940e01620709065c01b6', ' ', 'ff808081614f940e0161d3aa4da0011c', 'False'),
('ff808081614f940e01620c35defb01cc', '5', '2018-03-09 19:21:19.868', 'ff808081614f940e01620da2dd3301d6', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 00:00:00', '2018-03-09 19:21:19.858', '12:00 PM', '30', '2018-03-14 17:11:08.642', 'Por nómina', '175', 'ff808081614f940e01620c35d97a01cb', ' ', 'ff808081614f940e0161dd251973014f', 'False'),
('ff808081614f940e01620bed809c01c6', '1', '2018-03-09 18:02:17.117', 'ff808081614f940e01620da2dd3301d6', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 00:00:00', '2018-03-09 18:02:17.108', '12:00 PM', '33', '2018-03-14 16:54:00.026', 'Por nómina', '75', 'ff808081614f940e01620bed776c01c2', ' ', 'ff808081614f940e0161dd22edcd0149', 'False'),
('ff808081614f940e01620c35e03401cd', '2', '2018-03-09 19:21:20.18', 'ff808081614f940e01620da2dd3301d6', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 00:00:00', '2018-03-09 19:21:20.17', '12:00 PM', '30', '2018-03-14 17:11:10.172', 'Por nómina', '230', 'ff808081614f940e01620c35d97a01cb', '  Extras : Pollo blaze ($20) Pollo blaze ($20) ', 'ff808081614f940e0161dd22edcd0149', 'False'),
('ff808081614f940e01620cd67c6d01d4', '2', '2018-03-09 22:16:45.933', 'ff808081614f940e01620da2dd3301d6', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 00:00:00', '2018-03-09 22:16:45.922', '12:00 PM', '30', '2018-03-14 17:11:12.159', 'Por nómina', '70', 'ff808081614f940e01620cd6780801d2', ' ', 'ff808081614f940e0161dd2143020146', 'False'),
('ff808081614f940e01620cd67c6901d3', '3', '2018-03-09 22:16:45.93', 'ff808081614f940e01620da2dd3301d6', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 00:00:00', '2018-03-09 22:16:45.921', '12:00 PM', '30', '2018-03-14 17:11:11.155', 'Por nómina', '225', 'ff808081614f940e01620cd6780801d2', ' Sin : Queso gouda  ', 'ff808081614f940e0161dd234a0c014c', 'False'),
('ff808081614f940e01621153c8bf01e8', '2', '2018-03-10 19:12:06.336', '', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-14 00:00:00', '2018-03-10 19:12:06.325', '09:00 AM', '29', '2018-03-10 19:12:06.336', 'Por nómina', '110', 'ff808081614f940e01621153c5cf01e7', ' Sin : Aderezo de chipotle Aderezo de mostaza  ', 'ff808081614f940e0161d3aea891012a', 'False'),
('ff808081614f940e01621153c92f01e9', '2', '2018-03-10 19:12:06.447', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-14 00:00:00', '2018-03-10 19:12:06.434', '09:00 AM', '29', '2018-03-10 19:12:06.447', 'Por nómina', '70', 'ff808081614f940e01621153c5cf01e7', ' ', 'ff808081614f940e0161dd251973014f', 'False'),
('ff808081614f940e01621153c93501ea', '1', '2018-03-10 19:12:06.454', '', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-14 00:00:00', '2018-03-10 19:12:06.435', '09:00 AM', '29', '2018-03-10 19:12:06.454', 'Por nómina', '82', 'ff808081614f940e01621153c5cf01e7', ' Sin :   Extras : Crutones ($15) ', 'ff808081614f940e0161d3ab8b6c011e', 'False'),
('ff808081614f940e01620151499f01a6', '5', '2018-03-07 16:35:27.264', 'ff808081614f940e01620356253601ab', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-12 00:00:00', '2018-03-07 16:35:27.252', '12:00 PM', '34', '2018-03-12 19:10:04.37', 'Por nómina', '175', 'ff808081614f940e0162015146c201a4', ' ', 'ff808081614f940e0161dd22b8c40148', 'False'),
('ff808081614f940e016220880b2701fd', '4', '2018-03-13 18:03:29.448', '', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 00:00:00', '2018-03-13 18:03:29.438', '12:00 PM', '33', '2018-03-13 18:03:29.448', 'Por nómina', '268', 'ff808081614f940e01622088073c01fb', ' Sin :  ', 'ff808081614f940e0161d3abca9d011f', 'False'),
('ff808081614f940e0162209eb2a90200', '12', '2018-03-13 18:28:14.122', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 00:00:00', '2018-03-13 18:28:14.109', '12:00 PM', '34', '2018-03-13 18:28:14.122', 'Por nómina', '0', 'ff808081614f940e0162209eae6801ff', ' ', 'ff808081614f940e0161dd2534f40151', 'False'),
('ff808081614f940e0161e39849dc015b', '5', '2018-03-01 22:04:23.914', 'ff808081614f940e0161e46ffd9a0166', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-03-06 00:00:00', '2018-03-01 22:04:23.872', '09:00 AM', '30', '2018-03-15 22:09:00.32', 'Por nómina', '0', 'ff808081614f940e0161e3983ea7015a', ' ', 'ff808081614f940e0161d3aa39b5011b', 'False'),
('ff808081614f940e0162113faa2f01e3', '1', '2018-03-10 18:50:07.792', 'ff808081614f940e016212c9393e01eb', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-15 00:00:00', '2018-03-10 18:50:07.776', '12:00 PM', '30', '2018-03-15 18:44:41.132', 'Por nómina', '67', 'ff808081614f940e0162113f9bbe01e2', ' ', 'ff808081614f940e0161d3ab8b6c011e', 'False'),
('ff808081614f940e0162209eb3200201', '2', '2018-03-13 18:28:14.241', '', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 00:00:00', '2018-03-13 18:28:14.231', '12:00 PM', '34', '2018-03-13 18:28:14.241', 'Por nómina', '150', 'ff808081614f940e0162209eae6801ff', ' Sin : Aderezo de la casa  ', 'ff808081614f940e0161dd22edcd0149', 'False'),
('ff808081614f940e0162209eb3370202', '4', '2018-03-13 18:28:14.264', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 00:00:00', '2018-03-13 18:28:14.254', '12:00 PM', '34', '2018-03-13 18:28:14.264', 'Por nómina', '240', 'ff808081614f940e0162209eae6801ff', ' ', 'ff808081614f940e0161d3adcec90126', 'False'),
('ff808081614f940e016220f77a530207', '1', '2018-03-13 20:05:12.404', '', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 00:00:00', '2018-03-13 20:05:12.392', '12:00 PM', '30', '2018-03-13 20:05:12.404', 'Por nómina', '60', 'ff808081614f940e016220f76d3a0206', ' Sin : Zanahoria  ', 'ff808081614f940e0161d3ae0cdc0127', 'False'),
('ff808081614f940e01622101be0b020a', '5', '2018-03-13 20:16:25.099', '', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 00:00:00', '2018-03-13 20:16:25.089', '09:00 AM', '29', '2018-03-13 20:16:25.099', 'Por nómina', '400', 'ff808081614f940e01622101ba690209', ' Sin :   Extras : Atún ($20) ', 'ff808081614f940e0161d3ae0cdc0127', 'False'),
('ff808081614f940e01622101c14b020b', '2', '2018-03-13 20:16:25.931', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 00:00:00', '2018-03-13 20:16:25.919', '09:00 AM', '29', '2018-03-13 20:16:25.931', 'Por nómina', '150', 'ff808081614f940e01622101ba690209', ' ', 'ff808081614f940e0161dd22edcd0149', 'False'),
('ff808081614f940e01622101c15a020c', '3', '2018-03-13 20:16:25.947', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 00:00:00', '2018-03-13 20:16:25.92', '09:00 AM', '29', '2018-03-13 20:16:25.947', 'Por nómina', '120', 'ff808081614f940e01622101ba690209', ' ', 'ff808081614f940e0161d3b4e72a0136', 'False'),
('ff808081614f940e01622101c15e020d', '2', '2018-03-13 20:16:25.951', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 00:00:00', '2018-03-13 20:16:25.92', '09:00 AM', '29', '2018-03-13 20:16:25.951', 'Por nómina', '110', 'ff808081614f940e01622101ba690209', ' ', 'ff808081614f940e0161d3aea891012a', 'False'),
('ff808081614f940e01620bed7fc901c5', '1', '2018-03-09 18:02:16.906', 'ff808081614f940e01620da2dd3301d6', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 00:00:00', '2018-03-09 18:02:16.894', '12:00 PM', '33', '2018-03-14 16:53:58.199', 'Por nómina', '50', 'ff808081614f940e01620bed776c01c2', ' ', 'ff808081614f940e0161d3ae441a0128', 'False'),
('ff808081614f940e01620bed84c201c7', '1', '2018-03-09 18:02:18.179', 'ff808081614f940e016212c9393e01eb', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-15 00:00:00', '2018-03-09 18:02:18.168', '12:00 PM', '33', '2018-03-15 18:44:22.572', 'Por nómina', '35', 'ff808081614f940e01620bed7d8101c4', ' ', 'ff808081614f940e0161dd22b8c40148', 'False'),
('ff808081614f940e0161e3984a1a015c', '5', '2018-03-01 22:04:23.963', 'ff808081614f940e0161e46ffd9a0166', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-03-06 00:00:00', '2018-03-01 22:04:23.956', '09:00 AM', '30', '2018-03-15 22:09:00.324', 'Por nómina', '0', 'ff808081614f940e0161e3983ea7015a', ' ', 'ff808081614f940e0161d3b3d1f80130', 'False'),
('ff80808162283e0a01622bb46e380030', '1', '2018-03-15 22:07:47.77', '', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-03-21 00:00:00', '2018-03-15 22:07:47.749', '12:00 PM', '30', '2018-03-15 22:09:21.801', 'Por nómina', '67', 'ff80808162283e0a01622bb46928002f', ' ', 'ff808081614f940e0161d3b4a4af0135', 'False'),
('ff80808162283e0a0162308602aa003c', '1', '2018-03-16 20:35:11.659', 'ff80808162283e0a016231af61390040', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-21 00:00:00', '2018-03-16 20:35:11.629', '12:00 PM', '30', '2018-03-21 18:52:08.964', 'Por nómina', '55', 'ff80808162283e0a01623085fb56003b', ' Sin : Pimiento morrón  ', 'ff808081614f940e0161d3aa4da0011c', 'False'),
('ff80808162283e0a01624a1826ce006f', '1', '2018-03-21 19:45:19.567', 'ff80808162283e0a01624b6f2d350070', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 00:00:00', '2018-03-21 19:45:19.556', '12:00 PM', '33', '2018-03-22 02:00:00.066', 'Por nómina', '67', 'ff80808162283e0a01624a1823c3006e', ' ', 'ff808081614f940e0161d3abca9d011f', 'False'),
('ff80808162283e0a016236579898004c', '1', '2018-03-17 23:42:13.145', 'ff80808162283e0a016236d5bd27005e', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-22 00:00:00', '2018-03-17 23:42:13.133', '09:00 AM', '30', '2018-03-22 15:28:16.444', 'Por saldo', '60', 'ff80808162283e0a016236579748004b', ' ', 'ff808081614f940e0161d3ae0cdc0127', 'True'),
('ff80808162283e0a01623091dc78003f', '1', '2018-03-16 20:48:08.313', 'ff80808162283e0a016236d5bd40005f', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-22 00:00:00', '2018-03-16 20:48:08.299', '12:00 PM', '30', '2018-03-22 15:28:36.983', 'Por nómina', '55', 'ff80808162283e0a01623091544c003e', ' ', 'ff808081614f940e0161d3aea891012a', 'False'),
('ff80808162283e0a016236662864005c', '2', '2018-03-17 23:58:07.461', 'ff80808162283e0a01625095894b0076', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-27 00:00:00', '2018-03-17 23:58:07.45', '12:00 PM', '16', '2018-03-23 02:00:00.082', 'Por saldo', '120', 'ff80808162283e0a016236662720005a', ' ', 'ff808081614f940e0161d3adcec90126', 'True'),
('ff80808162283e0a0162365a68830050', '1', '2018-03-17 23:45:17.444', 'ff80808162283e0a01623bfc19360061', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-23 00:00:00', '2018-03-17 23:45:17.432', '09:00 AM', '16', '2018-03-19 02:00:00.067', 'Por saldo', '55', 'ff80808162283e0a0162365a670f004f', ' ', 'ff808081614f940e0161d3aa4da0011c', 'True'),
('ff80808162283e0a01623663ff8e0053', '1', '2018-03-17 23:55:45.935', 'ff80808162283e0a01623bfc19360061', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-23 00:00:00', '2018-03-17 23:55:45.923', '09:00 AM', '16', '2018-03-19 02:00:00.076', 'Por saldo', '0', 'ff80808162283e0a01623663fe130052', ' ', 'ff808081614f940e0161d3b5f2e80139', 'True'),
('ff80808162283e0a01624a131f8a006b', '1', '2018-03-21 19:39:50.027', 'ff80808162283e0a01624b6f2d350070', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 00:00:00', '2018-03-21 19:39:50.014', '12:00 PM', '33', '2018-03-22 02:00:00.075', 'Por nómina', '50', 'ff80808162283e0a01624a131d1e006a', ' ', 'ff808081614f940e0161d3ae441a0128', 'False'),
('ff808081614f940e0162259ebef60214', '1', '2018-03-14 17:46:23.351', 'ff80808162283e0a01622c8905830037', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-20 00:00:00', '2018-03-14 17:46:23.341', '12:00 PM', '30', '2018-03-20 18:26:42.757', 'Por nómina', '67', 'ff808081614f940e0162259e93d50213', ' Sin : Uva  ', 'ff808081614f940e0161d3abca9d011f', 'False'),
('ff80808162283e0a01622bb1cdf1002d', '1', '2018-03-15 22:04:55.667', 'ff80808162283e0a01622c8905830037', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-20 00:00:00', '2018-03-15 22:04:55.63', '12:00 PM', '30', '2018-03-20 18:27:17.103', 'Por nómina', '90', 'ff80808162283e0a01622bb1c510002c', ' Sin : Calabacita   Extras : Extra aderezo Ciruela ($15) ', 'ff808081614f940e0161dd234a0c014c', 'False'),
('ff80808162283e0a0162366626da0058', '1', '2018-03-17 23:58:07.067', 'ff80808162283e0a01624b6f2d510071', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 00:00:00', '2018-03-17 23:58:07.056', '09:00 AM', '16', '2018-03-22 02:00:00.087', 'Por saldo', '65', 'ff80808162283e0a01623666257d0055', '  Extras : Almendras ($15) ', 'ff808081614f940e0161d3af9d7d012c', 'True'),
('ff80808162283e0a01622bc173ae0036', '2', '2018-03-15 22:22:01.135', 'ff80808162283e0a016236d5bd40005f', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-22 00:00:00', '2018-03-15 22:22:01.111', '12:00 PM', '30', '2018-03-22 15:28:35.858', 'Por nómina', '70', 'ff80808162283e0a01622bc16f720035', ' ', 'ff808081614f940e0161dd251973014f', 'False'),
('ff80808162283e0a01625e1bc572007a', '1', '2018-03-25 17:01:41.107', 'ff80808162283e0a0162652ef9310091', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-31 00:00:00', '2018-03-25 17:01:41.093', '12:00 PM', '16', '2018-03-27 02:00:00.062', 'Por saldo', '67', 'ff80808162283e0a01625e1bc40e0079', ' ', 'ff808081614f940e0161d3ab8b6c011e', 'True'),
('ff80808162283e0a01625ff702b8008d', '1', '2018-03-26 01:40:46.393', 'ff80808162283e0a0162652ef95b0092', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-31 00:00:00', '2018-03-26 01:40:46.377', '09:00 AM', '16', '2018-03-27 02:00:00.097', 'Por saldo', '50', 'ff80808162283e0a01625ff6fe5c008c', ' ', 'ff808081614f940e0161d3ae441a0128', 'True'),
('ff808081626a161b016271598676002e', '1', '2018-03-29 10:41:55.341', 'ff808081626a161b016279c8694d0032', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-04 00:00:00', '2018-03-29 10:41:55.28', '09:00 AM', '16', '2018-03-31 02:00:00.094', 'Por saldo', '50', 'ff808081626a161b01627159823e002d', ' ', 'ff808081614f940e0161d3ae441a0128', 'True'),
('ff80808162283e0a0162366627b1005b', '2', '2018-03-17 23:58:07.283', 'ff80808162283e0a0162509589370075', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-27 00:00:00', '2018-03-17 23:58:07.268', '09:00 AM', '16', '2018-03-30 06:09:10.199', 'Por saldo', '0', 'ff80808162283e0a0162366626630057', ' Sin : Uva  ', 'ff808081614f940e0161d3ac1a390121', 'True'),
('ff80808162adb3bc0162bb0eb66f0032', '1', '2018-04-12 18:12:06.387', 'ff80808162adb3bc0162babef722002d', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-04-16 00:00:00', '2018-04-12 18:12:06.364', '12:00 PM', '30', '2018-04-16 18:54:05.306', 'Por nómina', '75', 'ff80808162adb3bc0162bb0eb0b80031', ' Sin : Pimiento morrón  ', 'ff808081614f940e0161d3aa39b5011b', 'False'),
('ff80808162adb3bc0162cf615b620039', '2', '2018-04-16 16:54:46.884', 'ff80808162adb3bc0162cf653846003b', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-04-20 00:00:00', '2018-04-16 16:54:46.866', '12:00 PM', '30', '2018-04-21 16:37:38.777', 'Por nómina', '180', 'ff80808162adb3bc0162cf60efa30038', ' Sin : Lechuga italiana   Extras : Queso panela ($15) ', 'ff808081614f940e0161dd22edcd0149', 'False'),
('ff80808162adb3bc0162e8db765f004a', '1', '2018-04-21 15:38:39.584', 'ff80808162adb3bc0162eaa6744b004e', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-26 00:00:00', '2018-04-21 15:38:39.57', '12:00 PM', '30', '2018-04-22 00:00:00.098', 'Por nómina', '55', 'ff80808162adb3bc0162e8db669e0049', ' ', 'ff808081614f940e0161d3aea891012a', 'False'),
('ff80808162adb3bc0163033799e80056', '1', '2018-04-26 18:29:25.609', 'ff80808162adb3bc0163046640290059', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-01 00:00:00', '2018-04-26 18:29:25.595', '12:00 PM', '30', '2018-04-27 00:00:00.05', 'Por nómina', '67', 'ff80808162adb3bc016303378dbb0055', ' Sin : Pepino  ', 'ff808081614f940e0161d3ab8b6c011e', 'False'),
('ff80808162adb3bc016317b77b8f005c', '1', '2018-04-30 18:01:30.768', 'ff80808162adb3bc016317c3d4b9005d', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-04 00:00:00', '2018-04-30 18:01:30.755', '12:00 PM', '30', '2018-04-30 18:15:00.029', 'Por nómina', '55', 'ff80808162adb3bc016317b773b0005b', ' ', 'ff808081614f940e0161d3aea891012a', 'False'),
('ff80808162adb3bc0162bab8df98002c', '1', '2018-04-12 16:38:20.852', 'ff80808162adb3bc0162babef722002d', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-04-16 00:00:00', '2018-04-12 16:38:20.749', '12:00 PM', '33', '2018-04-16 18:54:04.058', 'Por nómina', '50', 'ff80808162adb3bc0162bab8d6ff002b', ' Sin :  ', 'ff808081614f940e0161d3ae441a0128', 'False'),
('ff80808162adb3bc0162d960e3580042', '2', '2018-04-18 15:30:28.313', 'ff80808162adb3bc0162db33603c0043', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-23 00:00:00', '2018-04-18 15:30:28.297', '12:00 PM', '30', '2018-04-19 00:00:00.077', 'Por nómina', '80', 'ff80808162adb3bc0162d960dc3a0041', ' ', 'ff808081614f940e0161d3b4e72a0136', 'False'),
('ff80808162adb3bc0162e4cfb9260046', '1', '2018-04-20 20:47:21.384', 'ff80808162adb3bc0162e580184a0047', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-25 00:00:00', '2018-04-20 20:47:21.363', '12:00 PM', '30', '2018-04-21 00:00:00.093', 'Por nómina', '55', 'ff80808162adb3bc0162e4cfb3500045', ' Sin : Lechuga italiana  ', 'ff808081614f940e0161d3aea891012a', 'False'),
('ff80808162adb3bc0163180aa3350060', '1', '2018-04-30 19:32:20.405', 'ff80808162adb3bc016317c3d4b9005d', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-04 00:00:00', '2018-04-30 19:32:20.396', '12:00 PM', '30', '2018-04-30 19:45:00.029', 'Por saldo', '67', 'ff80808162adb3bc0163180aa0d2005f', ' ', 'ff808081614f940e0161d3ab8b6c011e', 'True'),
('ff80808162adb3bc01633bddc4e30066', '1', '2018-05-07 18:29:39.683', 'ff80808162adb3bc01633bde145c0067', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-11 00:00:00', '2018-05-07 18:29:39.673', '12:00 PM', '30', '2018-05-07 18:30:00.032', 'Por nómina', '0', 'ff80808162adb3bc01633bddbb630065', ' ', 'ff808081614f940e0161d3ac1a390121', 'False'),
('ff8080816345dd260163dab409e00094', '2', '2018-06-07 14:43:42.177', 'ff8080816345dd260163dab539f70096', 'False', 'ff8080816345dd260163ccc6d0d80069', 'Preparado', '2018-06-11 00:00:00', '2018-06-07 14:43:42.168', '08:00 PM', '46', '2018-06-11 20:37:02.516', 'Por saldo', '60', 'ff8080816345dd260163dab408ac0091', ' ', 'ff8080816345dd260163cd0220b30071', 'True'),
('ff8080816345dd260163cc6098fb0065', '1', '2018-06-04 19:57:52.765', 'ff8080816345dd260163cc619fb70066', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-06-08 00:00:00', '2018-06-04 19:57:52.757', '12:00 PM', '44', '2018-06-04 21:07:47.715', 'Por saldo', '67', 'ff8080816345dd260163cc6097c50064', ' ', 'ff808081614f940e0161d3abca9d011f', 'True'),
('ff8080816345dd260163607b8ff4002f', '1', '2018-05-14 21:08:20.597', 'ff8080816345dd2601636081a8430030', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-05-18 00:00:00', '2018-05-14 21:08:20.584', '09:00 AM', '30', '2018-05-29 21:06:47.529', 'Por nómina', '67', 'ff8080816345dd260163607b8b75002e', ' Sin :  ', 'ff808081614f940e0161d3b4a4af0135', 'False'),
('ff8080816345dd260163adc6607a0041', '1', '2018-05-29 21:20:49.275', 'ff8080816345dd260163adcec7dc0042', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-06-02 00:00:00', '2018-05-29 21:20:49.267', '12:00 PM', '30', '2018-05-29 21:30:00.04', 'Por nómina', '55', 'ff8080816345dd260163adc659850040', ' ', 'ff808081614f940e0161d3aa4da0011c', 'False'),
('ff8080816345dd260163cd1267fd007a', '1', '2018-06-04 23:12:05.63', 'ff8080816345dd260163cd151136007b', 'False', 'ff8080816345dd260163ccc6d0d80069', 'Preparado', '2018-06-08 00:00:00', '2018-06-04 23:12:05.622', '03:00 PM', '46', '2018-06-08 17:16:23.307', 'Por saldo', '60', 'ff8080816345dd260163cd1266ce0079', ' ', 'ff8080816345dd260163cd02b8e10073', 'True'),
('ff8080816345dd2601635f72e7490028', '2', '2018-05-14 16:19:15.977', 'ff8080816345dd2601635f7cbb7e0029', 'False', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-05-18 00:00:00', '2018-05-14 16:19:15.888', '12:00 PM', '30', '2018-05-29 22:11:33.371', 'Por nómina', '70', 'ff8080816345dd2601635f72db5b0027', ' ', 'ff808081614f940e0161dd251973014f', 'False'),
('ff8080816345dd26016360775ebb002c', '2', '2018-05-14 21:03:45.853', 'ff8080816345dd2601635f7cbb7e0029', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-05-18 00:00:00', '2018-05-14 21:03:45.843', '12:00 PM', '30', '2018-05-29 22:11:35.175', 'Por nómina', '164', 'ff8080816345dd26016360775124002b', ' Sin :   Extras : Amaranto ($15) ', 'ff808081614f940e0161d3ab8b6c011e', 'False'),
('ff8080816345dd260163b70aa9ea004d', '1', '2018-05-31 16:31:59.467', '', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-07-04 00:00:00', '2018-05-31 16:31:59.442', '12:00 PM', '30', '2018-05-31 16:31:59.467', 'Por nómina', '60', 'ff8080816345dd260163b70a89c2004c', ' Sin : Betabel  ', 'ff808081614f940e0161d3adcec90126', 'False'),
('ff8080816345dd260163b7f60aa70055', '2', '2018-05-31 20:49:05.192', '', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-07-01 00:00:00', '2018-05-31 20:49:05.177', '12:00 PM', '34', '2018-05-31 20:49:05.192', 'Por nómina', '130', 'ff8080816345dd260163b7f606b70052', ' Sin : Aderezo de la casa   Extras : Amaranto ($15) ', 'ff808081614f940e0161d3ae441a0128', 'False'),
('ff8080816345dd260163b7f60c0b0056', '2', '2018-05-31 20:49:05.548', '', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-08-01 00:00:00', '2018-05-31 20:49:05.538', '09:00 AM', '34', '2018-05-31 20:49:05.548', 'Por nómina', '30', 'ff8080816345dd260163b7f609780054', ' Sin : Piña   Extras : Almendras ($15) ', 'ff808081614f940e0161d3b5f2e80139', 'False'),
('ff8080816345dd260163b7f60f890059', '1', '2018-05-31 20:49:06.442', '', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-09-01 00:00:00', '2018-05-31 20:49:06.435', '12:00 PM', '34', '2018-05-31 20:49:06.442', 'Por nómina', '75', 'ff8080816345dd260163b7f60c9a0058', ' Sin : Brócoli   Extras : Almendras ($15) ', 'ff808081614f940e0161d3adcec90126', 'False'),
('ff8080816345dd260163b7f611e9005c', '2', '2018-05-31 20:49:07.05', '', 'True', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-11-01 00:00:00', '2018-05-31 20:49:07.043', '09:00 AM', '34', '2018-05-31 20:49:07.05', 'Por nómina', '140', 'ff8080816345dd260163b7f60f8f005b', ' Sin : Jamón de pavo Queso gouda   Extras : Atún ($20) ', 'ff808081614f940e0161d3af9d7d012c', 'False'),
('ff8080816345dd260163d5fda1a00084', '1', '2018-06-06 16:45:59.073', 'ff8080816345dd260163d6098c4a0087', 'False', 'ff8080816345dd260163ccc6d0d80069', 'Cancelado', '2018-06-10 00:00:00', '2018-06-06 16:45:59.064', '03:00 PM', '46', '2018-06-06 21:18:58.094', 'Por saldo', '30', 'ff8080816345dd260163d5fda0650083', ' ', 'ff8080816345dd260163cd00593a006f', 'True'),
('ff8080816345dd260163d6d3878c008d', '1', '2018-06-06 20:39:37.101', 'ff8080816345dd260163d78afc22008f', 'False', 'ff8080816345dd260163ccc6d0d80069', 'Preparado', '2018-06-11 00:00:00', '2018-06-06 20:39:37.088', '10:00 AM', '46', '2018-06-11 20:36:55.916', 'Por saldo', '30', 'ff8080816345dd260163d6d3862a008c', ' ', 'ff8080816345dd260163cd00593a006f', 'True'),
('ff8080816345dd260163e164ae91009b', '1', '2018-06-08 21:54:21.97', 'ff8080816345dd260163e168ecb8009c', 'False', 'ff8080816345dd260163ccc6d0d80069', 'Nuevo', '2018-06-12 00:00:00', '2018-06-08 21:54:21.958', '08:00 PM', '46', '2018-06-08 21:59:00.031', 'Por saldo', '30', 'ff8080816345dd260163e164ad58009a', ' ', 'ff8080816345dd260163cd00593a006f', 'True'),
('ff8080816345dd260163dab40a990095', '2', '2018-06-07 14:43:42.361', 'ff8080816345dd260163d78afc22008f', 'False', 'ff8080816345dd260163ccc6d0d80069', 'Preparado', '2018-06-11 00:00:00', '2018-06-07 14:43:42.355', '10:00 AM', '46', '2018-06-11 20:36:57.212', 'Por saldo', '80', 'ff8080816345dd260163dab4096b0093', ' ', 'ff8080816345dd260163cd0252510072', 'True');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platillos`
--

CREATE TABLE IF NOT EXISTS `platillos` (
  `id` varchar(32) DEFAULT NULL,
  `activo` varchar(6) DEFAULT NULL,
  `archivo_foto` varchar(26) DEFAULT NULL,
  `calorias` varchar(8) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `descripcion` varchar(119) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `nombre` varchar(37) DEFAULT NULL,
  `tipo_id` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `platillos`
--

INSERT INTO `platillos` (`id`, `activo`, `archivo_foto`, `calorias`, `date_created`, `descripcion`, `id_autor`, `last_updated`, `nombre`, `tipo_id`) VALUES
('ff808081614f940e01619150b36b00a0', 'True', 'Platillo_1518818636989.jpg', '693', '2018-02-13 22:37:20.62', 'Baguette integral de tradicional sabor. Con pollo a la plancha y vegetales frescos.', '8', '2018-02-27 23:26:15.9', 'Baguette de pollo', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e0161914bc65e009f', 'True', 'Platillo_1518818762116.jpg', '615', '2018-02-13 22:31:57.792', 'Chapata integral de pechuga de pavo, ligera y nutritiva.', '8', '2018-02-16 22:06:02.121', 'Chapata de pechuga de pavo', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e016196864b6a00b3', 'True', 'Platillo_1518819232539.jpg', '746', '2018-02-14 22:53:59.019', 'Pan integral de 9 semillas con berenjena, calabacita, champiñones o portobello. Una deliciosa opción vegetariana.', '8', '2018-02-16 22:13:52.542', 'Flat Veggie', 'ff808081614f940e01614f94422a0018'),
('ff808081614f940e01619a46b82500b7', 'True', 'Platillo_1518883899557.jpg', '90', '2018-02-15 16:23:01.414', 'Colación de frutas mixtas.', '8', '2018-02-17 16:11:39.559', 'Snack de frutas', 'ff808081614f940e016190b79beb0099'),
('ff808081614f940e01619a4f0bdf00ba', 'True', 'Platillo_1518883863703.jpg', '130', '2018-02-15 16:32:07.135', 'Sandwichitos integrales con jamón. La opción ideal para calmar tu hambre de manera saludable.', '8', '2018-02-28 18:18:28.655', 'Sandwichitos ingleses', 'ff808081614f940e016190b79beb0099'),
('ff808081614f940e0161954518e000a9', 'True', 'Platillo_1518818888166.jpg', '499', '2018-02-14 17:03:09.026', 'Tradicional ensalada de queso parmesano, crutones y aderezo césar con anchoas.', '8', '2018-02-16 22:08:08.169', 'Ensalada César', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e0161952bd86700a3', 'True', 'Platillo_1518883942409.jpg', '547', '2018-02-14 16:35:34.12', 'Tortilla de harina integral rellena de jamón, aderezo y vegetales frescos.', '8', '2018-02-17 16:12:22.413', 'Wrap de pollo', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619550561800aa', 'True', 'Platillo_1518818868203.jpg', '439', '2018-02-14 17:15:25.593', 'Ensalada de mix de lechugas, pepino y pollo, deliciosa y fresca para comer saludable.', '8', '2018-02-28 17:51:18.268', 'Deli de pollo', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e016195347af900a5', 'True', 'Platillo_1518883798749.jpg', '520', '2018-02-14 16:45:00.026', 'Sandwich ligero integral de jamón y queso.', '8', '2018-02-17 16:09:58.752', 'Sandwich de jamón', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e016191557a3000a1', 'True', 'Platillo_1518883923569.jpg', '494', '2018-02-13 22:42:33.648', 'Tortilla de harina integral rellena de jamón de pavo y vegetales.', '8', '2018-02-27 23:28:56.258', 'Wrap de jamón', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619147eb26009e', 'True', 'Platillo_1518892545597.jpg', '605', '2018-02-13 22:27:45.063', 'Emparedado nutritivo de jamón de pavo con vegetales.', '8', '2018-02-27 23:16:40.484', 'Chapata de jamón', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a6fa31200c4', 'True', 'Platillo_1518890024642.jpg', '115', '2018-02-15 17:07:42.995', 'Postre espumoso de mango endulzado con Splenda.', '8', '2018-02-17 17:53:44.646', 'Mousse de mango', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e0161953c115e00a7', 'True', 'Platillo_1518819128752.jpg', '478', '2018-02-14 16:53:17.279', 'Ensalada vegetariana con espinaca fresca, manzana y arándanos.  La mejor opción para incluir antioxidantes a tu cuerpo.', '8', '2018-02-16 22:12:08.756', 'Ensalada Macavi', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e01619a8e7e7500c9', 'True', 'Platillo_1518819156228.jpg', '127', '2018-02-15 17:41:25.238', 'Jugo de frutas tropicales... refrescante y saludable.', '8', '2018-02-28 15:53:17.064', 'Exotic', 'ff808081614f940e01614f9442250017'),
('ff808081614f940e0161967f4a2700b2', 'True', 'Platillo_1518819181532.jpg', '890', '2018-02-14 22:46:19.944', 'Pan integral de 9 semillas con una combinación de jamón selva negra y manzana.', '8', '2018-02-16 22:13:01.536', 'Flat Apple Ham', 'ff808081614f940e01614f94422a0018'),
('ff808081614f940e016195c92bf200ae', 'True', 'Platillo_1518819201904.jpg', '735', '2018-02-14 19:27:24.658', 'Pan multigrano de 9 semillas con pollo a la plancha, vegetales frescos y salsa chipotle.', '8', '2018-02-16 22:13:21.906', 'Flat Blaze', 'ff808081614f940e01614f94422a0018'),
('ff808081614f940e01619a58756100bb', 'True', 'Platillo_1518819253347.jpg', '46', '2018-02-15 16:42:23.97', 'Gelatina de frutos rojos con yogurt endulzada con Splenda.  Ideal para conservar la línea.', '8', '2018-02-16 22:14:13.35', 'Gelatina sin azúcar', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e01619a6b02bb00c1', 'True', 'Platillo_1518819474536.jpg', '239', '2018-02-15 17:02:39.804', 'Postre espumoso con taro y un toque de nuez.', '8', '2018-02-16 22:17:54.54', 'Mousse de taro', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e0161955dc74200ab', 'True', 'Platillo_1518818846992.jpg', '508', '2018-02-14 17:30:06.532', 'Ensalada con atún, mix de verduras y zanahoria.  Ideal para una comida ligera y saludable.', '8', '2018-02-17 17:51:52.323', 'Deli de atún', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e01618b38665c0033', 'True', 'Platillo_1518819278589.jpg', '840', '2018-02-12 18:13:04.748', 'Deliciosa hamburguesa integral de res con semillas, acompañada de hummus de garbanzo y vegetales frescos.', '8', '2018-02-28 19:00:44.774', 'Hamburguesa', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a5f698400be', 'True', 'Platillo_1518819680990.jpg', '315', '2018-02-15 16:49:59.685', 'Postre italiano espumoso, de yogurt y una capa de frutos rojos.', '8', '2018-02-16 22:21:20.993', 'Panacota', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e016195387f7500a6', 'True', 'Platillo_1518883824754.jpg', '573', '2018-02-14 16:49:23.318', 'Delicioso emparedado integral con pollo a la plancha.', '8', '2018-02-17 16:10:24.759', 'Sandwich de pollo', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a775f1600c6', 'True', 'Platillo_1518819580647.jpg', '458', '2018-02-15 17:16:09.879', 'Pastelito delicioso de zanahoria con cubierta de queso crema y chocolate blanco.', '8', '2018-02-28 18:50:56.564', 'Muffin de zanahoria', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e0161968f083100b4', 'True', 'Platillo_1518883880899.jpg', '50', '2018-02-14 23:03:31.634', 'Opción fresca y ligera para controlar el hambre.  Contiene antioxidantes.', '8', '2018-02-17 16:11:20.902', 'Snack de betabel', 'ff808081614f940e016190b79beb0099'),
('ff808081614f940e016190ddc8ce009c', 'True', 'Platillo_1518818666145.jpg', '1017', '2018-02-13 20:31:49.455', 'Exquisita chapata integral de atún con verduras.', '8', '2018-02-27 23:30:12.766', 'Chapata de atún', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a86d08100c8', 'True', 'Platillo_1518891847890.jpg', '500', '2018-02-15 17:33:01.954', 'Lo delicioso del pan pero sin gluten.. amigable para tu intestino.', '8', '2018-02-17 18:24:07.893', 'Muffin sin gluten', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e01619a4b8e4200b9', 'True', 'Platillo_1518891409626.jpg', '150', '2018-02-15 16:28:18.371', 'Snack de proteína fresco y delicioso para calmar el hambre.', '8', '2018-02-17 18:16:49.629', 'Rollitos de jamón.', 'ff808081614f940e016190b79beb0099'),
('ff808081614f940e01619a7d8cb700c7', 'True', 'Platillo_1520634175509.jpg', '254', '2018-02-15 17:22:54.776', 'Rico pastelito elaborado con elote fresco.', '8', '2018-03-09 22:22:55.531', 'Muffin de elote', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e01619a48cd4a00b8', 'True', 'Platillo_1520540249255.jpg', '100', '2018-02-15 16:25:17.899', 'Rico snack que retrasa tu hambre de manera saludable.', '8', '2018-03-08 20:17:29.278', 'Brocheta de uva y queso', 'ff808081614f940e016190b79beb0099'),
('ff808081614f940e01619a744a6700c5', 'True', 'Platillo_1520540292476.jpg', '377', '2018-02-15 17:12:47.976', 'Pastelito de chocolate con Snickers para disfrutar a cualquier hora.', '8', '2018-03-08 20:18:12.48', 'Muffin de chocolate', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e0161a4a4bac000e5', 'True', 'Platillo_1518891332891.jpg', '300', '2018-02-17 16:41:54.627', 'Plato perfectamente combinado en nutrientes, contiene pollo, vegetales y arroz a la jardinera.', '8', '2018-02-17 18:15:32.895', 'Pollo a la plancha, vegetales y arroz', 'ff808081614f940e016190cf6ecd009b'),
('ff808081614f940e01619b208b8000d1', 'True', 'Platillo_1518800094890.jpg', '384', '2018-02-15 20:20:56.833', 'Clásico arroz blanco con el toque especial del sabor saludable.', '8', '2018-02-16 16:54:54.906', 'Arroz blanco', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e0161952ebb1100a4', 'True', 'Platillo_1518818023658.jpg', '515', '2018-02-14 16:38:43.219', 'Emparedado de jamón, queso y un exquisito aderezo de salmón.', '8', '2018-02-16 21:53:43.675', 'Baguel de salmón y jamón', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a94723000cb', 'True', 'Platillo_1519076057925.jpg', '65', '2018-02-15 17:47:55.313', 'Jugo hidratante con un toque de hierbabuena.  Es ideal para personas con diabetes.', '8', '2018-02-28 15:52:54.997', 'Mojito', 'ff808081614f940e01614f9442250017'),
('ff808081614f940e01619b6389f900d6', 'True', 'Platillo_1518818821371.jpg', '192', '2018-02-15 21:34:07.354', 'Deliciosa crema de zanahoria.', '8', '2018-02-16 22:07:01.373', 'Crema de zanahoria', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e0161a4ad5b6500e7', 'True', 'Platillo_1519840130175.jpg', '247', '2018-02-17 16:51:20.038', 'Comida completa con pasta, verduras y pollo. Delicioso, para quedar saludablemente satisfecho.', '8', '2018-02-28 17:48:50.194', 'Pollo, vegetales y pasta', 'ff808081614f940e016190cf6ecd009b'),
('ff808081614f940e01619b5d8d4c00d3', 'True', 'Platillo_1518818614471.jpg', '397', '2018-02-15 21:27:34.989', 'Arroz integral sazonado con salsa especial acompañado de verduras.', '8', '2018-02-28 18:24:05.607', 'Arroz integral', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e01619542179300a8', 'True', 'Platillo_1518819108557.jpg', '406', '2018-02-14 16:59:52.085', 'Mezcla de lechugas con tzatziki, jitomate, cebolla morada y aderezo griego ...descubre su sabor.', '8', '2018-02-16 22:11:48.561', 'Ensalada Griega', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e01619b13091b00ce', 'True', 'Platillo_1518819726006.jpg', '390', '2018-02-15 20:06:11.484', 'Pasta con delicioso aroma. El sabor italiano a tu mesa.', '8', '2018-02-28 18:34:54.539', 'Pasta italiana', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e0161a0a28bf200e2', 'True', 'Platillo_1518891941749.jpg', '697', '2018-02-16 22:01:02.707', 'Ensalada con codito y atún.', '8', '2018-02-17 18:25:41.751', 'Ensalada de pasta con atún', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e01619b160c0a00cf', 'True', 'Platillo_1518819755856.jpg', '1020', '2018-02-15 20:09:28.843', 'Pasta con crema poblana, prueba su encantador sabor.', '8', '2018-02-16 22:22:35.86', 'Pasta poblana', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e01619b6db25300d7', 'True', 'Platillo_1518819959418.jpg', '234', '2018-02-15 21:45:13.045', 'Taquitos vegetarianos de repollo y fideo chino, acompañados de aderezo de cacahuate.', '8', '2018-02-16 22:25:59.421', 'Raw', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e01619b1ac19f00d0', 'True', 'Platillo_1518883750677.jpg', '203', '2018-02-15 20:14:37.472', 'Pasta integral con mix de verduras, ideal complemento para comer.', '8', '2018-02-17 16:09:10.694', 'Pasta integral', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e0161a0a0debc00e1', 'True', 'Platillo_1518891960580.jpg', '696', '2018-02-16 21:59:12.83', 'Ensalada de lechuga pasta y pollo, tu comida ligera y saludable.', '8', '2018-02-17 18:26:00.583', 'Ensalada de pasta con pollo', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e0161a4e433c600e9', 'True', 'Platillo_1520540268004.jpg', '388', '2018-02-17 17:51:14.375', 'Delicioso Croissant de jamón y queso especial acompañado de hummus de garbanzo.', '8', '2018-03-08 20:17:48.008', 'Cuernito', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e0161af8a49060106', 'True', 'Platillo_1519068530945.jpg', '225', '2018-02-19 19:28:50.954', 'Arroz con jitomate que complementa tus comidas.', '8', '2018-02-19 19:28:50.954', 'Arroz rojo', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e0161a09a8ec900e0', 'True', 'Platillo_1518817939140.jpg', '359', '2018-02-16 21:52:19.146', 'Deliciosa hamburguesa vegetariana de portobello y hummus.', '8', '2018-02-27 23:28:07.52', 'Hamburguesa de portobello', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a91e9d200ca', 'True', 'Platillo_1518818799916.jpg', '154', '2018-02-15 17:45:09.332', 'Jugo refrescante, una explosión de vitamina C.', '8', '2018-02-28 15:52:35.006', 'Citrus', 'ff808081614f940e01614f9442250017'),
('ff808081614f940e0162112ad9d001db', 'True', 'Platillo_1520706726219.jpg', '366', '2018-03-10 18:27:23.729', 'Combinación de frutas y semillas con base de leche.  Nutritivamente delicioso.', '8', '2018-03-23 21:14:10.427', 'Apple bomb', 'ff808081614f940e016201c2455e01a9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE IF NOT EXISTS `promocion` (
  `id_promocion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_inicio` varchar(25) NOT NULL,
  `fecha_fin` varchar(25) NOT NULL,
  `sucursal` varchar(100) NOT NULL,
  `img_promo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_promocion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`id_promocion`, `fecha_inicio`, `fecha_fin`, `sucursal`, `img_promo`) VALUES
(3, '2018-08-01', '2018-09-30', 'Samba cuernavaca', 'focus-2836211_1280.png'),
(4, '2018-08-02', '2018-08-31', 'Flor de Canela', 'Juicy Fruity.png'),
(5, '2018-08-03', '2018-08-21', 'Cocina Bambu', 'Juicy Fruity.png'),
(6, '2018-08-09', '2018-08-31', 'todas', 'IMG_20150612_105305.jpg'),
(7, '2018-08-14', '2018-08-30', 'Samba cuernavaca', '1616682_1043254449032172_1723558304_n.jpg'),
(8, '2018-08-15', '2018-08-30', 'Flor de Canela', 'fondocupon.jpg'),
(9, '2018-08-09', '2018-08-30', 'Samba cuernavaca', 'fondocupon.jpg'),
(10, '2018-08-08', '2018-08-20', 'Samba cuernavaca', 'fondocupon.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_especial`
--

CREATE TABLE IF NOT EXISTS `promocion_especial` (
  `id_promo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_promocion` int(10) unsigned NOT NULL,
  `tematica` varchar(100) NOT NULL,
  `categoria_p1` varchar(20) NOT NULL,
  `tipo_p1` varchar(50) NOT NULL,
  `producto_p1` varchar(100) NOT NULL,
  `categoria_p2` varchar(20) NOT NULL,
  `tipo_p2` varchar(50) NOT NULL,
  `producto_p2` varchar(100) NOT NULL,
  `descuento` int(11) NOT NULL,
  PRIMARY KEY (`id_promo`),
  KEY `id_promocion` (`id_promocion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `promocion_especial`
--

INSERT INTO `promocion_especial` (`id_promo`, `id_promocion`, `tematica`, `categoria_p1`, `tipo_p1`, `producto_p1`, `categoria_p2`, `tipo_p2`, `producto_p2`, `descuento`) VALUES
(1, 10, 'DÃ­a del niÃ±o', 'Comidas', 'Postres', 'Mousse de mango', '0', '0', '0', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_preferencias`
--

CREATE TABLE IF NOT EXISTS `promocion_preferencias` (
  `id_promo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_promocion` int(10) unsigned NOT NULL,
  `grupo` varchar(50) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `descuento` int(11) NOT NULL,
  PRIMARY KEY (`id_promo`),
  KEY `id_promocion` (`id_promocion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `promocion_preferencias`
--

INSERT INTO `promocion_preferencias` (`id_promo`, `id_promocion`, `grupo`, `producto`, `descuento`) VALUES
(1, 9, 'Diabetes', 'Ensalada Macavi', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_ventas`
--

CREATE TABLE IF NOT EXISTS `promocion_ventas` (
  `id_promo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_promocion` int(10) unsigned NOT NULL,
  `categoria_p1` varchar(20) NOT NULL,
  `tipo_p1` varchar(50) NOT NULL,
  `producto_p1` varchar(100) NOT NULL,
  `categoria_p2` varchar(20) NOT NULL,
  `tipo_p2` varchar(50) NOT NULL,
  `producto_p2` varchar(100) NOT NULL,
  `descuento` int(11) NOT NULL,
  PRIMARY KEY (`id_promo`),
  KEY `id_promocion` (`id_promocion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `promocion_ventas`
--

INSERT INTO `promocion_ventas` (`id_promo`, `id_promocion`, `categoria_p1`, `tipo_p1`, `producto_p1`, `categoria_p2`, `tipo_p2`, `producto_p2`, `descuento`) VALUES
(1, 3, 'Comidas', 'Postres', 'Mousse de mango', '0', '0', '0', 10),
(2, 4, 'Bebidas', 'Jugos', 'Citrus', '0', '0', '0', 30),
(3, 5, 'Comidas', 'Flats', 'Flat Veggie', '0', '0', '0', 0),
(4, 6, 'Bebidas', 'Jugos', 'Mojito', 'Bebidas', 'Licuados', 'Apple bomb', 0),
(5, 7, 'Bebidas', 'Jugos', 'Citrus', '0', '0', '0', 30),
(6, 8, 'Bebidas', 'Jugos', 'Mojito', '0', '0', '0', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rolelg`
--

CREATE TABLE IF NOT EXISTS `rolelg` (
  `id` varchar(2) DEFAULT NULL,
  `version` varchar(7) DEFAULT NULL,
  `authority` varchar(16) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `nombre` varchar(13) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rolelg`
--

INSERT INTO `rolelg` (`id`, `version`, `authority`, `date_created`, `id_autor`, `last_updated`, `nombre`) VALUES
('1', '0', 'ROLE_PROGRAMADOR', '2018-02-01 04:16:11.981', '', '2018-02-01 04:16:11.981', 'Programador'),
('2', '0', 'ROLE_PROPIETARIO', '2018-02-01 04:16:11.998', '', '2018-02-01 04:16:11.998', 'Propietario'),
('3', '0', 'ROLE_ADMIN', '2018-02-01 04:16:12.003', '', '2018-02-01 04:16:12.003', 'Administrador'),
('4', '0', 'ROLE_EMPRESA', '2018-02-01 04:16:12.014', '', '2018-02-01 04:16:12.014', 'Empresa'),
('5', '0', 'ROLE_COCINERO', '2018-02-01 04:16:12.021', '', '2018-02-01 04:16:12.021', 'Cocinero'),
('6', '0', 'ROLE_REPARTIDOR', '2018-02-01 04:16:12.027', '', '2018-02-01 04:16:12.027', 'Repartidor'),
('7', '0', 'ROLE_CLIENTE', '2018-02-01 04:16:12.034', '', '2018-02-01 04:16:12.034', 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE IF NOT EXISTS `tipos` (
  `id` varchar(32) DEFAULT NULL,
  `archivo_foto` varchar(22) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `descripcion` varchar(135) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `nombre` varchar(23) DEFAULT NULL,
  `super_tipo` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `archivo_foto`, `date_created`, `descripcion`, `id_autor`, `last_updated`, `nombre`, `super_tipo`) VALUES
('ff808081614f940e01614f9442300019', 'Tipo_1519077315872.jpg', '2018-02-01 04:16:11.825', 'Bocadillos ideales para el lunch, elaborados con pan integral e ingredientes con alto contenido de proteína.', '', '2018-02-19 21:55:15.873', 'Emparedados', 'Comidas'),
('ff808081614f940e01614f944242001b', 'Tipo_1519077339420.jpg', '2018-02-01 04:16:11.843', 'Deliciosa variedad de ensaladas con ingredientes como lechuga, espinacas, queso de cabra, pollo, nueces y aderezos bajos en grasa.', '', '2018-02-19 21:55:39.421', 'Ensaladas', 'Comidas'),
('ff808081614f940e01614f9442250017', 'Tipo_1519077388141.jpg', '2018-02-01 04:16:11.814', 'Bebidas de verduras y frutas frescas.  Deliciosos y nutritivos.', '', '2018-02-19 21:56:28.142', 'Jugos', 'Bebidas'),
('ff808081614f940e01614f944249001c', 'Tipo_1519077522439.jpg', '2018-02-01 04:16:11.85', 'Ricos postres de suave sabor con o sin azúcar.', '', '2018-02-19 21:58:42.44', 'Postres', 'Comidas'),
('ff808081614f940e016190b79beb0099', 'Tipo_1519078051312.jpg', '2018-02-13 19:50:07.598', 'Porción de vegetales, frutas o proteína que retrasan el hambre de manera saludable.', '8', '2018-02-19 22:07:31.313', 'Snack', 'Comidas'),
('ff808081614f940e016190cf6ecd009b', 'Tipo_1519078075577.jpg', '2018-02-13 20:16:08.909', 'Pollo o res acompañada de una rica guarnición de verduras y arroz o pasta.', '8', '2018-02-19 22:07:55.578', 'Comida completa', 'Comidas'),
('ff808081614f940e016190c66c82009a', 'Tipo_1519078106005.jpg', '2018-02-13 20:06:18.499', 'El perfecto complemento para tus comidas.  Con especias aromáticas de delicioso sabor.', '8', '2018-02-19 22:08:26.006', 'Cremas, pastas y sopas.', 'Comidas'),
('ff808081614f940e01614f94422a0018', 'Tipo_1519078125744.jpg', '2018-02-01 04:16:11.819', 'Pan multigrano elaborado con 9 granos, contiene exquisitos ingredientes como pollo, jamón selva negra, hummus de garbanzo, entre otros.', '', '2018-02-19 22:08:45.745', 'Flats', 'Comidas'),
('ff808081614f940e016201c2455e01a9', 'Tipo_1521043215251.jpg', '2018-03-07 18:38:51.742', 'Ricas bebidas con base de leche, con fruta y complementos nutritivos.', '8', '2018-03-14 16:00:15.261', 'Licuados', 'Bebidas'),
('ff808081614f940e0161ueiw27ir5p45', 'Tipo_151043215251', '2018-02-01 04:16:11.825', 'Ricas bebidas a base de frutas, leche y cereales', '8', '2018-03-14 16:00:15.261', 'Smoothies', 'Bebidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE IF NOT EXISTS `transacciones` (
  `id` varchar(32) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `estatus` varchar(8) DEFAULT NULL,
  `fecha_operacion` varchar(23) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `id_orden` varchar(21) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `monto` varchar(5) DEFAULT NULL,
  `referencia` varchar(24) DEFAULT NULL,
  `tipo_medio_pago` varchar(16) DEFAULT NULL,
  `tipo_transaccion` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id`, `date_created`, `estatus`, `fecha_operacion`, `id_autor`, `id_orden`, `last_updated`, `monto`, `referencia`, `tipo_medio_pago`, `tipo_transaccion`) VALUES
('ff808081614f940e0161e3983e7d0159', '2018-03-01 22:04:21.008', 'Exitoso', '2018-03-01 22:04:20.967', '30', '', '2018-03-01 22:04:21.008', '0', '', 'Por nómina', 'Egreso'),
('ff808081614f940e0161e3a8703c015d', '2018-03-01 22:22:02.301', 'Exitoso', '2018-03-01 22:22:01.585', '29', 'ord_2iAA1MJj4x3H8MWyb', '2018-03-01 22:22:34.002', '1200', '5a987d0effecf924f181637b', 'Sucursal Oxxo', 'Ingreso'),
('ff808081614f940e0161e3adab62015e', '2018-03-01 22:27:45.122', 'Exitoso', '2018-03-01 22:27:44.758', '29', 'ord_2iAA5iUiALFS1YkLL', '2018-03-01 22:28:45.066', '1200', '5a987e65edbb6e6ff20f06ea', 'SPEI', 'Ingreso'),
('ff808081614f940e0161e3bc6d2f0160', '2018-03-01 22:43:52.239', 'Exitoso', '2018-03-01 22:43:52.238', '33', '', '2018-03-01 22:43:52.239', '0', '', 'Por nómina', 'Egreso'),
('ff808081614f940e0161e3bc6e450162', '2018-03-01 22:43:52.517', 'Exitoso', '2018-03-01 22:43:52.516', '33', '', '2018-03-01 22:43:52.517', '0', '', 'Por nómina', 'Egreso'),
('ff808081614f940e0161e89b1cd20173', '2018-03-02 21:25:35.059', 'Exitoso', '2018-03-02 21:25:34.626', '30', 'ord_2iAUE2zXE4cTx7NJn', '2018-03-02 21:26:08.574', '800', '5a99c156edbb6e6fe70f64e0', 'Sucursal Oxxo', 'Ingreso'),
('ff808081614f940e0161e89c41f20174', '2018-03-02 21:26:50.098', 'Exitoso', '2018-03-02 21:26:49.74', '30', 'ord_2iAUEzCuyjctMJfEE', '2018-03-02 21:27:39.383', '800', '5a99c1a1b795b04e33e85ee4', 'SPEI', 'Ingreso'),
('ff808081614f940e0161e8a301b20175', '2018-03-02 21:34:12.403', 'Exitoso', '2018-03-02 21:34:12.01', '30', 'ord_2iAULcg7R8VGhzHBY', '2018-03-02 21:34:47.102', '800', '5a99c35bedbb6e23de0ec6f0', 'Sucursal Oxxo', 'Ingreso'),
('ff808081614f940e0161e8a6df8d0176', '2018-03-02 21:38:25.805', 'Exitoso', '2018-03-02 21:38:25.442', '30', 'ord_2iAUPrCDfmU3Yaqe2', '2018-03-02 21:39:16.586', '800', '5a99c459edbb6e23de0ec740', 'SPEI', 'Ingreso'),
('ff808081614f940e0161e8ad6f530177', '2018-03-02 21:45:35.829', 'Exitoso', '2018-03-02 21:45:35.513', '30', 'ord_2iAUVKeXZVfZzTNuX', '2018-03-02 21:46:23.197', '800', '5a99c607edbb6e6fe70f67ff', 'SPEI', 'Ingreso'),
('ff808081614f940e0161e8af105b0178', '2018-03-02 21:47:22.588', 'Exitoso', '2018-03-02 21:47:22.219', '30', 'ord_2iAUWgeCGpvEYjijh', '2018-03-02 21:48:37.853', '500', '5a99c672edbb6e7b010dfed5', 'SPEI', 'Ingreso'),
('ff808081614f940e0161e8c1ddb80179', '2018-03-02 22:07:54.809', 'Exitoso', '2018-03-02 22:07:54.808', '30', '', '2018-03-02 22:07:54.809', '100', '', 'Por nómina', 'Egreso'),
('ff808081614f940e0161f7c52f6a0190', '2018-03-05 20:05:50.571', 'Exitoso', '2018-03-05 20:05:50.57', '30', '', '2018-03-05 20:05:50.571', '244', '', 'Por nómina', 'Egreso'),
('ff808081614f940e0161fc53fca9019b', '2018-03-06 17:20:18.089', 'Exitoso', '2018-03-06 17:20:18.088', '30', '', '2018-03-06 17:20:18.089', '325', '', 'Por nómina', 'Egreso'),
('ff808081614f940e0162015146bd01a3', '2018-03-07 16:35:26.525', 'Exitoso', '2018-03-07 16:35:26.524', '34', '', '2018-03-07 16:35:26.525', '1515', '', 'Por nómina', 'Egreso'),
('ff808081614f940e01620709065601b5', '2018-03-08 19:14:14.742', 'Exitoso', '2018-03-08 19:14:14.741', '30', '', '2018-03-08 19:14:14.742', '165', '', 'Por nómina', 'Egreso'),
('ff808081614f940e01620bed776701c1', '2018-03-09 18:02:14.759', 'Exitoso', '2018-03-09 18:02:14.758', '33', '', '2018-03-09 18:02:14.759', '125', '', 'Por nómina', 'Egreso'),
('ff808081614f940e01620bed7d7c01c3', '2018-03-09 18:02:16.316', 'Exitoso', '2018-03-09 18:02:16.315', '33', '', '2018-03-09 18:02:16.316', '35', '', 'Por nómina', 'Egreso'),
('ff808081614f940e01620c35d97401ca', '2018-03-09 19:21:18.453', 'Exitoso', '2018-03-09 19:21:18.452', '30', '', '2018-03-09 19:21:18.453', '405', '', 'Por nómina', 'Egreso'),
('ff808081614f940e01620cd6780301d1', '2018-03-09 22:16:44.803', 'Exitoso', '2018-03-09 22:16:44.802', '30', '', '2018-03-09 22:16:44.803', '295', '', 'Por nómina', 'Egreso'),
('ff808081614f940e0162113f9bb601e1', '2018-03-10 18:50:04.087', 'Exitoso', '2018-03-10 18:50:04.085', '30', '', '2018-03-10 18:50:04.087', '67', '', 'Por nómina', 'Egreso'),
('ff808081614f940e01621153c5ca01e6', '2018-03-10 19:12:05.579', 'Exitoso', '2018-03-10 19:12:05.578', '29', '', '2018-03-10 19:12:05.579', '262', '', 'Por nómina', 'Egreso'),
('ff808081614f940e01622088073301fa', '2018-03-13 18:03:28.436', 'Exitoso', '2018-03-13 18:03:28.433', '33', '', '2018-03-13 18:03:28.436', '488', '', 'Por nómina', 'Egreso'),
('ff808081614f940e0162209eae6201fe', '2018-03-13 18:28:13.027', 'Exitoso', '2018-03-13 18:28:13.025', '34', '', '2018-03-13 18:28:13.027', '390', '', 'Por nómina', 'Egreso'),
('ff808081614f940e016220f76d340205', '2018-03-13 20:05:09.045', 'Exitoso', '2018-03-13 20:05:09.044', '30', '', '2018-03-13 20:05:09.045', '60', '', 'Por nómina', 'Egreso'),
('ff808081614f940e01622101ba600208', '2018-03-13 20:16:24.161', 'Exitoso', '2018-03-13 20:16:24.159', '29', '', '2018-03-13 20:16:24.161', '780', '', 'Por nómina', 'Egreso'),
('ff808081614f940e0162259e93cd0212', '2018-03-14 17:46:12.301', 'Exitoso', '2018-03-14 17:46:12.3', '30', '', '2018-03-14 17:46:12.301', '67', '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01622bb1c4d8002b', '2018-03-15 22:04:53.359', 'Exitoso', '2018-03-15 22:04:53.321', '30', '', '2018-03-15 22:04:53.359', '90', '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01622bb4691e002e', '2018-03-15 22:07:46.464', 'Exitoso', '2018-03-15 22:07:46.461', '30', '', '2018-03-15 22:07:46.464', '67', '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01622bb58a0b0032', '2018-03-15 22:09:00.43', 'Exitoso', '2018-03-15 22:09:00.426', '30', '', '2018-03-15 22:09:00.43', '0', '', 'Por nómina', 'Reembolso'),
('ff80808162283e0a01622bb5ddfd0033', '2018-03-15 22:09:21.917', 'Exitoso', '2018-03-15 22:09:21.916', '30', '', '2018-03-15 22:09:21.917', '67', '', 'Por nómina', 'Reembolso'),
('ff80808162283e0a01622bc16f690034', '2018-03-15 22:22:00.042', 'Exitoso', '2018-03-15 22:22:00.04', '30', '', '2018-03-15 22:22:00.042', '70', '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01623085fb4d003a', '2018-03-16 20:35:09.774', 'Exitoso', '2018-03-16 20:35:09.771', '30', '', '2018-03-16 20:35:09.774', '55', '', 'Por nómina', 'Egreso'),
('ff80808162283e0a016230915445003d', '2018-03-16 20:47:33.445', 'Exitoso', '2018-03-16 20:47:33.444', '30', '', '2018-03-16 20:47:33.445', '55', '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01623657973d004a', '2018-03-17 23:42:12.797', 'Exitoso', '2018-03-17 23:42:12.796', '30', '', '2018-03-17 23:42:12.797', '60', '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01623659be49004d', '2018-03-17 23:44:33.866', 'Exitoso', '2018-03-17 23:44:31.699', '16', 'ord_2iFQV6kdY74kDhs1e', '2018-03-17 23:44:33.866', '1200', '', 'Tarjeta bancaria', 'Ingreso'),
('ff80808162283e0a0162365a6707004e', '2018-03-17 23:45:17.064', 'Exitoso', '2018-03-17 23:45:17.062', '16', '', '2018-03-17 23:45:17.064', '55', '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01623663fe0e0051', '2018-03-17 23:55:45.551', 'Exitoso', '2018-03-17 23:55:45.55', '16', '', '2018-03-17 23:55:45.551', '0', '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01623666255c0054', '2018-03-17 23:58:06.685', 'Exitoso', '2018-03-17 23:58:06.683', '16', '', '2018-03-17 23:58:06.685', '65', '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01623666265d0056', '2018-03-17 23:58:06.942', 'Exitoso', '2018-03-17 23:58:06.94', '16', '', '2018-03-17 23:58:06.942', '0', '', 'Por saldo', 'Egreso'),
('ff80808162283e0a0162366627140059', '2018-03-17 23:58:07.124', 'Exitoso', '2018-03-17 23:58:07.123', '16', '', '2018-03-17 23:58:07.124', '120', '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01624a131d140069', '2018-03-21 19:39:49.4', 'Exitoso', '2018-03-21 19:39:49.395', '33', '', '2018-03-21 19:39:49.4', '50', '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01624a1823bb006d', '2018-03-21 19:45:18.78', 'Exitoso', '2018-03-21 19:45:18.777', '33', '', '2018-03-21 19:45:18.78', '67', '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01625e1bc4040078', '2018-03-25 17:01:40.743', 'Exitoso', '2018-03-25 17:01:40.739', '16', '', '2018-03-25 17:01:40.743', '67', '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01625e3d36c8007c', '2018-03-25 17:38:12.809', 'Exitoso', '2018-03-25 17:38:12.524', '16', 'ord_2iHwLtDVxtRASgUFW', '2018-03-25 17:38:55.811', '1200', '5ab7de8fb795b0765984dfe2', 'SPEI', 'Ingreso'),
('ff80808162283e0a01625e3ce8a6007b', '2018-03-25 17:37:52.807', 'Exitoso', '2018-03-25 17:37:52.153', '16', 'ord_2iHwLdT7YuABZ3PCw', '2018-03-25 17:38:28.045', '1200', '5ab7de7bb795b0764a84dfa1', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625e4611ee007e', '2018-03-25 17:47:53.198', 'Exitoso', '2018-03-25 17:47:52.847', '16', 'ord_2iHwUHMdGzRj1DmMC', '2018-03-25 17:48:24.399', '1200', '5ab7e0d4ffecf90fa1ec3068', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625e45e387007d', '2018-03-25 17:47:41.319', 'Exitoso', '2018-03-25 17:47:40.934', '16', 'ord_2iHwU8Vo2bfxGTRzJ', '2018-03-25 17:48:24.378', '1200', '5ab7e0c8ffecf90fbfec3140', 'SPEI', 'Ingreso'),
('ff80808162283e0a01625e475e6f007f', '2018-03-25 17:49:18.32', 'Exitoso', '2018-03-25 17:49:17.869', '16', 'ord_2iHwVN7GXwGt5YjCX', '2018-03-25 17:49:54.472', '800', '5ab7e129ffecf90fc5ec3141', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625f59d4250080', '2018-03-25 22:49:05.321', 'Exitoso', '2018-03-25 22:49:04.88', '16', 'ord_2iJ1SKxC131tcm1Ky', '2018-03-25 22:49:42.422', '1200', '5ab8276dedbb6e5d97604a41', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625f5a680d0081', '2018-03-25 22:49:43.181', 'Consulta', '2018-03-25 22:49:42.899', '16', 'ord_2iJ1Sp4NHcGaQoE4D', '2018-03-25 22:50:00.004', '1200', '5ab82793ffecf90fbfec4813', 'SPEI', 'Ingreso'),
('ff80808162283e0a01625f62f9120082', '2018-03-25 22:59:04.595', 'Exitoso', '2018-03-25 22:59:04.09', '16', 'ord_2iJ1ZxE1PT4WY6Lzy', '2018-03-25 22:59:39.686', '1200', '5ab829c4ffecf90fcbec376b', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625f6318300083', '2018-03-25 22:59:12.561', 'Exitoso', '2018-03-25 22:59:12.245', '16', 'ord_2iJ1a48ZZ3ZhETptG', '2018-03-25 22:59:56.144', '1200', '5ab829ccffecf90fbfec491e', 'SPEI', 'Ingreso'),
('ff80808162283e0a01625f6592770084', '2018-03-25 23:01:54.935', 'Exitoso', '2018-03-25 23:01:54.494', '16', 'ord_2iJ1c7XC74o6zyG8A', '2018-03-25 23:02:36.187', '1200', '5ab82a6eb795b07644850f30', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625f65b5c30085', '2018-03-25 23:02:03.972', 'Exitoso', '2018-03-25 23:02:03.667', '16', 'ord_2iJ1cENfb8pcdWXGg', '2018-03-25 23:02:51.886', '1200', '5ab82a77ffecf90faaec28b2', 'SPEI', 'Ingreso'),
('ff80808162283e0a01625f6831c80086', '2018-03-25 23:04:46.793', 'Consulta', '2018-03-25 23:04:46.304', '16', 'ord_2iJ1eJfAxdiL7rTps', '2018-03-25 23:05:00.003', '1200', '5ab82b1aedbb6e5d996056ad', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625f6861d70087', '2018-03-25 23:04:59.095', 'Consulta', '2018-03-25 23:04:58.811', '16', 'ord_2iJ1eUJsEDtoXxvwg', '2018-03-25 23:05:00.096', '1200', '5ab82b27ffecf90fcbec37d4', 'SPEI', 'Ingreso'),
('ff80808162283e0a01625f6e72ef0088', '2018-03-25 23:11:36.688', 'Exitoso', '2018-03-25 23:11:36.212', '16', 'ord_2iJ1jXQ8wNNLsdM7y', '2018-03-25 23:12:11.204', '500', '5ab82cb4ffecf90fceec35c9', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625f6e94c50089', '2018-03-25 23:11:45.349', 'Exitoso', '2018-03-25 23:11:45.064', '16', 'ord_2iJ1je3WdASAWEqUa', '2018-03-25 23:12:30.424', '500', '5ab82cbdffecf90fa7ec4f3c', 'SPEI', 'Ingreso'),
('ff80808162283e0a01625ff6fe4e008b', '2018-03-26 01:40:45.265', 'Exitoso', '2018-03-26 01:40:45.26', '16', '', '2018-03-26 01:40:45.265', '50', '', 'Por saldo', 'Egreso'),
('ff808081626a161b0162715981ed002c', '2018-03-29 10:41:54.172', 'Exitoso', '2018-03-29 10:41:54.144', '16', '', '2018-03-29 10:41:54.172', '50', '', 'Por saldo', 'Egreso'),
('ff80808162adb3bc0162bab8d6b4002a', '2018-04-12 16:38:18.562', 'Exitoso', '2018-04-12 16:38:18.53', '33', '', '2018-04-12 16:38:18.562', '50', '', 'Por nómina', 'Egreso'),
('ff80808162adb3bc0162bb0eb0ac0030', '2018-04-12 18:12:04.91', 'Exitoso', '2018-04-12 18:12:04.907', '30', '', '2018-04-12 18:12:04.91', '75', '', 'Por nómina', 'Egreso'),
('ff80808162adb3bc0162cf60ef830037', '2018-04-16 16:54:19.272', 'Exitoso', '2018-04-16 16:54:19.266', '30', '', '2018-04-16 16:54:19.272', '180', '', 'Por nómina', 'Egreso'),
('ff80808162adb3bc0162d960dc2e0040', '2018-04-18 15:30:26.481', 'Exitoso', '2018-04-18 15:30:26.477', '30', '', '2018-04-18 15:30:26.481', '80', '', 'Por nómina', 'Egreso'),
('ff80808162adb3bc0162e4cfb3440044', '2018-04-20 20:47:19.879', 'Exitoso', '2018-04-20 20:47:19.875', '30', '', '2018-04-20 20:47:19.879', '55', '', 'Por nómina', 'Egreso'),
('ff80808162adb3bc0162e8db66920048', '2018-04-21 15:38:35.541', 'Exitoso', '2018-04-21 15:38:35.536', '30', '', '2018-04-21 15:38:35.541', '55', '', 'Por nómina', 'Egreso'),
('ff80808162adb3bc016303378db50054', '2018-04-26 18:29:22.487', 'Exitoso', '2018-04-26 18:29:22.485', '30', '', '2018-04-26 18:29:22.487', '67', '', 'Por nómina', 'Egreso'),
('ff80808162adb3bc016317b773a7005a', '2018-04-30 18:01:28.745', 'Exitoso', '2018-04-30 18:01:28.742', '30', '', '2018-04-30 18:01:28.745', '55', '', 'Por nómina', 'Egreso'),
('ff80808162adb3bc0163180aa0cc005e', '2018-04-30 19:32:19.79', 'Exitoso', '2018-04-30 19:32:19.787', '30', '', '2018-04-30 19:32:19.79', '67', '', 'Por saldo', 'Egreso'),
('ff80808162adb3bc01633bddbb5f0064', '2018-05-07 18:29:37.249', 'Exitoso', '2018-05-07 18:29:37.246', '30', '', '2018-05-07 18:29:37.249', '0', '', 'Por nómina', 'Egreso'),
('ff8080816345dd2601635f72db100026', '2018-05-14 16:19:12.807', 'Exitoso', '2018-05-14 16:19:12.761', '30', '', '2018-05-14 16:19:12.807', '70', '', 'Por nómina', 'Egreso'),
('ff8080816345dd2601636077511b002a', '2018-05-14 21:03:42.366', 'Exitoso', '2018-05-14 21:03:42.362', '30', '', '2018-05-14 21:03:42.366', '164', '', 'Por nómina', 'Egreso'),
('ff8080816345dd260163607b8b6e002d', '2018-05-14 21:08:19.44', 'Exitoso', '2018-05-14 21:08:19.438', '30', '', '2018-05-14 21:08:19.44', '67', '', 'Por nómina', 'Egreso'),
('ff8080816345dd26016384f1189d0037', '2018-05-21 23:03:03.069', 'Exitoso', '2018-05-21 23:03:03.068', '30', '', '2018-05-21 23:03:03.069', '250', '', 'Por saldo', 'Egreso'),
('ff8080816345dd260163adc65980003f', '2018-05-29 21:20:47.489', 'Exitoso', '2018-05-29 21:20:47.487', '30', '', '2018-05-29 21:20:47.489', '55', '', 'Por nómina', 'Egreso'),
('ff8080816345dd260163b70a89bd004b', '2018-05-31 16:31:51.23', 'Exitoso', '2018-05-31 16:31:51.228', '30', '', '2018-05-31 16:31:51.23', '60', '', 'Por nómina', 'Egreso'),
('ff8080816345dd260163b7f606b10051', '2018-05-31 20:49:04.178', 'Exitoso', '2018-05-31 20:49:04.176', '34', '', '2018-05-31 20:49:04.178', '130', '', 'Por nómina', 'Egreso'),
('ff8080816345dd260163b7f6096d0053', '2018-05-31 20:49:04.878', 'Exitoso', '2018-05-31 20:49:04.877', '34', '', '2018-05-31 20:49:04.878', '30', '', 'Por nómina', 'Egreso'),
('ff8080816345dd260163b7f60c960057', '2018-05-31 20:49:05.686', 'Exitoso', '2018-05-31 20:49:05.685', '34', '', '2018-05-31 20:49:05.686', '75', '', 'Por nómina', 'Egreso'),
('ff8080816345dd260163b7f60f8b005a', '2018-05-31 20:49:06.444', 'Exitoso', '2018-05-31 20:49:06.443', '34', '', '2018-05-31 20:49:06.444', '140', '', 'Por nómina', 'Egreso'),
('ff8080816345dd260163d64ac5900089', '2018-06-06 18:10:14.544', 'Exitoso', '2018-06-06 18:10:14.074', '46', 'ord_2ihox8N14NCT1ZdvK', '2018-06-06 18:13:49.739', '800', '5b1823afb795b04039ed5ca8', 'SPEI', 'Ingreso'),
('ff8080816345dd260163cc4c80c10061', '2018-06-04 19:35:55.842', 'Exitoso', '2018-06-04 19:35:55.191', '44', 'ord_2ihB9w5uuzSe2JgVj', '2018-06-04 19:36:28.967', '500', '5b1594bab795b05713087f9a', 'Sucursal Oxxo', 'Ingreso'),
('ff8080816345dd260163d6007c470085', '2018-06-06 16:49:06.119', 'Exitoso', '2018-06-06 16:49:05.326', '46', 'ord_2ihntAVYPsweAVc2i', '2018-06-06 16:49:36.821', '500', '5b1810aab795b0387bed20e3', 'Sucursal Oxxo', 'Ingreso'),
('ff8080816345dd260163cc4ca1b70062', '2018-06-04 19:36:04.28', 'Exitoso', '2018-06-04 19:36:03.954', '44', 'ord_2ihBA3CZssAHQNFXv', '2018-06-04 19:39:34.868', '500', '5b1594c2ffecf9737f9d2df5', 'SPEI', 'Ingreso'),
('ff8080816345dd260163cc6097bf0063', '2018-06-04 19:57:52.448', 'Exitoso', '2018-06-04 19:57:52.446', '44', '', '2018-06-04 19:57:52.448', '67', '', 'Por saldo', 'Egreso'),
('ff8080816345dd260163cca09c160067', '2018-06-04 21:07:47.864', 'Exitoso', '2018-06-04 21:07:47.862', '44', '', '2018-06-04 21:07:47.864', '67', '', 'Por saldo', 'Reembolso'),
('ff8080816345dd260163cd0ccff90075', '2018-06-04 23:05:59.034', 'Exitoso', '2018-06-04 23:05:57.745', '46', 'ord_2ihDvMRq2Xp4TrxCn', '2018-06-04 23:06:30.307', '500', '5b15c5f5b795b066150c3d53', 'Sucursal Oxxo', 'Ingreso'),
('ff8080816345dd260163d6012f120086', '2018-06-06 16:49:51.891', 'Consulta', '2018-06-06 16:49:51.569', '46', 'ord_2ihntkfL9KwJcuh7Y', '2018-06-06 16:50:00.003', '800', '5b1810d8ffecf91a1ec61c8f', 'SPEI', 'Ingreso'),
('ff8080816345dd260163cd0d0f060076', '2018-06-04 23:06:15.174', 'Exitoso', '2018-06-04 23:06:14.816', '46', 'ord_2ihDvaBrgCSpxAW3L', '2018-06-04 23:09:37.932', '500', '5b15c606ffecf93540b32097', 'SPEI', 'Ingreso'),
('ff8080816345dd260163cd1266c90078', '2018-06-04 23:12:05.322', 'Exitoso', '2018-06-04 23:12:05.321', '46', '', '2018-06-04 23:12:05.322', '60', '', 'Por saldo', 'Egreso'),
('ff8080816345dd260163d5fda05f0082', '2018-06-06 16:45:58.753', 'Exitoso', '2018-06-06 16:45:58.75', '46', '', '2018-06-06 16:45:58.753', '30', '', 'Por saldo', 'Egreso'),
('ff8080816345dd260163d629c18a0088', '2018-06-06 17:34:10.827', 'Consulta', '2018-06-06 17:34:10.464', '46', 'ord_2ihoUbVoq9dHPRE5X', '2018-06-06 17:35:00.003', '800', '5b181b3bb795b04039ed59fe', 'SPEI', 'Ingreso'),
('ff8080816345dd260163d6f78e98008e', '2018-06-06 21:18:58.202', 'Exitoso', '2018-06-06 21:18:58.199', '46', '', '2018-06-06 21:18:58.202', '30', '', 'Por saldo', 'Reembolso'),
('ff8080816345dd260163d6534f50008a', '2018-06-06 18:19:34.096', 'Consulta', '2018-06-06 18:19:33.621', '46', 'ord_2ihp5FzvSHV85T2Xg', '2018-06-06 18:20:00.003', '800', '5b1825deffecf90c57c64dcb', 'Sucursal Oxxo', 'Ingreso'),
('ff8080816345dd260163d6d38624008b', '2018-06-06 20:39:36.742', 'Exitoso', '2018-06-06 20:39:36.74', '46', '', '2018-06-06 20:39:36.742', '30', '', 'Por saldo', 'Egreso'),
('ff8080816345dd260163dab408a50090', '2018-06-07 14:43:41.863', 'Exitoso', '2018-06-07 14:43:41.86', '46', '', '2018-06-07 14:43:41.863', '60', '', 'Por saldo', 'Egreso'),
('ff8080816345dd260163dab409670092', '2018-06-07 14:43:42.056', 'Exitoso', '2018-06-07 14:43:42.055', '46', '', '2018-06-07 14:43:42.056', '80', '', 'Por saldo', 'Egreso'),
('ff8080816345dd260163e164ad520099', '2018-06-08 21:54:21.652', 'Exitoso', '2018-06-08 21:54:21.649', '46', '', '2018-06-08 21:54:21.652', '30', '', 'Por saldo', 'Egreso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlg`
--

CREATE TABLE IF NOT EXISTS `userlg` (
  `id` varchar(2) DEFAULT NULL,
  `account_expired` varchar(15) DEFAULT NULL,
  `account_locked` varchar(14) DEFAULT NULL,
  `acepta_terminos` varchar(15) DEFAULT NULL,
  `archivo_foto` varchar(12) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `consume_alcohol` varchar(15) DEFAULT NULL,
  `date_created` varchar(23) DEFAULT NULL,
  `empresa_id` varchar(32) DEFAULT NULL,
  `enabled` varchar(7) DEFAULT NULL,
  `enfermedades_cronicas` varchar(57) DEFAULT NULL,
  `establecimiento_id` varchar(32) DEFAULT NULL,
  `estatura` varchar(8) DEFAULT NULL,
  `fecha_nacimiento` varchar(19) DEFAULT NULL,
  `id_autor` varchar(8) DEFAULT NULL,
  `last_updated` varchar(23) DEFAULT NULL,
  `monto_adeudo` varchar(12) DEFAULT NULL,
  `monto_limite` varchar(12) DEFAULT NULL,
  `monto_saldo` varchar(11) DEFAULT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `pago_nomina` varchar(11) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `password_expired` varchar(16) DEFAULT NULL,
  `peso` varchar(4) DEFAULT NULL,
  `realiza_deportes` varchar(16) DEFAULT NULL,
  `rfc` varchar(19) DEFAULT NULL,
  `sesion_activa` varchar(13) DEFAULT NULL,
  `session_id` varchar(108) DEFAULT NULL,
  `sexo` varchar(9) DEFAULT NULL,
  `solicitar_pago_nomina` varchar(21) DEFAULT NULL,
  `telefono_movil` varchar(14) DEFAULT NULL,
  `tipo_dieta` varchar(49) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `userlg`
--

INSERT INTO `userlg` (`id`, `account_expired`, `account_locked`, `acepta_terminos`, `archivo_foto`, `ciudad`, `consume_alcohol`, `date_created`, `empresa_id`, `enabled`, `enfermedades_cronicas`, `establecimiento_id`, `estatura`, `fecha_nacimiento`, `id_autor`, `last_updated`, `monto_adeudo`, `monto_limite`, `monto_saldo`, `nombre`, `pago_nomina`, `password`, `password_expired`, `peso`, `realiza_deportes`, `rfc`, `sesion_activa`, `session_id`, `sexo`, `solicitar_pago_nomina`, `telefono_movil`, `tipo_dieta`, `username`) VALUES
('id', 'account_expired', 'account_locked', 'acepta_terminos', 'archivo_foto', 'ciudad', 'consume_alcohol', 'date_created', 'empresa_id', 'enabled', 'enfermedades_cronicas', 'establecimiento_id', 'estatura', 'fecha_nacimiento', 'id_autor', 'last_updated', 'monto_adeudo', 'monto_limite', 'monto_saldo', 'nombre', 'pago_nomina', 'password', 'password_expired', 'peso', 'realiza_deportes', 'rfc', 'sesion_activa', 'session_id', 'sexo', 'solicitar_pago_nomina', 'telefono_movil', 'tipo_dieta', 'username'),
('8', 'False', 'False', 'False', '', '', 'False', '2018-02-01 04:16:12.179', '', 'True', '', '', '0', '', '', '2018-02-01 04:16:12.179', '0', '0', '0', 'Agustín Tristán', 'False', '$2a$10$ylk.Dt5amCw41ZYWPZwlYu.0on8kcqfuluc5tDpHEV85/EUlblMVC', 'False', '0', 'False', '', 'False', 'erkMyrYAuMAPJ/TE8rERofPOAQOtGCUd7pjXf5kciKk=', '', 'False', '(555) 345-2121', '', 'propietario@gmail.com'),
('9', 'False', 'False', 'False', '', '', 'False', '2018-02-01 04:16:12.438', '', 'True', '', '', '0', '', '', '2018-02-01 04:16:12.438', '0', '0', '0', 'Jorge Ceyca', 'False', '$2a$10$UtYQLMPLj4dUtnRB9KgCFuDLLbys7e1nT9n0/RqYEsBgnYcVVAKiy', 'False', '0', 'False', '', 'False', 'lKVP8SIBDKRAp3U2/ivsQIlKuMd9hUKfTlXpeNAOwFc=', '', 'False', '(777) 197-1711', '', 'admin1@gmail.com'),
('11', 'False', 'False', 'False', '', '', 'False', '2018-02-01 04:16:12.687', '', 'True', '', '', '0', '', '', '2018-02-01 04:16:12.687', '0', '0', '0', 'Rafael Acosta', 'False', '$2a$10$Cd00AvRIRpMRrH26TcH9bOF4Xb6G6/aWyjCn5mJM8QOt3N0ZUCcNC', 'False', '0', 'False', '', 'False', 'U77VtCdDpIj8vqZs1l6tDoCWxtVko9qLw5jQ9OlChwk=', '', 'False', '(777) 891-9090', '', 'chef@gmail.com'),
('12', 'False', 'False', 'False', '', '', 'False', '2018-02-01 04:16:12.813', '', 'True', '', '', '0', '', '', '2018-02-01 04:16:12.813', '0', '0', '0', 'Jesús López', 'False', '$2a$10$KGEjdSCDFCOFIOxgWmPK2.aEKyf5y8qRKQzayORWHlB0O/0eWTHsS', 'False', '0', 'False', '', 'False', 'mkTR03y+wktv6D5/oSdwiRZxW9ssq2nzaVPRNSfD4ww=', '', 'False', '(777) 188-1029', '', 'repartidor@gmail.com'),
('13', 'False', 'False', 'False', '', '', 'False', '2018-02-01 04:16:12.929', '', 'True', '', '', '0', '', '', '2018-02-01 04:16:12.929', '0', '0', '0', 'Andrea Vidaña', 'False', '$2a$10$7nR/QjaWSz3kowz1z34fXul0aCq.SE4mIpwS0db8XzvPgdBIebU22', 'False', '0', 'False', '', 'False', 'm1qy/XayD5XjMQxxOX9mvFtg8/3iCP0WBOCf86nlQxE=', '', 'False', '(777) 188-2919', '', 'cliente@gmail.com'),
('14', 'False', 'False', 'False', '', '', 'False', '2018-02-01 04:16:13.046', '', 'True', '', '', '0', '', '', '2018-02-01 04:16:13.046', '0', '0', '0', 'Julio Vidaña', 'False', '$2a$10$yf4Ks6tYDGhgQaUvA8Tryu.OikNFBbzhKnKiKxVt1UQXd2QLVqBG2', 'False', '0', 'False', '', 'False', 'GW1EfH0+015tFEAdjhOpdezBlvfupEecMlLsF4TtWnI=', '', 'False', '(777) 551-6261', '', 'programador@gmail.com'),
('10', 'False', 'False', 'False', '', '', 'False', '2018-02-01 04:16:12.56', '', 'True', '', 'ff808081614f940e01614fcbbf050029', '0', '', '', '2018-02-01 05:16:48.418', '0', '0', '0', 'Israel Galvan', 'False', '$2a$10$6vSs6volrdQ17A97riNtfuR3mJRgv6b1eO.665n4a5HF8omTANfQ6', 'False', '0', 'False', '', 'False', 'jvAJ6NSRvp2V74Rh55/PwoWBpm8Spzp5Ig7hQ/GclOI=', '', 'False', '(777) 245-1515', '', 'admin2@gmail.com'),
('17', 'False', 'False', 'True', '', 'Cuernavaca', 'False', '2018-02-01 05:30:51.465', 'ff808081614f940e01614fce2547002a', 'False', '', '', '0', '2000-01-18 00:00:00', '', '2018-02-01 05:30:51.465', '0', '0', '0', 'Gabriela Estrada', 'False', '$2a$10$kcUa9DsPGYjD1g7PzBcyhOhqF7Bjf4FopPO2j61C4eS94YKwkDf3a', 'False', '0', 'False', '', 'False', '+dqS3eUnIWwlULiCLjpw7pPiMTGsOMsQ4g1urkyihLk=', 'Femenino', 'False', '7777777777', 'Vegano', 'estrada1_a@nissan.com.mx'),
('18', 'False', 'False', 'False', '', '', 'False', '2018-02-17 19:06:17.054', '', 'True', '', 'ff808081614f940e0161a52a2c3300ec', '0', '', '8', '2018-02-17 19:07:40.071', '0', '0', '0', 'Eduardo Gómez Santana', 'False', '$2a$10$Nsd5Zv9JE1YUj1uthgxonefC9Bn3gPyCoQ6.0ZBggPwWCAurbJUHK', 'False', '0', 'False', '', 'False', '6c/PvUCRpi28h+mKeMf4SMOJUei2dBtkMth4BKEoIjo=', '', 'False', '444 811-5838', '', 'eduardo.gomez@sambasmoothie.com'),
('21', 'False', 'False', 'False', '', '', 'False', '2018-02-19 21:21:22.367', '', 'True', '', '', '0', '', '8', '2018-02-19 21:21:22.367', '0', '0', '0', 'Víctor Monreal Tristán', 'False', '$2a$10$muxW2Vg8rTmkS66dhlMZrOd9MPMtaj6EtihVTrZT2TncIRUcHhVK2', 'False', '0', 'False', '', 'False', 'Mq8YUUlF3YQmkzqbr55mDdTZYcRzM8A/A+rFqRmSf+o=', '', 'False', '444 457-6388', '', 'victor.monreal@sambasmoothie.com'),
('27', 'False', 'False', 'True', '', 'Cuernavaca', 'False', '2018-02-24 16:20:54.012', 'ff808081614f940e01614fce2547002a', 'False', '', '', '0', '2018-02-07 00:00:00', '', '2018-02-24 16:20:54.012', '0', '0', '0', 'carlos nava', 'False', '$2a$10$j1JpvE1m1qnAUnXmrQ4kKe/0adb/Qbjnxk6rfVL5t2sSeY8N5p89O', 'False', '0', 'False', '', 'False', 'z6sKh2pArT93mi8k+qfkBMb6NOhGsZr3hbVRAaR/Oww=', 'Masculino', 'False', '7777777777', 'Vegano', 'carlos@gmail.com.mx'),
('20', 'False', 'False', 'False', '', '', 'True', '2018-02-19 21:10:24.443', 'ff808081614f940e0161afe7434c0108', 'True', ',,,Hipertensión,Obesidad y sobrepeso,,Síndrome metabólico', 'ff808081614f940e0161a52a2c3300ec', '160', '2018-02-19 00:00:00', '', '2018-02-26 19:40:19.396', '0', '0', '0', 'IEIA', 'False', '$2a$10$aV.aLCWplJ9urBjrICuF2eSVuIXIX/1VSO3.NQ1OheNMeuPuelmbK', 'False', '78', 'True', 'IEI010123GC5', 'False', 'bSUnBJOFKc9VPgDqsl7ZbV/2ug5aWUB7wTsRgoWGh3M=', 'Femenino', 'True', '(444) 825-5076', '   Obesidad y sobrepeso   Colitis y gastritis    ', 'gcarrion@ieia.com.mx'),
('28', 'False', 'False', 'False', '', '', 'False', '2018-02-26 19:48:20.798', '', 'True', '', 'ff808081614f940e0161a52a2c3300ec', '0', '', '18', '2018-02-26 19:48:20.798', '0', '0', '0', 'Laura Ríos', 'False', '$2a$10$KGrv4inx2dIYQztR0INyKO3hM32VBJBqWo0ozp1olDk/J5r3KbE1K', 'False', '0', 'False', '', 'False', 'fNoFEn88EyR+nKjtCgOeJqrsWWQVdVwfbl/2TW09nQ4=', '', 'False', '444 306-1006', '', 'trizteza.lr@gmail.com'),
('23', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'False', '2018-02-23 12:55:35.48', 'ff808081614f940e0161afe7434c0108', 'True', '', '', '0', '2000-07-04 00:00:00', '', '2018-02-26 19:31:58.186', '0', '0', '0', 'Carlos Alvarez Icaza', 'False', '$2a$10$6vAYyyOLGbtSd6O.rzW9quid2zbpGcYke15SHhC7t3.dtQLC86O2u', 'False', '0', 'False', '', 'False', '5ChgiRygmamuFXeGobxajVDW1hhcUFoAh+B3KA2Hzts=', 'Masculino', 'False', '7777777777', ' Diabetes , Vegano, Obesidad y sobrepeso', 'carlos@nissan.com.mx'),
('24', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'False', '2018-02-23 12:59:36.106', 'ff808081614f940e0161afe7434c0108', 'False', '', '', '0', '1990-02-12 00:00:00', '', '2018-02-23 12:59:36.106', '0', '0', '0', 'Isaura Lopez Carmona', 'False', '$2a$10$FPdW8x992.emXmCWqn72ietZTJbJvONa2c/4C09i02BiMpHwfNGiC', 'False', '0', 'False', '', 'False', '92v5TEqFLfDPpdFEgJcYQENqNLyU8fANqFywPOrfK2w=', 'Femenino', 'False', '8888888888', 'Vegano, Colitis y gastritis', 'isa@ieia.com.mx'),
('26', 'False', 'False', 'True', '', 'Cuernavaca', 'False', '2018-02-23 16:28:46.779', 'ff808081614f940e01614fce2547002a', 'False', '', '', '0', '1990-02-15 00:00:00', '', '2018-02-23 16:28:46.779', '0', '0', '0', 'William ramirez', 'False', '$2a$10$qFlAibsLkkPDxjigTbW6GOdVjdFB8jKDn8QeF2.myyf.vy2KO4mq.', 'False', '0', 'False', '', 'False', 'P/INVvv9IRlr39cobs8H98WS1zFInbGZMwGqltu0KSE=', 'Masculino', 'False', '7777777777', 'Vegano', 'jingramramirez@gmail.com'),
('31', 'False', 'False', 'True', '', 'Cuernavaca', 'False', '2018-02-27 21:13:31.871', 'ff808081614f940e01614fce2547002a', 'False', '', '', '0', '2014-02-10 00:00:00', '', '2018-02-27 21:13:31.871', '0', '0', '0', 'Sergio Villavicencio', 'False', '$2a$10$qJANzcO1/EqpgXGNPRPOBuw6sQwcMdx7DVaVEMDpZVu0BIhXqOxzq', 'False', '0', 'False', '', 'False', 'Gyd3iG/AoVXfecqJmbGoQ/ecaZ+jR68+LrFjAQHkWvg=', 'Masculino', 'False', '7772055555', 'Obesidad y sobrepeso', 'Sergio@nissan.mx'),
('25', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'False', '2018-02-23 13:07:25.656', 'ff808081614f940e0161afe7434c0108', 'True', '', '', '0', '1987-02-11 00:00:00', '', '2018-02-26 19:38:36.027', '0', '0', '0', 'Cristobal salas', 'False', '$2a$10$eaKKIw9epK5iCquDEB//dO856vAWKYcHvdsx12jdSG/7opM.COrny', 'False', '0', 'False', '', 'False', 'ZL4n62BN2CbdUn3aHI7UMTzU57XOcs1X/NLBLSzoahA=', 'Masculino', 'False', '7771234567', 'Colitis y gastritis', 'cristobal@ieia.com.mx'),
('15', 'False', 'False', 'False', '', '', 'False', '2018-02-01 05:19:25.642', 'ff808081614f940e01614fce2547002a', 'False', '', '', '0', '', '', '2018-03-03 20:57:10.374', '0', '0', '0', 'Nissan Cuernavaca', 'False', '$2a$10$BGajMnqjaSxJ1SEiJUHPhOdJBBL2Be6A6U3Al9zh9iAou5eHLXGRy', 'False', '0', 'False', 'IARW731123T22', 'False', '2/gIejd5w8yXsBqtVljYcoRlSu7gy03JPfqQ79age2BNEQ9e9DNzpRQTPRVOHAeUOzdkpeYdNHXDgHQyyLNUlUUNlV8mGEkWsN17v0NTwBc=', '', 'False', '777 777-7777', '', 'nissan@gmail.com'),
('16', 'False', 'False', 'True', '', 'Cuernavaca', 'False', '2018-02-01 05:21:02.476', 'ff808081614f940e0161afe7434c0108', 'True', '', '', '2', '1996-03-13 00:00:00', '', '2018-05-08 23:32:50.278', '0', '0', '12193', 'Sebastian Montero', 'False', '$2a$10$dzh4it.LvBb1UytsWBia/uf7NzXadAqDTKNzYnAxtWJYg4gvvY6OO', 'False', '151', 'False', '1111111111111111111', 'False', 'tegV3/9jLYflnM7UlcGpIw4LDFNZC9sfC0tvKiFBS4o=', 'Masculino', 'False', '7777777777', 'Vegano', 'montero@nissan.com.mx'),
('22', 'False', 'False', 'True', '', 'Cuernavaca', 'False', '2018-02-23 12:52:22.9', 'ff808081614f940e01614fce2547002a', 'False', '', '', '0', '2018-01-01 00:00:00', '', '2018-03-03 20:57:10.381', '0', '0', '0', 'Pedro Mendez', 'False', '$2a$10$qr8j5M6w9j1v3nmCmf4Ohu2gtiHbGdsCgDZ037HOnxhjhtt24kK3G', 'False', '0', 'False', '', 'False', 'IzqG7pTUw4nRqLcVedMpjbYrBb45cSzf5GZanIZL8KBJLPXhzC+d+DsdgLLsZ2cOY8Z+/BD7OD1UIf5dptfsVuY3bkYM6DVQzax1BLQIaPc=', 'Masculino', 'False', '7771336750', ' Diabetes ', 'mendez@gmail.com'),
('32', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'False', '2018-02-28 18:52:03.18', 'ff808081614f940e0161afe7434c0108', 'True', '', '', '1.8', '1958-06-13 00:00:00', '', '2018-02-28 19:16:20.995', '0', '0', '0', 'Rodolfo Aldave Ocampo', 'False', '$2a$10$AbxYjCRpm3NAX3Pp7hKLEuE3X61R8vnA1g3FA4QMxeNUmTHeHWrrW', 'False', '95', 'False', '', 'False', 'yUG+sh/Si6szofP9wTC3fPTVlkGAAT95hlMLYLaDx6Q=', 'Masculino', 'False', '4448296268', '', 'rodolfo.aldave@gmail.com'),
('19', 'False', 'False', 'False', '', '', 'False', '2018-02-17 19:46:39.246', '', 'True', '', 'ff808081614f940e0161a52a2c3300ec', '0', '', '18', '2018-03-15 18:27:52.707', '0', '0', '0', 'Miguel Ángel López Juárez', 'False', '$2a$10$X9CyhuK6eW8BV6PjOLUdZuPSoEQbl8iM4W1ppN57UWMElSDLuBy/u', 'False', '0', 'False', '', 'False', 'rDN4DE7LtG6tggjAxX0plXbepfhcC3DuYWqffQZHOdE=', '', 'False', '(444) 204-5661', '', 'repartidor1samba@gmail.com'),
('36', 'False', 'False', 'False', '', 'Cuernavaca', 'False', '2018-03-17 02:54:13.13', 'ff808081614f940e0161afe7434c0108', 'True', '', 'ff808081614f940e0161a52a2c3300ec', '0', '2000-05-04 00:00:00', '14', '2018-03-17 02:54:13.13', '0', '0', '0', 'Juan Juarez Arteaga', 'False', '$2a$10$iV6N3QbIbRNbqtp0vUjPKu4qJSlS.bQ5372oiVyGpU9ELLsShe5j6', 'False', '0', 'False', 'IARW731123T22', 'False', '+P74i0jdIaic/8bstC4IwabEEnhJOKBDWzHrl7ztFkU=', 'Masculino', 'False', '777 777-7777', '', 'juan@gmail.com'),
('33', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'False', '2018-03-01 22:23:39.689', 'ff808081614f940e0161afe7434c0108', 'True', '', '', '1.79', '2018-03-01 00:00:00', '', '2018-04-12 16:38:18.43', '815', '2000', '0', 'Eduardo Santana', 'True', '$2a$10$xbMGjAh56yDYadfW2St1p.6GaNOGSOqACtVubXpVoPzAwFLpHU/FK', 'False', '86', 'False', '', 'False', 'YZFd20csioae6XJctvVcPj07bn9wA3ZBQqG+JsoR85I=', 'Masculino', 'True', '4448591133', 'Colitis y gastritis', 'les01@live.com.mx'),
('38', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'False', '2018-04-16 00:11:25.958', 'ff808081614f940e0161afe7434c0108', 'False', '', '', '0', '2018-04-11 00:00:00', '', '2018-04-16 00:11:25.958', '0', '0', '0', 'alfredo', 'False', '$2a$10$fhbEQOiL6R8kzRWTTTAQz.F4DAG4puPKI.RxG8cpzf9CyaIfg1Agi', 'False', '0', 'False', '', 'False', '7GcqjM6z9npkTt+rYa6zByZVKCVDmusP0oE/2ytHEsY=', 'Masculino', 'False', '7777777777', 'Vegano', 'alf@gmail.com'),
('39', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'False', '2018-04-16 00:18:37.375', 'ff808081614f940e0161afe7434c0108', 'False', '', '', '0', '2001-04-11 00:00:00', '', '2018-04-16 00:18:37.375', '0', '0', '0', 'Laura', 'False', '$2a$10$8RwEqALx2NaSusqLQwb/HOorq3lglmVnnpBVtJ20df87uXfavtmOu', 'False', '0', 'False', '', 'False', 'en4L2kqriD3xsVDAkecteEh8D8Km1OQSsgc4JUPHHo8=', 'Femenino', 'False', '1155555555', 'Vegano', 'Laura@gmail.com'),
('37', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'False', '2018-03-25 01:25:23.992', 'ff808081614f940e0161afe7434c0108', 'True', '', '', '0', '2018-03-22 00:00:00', '', '2018-04-13 00:57:23.936', '0', '0', '0', 'Laura Esquivel', 'False', '$2a$10$0Ft06lUWJzqpafcHPL02DOlnIHU7wsYBqe4aDfyGramomZ3586ME2', 'False', '0', 'False', '', 'False', 'R9maESQEIJYCqPhEq/JpQw8WEtfYrqLu/R2Zj+u/kTY=', 'Femenino', 'False', '8888888888', 'Vegano', 'laura@gmail.com'),
('29', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'False', '2018-02-27 21:00:34.976', 'ff808081614f940e0161afe7434c0108', 'True', '', '', '1.76', '1989-09-07 00:00:00', '', '2018-05-07 19:24:26.244', '1042', '2000', '2400', 'Victor', 'True', '$2a$10$N4j58byOQwcAXSPSXCM6leoIL7GL7jETaft7igoh8mzWl.1Q6Dl4O', 'False', '82', 'False', '', 'False', 'KjS6UILgc1/B6OWM5dc408dHP/uVRmDnH4KD6WRVOxc=', 'Masculino', 'True', '4444576388', 'Obesidad y sobrepeso', 'vmonreal07@gmail.com'),
('34', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'False', '2018-03-05 16:03:57.646', 'ff808081614f940e0161afe7434c0108', 'True', '', '', '170', '1968-06-03 00:00:00', '', '2018-05-31 20:49:06.44', '2280', '5000', '0', 'Alberto Oros', 'True', '$2a$10$Ioov7BzFp/c3csWw6XK2K.tPfH4ZO4vdiC7vpxEtdGGhjLukyGv2S', 'False', '80', 'False', '', 'False', '428Ksz42uDnFY57TU4pIhnjomHt/oW8pu1wZuspyT6M=', 'Masculino', 'True', '4448472047', 'Colitis y gastritis', 'orosvizual@yahoo.com.mx'),
('30', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'True', '2018-02-27 21:01:38.112', 'ff808081614f940e0161afe7434c0108', 'True', 'Diabetes,,Gastritis,,,,', 'ff808081614f940e0161a52a2c3300ec', '1.6', '1990-12-28 00:00:00', '', '2018-05-31 16:31:51.225', '2981', '3000', '4123', 'Verónica Miranda', 'True', '$2a$10$1MSHfCfqrvyRpA.Qr8T4SelXlRMHa2iMPEzf78vCAHg6askiJuJTq', 'False', '58', 'True', '', 'False', 'stMGbUSD8kfqLvLEodh4o8w0wdA4Y89CcW3qEZCrPEc=', 'Femenino', 'True', '4444443368', ' Diabetes     Colitis y gastritis    ', 'veromiranda.nutriologa@gmail.com'),
('40', 'False', 'False', 'True', '', 'Cuernavaca', 'False', '2018-05-09 23:50:38.552', 'ff808081614f940e01614fce2547002a', 'False', '', '', '0', '1995-02-01 00:00:00', '', '2018-05-09 23:50:38.552', '0', '0', '0', 'Arlette', 'False', '$2a$10$jNL4v8u9lk/TOCadkXiN1eVDc/O.GSZ/IqG7uuV4G1bS3c6Yr2.V6', 'False', '0', 'False', '', 'False', 'jkp8RmQ+ts4txGtklmY8K2SbqUGPPb9JL0sipO91Hlk=', 'Femenino', 'False', '5512291544', 'Vegano, Vegetarianos, Intolerante a la lactosa', 'arlt95@hotmail.com'),
('43', 'False', 'False', 'True', '', 'Cuernavaca', 'False', '2018-06-04 19:15:48.564', 'ff808081614f940e01614fce2547002a', 'False', '', '', '0', '1995-02-01 00:00:00', '', '2018-06-04 19:15:48.564', '0', '0', '0', 'Arlette Roman', 'False', '$2a$10$5lWSbKZwaSXz.yuaHYnia.IrWVf9DqODGjZaopyWPoPiGJRvF6d3q', 'False', '0', 'False', '', 'False', 'iE104o1Q3TdCtmtdtxHTJHjW55J8LSDoqJt1dppYPqw=', 'Femenino', 'False', '5555555555', 'Intolerante a la lactosa', 'arlette@bambu-movile.com'),
('44', 'False', 'False', 'True', '', 'San Luis Potosí, SLP', 'False', '2018-06-04 19:17:54.861', 'ff808081614f940e0161afe7434c0108', 'True', '', '', '0', '1995-02-01 00:00:00', '', '2018-06-04 21:07:47.858', '0', '0', '1000', 'Arlette Roman', 'False', '$2a$10$yM01GVETsHoxf/lqPsLtLuscVKCwCddptugXZZEbJ1tcGRdTHA.Km', 'False', '0', 'False', '', 'False', 't1kZQmbu5wkwgvstQEtHz40GOWrovJ9A2CGBF6XMmT4=', 'Femenino', 'False', '5555555555', 'Vegetarianos, Intolerante a la lactosa', 'arlette@bambu-mobile.com'),
('42', 'False', 'False', 'False', '', '', 'False', '2018-06-04 19:13:13.975', '', 'True', '', 'ff8080816345dd260163ccc6d0d80069', '0', '', '8', '2018-06-04 21:49:31.853', '0', '0', '0', 'Admin bambú', 'False', '$2a$10$YNcTF5dTBihtIb.EYSXQKOcHHlZ6HF1mWep9HCVsE15Z5IqJ3AGT6', 'False', '0', 'False', '', 'False', 'Jy8lAjQz8+iTKkCjaLKDyFL3c//6rqK03/ylbyfbz+A=', '', 'False', '554 061-2296', '', 'david@bambu-mobile.com'),
('45', 'False', 'False', 'False', '', '', 'False', '2018-06-04 22:11:20.308', 'ff8080816345dd260163ccdac7f9006b', 'True', '', '', '0', '', '', '2018-06-04 22:11:20.308', '0', '0', '0', 'Bambu', 'False', '$2a$10$LRHdrQ6dsYfl.I2A.sOgTeMf35ivNztBNjYiWaW86PPYb1Zc0sW2G', 'False', '0', 'False', 'BAMBU12345678', 'False', 'w/MHlUR9ECuZV83gMQXFGPbdq7KEOyd2nr0zYFTQnX8=', '', 'False', '(555) 555-5555', '', 'coffeeytv@gmail.com'),
('46', 'False', 'False', 'True', '', 'CDMX', 'False', '2018-06-04 22:33:55.162', 'ff8080816345dd260163ccdac7f9006b', 'True', '', '', '0', '1995-06-01 00:00:00', '', '2018-06-08 21:54:21.644', '0', '0', '2040', 'Juan Carlos', 'False', '$2a$10$lHyCSkFmvC1bo5Mw5.D2KOuSQbUtrRhUFiuIgBeyaOspPVZLi2Grq', 'False', '0', 'False', '', 'False', 'gNfniWwDl50WKU4rUtyjatirpvTpFjGLrxJmR0F3f4U=', 'Masculino', 'True', '5555555555', '', 'juan@bambu-mobile.com'),
('47', 'False', 'False', 'False', '', '', 'False', '2018-06-04 22:58:55.473', '', 'True', '', 'ff8080816345dd260163ccc6d0d80069', '0', '', '42', '2018-06-04 22:58:55.473', '0', '0', '0', 'Repartidor Bambu', 'False', '$2a$10$cS7Cb1ykdgI1pSsFfaCMh.UhlPnEH/UnQ3tF3GbH8gT1Q9vnn92US', 'False', '0', 'False', '', 'False', '0DlXZ3h+iwCaX2ztA5B7HABZ+wERoEP75ssaldn13s0=', '', 'False', '555 555-5555', '', 'cristian@bambu-mobile.com'),
('48', 'False', 'False', 'False', '', '', 'False', '2018-06-04 23:00:51.161', '', 'True', '', 'ff8080816345dd260163ccc6d0d80069', '0', '', '42', '2018-06-04 23:00:51.161', '0', '0', '0', 'cocinero bambu', 'False', '$2a$10$bXHrRJT21oraofSAaUKYc.DL4ZDJyqa4taPbkOD41djJNt8s.8OHK', 'False', '0', 'False', '', 'False', 'pNVVdptyFHS0SHsD0n1lyM9Zv2jHQ1CoCZ3XQP1q4dk=', '', 'False', '555 555-5555', '', 'dulce@bambu-mobile.com');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `promocion_especial`
--
ALTER TABLE `promocion_especial`
  ADD CONSTRAINT `promocion_especial_ibfk_1` FOREIGN KEY (`id_promocion`) REFERENCES `promocion` (`id_promocion`);

--
-- Filtros para la tabla `promocion_preferencias`
--
ALTER TABLE `promocion_preferencias`
  ADD CONSTRAINT `promocion_preferencias_ibfk_1` FOREIGN KEY (`id_promocion`) REFERENCES `promocion` (`id_promocion`);

--
-- Filtros para la tabla `promocion_ventas`
--
ALTER TABLE `promocion_ventas`
  ADD CONSTRAINT `promocion_ventas_ibfk_1` FOREIGN KEY (`id_promocion`) REFERENCES `promocion` (`id_promocion`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
