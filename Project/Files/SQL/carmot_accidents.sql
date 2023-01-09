-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-12-2022 a las 17:57:13
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
-- Base de datos: `carmot_accidents`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accidents`
--

DROP TABLE IF EXISTS `accidents`;
CREATE TABLE IF NOT EXISTS `accidents` (
  `accident_index` varchar(50) NOT NULL,
  `accident_year` int(10) DEFAULT NULL,
  `accident_reference` varchar(20) DEFAULT NULL,
  `location_easting_osgr` float DEFAULT NULL,
  `location_northing_osgr` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `police_force` int(11) DEFAULT NULL,
  `accident_severity` int(11) DEFAULT NULL,
  `number_of_vehicles` int(11) DEFAULT NULL,
  `number_of_casualties` int(11) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `day_of_week` int(11) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `local_authority_district` int(11) DEFAULT NULL,
  `local_authority_ons_district` varchar(20) DEFAULT NULL,
  `local_authority_highway` varchar(20) DEFAULT NULL,
  `first_road_class` int(11) DEFAULT NULL,
  `first_road_number` int(11) DEFAULT NULL,
  `road_type` int(11) DEFAULT NULL,
  `speed_limit` float DEFAULT NULL,
  `junction_detail` int(11) DEFAULT NULL,
  `junction_control` int(11) DEFAULT NULL,
  `second_road_class` int(11) DEFAULT NULL,
  `second_road_number` int(11) DEFAULT NULL,
  `pedestrian_crossing_human_control` int(11) DEFAULT NULL,
  `pedestrian_crossing_physical_facilities` int(11) DEFAULT NULL,
  `light_conditions` int(11) DEFAULT NULL,
  `weather_conditions` int(11) DEFAULT NULL,
  `road_surface_conditions` int(11) DEFAULT NULL,
  `special_conditions_at_site` int(11) DEFAULT NULL,
  `carriageway_hazards` int(11) DEFAULT NULL,
  `urban_or_rural_area` int(11) DEFAULT NULL,
  `did_police_officer_attend_scene_of_accident` int(11) DEFAULT NULL,
  `trunk_road_flag` int(11) DEFAULT NULL,
  `lsoa_of_accident_location` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`accident_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `accident_index` varchar(50) DEFAULT NULL,
  `accident_year` int(10) DEFAULT NULL,
  `accident_reference` varchar(20) DEFAULT NULL,
  `vehicle_reference` int(4) DEFAULT NULL,
  `vehicle_type` int(4) DEFAULT NULL,
  `towing_and_articulation` int(4) DEFAULT NULL,
  `vehicle_manoeuvre` int(4) DEFAULT NULL,
  `vehicle_direction_from` int(4) DEFAULT NULL,
  `vehicle_direction_to` int(4) DEFAULT NULL,
  `vehicle_location_restricted_lane` int(4) DEFAULT NULL,
  `junction_location` int(4) DEFAULT NULL,
  `skidding_and_overturning` int(4) DEFAULT NULL,
  `hit_object_in_carriageway` int(4) DEFAULT NULL,
  `vehicle_leaving_carriageway` int(4) DEFAULT NULL,
  `hit_object_off_carriageway` int(4) DEFAULT NULL,
  `first_point_of_impact` int(4) DEFAULT NULL,
  `vehicle_left_hand_drive` int(4) NOT NULL,
  `journey_purpose_of_driver` int(4) NOT NULL,
  `sex_of_driver` int(2) NOT NULL,
  `age_of_driver` int(4) NOT NULL,
  `age_band_of_driver` int(4) NOT NULL,
  `engine_capacity_cc` int(6) NOT NULL,
  `propulsion_code` int(4) NOT NULL,
  `age_of_vehicle` int(4) NOT NULL,
  `generic_make_model` varchar(50) NOT NULL,
  `driver_imd_decile` int(4) NOT NULL,
  `driver_home_area_type` int(4) NOT NULL,
  KEY `FK_index` (`accident_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `FK_index` FOREIGN KEY (`accident_index`) REFERENCES `accidents` (`accident_index`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
