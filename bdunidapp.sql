-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2016 a las 05:31:01
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bdunidapp`
--
CREATE DATABASE IF NOT EXISTS `bdunidapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdunidapp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_anuncios_admin`
--

DROP TABLE IF EXISTS `tbl_anuncios_admin`;
CREATE TABLE IF NOT EXISTS `tbl_anuncios_admin` (
  `Num_Id_Anun_Admin` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  `Str_Tit_Anun` varchar(255) DEFAULT NULL COMMENT 'Titulo del Anuncio',
  `Str_Desc_Admin` varchar(500) DEFAULT NULL COMMENT 'Descripcion del Anuncio',
  `FK_Num_Id_Criterio` int(10) NOT NULL COMMENT 'llave foranea de la tabla criterios',
  `FK_Num_Id_Usr` int(10) NOT NULL COMMENT 'llave foranea de la tabla usuarios',
  `Dtm_Fecha_Crea` date DEFAULT NULL COMMENT 'Fecha de Creacion o Actualizacion',
  `FK_Num_Id_Unidad` int(11) NOT NULL,
  PRIMARY KEY (`Num_Id_Anun_Admin`),
  KEY `FK_Num_Id_Criterio` (`FK_Num_Id_Criterio`),
  KEY `FK_Num_Id_Usr` (`FK_Num_Id_Usr`),
  KEY `FK_Num_Id_Unidad` (`FK_Num_Id_Unidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='tabla que contiene los anuncios de la administracion' AUTO_INCREMENT=19 ;

--
-- Truncar tablas antes de insertar `tbl_anuncios_admin`
--

TRUNCATE TABLE `tbl_anuncios_admin`;
--
-- Volcado de datos para la tabla `tbl_anuncios_admin`
--

INSERT INTO `tbl_anuncios_admin` (`Num_Id_Anun_Admin`, `Str_Tit_Anun`, `Str_Desc_Admin`, `FK_Num_Id_Criterio`, `FK_Num_Id_Usr`, `Dtm_Fecha_Crea`, `FK_Num_Id_Unidad`) VALUES
(10, 'aaa', 'ssss', 1, 1, '2015-10-20', 1),
(12, 'sd', 'sdsd', 1, 1, '2015-10-20', 1),
(13, 'fsd', 'dfsd', 1, 1, '2015-10-27', 1),
(14, 'eeee', 'eeeee', 1, 1, '2015-10-27', 1),
(15, 'aaaaa', 'ssss', 1, 1, '2015-10-27', 1),
(16, 'aaa', 'eeee', 1, 1, '2015-10-27', 1),
(17, 'eeeeeeee', 'eeeeeeeeeeeeeeeee', 1, 1, '2015-10-27', 1),
(18, 'prueba anuncio admin', 'aadsd', 5, 1, '2015-10-27', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_anuncios_gen`
--

DROP TABLE IF EXISTS `tbl_anuncios_gen`;
CREATE TABLE IF NOT EXISTS `tbl_anuncios_gen` (
  `Num_Id_Anun_Gen` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  `Str_Tit_Anun` varchar(255) DEFAULT NULL COMMENT 'Titulo del Anuncio',
  `Str_Desc_Admin` varchar(500) DEFAULT NULL COMMENT 'Descripcion del Anuncio',
  `Dtm_Fecha_Crea` date DEFAULT NULL COMMENT 'Fecha de Creacion o Actualizacion',
  `FK_Num_Id_Criterio` int(10) NOT NULL COMMENT 'llave foranea de la tabla criterios',
  `FK_Num_Id_Usr` int(10) NOT NULL COMMENT 'llave foranea de la tabla usuarios',
  `FK_Num_Id_Unidad` int(11) NOT NULL,
  PRIMARY KEY (`Num_Id_Anun_Gen`),
  KEY `FK_Num_Id_Criterio` (`FK_Num_Id_Criterio`),
  KEY `FK_Num_Id_Usr` (`FK_Num_Id_Usr`),
  KEY `FK_Num_Id_Unidad` (`FK_Num_Id_Unidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='tabla que contiene los anuncios de la generales' AUTO_INCREMENT=9 ;

--
-- Truncar tablas antes de insertar `tbl_anuncios_gen`
--

TRUNCATE TABLE `tbl_anuncios_gen`;
--
-- Volcado de datos para la tabla `tbl_anuncios_gen`
--

INSERT INTO `tbl_anuncios_gen` (`Num_Id_Anun_Gen`, `Str_Tit_Anun`, `Str_Desc_Admin`, `Dtm_Fecha_Crea`, `FK_Num_Id_Criterio`, `FK_Num_Id_Usr`, `FK_Num_Id_Unidad`) VALUES
(1, 'sdsd', 'dfdf', '2015-10-27', 1, 1, 1),
(2, 'gfdgfgfdgd', 'dfgfdgfdg', '2015-10-27', 2, 2, 1),
(3, 'dfs', 'dfsd', '2015-10-27', 1, 1, 1),
(4, 'prueba', 'opa', '2015-10-27', 1, 1, 1),
(5, 'fgd', 'dgf', '2015-10-27', 1, 1, 1),
(6, 'prueba 2', 'sfd', '2015-10-27', 1, 1, 1),
(7, 'eeeee', 'eeee', '2015-10-27', 1, 1, 1),
(8, 'fsd', 'fsdf', '2016-04-14', 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_criterios`
--

DROP TABLE IF EXISTS `tbl_criterios`;
CREATE TABLE IF NOT EXISTS `tbl_criterios` (
  `Num_Id_Criterio` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  `Str_Desc_Criterio` varchar(30) DEFAULT NULL COMMENT 'Descripcion del criterio',
  `Dtm_Fecha_Crea` date DEFAULT NULL COMMENT 'Fecha de creacion o actualizacion',
  PRIMARY KEY (`Num_Id_Criterio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='tabla que contiene los criterios' AUTO_INCREMENT=6 ;

--
-- Truncar tablas antes de insertar `tbl_criterios`
--

TRUNCATE TABLE `tbl_criterios`;
--
-- Volcado de datos para la tabla `tbl_criterios`
--

INSERT INTO `tbl_criterios` (`Num_Id_Criterio`, `Str_Desc_Criterio`, `Dtm_Fecha_Crea`) VALUES
(1, 'A', '2015-09-28'),
(2, 'Sin Importancia', '2015-10-04'),
(4, 'Alto', '2015-10-04'),
(5, 'Bajo', '2015-10-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_unidades`
--

DROP TABLE IF EXISTS `tbl_unidades`;
CREATE TABLE IF NOT EXISTS `tbl_unidades` (
  `Num_Id_Unidad` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  `Str_Nombre` varchar(255) DEFAULT NULL COMMENT 'Nombre de la Unidad',
  `Str_Direccion` varchar(500) DEFAULT NULL COMMENT 'Direccion de la Unidad',
  `Num_Numero_aptos` int(11) DEFAULT NULL COMMENT 'Numero de apartamentos, casas, etc del conjunto residencial',
  `Dtm_Fecha_Crea` date DEFAULT NULL COMMENT 'Fecha de Creacion o Actualizacion',
  `str_nombre_admin` text COMMENT 'nombre de la administracion',
  `str_email` text COMMENT 'correo de la adminitracion',
  `str_telefono` text COMMENT 'teléfono de contacto en la adminitracion',
  PRIMARY KEY (`Num_Id_Unidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='tabla que contiene llas unidades' AUTO_INCREMENT=1000 ;

--
-- Truncar tablas antes de insertar `tbl_unidades`
--

TRUNCATE TABLE `tbl_unidades`;
--
-- Volcado de datos para la tabla `tbl_unidades`
--

INSERT INTO `tbl_unidades` (`Num_Id_Unidad`, `Str_Nombre`, `Str_Direccion`, `Num_Numero_aptos`, `Dtm_Fecha_Crea`, `str_nombre_admin`, `str_email`, `str_telefono`) VALUES
(1, 'guasimos', 'cra 65 no 13B - 125 Bosques de Limonar', 400, '2015-10-04', NULL, NULL, NULL),
(999, 'Sin Unidad', 'Sin Unidad', 0, '2015-10-04', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `NUM_ID_USR` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  `STR_NOMBRE_USR` varchar(255) NOT NULL COMMENT 'Nombre de la persona',
  `STR_TIPO_USR` varchar(15) NOT NULL COMMENT 'Tipo de usuario, administrador, propietario, habitante principal, portero, habitante secundario, etc',
  `STR_PASSWORD` varchar(30) NOT NULL COMMENT 'contraseña',
  `STR_NUM_APTO` varchar(30) DEFAULT NULL COMMENT 'Numero del apto',
  `DTM_FH_ULTIMO_ING` date DEFAULT NULL COMMENT 'Fecha de ultimo ingreso',
  PRIMARY KEY (`NUM_ID_USR`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='tabla que contiene los usuarios' AUTO_INCREMENT=2 ;

--
-- Truncar tablas antes de insertar `tbl_usuarios`
--

TRUNCATE TABLE `tbl_usuarios`;
--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`NUM_ID_USR`, `STR_NOMBRE_USR`, `STR_TIPO_USR`, `STR_PASSWORD`, `STR_NUM_APTO`, `DTM_FH_ULTIMO_ING`) VALUES
(1, 'Alexis', 'Dueno', '12345*', '104C', '2015-09-28');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_anuncios_admin`
--
ALTER TABLE `tbl_anuncios_admin`
  ADD CONSTRAINT `tbl_anuncios_admin_ibfk_3` FOREIGN KEY (`FK_Num_Id_Unidad`) REFERENCES `tbl_unidades` (`Num_Id_Unidad`);

--
-- Filtros para la tabla `tbl_anuncios_gen`
--
ALTER TABLE `tbl_anuncios_gen`
  ADD CONSTRAINT `tbl_anuncios_gen_ibfk_3` FOREIGN KEY (`FK_Num_Id_Unidad`) REFERENCES `tbl_unidades` (`Num_Id_Unidad`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
