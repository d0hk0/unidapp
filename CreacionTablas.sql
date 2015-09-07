-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2015 a las 06:36:35
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: 'bdunidapp'
--
CREATE DATABASE IF NOT EXISTS bdunidapp DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE bdunidapp;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'tbl_anuncios_admin'
--

CREATE TABLE IF NOT EXISTS tbl_anuncios_admin (
  Num_Id_Anun_Admin int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  Str_Tit_Anun varchar(255) DEFAULT NULL COMMENT 'Titulo del Anuncio',
  Str_Desc_Admin varchar(500) DEFAULT NULL COMMENT 'Descripcion del Anuncio',
  FK_Num_Id_Criterio int(10) NOT NULL COMMENT 'llave foranea de la tabla criterios',
  FK_Num_Id_Usr int(10) NOT NULL COMMENT 'llave foranea de la tabla usuarios',
  Dtm_Fecha_Crea date DEFAULT NULL COMMENT 'Fecha de Creacion o Actualizacion',
  PRIMARY KEY (Num_Id_Anun_Admin),
  KEY FK_Num_Id_Criterio (FK_Num_Id_Criterio),
  KEY FK_Num_Id_Usr (FK_Num_Id_Usr)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla que contiene los anuncios de la administracion' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'tbl_anuncios_gen'
--

CREATE TABLE IF NOT EXISTS tbl_anuncios_gen (
  Num_Id_Anun_Gen int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  Str_Tit_Anun varchar(255) DEFAULT NULL COMMENT 'Titulo del Anuncio',
  Str_Desc_Admin varchar(500) DEFAULT NULL COMMENT 'Descripcion del Anuncio',
  Dtm_Fecha_Crea date DEFAULT NULL COMMENT 'Fecha de Creacion o Actualizacion',
  FK_Num_Id_Criterio int(10) NOT NULL COMMENT 'llave foranea de la tabla criterios',
  FK_Num_Id_Usr int(10) NOT NULL COMMENT 'llave foranea de la tabla usuarios',
  PRIMARY KEY (Num_Id_Anun_Gen),
  KEY FK_Num_Id_Criterio (FK_Num_Id_Criterio),
  KEY FK_Num_Id_Usr (FK_Num_Id_Usr)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla que contiene los anuncios de la generales' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'tbl_anuncio_x_unidad'
--

CREATE TABLE IF NOT EXISTS tbl_anuncio_x_unidad (
  Num_Id_Anun_Unidad int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  Str_Estado varchar(255) DEFAULT NULL COMMENT 'Estado del anuncio, A=Activo, I=Inactivo',
  Dtm_Fecha_Crea date DEFAULT NULL COMMENT 'Fecha de Creacion o Actualizacion',
  FK_Num_Id_Anun_Gen int(10) NOT NULL COMMENT 'llave foranea de la tabla anuncios generales',
  FK_Num_Id_Unidad int(10) NOT NULL COMMENT 'llave foranea de la tabla unidad',
  PRIMARY KEY (Num_Id_Anun_Unidad),
  KEY FK_Num_Id_Anun_Gen (FK_Num_Id_Anun_Gen),
  KEY FK_Num_Id_Unidad (FK_Num_Id_Unidad)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla que contiene los anuncios generales relacionados a una unidad' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'tbl_criterios'
--

CREATE TABLE IF NOT EXISTS tbl_criterios (
  Num_Id_Criterio int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  Str_Desc_Criterio varchar(30) DEFAULT NULL COMMENT 'Descripcion del criterio',
  Dtm_Fecha_Crea date DEFAULT NULL COMMENT 'Fecha de creacion o actualizacion',
  PRIMARY KEY (Num_Id_Criterio)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla que contiene los criterios' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'tbl_unidades'
--

CREATE TABLE IF NOT EXISTS tbl_unidades (
  Num_Id_Unidad int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  Str_Nombre varchar(255) DEFAULT NULL COMMENT 'Nombre de la Unidad',
  Str_Direccion varchar(500) DEFAULT NULL COMMENT 'Direccion de la Unidad',
  Num_Numero_aptos int(11) DEFAULT NULL COMMENT 'Numero de apartamentos, casas, etc del conjunto residencial',
  Dtm_Fecha_Crea date DEFAULT NULL COMMENT 'Fecha de Creacion o Actualizacion',
  PRIMARY KEY (Num_Id_Unidad)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla que contiene llas unidades' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'tbl_usuarios'
--

CREATE TABLE IF NOT EXISTS tbl_usuarios (
  NUM_ID_USR int(10) NOT NULL AUTO_INCREMENT COMMENT 'Llave subrrogada de la tabla',
  STR_NOMBRE_USR varchar(255) NOT NULL COMMENT 'Nombre de la persona',
  STR_TIPO_USR varchar(15) NOT NULL COMMENT 'Tipo de usuario, administrador, propietario, habitante principal, portero, habitante secundario, etc',
  STR_PASSWORD varchar(30) NOT NULL COMMENT 'contraseña',
  STR_NUM_APTO varchar(30) DEFAULT NULL COMMENT 'Numero del apto',
  DTM_FH_ULTIMO_ING date DEFAULT NULL COMMENT 'Fecha de ultimo ingreso',
  PRIMARY KEY (NUM_ID_USR)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla que contiene los usuarios' AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla tbl_anuncios_admin
--
ALTER TABLE tbl_anuncios_admin
  ADD CONSTRAINT tbl_anuncios_admin_ibfk_1 FOREIGN KEY (FK_Num_Id_Criterio) REFERENCES tbl_usuarios (NUM_ID_USR),
  ADD CONSTRAINT tbl_anuncios_admin_ibfk_2 FOREIGN KEY (FK_Num_Id_Usr) REFERENCES tbl_criterios (Num_Id_Criterio);

--
-- Filtros para la tabla tbl_anuncios_gen
--
ALTER TABLE tbl_anuncios_gen
  ADD CONSTRAINT tbl_anuncios_gen_ibfk_1 FOREIGN KEY (FK_Num_Id_Criterio) REFERENCES tbl_usuarios (NUM_ID_USR),
  ADD CONSTRAINT tbl_anuncios_gen_ibfk_2 FOREIGN KEY (FK_Num_Id_Usr) REFERENCES tbl_criterios (Num_Id_Criterio);

--
-- Filtros para la tabla tbl_anuncio_x_unidad
--
ALTER TABLE tbl_anuncio_x_unidad
  ADD CONSTRAINT tbl_anuncio_x_unidad_ibfk_1 FOREIGN KEY (FK_Num_Id_Anun_Gen) REFERENCES tbl_anuncios_gen (Num_Id_Anun_Gen),
  ADD CONSTRAINT tbl_anuncio_x_unidad_ibfk_2 FOREIGN KEY (FK_Num_Id_Unidad) REFERENCES tbl_unidades (Num_Id_Unidad);
>>>>>>> origin/master
