-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2014 at 04:18 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `solicitudempleo`
--
CREATE DATABASE IF NOT EXISTS `solicitudempleo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `solicitudempleo`;

-- --------------------------------------------------------

--
-- Table structure for table `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id_estado` int(9) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(125) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id_log` int(9) NOT NULL AUTO_INCREMENT,
  `id_solicitud` int(9) NOT NULL,
  `id_estado` int(9) NOT NULL,
  `comentario` text NOT NULL,
  `fecha` date NOT NULL,
  `id_usuario` int(9) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `solicitud`
--

CREATE TABLE IF NOT EXISTS `solicitud` (
  `id_solicitud` int(9) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `correo` varchar(125) NOT NULL,
  `paterno` varchar(125) NOT NULL,
  `materno` varchar(125) NOT NULL,
  `nombre` varchar(125) NOT NULL,
  `fechanac` date NOT NULL,
  `nacionalidad` varchar(125) NOT NULL,
  `genero` varchar(125) NOT NULL,
  `civil` varchar(125) NOT NULL,
  `calle` text NOT NULL,
  `numero` varchar(10) NOT NULL,
  `colonia` varchar(125) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `estado` varchar(125) NOT NULL,
  `municipio` varchar(125) NOT NULL,
  `nombrecto1` varchar(125) NOT NULL,
  `telefonocto1` varchar(30) NOT NULL,
  `nombrecto2` varchar(125) NOT NULL,
  `telefonocto2` varchar(30) NOT NULL,
  `gradoEstudios` varchar(125) NOT NULL,
  `institucion` varchar(125) NOT NULL,
  `edoacademico` varchar(125) NOT NULL,
  `ingles` varchar(125) NOT NULL,
  `estudia` varchar(125) NOT NULL,
  `otrosestudios` varchar(125) NOT NULL,
  `habilidades` varchar(125) NOT NULL,
  `anterior1` varchar(125) NOT NULL,
  `puesto1` varchar(125) NOT NULL,
  `salario1` varchar(125) NOT NULL,
  `anterior2` varchar(125) NOT NULL,
  `puesto2` varchar(125) NOT NULL,
  `salario2` varchar(125) NOT NULL,
  `trabaja` varchar(10) NOT NULL,
  `disponibilidad` varchar(125) NOT NULL,
  `estado_solicitud` int(9) NOT NULL,
  PRIMARY KEY (`id_solicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
