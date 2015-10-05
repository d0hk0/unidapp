-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2015 a las 07:38:12
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_criterios`
--

CREATE TABLE IF NOT EXISTS `tbl_criterios` (
  `Num_Id_Criterio` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  `Str_Desc_Criterio` varchar(30) DEFAULT NULL COMMENT 'Descripcion del criterio',
  `Dtm_Fecha_Crea` date DEFAULT NULL COMMENT 'Fecha de creacion o actualizacion',
  PRIMARY KEY (`Num_Id_Criterio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='tabla que contiene los criterios' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_criterios`
--

INSERT INTO `tbl_criterios` (`Num_Id_Criterio`, `Str_Desc_Criterio`, `Dtm_Fecha_Crea`) VALUES
(1, 'A', now());

INSERT INTO `tbl_criterios`(`Str_Desc_Criterio`, `Dtm_Fecha_Crea`) VALUES ('criterio 2',now())

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
