-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-12-2022 a las 17:57:07
-- Versión del servidor: 5.7.36
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carmot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accidents`
--

DROP TABLE IF EXISTS `accidents`;
CREATE TABLE IF NOT EXISTS `accidents` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `v_Id` int(11) DEFAULT NULL,
  `longitude` float(9,6) DEFAULT NULL,
  `latitude` float(9,6) DEFAULT NULL,
  `speed_limit` int(11) DEFAULT NULL,
  `road_type` varchar(20) DEFAULT NULL,
  `road_surface_conditions` varchar(20) DEFAULT NULL,
  `light_conditions` varchar(20) DEFAULT NULL,
  `weather_conditions` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `accidents_fk_1` (`v_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Date_of_birth` date DEFAULT NULL,
  `Sex` varchar(8) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_Id` int(11) DEFAULT NULL,
  `type_vehicle` varchar(20) DEFAULT NULL,
  `Make` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Engine_capacity` int(5) DEFAULT NULL,
  `Plate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `cars_fk_1` (`cust_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accidents`
--
ALTER TABLE `accidents`
  ADD CONSTRAINT `accidents_fk_1` FOREIGN KEY (`v_Id`) REFERENCES `vehicles` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `cars_fk_1` FOREIGN KEY (`cust_Id`) REFERENCES `customers` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
