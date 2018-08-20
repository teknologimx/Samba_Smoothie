-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2018 a las 12:58:38
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
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `archivo_foto` char(255) COLLATE utf8_bin DEFAULT NULL,
  `date_created` timestamp NOT NULL,
  `descripcion` text COLLATE utf8_bin,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `nombre` char(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_loptcxa0xiobxxuvfw5y9egwp` (`id_autor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `archivo_foto`, `date_created`, `descripcion`, `id_autor`, `last_updated`, `nombre`) VALUES
('ff808081614f940e01614f9441c20007', 'Categoria_1519152801177.png', '2018-02-01 10:16:12', 'Alimentos sanos para diabéticos.', NULL, '2018-02-21 00:53:21', 'Diabetes'),
('ff808081614f940e01614f9441ce0008', 'Categoria_1519152844754.png', '2018-02-01 10:16:12', 'Alimentos que no incluye productos de origen animal.', NULL, '2018-02-21 00:54:05', 'Vegano'),
('ff808081614f940e01614f9441da000a', 'Categoria_1519152865683.png', '2018-02-01 10:16:12', 'Alimentos verdes como semillas y legumbres, libre de carne.', NULL, '2018-02-21 00:54:26', 'Vegetarianos'),
('ff808081614f940e01618bd78e950038', 'Categoria_1519152791626.png', '2018-02-13 03:06:55', 'Platillos deliciosos para personas sin problemas de salud.', 8, '2018-03-11 00:40:35', 'Consumo General'),
('ff808081614f940e01614f9441ec000d', 'Categoria_1519152825284.png', '2018-02-01 10:16:12', 'Alimentos libres de gluten.', NULL, '2018-03-11 00:40:51', 'Intolerante al Gluten'),
('ff808081614f940e01614f9441e8000c', 'Categoria_1519152814141.png', '2018-02-01 10:16:12', 'Alimentos libres de lactosa.', NULL, '2018-03-11 00:41:01', 'Intolerante a la Lactosa'),
('ff808081614f940e01614f9441e0000b', 'Categoria_1519152772658.png', '2018-02-01 10:16:12', 'Mantiene feliz a tu intestino.', NULL, '2018-03-11 00:41:10', 'Colitis y Gastritis'),
('ff808081614f940e01614f9441d40009', 'Categoria_1519152834526.png', '2018-02-01 10:16:12', 'Mantienen la línea y mejoran tu salud.', NULL, '2018-05-31 19:55:50', 'Obesidad y Sobrepeso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `databasechangelog`
--

CREATE TABLE IF NOT EXISTS `databasechangelog` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `author` char(255) COLLATE utf8_bin NOT NULL,
  `filename` char(255) COLLATE utf8_bin NOT NULL,
  `dateexecuted` timestamp NOT NULL,
  `orderexecuted` int(32) NOT NULL,
  `exectype` char(10) COLLATE utf8_bin NOT NULL,
  `md5sum` char(35) COLLATE utf8_bin DEFAULT NULL,
  `description` char(255) COLLATE utf8_bin DEFAULT NULL,
  `comments` char(255) COLLATE utf8_bin DEFAULT NULL,
  `tag` char(255) COLLATE utf8_bin DEFAULT NULL,
  `liquibase` char(20) COLLATE utf8_bin DEFAULT NULL,
  `contexts` char(255) COLLATE utf8_bin DEFAULT NULL,
  `labels` char(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `databasechangelog`
--

INSERT INTO `databasechangelog` (`id`, `author`, `filename`, `dateexecuted`, `orderexecuted`, `exectype`, `md5sum`, `description`, `comments`, `tag`, `liquibase`, `contexts`, `labels`) VALUES
('1511656030485-1', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 1, 'EXECUTED', '7:afe897bea20bc08d1681087c94d0967d', 'createSequence', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-2', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 2, 'EXECUTED', '7:6aa9cc6e7201ecfc700c86a47700ad94', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-3', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 3, 'EXECUTED', '7:ab0ab4383bb530a9029171b6a32795c2', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-4', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 4, 'EXECUTED', '7:d0a652581b200fbaee9767bdeac8ab4f', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-5', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 5, 'EXECUTED', '7:2bef60c784349cfcdb3ee2847c62d5db', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-6', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 6, 'EXECUTED', '7:a9c006e854eb87f6a9db7936c68e0b3a', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-7', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 7, 'EXECUTED', '7:b9ac665099d90ce072dd01f63ae7c8e0', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-8', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 8, 'EXECUTED', '7:24bc33bc5154e800c89f05514d61f022', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-9', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 9, 'EXECUTED', '7:ad7b8960e04604dc083edf8c285b19af', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-10', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 10, 'EXECUTED', '7:8226251fc085a304a6ea7a66b0ab454b', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-11', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 11, 'EXECUTED', '7:099d294b198e40460d5993ec7fc5b6d9', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-12', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 12, 'EXECUTED', '7:f8aee0fa012f73aa5404287c07d32b3b', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-13', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 13, 'EXECUTED', '7:10b4ba53aacfc2dcc6ff79dc1d68accf', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-14', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 14, 'EXECUTED', '7:e760cb844c99d741eaebaa584e156328', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-15', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 15, 'EXECUTED', '7:39434609f28d131dac41cd8212f609e1', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-16', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 16, 'EXECUTED', '7:34410649f63c0b1851686bef37fc3e06', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-17', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 17, 'EXECUTED', '7:14b221bb0ac03989924110b6b9083136', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-18', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 18, 'EXECUTED', '7:ff34c6ed0e6d04f01232b7258e1da7c7', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-19', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 19, 'EXECUTED', '7:f085dfe5ff6c13333df265a51477d79b', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-20', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 20, 'EXECUTED', '7:aea468cb1528f50cc232f7aedc4418fd', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-21', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 21, 'EXECUTED', '7:84461f8611596dd89cdeff0a0debc09f', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-22', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 22, 'EXECUTED', '7:e35d78d781da851b6c8301da74d86858', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-23', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 23, 'EXECUTED', '7:8fdae33bd0b1ecac8bc646994ae4fb07', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-24', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 24, 'EXECUTED', '7:d28a2b93c45078160bbdc590cd27cc3f', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-25', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 25, 'EXECUTED', '7:726cd58ca9b0c82c3a8848bba39127ab', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-26', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 26, 'EXECUTED', '7:84236766fe360caf306ea47521818cf2', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-27', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 27, 'EXECUTED', '7:8e69436240af59c19dee24c5d7dcdb8d', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-28', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 28, 'EXECUTED', '7:c3cb1434e85f6485e3c7ae4bff2601d6', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-29', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 29, 'EXECUTED', '7:a487471dd243bea9191060620469a59b', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-30', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 30, 'EXECUTED', '7:09b85657b5abf574bee938afb1679007', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-31', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:19', 31, 'EXECUTED', '7:03a7fe266fa622531f53861ea492fb3c', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-32', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 32, 'EXECUTED', '7:62342b99b578655c49ba3291e3e57808', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-33', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 33, 'EXECUTED', '7:10eac74aaa8e548261d4b251687f883a', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-34', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 34, 'EXECUTED', '7:69abab70fe0785f12b8bfa1dce308af1', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-35', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 35, 'EXECUTED', '7:9eb4d80278d054875f6f3ca0364c89e3', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-36', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 36, 'EXECUTED', '7:a9e5abd765131c4e06848b083b22c256', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-37', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 37, 'EXECUTED', '7:e98d45b817c87d69b8bb13613c3e1190', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-38', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 38, 'EXECUTED', '7:eb0f3d387667503344d0734b1d92a74e', 'addPrimaryKey', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-39', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 39, 'EXECUTED', '7:73e1d0af5765de424c6614d3dc50338d', 'addUniqueConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-40', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 40, 'EXECUTED', '7:b89e285387fb4cb04945730bb0754792', 'addUniqueConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-41', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 41, 'EXECUTED', '7:f86b8a83a022368d100e66ec3e782a8a', 'addUniqueConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-42', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 42, 'EXECUTED', '7:a0a46ae3bd44d6be87b93bbe23251d5a', 'addUniqueConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-43', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 43, 'EXECUTED', '7:8bc558d94486c5d1d143a3a18ad3d119', 'addUniqueConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-44', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 44, 'EXECUTED', '7:e9519210eb3796bd7659d9c6e22cedb8', 'addUniqueConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-45', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 45, 'EXECUTED', '7:ba61f5142cc15bd3434f6c97cf8aed42', 'addUniqueConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-46', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 46, 'EXECUTED', '7:0ade54773cd8a83a25ef176669a027aa', 'addUniqueConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-47', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 47, 'EXECUTED', '7:9d3414ba8099255fd8f6ec01fa24f94b', 'addUniqueConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-48', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 48, 'EXECUTED', '7:c68bf00bee1f42e6c369e36f1cf55633', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-49', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 49, 'EXECUTED', '7:33b6d4a1702db6e5cc1ca9f0482b7548', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-50', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 50, 'EXECUTED', '7:7ba99ba9956157d082e7ad372501e128', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('1511656030485-51', '1200 (generated)', 'changelog.groovy', '2018-05-09 17:05:20', 51, 'EXECUTED', '7:ae232d7d71904db43c3556f59d34cf62', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('41-TRIAL-1511656030485-52 167', '34-TRIAL-1200 (generated) 100', '269-TRIAL-changelog.groovy 124', '2018-05-09 17:05:20', 52, '78-TRIAL-', '262-TRIAL-7:0f20103a0f880ac81c 164', '5-TRIAL-addForeignKeyConstraint 245', '181-TRIAL- 27', NULL, '61-TRIAL-3.4.2 191', NULL, NULL),
('295-TRIAL-1511656030485-53 242', '27-TRIAL-1200 (generated) 36', '291-TRIAL-changelog.groovy 204', '2018-05-09 17:05:20', 53, '2-TRIAL- 1', '292-TRIAL-7:ce8b930e0315705613 82', '21-TRIAL-addForeignKeyConstraint 116', '218-TRIAL- 95', NULL, '47-TRIAL-3.4.2 126', NULL, NULL),
('71-TRIAL-1511656030485-54 138', '69-TRIAL-1200 (generated) 112', '167-TRIAL-changelog.groovy 199', '2018-05-09 17:05:20', 54, '235-TRIAL-', '203-TRIAL-7:c62c3bcf81a04f75d6 111', '122-TRIAL-addForeignKeyConstraint 33', '273-TRIAL- 164', NULL, '141-TRIAL-3.4.2 211', NULL, NULL),
('53-TRIAL-1511656030485-55 268', '47-TRIAL-1200 (generated) 44', '262-TRIAL-changelog.groovy 57', '2018-05-09 17:05:20', 55, '237-TRIAL-', '23-TRIAL-7:023b5504affd04b2b8c 141', '229-TRIAL-addForeignKeyConstraint 178', '16-TRIAL- 35', NULL, '290-TRIAL-3.4.2 42', NULL, NULL),
('288-TRIAL-1511656030485-56 106', '40-TRIAL-1200 (generated) 242', '64-TRIAL-changelog.groovy 148', '2018-05-09 17:05:20', 56, '146-TRIAL-', '290-TRIAL-7:7ab2e1796285d7c8a1 129', '70-TRIAL-addForeignKeyConstraint 50', '6-TRIAL- 201', NULL, '93-TRIAL-3.4.2 248', NULL, NULL),
('129-TRIAL-1511656030485-57 23', '84-TRIAL-1200 (generated) 154', '156-TRIAL-changelog.groovy 140', '2018-05-09 17:05:20', 57, '166-TRIAL-', '131-TRIAL-7:0b1ae953eef815edeb 208', '144-TRIAL-addForeignKeyConstraint 39', '26-TRIAL- 223', NULL, '137-TRIAL-3.4.2 238', NULL, NULL),
('218-TRIAL-1511656030485-58 282', '129-TRIAL-1200 (generated) 41', '33-TRIAL-changelog.groovy 215', '2018-05-09 17:05:20', 58, '139-TRIAL-', '204-TRIAL-7:71c92df5b0394c6e8b 30', '177-TRIAL-addForeignKeyConstraint 206', '173-TRIAL- 186', NULL, '221-TRIAL-3.4.2 245', NULL, NULL),
('224-TRIAL-1511656030485-59 172', '270-TRIAL-1200 (generated) 129', '77-TRIAL-changelog.groovy 273', '2018-05-09 17:05:20', 59, '297-TRIAL-', '286-TRIAL-7:58baf59ec60d8a8f24 90', '161-TRIAL-addForeignKeyConstraint 36', '155-TRIAL- 167', NULL, '255-TRIAL-3.4.2 274', NULL, NULL),
('131-TRIAL-1511656030485-60 52', '50-TRIAL-1200 (generated) 250', '141-TRIAL-changelog.groovy 124', '2018-05-09 17:05:20', 60, '166-TRIAL-', '207-TRIAL-7:1fd7943087169d9415 191', '7-TRIAL-addForeignKeyConstraint 237', '157-TRIAL- 287', NULL, '153-TRIAL-3.4.2 183', NULL, NULL),
('245-TRIAL-1511656030485-61 209', '109-TRIAL-1200 (generated) 158', '221-TRIAL-changelog.groovy 288', '2018-05-09 17:05:20', 61, '122-TRIAL-', '206-TRIAL-7:5be15d39bc80465311 130', '213-TRIAL-addForeignKeyConstraint 68', '0-TRIAL- 191', NULL, '162-TRIAL-3.4.2 155', NULL, NULL),
('10-TRIAL-1511656030485-62 59', '24-TRIAL-1200 (generated) 137', '248-TRIAL-changelog.groovy 183', '2018-05-09 17:05:20', 62, '295-TRIAL-', '2-TRIAL-7:e21b603609d5e1dda139 50', '91-TRIAL-addForeignKeyConstraint 236', '74-TRIAL- 220', NULL, '96-TRIAL-3.4.2 21', NULL, NULL),
('48-TRIAL-1511656030485-63 99', '168-TRIAL-1200 (generated) 184', '181-TRIAL-changelog.groovy 234', '2018-05-09 17:05:20', 63, '53-TRIAL-', '18-TRIAL-7:6698e7135062ade46c4 38', '0-TRIAL-addForeignKeyConstraint 188', '127-TRIAL- 167', NULL, '128-TRIAL-3.4.2 193', NULL, NULL),
('48-TRIAL-1511656030485-64 283', '107-TRIAL-1200 (generated) 21', '210-TRIAL-changelog.groovy 17', '2018-05-09 17:05:20', 64, '13-TRIAL-', '209-TRIAL-7:ecdb3bb1688784a594 116', '35-TRIAL-addForeignKeyConstraint 51', '200-TRIAL- 149', NULL, '19-TRIAL-3.4.2 56', NULL, NULL),
('298-TRIAL-1511656030485-65 3', '224-TRIAL-1200 (generated) 208', '144-TRIAL-changelog.groovy 209', '2018-05-09 17:05:20', 65, '289-TRIAL-', '195-TRIAL-7:26072a366a71400fa4 85', '93-TRIAL-addForeignKeyConstraint 243', '223-TRIAL- 87', NULL, '214-TRIAL-3.4.2 203', NULL, NULL),
('248-TRIAL-1511656030485-66 0', '258-TRIAL-1200 (generated) 18', '180-TRIAL-changelog.groovy 296', '2018-05-09 17:05:20', 66, '98-TRIAL-', '89-TRIAL-7:f36e044485923833152 98', '109-TRIAL-addForeignKeyConstraint 157', '72-TRIAL- 222', NULL, '238-TRIAL-3.4.2 292', NULL, NULL),
('38-TRIAL-1511656030485-67 179', '190-TRIAL-1200 (generated) 257', '158-TRIAL-changelog.groovy 191', '2018-05-09 17:05:20', 67, '15-TRIAL-', '256-TRIAL-7:a86bab1618cffd0bd6 111', '2-TRIAL-addForeignKeyConstraint 234', '272-TRIAL- 255', NULL, '228-TRIAL-3.4.2 146', NULL, NULL),
('262-TRIAL-1511656030485-68 86', '275-TRIAL-1200 (generated) 233', '169-TRIAL-changelog.groovy 42', '2018-05-09 17:05:20', 68, '144-TRIAL-', '281-TRIAL-7:50ff715d4b5dc00f02 198', '122-TRIAL-addForeignKeyConstraint 51', '121-TRIAL- 299', NULL, '257-TRIAL-3.4.2 276', NULL, NULL),
('292-TRIAL-1511656030485-69 89', '275-TRIAL-1200 (generated) 212', '200-TRIAL-changelog.groovy 110', '2018-05-09 17:05:20', 69, '3-TRIAL- 1', '161-TRIAL-7:c15e0a88b67bf17815 288', '201-TRIAL-addForeignKeyConstraint 189', '255-TRIAL- 223', NULL, '202-TRIAL-3.4.2 85', NULL, NULL),
('182-TRIAL-1511656030485-70 85', '88-TRIAL-1200 (generated) 226', '117-TRIAL-changelog.groovy 57', '2018-05-09 17:05:20', 70, '232-TRIAL-', '269-TRIAL-7:d9bace6eff97e525f5 54', '221-TRIAL-addForeignKeyConstraint 89', '176-TRIAL- 129', NULL, '268-TRIAL-3.4.2 192', NULL, NULL),
('125-TRIAL-1511656030485-71 55', '134-TRIAL-1200 (generated) 49', '241-TRIAL-changelog.groovy 212', '2018-05-09 17:05:20', 71, '145-TRIAL-', '118-TRIAL-7:1ee7786d8d5396c07c 153', '239-TRIAL-addForeignKeyConstraint 123', '79-TRIAL- 196', NULL, '187-TRIAL-3.4.2 229', NULL, NULL),
('49-TRIAL-1511656030485-72 37', '66-TRIAL-1200 (generated) 49', '193-TRIAL-changelog.groovy 95', '2018-05-09 17:05:20', 72, '297-TRIAL-', '86-TRIAL-7:6ab1fe5666bf1c6a353 205', '188-TRIAL-addForeignKeyConstraint 82', '155-TRIAL- 234', NULL, '114-TRIAL-3.4.2 1', NULL, NULL),
('116-TRIAL-1511656030485-73 271', '86-TRIAL-1200 (generated) 263', '113-TRIAL-changelog.groovy 55', '2018-05-09 17:05:20', 73, '285-TRIAL-', '12-TRIAL-7:1275837f40a3db8c903 8', '32-TRIAL-addForeignKeyConstraint 245', '113-TRIAL- 156', NULL, '121-TRIAL-3.4.2 58', NULL, NULL),
('246-TRIAL-1511656030485-74 82', '181-TRIAL-1200 (generated) 244', '96-TRIAL-changelog.groovy 122', '2018-05-09 17:05:20', 74, '229-TRIAL-', '135-TRIAL-7:cffad539ff7bec55cb 50', '73-TRIAL-addForeignKeyConstraint 266', '44-TRIAL- 59', NULL, '192-TRIAL-3.4.2 39', NULL, NULL),
('153-TRIAL-1511656030485-75 224', '54-TRIAL-1200 (generated) 110', '245-TRIAL-changelog.groovy 249', '2018-05-09 17:05:20', 75, '286-TRIAL-', '274-TRIAL-7:77e28e89df58058041 122', '68-TRIAL-addForeignKeyConstraint 218', '187-TRIAL- 5', NULL, '258-TRIAL-3.4.2 191', NULL, NULL),
('2-TRIAL-1511656030485-76 25', '77-TRIAL-1200 (generated) 214', '14-TRIAL-changelog.groovy 24', '2018-05-09 17:05:20', 76, '234-TRIAL-', '72-TRIAL-7:1ae371fc87a49de7889 59', '133-TRIAL-addForeignKeyConstraint 170', '287-TRIAL- 97', NULL, '18-TRIAL-3.4.2 77', NULL, NULL),
('73-TRIAL-1511656030485-77 170', '263-TRIAL-1200 (generated) 268', '92-TRIAL-changelog.groovy 185', '2018-05-09 17:05:20', 77, '102-TRIAL-', '113-TRIAL-7:ee2c06de26cc5db448 127', '2-TRIAL-addForeignKeyConstraint 199', '227-TRIAL- 225', NULL, '43-TRIAL-3.4.2 124', NULL, NULL),
('223-TRIAL-1511656030485-78 272', '161-TRIAL-1200 (generated) 81', '103-TRIAL-changelog.groovy 132', '2018-05-09 17:05:20', 78, '105-TRIAL-', '225-TRIAL-7:49853c6306b6361dd4 131', '92-TRIAL-addForeignKeyConstraint 142', '122-TRIAL- 86', NULL, '164-TRIAL-3.4.2 100', NULL, NULL),
('287-TRIAL-1511656030485-79 260', '213-TRIAL-1200 (generated) 74', '170-TRIAL-changelog.groovy 70', '2018-05-09 17:05:20', 79, '235-TRIAL-', '211-TRIAL-7:2ed55796414d10825f 260', '296-TRIAL-addForeignKeyConstraint 167', '85-TRIAL- 250', NULL, '140-TRIAL-3.4.2 194', NULL, NULL),
('295-TRIAL-1511656030485-80 24', '119-TRIAL-1200 (generated) 25', '176-TRIAL-changelog.groovy 94', '2018-05-09 17:05:20', 80, '158-TRIAL-', '271-TRIAL-7:f0ad711ba066542abb 266', '178-TRIAL-addForeignKeyConstraint 93', '151-TRIAL- 284', NULL, '118-TRIAL-3.4.2 264', NULL, NULL),
('119-TRIAL-1511656030485-81 52', '100-TRIAL-1200 (generated) 87', '160-TRIAL-changelog.groovy 126', '2018-05-09 17:05:20', 81, '10-TRIAL-', '70-TRIAL-7:7656d455f4218900d51 215', '276-TRIAL-addForeignKeyConstraint 227', '43-TRIAL- 258', NULL, '264-TRIAL-3.4.2 9', NULL, NULL),
('82-TRIAL-1511656030485-82 286', '165-TRIAL-1200 (generated) 187', '177-TRIAL-changelog.groovy 74', '2018-05-09 17:05:20', 82, '225-TRIAL-', '229-TRIAL-7:bcaa183d7c2046a705 128', '223-TRIAL-addForeignKeyConstraint 20', '2-TRIAL- 262', NULL, '123-TRIAL-3.4.2 296', NULL, NULL),
('137-TRIAL-1511656030485-83 61', '295-TRIAL-1200 (generated) 125', '64-TRIAL-changelog.groovy 160', '2018-05-09 17:05:20', 83, '202-TRIAL-', '230-TRIAL-7:7687c01b665d189de7 226', '211-TRIAL-addForeignKeyConstraint 171', '111-TRIAL- 47', NULL, '153-TRIAL-3.4.2 220', NULL, NULL),
('90-TRIAL-1511656030485-84 224', '188-TRIAL-1200 (generated) 163', '140-TRIAL-changelog.groovy 151', '2018-05-09 17:05:20', 84, '62-TRIAL-', '0-TRIAL-7:615efe6df35ee9c607ba 13', '58-TRIAL-addForeignKeyConstraint 178', '265-TRIAL- 107', NULL, '77-TRIAL-3.4.2 0', NULL, NULL),
('258-TRIAL-1511656030485-85 139', '203-TRIAL-1200 (generated) 160', '157-TRIAL-changelog.groovy 224', '2018-05-09 17:05:20', 85, '177-TRIAL-', '113-TRIAL-7:bc7cd2a56290c4fa63 187', '1-TRIAL-addForeignKeyConstraint 50', '60-TRIAL- 228', NULL, '93-TRIAL-3.4.2 84', NULL, NULL),
('205-TRIAL-1511656030485-86 240', '211-TRIAL-1200 (generated) 204', '235-TRIAL-changelog.groovy 256', '2018-05-09 17:05:20', 86, '72-TRIAL-', '223-TRIAL-7:ed6746849f70fedee5 85', '156-TRIAL-addForeignKeyConstraint 116', '126-TRIAL- 57', NULL, '126-TRIAL-3.4.2 157', NULL, NULL),
('237-TRIAL-1511656030485-87 171', '169-TRIAL-1200 (generated) 261', '296-TRIAL-changelog.groovy 122', '2018-05-09 17:05:20', 87, '217-TRIAL-', '117-TRIAL-7:ebcde87b4f1e80bd58 96', '185-TRIAL-addForeignKeyConstraint 41', '123-TRIAL- 129', NULL, '229-TRIAL-3.4.2 65', NULL, NULL),
('259-TRIAL-1511656030485-88 232', '96-TRIAL-1200 (generated) 155', '53-TRIAL-changelog.groovy 162', '2018-05-09 17:05:20', 88, '284-TRIAL-', '54-TRIAL-7:6e6b8d1c3802b6e61af 172', '157-TRIAL-addForeignKeyConstraint 269', '32-TRIAL- 263', NULL, '207-TRIAL-3.4.2 83', NULL, NULL),
('11-TRIAL-1511656030485-89 235', '167-TRIAL-1200 (generated) 48', '175-TRIAL-changelog.groovy 38', '2018-05-09 17:05:20', 89, '123-TRIAL-', '54-TRIAL-7:03104f01971b7d3723e 211', '241-TRIAL-addForeignKeyConstraint 75', '159-TRIAL- 125', NULL, '221-TRIAL-3.4.2 170', NULL, NULL),
('126-TRIAL-1511656030485-90 134', '205-TRIAL-1200 (generated) 283', '150-TRIAL-changelog.groovy 298', '2018-05-09 17:05:20', 90, '79-TRIAL-', '193-TRIAL-7:db5e5ba3801436ab36 134', '137-TRIAL-addForeignKeyConstraint 134', '156-TRIAL- 193', NULL, '276-TRIAL-3.4.2 205', NULL, NULL),
('62-TRIAL-1511656030485-91 48', '281-TRIAL-1200 (generated) 0', '13-TRIAL-changelog.groovy 141', '2018-05-09 17:05:20', 91, '55-TRIAL-', '242-TRIAL-7:fcbf0a324647f6eb54 62', '11-TRIAL-addForeignKeyConstraint 277', '24-TRIAL- 278', NULL, '252-TRIAL-3.4.2 143', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `databasechangeloglock`
--

CREATE TABLE IF NOT EXISTS `databasechangeloglock` (
  `id` int(32) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `lockgranted` timestamp NULL DEFAULT NULL,
  `lockedby` char(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `databasechangeloglock`
--

INSERT INTO `databasechangeloglock` (`id`, `locked`, `lockgranted`, `lockedby`) VALUES
(1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `embarques`
--

CREATE TABLE IF NOT EXISTS `embarques` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `archivo_evidencia` char(255) COLLATE utf8_bin DEFAULT NULL,
  `codigo` char(255) COLLATE utf8_bin DEFAULT NULL,
  `date_created` timestamp NOT NULL,
  `demora` int(32) NOT NULL,
  `empresa_id` char(255) COLLATE utf8_bin NOT NULL,
  `establecimiento_id` char(255) COLLATE utf8_bin NOT NULL,
  `estatus` char(11) COLLATE utf8_bin NOT NULL,
  `fecha_hora_entrega` timestamp NOT NULL,
  `id_autor` bigint(64) DEFAULT NULL,
  `id_repartidor_id` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_embarquescodigo_col` (`codigo`),
  KEY `FK_102n9jgpvxtgdyn6cnrehs2bn` (`id_autor`),
  KEY `FK_2cpju9ted9vbjhldivhraes8m` (`establecimiento_id`),
  KEY `FK_2yxf7ooasm685csuxk9g081cg` (`empresa_id`),
  KEY `FK_auaasegoc04uefgs6ir63f6lb` (`id_repartidor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `embarques`
--

INSERT INTO `embarques` (`id`, `archivo_evidencia`, `codigo`, `date_created`, `demora`, `empresa_id`, `establecimiento_id`, `estatus`, `fecha_hora_entrega`, `id_autor`, `id_repartidor_id`, `last_updated`) VALUES
('ff808081614f940e0161e46ffd9a0166', NULL, '180306IEIA0900', '2018-03-02 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-06 15:00:00', NULL, NULL, '2018-03-02 08:00:00'),
('ff808081614f940e0161e9965936017d', NULL, '180307IEIA0900', '2018-03-03 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-07 15:00:00', NULL, NULL, '2018-03-03 08:00:00'),
('ff808081614f940e01620356253601ab', 'Evidencia_1520955462465.jpg', '180312IEIA1200', '2018-03-08 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-12 18:00:00', NULL, 19, '2018-03-13 21:37:42'),
('ff808081614f940e0162087c813901ba', 'Evidencia_1520958083014.jpg', '180313IEIA1200', '2018-03-09 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-13 18:00:00', NULL, 19, '2018-03-13 22:21:23'),
('ff808081614f940e01620da2dd3301d6', 'Evidencia_1521052497705.jpg', '180314IEIA1200', '2018-03-10 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-14 18:00:00', NULL, 19, '2018-03-15 00:34:58'),
('ff80808162283e0a0162652ef95b0092', NULL, '180331IEIA0900', '2018-03-27 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-31 15:00:00', NULL, NULL, '2018-03-27 08:00:00'),
('ff808081614f940e016212c9393e01eb', 'Evidencia_1521140082129.jpg', '180315IEIA1200', '2018-03-11 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-15 18:00:00', NULL, 19, '2018-03-16 00:54:42'),
('ff80808162283e0a01623bfc19360061', NULL, '180323IEIA0900', '2018-03-19 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-23 15:00:00', NULL, NULL, '2018-03-19 08:00:00'),
('ff80808162283e0a01622c8905830037', 'Evidencia_1521571070459.jpg', '180320IEIA1200', '2018-03-16 08:00:00', 5, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-20 18:00:00', NULL, 19, '2018-03-21 00:37:50'),
('ff80808162283e0a016231af61390040', 'Evidencia_1521660515916.jpg', '180321IEIA1200', '2018-03-17 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-21 18:00:00', NULL, 19, '2018-03-22 01:28:36'),
('ff80808162283e0a01624b6f2d350070', NULL, '180326IEIA1200', '2018-03-22 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 18:00:00', NULL, NULL, '2018-03-22 08:00:00'),
('ff80808162283e0a01624b6f2d510071', NULL, '180326IEIA0900', '2018-03-22 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 15:00:00', NULL, NULL, '2018-03-22 08:00:00'),
('ff80808162283e0a016236d5bd27005e', 'Evidencia_1521734094135.jpg', '180322IEIA0900', '2018-03-18 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-22 15:00:00', NULL, 19, '2018-03-22 21:54:54'),
('ff80808162283e0a016236d5bd40005f', 'Evidencia_1521734179820.jpg', '180322IEIA1200', '2018-03-18 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-22 18:00:00', NULL, 19, '2018-03-22 21:56:20'),
('ff80808162283e0a01625095894b0076', NULL, '180327IEIA1200', '2018-03-23 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-27 18:00:00', NULL, NULL, '2018-03-23 08:00:00'),
('ff80808162283e0a0162652ef9310091', NULL, '180331IEIA1200', '2018-03-27 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-31 18:00:00', NULL, NULL, '2018-03-27 08:00:00'),
('ff80808162283e0a0162509589370075', NULL, '180327IEIA0900', '2018-03-23 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Cocinando', '2018-03-27 15:00:00', NULL, NULL, '2018-03-30 12:09:08'),
('ff808081626a161b016279c8694d0032', NULL, '180404IEIA0900', '2018-03-31 08:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-04 14:00:00', NULL, NULL, '2018-03-31 08:00:00'),
('ff80808162adb3bc0162babef722002d', 'Evidencia_1523905191240.jpg', '180416IEIA1200', '2018-04-12 21:45:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-04-16 17:00:00', NULL, 19, '2018-04-16 23:59:51'),
('ff80808162adb3bc0162db33603c0043', NULL, '180423IEIA1200', '2018-04-19 05:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-23 17:00:00', NULL, NULL, '2018-04-19 05:00:00'),
('ff80808162adb3bc0162e580184a0047', NULL, '180425IEIA1200', '2018-04-21 05:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-25 17:00:00', NULL, NULL, '2018-04-21 05:00:00'),
('ff80808162adb3bc0162cf653846003b', 'Evidencia_1524333503019.jpg', '180420IEIA1200', '2018-04-16 21:59:00', 15, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-04-20 17:00:00', NULL, 19, '2018-04-21 22:58:23'),
('ff80808162adb3bc0162eaa6744b004e', NULL, '180426IEIA1200', '2018-04-22 05:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-26 17:00:00', NULL, NULL, '2018-04-22 05:00:00'),
('ff80808162adb3bc0163046640290059', NULL, '180501IEIA1200', '2018-04-27 05:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-01 17:00:00', NULL, NULL, '2018-04-27 05:00:00'),
('ff80808162adb3bc016317c3d4b9005d', NULL, '180504IEIA1200', '2018-04-30 23:15:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-04 17:00:00', NULL, NULL, '2018-04-30 23:15:00'),
('ff80808162adb3bc01633bde145c0067', NULL, '180511IEIA1200', '2018-05-07 23:30:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-11 17:00:00', NULL, NULL, '2018-05-07 23:30:00'),
('ff8080816345dd260163cc619fb70066', NULL, '180608IEIA1200', '2018-06-05 00:59:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-06-08 17:00:00', NULL, NULL, '2018-06-05 00:59:00'),
('ff8080816345dd260163adcec7dc0042', NULL, '180602IEIA1200', '2018-05-30 02:30:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-06-02 17:00:00', NULL, NULL, '2018-05-30 02:30:00'),
('ff8080816345dd260163d6098c4a0087', NULL, '18061012341500', '2018-06-06 21:59:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Nuevo', '2018-06-10 20:00:00', NULL, NULL, '2018-06-06 21:59:00'),
('ff8080816345dd2601636081a8430030', 'Evidencia_1527710041192.jpg', '180518IEIA0900', '2018-05-15 02:15:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-05-18 14:00:00', NULL, 19, '2018-05-31 00:54:01'),
('ff8080816345dd2601635f7cbb7e0029', 'Evidencia_1527710091609.jpg', '180518IEIA1200', '2018-05-14 21:30:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-05-18 17:00:00', NULL, 19, '2018-05-31 00:54:52'),
('2c9fa607643e159501643e8a2ce50000', NULL, '180701IEIA1200', '2018-06-27 05:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-07-01 17:00:00', NULL, NULL, '2018-06-27 05:00:00'),
('ff8080816345dd260163e168ecb8009c', NULL, '18061212342000', '2018-06-09 02:59:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'En tránsito', '2018-06-13 01:00:00', NULL, 48, '2018-06-28 00:04:36'),
('2c9fa607644c96ae01644dfd41050000', NULL, '180704IEIA1200', '2018-06-30 05:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-07-04 17:00:00', NULL, NULL, '2018-06-30 05:00:00'),
('ff8080816345dd260163d78afc22008f', 'Evidencia_1531164995012.jpg@ff8080816345dd260163d78afc22008f', '18061112341000', '2018-06-07 05:00:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Entregado', '2018-06-11 15:00:00', NULL, 47, '2018-07-10 00:36:35'),
('2c9fa607643e1595016448d6e4740001', 'Evidencia_1531780371934.jpg@2c9fa607643e1595016448d6e4740001', '18070312342000', '2018-06-29 05:00:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Entregado', '2018-07-04 01:00:00', NULL, 47, '2018-07-17 03:32:52'),
('2c9fa607644c96ae016453239c720001', 'Evidencia_1531784786438.jpg@2c9fa607644c96ae016453239c720001', '18070512341000', '2018-07-01 05:00:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Entregado', '2018-07-05 15:00:00', NULL, 47, '2018-07-17 04:46:27'),
('ff8080816345dd260163cd151136007b', 'Evidencia_1531164914267.jpg@ff8080816345dd260163cd151136007b', '18060812341500', '2018-06-05 04:15:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Entregado', '2018-06-08 20:00:00', NULL, 47, '2018-07-10 00:35:15'),
('ff8080816345dd260163dab539f70096', 'Evidencia_1531165510344.jpg@ff8080816345dd260163dab539f70096', '18061112342000', '2018-06-07 19:45:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Entregado', '2018-06-12 01:00:00', NULL, 47, '2018-07-10 00:45:11'),
('2c9fa607644c96ae01645849f86f0003', 'Evidencia_1531940323733.jpg@2c9fa607644c96ae01645849f86f0003', '18070612341500', '2018-07-02 05:00:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Entregado', '2018-07-06 20:00:00', NULL, 47, '2018-07-18 23:58:44'),
('2c9fa60764624d39016467bd0c960001', 'Evidencia_1531940812935.jpg@2c9fa60764624d39016467bd0c960001', '18070912341500', '2018-07-05 05:00:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Entregado', '2018-07-09 20:00:00', NULL, 47, '2018-07-19 00:06:53'),
('2c9fa607646e1ca501647209c4ab0006', 'Evidencia_1531944070345.jpg@2c9fa607646e1ca501647209c4ab0006', '18071112341000', '2018-07-07 05:00:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Entregado', '2018-07-11 15:00:00', NULL, 47, '2018-07-19 01:01:11'),
('2c9fa607646e1ca501648bc9907a0036', 'Evidencia_1531944383132.jpg@2c9fa607646e1ca501648bc9907a0036', '18071612342000', '2018-07-12 05:00:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Entregado', '2018-07-17 01:00:00', NULL, 47, '2018-07-19 01:06:24'),
('2c9fa607646e1ca50164de2f50780039', NULL, '180801IEIA0900', '2018-07-28 05:00:00', 0, 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-08-01 14:00:00', NULL, NULL, '2018-07-28 05:00:00'),
('2c9fa607644c96ae016453239c920002', 'Evidencia_1531938926680.jpg@2c9fa607644c96ae016453239c920002', '18070512341500', '2018-07-01 05:00:00', 0, 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Entregado', '2018-07-05 20:00:00', NULL, 47, '2018-07-18 23:35:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `embarques_ordenesdetalles`
--

CREATE TABLE IF NOT EXISTS `embarques_ordenesdetalles` (
  `ws_embarque_ordenes_id` char(255) COLLATE utf8_bin NOT NULL,
  `orden_detalle_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `FK_4uthlmeusbsuc2vyk6m6dr7im` (`orden_detalle_id`),
  KEY `FK_kmijsjmwjv8w553vrrj3y66bs` (`ws_embarque_ordenes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `archivo_foto` char(255) COLLATE utf8_bin DEFAULT NULL,
  `ciudad` char(255) COLLATE utf8_bin NOT NULL,
  `codigo` char(255) COLLATE utf8_bin NOT NULL,
  `contacto` char(255) COLLATE utf8_bin DEFAULT NULL,
  `contacto_cargo` char(255) COLLATE utf8_bin DEFAULT NULL,
  `contacto_email` char(255) COLLATE utf8_bin NOT NULL,
  `contacto_telefono` char(255) COLLATE utf8_bin NOT NULL,
  `cp` char(255) COLLATE utf8_bin DEFAULT NULL,
  `date_created` timestamp NOT NULL,
  `domicilio` text COLLATE utf8_bin,
  `establecimiento_id` char(255) COLLATE utf8_bin NOT NULL,
  `giro` char(18) COLLATE utf8_bin NOT NULL,
  `hora_entrega_1` char(255) COLLATE utf8_bin DEFAULT NULL,
  `hora_entrega_2` char(255) COLLATE utf8_bin DEFAULT NULL,
  `hora_entrega_3` char(255) COLLATE utf8_bin DEFAULT NULL,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `no_empleados` int(32) NOT NULL,
  `nombre` char(255) COLLATE utf8_bin NOT NULL,
  `razon_social` char(255) COLLATE utf8_bin NOT NULL,
  `rfc` char(255) COLLATE utf8_bin NOT NULL,
  `telefono` char(255) COLLATE utf8_bin DEFAULT NULL,
  `url` char(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_empresascodigo_col` (`codigo`),
  UNIQUE KEY `uc_empresasnombre_col` (`nombre`),
  KEY `FK_khfc8odgawqyomc69p8g2nonr` (`establecimiento_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `activo`, `archivo_foto`, `ciudad`, `codigo`, `contacto`, `contacto_cargo`, `contacto_email`, `contacto_telefono`, `cp`, `date_created`, `domicilio`, `establecimiento_id`, `giro`, `hora_entrega_1`, `hora_entrega_2`, `hora_entrega_3`, `id_autor`, `last_updated`, `no_empleados`, `nombre`, `razon_social`, `rfc`, `telefono`, `url`) VALUES
('ff808081614f940e01614fce2547002a', 0, NULL, 'Cuernavaca', '0001', 'Jorge Ceyca', 'Gerente', 'nissan@gmail.com', '777 777-7777', '62440', '2018-02-01 11:19:26', 'Autopista México-Acapulco 745', 'ff808081614f940e01614fcbbf050029', 'Sector privado', '08:00 AM', '01:00 PM', '07:00 PM', 14, '2018-03-04 02:57:10', 100, 'Nissan Cuernavaca', 'Nissan Cuernavca', 'IARW731123T22', '777 777-7777', 'www.nissan.com.mx'),
('ff808081614f940e0161afe7434c0108', 1, NULL, 'San Luis Potosí, SLP', 'IEIA', 'Guadalupe Carrión', 'Auxiliar Administrativo', 'gcarrion@ieia.com.mx', '(444) 825-5076', '78216', '2018-02-20 03:10:24', 'Av. Cordillera Occidental #635, Lomas 4a sección', 'ff808081614f940e0161a52a2c3300ec', 'Sector privado', '09:00 AM', '12:00 PM', NULL, 8, '2018-03-06 23:14:41', 20, 'IEIA', 'Instituto de Evaluación e Ingeniería Avanzada S.C.', 'IEI010123GC5', '(444) 825-5077', NULL),
('ff8080816345dd260163ccdac7f9006b', 1, NULL, 'CDMX', '1234', NULL, NULL, 'luis05021990@gmail.com', '(555) 555-5555', NULL, '2018-06-05 03:11:20', NULL, 'ff8080816345dd260163ccc6d0d80069', 'Sector privado', '10:00 AM', '03:00 PM', '08:00 PM', 8, '2018-06-05 03:11:20', 30, 'Bambu', 'Software', 'BAMBU12345678', '(555) 555-5555', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimientos`
--

CREATE TABLE IF NOT EXISTS `establecimientos` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `administrador_id` bigint(64) DEFAULT NULL,
  `ciudad` char(255) COLLATE utf8_bin NOT NULL,
  `codigo` char(255) COLLATE utf8_bin NOT NULL,
  `cp` char(255) COLLATE utf8_bin DEFAULT NULL,
  `date_created` timestamp NOT NULL,
  `domicilio` text COLLATE utf8_bin,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `nombre` char(255) COLLATE utf8_bin NOT NULL,
  `telefono` char(255) COLLATE utf8_bin DEFAULT NULL,
  `total_vendido` float(24,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `establecimientos`
--

INSERT INTO `establecimientos` (`id`, `administrador_id`, `ciudad`, `codigo`, `cp`, `date_created`, `domicilio`, `id_autor`, `last_updated`, `nombre`, `telefono`, `total_vendido`) VALUES
('ff808081614f940e01614fcbbf050029', 10, 'Cuernavaca', '0001', '62440', '2018-02-01 11:16:48', 'Lomas de Córtez', 14, '2018-02-01 11:16:48', 'Samba cuernavaca', '777 777-7777', 0),
('ff808081614f940e0161a52a2c3300ec', 18, 'San Luis Potosí', 'FDCA', '78364', '2018-02-18 01:07:40', 'Flor de Canela #125 A Colonia Las Flores.', 8, '2018-06-05 00:57:52', 'Flor de Canela', '444 811-5838', 8036),
('ff8080816345dd260163ccc6d0d80069', 42, 'CMDX', '1234', '04710', '2018-06-05 02:49:32', 'Avery Brundage 6, Olímipica', 8, '2018-06-29 18:30:36', 'Cocina Bambu', '555 555-5555', 710);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extras`
--

CREATE TABLE IF NOT EXISTS `extras` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `archivo_foto` char(255) COLLATE utf8_bin DEFAULT NULL,
  `categoria_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  `costo` float(24,0) NOT NULL,
  `date_created` timestamp NOT NULL,
  `descripcion` text COLLATE utf8_bin,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `nombre` char(255) COLLATE utf8_bin NOT NULL,
  `precio` float(24,0) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_extrasnombre_col` (`nombre`),
  KEY `FK_20i9f6uqc0swiiicw1c9r2c06` (`categoria_id`),
  KEY `FK_2lslgap6yx4ful5blqtw7p0jn` (`id_autor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `extras`
--

INSERT INTO `extras` (`id`, `archivo_foto`, `categoria_id`, `costo`, `date_created`, `descripcion`, `id_autor`, `last_updated`, `nombre`, `precio`) VALUES
('ff808081614f940e01614f94426c001f', 'Extra_1519079677673.jpg', 'ff808081614f940e01614f9441c20007', 1, '2018-02-01 10:16:12', 'Raíz que protege al hígado y ayuda a mantener una presión arterial saludable.', NULL, '2018-03-08 01:23:43', 'Cúrcuma', 15),
('ff808081614f940e0161af5494d600fe', 'Extra_1519079704376.jpg', 'ff808081614f940e01618bd78e950038', 0, '2018-02-20 00:30:11', 'Polvo de guaraná que aumenta la energía suavemente.', 8, '2018-03-08 01:24:11', 'Energizante', 15),
('ff808081614f940e0161af5fcd810101', 'Extra_1520105131650.jpg', 'ff808081614f940e01618bd78e950038', 3, '2018-02-20 00:42:27', 'Aderezo César extra para dar mayor sabor a tu ensalada.', 8, '2018-03-08 01:24:52', 'Extra aderezo César', 15),
('ff808081614f940e0161e84a3fa8016b', 'Extra_1520020635559.jpg', 'ff808081614f940e01618bd78e950038', 2, '2018-03-03 01:57:16', 'Añade jamón de pavo a tus ensaladas o a cualquier platillo.', 8, '2018-03-08 01:33:27', 'Jamón', 15),
('ff808081614f940e0161af3576fe00fa', 'Extra_1519062972156.png', 'ff808081614f940e01618bd78e950038', 7, '2018-02-19 23:56:12', 'Proteína de suero de leche que apoya el crecimiento del músculo después de cargar pesas.', 8, '2018-03-08 01:45:19', 'Proteína de leche', 15),
('ff808081614f940e0161af0e83b100f2', 'Extra_1519060492550.jpg', 'ff808081614f940e01614f9441e0000b', 0, '2018-02-19 23:13:40', 'Raíz que disminuye la colitis y gastritis.  Ayuda a eliminar el apetito.', 8, '2018-03-08 01:36:39', 'Jengibre', 15),
('ff808081614f940e0161af1e58d900f7', 'Extra_1519061457112.jpg', 'ff808081614f940e01614f9441d40009', 2, '2018-02-19 23:30:57', 'Raíz que aumenta la fuerza muscular y masa magra de deportistas al cargar pesas.', 8, '2018-03-08 01:40:56', 'Maca', 15),
('ff808081614f940e01614f94427e0021', 'Extra_1519079589651.jpg', 'ff808081614f940e01614f9441ce0008', 0, '2018-02-01 10:16:12', 'Cereal sin gluten con alto contenido en aminoácidos.', NULL, '2018-03-08 01:20:45', 'Amaranto', 15),
('ff808081614f940e0161e83520120168', 'Extra_1520092215313.jpg', 'ff808081614f940e01618bd78e950038', 9, '2018-03-03 01:34:11', 'Deliciosa mezcla de atún con verduras y mayonesa.', 8, '2018-03-08 01:21:25', 'Atún', 20),
('ff808081614f940e01614f9442870023', 'Extra_1519079630582.jpg', 'ff808081614f940e01614f9441c20007', 1, '2018-02-01 10:16:12', 'Semilla alta en proteínas y omega 3 para mantener la salud del corazón.', NULL, '2018-03-08 01:22:24', 'Chia', 15),
('ff808081614f940e0161af61cd690103', 'Extra_1519080002333.jpg', 'ff808081614f940e01618bd78e950038', 3, '2018-02-20 00:44:38', 'Agrega aderezo de la casa para dar más sabor a tus comidas.', 8, '2018-03-08 01:27:23', 'Extra aderezo De la casa', 15),
('ff808081614f940e0161e83bc23f0169', 'Extra_1520019685947.jpg', 'ff808081614f940e01618bd78e950038', 3, '2018-03-03 01:41:26', 'Queso extra para tu platillo.', 8, '2018-03-08 01:47:20', 'Queso gouda', 15),
('ff808081614f940e0161af630a360105', 'Extra_1520105163357.jpg', 'ff808081614f940e01618bd78e950038', 6, '2018-02-20 00:45:59', 'Añade aderezo de ciruela a tus ensaladas.', 8, '2018-03-08 01:25:54', 'Extra aderezo Ciruela', 15),
('ff808081614f940e0161af614ca10102', 'Extra_1519079531288.jpg', 'ff808081614f940e01614f9441da000a', 4, '2018-02-20 00:44:05', 'Acompaña tus comidas con aderezo de miel y mostaza.', 8, '2018-03-08 01:30:14', 'Extra aderezo Miel y mostaza', 15),
('ff808081614f940e0161af5c86910100', 'Extra_1520105186878.jpg', 'ff808081614f940e01614f9441ce0008', 5, '2018-02-20 00:38:52', 'Aderezo griego extra para dar más sabor a tu comida.', 8, '2018-03-08 01:29:14', 'Extra aderezo Griego', 15),
('ff808081614f940e0161af626c990104', 'Extra_1519079547797.jpg', 'ff808081614f940e01618bd78e950038', 4, '2018-02-20 00:45:19', 'Añade aderezo ranch a tus ensaladas para darles más sabor.', 8, '2018-03-08 01:30:37', 'Extra aderezo Ranch', 15),
('ff808081614f940e01614f944258001d', 'Extra_1519079572824.jpg', 'ff808081614f940e01614f9441c20007', 3, '2018-02-01 10:16:12', 'Fruto seco que reduce el riesgo de sufrir infartos y ayuda a la salud cerebral.', NULL, '2018-03-08 01:19:09', 'Almendras', 15),
('ff808081614f940e01614f9442910024', 'granola.png', 'ff808081614f940e01614f9441e0000b', 1, '2018-02-01 10:16:12', 'Mezcla de avena con semillas y un toque de miel, ideal para acompañar cualquier bebida.', NULL, '2018-03-08 01:32:51', 'Granola', 15),
('ff808081614f940e01614f9442770020', 'Extra_1519079613549.jpg', 'ff808081614f940e01614f9441ce0008', 1, '2018-02-01 10:16:12', 'Cereal que aporta gran cantidad de energía y es saludable para el corazón.', NULL, '2018-03-08 01:21:52', 'Avena', 15),
('ff808081614f940e0161af1149cc00f3', 'Extra_1519060601291.jpg', 'ff808081614f940e01614f9441e8000c', 6, '2018-02-19 23:16:41', 'Leche vegetal a base de almendras, ideal para personas intolerantes a la lactosa y al gluten.', 8, '2018-03-08 01:38:39', 'Leche de almendras', 15),
('ff808081614f940e0161af1300b400f4', 'Extra_1519060713651.jpg', 'ff808081614f940e01614f9441e8000c', 8, '2018-02-19 23:18:34', 'Leche vegetal de arroz que te da energía sin dañar tu intestino.', 8, '2018-03-08 01:39:05', 'Leche de arroz', 15),
('ff808081614f940e0161af1517ea00f5', 'Extra_1519060850665.jpg', 'ff808081614f940e01614f9441e8000c', 5, '2018-02-19 23:20:51', 'Bebida de coco rica en potasio y fósforo. Ideal para intolerantes a la lactosa.', 8, '2018-03-08 01:39:34', 'Leche de coco', 15),
('ff808081614f940e0161af183df800f6', 'Extra_1519061102675.jpg', 'ff808081614f940e01614f9441ce0008', 1, '2018-02-19 23:24:17', 'Semillas ricas en omega 3 que barre el colesterol malo.  Mejora el funcionamiento intestinal y combate el estreñimiento.', 8, '2018-03-08 01:40:27', 'Linaza', 15),
('ff808081614f940e0161af2134ec00f8', 'Extra_1519061644523.jpg', 'ff808081614f940e01614f9441c20007', 0, '2018-02-19 23:34:05', 'Planta ideal para bajar niveles de glucosa y presión arterial en casos de diabetes e hipertensión.', 8, '2018-03-08 01:41:20', 'Moringa', 15),
('ff808081614f940e0161af24e6cf00f9', 'Extra_1519061886670.jpg', 'ff808081614f940e01614f9441d40009', 8, '2018-02-19 23:38:07', 'Oleaginosa rica en ácidos grasos esenciales para la salud del cerebro y corazón.', 8, '2018-03-08 01:41:52', 'Nuez', 15),
('ff808081614f940e0161e84c21c3016c', 'Extra_1520020758979.jpg', 'ff808081614f940e01618bd78e950038', 2, '2018-03-03 01:59:19', 'Añade pepperoni a tu emparedado o a cualquier platillo.', 8, '2018-03-08 01:43:43', 'Pepperoni', 15),
('ff808081614f940e0161aed4844e00f1', 'Extra_1519056618573.jpg', 'ff808081614f940e01614f9441d40009', 13, '2018-02-19 22:10:19', 'Pollo sazonado y cocinado a la plancha para reducir el contenido calórico.', 8, '2018-03-08 01:44:20', 'Pollo a la plancha', 20),
('ff808081614f940e0161af37294800fb', 'Extra_1519063083336.jpg', 'ff808081614f940e01614f9441d40009', 7, '2018-02-19 23:58:03', 'Proteína vegetal que promueve el crecimiento muscular después de una rutina de ejercicio de pesas.', 8, '2018-03-08 01:46:01', 'Proteína de soya', 15),
('ff808081614f940e0161af5131d800fd', 'Extra_1519080190990.jpg', 'ff808081614f940e01614f9441d40009', 0, '2018-02-20 00:26:29', 'Fibra de nopal que reduce el apetito.', 8, '2018-03-08 01:46:36', 'Quemagrasa', 15),
('ff808081614f940e0161e83c5cbb016a', 'Extra_1520019725498.png', 'ff808081614f940e01614f9441d40009', 3, '2018-03-03 01:42:05', 'Agrega queso panela a tu emparedado, sopa o a cualquier platillo.', 8, '2018-03-08 01:47:57', 'Queso panela', 15),
('ff808081614f940e01614f9442830022', 'salvado.png', 'ff808081614f940e01614f9441ce0008', 0, '2018-02-01 10:16:12', 'Cereal con gran cantidad de fibraque mejora tu salud intestinal.', NULL, '2018-03-08 01:48:20', 'Salvado', 15),
('ff808081614f940e0161af57464900ff', 'Extra_1519079657882.jpg', 'ff808081614f940e01618bd78e950038', 4, '2018-02-20 00:33:08', 'Deliciosos trocitos de pan condimentado, ideal para acompañar ensaladas, cremas y sopas.', 8, '2018-03-08 01:22:57', 'Crutones', 15),
('ff808081614f940e0161e859ef07016f', 'Extra_1520021663495.jpg', 'ff808081614f940e01614f9441ce0008', 6, '2018-03-03 02:14:23', 'Añade fresas a cualquiera de tus platillos.', 8, '2018-03-08 01:31:03', 'Extra fresa', 15),
('ff808081614f940e0161e857ce52016e', 'Extra_1520021524049.jpg', 'ff808081614f940e01614f9441e0000b', 3, '2018-03-03 02:12:04', 'Agrega manzana a tus platillos.', 8, '2018-03-08 01:31:40', 'Extra manzana', 15),
('ff808081614f940e0161e853df06016d', 'Extra_1520021761288.jpg', 'ff808081614f940e01614f9441da000a', 1, '2018-03-03 02:07:46', 'Elige plátano como complemento.', 8, '2018-03-08 01:32:12', 'Extra plátano', 15),
('ff808081614f940e0161e85d20350170', 'Extra_1520021872692.jpg', 'ff808081614f940e01614f9441ce0008', 3, '2018-03-03 02:17:53', 'Sustituye la leche de vaca por leche vegetal de soya.', 8, '2018-03-08 01:39:57', 'Leche de soya', 15),
('ff808081614f940e0161e860609c0171', 'Extra_1520022085787.jpg', 'ff808081614f940e01618bd78e950038', 3, '2018-03-03 02:21:26', 'Agrega rebanadas de pechuga de pavo a tus platillos.', 8, '2018-03-08 01:43:00', 'Pechuga de pavo', 15),
('ff808081614f940e0161e8661fd20172', 'Extra_1520105228125.jpg', 'ff808081614f940e01618bd78e950038', 13, '2018-03-03 02:27:42', 'Añade pollo picante a tus platillos.', 8, '2018-03-08 01:44:47', 'Pollo blaze', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE IF NOT EXISTS `horarios` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL,
  `fecha_final` char(255) COLLATE utf8_bin NOT NULL,
  `fecha_inicio` char(255) COLLATE utf8_bin NOT NULL,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `matricula` char(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5a62gb4a1mdbsxdlb1yk3yp8m` (`id_autor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE IF NOT EXISTS `ingredientes` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `archivo_foto` char(255) COLLATE utf8_bin DEFAULT NULL,
  `date_created` timestamp NOT NULL,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `nombre` char(255) COLLATE utf8_bin NOT NULL,
  `unidad_medicion` char(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_ingredientesnombre_col` (`nombre`),
  KEY `FK_ho9ohegv977a7q9nkkpwemheq` (`id_autor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `archivo_foto`, `date_created`, `id_autor`, `last_updated`, `nombre`, `unidad_medicion`) VALUES
('ff808081614f940e01618f95bdf8003a', NULL, '2018-02-13 20:33:31', 8, '2018-02-13 20:33:31', 'Bollo integral con ajonjolí', 'g'),
('ff808081614f940e01618fb88e5f006f', NULL, '2018-02-13 21:11:32', 8, '2018-02-13 21:11:32', 'Calabacita', 'g'),
('ff808081614f940e01618f976a23003b', NULL, '2018-02-13 20:35:20', 8, '2018-02-13 20:35:20', 'Hummus de garbanzo', 'g'),
('ff808081614f940e01618f97b389003c', NULL, '2018-02-13 20:35:39', 8, '2018-02-13 20:35:39', 'Carne molida de res', 'g'),
('ff808081614f940e01618f97edac003d', NULL, '2018-02-13 20:35:54', 8, '2018-02-13 20:35:54', 'Mix de semillas', 'g'),
('ff808081614f940e01618f9896a7003f', NULL, '2018-02-13 20:36:37', 8, '2018-02-13 20:36:37', 'Queso gouda', 'g'),
('ff808081614f940e01618f98cd1b0040', NULL, '2018-02-13 20:36:51', 8, '2018-02-13 20:36:51', 'Lechuga italiana', 'g'),
('ff808081614f940e01618f99079f0041', NULL, '2018-02-13 20:37:06', 8, '2018-02-13 20:37:06', 'Pimiento morrón', 'g'),
('ff808081614f940e01618f993ac60042', NULL, '2018-02-13 20:37:19', 8, '2018-02-13 20:37:19', 'Cebolla', 'g'),
('ff808081614f940e01618f9968d40043', NULL, '2018-02-13 20:37:31', 8, '2018-02-13 20:37:31', 'Cebolla morada', 'g'),
('ff808081614f940e01618f999f4b0044', NULL, '2018-02-13 20:37:45', 8, '2018-02-13 20:37:45', 'Jitomate', 'g'),
('ff808081614f940e01618f9a5f760045', NULL, '2018-02-13 20:38:34', 8, '2018-02-13 20:38:34', 'Aderezo de la casa', 'ml'),
('ff808081614f940e01618f9ac1af0046', NULL, '2018-02-13 20:39:00', 8, '2018-02-13 20:39:00', 'Pan chapata integral', 'pieza'),
('ff808081614f940e01618f9862f8003e', NULL, '2018-02-13 20:36:24', 8, '2018-02-13 20:39:10', 'Jamón de pavo', 'rebanada'),
('ff808081614f940e01618f9ba4810047', NULL, '2018-02-13 20:39:58', 8, '2018-02-13 20:39:58', 'Aderezo de mostaza', 'ml'),
('ff808081614f940e01618f9be20a0048', NULL, '2018-02-13 20:40:13', 8, '2018-02-13 20:40:13', 'Aderezo de chipotle', 'ml'),
('ff808081614f940e01618f9c630c0049', NULL, '2018-02-13 20:40:46', 8, '2018-02-13 20:40:46', 'Atún', 'g'),
('ff808081614f940e01618f9ca094004a', NULL, '2018-02-13 20:41:02', 8, '2018-02-13 20:41:02', 'Verduras mixtas', 'g'),
('ff808081614f940e01618f9ccd35004b', NULL, '2018-02-13 20:41:14', 8, '2018-02-13 20:41:14', 'Pepino', 'g'),
('ff808081614f940e01618f9d12cc004c', NULL, '2018-02-13 20:41:31', 8, '2018-02-13 20:41:31', 'Jamón de pechuga de pavo', 'rebanada'),
('ff808081614f940e01618f9d51f7004d', NULL, '2018-02-13 20:41:48', 8, '2018-02-13 20:41:48', 'Baguette integral', 'pieza'),
('ff808081614f940e01618fa291de004e', NULL, '2018-02-13 20:47:32', 8, '2018-02-13 20:47:32', 'Pollo a la plancha', 'g'),
('ff808081614f940e01618fa2ee5f004f', NULL, '2018-02-13 20:47:55', 8, '2018-02-13 20:47:55', 'Pollo blaze', 'g'),
('ff808081614f940e01618fa331960050', NULL, '2018-02-13 20:48:12', 8, '2018-02-13 20:48:12', 'Tortilla de harina integral', 'pieza'),
('ff808081614f940e01618fa3c08f0051', NULL, '2018-02-13 20:48:49', 8, '2018-02-13 20:48:49', 'Baguel con parmesano', 'pieza'),
('ff808081614f940e01618fa409580052', NULL, '2018-02-13 20:49:08', 8, '2018-02-13 20:49:08', 'Aderezo de salmón', 'ml'),
('ff808081614f940e01618fa449bf0053', NULL, '2018-02-13 20:49:24', 8, '2018-02-13 20:49:24', 'Queso jack', 'rebanada'),
('ff808081614f940e01618fa4c5070054', NULL, '2018-02-13 20:49:56', 8, '2018-02-13 20:49:56', 'Jamón de cerdo', 'rebanada'),
('ff808081614f940e01618fa4fd210055', NULL, '2018-02-13 20:50:10', 8, '2018-02-13 20:50:10', 'Pan multigrano', 'rebanada'),
('ff808081614f940e01618fa533b20056', NULL, '2018-02-13 20:50:24', 8, '2018-02-13 20:50:24', 'Lechuga sangría', 'g'),
('ff808081614f940e01618fa57a210057', NULL, '2018-02-13 20:50:42', 8, '2018-02-13 20:50:42', 'Lechuga orejona', 'g'),
('ff808081614f940e01618fa5acec0058', NULL, '2018-02-13 20:50:55', 8, '2018-02-13 20:50:55', 'Espinaca', 'g'),
('ff808081614f940e01618fa5ded60059', NULL, '2018-02-13 20:51:08', 8, '2018-02-13 20:51:08', 'Manzana', 'g'),
('ff808081614f940e01618fa606e6005a', NULL, '2018-02-13 20:51:18', 8, '2018-02-13 20:51:18', 'Arándanos', 'g'),
('ff808081614f940e01618fa636ff005b', NULL, '2018-02-13 20:51:30', 8, '2018-02-13 20:51:30', 'Nuez de castilla', 'g'),
('ff808081614f940e01618fa677f1005c', NULL, '2018-02-13 20:51:47', 8, '2018-02-13 20:51:47', 'Uva', 'g'),
('ff808081614f940e01618fa6b67f005d', NULL, '2018-02-13 20:52:03', 8, '2018-02-13 20:52:03', 'Aderezo de ciruela', 'ml'),
('ff808081614f940e01618fa70c10005e', NULL, '2018-02-13 20:52:25', 8, '2018-02-13 20:52:25', 'Jugo de limón', 'ml'),
('ff808081614f940e01618fa77497005f', NULL, '2018-02-13 20:52:52', 8, '2018-02-13 20:52:52', 'Queso feta', 'g'),
('ff808081614f940e01618fa7b3950060', NULL, '2018-02-13 20:53:08', 8, '2018-02-13 20:53:08', 'Tzatziki', 'g'),
('ff808081614f940e01618faa039d0061', NULL, '2018-02-13 20:55:39', 8, '2018-02-13 20:55:39', 'Aderezo griego', 'g'),
('ff808081614f940e01618fac66a40062', NULL, '2018-02-13 20:58:16', 8, '2018-02-13 20:58:16', 'Queso parmesano rallado', 'g'),
('ff808081614f940e01618facf81a0063', NULL, '2018-02-13 20:58:53', 8, '2018-02-13 20:58:53', 'Queso parmesano en hojuela', 'g'),
('ff808081614f940e01618fb0501b0064', NULL, '2018-02-13 21:02:32', 8, '2018-02-13 21:02:32', 'Crutones', 'pieza'),
('ff808081614f940e01618fb09c420065', NULL, '2018-02-13 21:02:52', 8, '2018-02-13 21:02:52', 'Aceituna negra', 'g'),
('ff808081614f940e01618fb148b00066', NULL, '2018-02-13 21:03:36', 8, '2018-02-13 21:03:36', 'Aderezo césar', 'ml'),
('ff808081614f940e01618fb192c70067', NULL, '2018-02-13 21:03:55', 8, '2018-02-13 21:03:55', 'Aderezo de miel y mostaza', 'ml'),
('ff808081614f940e01618fb1cf5c0068', NULL, '2018-02-13 21:04:10', 8, '2018-02-13 21:04:10', 'Zanahoria', 'g'),
('ff808081614f940e01618fb1fd340069', NULL, '2018-02-13 21:04:22', 8, '2018-02-13 21:04:22', 'Aderezo ranch', 'ml'),
('ff808081614f940e01618fb23d3b006a', NULL, '2018-02-13 21:04:38', 8, '2018-02-13 21:04:38', 'Pan flat', 'pieza'),
('ff808081614f940e01618fb2824a006b', NULL, '2018-02-13 21:04:56', 8, '2018-02-13 21:04:56', 'Queso panela', 'g'),
('ff808081614f940e01618fb2cecd006c', NULL, '2018-02-13 21:05:16', 8, '2018-02-13 21:05:16', 'Jamón selva negra', '96-TRIAL-rebanada 73'),
('ff808081614f940e01618fb32a4c006d', NULL, '2018-02-13 21:05:39', 8, '2018-02-13 21:05:39', 'Aderezo tapenade', '140-TRIAL-ml 13'),
('ff808081614f940e01618fb357f7006e', NULL, '2018-02-13 21:05:51', 8, '2018-02-13 21:05:51', 'Berenjena', '275-TRIAL-g 272'),
('ff808081614f940e01618fb8ea4f0070', NULL, '2018-02-13 21:11:56', 8, '2018-02-13 21:11:56', 'Champiñones', '218-TRIAL-g 10'),
('ff808081614f940e01618fb915170071', NULL, '2018-02-13 21:12:07', 8, '2018-02-13 21:12:07', 'Portobello', '117-TRIAL-g 232'),
('ff808081614f940e0161902f0b9f0074', NULL, '2018-02-13 23:20:58', 8, '2018-02-13 23:20:58', 'Pasta integral', '212-TRIAL-g 95'),
('ff808081614f940e0161902f70f00075', NULL, '2018-02-13 23:21:24', 8, '2018-02-13 23:21:24', 'Pasta', '269-TRIAL-g 131'),
('ff808081614f940e016190384aef0076', NULL, '2018-02-13 23:31:04', 8, '2018-02-13 23:31:04', 'Puré de tomate', '240-TRIAL-ml 88'),
('ff808081614f940e01619038773e0077', NULL, '2018-02-13 23:31:15', 8, '2018-02-13 23:31:15', 'Sal', '185-TRIAL-g 190'),
('ff808081614f940e01619038ac390078', NULL, '2018-02-13 23:31:29', 8, '2018-02-13 23:31:29', 'Consomé', '297-TRIAL-g 189'),
('ff808081614f940e01619038f4dc0079', NULL, '2018-02-13 23:31:47', 8, '2018-02-13 23:31:47', 'Chile poblano', '190-TRIAL-g 145'),
('ff808081614f940e016190393036007a', NULL, '2018-02-13 23:32:02', 8, '2018-02-13 23:32:02', 'Hierbas finas', '153-TRIAL-g 114'),
('ff808081614f940e0161903961f9007b', NULL, '2018-02-13 23:32:15', 8, '2018-02-13 23:32:15', 'Orégano', '51-TRIAL-g 40'),
('ff808081614f940e01619039938f007c', NULL, '2018-02-13 23:32:28', 8, '2018-02-13 23:32:28', 'Sal de ajo', '144-TRIAL-g 158'),
('ff808081614f940e0161903a1760007d', NULL, '2018-02-13 23:33:02', 8, '2018-02-13 23:33:02', 'Leche deslactosada', '35-TRIAL-l 59'),
('ff808081614f940e0161903a40f3007e', NULL, '2018-02-13 23:33:12', 8, '2018-02-13 23:33:12', 'Crema', '92-TRIAL-g 105'),
('ff808081614f940e0161903a7015007f', NULL, '2018-02-13 23:33:24', 8, '2018-02-13 23:33:24', 'Arroz', '64-TRIAL-g 181'),
('ff808081614f940e0161903a9c5b0080', NULL, '2018-02-13 23:33:36', 8, '2018-02-13 23:33:36', 'Ajo', '3-TRIAL-g 229'),
('ff808081614f940e0161903acb9f0081', NULL, '2018-02-13 23:33:48', 8, '2018-02-13 23:33:48', 'Aceite de oliva', '75-TRIAL-ml 208'),
('ff808081614f940e0161903b06980082', NULL, '2018-02-13 23:34:03', 8, '2018-02-13 23:34:03', 'Yogurt', '192-TRIAL-ml 297'),
('ff808081614f940e0161903bdf000083', NULL, '2018-02-13 23:34:58', 8, '2018-02-13 23:34:58', 'Blue berry', '149-TRIAL-g 156'),
('ff808081614f940e0161903cc34a0084', NULL, '2018-02-13 23:35:57', 8, '2018-02-13 23:35:57', 'Fresa', '61-TRIAL-g 127'),
('ff808081614f940e0161903d5d6d0085', NULL, '2018-02-13 23:36:36', 8, '2018-02-13 23:36:36', 'Piña', '167-TRIAL-g 141'),
('ff808081614f940e0161903d8c010086', NULL, '2018-02-13 23:36:48', 8, '2018-02-13 23:36:48', 'Naranja', '29-TRIAL-g 40'),
('ff808081614f940e0161903db1ae0087', NULL, '2018-02-13 23:36:58', 8, '2018-02-13 23:36:58', 'Guayaba', '213-TRIAL-g 74'),
('ff808081614f940e0161903e36b30088', NULL, '2018-02-13 23:37:32', 8, '2018-02-13 23:37:32', 'Apio', '201-TRIAL-g 77'),
('ff808081614f940e0161903ead4f0089', NULL, '2018-02-13 23:38:02', 8, '2018-02-13 23:38:02', 'Gelatina sin azúcar', '115-TRIAL-g 283'),
('ff808081614f940e0161903ed3b6008a', NULL, '2018-02-13 23:38:12', 8, '2018-02-13 23:38:12', 'Mango', '113-TRIAL-g 292'),
('ff808081614f940e0161903f9d4b008b', NULL, '2018-02-13 23:39:04', 8, '2018-02-13 23:39:04', 'Harina de trigo', '24-TRIAL-g 201'),
('ff808081614f940e0161903fc7eb008c', NULL, '2018-02-13 23:39:15', 8, '2018-02-13 23:39:15', 'Huevo', '292-TRIAL-pieza 159'),
('ff808081614f940e0161903fee33008d', NULL, '2018-02-13 23:39:24', 8, '2018-02-13 23:39:24', 'Mantequilla', '270-TRIAL-g 28'),
('ff808081614f940e01619040cebc0090', NULL, '2018-02-13 23:40:22', 8, '2018-02-13 23:40:22', 'Chocolate snickers', '127-TRIAL-g 184'),
('ff808081614f940e0161904ad73c0091', NULL, '2018-02-13 23:51:19', 8, '2018-02-13 23:51:19', 'Jugo de naranja', '175-TRIAL-ml 186'),
('ff808081614f940e0161904e11a20092', NULL, '2018-02-13 23:54:51', 8, '2018-02-13 23:54:51', 'Granos de elote', '198-TRIAL-g 70'),
('ff808081614f940e0161904e88dd0094', NULL, '2018-02-13 23:55:21', 8, '2018-02-13 23:55:21', 'Queso crema', '287-TRIAL-g 147'),
('ff808081614f940e0161904ec7fc0095', NULL, '2018-02-13 23:55:38', 8, '2018-02-13 23:55:38', 'Chocolate blanco', '204-TRIAL-g 203'),
('ff808081614f940e0161904f02f40096', NULL, '2018-02-13 23:55:53', 8, '2018-02-13 23:55:53', 'Hierbabuena', '221-TRIAL-g 163'),
('ff808081614f940e0161904f26f10097', NULL, '2018-02-13 23:56:02', 8, '2018-02-13 23:56:02', 'Chía', '6-TRIAL-g 263'),
('ff808081614f940e0161967aaa6300b1', NULL, '2018-02-15 04:41:17', 8, '2018-02-15 04:41:17', 'Salsa chipotle', '10-TRIAL-ml 271'),
('ff808081614f940e0161968f533600b5', NULL, '2018-02-15 05:03:51', 8, '2018-02-15 05:03:51', 'Betabel', '189-TRIAL-g 240'),
('ff808081614f940e01619a58b49b00bc', NULL, '2018-02-15 22:42:40', 8, '2018-02-15 22:42:40', 'Gelatina', '164-TRIAL-g 42'),
('ff808081614f940e01619a5a9c3800bd', NULL, '2018-02-15 22:44:45', 8, '2018-02-15 22:44:45', 'Splenda', '119-TRIAL-g 213'),
('ff808081614f940e01619a5fe8ed00bf', NULL, '2018-02-15 22:50:32', 8, '2018-02-15 22:50:32', 'Mix de frutos rojos', '91-TRIAL-g 104'),
('ff808081614f940e01619a602a6700c0', NULL, '2018-02-15 22:50:49', 8, '2018-02-15 22:50:49', 'Azúcar', '18-TRIAL-g 232'),
('ff808081614f940e01619a6b4fa900c2', NULL, '2018-02-15 23:02:59', 8, '2018-02-15 23:02:59', 'Nuez', '150-TRIAL-g 5'),
('ff808081614f940e01619a6b978e00c3', NULL, '2018-02-15 23:03:18', 8, '2018-02-15 23:03:18', 'Taro', '175-TRIAL-g 39'),
('ff808081614f940e01619b5df67200d4', NULL, '2018-02-16 03:28:02', 8, '2018-02-16 03:28:02', 'Salsa Maggy', '3-TRIAL-ml 22'),
('ff808081614f940e01619b5e399400d5', NULL, '2018-02-16 03:28:19', 8, '2018-02-16 03:28:19', 'Arroz integral', '98-TRIAL-g 147'),
('ff808081614f940e0161904e4d690093', NULL, '2018-02-13 23:55:06', 8, '2018-02-16 03:35:32', 'Leche evaporada', '84-TRIAL-ml 148'),
('ff808081614f940e01619b6e2a7c00d8', NULL, '2018-02-16 03:45:44', 8, '2018-02-16 03:45:44', 'Repollo', '271-TRIAL-g 164'),
('ff808081614f940e01619b6e5aef00d9', NULL, '2018-02-16 03:45:56', 8, '2018-02-16 03:45:56', 'Col morada', '113-TRIAL-g 275'),
('ff808081614f940e01619b6e8e6300da', NULL, '2018-02-16 03:46:09', 8, '2018-02-16 03:46:09', 'Fideo chino', '245-TRIAL-g 212'),
('ff808081614f940e01619b6ec4f400db', NULL, '2018-02-16 03:46:23', 8, '2018-02-16 03:46:23', 'Aderezo de cacahuate', '146-TRIAL-ml 78'),
('ff808081614f940e0161a0a2db7b00e3', NULL, '2018-02-17 04:01:23', 8, '2018-02-17 04:01:23', 'Mayonesa', '269-TRIAL-ml 262'),
('ff808081614f940e0161a4a535c400e6', NULL, '2018-02-17 22:42:26', 8, '2018-02-17 22:42:26', 'Brócoli', '119-TRIAL-g 185'),
('ff808081614f940e0161a523e6a600eb', NULL, '2018-02-18 01:00:49', 8, '2018-02-18 01:00:49', 'Harina sin gluten', '89-TRIAL-g 44'),
('ff808081614f940e0162112b68c101dc', NULL, '2018-03-11 00:28:00', 8, '2018-03-11 00:28:00', 'Chocolate', '165-TRIAL-g 240'),
('ff808081614f940e0162112bb68701dd', NULL, '2018-03-11 00:28:20', 8, '2018-03-11 00:28:20', 'Plátano', '145-TRIAL-g 8'),
('ff808081614f940e0162112be28801de', NULL, '2018-03-11 00:28:31', 8, '2018-03-11 00:28:31', 'Linaza', '118-TRIAL-g 270'),
('ff808081614f940e0162112c08f001df', NULL, '2018-03-11 00:28:41', 8, '2018-03-11 00:28:41', 'Granola', '1-TRIAL-g 123'),
('ff808081614f940e0162112c41e301e0', NULL, '2018-03-11 00:28:56', 8, '2018-03-11 00:28:56', 'Vainilla', '132-TRIAL-ml 172');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE IF NOT EXISTS `ordenes` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `calificacion_comentario` char(255) COLLATE utf8_bin DEFAULT NULL,
  `calificacion_comida` int(32) NOT NULL,
  `calificacion_servicio` int(32) NOT NULL,
  `date_created` timestamp NOT NULL,
  `empresa_id` char(255) COLLATE utf8_bin NOT NULL,
  `establecimiento_id` char(255) COLLATE utf8_bin NOT NULL,
  `estatus` char(11) COLLATE utf8_bin NOT NULL,
  `fecha_pago` timestamp NOT NULL,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `modo_pago` char(10) COLLATE utf8_bin NOT NULL,
  `monto_pagado` float(24,0) NOT NULL,
  `no_orden` char(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1fyabj9t5vyoiwk5xrvp3sx99` (`empresa_id`),
  KEY `FK_h9jclnvjfpgu710g05jdx1fer` (`id_autor`),
  KEY `FK_utnoixt90uef5mcml8kwyful` (`establecimiento_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`id`, `calificacion_comentario`, `calificacion_comida`, `calificacion_servicio`, `date_created`, `empresa_id`, `establecimiento_id`, `estatus`, `fecha_pago`, `id_autor`, `last_updated`, `modo_pago`, `monto_pagado`, `no_orden`) VALUES
('ff808081614f940e0161e3bc6d330161', '', 0, 0, '2018-03-02 04:43:52', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-02 04:43:52', 33, '2018-03-02 04:43:52', 'Por nómina', 0, '0000002'),
('ff808081614f940e0161e3bc6e480163', '', 0, 0, '2018-03-02 04:43:53', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-02 04:43:52', 33, '2018-03-02 04:43:53', 'Por nómina', 0, '0000003'),
('ff808081614f940e0161e8c1ddbc017a', '', 0, 0, '2018-03-03 04:07:55', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-03 04:07:55', 30, '2018-03-03 04:07:55', 'Por nómina', 100, '0000004'),
('ff808081614f940e0161f7c52f6e0191', '', 0, 0, '2018-03-06 02:05:51', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-06 02:05:50', 30, '2018-03-06 02:05:51', 'Por nómina', 244, '0000005'),
('ff808081614f940e0161fc53fcad019c', '', 0, 0, '2018-03-06 23:20:18', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-06 23:20:18', 30, '2018-03-06 23:20:18', 'Por nómina', 325, '0000006'),
('ff808081614f940e01621153c5cf01e7', '', 0, 0, '2018-03-11 01:12:06', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-11 01:12:05', 29, '2018-03-11 01:12:06', 'Por nómina', 262, '0000014'),
('ff808081614f940e01622088073c01fb', '', 0, 0, '2018-03-14 00:03:28', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-14 00:03:28', 33, '2018-03-14 00:03:28', 'Por nómina', 488, '0000015'),
('ff808081614f940e0162015146c201a4', 'Súper rica y en tiempo', 4, 4, '2018-03-07 22:35:27', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-07 22:35:26', 34, '2018-03-14 00:17:30', 'Por nómina', 1515, '0000007'),
('ff808081614f940e0162209eae6801ff', '', 0, 0, '2018-03-14 00:28:13', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-14 00:28:13', 34, '2018-03-14 00:28:13', 'Por nómina', 390, '0000016'),
('ff808081614f940e016220f76d3a0206', '', 0, 0, '2018-03-14 02:05:09', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-14 02:05:09', 30, '2018-03-14 02:05:09', 'Por nómina', 60, '0000017'),
('ff808081614f940e01622101ba690209', '', 0, 0, '2018-03-14 02:16:24', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-14 02:16:24', 29, '2018-03-14 02:16:24', 'Por nómina', 780, '0000018'),
('ff80808162283e0a01623663fe130052', '', 0, 0, '2018-03-18 05:55:46', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-18 05:55:45', 16, '2018-03-18 05:55:46', 'Por saldo', 0, '0000027'),
('ff80808162283e0a01623666257d0055', '', 0, 0, '2018-03-18 05:58:07', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-18 05:58:07', 16, '2018-03-18 05:58:07', 'Por saldo', 65, '0000028'),
('ff80808162283e0a016236662720005a', '', 0, 0, '2018-03-18 05:58:07', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-18 05:58:07', 16, '2018-03-18 05:58:07', 'Por saldo', 120, '0000029'),
('ff80808162283e0a01625e1bc40e0079', '', 0, 0, '2018-03-25 23:01:41', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-25 23:01:41', 16, '2018-03-25 23:01:41', 'Por saldo', 67, '0000032'),
('ff808081614f940e01620bed7d8101c4', '', 0, 0, '2018-03-10 00:02:16', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-10 00:02:16', 33, '2018-03-16 00:54:42', 'Por nómina', 35, '0000010'),
('ff808081614f940e0161e3983ea7015a', '', 0, 0, '2018-03-02 04:04:21', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-03-02 04:04:21', 30, '2018-03-16 04:09:00', 'Por nómina', 0, '0000001'),
('ff80808162283e0a01622bb46928002f', '', 0, 0, '2018-03-16 04:07:46', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-03-16 04:07:46', 30, '2018-03-16 04:09:22', 'Por nómina', 67, '0000021'),
('ff80808162283e0a0162365a670f004f', '', 0, 0, '2018-03-18 05:45:17', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-18 05:45:17', 16, '2018-03-18 05:45:17', 'Por saldo', 55, '0000026'),
('ff80808162283e0a01624a131d1e006a', '', 0, 0, '2018-03-22 01:39:49', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-22 01:39:49', 33, '2018-03-22 01:39:49', 'Por nómina', 50, '0000030'),
('ff80808162283e0a01624a1823c3006e', '', 0, 0, '2018-03-22 01:45:19', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-22 01:45:19', 33, '2018-03-22 01:45:19', 'Por nómina', 67, '0000031'),
('ff808081614f940e01620709065c01b6', 'Ok', 5, 5, '2018-03-09 01:14:15', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-09 01:14:15', 30, '2018-03-26 05:56:20', 'Por nómina', 165, '0000008'),
('ff80808162283e0a01625ff6fe5c008c', '', 0, 0, '2018-03-26 07:40:45', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 07:40:45', 16, '2018-03-26 07:40:45', 'Por saldo', 50, '0000033'),
('ff808081626a161b01627159823e002d', '', 0, 0, '2018-03-29 16:41:54', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-29 16:41:54', 16, '2018-03-29 16:41:54', 'Por saldo', 50, '0000034'),
('ff80808162283e0a0162366626630057', '', 0, 0, '2018-03-18 05:58:07', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-18 05:58:07', 16, '2018-03-30 12:09:10', 'Por saldo', 0, '0000029'),
('ff808081614f940e01620cd6780801d2', 'Todo bien.', 4, 4, '2018-03-10 04:16:45', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-10 04:16:45', 30, '2018-04-10 00:34:23', 'Por nómina', 295, '0000012'),
('ff808081614f940e01620c35d97a01cb', 'Llego tarde mi pedido.', 4, 2, '2018-03-10 01:21:18', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-10 01:21:18', 30, '2018-04-10 00:35:41', 'Por nómina', 405, '0000011'),
('ff808081614f940e0162113f9bbe01e2', '', 4, 4, '2018-03-11 00:50:04', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-11 00:50:04', 30, '2018-04-10 00:36:04', 'Por nómina', 67, '0000013'),
('ff80808162283e0a01622bb1c510002c', '', 5, 4, '2018-03-16 04:04:53', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-16 04:04:53', 30, '2018-04-10 00:36:32', 'Por nómina', 90, '0000020'),
('ff808081614f940e0162259e93d50213', '', 5, 5, '2018-03-14 23:46:12', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-14 23:46:12', 30, '2018-04-10 00:36:47', 'Por nómina', 67, '0000019'),
('ff80808162283e0a01623085fb56003b', '', 5, 5, '2018-03-17 02:35:10', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-17 02:35:10', 30, '2018-04-10 00:37:00', 'Por nómina', 55, '0000023'),
('ff80808162283e0a016236579748004b', '', 4, 5, '2018-03-18 05:42:13', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-18 05:42:13', 30, '2018-04-10 00:37:22', 'Por saldo', 60, '0000025'),
('ff80808162283e0a01623091544c003e', '', 4, 4, '2018-03-17 02:47:33', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-17 02:47:33', 30, '2018-04-10 00:37:40', 'Por nómina', 55, '0000024'),
('ff80808162283e0a01622bc16f720035', '', 4, 5, '2018-03-16 04:22:00', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-16 04:22:00', 30, '2018-04-10 00:37:53', 'Por nómina', 70, '0000022'),
('ff808081614f940e01620bed776c01c2', '', 3, 5, '2018-03-10 00:02:15', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-03-10 00:02:15', 33, '2018-04-17 00:16:14', 'Por nómina', 125, '0000009'),
('ff80808162adb3bc0162cf60efa30038', '', 3, 3, '2018-04-16 21:54:19', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-04-16 21:54:19', 30, '2018-04-26 23:44:51', 'Por nómina', 180, '0000037'),
('ff80808162adb3bc0162bab8d6ff002b', '', 4, 3, '2018-04-12 21:38:19', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-04-12 21:38:18', 33, '2018-04-17 00:16:29', 'Por nómina', 50, '0000035'),
('ff80808162adb3bc0162bb0eb0b80031', '', 3, 4, '2018-04-12 23:12:05', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-04-12 23:12:05', 30, '2018-04-17 00:30:02', 'Por nómina', 75, '0000036'),
('ff80808162adb3bc0162d960dc3a0041', '', 0, 0, '2018-04-18 20:30:26', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-18 20:30:26', 30, '2018-04-18 20:30:26', 'Por nómina', 80, '0000038'),
('ff80808162adb3bc0162e4cfb3500045', '', 0, 0, '2018-04-21 01:47:20', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-21 01:47:20', 30, '2018-04-21 01:47:20', 'Por nómina', 55, '0000039'),
('ff80808162adb3bc0162e8db669e0049', '', 0, 0, '2018-04-21 20:38:36', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-21 20:38:35', 30, '2018-04-21 20:38:36', 'Por nómina', 55, '0000040'),
('ff80808162adb3bc016303378dbb0055', '', 0, 0, '2018-04-26 23:29:22', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-26 23:29:22', 30, '2018-04-26 23:29:22', 'Por nómina', 67, '0000041'),
('ff80808162adb3bc016317b773b0005b', '', 0, 0, '2018-04-30 23:01:29', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-04-30 23:01:29', 30, '2018-04-30 23:01:29', 'Por nómina', 55, '0000042'),
('ff80808162adb3bc0163180aa0d2005f', '', 0, 0, '2018-05-01 00:32:20', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-01 00:32:20', 30, '2018-05-01 00:32:20', 'Por saldo', 67, '0000043'),
('ff80808162adb3bc01633bddbb630065', '', 0, 0, '2018-05-07 23:29:37', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-07 23:29:37', 30, '2018-05-07 23:29:37', 'Por nómina', 0, '0000044'),
('ff8080816345dd26016384f118a20038', '', 0, 0, '2018-05-22 04:03:03', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-22 04:03:03', 30, '2018-05-22 04:03:03', 'Por saldo', 250, '0000048'),
('ff8080816345dd260163d5fda0650083', '', 0, 0, '2018-06-06 21:45:59', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', 'Cancelado', '2018-06-06 21:45:59', 46, '2018-06-07 02:18:58', 'Por saldo', 30, '0000057'),
('ff8080816345dd260163adc659850040', '', 0, 0, '2018-05-30 02:20:47', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-05-30 02:20:47', 30, '2018-05-30 02:20:47', 'Por nómina', 55, '0000049'),
('ff8080816345dd26016360775124002b', 'Tardo en cargar la página.', 1, 1, '2018-05-15 02:03:42', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-05-15 02:03:42', 30, '2018-05-31 01:06:17', 'Por nómina', 164, '0000046'),
('ff8080816345dd2601635f72db5b0027', '', 1, 2, '2018-05-14 21:19:13', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-05-14 21:19:13', 30, '2018-05-31 01:07:06', 'Por nómina', 70, '0000045'),
('ff8080816345dd260163607b8b75002e', '', 1, 1, '2018-05-15 02:08:19', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', 'Entregado', '2018-05-15 02:08:19', 30, '2018-05-31 01:08:13', 'Por nómina', 67, '0000047'),
('ff8080816345dd260163b70a89c2004c', '152-TRIAL- 187', 0, 0, '2018-05-31 21:31:51', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', '70-TRIAL- 6', '2018-05-31 21:31:51', 30, '2018-05-31 21:31:51', '201-TRIAL-', 60, '23-TRIAL-0000050 227'),
('ff8080816345dd260163b7f606b70052', '200-TRIAL- 269', 0, 0, '2018-06-01 01:49:04', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', '215-TRIAL-', '2018-06-01 01:49:04', 34, '2018-06-01 01:49:04', '28-TRIAL-', 130, '147-TRIAL-0000051 288'),
('ff8080816345dd260163b7f609780054', '243-TRIAL- 37', 0, 0, '2018-06-01 01:49:05', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', '209-TRIAL-', '2018-06-01 01:49:05', 34, '2018-06-01 01:49:05', '249-TRIAL-', 30, '88-TRIAL-0000052 242'),
('ff8080816345dd260163b7f60c9a0058', '8-TRIAL- 260', 0, 0, '2018-06-01 01:49:06', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', '221-TRIAL-', '2018-06-01 01:49:06', 34, '2018-06-01 01:49:06', '254-TRIAL-', 75, '46-TRIAL-0000053 90'),
('ff8080816345dd260163b7f60f8f005b', '149-TRIAL- 243', 0, 0, '2018-06-01 01:49:06', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', '130-TRIAL-', '2018-06-01 01:49:06', 34, '2018-06-01 01:49:06', '148-TRIAL-', 140, '36-TRIAL-0000054 83'),
('ff8080816345dd260163cc6097c50064', '35-TRIAL- 126', 0, 0, '2018-06-05 00:57:52', 'ff808081614f940e0161afe7434c0108', 'ff808081614f940e0161a52a2c3300ec', '185-TRIAL-', '2018-06-05 00:57:52', 44, '2018-06-05 02:07:48', '253-TRIAL-', 67, '124-TRIAL-0000055 148'),
('ff8080816345dd260163dab4096b0093', '123-TRIAL- 59', 0, 0, '2018-06-07 19:43:42', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '157-TRIAL-', '2018-06-07 19:43:42', 46, '2018-07-10 00:36:35', '144-TRIAL-', 80, '218-TRIAL-0000060 26'),
('ff8080816345dd260163dab408ac0091', '211-TRIAL- 25', 0, 0, '2018-06-07 19:43:42', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '255-TRIAL-', '2018-06-07 19:43:42', 46, '2018-07-10 00:45:11', '49-TRIAL-', 60, '284-TRIAL-0000059 215'),
('ff8080816345dd260163e164ad58009a', '264-TRIAL- 242', 0, 0, '2018-06-09 02:54:22', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '275-TRIAL-', '2018-06-09 02:54:22', 46, '2018-06-28 00:04:36', '242-TRIAL-', 30, '48-TRIAL-0000061 172'),
('ff8080816345dd260163cd1266ce0079', '26-TRIAL- 206', 0, 0, '2018-06-05 04:12:05', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '73-TRIAL- 1', '2018-06-05 04:12:05', 46, '2018-07-10 00:35:15', '4-TRIAL- 1', 60, '226-TRIAL-0000056 112'),
('ff8080816345dd260163d6d3862a008c', '175-TRIAL- 93', 0, 0, '2018-06-07 01:39:37', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '65-TRIAL- 1', '2018-06-07 01:39:37', 46, '2018-07-10 00:36:35', '36-TRIAL-', 30, '214-TRIAL-0000058 294'),
('ff808181644870ac01644885ecfd0001', '156-TRIAL- 52', 0, 0, '2018-06-28 22:31:34', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '236-TRIAL-', '2018-06-28 22:31:32', 46, '2018-07-18 23:58:44', '82-TRIAL-', 60, '15-TRIAL-0000063 231'),
('ff8081816448dfef016448e318f10001', '230-TRIAL- 141', 0, 0, '2018-06-29 00:13:20', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '225-TRIAL-', '2018-06-29 00:13:18', 46, '2018-07-19 00:06:53', '237-TRIAL-', 60, '190-TRIAL-0000065 150'),
('ff8081816448b48d016448b6f5180001', '262-TRIAL- 34', 0, 0, '2018-06-28 23:25:07', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '93-TRIAL- 1', '2018-06-28 23:25:06', 46, '2018-07-19 01:01:11', '116-TRIAL-', 60, '208-TRIAL-0000064 62'),
('ff808181644cbd5701644ccbfb460006', '33-TRIAL- 54', 0, 0, '2018-06-29 18:26:34', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '103-TRIAL-', '2018-06-29 18:26:33', 46, '2018-07-19 01:06:24', '203-TRIAL-', 60, '148-TRIAL-0000067 24'),
('ff80818164425b290164426f4f150002', '17-TRIAL- 13', 0, 0, '2018-06-27 18:09:08', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '109-TRIAL-', '2018-06-27 18:09:07', 46, '2018-07-17 03:32:52', '100-TRIAL-', 60, '18-TRIAL-0000062 58'),
('ff808181644cbd5701644ccfad180009', '50-TRIAL- 155', 0, 0, '2018-06-29 18:30:36', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '161-TRIAL-', '2018-06-29 18:30:35', 46, '2018-07-18 23:35:27', '203-TRIAL-', 60, '243-TRIAL-0000068 209'),
('ff808181644cbd5701644cbfb7c80001', '202-TRIAL- 261', 0, 0, '2018-06-29 18:13:10', 'ff8080816345dd260163ccdac7f9006b', 'ff8080816345dd260163ccc6d0d80069', '289-TRIAL-', '2018-06-29 18:13:09', 46, '2018-07-17 04:46:27', '82-TRIAL-', 60, '74-TRIAL-0000066 120');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenesdetalles`
--

CREATE TABLE IF NOT EXISTS `ordenesdetalles` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `cantidad` int(32) NOT NULL,
  `date_created` timestamp NOT NULL,
  `embarque_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  `es_personalizado` tinyint(1) NOT NULL,
  `establecimiento_id` char(255) COLLATE utf8_bin NOT NULL,
  `estatus` char(11) COLLATE utf8_bin NOT NULL,
  `fecha_entrega` timestamp NOT NULL,
  `fecha_pago` timestamp NOT NULL,
  `hora_entrega` char(255) COLLATE utf8_bin NOT NULL,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `modo_pago` char(10) COLLATE utf8_bin NOT NULL,
  `monto_pagado` float(24,0) NOT NULL,
  `orden_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  `personalizado` char(255) COLLATE utf8_bin DEFAULT NULL,
  `platillo_id` char(255) COLLATE utf8_bin NOT NULL,
  `realmente_pagado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2s9kyf61aadtn1bwvvmxi00wo` (`embarque_id`),
  KEY `FK_68ya2d8pisov03ibhcepjgd93` (`establecimiento_id`),
  KEY `FK_dinelkjqhhymnuhrc39xyn5vm` (`id_autor`),
  KEY `FK_jflewl5vkko98uqrbdp4yepfp` (`orden_id`),
  KEY `FK_jye5x5pg734nadbnyyar02wpo` (`platillo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ordenesdetalles`
--

INSERT INTO `ordenesdetalles` (`id`, `cantidad`, `date_created`, `embarque_id`, `es_personalizado`, `establecimiento_id`, `estatus`, `fecha_entrega`, `fecha_pago`, `hora_entrega`, `id_autor`, `last_updated`, `modo_pago`, `monto_pagado`, `orden_id`, `personalizado`, `platillo_id`, `realmente_pagado`) VALUES
('ff808081614f940e0161e3bc703f0164', 1, '2018-03-02 04:43:53', 'ff808081614f940e0161e46ffd9a0166', 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-06 06:00:00', '2018-03-02 04:43:53', '09:00 AM', 33, '2018-03-02 08:00:00', 'Por nómina', 0, 'ff808081614f940e0161e3bc6d330161', '', 'ff808081614f940e0161d3adcec90126', 0),
('ff808081614f940e0161e8c1e508017b', 2, '2018-03-03 04:07:57', 'ff808081614f940e0161e9965936017d', 1, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-07 06:00:00', '2018-03-03 04:07:57', '09:00 AM', 30, '2018-03-03 08:00:00', 'Por nómina', 40, 'ff808081614f940e0161e8c1ddbc017a', ' Sin :  Sin :   Extras : Pollo a la plancha ($20) Crutones ($0)', 'ff808081614f940e0161d3abca9d011f', 0),
('ff808081614f940e0161e3bc72160165', 1, '2018-03-02 04:43:53', 'ff808081614f940e0161e9965936017d', 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-07 06:00:00', '2018-03-02 04:43:53', '09:00 AM', 33, '2018-03-03 08:00:00', 'Por nómina', 0, 'ff808081614f940e0161e3bc6e480163', '', 'ff808081614f940e0161d3acc03d0122', 0),
('ff808081614f940e0161e8c1e62d017c', 3, '2018-03-03 04:07:57', 'ff808081614f940e0161e9965936017d', 1, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-07 06:00:00', '2018-03-03 04:07:57', '09:00 AM', 30, '2018-03-03 08:00:00', 'Por nómina', 60, 'ff808081614f940e0161e8c1ddbc017a', ' Sin : Lechuga italiana Pimiento morrón   Extras : Granola ($10) Granola ($10)', 'ff808081614f940e0161d3acc03d0122', 0),
('ff808081614f940e0161f7c537a60192', 2, '2018-03-06 02:05:53', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-09 06:00:00', '2018-03-06 02:05:53', '09:00 AM', 30, '2018-03-06 02:05:53', 'Por nómina', 110, 'ff808081614f940e0161f7c52f6e0191', '', 'ff808081614f940e0161d3aea891012a', 0),
('ff808081614f940e0161f7c538cb0193', 2, '2018-03-06 02:05:53', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-09 06:00:00', '2018-03-06 02:05:53', '09:00 AM', 30, '2018-03-06 02:05:53', 'Por nómina', 134, 'ff808081614f940e0161f7c52f6e0191', '', 'ff808081614f940e0161d3ab8b6c011e', 0),
('ff808081614f940e0161fc540590019e', 4, '2018-03-06 23:20:20', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-10 06:00:00', '2018-03-06 23:20:20', '12:00 PM', 30, '2018-03-06 23:20:20', 'Por nómina', 220, 'ff808081614f940e0161fc53fcad019c', '', 'ff808081614f940e0161d3b05a01012e', 0),
('ff808081614f940e0161fc540589019d', 3, '2018-03-06 23:20:20', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-10 06:00:00', '2018-03-06 23:20:20', '12:00 PM', 30, '2018-03-06 23:20:20', 'Por nómina', 105, 'ff808081614f940e0161fc53fcad019c', '', 'ff808081614f940e0161dd2143020146', 0),
('ff808081614f940e0161fc54068a019f', 1, '2018-03-06 23:20:21', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-10 06:00:00', '2018-03-06 23:20:21', '12:00 PM', 30, '2018-03-06 23:20:21', 'Por nómina', 0, 'ff808081614f940e0161fc53fcad019c', '', 'ff808081614f940e0161d3ae72910129', 0),
('ff808081614f940e01620151493901a5', 20, '2018-03-07 22:35:27', 'ff808081614f940e01620356253601ab', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-12 06:00:00', '2018-03-07 22:35:27', '12:00 PM', 34, '2018-03-13 01:10:01', 'Por nómina', 1340, 'ff808081614f940e0162015146c201a4', '', 'ff808081614f940e0161dd231586014a', 0),
('ff808081614f940e016207090d4e01b8', 2, '2018-03-09 01:14:17', 'ff808081614f940e0162087c813901ba', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-13 06:00:00', '2018-03-09 01:14:17', '12:00 PM', 30, '2018-03-13 01:15:50', 'Por nómina', 0, 'ff808081614f940e01620709065c01b6', '', 'ff808081614f940e0161d3ad64430124', 0),
('ff808081614f940e016220880ac201fc', 4, '2018-03-14 00:03:29', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 06:00:00', '2018-03-14 00:03:29', '12:00 PM', 33, '2018-03-14 00:03:29', 'Por nómina', 220, 'ff808081614f940e01622088073c01fb', '', 'ff808081614f940e0161d3b05a01012e', 0),
('ff808081614f940e016207090c4001b7', 3, '2018-03-09 01:14:16', 'ff808081614f940e0162087c813901ba', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-13 06:00:00', '2018-03-09 01:14:16', '12:00 PM', 30, '2018-03-13 01:15:35', 'Por nómina', 165, 'ff808081614f940e01620709065c01b6', '', 'ff808081614f940e0161d3aa4da0011c', 0),
('ff808081614f940e01620c35defb01cc', 5, '2018-03-10 01:21:20', 'ff808081614f940e01620da2dd3301d6', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 06:00:00', '2018-03-10 01:21:20', '12:00 PM', 30, '2018-03-14 23:11:09', 'Por nómina', 175, 'ff808081614f940e01620c35d97a01cb', '', 'ff808081614f940e0161dd251973014f', 0),
('ff808081614f940e01620bed809c01c6', 1, '2018-03-10 00:02:17', 'ff808081614f940e01620da2dd3301d6', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 06:00:00', '2018-03-10 00:02:17', '12:00 PM', 33, '2018-03-14 22:54:00', 'Por nómina', 75, 'ff808081614f940e01620bed776c01c2', '', 'ff808081614f940e0161dd22edcd0149', 0),
('ff808081614f940e01620c35e03401cd', 2, '2018-03-10 01:21:20', 'ff808081614f940e01620da2dd3301d6', 1, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 06:00:00', '2018-03-10 01:21:20', '12:00 PM', 30, '2018-03-14 23:11:10', 'Por nómina', 230, 'ff808081614f940e01620c35d97a01cb', '  Extras : Pollo blaze ($20) Pollo blaze ($20)', 'ff808081614f940e0161dd22edcd0149', 0),
('ff808081614f940e01620cd67c6d01d4', 2, '2018-03-10 04:16:46', 'ff808081614f940e01620da2dd3301d6', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 06:00:00', '2018-03-10 04:16:46', '12:00 PM', 30, '2018-03-14 23:11:12', 'Por nómina', 70, 'ff808081614f940e01620cd6780801d2', '', 'ff808081614f940e0161dd2143020146', 0),
('ff808081614f940e01620cd67c6901d3', 3, '2018-03-10 04:16:46', 'ff808081614f940e01620da2dd3301d6', 1, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 06:00:00', '2018-03-10 04:16:46', '12:00 PM', 30, '2018-03-14 23:11:11', 'Por nómina', 225, 'ff808081614f940e01620cd6780801d2', ' Sin : Queso gouda', 'ff808081614f940e0161dd234a0c014c', 0),
('ff808081614f940e01621153c8bf01e8', 2, '2018-03-11 01:12:06', NULL, 1, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-14 06:00:00', '2018-03-11 01:12:06', '09:00 AM', 29, '2018-03-11 01:12:06', 'Por nómina', 110, 'ff808081614f940e01621153c5cf01e7', ' Sin : Aderezo de chipotle Aderezo de mostaza', 'ff808081614f940e0161d3aea891012a', 0),
('ff808081614f940e01621153c92f01e9', 2, '2018-03-11 01:12:06', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-14 06:00:00', '2018-03-11 01:12:06', '09:00 AM', 29, '2018-03-11 01:12:06', 'Por nómina', 70, 'ff808081614f940e01621153c5cf01e7', '', 'ff808081614f940e0161dd251973014f', 0),
('ff808081614f940e01621153c93501ea', 1, '2018-03-11 01:12:06', NULL, 1, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-14 06:00:00', '2018-03-11 01:12:06', '09:00 AM', 29, '2018-03-11 01:12:06', 'Por nómina', 82, 'ff808081614f940e01621153c5cf01e7', ' Sin :   Extras : Crutones ($15)', 'ff808081614f940e0161d3ab8b6c011e', 0),
('ff808081614f940e01620151499f01a6', 5, '2018-03-07 22:35:27', 'ff808081614f940e01620356253601ab', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-12 06:00:00', '2018-03-07 22:35:27', '12:00 PM', 34, '2018-03-13 01:10:04', 'Por nómina', 175, 'ff808081614f940e0162015146c201a4', '', 'ff808081614f940e0161dd22b8c40148', 0),
('ff808081614f940e016220880b2701fd', 4, '2018-03-14 00:03:29', NULL, 1, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 06:00:00', '2018-03-14 00:03:29', '12:00 PM', 33, '2018-03-14 00:03:29', 'Por nómina', 268, 'ff808081614f940e01622088073c01fb', ' Sin :', 'ff808081614f940e0161d3abca9d011f', 0),
('ff808081614f940e0162209eb2a90200', 12, '2018-03-14 00:28:14', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 06:00:00', '2018-03-14 00:28:14', '12:00 PM', 34, '2018-03-14 00:28:14', 'Por nómina', 0, 'ff808081614f940e0162209eae6801ff', '', 'ff808081614f940e0161dd2534f40151', 0),
('ff808081614f940e0161e39849dc015b', 5, '2018-03-02 04:04:24', 'ff808081614f940e0161e46ffd9a0166', 0, 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-03-06 06:00:00', '2018-03-02 04:04:24', '09:00 AM', 30, '2018-03-16 04:09:00', 'Por nómina', 0, 'ff808081614f940e0161e3983ea7015a', '', 'ff808081614f940e0161d3aa39b5011b', 0),
('ff808081614f940e0162113faa2f01e3', 1, '2018-03-11 00:50:08', 'ff808081614f940e016212c9393e01eb', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-15 06:00:00', '2018-03-11 00:50:08', '12:00 PM', 30, '2018-03-16 00:44:41', 'Por nómina', 67, 'ff808081614f940e0162113f9bbe01e2', '', 'ff808081614f940e0161d3ab8b6c011e', 0),
('ff808081614f940e0162209eb3200201', 2, '2018-03-14 00:28:14', NULL, 1, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 06:00:00', '2018-03-14 00:28:14', '12:00 PM', 34, '2018-03-14 00:28:14', 'Por nómina', 150, 'ff808081614f940e0162209eae6801ff', ' Sin : Aderezo de la casa', 'ff808081614f940e0161dd22edcd0149', 0),
('ff808081614f940e0162209eb3370202', 4, '2018-03-14 00:28:14', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 06:00:00', '2018-03-14 00:28:14', '12:00 PM', 34, '2018-03-14 00:28:14', 'Por nómina', 240, 'ff808081614f940e0162209eae6801ff', '', 'ff808081614f940e0161d3adcec90126', 0),
('ff808081614f940e016220f77a530207', 1, '2018-03-14 02:05:12', NULL, 1, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 06:00:00', '2018-03-14 02:05:12', '12:00 PM', 30, '2018-03-14 02:05:12', 'Por nómina', 60, 'ff808081614f940e016220f76d3a0206', ' Sin : Zanahoria', 'ff808081614f940e0161d3ae0cdc0127', 0),
('ff808081614f940e01622101be0b020a', 5, '2018-03-14 02:16:25', NULL, 1, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 06:00:00', '2018-03-14 02:16:25', '09:00 AM', 29, '2018-03-14 02:16:25', 'Por nómina', 400, 'ff808081614f940e01622101ba690209', ' Sin :   Extras : Atún ($20)', 'ff808081614f940e0161d3ae0cdc0127', 0),
('ff808081614f940e01622101c14b020b', 2, '2018-03-14 02:16:26', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 06:00:00', '2018-03-14 02:16:26', '09:00 AM', 29, '2018-03-14 02:16:26', 'Por nómina', 150, 'ff808081614f940e01622101ba690209', '', 'ff808081614f940e0161dd22edcd0149', 0),
('ff808081614f940e01622101c15a020c', 3, '2018-03-14 02:16:26', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 06:00:00', '2018-03-14 02:16:26', '09:00 AM', 29, '2018-03-14 02:16:26', 'Por nómina', 120, 'ff808081614f940e01622101ba690209', '', 'ff808081614f940e0161d3b4e72a0136', 0),
('ff808081614f940e01622101c15e020d', 2, '2018-03-14 02:16:26', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-17 06:00:00', '2018-03-14 02:16:26', '09:00 AM', 29, '2018-03-14 02:16:26', 'Por nómina', 110, 'ff808081614f940e01622101ba690209', '', 'ff808081614f940e0161d3aea891012a', 0),
('ff808081614f940e01620bed7fc901c5', 1, '2018-03-10 00:02:17', 'ff808081614f940e01620da2dd3301d6', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-14 06:00:00', '2018-03-10 00:02:17', '12:00 PM', 33, '2018-03-14 22:53:58', 'Por nómina', 50, 'ff808081614f940e01620bed776c01c2', '', 'ff808081614f940e0161d3ae441a0128', 0),
('ff808081614f940e01620bed84c201c7', 1, '2018-03-10 00:02:18', 'ff808081614f940e016212c9393e01eb', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-15 06:00:00', '2018-03-10 00:02:18', '12:00 PM', 33, '2018-03-16 00:44:23', 'Por nómina', 35, 'ff808081614f940e01620bed7d8101c4', '', 'ff808081614f940e0161dd22b8c40148', 0),
('ff808081614f940e0161e3984a1a015c', 5, '2018-03-02 04:04:24', 'ff808081614f940e0161e46ffd9a0166', 0, 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-03-06 06:00:00', '2018-03-02 04:04:24', '09:00 AM', 30, '2018-03-16 04:09:00', 'Por nómina', 0, 'ff808081614f940e0161e3983ea7015a', '', 'ff808081614f940e0161d3b3d1f80130', 0),
('ff80808162283e0a01622bb46e380030', 1, '2018-03-16 04:07:48', NULL, 0, 'ff808081614f940e0161a52a2c3300ec', 'Cancelado', '2018-03-21 06:00:00', '2018-03-16 04:07:48', '12:00 PM', 30, '2018-03-16 04:09:22', 'Por nómina', 67, 'ff80808162283e0a01622bb46928002f', '', 'ff808081614f940e0161d3b4a4af0135', 0),
('ff80808162283e0a0162308602aa003c', 1, '2018-03-17 02:35:12', 'ff80808162283e0a016231af61390040', 1, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-21 06:00:00', '2018-03-17 02:35:12', '12:00 PM', 30, '2018-03-22 00:52:09', 'Por nómina', 55, 'ff80808162283e0a01623085fb56003b', ' Sin : Pimiento morrón', 'ff808081614f940e0161d3aa4da0011c', 0),
('ff80808162283e0a01624a1826ce006f', 1, '2018-03-22 01:45:20', 'ff80808162283e0a01624b6f2d350070', 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 06:00:00', '2018-03-22 01:45:20', '12:00 PM', 33, '2018-03-22 08:00:00', 'Por nómina', 67, 'ff80808162283e0a01624a1823c3006e', '', 'ff808081614f940e0161d3abca9d011f', 0),
('ff80808162283e0a016236579898004c', 1, '2018-03-18 05:42:13', 'ff80808162283e0a016236d5bd27005e', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-22 06:00:00', '2018-03-18 05:42:13', '09:00 AM', 30, '2018-03-22 21:28:16', 'Por saldo', 60, 'ff80808162283e0a016236579748004b', '', 'ff808081614f940e0161d3ae0cdc0127', 1),
('ff80808162283e0a01623091dc78003f', 1, '2018-03-17 02:48:08', 'ff80808162283e0a016236d5bd40005f', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-22 06:00:00', '2018-03-17 02:48:08', '12:00 PM', 30, '2018-03-22 21:28:37', 'Por nómina', 55, 'ff80808162283e0a01623091544c003e', '', 'ff808081614f940e0161d3aea891012a', 0),
('ff80808162283e0a016236662864005c', 2, '2018-03-18 05:58:07', 'ff80808162283e0a01625095894b0076', 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-27 06:00:00', '2018-03-18 05:58:07', '12:00 PM', 16, '2018-03-23 08:00:00', 'Por saldo', 120, 'ff80808162283e0a016236662720005a', '', 'ff808081614f940e0161d3adcec90126', 1),
('ff80808162283e0a0162365a68830050', 1, '2018-03-18 05:45:17', 'ff80808162283e0a01623bfc19360061', 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-23 06:00:00', '2018-03-18 05:45:17', '09:00 AM', 16, '2018-03-19 08:00:00', 'Por saldo', 55, 'ff80808162283e0a0162365a670f004f', '', 'ff808081614f940e0161d3aa4da0011c', 1),
('ff80808162283e0a01623663ff8e0053', 1, '2018-03-18 05:55:46', 'ff80808162283e0a01623bfc19360061', 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-23 06:00:00', '2018-03-18 05:55:46', '09:00 AM', 16, '2018-03-19 08:00:00', 'Por saldo', 0, 'ff80808162283e0a01623663fe130052', '', 'ff808081614f940e0161d3b5f2e80139', 1),
('ff80808162283e0a01624a131f8a006b', 1, '2018-03-22 01:39:50', 'ff80808162283e0a01624b6f2d350070', 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 06:00:00', '2018-03-22 01:39:50', '12:00 PM', 33, '2018-03-22 08:00:00', 'Por nómina', 50, 'ff80808162283e0a01624a131d1e006a', '', 'ff808081614f940e0161d3ae441a0128', 0),
('ff808081614f940e0162259ebef60214', 1, '2018-03-14 23:46:23', 'ff80808162283e0a01622c8905830037', 1, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-20 06:00:00', '2018-03-14 23:46:23', '12:00 PM', 30, '2018-03-21 00:26:43', 'Por nómina', 67, 'ff808081614f940e0162259e93d50213', ' Sin : Uva', 'ff808081614f940e0161d3abca9d011f', 0),
('ff80808162283e0a01622bb1cdf1002d', 1, '2018-03-16 04:04:56', 'ff80808162283e0a01622c8905830037', 1, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-20 06:00:00', '2018-03-16 04:04:56', '12:00 PM', 30, '2018-03-21 00:27:17', 'Por nómina', 90, 'ff80808162283e0a01622bb1c510002c', ' Sin : Calabacita   Extras : Extra aderezo Ciruela ($15)', 'ff808081614f940e0161dd234a0c014c', 0),
('ff80808162283e0a0162366626da0058', 1, '2018-03-18 05:58:07', 'ff80808162283e0a01624b6f2d510071', 1, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-26 06:00:00', '2018-03-18 05:58:07', '09:00 AM', 16, '2018-03-22 08:00:00', 'Por saldo', 65, 'ff80808162283e0a01623666257d0055', '  Extras : Almendras ($15)', 'ff808081614f940e0161d3af9d7d012c', 1),
('ff80808162283e0a01622bc173ae0036', 2, '2018-03-16 04:22:01', 'ff80808162283e0a016236d5bd40005f', 0, 'ff808081614f940e0161a52a2c3300ec', 'Preparado', '2018-03-22 06:00:00', '2018-03-16 04:22:01', '12:00 PM', 30, '2018-03-22 21:28:36', 'Por nómina', 70, 'ff80808162283e0a01622bc16f720035', '', 'ff808081614f940e0161dd251973014f', 0),
('ff80808162283e0a01625e1bc572007a', 1, '2018-03-25 23:01:41', 'ff80808162283e0a0162652ef9310091', 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-31 06:00:00', '2018-03-25 23:01:41', '12:00 PM', 16, '2018-03-27 08:00:00', 'Por saldo', 67, 'ff80808162283e0a01625e1bc40e0079', '', 'ff808081614f940e0161d3ab8b6c011e', 1),
('ff80808162283e0a01625ff702b8008d', 1, '2018-03-26 07:40:46', 'ff80808162283e0a0162652ef95b0092', 0, 'ff808081614f940e0161a52a2c3300ec', 'Nuevo', '2018-03-31 06:00:00', '2018-03-26 07:40:46', '09:00 AM', 16, '2018-03-27 08:00:00', 'Por saldo', 50, 'ff80808162283e0a01625ff6fe5c008c', '', 'ff808081614f940e0161d3ae441a0128', 1),
('ff808081626a161b016271598676002e', 1, '2018-03-29 16:41:55', 'ff808081626a161b016279c8694d0032', 0, 'ff808081614f940e0161a52a2c3300ec', '2-TRIAL- 23', '2018-04-04 05:00:00', '2018-03-29 16:41:55', '231-TRIAL-09:00 AM 169', 16, '2018-03-31 08:00:00', '278-TRIAL-', 50, 'ff808081626a161b01627159823e002d', '108-TRIAL-  119', 'ff808081614f940e0161d3ae441a0128', 1),
('ff80808162283e0a0162366627b1005b', 2, '2018-03-18 05:58:07', 'ff80808162283e0a0162509589370075', 1, 'ff808081614f940e0161a52a2c3300ec', '271-TRIAL-', '2018-03-27 06:00:00', '2018-03-18 05:58:07', '45-TRIAL-09:00 AM 181', 16, '2018-03-30 12:09:10', '104-TRIAL-', 0, 'ff80808162283e0a0162366626630057', '285-TRIAL- Sin : Uva   113', 'ff808081614f940e0161d3ac1a390121', 1),
('ff80808162adb3bc0162bb0eb66f0032', 1, '2018-04-12 23:12:06', 'ff80808162adb3bc0162babef722002d', 1, 'ff808081614f940e0161a52a2c3300ec', '98-TRIAL- 1', '2018-04-16 05:00:00', '2018-04-12 23:12:06', '122-TRIAL-12:00 PM 238', 30, '2018-04-16 23:54:05', '137-TRIAL-', 75, 'ff80808162adb3bc0162bb0eb0b80031', '261-TRIAL- Sin : Pimiento morrón   234', 'ff808081614f940e0161d3aa39b5011b', 0),
('ff80808162adb3bc0162cf615b620039', 2, '2018-04-16 21:54:47', 'ff80808162adb3bc0162cf653846003b', 1, 'ff808081614f940e0161a52a2c3300ec', '208-TRIAL-', '2018-04-20 05:00:00', '2018-04-16 21:54:47', '59-TRIAL-12:00 PM 193', 30, '2018-04-21 21:37:39', '15-TRIAL-', 180, 'ff80808162adb3bc0162cf60efa30038', '37-TRIAL- Sin : Lechuga italiana   Extras : Queso panela ($15)  69', 'ff808081614f940e0161dd22edcd0149', 0),
('ff80808162adb3bc0162e8db765f004a', 1, '2018-04-21 20:38:40', 'ff80808162adb3bc0162eaa6744b004e', 0, 'ff808081614f940e0161a52a2c3300ec', '58-TRIAL- 0', '2018-04-26 05:00:00', '2018-04-21 20:38:40', '171-TRIAL-12:00 PM 164', 30, '2018-04-22 05:00:00', '117-TRIAL-', 55, 'ff80808162adb3bc0162e8db669e0049', '255-TRIAL-  15', 'ff808081614f940e0161d3aea891012a', 0),
('ff80808162adb3bc0163033799e80056', 1, '2018-04-26 23:29:26', 'ff80808162adb3bc0163046640290059', 1, 'ff808081614f940e0161a52a2c3300ec', '30-TRIAL- 3', '2018-05-01 05:00:00', '2018-04-26 23:29:26', '212-TRIAL-12:00 PM 188', 30, '2018-04-27 05:00:00', '182-TRIAL-', 67, 'ff80808162adb3bc016303378dbb0055', '185-TRIAL- Sin : Pepino   10', 'ff808081614f940e0161d3ab8b6c011e', 0),
('ff80808162adb3bc016317b77b8f005c', 1, '2018-04-30 23:01:31', 'ff80808162adb3bc016317c3d4b9005d', 0, 'ff808081614f940e0161a52a2c3300ec', '184-TRIAL-', '2018-05-04 05:00:00', '2018-04-30 23:01:31', '280-TRIAL-12:00 PM 115', 30, '2018-04-30 23:15:00', '151-TRIAL-', 55, 'ff80808162adb3bc016317b773b0005b', '115-TRIAL-  179', 'ff808081614f940e0161d3aea891012a', 0),
('ff80808162adb3bc0162bab8df98002c', 1, '2018-04-12 21:38:21', 'ff80808162adb3bc0162babef722002d', 1, 'ff808081614f940e0161a52a2c3300ec', '10-TRIAL- 9', '2018-04-16 05:00:00', '2018-04-12 21:38:21', '273-TRIAL-12:00 PM 188', 33, '2018-04-16 23:54:04', '277-TRIAL-', 50, 'ff80808162adb3bc0162bab8d6ff002b', '256-TRIAL- Sin :   189', 'ff808081614f940e0161d3ae441a0128', 0),
('ff80808162adb3bc0162d960e3580042', 2, '2018-04-18 20:30:28', 'ff80808162adb3bc0162db33603c0043', 0, 'ff808081614f940e0161a52a2c3300ec', '13-TRIAL- 1', '2018-04-23 05:00:00', '2018-04-18 20:30:28', '41-TRIAL-12:00 PM 190', 30, '2018-04-19 05:00:00', '223-TRIAL-', 80, 'ff80808162adb3bc0162d960dc3a0041', '28-TRIAL-  284', 'ff808081614f940e0161d3b4e72a0136', 0),
('ff80808162adb3bc0162e4cfb9260046', 1, '2018-04-21 01:47:21', 'ff80808162adb3bc0162e580184a0047', 1, 'ff808081614f940e0161a52a2c3300ec', '178-TRIAL-', '2018-04-25 05:00:00', '2018-04-21 01:47:21', '271-TRIAL-12:00 PM 85', 30, '2018-04-21 05:00:00', '74-TRIAL-', 55, 'ff80808162adb3bc0162e4cfb3500045', '233-TRIAL- Sin : Lechuga italiana   67', 'ff808081614f940e0161d3aea891012a', 0),
('ff80808162adb3bc0163180aa3350060', 1, '2018-05-01 00:32:20', 'ff80808162adb3bc016317c3d4b9005d', 0, 'ff808081614f940e0161a52a2c3300ec', '53-TRIAL- 1', '2018-05-04 05:00:00', '2018-05-01 00:32:20', '68-TRIAL-12:00 PM 125', 30, '2018-05-01 00:45:00', '76-TRIAL-', 67, 'ff80808162adb3bc0163180aa0d2005f', '150-TRIAL-  198', 'ff808081614f940e0161d3ab8b6c011e', 1),
('ff80808162adb3bc01633bddc4e30066', 1, '2018-05-07 23:29:40', 'ff80808162adb3bc01633bde145c0067', 0, 'ff808081614f940e0161a52a2c3300ec', '9-TRIAL- 19', '2018-05-11 05:00:00', '2018-05-07 23:29:40', '186-TRIAL-12:00 PM 80', 30, '2018-05-07 23:30:00', '216-TRIAL-', 0, 'ff80808162adb3bc01633bddbb630065', '267-TRIAL-  28', 'ff808081614f940e0161d3ac1a390121', 0),
('ff8080816345dd260163dab409e00094', 2, '2018-06-07 19:43:42', 'ff8080816345dd260163dab539f70096', 0, 'ff8080816345dd260163ccc6d0d80069', '279-TRIAL-', '2018-06-11 05:00:00', '2018-06-07 19:43:42', '21-TRIAL-08:00 PM 5', 46, '2018-06-12 01:37:03', '126-TRIAL-', 60, 'ff8080816345dd260163dab408ac0091', '16-TRIAL-  126', 'ff8080816345dd260163cd0220b30071', 1),
('ff8080816345dd260163cc6098fb0065', 1, '2018-06-05 00:57:53', 'ff8080816345dd260163cc619fb70066', 0, 'ff808081614f940e0161a52a2c3300ec', '166-TRIAL-', '2018-06-08 05:00:00', '2018-06-05 00:57:53', '81-TRIAL-12:00 PM 164', 44, '2018-06-05 02:07:48', '140-TRIAL-', 67, 'ff8080816345dd260163cc6097c50064', '21-TRIAL-  262', 'ff808081614f940e0161d3abca9d011f', 1),
('ff8080816345dd260163607b8ff4002f', 1, '2018-05-15 02:08:21', 'ff8080816345dd2601636081a8430030', 1, 'ff808081614f940e0161a52a2c3300ec', '21-TRIAL- 6', '2018-05-18 05:00:00', '2018-05-15 02:08:21', '209-TRIAL-09:00 AM 15', 30, '2018-05-30 02:06:48', '202-TRIAL-', 67, 'ff8080816345dd260163607b8b75002e', '24-TRIAL- Sin :   241', 'ff808081614f940e0161d3b4a4af0135', 0),
('ff8080816345dd260163adc6607a0041', 1, '2018-05-30 02:20:49', 'ff8080816345dd260163adcec7dc0042', 0, 'ff808081614f940e0161a52a2c3300ec', '45-TRIAL- 2', '2018-06-02 05:00:00', '2018-05-30 02:20:49', '223-TRIAL-12:00 PM 231', 30, '2018-05-30 02:30:00', '6-TRIAL- 2', 55, 'ff8080816345dd260163adc659850040', '18-TRIAL-  202', 'ff808081614f940e0161d3aa4da0011c', 0),
('ff8080816345dd260163cd1267fd007a', 1, '2018-06-05 04:12:06', 'ff8080816345dd260163cd151136007b', 0, 'ff8080816345dd260163ccc6d0d80069', '107-TRIAL-', '2018-06-08 05:00:00', '2018-06-05 04:12:06', '81-TRIAL-03:00 PM 112', 46, '2018-06-08 22:16:23', '136-TRIAL-', 60, 'ff8080816345dd260163cd1266ce0079', '114-TRIAL-  109', 'ff8080816345dd260163cd02b8e10073', 1),
('ff8080816345dd2601635f72e7490028', 2, '2018-05-14 21:19:16', 'ff8080816345dd2601635f7cbb7e0029', 0, 'ff808081614f940e0161a52a2c3300ec', '184-TRIAL-', '2018-05-18 05:00:00', '2018-05-14 21:19:16', '290-TRIAL-12:00 PM 293', 30, '2018-05-30 03:11:33', '296-TRIAL-', 70, 'ff8080816345dd2601635f72db5b0027', '154-TRIAL-  145', 'ff808081614f940e0161dd251973014f', 0),
('ff8080816345dd26016360775ebb002c', 2, '2018-05-15 02:03:46', 'ff8080816345dd2601635f7cbb7e0029', 1, 'ff808081614f940e0161a52a2c3300ec', '8-TRIAL- 24', '2018-05-18 05:00:00', '2018-05-15 02:03:46', '291-TRIAL-12:00 PM 212', 30, '2018-05-30 03:11:35', '31-TRIAL-', 164, 'ff8080816345dd26016360775124002b', '239-TRIAL- Sin :   Extras : Amaranto ($15)  158', 'ff808081614f940e0161d3ab8b6c011e', 0),
('ff8080816345dd260163b7f60f890059', 1, '2018-06-01 01:49:06', NULL, 1, 'ff808081614f940e0161a52a2c3300ec', '122-TRIAL-', '2018-09-01 05:00:00', '2018-06-01 01:49:06', '95-TRIAL-12:00 PM 152', 34, '2018-06-01 01:49:06', '69-TRIAL-', 75, 'ff8080816345dd260163b7f60c9a0058', '238-TRIAL- Sin : Brócoli   Extras : Almendras ($15)  23', 'ff808081614f940e0161d3adcec90126', 0),
('ff8080816345dd260163b7f611e9005c', 2, '2018-06-01 01:49:07', NULL, 1, 'ff808081614f940e0161a52a2c3300ec', '18-TRIAL- 6', '2018-11-01 06:00:00', '2018-06-01 01:49:07', '259-TRIAL-09:00 AM 98', 34, '2018-06-01 01:49:07', '286-TRIAL-', 140, 'ff8080816345dd260163b7f60f8f005b', '262-TRIAL- Sin : Jamón de pavo Queso gouda   Extras : Atún ($20)  233', 'ff808081614f940e0161d3af9d7d012c', 0),
('ff8080816345dd260163d5fda1a00084', 1, '2018-06-06 21:45:59', 'ff8080816345dd260163d6098c4a0087', 0, 'ff8080816345dd260163ccc6d0d80069', '158-TRIAL-', '2018-06-10 05:00:00', '2018-06-06 21:45:59', '246-TRIAL-03:00 PM 92', 46, '2018-06-07 02:18:58', '137-TRIAL-', 30, 'ff8080816345dd260163d5fda0650083', '147-TRIAL-  58', 'ff8080816345dd260163cd00593a006f', 1),
('ff8080816345dd260163d6d3878c008d', 1, '2018-06-07 01:39:37', 'ff8080816345dd260163d78afc22008f', 0, 'ff8080816345dd260163ccc6d0d80069', '2-TRIAL- 20', '2018-06-11 05:00:00', '2018-06-07 01:39:37', '198-TRIAL-10:00 AM 230', 46, '2018-06-12 01:36:56', '192-TRIAL-', 30, 'ff8080816345dd260163d6d3862a008c', '78-TRIAL-  99', 'ff8080816345dd260163cd00593a006f', 1),
('ff8080816345dd260163dab40a990095', 2, '2018-06-07 19:43:42', 'ff8080816345dd260163d78afc22008f', 0, 'ff8080816345dd260163ccc6d0d80069', '52-TRIAL- 4', '2018-06-11 05:00:00', '2018-06-07 19:43:42', '82-TRIAL-10:00 AM 240', 46, '2018-06-12 01:36:57', '115-TRIAL-', 80, 'ff8080816345dd260163dab4096b0093', '62-TRIAL-  267', 'ff8080816345dd260163cd0252510072', 1),
('ff8080816345dd260163b7f60aa70055', 2, '2018-06-01 01:49:05', '2c9fa607643e159501643e8a2ce50000', 1, 'ff808081614f940e0161a52a2c3300ec', '136-TRIAL-', '2018-07-01 05:00:00', '2018-06-01 01:49:05', '218-TRIAL-12:00 PM 97', 34, '2018-06-27 05:00:00', '28-TRIAL-', 130, 'ff8080816345dd260163b7f606b70052', '116-TRIAL- Sin : Aderezo de la casa   Extras : Amaranto ($15)  230', 'ff808081614f940e0161d3ae441a0128', 0),
('ff8080816345dd260163e164ae91009b', 1, '2018-06-09 02:54:22', 'ff8080816345dd260163e168ecb8009c', 0, 'ff8080816345dd260163ccc6d0d80069', '249-TRIAL-', '2018-06-12 05:00:00', '2018-06-09 02:54:22', '58-TRIAL-08:00 PM 229', 46, '2018-06-22 21:54:02', '220-TRIAL-', 30, 'ff8080816345dd260163e164ad58009a', '160-TRIAL-  147', 'ff8080816345dd260163cd00593a006f', 1),
('ff8080816345dd260163b70aa9ea004d', 1, '2018-05-31 21:31:59', '2c9fa607644c96ae01644dfd41050000', 1, 'ff808081614f940e0161a52a2c3300ec', '262-TRIAL-', '2018-07-04 05:00:00', '2018-05-31 21:31:59', '275-TRIAL-12:00 PM 192', 30, '2018-06-30 05:00:00', '161-TRIAL-', 60, 'ff8080816345dd260163b70a89c2004c', '198-TRIAL- Sin : Betabel   46', 'ff808081614f940e0161d3adcec90126', 0),
('ff808181644870ac01644885f2120002', 2, '2018-06-28 22:31:35', '2c9fa607644c96ae01645849f86f0003', 0, 'ff8080816345dd260163ccc6d0d80069', '14-TRIAL- 2', '2018-07-06 05:00:00', '2018-06-28 22:31:35', '188-TRIAL-03:00 PM 69', 46, '2018-07-17 01:48:40', '238-TRIAL-', 60, 'ff808181644870ac01644885ecfd0001', '75-TRIAL-  215', 'ff8080816345dd260163cd00daae0070', 1),
('ff8081816448b48d016448b6f9fa0002', 2, '2018-06-28 23:25:08', '2c9fa607646e1ca501647209c4ab0006', 0, 'ff8080816345dd260163ccc6d0d80069', '121-TRIAL-', '2018-07-11 05:00:00', '2018-06-28 23:25:08', '15-TRIAL-10:00 AM 128', 46, '2018-07-17 01:49:20', '34-TRIAL-', 60, 'ff8081816448b48d016448b6f5180001', '5-TRIAL-  164', 'ff8080816345dd260163cd00daae0070', 1),
('ff8080816345dd260163b7f60c0b0056', 2, '2018-06-01 01:49:06', '2c9fa607646e1ca50164de2f50780039', 1, 'ff808081614f940e0161a52a2c3300ec', '57-TRIAL- 1', '2018-08-01 05:00:00', '2018-06-01 01:49:06', '61-TRIAL-09:00 AM 224', 34, '2018-07-28 05:00:00', '249-TRIAL-', 30, 'ff8080816345dd260163b7f609780054', '30-TRIAL- Sin : Piña   Extras : Almendras ($15)  123', 'ff808081614f940e0161d3b5f2e80139', 0),
('ff808181644cbd5701644ccc07aa0007', 2, '2018-06-29 18:26:37', '2c9fa607646e1ca501648bc9907a0036', 0, 'ff8080816345dd260163ccc6d0d80069', '150-TRIAL-', '2018-07-16 05:00:00', '2018-06-29 18:26:37', '125-TRIAL-08:00 PM 110', 46, '2018-07-17 01:47:36', '237-TRIAL-', 60, 'ff808181644cbd5701644ccbfb460006', '37-TRIAL-  78', 'ff8080816345dd260163cd00daae0070', 1),
('ff80818164425b290164426f545f0003', 2, '2018-06-27 18:09:10', '2c9fa607643e1595016448d6e4740001', 0, 'ff8080816345dd260163ccc6d0d80069', '93-TRIAL- 1', '2018-07-03 05:00:00', '2018-06-27 18:09:09', '114-TRIAL-08:00 PM 264', 46, '2018-07-17 01:48:07', '91-TRIAL-', 60, 'ff80818164425b290164426f4f150002', '235-TRIAL-  105', 'ff8080816345dd260163cd00593a006f', 1),
('ff808181644cbd5701644cbfcaa40002', 2, '2018-06-29 18:13:15', '2c9fa607644c96ae016453239c720001', 0, 'ff8080816345dd260163ccc6d0d80069', '137-TRIAL-', '2018-07-05 05:00:00', '2018-06-29 18:13:15', '137-TRIAL-10:00 AM 223', 46, '2018-07-17 01:48:21', '164-TRIAL-', 60, 'ff808181644cbd5701644cbfb7c80001', '108-TRIAL-  268', 'ff8080816345dd260163cd00daae0070', 1),
('ff808181644cbd5701644ccfba0a000a', 2, '2018-06-29 18:30:39', '2c9fa607644c96ae016453239c920002', 0, 'ff8080816345dd260163ccc6d0d80069', '81-TRIAL- 1', '2018-07-05 05:00:00', '2018-06-29 18:30:39', '152-TRIAL-03:00 PM 73', 46, '2018-07-17 01:48:27', '152-TRIAL-', 60, 'ff808181644cbd5701644ccfad180009', '276-TRIAL-  126', 'ff8080816345dd260163cd00daae0070', 1),
('ff8081816448dfef016448e32cb10002', 2, '2018-06-29 00:13:25', '2c9fa60764624d39016467bd0c960001', 0, 'ff8080816345dd260163ccc6d0d80069', '196-TRIAL-', '2018-07-09 05:00:00', '2018-06-29 00:13:25', '249-TRIAL-03:00 PM 240', 46, '2018-07-17 01:49:00', '74-TRIAL-', 60, 'ff8081816448dfef016448e318f10001', '43-TRIAL-  211', 'ff8080816345dd260163cd00593a006f', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_ordenesdetalles`
--

CREATE TABLE IF NOT EXISTS `ordenes_ordenesdetalles` (
  `ws_orden_detalles_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  `orden_detalle_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `FK_b6eb5a3s9kj9uay4s2nl5tpoa` (`ws_orden_detalles_id`),
  KEY `FK_fsr1i884y9wg7f4f2y7dn4gob` (`orden_detalle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platillos`
--

CREATE TABLE IF NOT EXISTS `platillos` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `archivo_foto` char(255) COLLATE utf8_bin DEFAULT NULL,
  `calorias` int(32) DEFAULT NULL,
  `date_created` timestamp NOT NULL,
  `descripcion` text COLLATE utf8_bin,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `nombre` char(255) COLLATE utf8_bin NOT NULL,
  `tipo_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_platillosnombre_col` (`nombre`),
  KEY `FK_aof9nwnju1c0m5h0u6hur0cq1` (`id_autor`),
  KEY `FK_ggpw0rv3jm8nt88n8fwampetg` (`tipo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `platillos`
--

INSERT INTO `platillos` (`id`, `activo`, `archivo_foto`, `calorias`, `date_created`, `descripcion`, `id_autor`, `last_updated`, `nombre`, `tipo_id`) VALUES
('ff808081614f940e01619150b36b00a0', 1, 'Platillo_1518818636989.jpg', 693, '2018-02-14 04:37:21', 'Baguette integral de tradicional sabor. Con pollo a la plancha y vegetales frescos.', 8, '2018-02-28 05:26:16', 'Baguette de pollo', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e0161914bc65e009f', 1, 'Platillo_1518818762116.jpg', 615, '2018-02-14 04:31:58', 'Chapata integral de pechuga de pavo, ligera y nutritiva.', 8, '2018-02-17 04:06:02', 'Chapata de pechuga de pavo', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e016196864b6a00b3', 1, 'Platillo_1518819232539.jpg', 746, '2018-02-15 04:53:59', 'Pan integral de 9 semillas con berenjena, calabacita, champiñones o portobello. Una deliciosa opción vegetariana.', 8, '2018-02-17 04:13:53', 'Flat Veggie', 'ff808081614f940e01614f94422a0018'),
('ff808081614f940e01619a46b82500b7', 1, 'Platillo_1518883899557.jpg', 90, '2018-02-15 22:23:01', 'Colación de frutas mixtas.', 8, '2018-02-17 22:11:40', 'Snack de frutas', 'ff808081614f940e016190b79beb0099'),
('ff808081614f940e01619a4f0bdf00ba', 1, 'Platillo_1518883863703.jpg', 130, '2018-02-15 22:32:07', 'Sandwichitos integrales con jamón. La opción ideal para calmar tu hambre de manera saludable.', 8, '2018-03-01 00:18:29', 'Sandwichitos ingleses', 'ff808081614f940e016190b79beb0099'),
('ff808081614f940e0161954518e000a9', 1, 'Platillo_1518818888166.jpg', 499, '2018-02-14 23:03:09', 'Tradicional ensalada de queso parmesano, crutones y aderezo césar con anchoas.', 8, '2018-02-17 04:08:08', 'Ensalada César', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e0161952bd86700a3', 1, 'Platillo_1518883942409.jpg', 547, '2018-02-14 22:35:34', 'Tortilla de harina integral rellena de jamón, aderezo y vegetales frescos.', 8, '2018-02-17 22:12:22', 'Wrap de pollo', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619550561800aa', 1, 'Platillo_1518818868203.jpg', 439, '2018-02-14 23:15:26', 'Ensalada de mix de lechugas, pepino y pollo, deliciosa y fresca para comer saludable.', 8, '2018-02-28 23:51:18', 'Deli de pollo', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e016195347af900a5', 1, 'Platillo_1518883798749.jpg', 520, '2018-02-14 22:45:00', 'Sandwich ligero integral de jamón y queso.', 8, '2018-02-17 22:09:59', 'Sandwich de jamón', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e016191557a3000a1', 1, 'Platillo_1518883923569.jpg', 494, '2018-02-14 04:42:34', 'Tortilla de harina integral rellena de jamón de pavo y vegetales.', 8, '2018-02-28 05:28:56', 'Wrap de jamón', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619147eb26009e', 1, 'Platillo_1518892545597.jpg', 605, '2018-02-14 04:27:45', 'Emparedado nutritivo de jamón de pavo con vegetales.', 8, '2018-02-28 05:16:40', 'Chapata de jamón', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a6fa31200c4', 1, 'Platillo_1518890024642.jpg', 115, '2018-02-15 23:07:43', 'Postre espumoso de mango endulzado con Splenda.', 8, '2018-02-17 23:53:45', 'Mousse de mango', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e0161953c115e00a7', 1, 'Platillo_1518819128752.jpg', 478, '2018-02-14 22:53:17', 'Ensalada vegetariana con espinaca fresca, manzana y arándanos.  La mejor opción para incluir antioxidantes a tu cuerpo.', 8, '2018-02-17 04:12:09', 'Ensalada Macavi', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e01619a8e7e7500c9', 1, 'Platillo_1518819156228.jpg', 127, '2018-02-15 23:41:25', 'Jugo de frutas tropicales... refrescante y saludable.', 8, '2018-02-28 21:53:17', 'Exotic', 'ff808081614f940e01614f9442250017'),
('ff808081614f940e0161967f4a2700b2', 1, 'Platillo_1518819181532.jpg', 890, '2018-02-15 04:46:20', 'Pan integral de 9 semillas con una combinación de jamón selva negra y manzana.', 8, '2018-02-17 04:13:02', 'Flat Apple Ham', 'ff808081614f940e01614f94422a0018'),
('ff808081614f940e016195c92bf200ae', 1, 'Platillo_1518819201904.jpg', 735, '2018-02-15 01:27:25', 'Pan multigrano de 9 semillas con pollo a la plancha, vegetales frescos y salsa chipotle.', 8, '2018-02-17 04:13:22', 'Flat Blaze', 'ff808081614f940e01614f94422a0018'),
('ff808081614f940e01619a58756100bb', 1, 'Platillo_1518819253347.jpg', 46, '2018-02-15 22:42:24', 'Gelatina de frutos rojos con yogurt endulzada con Splenda.  Ideal para conservar la línea.', 8, '2018-02-17 04:14:13', 'Gelatina sin azúcar', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e01619a6b02bb00c1', 1, 'Platillo_1518819474536.jpg', 239, '2018-02-15 23:02:40', 'Postre espumoso con taro y un toque de nuez.', 8, '2018-02-17 04:17:55', 'Mousse de taro', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e0161955dc74200ab', 1, 'Platillo_1518818846992.jpg', 508, '2018-02-14 23:30:07', 'Ensalada con atún, mix de verduras y zanahoria.  Ideal para una comida ligera y saludable.', 8, '2018-02-17 23:51:52', 'Deli de atún', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e01618b38665c0033', 1, 'Platillo_1518819278589.jpg', 840, '2018-02-13 00:13:05', 'Deliciosa hamburguesa integral de res con semillas, acompañada de hummus de garbanzo y vegetales frescos.', 8, '2018-03-01 01:00:45', 'Hamburguesa', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a5f698400be', 1, 'Platillo_1518819680990.jpg', 315, '2018-02-15 22:50:00', 'Postre italiano espumoso, de yogurt y una capa de frutos rojos.', 8, '2018-02-17 04:21:21', 'Panacota', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e016195387f7500a6', 1, 'Platillo_1518883824754.jpg', 573, '2018-02-14 22:49:23', 'Delicioso emparedado integral con pollo a la plancha.', 8, '2018-02-17 22:10:25', 'Sandwich de pollo', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a775f1600c6', 1, 'Platillo_1518819580647.jpg', 458, '2018-02-15 23:16:10', 'Pastelito delicioso de zanahoria con cubierta de queso crema y chocolate blanco.', 8, '2018-03-01 00:50:57', 'Muffin de zanahoria', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e0161968f083100b4', 1, 'Platillo_1518883880899.jpg', 50, '2018-02-15 05:03:32', 'Opción fresca y ligera para controlar el hambre.  Contiene antioxidantes.', 8, '2018-02-17 22:11:21', 'Snack de betabel', 'ff808081614f940e016190b79beb0099'),
('ff808081614f940e016190ddc8ce009c', 1, 'Platillo_1518818666145.jpg', 1017, '2018-02-14 02:31:49', 'Exquisita chapata integral de atún con verduras.', 8, '2018-02-28 05:30:13', 'Chapata de atún', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a86d08100c8', 1, 'Platillo_1518891847890.jpg', 500, '2018-02-15 23:33:02', 'Lo delicioso del pan pero sin gluten.. amigable para tu intestino.', 8, '2018-02-18 00:24:08', 'Muffin sin gluten', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e01619a4b8e4200b9', 1, 'Platillo_1518891409626.jpg', 150, '2018-02-15 22:28:18', 'Snack de proteína fresco y delicioso para calmar el hambre.', 8, '2018-02-18 00:16:50', 'Rollitos de jamón.', 'ff808081614f940e016190b79beb0099'),
('ff808081614f940e01619a7d8cb700c7', 1, 'Platillo_1520634175509.jpg', 254, '2018-02-15 23:22:55', 'Rico pastelito elaborado con elote fresco.', 8, '2018-03-10 04:22:56', 'Muffin de elote', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e01619a48cd4a00b8', 1, 'Platillo_1520540249255.jpg', 100, '2018-02-15 22:25:18', 'Rico snack que retrasa tu hambre de manera saludable.', 8, '2018-03-09 02:17:29', 'Brocheta de uva y queso', 'ff808081614f940e016190b79beb0099'),
('ff808081614f940e01619a744a6700c5', 1, 'Platillo_1520540292476.jpg', 377, '2018-02-15 23:12:48', 'Pastelito de chocolate con Snickers para disfrutar a cualquier hora.', 8, '2018-03-09 02:18:12', 'Muffin de chocolate', 'ff808081614f940e01614f944249001c'),
('ff808081614f940e0161a4a4bac000e5', 1, 'Platillo_1518891332891.jpg', 300, '2018-02-17 22:41:55', 'Plato perfectamente combinado en nutrientes, contiene pollo, vegetales y arroz a la jardinera.', 8, '2018-02-18 00:15:33', 'Pollo a la plancha, vegetales y arroz', 'ff808081614f940e016190cf6ecd009b'),
('ff808081614f940e01619b208b8000d1', 1, 'Platillo_1518800094890.jpg', 384, '2018-02-16 02:20:57', 'Clásico arroz blanco con el toque especial del sabor saludable.', 8, '2018-02-16 22:54:55', 'Arroz blanco', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e0161952ebb1100a4', 1, 'Platillo_1518818023658.jpg', 515, '2018-02-14 22:38:43', 'Emparedado de jamón, queso y un exquisito aderezo de salmón.', 8, '2018-02-17 03:53:44', 'Baguel de salmón y jamón', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a94723000cb', 1, 'Platillo_1519076057925.jpg', 65, '2018-02-15 23:47:55', 'Jugo hidratante con un toque de hierbabuena.  Es ideal para personas con diabetes.', 8, '2018-02-28 21:52:55', 'Mojito', 'ff808081614f940e01614f9442250017'),
('ff808081614f940e01619b6389f900d6', 1, 'Platillo_1518818821371.jpg', 192, '2018-02-16 03:34:07', 'Deliciosa crema de zanahoria.', 8, '2018-02-17 04:07:01', 'Crema de zanahoria', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e0161a4ad5b6500e7', 1, 'Platillo_1519840130175.jpg', 247, '2018-02-17 22:51:20', 'Comida completa con pasta, verduras y pollo. Delicioso, para quedar saludablemente satisfecho.', 8, '2018-02-28 23:48:50', 'Pollo, vegetales y pasta', 'ff808081614f940e016190cf6ecd009b'),
('ff808081614f940e01619b5d8d4c00d3', 1, 'Platillo_1518818614471.jpg', 397, '2018-02-16 03:27:35', 'Arroz integral sazonado con salsa especial acompañado de verduras.', 8, '2018-03-01 00:24:06', 'Arroz integral', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e01619542179300a8', 1, 'Platillo_1518819108557.jpg', 406, '2018-02-14 22:59:52', 'Mezcla de lechugas con tzatziki, jitomate, cebolla morada y aderezo griego ...descubre su sabor.', 8, '2018-02-17 04:11:49', 'Ensalada Griega', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e01619b13091b00ce', 1, 'Platillo_1518819726006.jpg', 390, '2018-02-16 02:06:11', 'Pasta con delicioso aroma. El sabor italiano a tu mesa.', 8, '2018-03-01 00:34:55', 'Pasta italiana', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e0161a0a28bf200e2', 1, 'Platillo_1518891941749.jpg', 697, '2018-02-17 04:01:03', 'Ensalada con codito y atún.', 8, '2018-02-18 00:25:42', 'Ensalada de pasta con atún', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e01619b160c0a00cf', 1, 'Platillo_1518819755856.jpg', 1020, '2018-02-16 02:09:29', 'Pasta con crema poblana, prueba su encantador sabor.', 8, '2018-02-17 04:22:36', 'Pasta poblana', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e01619b6db25300d7', 1, 'Platillo_1518819959418.jpg', 234, '2018-02-16 03:45:13', 'Taquitos vegetarianos de repollo y fideo chino, acompañados de aderezo de cacahuate.', 8, '2018-02-17 04:25:59', 'Raw', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e01619b1ac19f00d0', 1, 'Platillo_1518883750677.jpg', 203, '2018-02-16 02:14:37', 'Pasta integral con mix de verduras, ideal complemento para comer.', 8, '2018-02-17 22:09:11', 'Pasta integral', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e0161a0a0debc00e1', 1, 'Platillo_1518891960580.jpg', 696, '2018-02-17 03:59:13', 'Ensalada de lechuga pasta y pollo, tu comida ligera y saludable.', 8, '2018-02-18 00:26:01', 'Ensalada de pasta con pollo', 'ff808081614f940e01614f944242001b'),
('ff808081614f940e0161a4e433c600e9', 1, 'Platillo_1520540268004.jpg', 388, '2018-02-17 23:51:14', 'Delicioso Croissant de jamón y queso especial acompañado de hummus de garbanzo.', 8, '2018-03-09 02:17:48', 'Cuernito', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e0161af8a49060106', 1, 'Platillo_1519068530945.jpg', 225, '2018-02-20 01:28:51', 'Arroz con jitomate que complementa tus comidas.', 8, '2018-02-20 01:28:51', 'Arroz rojo', 'ff808081614f940e016190c66c82009a'),
('ff808081614f940e0161a09a8ec900e0', 1, 'Platillo_1518817939140.jpg', 359, '2018-02-17 03:52:19', 'Deliciosa hamburguesa vegetariana de portobello y hummus.', 8, '2018-02-28 05:28:08', 'Hamburguesa de portobello', 'ff808081614f940e01614f9442300019'),
('ff808081614f940e01619a91e9d200ca', 1, 'Platillo_1518818799916.jpg', 154, '2018-02-15 23:45:09', 'Jugo refrescante, una explosión de vitamina C.', 8, '2018-02-28 21:52:35', 'Citrus', 'ff808081614f940e01614f9442250017'),
('ff808081614f940e0162112ad9d001db', 1, 'Platillo_1520706726219.jpg', 366, '2018-03-11 00:27:24', 'Combinación de frutas y semillas con base de leche.  Nutritivamente delicioso.', 8, '2018-03-24 03:14:10', 'Apple bomb', 'ff808081614f940e016201c2455e01a9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platillosestablecimientos`
--

CREATE TABLE IF NOT EXISTS `platillosestablecimientos` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `costo` float(24,0) NOT NULL,
  `date_created` timestamp NOT NULL,
  `establecimiento_id` char(255) COLLATE utf8_bin NOT NULL,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `platillo_id` char(255) COLLATE utf8_bin NOT NULL,
  `precio` float(24,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gfd39rudm1lai95yavhwrdq6m` (`establecimiento_id`),
  KEY `FK_md5yc2cwq0p22caa43gmerr3` (`platillo_id`),
  KEY `FK_rqcb4t6ks6qgj0jk13f38djbj` (`id_autor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `platillosestablecimientos`
--

INSERT INTO `platillosestablecimientos` (`id`, `activo`, `costo`, `date_created`, `establecimiento_id`, `id_autor`, `last_updated`, `platillo_id`, `precio`) VALUES
('ff808081614f940e0161dac8daef0143', 1, 10, '2018-02-28 11:00:52', 'ff808081614f940e01614fcbbf050029', 10, '2018-02-28 11:00:52', 'ff808081614f940e01619b208b8000d1', 25),
('ff808081614f940e0161d3ae441a0128', 1, 15, '2018-02-27 01:54:29', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:17:10', 'ff808081614f940e016195347af900a5', 50),
('ff808081614f940e0161d3ae0cdc0127', 1, 16, '2018-02-27 01:54:15', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:17:55', 'ff808081614f940e0161a4ad5b6500e7', 60),
('ff808081614f940e0161d3af9d7d012c', 1, 24, '2018-02-27 01:55:57', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:20:21', 'ff808081614f940e01619147eb26009e', 50),
('ff808081614f940e0161d3aea891012a', 1, 25, '2018-02-27 01:54:54', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:20:53', 'ff808081614f940e016195387f7500a6', 55),
('ff808081614f940e0161d3aa9766011d', 1, 27, '2018-02-27 01:50:28', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:22:09', 'ff808081614f940e0161914bc65e009f', 50),
('ff808081614f940e0161d3b4147c0132', 1, 27, '2018-02-27 02:00:50', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:22:25', 'ff808081614f940e016190ddc8ce009c', 55),
('ff808081614f940e0161d3b05a01012e', 1, 30, '2018-02-27 01:56:45', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:22:38', 'ff808081614f940e0161952bd86700a3', 55),
('ff808081614f940e0161d3aa4da0011c', 1, 32, '2018-02-27 01:50:09', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:22:55', 'ff808081614f940e01619150b36b00a0', 55),
('ff808081614f940e0161d3aa39b5011b', 1, 50, '2018-02-27 01:50:04', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:23:15', 'ff808081614f940e0161952ebb1100a4', 75),
('ff808081614f940e0161d3acc03d0122', 1, 53, '2018-02-27 01:52:49', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:23:33', 'ff808081614f940e01618b38665c0033', 75),
('ff808081614f940e0161d3ab8b6c011e', 1, 29, '2018-02-27 01:51:30', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:25:41', 'ff808081614f940e01619550561800aa', 67),
('ff808081614f940e0161d3abca9d011f', 1, 33, '2018-02-27 01:51:47', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:25:54', 'ff808081614f940e0161953c115e00a7', 67),
('ff808081614f940e0161d3b4a4af0135', 1, 38, '2018-02-27 02:01:27', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:26:06', 'ff808081614f940e0161954518e000a9', 67),
('ff808081614f940e0161dd231586014a', 1, 45, '2018-02-28 21:58:40', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:26:20', 'ff808081614f940e01619542179300a8', 67),
('ff808081614f940e0161d3b3b3a2012f', 1, 22, '2018-02-27 02:00:25', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:26:42', 'ff808081614f940e0161a0a28bf200e2', 67),
('ff808081614f940e0161dd22edcd0149', 1, 52, '2018-02-28 21:58:29', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:27:45', 'ff808081614f940e016195c92bf200ae', 75),
('ff808081614f940e0161dd234a0c014c', 1, 45, '2018-02-28 21:58:53', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:27:11', 'ff808081614f940e016196864b6a00b3', 75),
('ff808081614f940e0161d3b43ca90133', 1, 20, '2018-02-27 02:01:00', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:26:54', 'ff808081614f940e0161a0a0debc00e1', 67),
('ff808081614f940e0161dd232b8d014b', 1, 59, '2018-02-28 21:58:45', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:28:02', 'ff808081614f940e0161967f4a2700b2', 80),
('ff808081614f940e0161dd2143020146', 1, 15, '2018-02-28 21:56:40', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:28:18', 'ff808081614f940e01619a91e9d200ca', 35),
('ff808081614f940e0161dd22b8c40148', 1, 9, '2018-02-28 21:58:16', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:29:28', 'ff808081614f940e01619a94723000cb', 35),
('ff808081614f940e0161d3b4e72a0136', 1, 22, '2018-02-27 02:01:44', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:29:47', 'ff808081614f940e01619a744a6700c5', 40),
('ff808081614f940e0161dd251973014f', 1, 18, '2018-02-28 22:00:52', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:30:06', 'ff808081614f940e01619a5f698400be', 35),
('ff808081614f940e0161d3b529f60137', 0, 0, '2018-02-27 02:02:01', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:14:11', 'ff808081614f940e01619a7d8cb700c7', 0),
('ff808081614f940e0161d3aee7f8012b', 1, 22, '2018-02-27 01:55:11', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:19:43', 'ff808081614f940e016191557a3000a1', 50),
('ff808081614f940e0161d3aff280012d', 0, 0, '2018-02-27 01:56:19', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:14:19', 'ff808081614f940e0161a09a8ec900e0', 0),
('ff808081614f940e0161d3ae72910129', 0, 0, '2018-02-27 01:54:41', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:14:26', 'ff808081614f940e0161968f083100b4', 0),
('ff808081614f940e0161d3aa09460119', 0, 0, '2018-02-27 01:49:52', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:14:31', 'ff808081614f940e01619b5d8d4c00d3', 0),
('ff808081614f940e0161dd2364e3014d', 0, 0, '2018-02-28 21:59:00', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:14:37', 'ff808081614f940e01619a6fa31200c4', 0),
('ff808081614f940e0161d3b46fb70134', 0, 0, '2018-02-27 02:01:13', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:14:43', 'ff808081614f940e01619b6389f900d6', 0),
('ff808081614f940e0161d3b5b2c60138', 0, 0, '2018-02-27 02:02:36', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:14:49', 'ff808081614f940e01619a775f1600c6', 0),
('ff808081614f940e0161d3b5f2e80139', 0, 0, '2018-02-27 02:02:52', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:14:54', 'ff808081614f940e01619a46b82500b7', 0),
('ff808081614f940e0161d3aa1a5a011a', 0, 0, '2018-02-27 01:49:56', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:15:00', 'ff808081614f940e0161af8a49060106', 0),
('ff808081614f940e0161d3ada0bc0125', 0, 0, '2018-02-27 01:53:47', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:15:05', 'ff808081614f940e01619b160c0a00cf', 0),
('ff808081614f940e0161d3abed0b0120', 0, 0, '2018-02-27 01:51:55', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:15:12', 'ff808081614f940e0161a4e433c600e9', 0),
('ff808081614f940e0161d3ac1a390121', 0, 0, '2018-02-27 01:52:07', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:15:23', 'ff808081614f940e01619a58756100bb', 0),
('ff808081614f940e0161d3ace4120123', 0, 0, '2018-02-27 01:52:59', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:15:28', 'ff808081614f940e01619a6b02bb00c1', 0),
('ff808081614f940e0161d3ad64430124', 0, 0, '2018-02-27 01:53:31', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:15:33', 'ff808081614f940e01619b13091b00ce', 0),
('ff808081614f940e0161d3b3d1f80130', 0, 0, '2018-02-27 02:00:33', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:15:38', 'ff808081614f940e01619a48cd4a00b8', 0),
('ff808081614f940e0161dd2527680150', 0, 0, '2018-02-28 22:00:55', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:16:18', 'ff808081614f940e01619b1ac19f00d0', 0),
('ff808081614f940e0161d3b3f2660131', 0, 0, '2018-02-27 02:00:41', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:16:41', 'ff808081614f940e0161955dc74200ab', 0),
('ff808081614f940e0161dd2534f40151', 0, 0, '2018-02-28 22:00:59', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:16:48', 'ff808081614f940e01619b6db25300d7', 0),
('ff808081614f940e0161d3a9f6890118', 0, 0, '2018-02-27 01:49:47', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:16:56', 'ff808081614f940e01619b208b8000d1', 0),
('ff808081614f940e0161dd21a68c0147', 1, 25, '2018-02-28 21:57:06', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:28:45', 'ff808081614f940e01619a8e7e7500c9', 35),
('ff808081614f940e0161d3adcec90126', 1, 21, '2018-02-27 01:53:59', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 00:33:25', 'ff808081614f940e0161a4a4bac000e5', 60),
('ff808081614f940e0161dd2543210152', 0, 0, '2018-02-28 22:01:02', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:16:34', 'ff808081614f940e01619a4b8e4200b9', 0),
('ff808081614f940e0161dd25528f0153', 0, 0, '2018-02-28 22:01:06', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-06 01:16:38', 'ff808081614f940e01619a4f0bdf00ba', 0),
('ff808081614f940e0161dd237ad5014e', 1, 0, '2018-02-28 21:59:05', 'ff808081614f940e0161a52a2c3300ec', 18, '2018-03-16 00:31:10', 'ff808081614f940e01619a86d08100c8', 0),
('ff8080816345dd260163cd00593a006f', 1, 50, '2018-06-05 03:52:22', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-06-05 03:52:22', 'ff808081614f940e016195347af900a5', 30),
('ff8080816345dd260163cd00daae0070', 1, 50, '2018-06-05 03:52:55', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-06-05 03:52:55', 'ff808081614f940e01619b5d8d4c00d3', 30),
('ff8080816345dd260163cd0220b30071', 1, 50, '2018-06-05 03:54:19', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-06-05 03:54:19', 'ff808081614f940e01619a91e9d200ca', 30),
('ff8080816345dd260163cd0252510072', 1, 70, '2018-06-05 03:54:32', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-06-05 03:54:32', 'ff808081614f940e0162112ad9d001db', 40),
('ff8080816345dd260163cd02b8e10073', 1, 30, '2018-06-05 03:54:58', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-06-05 03:54:58', 'ff808081614f940e01619a86d08100c8', 60),
('2c9fa607646e1ca50164810dbcf00009', 1, 10, '2018-07-10 02:58:39', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 02:58:39', 'ff808081614f940e01619b208b8000d1', 10),
('2c9fa607646e1ca50164810f7b87000a', 1, 10, '2018-07-10 03:00:33', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:00:33', 'ff808081614f940e0161af8a49060106', 10),
('2c9fa607646e1ca50164810f950e000b', 1, 1, '2018-07-10 03:00:39', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:00:39', 'ff808081614f940e0161952ebb1100a4', 1),
('2c9fa607646e1ca50164810fb466000c', 1, 10, '2018-07-10 03:00:47', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:00:47', 'ff808081614f940e01619150b36b00a0', 10),
('2c9fa607646e1ca50164810fe6ed000d', 1, 10, '2018-07-10 03:01:00', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:01:00', 'ff808081614f940e01619a48cd4a00b8', 10),
('2c9fa607646e1ca5016481100948000e', 1, 10, '2018-07-10 03:01:09', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:01:09', 'ff808081614f940e016190ddc8ce009c', 10),
('2c9fa607646e1ca5016481102801000f', 1, 10, '2018-07-10 03:01:17', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:01:17', 'ff808081614f940e01619147eb26009e', 10),
('2c9fa607646e1ca50164811044db0010', 1, 10, '2018-07-10 03:01:24', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:01:24', 'ff808081614f940e0161914bc65e009f', 10),
('2c9fa607646e1ca5016481106d7e0011', 1, 10, '2018-07-10 03:01:35', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:01:35', 'ff808081614f940e01619b6389f900d6', 10),
('2c9fa607646e1ca501648110856a0012', 1, 10, '2018-07-10 03:01:41', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:01:41', 'ff808081614f940e0161a4e433c600e9', 10),
('2c9fa607646e1ca5016481109d140013', 1, 10, '2018-07-10 03:01:47', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:01:47', 'ff808081614f940e0161955dc74200ab', 10),
('2c9fa607646e1ca501648110bca00014', 1, 11, '2018-07-10 03:01:55', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:01:55', 'ff808081614f940e01619550561800aa', 11),
('2c9fa607646e1ca501648110d7320015', 1, 11, '2018-07-10 03:02:02', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:02:02', 'ff808081614f940e0161954518e000a9', 11),
('2c9fa607646e1ca501648110eb7a0016', 1, 11, '2018-07-10 03:02:07', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:02:07', 'ff808081614f940e0161a0a28bf200e2', 11),
('2c9fa607646e1ca50164811104ea0017', 1, 11, '2018-07-10 03:02:14', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:02:14', 'ff808081614f940e0161a0a0debc00e1', 11),
('2c9fa607646e1ca5016481111c350018', 1, 11, '2018-07-10 03:02:20', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:02:20', 'ff808081614f940e01619542179300a8', 11),
('2c9fa607646e1ca501648111340d0019', 1, 11, '2018-07-10 03:02:26', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:02:26', 'ff808081614f940e0161953c115e00a7', 11),
('2c9fa607646e1ca5016481114dbf001a', 1, 11, '2018-07-10 03:02:32', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:02:32', 'ff808081614f940e01619a8e7e7500c9', 11),
('2c9fa607646e1ca50164811164b4001b', 1, 11, '2018-07-10 03:02:38', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:02:38', 'ff808081614f940e0161967f4a2700b2', 11),
('2c9fa607646e1ca5016481117cba001c', 1, 11, '2018-07-10 03:02:44', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:02:44', 'ff808081614f940e016195c92bf200ae', 11),
('2c9fa607646e1ca501648111960d001d', 1, 11, '2018-07-10 03:02:51', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:02:51', 'ff808081614f940e016196864b6a00b3', 11),
('2c9fa607646e1ca501648111ae71001e', 1, 11, '2018-07-10 03:02:57', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:02:57', 'ff808081614f940e01619a58756100bb', 11),
('2c9fa607646e1ca501648111c460001f', 1, 11, '2018-07-10 03:03:03', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:03:03', 'ff808081614f940e01618b38665c0033', 11),
('2c9fa607646e1ca501648111e0450020', 1, 11, '2018-07-10 03:03:10', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:03:10', 'ff808081614f940e0161a09a8ec900e0', 11),
('2c9fa607646e1ca50164811292720021', 1, 11, '2018-07-10 03:03:55', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:03:55', 'ff808081614f940e01619a94723000cb', 11),
('2c9fa607646e1ca501648112aa650022', 1, 11, '2018-07-10 03:04:02', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:04:02', 'ff808081614f940e01619a6fa31200c4', 11),
('2c9fa607646e1ca501648112c1ff0023', 1, 11, '2018-07-10 03:04:08', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:04:08', 'ff808081614f940e01619a6b02bb00c1', 11),
('2c9fa607646e1ca501648112d78a0024', 1, 11, '2018-07-10 03:04:13', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:04:13', 'ff808081614f940e01619a744a6700c5', 11),
('2c9fa607646e1ca501648112ef2d0025', 1, 11, '2018-07-10 03:04:19', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:04:19', 'ff808081614f940e01619a7d8cb700c7', 11),
('2c9fa607646e1ca50164811306d80026', 1, 11, '2018-07-10 03:04:25', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:04:25', 'ff808081614f940e01619a775f1600c6', 11),
('2c9fa607646e1ca5016481131d810027', 1, 11, '2018-07-10 03:04:31', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:04:31', 'ff808081614f940e01619a5f698400be', 11),
('2c9fa607646e1ca50164811333a90028', 1, 11, '2018-07-10 03:04:37', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:04:37', 'ff808081614f940e01619b1ac19f00d0', 11),
('2c9fa607646e1ca501648113489c0029', 1, 11, '2018-07-10 03:04:42', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:04:42', 'ff808081614f940e01619b13091b00ce', 11),
('2c9fa607646e1ca5016481135e55002a', 1, 11, '2018-07-10 03:04:48', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:04:48', 'ff808081614f940e01619b160c0a00cf', 11),
('2c9fa607646e1ca50164811385d7002b', 1, 21, '2018-07-10 03:04:58', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:04:58', 'ff808081614f940e0161a4a4bac000e5', 21),
('2c9fa607646e1ca5016481138678002c', 1, 21, '2018-07-10 03:04:58', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:04:58', 'ff808081614f940e0161a4a4bac000e5', 21),
('2c9fa607646e1ca5016481139f4d002d', 1, 21, '2018-07-10 03:05:04', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:05:04', 'ff808081614f940e0161a4ad5b6500e7', 21),
('2c9fa607646e1ca501648113b74f002e', 1, 21, '2018-07-10 03:05:10', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:05:10', 'ff808081614f940e01619b6db25300d7', 21),
('2c9fa607646e1ca501648114677b002f', 1, 21, '2018-07-10 03:05:55', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:05:55', 'ff808081614f940e01619a4b8e4200b9', 21),
('2c9fa607646e1ca5016481147b970030', 1, 21, '2018-07-10 03:06:01', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:06:01', 'ff808081614f940e016195387f7500a6', 21),
('2c9fa607646e1ca5016481148cbe0031', 1, 21, '2018-07-10 03:06:05', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:06:05', 'ff808081614f940e01619a4f0bdf00ba', 21),
('2c9fa607646e1ca5016481149c7f0032', 1, 21, '2018-07-10 03:06:09', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:06:09', 'ff808081614f940e0161968f083100b4', 21),
('2c9fa607646e1ca501648114b8fc0033', 1, 21, '2018-07-10 03:06:16', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:06:16', 'ff808081614f940e01619a46b82500b7', 21),
('2c9fa607646e1ca501648114d4bc0034', 1, 21, '2018-07-10 03:06:23', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:06:23', 'ff808081614f940e016191557a3000a1', 21),
('2c9fa607646e1ca501648114ec1c0035', 1, 21, '2018-07-10 03:06:29', 'ff8080816345dd260163ccc6d0d80069', 42, '2018-07-10 03:06:29', 'ff808081614f940e0161952bd86700a3', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platillos_categorias`
--

CREATE TABLE IF NOT EXISTS `platillos_categorias` (
  `platillo_categorias_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  `categoria_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `FK_89btww7nrjk9yiaw9urdorbdg` (`platillo_categorias_id`),
  KEY `FK_jc23mqxuqu4cetw2589icgjub` (`categoria_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `platillos_categorias`
--

INSERT INTO `platillos_categorias` (`platillo_categorias_id`, `categoria_id`) VALUES
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619147eb26009e', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161914bc65e009f', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e016191557a3000a1', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e016191557a3000a1', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161952bd86700a3', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e0161952bd86700a3', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161952ebb1100a4', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161952ebb1100a4', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01614f9441ce0008'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e0161954518e000a9', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e0161954518e000a9', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e0161954518e000a9', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619550561800aa', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619550561800aa', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619550561800aa', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161955dc74200ab', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161955dc74200ab', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e016195c92bf200ae', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e016195c92bf200ae', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e0161967f4a2700b2', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e0161967f4a2700b2', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161968f083100b4', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161968f083100b4', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e0161968f083100b4', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e0161968f083100b4', 'ff808081614f940e01614f9441ce0008'),
('ff808081614f940e0161968f083100b4', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e0161968f083100b4', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e0161968f083100b4', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619a46b82500b7', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e01619a46b82500b7', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a46b82500b7', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619a46b82500b7', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e01619a46b82500b7', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619a46b82500b7', 'ff808081614f940e01614f9441ce0008'),
('ff808081614f940e01619a48cd4a00b8', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619a48cd4a00b8', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e01619a48cd4a00b8', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619a48cd4a00b8', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a48cd4a00b8', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619a48cd4a00b8', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619a4b8e4200b9', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a4b8e4200b9', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619a4b8e4200b9', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619a4b8e4200b9', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619a4b8e4200b9', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619a4f0bdf00ba', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619a4f0bdf00ba', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a4f0bdf00ba', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619a4f0bdf00ba', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e01619a5f698400be', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619a5f698400be', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a6b02bb00c1', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619a6b02bb00c1', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a6fa31200c4', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a6fa31200c4', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619a6fa31200c4', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619a6fa31200c4', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619a744a6700c5', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a775f1600c6', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a7d8cb700c7', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a86d08100c8', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e01619a86d08100c8', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619a86d08100c8', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a8e7e7500c9', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a8e7e7500c9', 'ff808081614f940e01614f9441ce0008'),
('ff808081614f940e01619a8e7e7500c9', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619a8e7e7500c9', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619a8e7e7500c9', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e01619a8e7e7500c9', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e01619a8e7e7500c9', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e01614f9441ce0008'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e01614f9441ce0008'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619b13091b00ce', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619b13091b00ce', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619b160c0a00cf', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619b1ac19f00d0', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619b1ac19f00d0', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619b1ac19f00d0', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619b1ac19f00d0', 'ff808081614f940e01614f9441ce0008'),
('ff808081614f940e01619b1ac19f00d0', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e01619b1ac19f00d0', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619b1ac19f00d0', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619b208b8000d1', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619b208b8000d1', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619b208b8000d1', 'ff808081614f940e01614f9441ce0008'),
('ff808081614f940e01619b208b8000d1', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619b208b8000d1', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619b208b8000d1', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e01619b208b8000d1', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e01619b5d8d4c00d3', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619b5d8d4c00d3', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619b5d8d4c00d3', 'ff808081614f940e01614f9441e0000b'),
('ff808081614f940e01619b5d8d4c00d3', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619b5d8d4c00d3', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e01619b5d8d4c00d3', 'ff808081614f940e01614f9441ce0008'),
('ff808081614f940e01619b6389f900d6', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619b6389f900d6', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619b6389f900d6', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01614f9441ce0008'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e0161a09a8ec900e0', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161a09a8ec900e0', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e0161a09a8ec900e0', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e0161a09a8ec900e0', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e0161a0a0debc00e1', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e0161a0a0debc00e1', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161a0a28bf200e2', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e0161a0a28bf200e2', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161a4a4bac000e5', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e0161a4a4bac000e5', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e0161a4a4bac000e5', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e0161a4a4bac000e5', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161a4a4bac000e5', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e0161a4ad5b6500e7', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161a4ad5b6500e7', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e0161a4ad5b6500e7', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e0161a4e433c600e9', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e0161a4e433c600e9', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161a4e433c600e9', 'ff808081614f940e01614f9441d40009'),
('ff808081614f940e0161af8a49060106', 'ff808081614f940e01614f9441c20007'),
('ff808081614f940e0161af8a49060106', 'ff808081614f940e01614f9441e8000c'),
('ff808081614f940e0161af8a49060106', 'ff808081614f940e01614f9441da000a'),
('ff808081614f940e0161af8a49060106', 'ff808081614f940e01618bd78e950038'),
('ff808081614f940e0161af8a49060106', 'ff808081614f940e01614f9441ec000d'),
('ff808081614f940e0161af8a49060106', 'ff808081614f940e01614f9441ce0008'),
('ff808081614f940e0162112ad9d001db', 'ff808081614f940e01618bd78e950038');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platillos_ingredientes`
--

CREATE TABLE IF NOT EXISTS `platillos_ingredientes` (
  `platillo_ingredientes_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  `ingrediente_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `FK_g1kutf7bohd6jyxbj4s0xl89w` (`platillo_ingredientes_id`),
  KEY `FK_ic8pfsx384oacfyafpq5qo1v` (`ingrediente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `platillos_ingredientes`
--

INSERT INTO `platillos_ingredientes` (`platillo_ingredientes_id`, `ingrediente_id`) VALUES
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618f9862f8003e'),
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618f97b389003c'),
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618f976a23003b'),
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618f993ac60042'),
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618f97edac003d'),
('ff808081614f940e01618b38665c0033', 'ff808081614f940e01618f95bdf8003a'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618f9ba4810047'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618f9ca094004a'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618f9be20a0048'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618f9c630c0049'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618f9ac1af0046'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e016190ddc8ce009c', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e01619147eb26009e', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e01619147eb26009e', 'ff808081614f940e01618f9862f8003e'),
('ff808081614f940e01619147eb26009e', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e01619147eb26009e', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e01619147eb26009e', 'ff808081614f940e01618fb192c70067'),
('ff808081614f940e01619147eb26009e', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e01619147eb26009e', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e01619147eb26009e', 'ff808081614f940e01618f9ac1af0046'),
('ff808081614f940e01619147eb26009e', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e01619147eb26009e', 'ff808081614f940e01618f9be20a0048'),
('ff808081614f940e0161914bc65e009f', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e0161914bc65e009f', 'ff808081614f940e01618f9ba4810047'),
('ff808081614f940e0161914bc65e009f', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e0161914bc65e009f', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e0161914bc65e009f', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e0161914bc65e009f', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e0161914bc65e009f', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e0161914bc65e009f', 'ff808081614f940e01618f9d12cc004c'),
('ff808081614f940e0161914bc65e009f', 'ff808081614f940e01618f9be20a0048'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01618f9be20a0048'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01618f9ba4810047'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01618fa291de004e'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e01619150b36b00a0', 'ff808081614f940e01618f9d51f7004d'),
('ff808081614f940e016191557a3000a1', 'ff808081614f940e01618fa331960050'),
('ff808081614f940e016191557a3000a1', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e016191557a3000a1', 'ff808081614f940e01618f9862f8003e'),
('ff808081614f940e016191557a3000a1', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e016191557a3000a1', 'ff808081614f940e01618f9be20a0048'),
('ff808081614f940e016191557a3000a1', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e016191557a3000a1', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e016191557a3000a1', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e0161952bd86700a3', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e0161952bd86700a3', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e0161952bd86700a3', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e0161952bd86700a3', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e0161952bd86700a3', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e0161952bd86700a3', 'ff808081614f940e01618f9be20a0048'),
('ff808081614f940e0161952bd86700a3', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e0161952bd86700a3', 'ff808081614f940e01618fa331960050'),
('ff808081614f940e0161952bd86700a3', 'ff808081614f940e01618fa291de004e'),
('ff808081614f940e0161952ebb1100a4', 'ff808081614f940e01618fa449bf0053'),
('ff808081614f940e0161952ebb1100a4', 'ff808081614f940e01618fa3c08f0051'),
('ff808081614f940e0161952ebb1100a4', 'ff808081614f940e01618fa409580052'),
('ff808081614f940e0161952ebb1100a4', 'ff808081614f940e01618fa4c5070054'),
('ff808081614f940e0161952ebb1100a4', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e0161952ebb1100a4', 'ff808081614f940e01618fa533b20056'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01618f9be20a0048'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01618fa4fd210055'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01618f9862f8003e'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01618f9ba4810047'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e016195347af900a5', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01618f9ba4810047'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01618fa291de004e'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01618fa4fd210055'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01618f9be20a0048'),
('ff808081614f940e016195387f7500a6', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01618fa5ded60059'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01618fa677f1005c'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01618fa606e6005a'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01618fa636ff005b'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01618fa5acec0058'),
('ff808081614f940e0161953c115e00a7', 'ff808081614f940e01618fa6b67f005d'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01618fa7b3950060'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01618fa77497005f'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01618fa57a210057'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01618f9968d40043'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01618fa70c10005e'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01618fa533b20056'),
('ff808081614f940e01619542179300a8', 'ff808081614f940e01618faa039d0061'),
('ff808081614f940e0161954518e000a9', 'ff808081614f940e01618fb148b00066'),
('ff808081614f940e0161954518e000a9', 'ff808081614f940e01618fb09c420065'),
('ff808081614f940e0161954518e000a9', 'ff808081614f940e01618fa57a210057'),
('ff808081614f940e0161954518e000a9', 'ff808081614f940e01618fac66a40062'),
('ff808081614f940e0161954518e000a9', 'ff808081614f940e01618fb0501b0064'),
('ff808081614f940e0161954518e000a9', 'ff808081614f940e01618facf81a0063'),
('ff808081614f940e01619550561800aa', 'ff808081614f940e01618fa57a210057'),
('ff808081614f940e01619550561800aa', 'ff808081614f940e01618fb1cf5c0068'),
('ff808081614f940e01619550561800aa', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e01619550561800aa', 'ff808081614f940e01618fa291de004e'),
('ff808081614f940e01619550561800aa', 'ff808081614f940e01618fa533b20056'),
('ff808081614f940e0161955dc74200ab', 'ff808081614f940e01618fb192c70067'),
('ff808081614f940e0161955dc74200ab', 'ff808081614f940e01618fa57a210057'),
('ff808081614f940e0161955dc74200ab', 'ff808081614f940e01618f9ca094004a'),
('ff808081614f940e0161955dc74200ab', 'ff808081614f940e01618f9c630c0049'),
('ff808081614f940e0161955dc74200ab', 'ff808081614f940e01618fa533b20056'),
('ff808081614f940e0161955dc74200ab', 'ff808081614f940e01618f9ba4810047'),
('ff808081614f940e0161955dc74200ab', 'ff808081614f940e01618fb1cf5c0068'),
('ff808081614f940e0161955dc74200ab', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e01619550561800aa', 'ff808081614f940e01618fb1fd340069'),
('ff808081614f940e016195c92bf200ae', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e016195c92bf200ae', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e016195c92bf200ae', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e016195c92bf200ae', 'ff808081614f940e01618fb23d3b006a'),
('ff808081614f940e016195c92bf200ae', 'ff808081614f940e01618fa291de004e'),
('ff808081614f940e016195c92bf200ae', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e016195c92bf200ae', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e016195c92bf200ae', 'ff808081614f940e0161967aaa6300b1'),
('ff808081614f940e0161967f4a2700b2', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e0161967f4a2700b2', 'ff808081614f940e01618fa5ded60059'),
('ff808081614f940e0161967f4a2700b2', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e0161967f4a2700b2', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e0161967f4a2700b2', 'ff808081614f940e01618fb2cecd006c'),
('ff808081614f940e0161967f4a2700b2', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e0161967f4a2700b2', 'ff808081614f940e01618fb32a4c006d'),
('ff808081614f940e0161967f4a2700b2', 'ff808081614f940e01618fb23d3b006a'),
('ff808081614f940e0161967f4a2700b2', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618fb23d3b006a'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618fb8ea4f0070'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618fb357f7006e'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618fb915170071'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618fb88e5f006f'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618f976a23003b'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e016196864b6a00b3', 'ff808081614f940e01618f9a5f760045'),
('ff808081614f940e0161968f083100b4', 'ff808081614f940e01618fb1cf5c0068'),
('ff808081614f940e01619a46b82500b7', 'ff808081614f940e01618fa5ded60059'),
('ff808081614f940e01619a46b82500b7', 'ff808081614f940e0161903d5d6d0085'),
('ff808081614f940e01619a48cd4a00b8', 'ff808081614f940e01618fb2824a006b'),
('ff808081614f940e01619a48cd4a00b8', 'ff808081614f940e01618fa677f1005c'),
('ff808081614f940e01619a4b8e4200b9', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e01619a4b8e4200b9', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e01619a4b8e4200b9', 'ff808081614f940e01618f9862f8003e'),
('ff808081614f940e01619a4b8e4200b9', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e01619a4f0bdf00ba', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e01619a4f0bdf00ba', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e01619a4f0bdf00ba', 'ff808081614f940e01618f9be20a0048'),
('ff808081614f940e01619a4f0bdf00ba', 'ff808081614f940e01618fa4fd210055'),
('ff808081614f940e01619a4f0bdf00ba', 'ff808081614f940e01618f9862f8003e'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e01618fa677f1005c'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e0161903cc34a0084'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e0161903b06980082'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e0161903bdf000083'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e0161903ead4f0089'),
('ff808081614f940e01619a58756100bb', 'ff808081614f940e01619a5a9c3800bd'),
('ff808081614f940e01619a5f698400be', 'ff808081614f940e0161903a40f3007e'),
('ff808081614f940e01619a5f698400be', 'ff808081614f940e0161903b06980082'),
('ff808081614f940e01619a5f698400be', 'ff808081614f940e01619a602a6700c0'),
('ff808081614f940e01619a5f698400be', 'ff808081614f940e01619a5fe8ed00bf'),
('ff808081614f940e01619a6b02bb00c1', 'ff808081614f940e0161903b06980082'),
('ff808081614f940e01619a6b02bb00c1', 'ff808081614f940e0161903a1760007d'),
('ff808081614f940e01619a6b02bb00c1', 'ff808081614f940e01619a6b978e00c3'),
('ff808081614f940e01619a6b02bb00c1', 'ff808081614f940e01619a6b4fa900c2'),
('ff808081614f940e01619a6fa31200c4', 'ff808081614f940e0161903a1760007d'),
('ff808081614f940e01619a6fa31200c4', 'ff808081614f940e0161903b06980082'),
('ff808081614f940e01619a6fa31200c4', 'ff808081614f940e0161903ed3b6008a'),
('ff808081614f940e01619a6fa31200c4', 'ff808081614f940e01619a5a9c3800bd'),
('ff808081614f940e01619a744a6700c5', 'ff808081614f940e01619040cebc0090'),
('ff808081614f940e01619a744a6700c5', 'ff808081614f940e0161903fee33008d'),
('ff808081614f940e01619a744a6700c5', 'ff808081614f940e0161903acb9f0081'),
('ff808081614f940e01619a744a6700c5', 'ff808081614f940e0161903f9d4b008b'),
('ff808081614f940e01619a744a6700c5', 'ff808081614f940e0161903a1760007d'),
('ff808081614f940e01619a744a6700c5', 'ff808081614f940e0161903fc7eb008c'),
('ff808081614f940e01619a775f1600c6', 'ff808081614f940e0161903fc7eb008c'),
('ff808081614f940e01619a775f1600c6', 'ff808081614f940e01619a602a6700c0'),
('ff808081614f940e01619a775f1600c6', 'ff808081614f940e0161904e88dd0094'),
('ff808081614f940e01619a775f1600c6', 'ff808081614f940e0161903f9d4b008b'),
('ff808081614f940e01619a775f1600c6', 'ff808081614f940e0161903acb9f0081'),
('ff808081614f940e01619a775f1600c6', 'ff808081614f940e0161904ad73c0091'),
('ff808081614f940e01619a775f1600c6', 'ff808081614f940e01618fb1cf5c0068'),
('ff808081614f940e01619a775f1600c6', 'ff808081614f940e0161904ec7fc0095'),
('ff808081614f940e01619a775f1600c6', 'ff808081614f940e01618fa5ded60059'),
('ff808081614f940e01619a7d8cb700c7', 'ff808081614f940e0161904e88dd0094'),
('ff808081614f940e01619a7d8cb700c7', 'ff808081614f940e0161903fee33008d'),
('ff808081614f940e01619a7d8cb700c7', 'ff808081614f940e0161903fc7eb008c'),
('ff808081614f940e01619a7d8cb700c7', 'ff808081614f940e0161904e11a20092'),
('ff808081614f940e01619a7d8cb700c7', 'ff808081614f940e0161903f9d4b008b'),
('ff808081614f940e01619a7d8cb700c7', 'ff808081614f940e0161904e4d690093'),
('ff808081614f940e01619a8e7e7500c9', 'ff808081614f940e0161903d5d6d0085'),
('ff808081614f940e01619a8e7e7500c9', 'ff808081614f940e0161903ed3b6008a'),
('ff808081614f940e01619a8e7e7500c9', 'ff808081614f940e0161903cc34a0084'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e01618fa70c10005e'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e0161903d8c010086'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e0161903e36b30088'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e0161903d5d6d0085'),
('ff808081614f940e01619a91e9d200ca', 'ff808081614f940e0161903db1ae0087'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e0161903d5d6d0085'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e0161904f02f40096'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e01618fa70c10005e'),
('ff808081614f940e01619a94723000cb', 'ff808081614f940e0161904f26f10097'),
('ff808081614f940e01619b13091b00ce', 'ff808081614f940e0161903961f9007b'),
('ff808081614f940e01619b13091b00ce', 'ff808081614f940e0161902f70f00075'),
('ff808081614f940e01619b13091b00ce', 'ff808081614f940e016190393036007a'),
('ff808081614f940e01619b13091b00ce', 'ff808081614f940e01618fac66a40062'),
('ff808081614f940e01619b13091b00ce', 'ff808081614f940e016190384aef0076'),
('ff808081614f940e01619b160c0a00cf', 'ff808081614f940e01618fac66a40062'),
('ff808081614f940e01619b160c0a00cf', 'ff808081614f940e016190393036007a'),
('ff808081614f940e01619b160c0a00cf', 'ff808081614f940e0161902f70f00075'),
('ff808081614f940e01619b160c0a00cf', 'ff808081614f940e0161903a40f3007e'),
('ff808081614f940e01619b160c0a00cf', 'ff808081614f940e0161903a1760007d'),
('ff808081614f940e01619b160c0a00cf', 'ff808081614f940e01619038f4dc0079'),
('ff808081614f940e01619b1ac19f00d0', 'ff808081614f940e01618f9ca094004a'),
('ff808081614f940e01619b1ac19f00d0', 'ff808081614f940e0161903acb9f0081'),
('ff808081614f940e01619b1ac19f00d0', 'ff808081614f940e0161902f0b9f0074'),
('ff808081614f940e01619b208b8000d1', 'ff808081614f940e0161903a7015007f'),
('ff808081614f940e01619b208b8000d1', 'ff808081614f940e01618f9ca094004a'),
('ff808081614f940e01619b208b8000d1', 'ff808081614f940e0161903acb9f0081'),
('ff808081614f940e01619b5d8d4c00d3', 'ff808081614f940e01618f9ca094004a'),
('ff808081614f940e01619b5d8d4c00d3', 'ff808081614f940e0161903acb9f0081'),
('ff808081614f940e01619b5d8d4c00d3', 'ff808081614f940e01619b5e399400d5'),
('ff808081614f940e01619b6389f900d6', 'ff808081614f940e01618fb1cf5c0068'),
('ff808081614f940e01619b6389f900d6', 'ff808081614f940e01618f993ac60042'),
('ff808081614f940e01619b6389f900d6', 'ff808081614f940e0161904e4d690093'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01618fa5acec0058'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01618fb1cf5c0068'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01619b6e8e6300da'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01619b6ec4f400db'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01619b6e2a7c00d8'),
('ff808081614f940e01619b6db25300d7', 'ff808081614f940e01619b6e5aef00d9'),
('ff808081614f940e0161a09a8ec900e0', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e0161a09a8ec900e0', 'ff808081614f940e01618f9ccd35004b'),
('ff808081614f940e0161a09a8ec900e0', 'ff808081614f940e01618f95bdf8003a'),
('ff808081614f940e0161a09a8ec900e0', 'ff808081614f940e01618fb915170071'),
('ff808081614f940e0161a09a8ec900e0', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e0161a09a8ec900e0', 'ff808081614f940e0161903acb9f0081'),
('ff808081614f940e0161a09a8ec900e0', 'ff808081614f940e01618f9896a7003f'),
('ff808081614f940e0161a0a0debc00e1', 'ff808081614f940e01618fa291de004e'),
('ff808081614f940e0161a0a0debc00e1', 'ff808081614f940e01619038773e0077'),
('ff808081614f940e0161a0a0debc00e1', 'ff808081614f940e0161902f70f00075'),
('ff808081614f940e0161a0a0debc00e1', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e0161a0a0debc00e1', 'ff808081614f940e01618f9ca094004a'),
('ff808081614f940e0161a0a28bf200e2', 'ff808081614f940e01618f98cd1b0040'),
('ff808081614f940e0161a0a28bf200e2', 'ff808081614f940e01618f9c630c0049'),
('ff808081614f940e0161a0a28bf200e2', 'ff808081614f940e01618f9ca094004a'),
('ff808081614f940e0161a0a28bf200e2', 'ff808081614f940e0161902f70f00075'),
('ff808081614f940e0161a0a28bf200e2', 'ff808081614f940e01619038773e0077'),
('ff808081614f940e0161a0a28bf200e2', 'ff808081614f940e0161a0a2db7b00e3'),
('ff808081614f940e0161a0a0debc00e1', 'ff808081614f940e0161a0a2db7b00e3'),
('ff808081614f940e0161a4a4bac000e5', 'ff808081614f940e0161968f533600b5'),
('ff808081614f940e0161a4a4bac000e5', 'ff808081614f940e0161903a7015007f'),
('ff808081614f940e0161a4a4bac000e5', 'ff808081614f940e0161903acb9f0081'),
('ff808081614f940e0161a4a4bac000e5', 'ff808081614f940e01618fa291de004e'),
('ff808081614f940e0161a4a4bac000e5', 'ff808081614f940e0161a4a535c400e6'),
('ff808081614f940e0161a4ad5b6500e7', 'ff808081614f940e01618fb1cf5c0068'),
('ff808081614f940e0161a4ad5b6500e7', 'ff808081614f940e0161903acb9f0081'),
('ff808081614f940e0161a4ad5b6500e7', 'ff808081614f940e01618fb88e5f006f'),
('ff808081614f940e0161a4ad5b6500e7', 'ff808081614f940e0161902f70f00075'),
('ff808081614f940e0161a4ad5b6500e7', 'ff808081614f940e01618fa5acec0058'),
('ff808081614f940e0161a4ad5b6500e7', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e0161a4ad5b6500e7', 'ff808081614f940e01618fa291de004e'),
('ff808081614f940e0161a4e433c600e9', 'ff808081614f940e01618fa533b20056'),
('ff808081614f940e0161a4e433c600e9', 'ff808081614f940e01618f9be20a0048'),
('ff808081614f940e0161a4e433c600e9', 'ff808081614f940e01618f976a23003b'),
('ff808081614f940e0161a4e433c600e9', 'ff808081614f940e01618f99079f0041'),
('ff808081614f940e0161a4e433c600e9', 'ff808081614f940e01618fa4c5070054'),
('ff808081614f940e0161a4e433c600e9', 'ff808081614f940e01618fa449bf0053'),
('ff808081614f940e01619a86d08100c8', 'ff808081614f940e01619a602a6700c0'),
('ff808081614f940e01619a86d08100c8', 'ff808081614f940e0161903fee33008d'),
('ff808081614f940e01619a86d08100c8', 'ff808081614f940e0161a523e6a600eb'),
('ff808081614f940e0161af8a49060106', 'ff808081614f940e01618f993ac60042'),
('ff808081614f940e0161af8a49060106', 'ff808081614f940e01618f9ca094004a'),
('ff808081614f940e0161af8a49060106', 'ff808081614f940e0161903acb9f0081'),
('ff808081614f940e0161af8a49060106', 'ff808081614f940e0161903a7015007f'),
('ff808081614f940e0161af8a49060106', 'ff808081614f940e01618f999f4b0044'),
('ff808081614f940e0161968f083100b4', 'ff808081614f940e0161968f533600b5'),
('ff808081614f940e0162112ad9d001db', 'ff808081614f940e0161903a1760007d'),
('ff808081614f940e0162112ad9d001db', 'ff808081614f940e01618fa5ded60059'),
('ff808081614f940e0162112ad9d001db', 'ff808081614f940e0162112be28801de'),
('ff808081614f940e0162112ad9d001db', 'ff808081614f940e0162112bb68701dd'),
('ff808081614f940e0162112ad9d001db', 'ff808081614f940e0162112c41e301e0'),
('ff808081614f940e0162112ad9d001db', 'ff808081614f940e0162112c08f001df'),
('ff808081614f940e0162112ad9d001db', 'ff808081614f940e0162112b68c101dc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE IF NOT EXISTS `promocion` (
  `id_promocion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_inicio` varchar(25) CHARACTER SET latin1 NOT NULL,
  `fecha_fin` varchar(25) CHARACTER SET latin1 NOT NULL,
  `sucursal` varchar(100) CHARACTER SET latin1 NOT NULL,
  `tipo_promo` varchar(25) CHARACTER SET latin1 NOT NULL,
  `img_promo` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_promocion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`id_promocion`, `fecha_inicio`, `fecha_fin`, `sucursal`, `tipo_promo`, `img_promo`) VALUES
(21, '2018-08-23', '2018-08-30', 'Samba Cuernavaca-Flor de Canela', 'Descuento', '12936598_1766498100246822_7588855135330587013_n.jpg'),
(24, '2018-08-23', '2018-08-30', 'Samba Cuernavaca-Flor de Canela', '2x1', '148977_499943366717039_1222577152_n.jpg'),
(25, '2018-08-23', '2018-08-31', 'Samba Cuernavaca-Flor de Canela', 'Descuento', '1919038_873640466081820_8644747595160765318_n.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_especial`
--

CREATE TABLE IF NOT EXISTS `promocion_especial` (
  `id_promo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_promocion` int(10) unsigned NOT NULL,
  `tematica` varchar(100) CHARACTER SET latin1 NOT NULL,
  `categoria_p1` varchar(20) CHARACTER SET latin1 NOT NULL,
  `tipo_p1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `producto_p1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `categoria_p2` varchar(20) CHARACTER SET latin1 NOT NULL,
  `tipo_p2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `producto_p2` varchar(100) CHARACTER SET latin1 NOT NULL,
  `descuento` int(11) NOT NULL,
  PRIMARY KEY (`id_promo`),
  KEY `id_promocion` (`id_promocion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `promocion_especial`
--

INSERT INTO `promocion_especial` (`id_promo`, `id_promocion`, `tematica`, `categoria_p1`, `tipo_p1`, `producto_p1`, `categoria_p2`, `tipo_p2`, `producto_p2`, `descuento`) VALUES
(19, 24, 'Día del niño', 'Bebidas', 'Jugos', 'Exotic', '0', '0', '0', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_preferencias`
--

CREATE TABLE IF NOT EXISTS `promocion_preferencias` (
  `id_promo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_promocion` int(10) unsigned NOT NULL,
  `grupo` varchar(50) CHARACTER SET latin1 NOT NULL,
  `producto` varchar(100) CHARACTER SET latin1 NOT NULL,
  `descuento` int(11) NOT NULL,
  PRIMARY KEY (`id_promo`),
  KEY `id_promocion` (`id_promocion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `promocion_preferencias`
--

INSERT INTO `promocion_preferencias` (`id_promo`, `id_promocion`, `grupo`, `producto`, `descuento`) VALUES
(4, 25, 'Vegano', 'Ensalada Macavi', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_ventas`
--

CREATE TABLE IF NOT EXISTS `promocion_ventas` (
  `id_promo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_promocion` int(10) unsigned NOT NULL,
  `categoria_p1` varchar(20) CHARACTER SET latin1 NOT NULL,
  `tipo_p1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `producto_p1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `categoria_p2` varchar(20) CHARACTER SET latin1 NOT NULL,
  `tipo_p2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `producto_p2` varchar(100) CHARACTER SET latin1 NOT NULL,
  `descuento` int(11) NOT NULL,
  PRIMARY KEY (`id_promo`),
  KEY `id_promocion` (`id_promocion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `promocion_ventas`
--

INSERT INTO `promocion_ventas` (`id_promo`, `id_promocion`, `categoria_p1`, `tipo_p1`, `producto_p1`, `categoria_p2`, `tipo_p2`, `producto_p2`, `descuento`) VALUES
(4, 21, 'Bebidas', 'Jugos', 'Mojito', '0', '0', '0', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rolelg`
--

CREATE TABLE IF NOT EXISTS `rolelg` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `version` bigint(64) NOT NULL,
  `authority` char(255) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `nombre` char(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_rolelgauthority_col` (`authority`),
  KEY `FK_7cqfvyadp3fwwcayglbipxk6i` (`id_autor`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `rolelg`
--

INSERT INTO `rolelg` (`id`, `version`, `authority`, `date_created`, `id_autor`, `last_updated`, `nombre`) VALUES
(1, 0, 'ROLE_PROGRAMADOR', '2018-02-01 10:16:12', NULL, '2018-02-01 10:16:12', 'Programador'),
(2, 0, 'ROLE_PROPIETARIO', '2018-02-01 10:16:12', NULL, '2018-02-01 10:16:12', 'Propietario'),
(3, 0, 'ROLE_ADMIN', '2018-02-01 10:16:12', NULL, '2018-02-01 10:16:12', 'Administrador'),
(4, 0, 'ROLE_EMPRESA', '2018-02-01 10:16:12', NULL, '2018-02-01 10:16:12', 'Empresa'),
(5, 0, 'ROLE_COCINERO', '2018-02-01 10:16:12', NULL, '2018-02-01 10:16:12', 'Cocinero'),
(6, 0, 'ROLE_REPARTIDOR', '2018-02-01 10:16:12', NULL, '2018-02-01 10:16:12', 'Repartidor'),
(7, 0, 'ROLE_CLIENTE', '2018-02-01 10:16:12', NULL, '2018-02-01 10:16:12', 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE IF NOT EXISTS `sesion` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `fecha_ingreso` char(255) COLLATE utf8_bin NOT NULL,
  `id_user` char(255) COLLATE utf8_bin NOT NULL,
  `sesion_no` char(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`id`, `fecha_ingreso`, `id_user`, `sesion_no`) VALUES
('2c9fa607646e1ca50164f632575d003c', '01/08/2018 15:54', '48', '480A2BC80D51962335BBA8C242273353'),
('2c9fa607646e1ca50165102afad70056', '06/08/2018 16:56', '8', '9E3DD98213FFECC3577753CA91D82A73'),
('ff8081816515d722016515d8bc320000', '07/08/2018 14:24', '45', '9D76786BCBCCC9882B10734BD11E9030'),
('ff80818164629d180164629e45060000', '03/07/2018 19:08', '18', 'C7326EE022AF241359F68751175B8F3C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE IF NOT EXISTS `tipos` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `archivo_foto` char(255) COLLATE utf8_bin DEFAULT NULL,
  `date_created` timestamp NOT NULL,
  `descripcion` text COLLATE utf8_bin,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `nombre` char(255) COLLATE utf8_bin NOT NULL,
  `super_tipo` char(7) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_tiposnombre_col` (`nombre`),
  KEY `FK_c6k3jqdy9kc3suxfawl1wo5hk` (`id_autor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `archivo_foto`, `date_created`, `descripcion`, `id_autor`, `last_updated`, `nombre`, `super_tipo`) VALUES
('ff808081614f940e01614f9442300019', 'Tipo_1519077315872.jpg', '2018-02-01 10:16:12', 'Bocadillos ideales para el lunch, elaborados con pan integral e ingredientes con alto contenido de proteína.', NULL, '2018-02-20 03:55:16', 'Emparedados', 'Comidas'),
('ff808081614f940e01614f944242001b', 'Tipo_1519077339420.jpg', '2018-02-01 10:16:12', 'Deliciosa variedad de ensaladas con ingredientes como lechuga, espinacas, queso de cabra, pollo, nueces y aderezos bajos en grasa.', NULL, '2018-02-20 03:55:39', 'Ensaladas', 'Comidas'),
('ff808081614f940e01614f9442250017', 'Tipo_1519077388141.jpg', '2018-02-01 10:16:12', 'Bebidas de verduras y frutas frescas.  Deliciosos y nutritivos.', NULL, '2018-02-20 03:56:28', 'Jugos', 'Bebidas'),
('ff808081614f940e01614f944249001c', 'Tipo_1519077522439.jpg', '2018-02-01 10:16:12', 'Ricos postres de suave sabor con o sin azúcar.', NULL, '2018-02-20 03:58:42', 'Postres', 'Comidas'),
('ff808081614f940e016190b79beb0099', 'Tipo_1519078051312.jpg', '2018-02-14 01:50:08', 'Porción de vegetales, frutas o proteína que retrasan el hambre de manera saludable.', 8, '2018-02-20 04:07:31', 'Snack', 'Comidas'),
('ff808081614f940e016190cf6ecd009b', 'Tipo_1519078075577.jpg', '2018-02-14 02:16:09', 'Pollo o res acompañada de una rica guarnición de verduras y arroz o pasta.', 8, '2018-02-20 04:07:56', 'Comida completa', 'Comidas'),
('ff808081614f940e016190c66c82009a', 'Tipo_1519078106005.jpg', '2018-02-14 02:06:18', 'El perfecto complemento para tus comidas.  Con especias aromáticas de delicioso sabor.', 8, '2018-02-20 04:08:26', 'Cremas, pastas y sopas.', 'Comidas'),
('ff808081614f940e01614f94422a0018', 'Tipo_1519078125744.jpg', '2018-02-01 10:16:12', 'Pan multigrano elaborado con 9 granos, contiene exquisitos ingredientes como pollo, jamón selva negra, hummus de garbanzo, entre otros.', NULL, '2018-02-20 04:08:46', 'Flats', 'Comidas'),
('ff808081614f940e016201c2455e01a9', 'Tipo_1521043215251.jpg', '2018-03-08 00:38:52', 'Ricas bebidas con base de leche, con fruta y complementos nutritivos.', 8, '2018-03-14 22:00:15', 'Licuados', 'Bebidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE IF NOT EXISTS `transacciones` (
  `id` char(255) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL,
  `estatus` char(9) COLLATE utf8_bin NOT NULL,
  `fecha_operacion` timestamp NOT NULL,
  `id_autor` bigint(64) DEFAULT NULL,
  `id_orden` char(255) COLLATE utf8_bin DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `monto` float(24,0) NOT NULL,
  `referencia` char(255) COLLATE utf8_bin DEFAULT NULL,
  `tipo_medio_pago` char(16) COLLATE utf8_bin NOT NULL,
  `tipo_transaccion` char(9) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_r9l4dy8vn502hygfu8umusrg4` (`id_autor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id`, `date_created`, `estatus`, `fecha_operacion`, `id_autor`, `id_orden`, `last_updated`, `monto`, `referencia`, `tipo_medio_pago`, `tipo_transaccion`) VALUES
('ff808081614f940e0161e3983e7d0159', '2018-03-02 04:04:21', 'Exitoso', '2018-03-02 04:04:21', 30, '', '2018-03-02 04:04:21', 0, '', 'Por nómina', 'Egreso'),
('ff808081614f940e0161e3a8703c015d', '2018-03-02 04:22:02', 'Exitoso', '2018-03-02 04:22:02', 29, 'ord_2iAA1MJj4x3H8MWyb', '2018-03-02 04:22:34', 1200, '5a987d0effecf924f181637b', 'Sucursal Oxxo', 'Ingreso'),
('ff808081614f940e0161e3adab62015e', '2018-03-02 04:27:45', 'Exitoso', '2018-03-02 04:27:45', 29, 'ord_2iAA5iUiALFS1YkLL', '2018-03-02 04:28:45', 1200, '5a987e65edbb6e6ff20f06ea', 'SPEI', 'Ingreso'),
('ff808081614f940e0161e3bc6d2f0160', '2018-03-02 04:43:52', 'Exitoso', '2018-03-02 04:43:52', 33, '', '2018-03-02 04:43:52', 0, '', 'Por nómina', 'Egreso'),
('ff808081614f940e0161e3bc6e450162', '2018-03-02 04:43:53', 'Exitoso', '2018-03-02 04:43:53', 33, '', '2018-03-02 04:43:53', 0, '', 'Por nómina', 'Egreso'),
('ff808081614f940e0161e89b1cd20173', '2018-03-03 03:25:35', 'Exitoso', '2018-03-03 03:25:35', 30, 'ord_2iAUE2zXE4cTx7NJn', '2018-03-03 03:26:09', 800, '5a99c156edbb6e6fe70f64e0', 'Sucursal Oxxo', 'Ingreso'),
('ff808081614f940e0161e89c41f20174', '2018-03-03 03:26:50', 'Exitoso', '2018-03-03 03:26:50', 30, 'ord_2iAUEzCuyjctMJfEE', '2018-03-03 03:27:39', 800, '5a99c1a1b795b04e33e85ee4', 'SPEI', 'Ingreso'),
('ff808081614f940e0161e8a301b20175', '2018-03-03 03:34:12', 'Exitoso', '2018-03-03 03:34:12', 30, 'ord_2iAULcg7R8VGhzHBY', '2018-03-03 03:34:47', 800, '5a99c35bedbb6e23de0ec6f0', 'Sucursal Oxxo', 'Ingreso'),
('ff808081614f940e0161e8a6df8d0176', '2018-03-03 03:38:26', 'Exitoso', '2018-03-03 03:38:25', 30, 'ord_2iAUPrCDfmU3Yaqe2', '2018-03-03 03:39:17', 800, '5a99c459edbb6e23de0ec740', 'SPEI', 'Ingreso'),
('ff808081614f940e0161e8ad6f530177', '2018-03-03 03:45:36', 'Exitoso', '2018-03-03 03:45:36', 30, 'ord_2iAUVKeXZVfZzTNuX', '2018-03-03 03:46:23', 800, '5a99c607edbb6e6fe70f67ff', 'SPEI', 'Ingreso'),
('ff808081614f940e0161e8af105b0178', '2018-03-03 03:47:23', 'Exitoso', '2018-03-03 03:47:22', 30, 'ord_2iAUWgeCGpvEYjijh', '2018-03-03 03:48:38', 500, '5a99c672edbb6e7b010dfed5', 'SPEI', 'Ingreso'),
('ff808081614f940e0161e8c1ddb80179', '2018-03-03 04:07:55', 'Exitoso', '2018-03-03 04:07:55', 30, '', '2018-03-03 04:07:55', 100, '', 'Por nómina', 'Egreso'),
('ff808081614f940e0161f7c52f6a0190', '2018-03-06 02:05:51', 'Exitoso', '2018-03-06 02:05:51', 30, '', '2018-03-06 02:05:51', 244, '', 'Por nómina', 'Egreso'),
('ff808081614f940e0161fc53fca9019b', '2018-03-06 23:20:18', 'Exitoso', '2018-03-06 23:20:18', 30, '', '2018-03-06 23:20:18', 325, '', 'Por nómina', 'Egreso'),
('ff808081614f940e0162015146bd01a3', '2018-03-07 22:35:27', 'Exitoso', '2018-03-07 22:35:27', 34, '', '2018-03-07 22:35:27', 1515, '', 'Por nómina', 'Egreso'),
('ff808081614f940e01620709065601b5', '2018-03-09 01:14:15', 'Exitoso', '2018-03-09 01:14:15', 30, '', '2018-03-09 01:14:15', 165, '', 'Por nómina', 'Egreso'),
('ff808081614f940e01620bed776701c1', '2018-03-10 00:02:15', 'Exitoso', '2018-03-10 00:02:15', 33, '', '2018-03-10 00:02:15', 125, '', 'Por nómina', 'Egreso'),
('ff808081614f940e01620bed7d7c01c3', '2018-03-10 00:02:16', 'Exitoso', '2018-03-10 00:02:16', 33, '', '2018-03-10 00:02:16', 35, '', 'Por nómina', 'Egreso'),
('ff808081614f940e01620c35d97401ca', '2018-03-10 01:21:18', 'Exitoso', '2018-03-10 01:21:18', 30, '', '2018-03-10 01:21:18', 405, '', 'Por nómina', 'Egreso'),
('ff808081614f940e01620cd6780301d1', '2018-03-10 04:16:45', 'Exitoso', '2018-03-10 04:16:45', 30, '', '2018-03-10 04:16:45', 295, '', 'Por nómina', 'Egreso'),
('ff808081614f940e0162113f9bb601e1', '2018-03-11 00:50:04', 'Exitoso', '2018-03-11 00:50:04', 30, '', '2018-03-11 00:50:04', 67, '', 'Por nómina', 'Egreso'),
('ff808081614f940e01621153c5ca01e6', '2018-03-11 01:12:06', 'Exitoso', '2018-03-11 01:12:06', 29, '', '2018-03-11 01:12:06', 262, '', 'Por nómina', 'Egreso'),
('ff808081614f940e01622088073301fa', '2018-03-14 00:03:28', 'Exitoso', '2018-03-14 00:03:28', 33, '', '2018-03-14 00:03:28', 488, '', 'Por nómina', 'Egreso'),
('ff808081614f940e0162209eae6201fe', '2018-03-14 00:28:13', 'Exitoso', '2018-03-14 00:28:13', 34, '', '2018-03-14 00:28:13', 390, '', 'Por nómina', 'Egreso'),
('ff808081614f940e016220f76d340205', '2018-03-14 02:05:09', 'Exitoso', '2018-03-14 02:05:09', 30, '', '2018-03-14 02:05:09', 60, '', 'Por nómina', 'Egreso'),
('ff808081614f940e01622101ba600208', '2018-03-14 02:16:24', 'Exitoso', '2018-03-14 02:16:24', 29, '', '2018-03-14 02:16:24', 780, '', 'Por nómina', 'Egreso'),
('ff808081614f940e0162259e93cd0212', '2018-03-14 23:46:12', 'Exitoso', '2018-03-14 23:46:12', 30, '', '2018-03-14 23:46:12', 67, '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01622bb1c4d8002b', '2018-03-16 04:04:53', 'Exitoso', '2018-03-16 04:04:53', 30, '', '2018-03-16 04:04:53', 90, '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01622bb4691e002e', '2018-03-16 04:07:46', 'Exitoso', '2018-03-16 04:07:46', 30, '', '2018-03-16 04:07:46', 67, '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01622bb58a0b0032', '2018-03-16 04:09:00', 'Exitoso', '2018-03-16 04:09:00', 30, '', '2018-03-16 04:09:00', 0, '', 'Por nómina', 'Reembolso'),
('ff80808162283e0a01622bb5ddfd0033', '2018-03-16 04:09:22', 'Exitoso', '2018-03-16 04:09:22', 30, '', '2018-03-16 04:09:22', 67, '', 'Por nómina', 'Reembolso'),
('ff80808162283e0a01622bc16f690034', '2018-03-16 04:22:00', 'Exitoso', '2018-03-16 04:22:00', 30, '', '2018-03-16 04:22:00', 70, '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01623085fb4d003a', '2018-03-17 02:35:10', 'Exitoso', '2018-03-17 02:35:10', 30, '', '2018-03-17 02:35:10', 55, '', 'Por nómina', 'Egreso'),
('ff80808162283e0a016230915445003d', '2018-03-17 02:47:33', 'Exitoso', '2018-03-17 02:47:33', 30, '', '2018-03-17 02:47:33', 55, '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01623657973d004a', '2018-03-18 05:42:13', 'Exitoso', '2018-03-18 05:42:13', 30, '', '2018-03-18 05:42:13', 60, '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01623659be49004d', '2018-03-18 05:44:34', 'Exitoso', '2018-03-18 05:44:32', 16, 'ord_2iFQV6kdY74kDhs1e', '2018-03-18 05:44:34', 1200, '', 'Tarjeta bancaria', 'Ingreso'),
('ff80808162283e0a0162365a6707004e', '2018-03-18 05:45:17', 'Exitoso', '2018-03-18 05:45:17', 16, '', '2018-03-18 05:45:17', 55, '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01623663fe0e0051', '2018-03-18 05:55:46', 'Exitoso', '2018-03-18 05:55:46', 16, '', '2018-03-18 05:55:46', 0, '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01623666255c0054', '2018-03-18 05:58:07', 'Exitoso', '2018-03-18 05:58:07', 16, '', '2018-03-18 05:58:07', 65, '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01623666265d0056', '2018-03-18 05:58:07', 'Exitoso', '2018-03-18 05:58:07', 16, '', '2018-03-18 05:58:07', 0, '', 'Por saldo', 'Egreso'),
('ff80808162283e0a0162366627140059', '2018-03-18 05:58:07', 'Exitoso', '2018-03-18 05:58:07', 16, '', '2018-03-18 05:58:07', 120, '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01624a131d140069', '2018-03-22 01:39:49', 'Exitoso', '2018-03-22 01:39:49', 33, '', '2018-03-22 01:39:49', 50, '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01624a1823bb006d', '2018-03-22 01:45:19', 'Exitoso', '2018-03-22 01:45:19', 33, '', '2018-03-22 01:45:19', 67, '', 'Por nómina', 'Egreso'),
('ff80808162283e0a01625e1bc4040078', '2018-03-25 23:01:41', 'Exitoso', '2018-03-25 23:01:41', 16, '', '2018-03-25 23:01:41', 67, '', 'Por saldo', 'Egreso'),
('ff80808162283e0a01625e3d36c8007c', '2018-03-25 23:38:13', 'Exitoso', '2018-03-25 23:38:13', 16, 'ord_2iHwLtDVxtRASgUFW', '2018-03-25 23:38:56', 1200, '5ab7de8fb795b0765984dfe2', 'SPEI', 'Ingreso'),
('ff80808162283e0a01625e3ce8a6007b', '2018-03-25 23:37:53', 'Exitoso', '2018-03-25 23:37:52', 16, 'ord_2iHwLdT7YuABZ3PCw', '2018-03-25 23:38:28', 1200, '5ab7de7bb795b0764a84dfa1', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625e4611ee007e', '2018-03-25 23:47:53', 'Exitoso', '2018-03-25 23:47:53', 16, 'ord_2iHwUHMdGzRj1DmMC', '2018-03-25 23:48:24', 1200, '5ab7e0d4ffecf90fa1ec3068', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625e45e387007d', '2018-03-25 23:47:41', 'Exitoso', '2018-03-25 23:47:41', 16, 'ord_2iHwU8Vo2bfxGTRzJ', '2018-03-25 23:48:24', 1200, '5ab7e0c8ffecf90fbfec3140', 'SPEI', 'Ingreso'),
('ff80808162283e0a01625e475e6f007f', '2018-03-25 23:49:18', 'Exitoso', '2018-03-25 23:49:18', 16, 'ord_2iHwVN7GXwGt5YjCX', '2018-03-25 23:49:54', 800, '5ab7e129ffecf90fc5ec3141', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625f59d4250080', '2018-03-26 04:49:05', 'Exitoso', '2018-03-26 04:49:05', 16, 'ord_2iJ1SKxC131tcm1Ky', '2018-03-26 04:49:42', 1200, '5ab8276dedbb6e5d97604a41', 'Sucursal Oxxo', 'Ingreso'),
('ff80808162283e0a01625f5a680d0081', '2018-03-26 04:49:43', 'Consulta', '2018-03-26 04:49:43', 16, 'ord_2iJ1Sp4NHcGaQoE4D', '2018-03-26 04:50:00', 1200, '5ab82793ffecf90fbfec4813', 'SPEI', 'Ingreso'),
('ff80808162283e0a01625f62f9120082', '2018-03-26 04:59:05', '141-TRIAL', '2018-03-26 04:59:04', 16, '19-TRIAL-ord_2iJ1ZxE1PT4WY6Lzy 165', '2018-03-26 04:59:40', 1200, '205-TRIAL-5ab829c4ffecf90fcbec376b 85', '16-TRIAL- 250', '115-TRIAL'),
('ff80808162283e0a01625f6318300083', '2018-03-26 04:59:13', '264-TRIAL', '2018-03-26 04:59:12', 16, '93-TRIAL-ord_2iJ1a48ZZ3ZhETptG 174', '2018-03-26 04:59:56', 1200, '9-TRIAL-5ab829ccffecf90fbfec491e 0', '195-TRIAL- 273', '289-TRIAL'),
('ff80808162283e0a01625f6592770084', '2018-03-26 05:01:55', '272-TRIAL', '2018-03-26 05:01:54', 16, '58-TRIAL-ord_2iJ1c7XC74o6zyG8A 231', '2018-03-26 05:02:36', 1200, '168-TRIAL-5ab82a6eb795b07644850f30 226', '10-TRIAL- 222', '174-TRIAL'),
('ff80808162283e0a01625f65b5c30085', '2018-03-26 05:02:04', '10-TRIAL-', '2018-03-26 05:02:04', 16, '282-TRIAL-ord_2iJ1cENfb8pcdWXGg 191', '2018-03-26 05:02:52', 1200, '195-TRIAL-5ab82a77ffecf90faaec28b2 64', '274-TRIAL- 164', '202-TRIAL'),
('ff80808162283e0a01625f6831c80086', '2018-03-26 05:04:47', '260-TRIAL', '2018-03-26 05:04:46', 16, '72-TRIAL-ord_2iJ1eJfAxdiL7rTps 121', '2018-03-26 05:05:00', 1200, '22-TRIAL-5ab82b1aedbb6e5d996056ad 47', '277-TRIAL- 189', '105-TRIAL'),
('ff80808162283e0a01625f6861d70087', '2018-03-26 05:04:59', '294-TRIAL', '2018-03-26 05:04:59', 16, '143-TRIAL-ord_2iJ1eUJsEDtoXxvwg 154', '2018-03-26 05:05:00', 1200, '81-TRIAL-5ab82b27ffecf90fcbec37d4 112', '272-TRIAL- 39', '228-TRIAL'),
('ff80808162283e0a01625f6e72ef0088', '2018-03-26 05:11:37', '162-TRIAL', '2018-03-26 05:11:36', 16, '108-TRIAL-ord_2iJ1jXQ8wNNLsdM7y 215', '2018-03-26 05:12:11', 500, '108-TRIAL-5ab82cb4ffecf90fceec35c9 123', '59-TRIAL- 34', '104-TRIAL'),
('ff80808162283e0a01625f6e94c50089', '2018-03-26 05:11:45', '119-TRIAL', '2018-03-26 05:11:45', 16, '245-TRIAL-ord_2iJ1je3WdASAWEqUa 106', '2018-03-26 05:12:30', 500, '66-TRIAL-5ab82cbdffecf90fa7ec4f3c 100', '267-TRIAL- 292', '187-TRIAL'),
('ff80808162283e0a01625ff6fe4e008b', '2018-03-26 07:40:45', '256-TRIAL', '2018-03-26 07:40:45', 16, '147-TRIAL- 221', '2018-03-26 07:40:45', 50, '283-TRIAL- 122', '231-TRIAL- 276', '83-TRIAL-'),
('ff808081626a161b0162715981ed002c', '2018-03-29 16:41:54', '123-TRIAL', '2018-03-29 16:41:54', 16, '118-TRIAL- 76', '2018-03-29 16:41:54', 50, '220-TRIAL- 211', '82-TRIAL- 156', '290-TRIAL'),
('ff80808162adb3bc0162bab8d6b4002a', '2018-04-12 21:38:19', '124-TRIAL', '2018-04-12 21:38:19', 33, '177-TRIAL- 69', '2018-04-12 21:38:19', 50, '243-TRIAL- 34', '77-TRIAL- 168', '168-TRIAL'),
('ff80808162adb3bc0162bb0eb0ac0030', '2018-04-12 23:12:05', '96-TRIAL-', '2018-04-12 23:12:05', 30, '28-TRIAL- 227', '2018-04-12 23:12:05', 75, '26-TRIAL- 271', '197-TRIAL- 212', '103-TRIAL'),
('ff80808162adb3bc0162cf60ef830037', '2018-04-16 21:54:19', '8-TRIAL-', '2018-04-16 21:54:19', 30, '208-TRIAL- 285', '2018-04-16 21:54:19', 180, '238-TRIAL- 237', '43-TRIAL- 13', '1-TRIAL-'),
('ff80808162adb3bc0162d960dc2e0040', '2018-04-18 20:30:26', '228-TRIAL', '2018-04-18 20:30:26', 30, '250-TRIAL- 249', '2018-04-18 20:30:26', 80, '92-TRIAL- 254', '269-TRIAL- 81', '165-TRIAL'),
('ff80808162adb3bc0162e4cfb3440044', '2018-04-21 01:47:20', '13-TRIAL-', '2018-04-21 01:47:20', 30, '34-TRIAL- 272', '2018-04-21 01:47:20', 55, '272-TRIAL- 30', '1-TRIAL- 242', '77-TRIAL-'),
('ff80808162adb3bc0162e8db66920048', '2018-04-21 20:38:36', '270-TRIAL', '2018-04-21 20:38:36', 30, '264-TRIAL- 181', '2018-04-21 20:38:36', 55, '90-TRIAL- 123', '137-TRIAL- 223', '79-TRIAL-'),
('ff80808162adb3bc016303378db50054', '2018-04-26 23:29:22', '69-TRIAL-', '2018-04-26 23:29:22', 30, '42-TRIAL- 110', '2018-04-26 23:29:22', 67, '282-TRIAL- 258', '126-TRIAL- 187', '170-TRIAL'),
('ff80808162adb3bc016317b773a7005a', '2018-04-30 23:01:29', '251-TRIAL', '2018-04-30 23:01:29', 30, '13-TRIAL- 260', '2018-04-30 23:01:29', 55, '283-TRIAL- 286', '42-TRIAL- 210', '272-TRIAL'),
('ff80808162adb3bc0163180aa0cc005e', '2018-05-01 00:32:20', '134-TRIAL', '2018-05-01 00:32:20', 30, '18-TRIAL- 203', '2018-05-01 00:32:20', 67, '167-TRIAL- 265', '138-TRIAL- 81', '257-TRIAL'),
('ff80808162adb3bc01633bddbb5f0064', '2018-05-07 23:29:37', '114-TRIAL', '2018-05-07 23:29:37', 30, '258-TRIAL- 261', '2018-05-07 23:29:37', 0, '263-TRIAL- 56', '107-TRIAL- 178', '289-TRIAL'),
('ff8080816345dd2601635f72db100026', '2018-05-14 21:19:13', '65-TRIAL-', '2018-05-14 21:19:13', 30, '86-TRIAL- 186', '2018-05-14 21:19:13', 70, '33-TRIAL- 260', '130-TRIAL- 248', '228-TRIAL'),
('ff8080816345dd2601636077511b002a', '2018-05-15 02:03:42', '133-TRIAL', '2018-05-15 02:03:42', 30, '166-TRIAL- 235', '2018-05-15 02:03:42', 164, '10-TRIAL- 199', '137-TRIAL- 292', '182-TRIAL'),
('ff8080816345dd260163607b8b6e002d', '2018-05-15 02:08:19', '252-TRIAL', '2018-05-15 02:08:19', 30, '44-TRIAL- 194', '2018-05-15 02:08:19', 67, '8-TRIAL- 252', '247-TRIAL- 32', '235-TRIAL'),
('ff8080816345dd26016384f1189d0037', '2018-05-22 04:03:03', '264-TRIAL', '2018-05-22 04:03:03', 30, '143-TRIAL- 49', '2018-05-22 04:03:03', 250, '115-TRIAL- 141', '189-TRIAL- 200', '12-TRIAL-'),
('ff8080816345dd260163adc65980003f', '2018-05-30 02:20:47', '223-TRIAL', '2018-05-30 02:20:47', 30, '174-TRIAL- 133', '2018-05-30 02:20:47', 55, '191-TRIAL- 200', '54-TRIAL- 90', '197-TRIAL'),
('ff8080816345dd260163b70a89bd004b', '2018-05-31 21:31:51', '80-TRIAL-', '2018-05-31 21:31:51', 30, '31-TRIAL- 144', '2018-05-31 21:31:51', 60, '40-TRIAL- 287', '299-TRIAL- 25', '83-TRIAL-'),
('ff8080816345dd260163b7f606b10051', '2018-06-01 01:49:04', '292-TRIAL', '2018-06-01 01:49:04', 34, '52-TRIAL- 111', '2018-06-01 01:49:04', 130, '60-TRIAL- 234', '40-TRIAL- 297', '85-TRIAL-'),
('ff8080816345dd260163b7f6096d0053', '2018-06-01 01:49:05', '40-TRIAL-', '2018-06-01 01:49:05', 34, '291-TRIAL- 192', '2018-06-01 01:49:05', 30, '10-TRIAL- 49', '278-TRIAL- 279', '71-TRIAL-'),
('ff8080816345dd260163b7f60c960057', '2018-06-01 01:49:06', '73-TRIAL-', '2018-06-01 01:49:06', 34, '120-TRIAL- 197', '2018-06-01 01:49:06', 75, '26-TRIAL- 76', '290-TRIAL- 282', '78-TRIAL-'),
('ff8080816345dd260163b7f60f8b005a', '2018-06-01 01:49:06', '18-TRIAL-', '2018-06-01 01:49:06', 34, '159-TRIAL- 149', '2018-06-01 01:49:06', 140, '24-TRIAL- 72', '180-TRIAL- 8', '67-TRIAL-'),
('ff8080816345dd260163d64ac5900089', '2018-06-06 23:10:15', '177-TRIAL', '2018-06-06 23:10:14', 46, '70-TRIAL-ord_2ihox8N14NCT1ZdvK 207', '2018-06-06 23:13:50', 800, '96-TRIAL-5b1823afb795b04039ed5ca8 74', '222-TRIAL- 11', '119-TRIAL'),
('ff8080816345dd260163cc4c80c10061', '2018-06-05 00:35:56', '256-TRIAL', '2018-06-05 00:35:55', 44, '263-TRIAL-ord_2ihB9w5uuzSe2JgVj 183', '2018-06-05 00:36:29', 500, '216-TRIAL-5b1594bab795b05713087f9a 132', '252-TRIAL- 41', '154-TRIAL'),
('ff8080816345dd260163d6007c470085', '2018-06-06 21:49:06', '162-TRIAL', '2018-06-06 21:49:05', 46, '160-TRIAL-ord_2ihntAVYPsweAVc2i 215', '2018-06-06 21:49:37', 500, '104-TRIAL-5b1810aab795b0387bed20e3 199', '36-TRIAL- 180', '198-TRIAL'),
('ff8080816345dd260163cc4ca1b70062', '2018-06-05 00:36:04', '287-TRIAL', '2018-06-05 00:36:04', 44, '40-TRIAL-ord_2ihBA3CZssAHQNFXv 217', '2018-06-05 00:39:35', 500, '206-TRIAL-5b1594c2ffecf9737f9d2df5 270', '241-TRIAL- 282', '49-TRIAL-'),
('ff8080816345dd260163cc6097bf0063', '2018-06-05 00:57:52', '258-TRIAL', '2018-06-05 00:57:52', 44, '221-TRIAL- 295', '2018-06-05 00:57:52', 67, '96-TRIAL- 16', '78-TRIAL- 278', '79-TRIAL-'),
('ff8080816345dd260163cca09c160067', '2018-06-05 02:07:48', '277-TRIAL', '2018-06-05 02:07:48', 44, '207-TRIAL- 29', '2018-06-05 02:07:48', 67, '81-TRIAL- 295', '278-TRIAL- 76', '153-TRIAL'),
('ff8080816345dd260163cd0ccff90075', '2018-06-05 04:05:59', '84-TRIAL-', '2018-06-05 04:05:58', 46, '93-TRIAL-ord_2ihDvMRq2Xp4TrxCn 108', '2018-06-05 04:06:30', 500, '172-TRIAL-5b15c5f5b795b066150c3d53 143', '229-TRIAL- 14', '268-TRIAL'),
('ff8080816345dd260163d6012f120086', '2018-06-06 21:49:52', '91-TRIAL-', '2018-06-06 21:49:52', 46, '222-TRIAL-ord_2ihntkfL9KwJcuh7Y 148', '2018-06-06 21:50:00', 800, '251-TRIAL-5b1810d8ffecf91a1ec61c8f 186', '44-TRIAL- 246', '77-TRIAL-'),
('ff8080816345dd260163cd0d0f060076', '2018-06-05 04:06:15', '229-TRIAL', '2018-06-05 04:06:15', 46, '174-TRIAL-ord_2ihDvaBrgCSpxAW3L 191', '2018-06-05 04:09:38', 500, '169-TRIAL-5b15c606ffecf93540b32097 112', '46-TRIAL- 93', '91-TRIAL-'),
('ff8080816345dd260163cd1266c90078', '2018-06-05 04:12:05', '249-TRIAL', '2018-06-05 04:12:05', 46, '240-TRIAL- 252', '2018-06-05 04:12:05', 60, '236-TRIAL- 151', '187-TRIAL- 26', '262-TRIAL'),
('ff8080816345dd260163d5fda05f0082', '2018-06-06 21:45:59', '83-TRIAL-', '2018-06-06 21:45:59', 46, '180-TRIAL- 197', '2018-06-06 21:45:59', 30, '65-TRIAL- 65', '113-TRIAL- 261', '278-TRIAL'),
('ff8080816345dd260163d629c18a0088', '2018-06-06 22:34:11', '78-TRIAL-', '2018-06-06 22:34:10', 46, '111-TRIAL-ord_2ihoUbVoq9dHPRE5X 147', '2018-06-06 22:35:00', 800, '45-TRIAL-5b181b3bb795b04039ed59fe 170', '275-TRIAL- 289', '150-TRIAL'),
('ff8080816345dd260163d6f78e98008e', '2018-06-07 02:18:58', '33-TRIAL-', '2018-06-07 02:18:58', 46, '14-TRIAL- 182', '2018-06-07 02:18:58', 30, '7-TRIAL- 132', '196-TRIAL- 167', '22-TRIAL-'),
('ff8080816345dd260163d6534f50008a', '2018-06-06 23:19:34', '10-TRIAL-', '2018-06-06 23:19:34', 46, '31-TRIAL-ord_2ihp5FzvSHV85T2Xg 87', '2018-06-06 23:20:00', 800, '105-TRIAL-5b1825deffecf90c57c64dcb 179', '21-TRIAL- 238', '151-TRIAL'),
('ff8080816345dd260163d6d38624008b', '2018-06-07 01:39:37', '208-TRIAL', '2018-06-07 01:39:37', 46, '76-TRIAL- 259', '2018-06-07 01:39:37', 30, '189-TRIAL- 122', '66-TRIAL- 86', '155-TRIAL'),
('ff8080816345dd260163dab408a50090', '2018-06-07 19:43:42', '214-TRIAL', '2018-06-07 19:43:42', 46, '153-TRIAL- 77', '2018-06-07 19:43:42', 60, '148-TRIAL- 203', '61-TRIAL- 231', '282-TRIAL'),
('ff8080816345dd260163dab409670092', '2018-06-07 19:43:42', '97-TRIAL-', '2018-06-07 19:43:42', 46, '52-TRIAL- 221', '2018-06-07 19:43:42', 80, '196-TRIAL- 181', '221-TRIAL- 155', '47-TRIAL-'),
('ff8080816345dd260163e164ad520099', '2018-06-09 02:54:22', '18-TRIAL-', '2018-06-09 02:54:22', 46, '276-TRIAL- 274', '2018-06-09 02:54:22', 30, '159-TRIAL- 98', '74-TRIAL- 253', '22-TRIAL-'),
('ff80818164425b290164426f4cc70001', '2018-06-27 18:09:08', '143-TRIAL', '2018-06-27 18:09:08', 46, '53-TRIAL- 32', '2018-06-27 18:09:08', 60, '247-TRIAL- 180', '126-TRIAL- 178', '150-TRIAL'),
('ff808181644870ac01644885eabf0000', '2018-06-28 22:31:33', '61-TRIAL-', '2018-06-28 22:31:33', 46, '155-TRIAL- 263', '2018-06-28 22:31:33', 60, '16-TRIAL- 73', '61-TRIAL- 145', '173-TRIAL'),
('ff8081816448b48d016448b6f2df0000', '2018-06-28 23:25:07', '50-TRIAL-', '2018-06-28 23:25:07', 46, '281-TRIAL- 87', '2018-06-28 23:25:07', 60, '299-TRIAL- 110', '43-TRIAL- 65', '272-TRIAL'),
('ff8081816448dfef016448e316b70000', '2018-06-29 00:13:19', '81-TRIAL-', '2018-06-29 00:13:19', 46, '276-TRIAL- 181', '2018-06-29 00:13:19', 60, '147-TRIAL- 190', '171-TRIAL- 105', '272-TRIAL'),
('ff808181644cbd5701644cbfb59f0000', '2018-06-29 18:13:10', '89-TRIAL-', '2018-06-29 18:13:10', 46, '65-TRIAL- 131', '2018-06-29 18:13:10', 60, '58-TRIAL- 193', '106-TRIAL- 178', '148-TRIAL'),
('ff808181644cbd5701644ccbf95d0005', '2018-06-29 18:26:33', '171-TRIAL', '2018-06-29 18:26:33', 46, '96-TRIAL- 197', '2018-06-29 18:26:33', 60, '120-TRIAL- 294', '229-TRIAL- 88', '109-TRIAL'),
('ff808181644cbd5701644ccfab260008', '2018-06-29 18:30:36', '269-TRIAL', '2018-06-29 18:30:36', 46, '17-TRIAL- 115', '2018-06-29 18:30:36', 60, '126-TRIAL- 84', '168-TRIAL- 206', '128-TRIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlg`
--

CREATE TABLE IF NOT EXISTS `userlg` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `account_expired` tinyint(1) NOT NULL,
  `account_locked` tinyint(1) NOT NULL,
  `acepta_terminos` tinyint(1) DEFAULT NULL,
  `archivo_foto` char(255) COLLATE utf8_bin DEFAULT NULL,
  `ciudad` char(255) COLLATE utf8_bin DEFAULT NULL,
  `consume_alcohol` tinyint(1) DEFAULT NULL,
  `date_created` timestamp NOT NULL,
  `empresa_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `enfermedades_cronicas` text COLLATE utf8_bin,
  `establecimiento_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  `estatura` float(24,0) DEFAULT NULL,
  `fecha_nacimiento` timestamp NULL DEFAULT NULL,
  `id_autor` bigint(64) DEFAULT NULL,
  `last_updated` timestamp NOT NULL,
  `monto_adeudo` float(24,0) NOT NULL,
  `monto_limite` float(24,0) NOT NULL,
  `monto_saldo` float(24,0) NOT NULL,
  `nombre` char(255) COLLATE utf8_bin NOT NULL,
  `pago_nomina` tinyint(1) DEFAULT NULL,
  `password` char(255) COLLATE utf8_bin NOT NULL,
  `password_expired` tinyint(1) NOT NULL,
  `peso` int(32) DEFAULT NULL,
  `realiza_deportes` tinyint(1) DEFAULT NULL,
  `rfc` char(255) COLLATE utf8_bin DEFAULT NULL,
  `sesion_activa` tinyint(1) DEFAULT NULL,
  `session_id` char(255) COLLATE utf8_bin NOT NULL,
  `sexo` char(9) COLLATE utf8_bin DEFAULT NULL,
  `solicitar_pago_nomina` tinyint(1) DEFAULT NULL,
  `telefono_movil` char(255) COLLATE utf8_bin NOT NULL,
  `tipo_dieta` char(255) COLLATE utf8_bin DEFAULT NULL,
  `username` char(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_userlgusername_col` (`username`),
  KEY `FK_1vcujtcietl3s4ql0qhhrb7dt` (`empresa_id`),
  KEY `FK_24k98xh51vbpg1yr9195wlfvo` (`id_autor`),
  KEY `FK_dun2w7lkxwihs01pbpoi0lvl1` (`establecimiento_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=91 ;

--
-- Volcado de datos para la tabla `userlg`
--

INSERT INTO `userlg` (`id`, `account_expired`, `account_locked`, `acepta_terminos`, `archivo_foto`, `ciudad`, `consume_alcohol`, `date_created`, `empresa_id`, `enabled`, `enfermedades_cronicas`, `establecimiento_id`, `estatura`, `fecha_nacimiento`, `id_autor`, `last_updated`, `monto_adeudo`, `monto_limite`, `monto_saldo`, `nombre`, `pago_nomina`, `password`, `password_expired`, `peso`, `realiza_deportes`, `rfc`, `sesion_activa`, `session_id`, `sexo`, `solicitar_pago_nomina`, `telefono_movil`, `tipo_dieta`, `username`) VALUES
(8, 0, 0, 0, NULL, NULL, 0, '2018-02-01 10:16:12', NULL, 1, NULL, NULL, 0, NULL, NULL, '2018-02-01 10:16:12', 0, 0, 0, 'Agustín Tristán', 0, '$2a$10$ylk.Dt5amCw41ZYWPZwlYu.0on8kcqfuluc5tDpHEV85/EUlblMVC', 0, 0, 0, NULL, 0, 'erkMyrYAuMAPJ/TE8rERofPOAQOtGCUd7pjXf5kciKk=', NULL, 0, '(555) 345-2121', NULL, 'propietario@gmail.com'),
(9, 0, 0, 0, NULL, NULL, 0, '2018-02-01 10:16:12', NULL, 1, NULL, NULL, 0, NULL, NULL, '2018-02-01 10:16:12', 0, 0, 0, 'Jorge Ceyca', 0, '$2a$10$UtYQLMPLj4dUtnRB9KgCFuDLLbys7e1nT9n0/RqYEsBgnYcVVAKiy', 0, 0, 0, NULL, 0, 'lKVP8SIBDKRAp3U2/ivsQIlKuMd9hUKfTlXpeNAOwFc=', NULL, 0, '(777) 197-1711', NULL, 'admin1@gmail.com'),
(11, 0, 0, 0, NULL, NULL, 0, '2018-02-01 10:16:13', NULL, 1, NULL, NULL, 0, NULL, NULL, '2018-02-01 10:16:13', 0, 0, 0, 'Rafael Acosta', 0, '$2a$10$Cd00AvRIRpMRrH26TcH9bOF4Xb6G6/aWyjCn5mJM8QOt3N0ZUCcNC', 0, 0, 0, NULL, 0, 'U77VtCdDpIj8vqZs1l6tDoCWxtVko9qLw5jQ9OlChwk=', NULL, 0, '(777) 891-9090', NULL, 'chef@gmail.com'),
(12, 0, 0, 0, NULL, NULL, 0, '2018-02-01 10:16:13', NULL, 1, NULL, NULL, 0, NULL, NULL, '2018-02-01 10:16:13', 0, 0, 0, 'Jesús López', 0, '$2a$10$KGEjdSCDFCOFIOxgWmPK2.aEKyf5y8qRKQzayORWHlB0O/0eWTHsS', 0, 0, 0, NULL, 0, 'mkTR03y+wktv6D5/oSdwiRZxW9ssq2nzaVPRNSfD4ww=', NULL, 0, '(777) 188-1029', NULL, 'repartidor@gmail.com'),
(13, 0, 0, 0, NULL, NULL, 0, '2018-02-01 10:16:13', NULL, 1, NULL, NULL, 0, NULL, NULL, '2018-02-01 10:16:13', 0, 0, 0, 'Andrea Vidaña', 0, '$2a$10$7nR/QjaWSz3kowz1z34fXul0aCq.SE4mIpwS0db8XzvPgdBIebU22', 0, 0, 0, NULL, 0, 'm1qy/XayD5XjMQxxOX9mvFtg8/3iCP0WBOCf86nlQxE=', NULL, 0, '(777) 188-2919', NULL, 'cliente@gmail.com'),
(14, 0, 0, 0, NULL, NULL, 0, '2018-02-01 10:16:13', NULL, 1, NULL, NULL, 0, NULL, NULL, '2018-02-01 10:16:13', 0, 0, 0, 'Julio Vidaña', 0, '$2a$10$yf4Ks6tYDGhgQaUvA8Tryu.OikNFBbzhKnKiKxVt1UQXd2QLVqBG2', 0, 0, 0, NULL, 0, 'GW1EfH0+015tFEAdjhOpdezBlvfupEecMlLsF4TtWnI=', NULL, 0, '(777) 551-6261', NULL, 'programador@gmail.com'),
(10, 0, 0, 0, NULL, NULL, 0, '2018-02-01 10:16:13', NULL, 1, NULL, 'ff808081614f940e01614fcbbf050029', 0, NULL, NULL, '2018-02-01 11:16:48', 0, 0, 0, 'Israel Galvan', 0, '$2a$10$6vSs6volrdQ17A97riNtfuR3mJRgv6b1eO.665n4a5HF8omTANfQ6', 0, 0, 0, NULL, 0, 'jvAJ6NSRvp2V74Rh55/PwoWBpm8Spzp5Ig7hQ/GclOI=', NULL, 0, '(777) 245-1515', NULL, 'admin2@gmail.com'),
(17, 0, 0, 1, NULL, 'Cuernavaca', 0, '2018-02-01 11:30:51', 'ff808081614f940e01614fce2547002a', 0, NULL, NULL, 0, '2000-01-18 06:00:00', NULL, '2018-02-01 11:30:51', 0, 0, 0, 'Gabriela Estrada', 0, '$2a$10$kcUa9DsPGYjD1g7PzBcyhOhqF7Bjf4FopPO2j61C4eS94YKwkDf3a', 0, 0, 0, NULL, 0, '+dqS3eUnIWwlULiCLjpw7pPiMTGsOMsQ4g1urkyihLk=', 'Femenino', 0, '7777777777', 'Vegano', 'estrada1_a@nissan.com.mx'),
(18, 0, 0, 0, NULL, NULL, 0, '2018-02-18 01:06:17', NULL, 1, NULL, 'ff808081614f940e0161a52a2c3300ec', 0, NULL, 8, '2018-02-18 01:07:40', 0, 0, 0, 'Eduardo Gómez Santana', 0, '$2a$10$Nsd5Zv9JE1YUj1uthgxonefC9Bn3gPyCoQ6.0ZBggPwWCAurbJUHK', 0, 0, 0, NULL, 0, '6c/PvUCRpi28h+mKeMf4SMOJUei2dBtkMth4BKEoIjo=', NULL, 0, '444 811-5838', NULL, 'eduardo.gomez@sambasmoothie.com'),
(21, 0, 0, 0, NULL, NULL, 0, '2018-02-20 03:21:22', NULL, 1, NULL, NULL, 0, NULL, 8, '2018-02-20 03:21:22', 0, 0, 0, 'Víctor Monreal Tristán', 0, '$2a$10$muxW2Vg8rTmkS66dhlMZrOd9MPMtaj6EtihVTrZT2TncIRUcHhVK2', 0, 0, 0, NULL, 0, 'Mq8YUUlF3YQmkzqbr55mDdTZYcRzM8A/A+rFqRmSf+o=', NULL, 0, '444 457-6388', NULL, 'victor.monreal@sambasmoothie.com'),
(27, 0, 0, 1, NULL, 'Cuernavaca', 0, '2018-02-24 22:20:54', 'ff808081614f940e01614fce2547002a', 0, NULL, NULL, 0, '2018-02-07 06:00:00', NULL, '2018-02-24 22:20:54', 0, 0, 0, 'carlos nava', 0, '$2a$10$j1JpvE1m1qnAUnXmrQ4kKe/0adb/Qbjnxk6rfVL5t2sSeY8N5p89O', 0, 0, 0, NULL, 0, 'z6sKh2pArT93mi8k+qfkBMb6NOhGsZr3hbVRAaR/Oww=', 'Masculino', 0, '7777777777', 'Vegano', 'carlos@gmail.com.mx'),
(20, 0, 0, 0, NULL, NULL, 1, '2018-02-20 03:10:24', 'ff808081614f940e0161afe7434c0108', 1, ',,,Hipertensión,Obesidad y sobrepeso,,Síndrome metabólico', 'ff808081614f940e0161a52a2c3300ec', 160, '2018-02-19 06:00:00', NULL, '2018-02-27 01:40:19', 0, 0, 0, 'IEIA', 0, '$2a$10$aV.aLCWplJ9urBjrICuF2eSVuIXIX/1VSO3.NQ1OheNMeuPuelmbK', 0, 78, 1, 'IEI010123GC5', 0, 'bSUnBJOFKc9VPgDqsl7ZbV/2ug5aWUB7wTsRgoWGh3M=', 'Femenino', 1, '(444) 825-5076', '   Obesidad y sobrepeso   Colitis y gastritis', 'gcarrion@ieia.com.mx'),
(28, 0, 0, 0, NULL, NULL, 0, '2018-02-27 01:48:21', NULL, 1, NULL, 'ff808081614f940e0161a52a2c3300ec', 0, NULL, 18, '2018-02-27 01:48:21', 0, 0, 0, 'Laura Ríos', 0, '$2a$10$KGrv4inx2dIYQztR0INyKO3hM32VBJBqWo0ozp1olDk/J5r3KbE1K', 0, 0, 0, NULL, 0, 'fNoFEn88EyR+nKjtCgOeJqrsWWQVdVwfbl/2TW09nQ4=', NULL, 0, '444 306-1006', NULL, 'trizteza.lr@gmail.com'),
(23, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 0, '2018-02-23 18:55:35', 'ff808081614f940e0161afe7434c0108', 1, NULL, NULL, 0, '2000-07-04 05:00:00', NULL, '2018-02-27 01:31:58', 0, 0, 0, 'Carlos Alvarez Icaza', 0, '$2a$10$6vAYyyOLGbtSd6O.rzW9quid2zbpGcYke15SHhC7t3.dtQLC86O2u', 0, 0, 0, NULL, 0, '5ChgiRygmamuFXeGobxajVDW1hhcUFoAh+B3KA2Hzts=', 'Masculino', 0, '7777777777', ' Diabetes , Vegano, Obesidad y sobrepeso', 'carlos@nissan.com.mx'),
(24, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 0, '2018-02-23 18:59:36', 'ff808081614f940e0161afe7434c0108', 0, NULL, NULL, 0, '1990-02-12 06:00:00', NULL, '2018-02-23 18:59:36', 0, 0, 0, 'Isaura Lopez Carmona', 0, '$2a$10$FPdW8x992.emXmCWqn72ietZTJbJvONa2c/4C09i02BiMpHwfNGiC', 0, 0, 0, NULL, 0, '92v5TEqFLfDPpdFEgJcYQENqNLyU8fANqFywPOrfK2w=', 'Femenino', 0, '8888888888', 'Vegano, Colitis y gastritis', 'isa@ieia.com.mx'),
(26, 0, 0, 1, NULL, 'Cuernavaca', 0, '2018-02-23 22:28:47', 'ff808081614f940e01614fce2547002a', 0, NULL, NULL, 0, '1990-02-15 06:00:00', NULL, '2018-02-23 22:28:47', 0, 0, 0, 'William ramirez', 0, '$2a$10$qFlAibsLkkPDxjigTbW6GOdVjdFB8jKDn8QeF2.myyf.vy2KO4mq.', 0, 0, 0, NULL, 0, 'P/INVvv9IRlr39cobs8H98WS1zFInbGZMwGqltu0KSE=', 'Masculino', 0, '7777777777', 'Vegano', 'jingramramirez@gmail.com'),
(31, 0, 0, 1, NULL, 'Cuernavaca', 0, '2018-02-28 03:13:32', 'ff808081614f940e01614fce2547002a', 0, NULL, NULL, 0, '2014-02-10 06:00:00', NULL, '2018-02-28 03:13:32', 0, 0, 0, 'Sergio Villavicencio', 0, '$2a$10$qJANzcO1/EqpgXGNPRPOBuw6sQwcMdx7DVaVEMDpZVu0BIhXqOxzq', 0, 0, 0, NULL, 0, 'Gyd3iG/AoVXfecqJmbGoQ/ecaZ+jR68+LrFjAQHkWvg=', 'Masculino', 0, '7772055555', 'Obesidad y sobrepeso', 'Sergio@nissan.mx'),
(25, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 0, '2018-02-23 19:07:26', 'ff808081614f940e0161afe7434c0108', 1, NULL, NULL, 0, '1987-02-11 06:00:00', NULL, '2018-02-27 01:38:36', 0, 0, 0, 'Cristobal salas', 0, '$2a$10$eaKKIw9epK5iCquDEB//dO856vAWKYcHvdsx12jdSG/7opM.COrny', 0, 0, 0, NULL, 0, 'ZL4n62BN2CbdUn3aHI7UMTzU57XOcs1X/NLBLSzoahA=', 'Masculino', 0, '7771234567', 'Colitis y gastritis', 'cristobal@ieia.com.mx'),
(15, 0, 0, 0, NULL, NULL, 0, '2018-02-01 11:19:26', 'ff808081614f940e01614fce2547002a', 0, NULL, NULL, 0, NULL, NULL, '2018-03-04 02:57:10', 0, 0, 0, 'Nissan Cuernavaca', 0, '$2a$10$BGajMnqjaSxJ1SEiJUHPhOdJBBL2Be6A6U3Al9zh9iAou5eHLXGRy', 0, 0, 0, 'IARW731123T22', 0, '2/gIejd5w8yXsBqtVljYcoRlSu7gy03JPfqQ79age2BNEQ9e9DNzpRQTPRVOHAeUOzdkpeYdNHXDgHQyyLNUlUUNlV8mGEkWsN17v0NTwBc=', NULL, 0, '777 777-7777', NULL, 'nissan@gmail.com'),
(16, 0, 0, 1, NULL, 'Cuernavaca', 0, '2018-02-01 11:21:02', 'ff808081614f940e0161afe7434c0108', 1, NULL, NULL, 2, '1996-03-13 06:00:00', NULL, '2018-05-09 04:32:50', 0, 0, 12193, 'Sebastian Montero', 0, '$2a$10$dzh4it.LvBb1UytsWBia/uf7NzXadAqDTKNzYnAxtWJYg4gvvY6OO', 0, 151, 0, '1111111111111111111', 0, 'tegV3/9jLYflnM7UlcGpIw4LDFNZC9sfC0tvKiFBS4o=', 'Masculino', 0, '7777777777', 'Vegano', 'montero@nissan.com.mx'),
(22, 0, 0, 1, NULL, 'Cuernavaca', 0, '2018-02-23 18:52:23', 'ff808081614f940e01614fce2547002a', 0, NULL, NULL, 0, '2018-01-01 06:00:00', NULL, '2018-03-04 02:57:10', 0, 0, 0, 'Pedro Mendez', 0, '$2a$10$qr8j5M6w9j1v3nmCmf4Ohu2gtiHbGdsCgDZ037HOnxhjhtt24kK3G', 0, 0, 0, NULL, 0, 'IzqG7pTUw4nRqLcVedMpjbYrBb45cSzf5GZanIZL8KBJLPXhzC+d+DsdgLLsZ2cOY8Z+/BD7OD1UIf5dptfsVuY3bkYM6DVQzax1BLQIaPc=', 'Masculino', 0, '7771336750', ' Diabetes', 'mendez@gmail.com'),
(32, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 0, '2018-03-01 00:52:03', 'ff808081614f940e0161afe7434c0108', 1, NULL, NULL, 2, '0000-00-00 00:00:00', NULL, '2018-03-01 01:16:21', 0, 0, 0, 'Rodolfo Aldave Ocampo', 0, '$2a$10$AbxYjCRpm3NAX3Pp7hKLEuE3X61R8vnA1g3FA4QMxeNUmTHeHWrrW', 0, 95, 0, NULL, 0, 'yUG+sh/Si6szofP9wTC3fPTVlkGAAT95hlMLYLaDx6Q=', 'Masculino', 0, '4448296268', '', 'rodolfo.aldave@gmail.com'),
(19, 0, 0, 0, NULL, NULL, 0, '2018-02-18 01:46:39', NULL, 1, NULL, 'ff808081614f940e0161a52a2c3300ec', 0, NULL, 18, '2018-03-16 00:27:53', 0, 0, 0, 'Miguel Ángel López Juárez', 0, '$2a$10$X9CyhuK6eW8BV6PjOLUdZuPSoEQbl8iM4W1ppN57UWMElSDLuBy/u', 0, 0, 0, NULL, 0, 'rDN4DE7LtG6tggjAxX0plXbepfhcC3DuYWqffQZHOdE=', NULL, 0, '(444) 204-5661', NULL, 'repartidor1samba@gmail.com'),
(36, 0, 0, 0, NULL, 'Cuernavaca', 0, '2018-03-17 08:54:13', 'ff808081614f940e0161afe7434c0108', 1, NULL, 'ff808081614f940e0161a52a2c3300ec', 0, '2000-05-04 05:00:00', 14, '2018-03-17 08:54:13', 0, 0, 0, 'Juan Juarez Arteaga', 0, '$2a$10$iV6N3QbIbRNbqtp0vUjPKu4qJSlS.bQ5372oiVyGpU9ELLsShe5j6', 0, 0, 0, 'IARW731123T22', 0, '+P74i0jdIaic/8bstC4IwabEEnhJOKBDWzHrl7ztFkU=', 'Masculino', 0, '777 777-7777', NULL, 'juan@gmail.com'),
(33, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 0, '2018-03-02 04:23:40', 'ff808081614f940e0161afe7434c0108', 1, NULL, NULL, 2, '2018-03-01 06:00:00', NULL, '2018-04-12 21:38:18', 815, 2000, 0, 'Eduardo Santana', 1, '$2a$10$xbMGjAh56yDYadfW2St1p.6GaNOGSOqACtVubXpVoPzAwFLpHU/FK', 0, 86, 0, NULL, 0, 'YZFd20csioae6XJctvVcPj07bn9wA3ZBQqG+JsoR85I=', 'Masculino', 1, '4448591133', 'Colitis y gastritis', 'les01@live.com.mx'),
(38, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 0, '2018-04-16 05:11:26', 'ff808081614f940e0161afe7434c0108', 0, NULL, NULL, 0, '2018-04-11 05:00:00', NULL, '2018-04-16 05:11:26', 0, 0, 0, 'alfredo', 0, '$2a$10$fhbEQOiL6R8kzRWTTTAQz.F4DAG4puPKI.RxG8cpzf9CyaIfg1Agi', 0, 0, 0, NULL, 0, '7GcqjM6z9npkTt+rYa6zByZVKCVDmusP0oE/2ytHEsY=', 'Masculino', 0, '7777777777', 'Vegano', 'alf@gmail.com'),
(39, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 0, '2018-04-16 05:18:37', 'ff808081614f940e0161afe7434c0108', 0, NULL, NULL, 0, '2001-04-11 05:00:00', NULL, '2018-04-16 05:18:37', 0, 0, 0, 'Laura', 0, '$2a$10$8RwEqALx2NaSusqLQwb/HOorq3lglmVnnpBVtJ20df87uXfavtmOu', 0, 0, 0, NULL, 0, 'en4L2kqriD3xsVDAkecteEh8D8Km1OQSsgc4JUPHHo8=', 'Femenino', 0, '1155555555', 'Vegano', 'Laura@gmail.com'),
(37, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 0, '2018-03-25 07:25:24', 'ff808081614f940e0161afe7434c0108', 1, NULL, NULL, 0, '2018-03-22 06:00:00', NULL, '2018-04-13 05:57:24', 0, 0, 0, 'Laura Esquivel', 0, '$2a$10$0Ft06lUWJzqpafcHPL02DOlnIHU7wsYBqe4aDfyGramomZ3586ME2', 0, 0, 0, NULL, 0, 'R9maESQEIJYCqPhEq/JpQw8WEtfYrqLu/R2Zj+u/kTY=', 'Femenino', 0, '8888888888', 'Vegano', 'laura@gmail.com'),
(29, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 0, '2018-02-28 03:00:35', 'ff808081614f940e0161afe7434c0108', 1, NULL, NULL, 2, '1989-09-07 05:00:00', NULL, '2018-05-08 00:24:26', 1042, 2000, 2400, 'Victor', 1, '$2a$10$N4j58byOQwcAXSPSXCM6leoIL7GL7jETaft7igoh8mzWl.1Q6Dl4O', 0, 82, 0, '', 0, 'KjS6UILgc1/B6OWM5dc408dHP/uVRmDnH4KD6WRVOxc=', 'Masculino', 1, '4444576388', 'Obesidad y sobrepeso', 'vmonreal07@gmail.com'),
(34, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 0, '2018-03-05 22:03:58', 'ff808081614f940e0161afe7434c0108', 1, NULL, NULL, 170, '0000-00-00 00:00:00', NULL, '2018-06-01 01:49:06', 2280, 5000, 0, 'Alberto Oros', 1, '$2a$10$Ioov7BzFp/c3csWw6XK2K.tPfH4ZO4vdiC7vpxEtdGGhjLukyGv2S', 0, 80, 0, NULL, 0, '428Ksz42uDnFY57TU4pIhnjomHt/oW8pu1wZuspyT6M=', 'Masculino', 1, '4448472047', 'Colitis y gastritis', 'orosvizual@yahoo.com.mx'),
(30, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 1, '2018-02-28 03:01:38', 'ff808081614f940e0161afe7434c0108', 1, 'Diabetes,,Gastritis,,,,', 'ff808081614f940e0161a52a2c3300ec', 2, '1990-12-28 06:00:00', NULL, '2018-05-31 21:31:51', 2981, 3000, 4123, 'Verónica Miranda', 1, '$2a$10$1MSHfCfqrvyRpA.Qr8T4SelXlRMHa2iMPEzf78vCAHg6askiJuJTq', 0, 58, 1, '', 0, 'stMGbUSD8kfqLvLEodh4o8w0wdA4Y89CcW3qEZCrPEc=', 'Femenino', 1, '4444443368', ' Diabetes     Colitis y gastritis', 'veromiranda.nutriologa@gmail.com'),
(40, 0, 0, 1, NULL, 'Cuernavaca', 0, '2018-05-10 04:50:39', 'ff808081614f940e01614fce2547002a', 0, NULL, NULL, 0, '1995-02-01 06:00:00', NULL, '2018-05-10 04:50:39', 0, 0, 0, 'Arlette', 0, '$2a$10$jNL4v8u9lk/TOCadkXiN1eVDc/O.GSZ/IqG7uuV4G1bS3c6Yr2.V6', 0, 0, 0, NULL, 0, 'jkp8RmQ+ts4txGtklmY8K2SbqUGPPb9JL0sipO91Hlk=', 'Femenino', 0, '5512291544', 'Vegano, Vegetarianos, Intolerante a la lactosa', 'arlt95@hotmail.com'),
(43, 0, 0, 1, NULL, 'Cuernavaca', 0, '2018-06-05 00:15:49', 'ff808081614f940e01614fce2547002a', 0, NULL, NULL, 0, '1995-02-01 06:00:00', NULL, '2018-06-05 00:15:49', 0, 0, 0, 'Arlette Roman', 0, '$2a$10$5lWSbKZwaSXz.yuaHYnia.IrWVf9DqODGjZaopyWPoPiGJRvF6d3q', 0, 0, 0, NULL, 0, 'iE104o1Q3TdCtmtdtxHTJHjW55J8LSDoqJt1dppYPqw=', 'Femenino', 0, '5555555555', 'Intolerante a la lactosa', 'arlette@bambu-movile.com'),
(44, 0, 0, 1, NULL, 'San Luis Potosí, SLP', 0, '2018-06-05 00:17:55', 'ff808081614f940e0161afe7434c0108', 1, NULL, NULL, 0, '1995-02-01 06:00:00', NULL, '2018-06-05 02:07:48', 0, 0, 1000, 'Arlette Roman', 0, '$2a$10$yM01GVETsHoxf/lqPsLtLuscVKCwCddptugXZZEbJ1tcGRdTHA.Km', 0, 0, 0, NULL, 0, 't1kZQmbu5wkwgvstQEtHz40GOWrovJ9A2CGBF6XMmT4=', 'Femenino', 0, '5555555555', 'Vegetarianos, Intolerante a la lactosa', 'arlette@bambu-mobile.com'),
(47, 0, 0, 0, NULL, NULL, 0, '2018-06-05 03:58:55', NULL, 1, NULL, 'ff8080816345dd260163ccc6d0d80069', 0, NULL, 42, '2018-06-05 03:58:55', 0, 0, 0, 'Repartidor Bambu', 0, '$2a$10$cS7Cb1ykdgI1pSsFfaCMh.UhlPnEH/UnQ3tF3GbH8gT1Q9vnn92US', 0, 0, 0, NULL, 0, '0DlXZ3h+iwCaX2ztA5B7HABZ+wERoEP75ssaldn13s0=', NULL, 0, '555 555-5555', NULL, 'cristian@bambu-mobile.com'),
(48, 0, 0, 0, NULL, NULL, 0, '2018-06-05 04:00:51', NULL, 1, NULL, 'ff8080816345dd260163ccc6d0d80069', 0, NULL, 42, '2018-06-05 04:00:51', 0, 0, 0, 'cocinero bambu', 0, '$2a$10$bXHrRJT21oraofSAaUKYc.DL4ZDJyqa4taPbkOD41djJNt8s.8OHK', 0, 0, 0, NULL, 0, 'pNVVdptyFHS0SHsD0n1lyM9Zv2jHQ1CoCZ3XQP1q4dk=', NULL, 0, '555 555-5555', NULL, 'dulce@bambu-mobile.com'),
(45, 0, 0, 0, 'Usuario_1530891007906.jpg', NULL, 0, '2018-06-05 03:11:20', 'ff8080816345dd260163ccdac7f9006b', 1, NULL, NULL, 0, NULL, NULL, '2018-07-06 15:30:12', 0, 0, 0, 'Bambu', 0, '$2a$10$vgHqVg7nihWDUJCYXUPAXOmwl7wONJRGhqs5b55Pfoj7WSUpUQvQO', 0, 0, 0, 'BAMBU12345678', 0, 'Sh6qFu5cFvNAaDfGwcH6ihdCyOD5rqtZAaROSxmMpPglByMkwbr/m/vMDT7rCyurkiTYxnec0id1GdAAGgKMKmFZCQtu0grU8oimiXCRk80=', NULL, 0, '(555) 555-5555', NULL, 'luis05021990@gmail.com'),
(59, 0, 0, 1, NULL, 'CDMX', 0, '2018-08-02 05:21:48', 'ff8080816345dd260163ccdac7f9006b', 1, NULL, NULL, 0, '1995-02-01 06:00:00', NULL, '2018-08-06 23:12:00', 0, 0, 0, 'Arlette', 0, '$2a$10$JxWkLi4vAiivgMPkdzYfBOAWtHStfral86YBUkwX5/Y8TVxJUpA4m', 0, 0, 0, NULL, 0, 'vCkkdJq27GMpdqN5EfH48JFQR4hvrsqhUQerhOMl+qY=', 'Femenino', 0, '1111111111', '', 'arlette.roman@hotmail.com'),
(42, 0, 0, 0, 'Usuario_1530816681011.jpg', NULL, 0, '2018-06-05 00:13:14', NULL, 1, NULL, 'ff8080816345dd260163ccc6d0d80069', 0, NULL, 8, '2018-07-05 18:51:25', 0, 0, 0, 'Admin bambú', 0, '$2a$10$vdaT.wpfA5pqOxLEewv29OycyIxqNv62OrI1XezJvsOrI9IPu/5RG', 0, 0, 0, NULL, 0, 'oIutqIvFZ9zS2b8/7oa13wv7lonldHRshKiFw242I3fLQlW87feorq1PIT1YePOZYRCLds6H1t2ZQTRIbzyLcgBes7uAcWRMA5GvzGbQj8w=', NULL, 0, '(554) 061-2296', NULL, 'david@bambu-mobile.com'),
(56, 0, 0, 0, 'Usuario_1530660544189.jpg', NULL, 0, '2018-07-03 23:29:06', NULL, 1, NULL, 'ff808081614f940e0161a52a2c3300ec', 0, NULL, 18, '2018-07-04 00:09:54', 0, 0, 0, 'Felipe Ruiz', 0, '$2a$10$Nlgk/jZx..woDiS89WlbJeXsSek6Dm3.PAJQvjw5aMUwO1319.8g.', 0, 0, 0, NULL, 0, 'wPoXyrIgqArXPrA/08yVcsesRjDr23C7/oPgMCSB0F0=', NULL, 0, '(556) 220-5455', NULL, 'felipe@bambu-mobile.com'),
(46, 0, 0, 1, NULL, 'CDMX', 0, '2018-06-05 03:33:55', 'ff8080816345dd260163ccdac7f9006b', 1, NULL, NULL, 0, '1995-06-01 05:00:00', NULL, '2018-07-13 20:13:11', 0, 0, 1620, 'Juan Carlos', 0, '$2a$10$Wo53eSWZ7eGVdwuETcOcVezf28o5ZGtxvjvOPuyt7S9ZxOqHtE9Qm', 0, 0, 0, '', 0, '6nLSA7b2a0El4ndJDjoPhn6hSUqMCnATuH8bM865u68=', 'Masculino', 1, '5555555555', ' Diabetes  Vegano', 'juan@bambu-mobile.com'),
(55, 0, 0, 1, NULL, 'CDMX', 0, '2018-07-02 22:33:42', 'ff8080816345dd260163ccdac7f9006b', 1, NULL, NULL, 0, '2018-07-11 05:00:00', NULL, '2018-07-13 23:17:34', 0, 0, 0, 'Luis Ruiz', 0, '$2a$10$KFPMEQJ20CBjpYLMiJXu5.OVG0GZkm2.hgkHDllgkAV5Hn85bM14W', 0, 0, 0, NULL, 0, 'nZ+plkP/CLymMeQM4L/E1d+hdFDiZIMyuISSK2GJK5M=', 'Masculino', 1, '5555555555', 'Intolerante al gluten', 'lruiz@ciencias.unam.mx'),
(81, 0, 0, 1, NULL, 'CDMX', 0, '2018-08-04 03:01:53', 'ff8080816345dd260163ccdac7f9006b', 0, NULL, NULL, 0, '1995-08-11 05:00:00', NULL, '2018-08-04 03:01:53', 0, 0, 0, 'Arlette', 0, '$2a$10$vs7MxkBt2RDTVd3AO7G7OuR4xOR3QTwHHirnKwaE2I0F7UTLe.zNO', 0, 0, 0, NULL, 0, 'vJy8DUhn+6OizkuCapq2W7xY84dcQeZ8DyWiopAPdMw=', 'Femenino', 0, '1111111111', '', 'pruebaerror@b.com'),
(85, 0, 0, 1, NULL, 'CDMX', 0, '2018-08-06 20:46:11', 'ff8080816345dd260163ccdac7f9006b', 0, NULL, NULL, 0, '2018-08-21 05:00:00', NULL, '2018-08-06 20:46:11', 0, 0, 0, 'cliente', 0, '$2a$10$jyP5OvigYRhAPBKUuGd0u.qPQ5Bumw/SY.x9X6Qgduj2EQbID1L3y', 0, 0, 0, NULL, 0, '0ET0El8VXrDJwRmFmvgpd9wtpkF58YjSwnRhX2um9xk=', 'Femenino', 0, '3333333333', '', 'cliente2222@d.com'),
(87, 0, 0, 1, NULL, 'CDMX', 0, '2018-08-07 00:33:53', 'ff8080816345dd260163ccdac7f9006b', 0, NULL, NULL, 0, '2018-08-08 05:00:00', NULL, '2018-08-07 00:33:53', 0, 0, 0, 'Cliente', 0, '$2a$10$1qGgAO8V7UGiX2nTwsNcNu0UqWWEt6Iis4iedPWgALt55NpnBwnBC', 0, 0, 0, NULL, 0, 'oIkzTIllmaa1Flbmu1Syk5Z039HNJLUNJy3a3pMZX1w=', 'Femenino', 0, '1111111111', ' Diabetes , Vegano, Obesidad y sobrepeso', 'cliente@cliente.com'),
(88, 0, 0, 1, NULL, 'CDMX', 0, '2018-08-07 02:19:11', 'ff8080816345dd260163ccdac7f9006b', 0, NULL, NULL, 0, '2018-08-10 05:00:00', NULL, '2018-08-07 02:19:11', 0, 0, 0, 'clienteerror', 0, '$2a$10$mgFTUEOvtHM8U51d5N3ndewIvHrL7hj70aJSuXSGl13CrykCvqfre', 0, 0, 0, NULL, 0, 'JYGth5VD1zoKMqtB9bNA8/+9el1Qd9Dktkbo3y3bAWI=', 'Femenino', 0, '1111111111', '', 'clienterror@hotmail.com'),
(90, 0, 0, 1, NULL, 'CDMX', 0, '2018-08-07 03:45:06', 'ff8080816345dd260163ccdac7f9006b', 1, NULL, NULL, 0, '2018-08-17 05:00:00', NULL, '2018-08-07 19:25:01', 0, 0, 0, 'Arlette', 0, '$2a$10$sqICRRPZ8NXoOy9ftkTeEuYAcv.dQEmIcmsI4/E1IFAq2fGP/raKG', 0, 0, 0, NULL, 0, '5Q0PPNBhzriOCi7axSkFVkFNynxfC6G/BbyWXOuQg6Q=', 'Femenino', 0, '1111111111', '', 'arlt951@hotmail.com'),
(89, 0, 0, 1, NULL, 'CDMX', 0, '2018-08-07 02:23:36', 'ff8080816345dd260163ccdac7f9006b', 1, NULL, NULL, 1, '2018-08-21 05:00:00', NULL, '2018-08-07 19:28:44', 0, 0, 0, 'cliente', 0, '$2a$10$Np/9SFwPKVdnDKoEp0Q8UOLSvmsyvNOSbUbAeX602KdGZcVpf5ZKm', 0, 11, 0, NULL, 0, 'tc7iWn4I+XtjAdm2Kk/RdqhVTF+oh2Kc+kuNmIJmPSQ=', 'Masculino', 0, '1111111111', 'Vegano, Vegetarianos, Colitis y gastritis, Intolerante a la lactosa, Intolerante al gluten', 'todoslosdatos@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlg_ingredientes`
--

CREATE TABLE IF NOT EXISTS `userlg_ingredientes` (
  `id_ingrediente` bigint(64) DEFAULT NULL,
  `ingrediente_id` char(255) COLLATE utf8_bin DEFAULT NULL,
  KEY `FK_m62d0cgvkj6rijdp0l2cyuec` (`ingrediente_id`),
  KEY `FK_r7m6p0v1f0lqhlqqn22fi01e6` (`id_ingrediente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlg_rolelg`
--

CREATE TABLE IF NOT EXISTS `userlg_rolelg` (
  `userlg_id` bigint(64) NOT NULL,
  `rolelg_id` bigint(64) NOT NULL,
  PRIMARY KEY (`rolelg_id`,`userlg_id`),
  KEY `FK_odoqthc1493antalg1m5x9754` (`userlg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `userlg_rolelg`
--

INSERT INTO `userlg_rolelg` (`userlg_id`, `rolelg_id`) VALUES
(14, 1),
(8, 2),
(21, 2),
(9, 3),
(10, 3),
(18, 3),
(42, 3),
(15, 4),
(20, 4),
(45, 4),
(11, 5),
(28, 5),
(48, 5),
(12, 6),
(19, 6),
(36, 6),
(47, 6),
(56, 6),
(13, 7),
(16, 7),
(17, 7),
(22, 7),
(23, 7),
(24, 7),
(25, 7),
(26, 7),
(27, 7),
(29, 7),
(30, 7),
(31, 7),
(32, 7),
(33, 7),
(34, 7),
(37, 7),
(38, 7),
(39, 7),
(40, 7),
(43, 7),
(44, 7),
(46, 7),
(55, 7),
(59, 7),
(87, 7),
(88, 7),
(89, 7),
(90, 7);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `promocion_especial`
--
ALTER TABLE `promocion_especial`
  ADD CONSTRAINT `promocion_especial_ibfk_1` FOREIGN KEY (`id_promocion`) REFERENCES `promocion` (`id_promocion`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
