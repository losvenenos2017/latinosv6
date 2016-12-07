-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2016 a las 17:17:22
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `latinosv6`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda_cita`
--

CREATE TABLE `agenda_cita` (
  `_id_cita` int(11) NOT NULL,
  `_id_barbero` int(11) NOT NULL,
  `_id_turno` int(11) NOT NULL,
  `_id_cliente` int(11) NOT NULL,
  `_id_corte` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barberos`
--

CREATE TABLE `barberos` (
  `_id_barbero` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombrescompletos` varchar(255) NOT NULL,
  `telefono` int(11) NOT NULL,
  `movil` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `barberos`
--

INSERT INTO `barberos` (`_id_barbero`, `email`, `nombrescompletos`, `telefono`, `movil`, `direccion`) VALUES
(2147483647, 'mar-c-ruyli@hotmail.com', 'Marcela Dominguez Peña', 3568426, 2147483647, 'Cra 26 Nº 15- 218 Barrio la Cabaña');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barbero_turno`
--

CREATE TABLE `barbero_turno` (
  `_id_barbero_turno` int(11) NOT NULL,
  `_id_turno` int(11) NOT NULL,
  `_id_barbero` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `_id_corte` int(11) NOT NULL,
  `_id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `_id_cliente` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nombrescompletos` varchar(255) NOT NULL,
  `documento` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `_id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`_id_cliente`, `email`, `nombrescompletos`, `documento`, `telefono`, `direccion`, `_id_user`) VALUES
(28, 'runbi2013@hotmail.com', 'Carlos andres marin', 1030575602, 2563126, 'cra 21 # 13-59 barrio paraiso', 47),
(29, '1030575304', 'mari angel murillo', 2265988, 3562158, 'cra 77p # 30-56', 47),
(31, 'marco@gmail.com', 'juan angel perez zapata', 1030562355, 5236549, 'cra 100 # 1000- 32  barrio la casilda', 47),
(32, 'juanda1933@hotmail.com', 'gtuyjjh', 1534, 2147483647, 'xd fbvfbtghrthsfgh', NULL),
(33, 'juanda1933@hotmail.com', 'gtuyjjh', 1534, 2147483647, 'xd fbvfbtghrthsfgh', NULL),
(34, '', '', 0, 0, '', NULL),
(35, '', '', 0, 0, '', NULL),
(36, 'oisdfuh@sdf.com', 'sdfljk', 126548, 4868123, 'dsfggf', NULL),
(37, 'sdfkb@gmail.com', 'fdghfdhg', 45445, 434343, 'rtyfth', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cortes`
--

CREATE TABLE `cortes` (
  `_id_corte` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL,
  `_id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cortes`
--

INSERT INTO `cortes` (`_id_corte`, `nombre`, `descripcion`, `precio`, `_id_user`) VALUES
(1, 'fghdfghfghdfgh', 'fdghdfghdfhgdfhg', 15000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `_id_turno` int(11) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`_id_turno`, `hora_inicio`, `hora_fin`) VALUES
(1, '09:01:00', '09:20:00'),
(2, '09:21:00', '09:40:00'),
(3, '09:41:00', '10:00:00'),
(4, '10:41:00', '11:00:00'),
(5, '11:01:00', '11:20:00'),
(6, '11:21:00', '11:40:00'),
(7, '11:41:00', '12:00:00'),
(8, '12:01:00', '12:20:00'),
(9, '12:21:00', '12:40:00'),
(10, '13:01:00', '13:20:00'),
(11, '13:21:00', '13:40:00'),
(12, '14:01:00', '14:20:00'),
(13, '15:01:00', '15:20:00'),
(14, '15:21:00', '15:40:00'),
(15, '15:41:00', '16:00:00'),
(16, '16:01:00', '16:20:00'),
(17, '16:21:00', '16:40:00'),
(18, '16:41:00', '17:00:00'),
(19, '17:01:00', '17:20:00'),
(20, '17:21:00', '17:40:00'),
(21, '18:01:00', '18:20:00'),
(22, '18:21:00', '18:40:00'),
(23, '19:01:00', '19:20:00'),
(24, '19:21:00', '19:40:00'),
(25, '19:41:00', '20:00:00'),
(26, '20:01:00', '20:20:00'),
(27, '20:21:00', '20:40:00'),
(28, '20:41:00', '21:00:00'),
(29, '21:21:00', '21:40:00'),
(30, '21:41:00', '22:00:00'),
(31, '22:01:00', '22:20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno_cliente`
--

CREATE TABLE `turno_cliente` (
  `_id_tuno` int(11) NOT NULL,
  `_id_cliente` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `_id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(256) NOT NULL,
  `rol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`_id_user`, `email`, `contrasena`, `rol`) VALUES
(16, 'jjaa', '$2y$10$ONLSfLNKY3dWZYCDcOQ/Iel8HeVKDNhIhA0esVrF4kAD7lEGJ5Zwe', 'root'),
(42, 'runbi2013@hotmail.com', '$2y$10$dynHJ.nl.XE2FmE6KW2unOXiu1HkKGFcvkw2Mhoevyxo6vQLW0dKC', 'admin'),
(47, 'marco@gmail.com', '$2y$10$133BilYr6nhs4ejsUDeo/.jZ.DfyLfZSGoocJmgrsI6dkRhWTsE6.', 'cliente'),
(62, 'mar-c-ruyli@hotmail.com', '$2y$10$svEw51NqdD9I7o24Adl.mOQLctsoruB/CJUwiEb2.D1bfKIF0.SQu', 'empleado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda_cita`
--
ALTER TABLE `agenda_cita`
  ADD PRIMARY KEY (`_id_cita`),
  ADD KEY `_id_corte` (`_id_corte`),
  ADD KEY `_id_barbero` (`_id_barbero`),
  ADD KEY `_id_turno` (`_id_turno`),
  ADD KEY `_id_cliente` (`_id_cliente`);

--
-- Indices de la tabla `barberos`
--
ALTER TABLE `barberos`
  ADD PRIMARY KEY (`_id_barbero`);

--
-- Indices de la tabla `barbero_turno`
--
ALTER TABLE `barbero_turno`
  ADD PRIMARY KEY (`_id_barbero_turno`),
  ADD KEY `_id_turno` (`_id_turno`,`_id_barbero`,`_id_corte`,`_id_user`),
  ADD KEY `_id_usuario` (`_id_user`),
  ADD KEY `_id_barbero` (`_id_barbero`),
  ADD KEY `_id_corte` (`_id_corte`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`_id_cliente`),
  ADD KEY `_id_usuario` (`_id_user`);

--
-- Indices de la tabla `cortes`
--
ALTER TABLE `cortes`
  ADD PRIMARY KEY (`_id_corte`),
  ADD KEY `_id_usuario` (`_id_user`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`_id_turno`);

--
-- Indices de la tabla `turno_cliente`
--
ALTER TABLE `turno_cliente`
  ADD KEY `_id_tuno` (`_id_tuno`,`_id_cliente`),
  ADD KEY `_id_cliente` (`_id_cliente`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`_id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda_cita`
--
ALTER TABLE `agenda_cita`
  MODIFY `_id_cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `barbero_turno`
--
ALTER TABLE `barbero_turno`
  MODIFY `_id_barbero_turno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `_id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `cortes`
--
ALTER TABLE `cortes`
  MODIFY `_id_corte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `_id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agenda_cita`
--
ALTER TABLE `agenda_cita`
  ADD CONSTRAINT `agenda_cita_ibfk_1` FOREIGN KEY (`_id_barbero`) REFERENCES `barberos` (`_id_barbero`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `agenda_cita_ibfk_2` FOREIGN KEY (`_id_turno`) REFERENCES `turno` (`_id_turno`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `agenda_cita_ibfk_3` FOREIGN KEY (`_id_cliente`) REFERENCES `cliente` (`_id_cliente`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `barbero_turno`
--
ALTER TABLE `barbero_turno`
  ADD CONSTRAINT `barbero_turno_ibfk_1` FOREIGN KEY (`_id_barbero_turno`) REFERENCES `barberos` (`_id_barbero`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `barbero_turno_ibfk_2` FOREIGN KEY (`_id_turno`) REFERENCES `turno` (`_id_turno`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `turno_cliente`
--
ALTER TABLE `turno_cliente`
  ADD CONSTRAINT `turno_cliente_ibfk_1` FOREIGN KEY (`_id_tuno`) REFERENCES `turno` (`_id_turno`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `turno_cliente_ibfk_2` FOREIGN KEY (`_id_cliente`) REFERENCES `cliente` (`_id_cliente`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
