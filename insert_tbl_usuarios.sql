-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2015 a las 07:39:55
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
-- Estructura de tabla para la tabla `tbl_usuarios`
--

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
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`NUM_ID_USR`, `STR_NOMBRE_USR`, `STR_TIPO_USR`, `STR_PASSWORD`, `STR_NUM_APTO`, `DTM_FH_ULTIMO_ING`) VALUES
(1, 'Dueno', 'Alexis', '12345*', '104C', now());

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
