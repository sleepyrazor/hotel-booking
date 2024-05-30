-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2024 a las 13:51:36
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almacen`
--
CREATE DATABASE IF NOT EXISTS `almacen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `almacen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` int(11) NOT NULL,
  `autor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `precio` float NOT NULL,
  `isbn` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `autor`, `titulo`, `precio`, `isbn`) VALUES
(1, 'pepe', 'pepe', 1, 1234),
(2, 'Neil Gaiman', 'Humos y Espejos', 12, 102),
(3, 'Lewis Carrol', 'Alicia en el País de las Maravillas', 15, 103),
(4, 'Philip K. Dick', 'Cuentos Completos I', 14.5, 104),
(5, 'H. P. Lovecraft', 'La Llamada de Cthulhu', 11, 105),
(6, 'Arturo Perez Reverte', 'La Piel del Tambor', 118, 106),
(602, 'rauelita', 'jsdj', 2, 123);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`);
--
-- Base de datos: `cexupo`
--
CREATE DATABASE IF NOT EXISTS `cexupo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cexupo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `idProducto` bigint(20) NOT NULL,
  `idUsuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`idProducto`, `idUsuario`) VALUES
(2, 'miguel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id` bigint(20) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `cp` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `idUsuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id`, `direccion`, `cp`, `nombre`, `idUsuario`) VALUES
(9, 'Mairena 21 4?B', 41250, 'casa Miguel', 'usuario'),
(12, 'Calle Mallorca n?28', 41100, 'Andrea', 'usuario'),
(26, 'mallorca 20', 35422, 'casa piloto', 'usuario'),
(28, 'Calle Mallorca n?28', 0, 'Anabel', 'usuario'),
(31, 'mallorca 21', 57854, '', 'usuario'),
(32, 'Amapola', 41120, 'pepe', 'usuario'),
(35, 'Calle Mallorca n?28', 41100, 'uuuuuu', 'miguel'),
(37, 'Calle Mallorca n?28', 41100, 'mmm', 'miguel'),
(39, 'mairena', 411003, 'uuuuuu', 'andrea');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresatransporte`
--

CREATE TABLE `empresatransporte` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` bigint(20) NOT NULL,
  `idUsuario` varchar(255) NOT NULL,
  `idChat` bigint(20) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `contenido` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodopago`
--

CREATE TABLE `metodopago` (
  `id` bigint(20) NOT NULL,
  `idUsuario` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `detalles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `metodopago`
--

INSERT INTO `metodopago` (`id`, `idUsuario`, `nombre`, `detalles`) VALUES
(2, 'usuario', 'Paypal', 'cuenta de paypal'),
(3, 'usuario', 'Paypal', 'cuenta de paypal'),
(4, 'usuario', 'bp', 'cuenta de paypal'),
(5, 'miguel', 'tarjeta caixahh', '6525413'),
(6, 'miguel', 'Tarjeta de crédito', '411528745214'),
(7, 'miguel', 'Tarjeta de crédito', '411528745214'),
(8, 'andrea', 'Tarjeta de credito', '411528745214');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `precio` float NOT NULL,
  `hastag` varchar(255) NOT NULL,
  `id_usuario` varchar(255) NOT NULL,
  `vendido` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `estado`, `precio`, `hastag`, `id_usuario`, `vendido`) VALUES
(2, 'Vakama', 'Juguete mega rechul&#8730;&#8805;n de la compa&#8730;?&#8730;&#8800;a lego', 'publicado', 20, '#LEGO #Bionicle #Toa #ToaMetru', 'usuario', 0),
(4, 'soldado', 'tiene pistola', 'publicado', 30, 'makeAmericaGreatAgain', 'usuario', 0),
(11, 'switch station', 'juega a juegos', 'nuevo', 400, 'consola', 'usuario', 0),
(12, 'el nuevo y mejorado pepe', 'perepe', 'acondicionado', 3, 'un grande', 'usuario', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntuacion`
--

CREATE TABLE `puntuacion` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `resenya` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifaenvio`
--

CREATE TABLE `tarifaenvio` (
  `id` bigint(20) NOT NULL,
  `precioPeso` float NOT NULL,
  `precioVolumen` float NOT NULL,
  `precioSeguro` float NOT NULL,
  `nombreTarifa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`username`, `password`, `email`) VALUES
('andrea', '123456', 'agarcas@gmail.com'),
('miguel', '12345', 'miguelito@gmail.com'),
('usuario', 'usuario', 'albertoblsr@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` bigint(6) NOT NULL,
  `precioTotal` float NOT NULL,
  `idUsuario` varchar(255) NOT NULL,
  `fechaVenta` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `idProducto` bigint(6) NOT NULL,
  `idPuntuacion` bigint(6) NOT NULL,
  `idTarifa` bigint(6) NOT NULL,
  `idDireccion` bigint(20) NOT NULL,
  `idMetodoPago` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`idProducto`,`idUsuario`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresatransporte`
--
ALTER TABLE `empresatransporte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario_producto` (`id_usuario`);

--
-- Indices de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarifaenvio`
--
ALTER TABLE `tarifaenvio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `empresatransporte`
--
ALTER TABLE `empresatransporte`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarifaenvio`
--
ALTER TABLE `tarifaenvio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` bigint(6) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `id_usuario_producto` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `citas`
--
CREATE DATABASE IF NOT EXISTS `citas` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `citas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `mascota` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_mascota` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `usuario`, `mascota`, `nombre_mascota`, `fecha`, `hora`) VALUES
(1, 'Victoria', 'perro', 'Paca', '2020-03-15', '10:00:00'),
(2, 'Alfredo', 'Loro', 'Drogon', '2020-03-18', '12:30:00'),
(3, 'Antonio', 'Gato', 'Lupita', '2020-03-16', '19:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `rol` varchar(1) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `password`, `nombre`, `rol`) VALUES
('Alfredo', 'Alfredo1234', 'Alfredo Fuentes Lara', 'C'),
('Antonio', 'Antonio1234', 'Antonio Avilés Martínez', 'C'),
('Victoria', 'Victoria1234', 'Victoria Salas Ruíz', 'V');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de datos: `dcl`
--
CREATE DATABASE IF NOT EXISTS `dcl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dcl`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id`, `nombre`, `localidad`, `fecha`) VALUES
(1, 'Carrera de Drones 2028', 'Madrid', '2023-07-15'),
(2, 'Gran Premio de Barcelona', 'Barcelona', '2023-09-23'),
(3, 'Campeonato Nacional de Drones', 'Valencia', '2023-11-11'),
(4, 'Carrera privada', 'Sevilla', '2023-07-15'),
(5, 'Gran Premio de Espanya', 'Alicante', '2023-09-23'),
(7, 'Gran Premio Dubai', 'Dubai', '2023-07-15'),
(9, 'Miami drone league', 'Miami', '2023-11-11'),
(21, 'Campeonato Nacional de tinywhoops', 'Sevilla', '2023-11-11'),
(22, 'Carreras De Jerez', 'Sevilla', '2023-05-15'),
(23, 'Carreras De Jerez', 'Sevilla', '2023-05-15'),
(24, 'Carreras De Jerez', 'Sevilla', '2023-05-15'),
(25, 'Carreras De Pepe', 'Sevilla', '2023-05-15'),
(26, 'la carr', 'Sevilla', '2023-02-15'),
(27, 'test', 'coria', '2024-04-11'),
(28, 'Carreras De Jerez', 'coria', '2024-04-11'),
(29, 'Carreras De Jerez', 'Montequint', '2024-04-11'),
(30, 'Carreras De Jerez', 'Montequint', '2024-04-11'),
(31, 'Carreras De Jerez', 'Montequint', '2024-04-11'),
(32, 'la carr', 'Montequint', '2023-02-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `id_piloto` int(11) NOT NULL,
  `fecha_inscripcion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id`, `id_carrera`, `id_piloto`, `fecha_inscripcion`) VALUES
(7, 1, 2, '2023-06-01'),
(8, 1, 1, '2023-06-02'),
(9, 2, 1, '2023-09-01'),
(10, 2, 3, '2023-09-02'),
(11, 3, 2, '2023-10-01'),
(12, 3, 4, '2023-10-02'),
(13, 1, 1, '2023-03-15'),
(14, 1, 2, '2023-03-15'),
(15, 1, 3, '2023-03-16'),
(16, 1, 4, '2023-03-16'),
(17, 2, 1, '2023-03-16'),
(18, 2, 2, '2023-03-17'),
(19, 2, 3, '2023-03-17'),
(20, 2, 4, '2023-03-17'),
(21, 7, 1, '2023-03-13'),
(24, 7, 5, '2023-03-13'),
(25, 1, 1, '2023-03-13'),
(29, 9, 1, '2023-03-13'),
(30, 21, 1, '2023-03-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piloto`
--

CREATE TABLE `piloto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `piloto`
--

INSERT INTO `piloto` (`id`, `nombre`, `apellido`, `email`) VALUES
(1, 'Juan', 'Garcia', 'juan.garcia@gmail.com'),
(2, 'Maria', 'Lopez', 'maria.lopez@gmail.com'),
(3, 'Pedro', 'Rodriguez', 'pedro.rodriguez@gmail.com'),
(4, 'Antonio', 'Dominguez', 'antonio.dominguez@gmail.com'),
(5, 'Tania', 'Santos', 'Tania.santos@gmail.com'),
(8, 'Alvaro', 'Guerrero', 'alvaro.guerrero@gmail.com'),
(15, 'Pepe', 'Torres', 'jftormal@upo.es'),
(16, 'Andrea', 'Castillo', 'andreagarcas811@gmail.com'),
(17, 'Raquel', 'Castillo', 'andreagarcas811@gmail.com'),
(18, 'Andrea', 'Castillo', 'andreagarcas811@gmail.com'),
(19, '', '', ''),
(20, 'Andrea', 'Castillo', 'andreagarcas811@gmail.com'),
(21, 'Andrea', 'Castillo', 'andreagarcas811@gmail.com'),
(22, 'Andrea', 'Castillo', 'andreagarcas811@gmail.com'),
(23, 'Andrea', 'Castillo', 'andreagarcas811@gmail.com'),
(24, 'Andrea', 'Castillo', 'andreagarcas811@gmail.com'),
(25, 'Andrea', 'Castillo', 'andreagarcas811@gmail.com'),
(26, 'Andrea', 'Castillo', 'andreagarcas811@gmail.com'),
(27, '', '', ''),
(28, '', '', ''),
(29, '', '', ''),
(30, 'Andrea', 'Castillo', 'andreagarcas811@gmail.com'),
(31, 'Andrea', 'Castillo', 'andreagarcas811@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_carrera` (`id_carrera`),
  ADD KEY `id_piloto` (`id_piloto`);

--
-- Indices de la tabla `piloto`
--
ALTER TABLE `piloto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `piloto`
--
ALTER TABLE `piloto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id`),
  ADD CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`id_piloto`) REFERENCES `piloto` (`id`);
--
-- Base de datos: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `idRol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `idHabitacion` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `piso` int(11) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `idHotel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `idHotel` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `estrellas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` int(11) NOT NULL,
  `coste` decimal(10,2) NOT NULL,
  `duracion` int(11) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idHabitacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `nombreRol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_cliente_rol` (`idRol`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`idHabitacion`),
  ADD KEY `idx_habitacion_hotel` (`idHotel`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`idHotel`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `idx_reserva_cliente` (`idCliente`),
  ADD KEY `idx_reserva_habitacion` (`idHabitacion`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `idHabitacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hotel`
--
ALTER TABLE `hotel`
  MODIFY `idHotel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`);

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`idHotel`) REFERENCES `hotel` (`idHotel`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`idHabitacion`) REFERENCES `habitacion` (`idHabitacion`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"registrocivil\",\"table\":\"persona\"},{\"db\":\"almacen\",\"table\":\"libro\"},{\"db\":\"profesores\",\"table\":\"profesor\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-26 11:50:02', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `profesores`
--
CREATE DATABASE IF NOT EXISTS `profesores` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `profesores`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `fechaAlta` date NOT NULL,
  `departamento` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`dni`, `nombre`, `apellidos`, `fechaAlta`, `departamento`) VALUES
('11111110A', 'ada', 'adela', '2005-05-05', 'informatica'),
('11111111A', 'Carlos', 'Barranco', '2006-02-02', 'Informatica'),
('12345555A', 'ee', 'dd', '2005-05-05', 'informatica'),
('22222222A', 'Ricardo', 'Talavera', '2016-02-06', 'Informatica'),
('28813872R', 'dfa', 'dfd', '2005-05-05', 'informatica'),
('33333333A', 'Antonio', 'Perez', '2010-09-14', 'Deporte'),
('44444444A', 'Isabel', 'Moreno', '2012-01-20', 'LADE'),
('55555555A', 'Maria', 'Campano', '2011-05-06', 'Biotecnologia'),
('99999090A', 'def', 'd', '2005-05-05', 'informatica'),
('99999098A', 'def', 'def', '1984-05-05', 'informatica');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`dni`);
--
-- Base de datos: `registrocivil`
--
CREATE DATABASE IF NOT EXISTS `registrocivil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `registrocivil`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `dni` varchar(9) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `localidad` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `provincia` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`dni`, `nombre`, `apellidos`, `direccion`, `localidad`, `provincia`, `fecha`) VALUES
('00000000F', 'Antonio', 'Ruiz', 'Sevilla', 'Sevilla', 'Sevilla', '2018-11-20'),
('01010101X', 'María', 'Valle', 'C. Lepa 2', 'Lepe', 'Huelva', '1992-05-20'),
('12345678Z', 'Pepe', 'Torres', 'UPO', 'Sevilla', 'Sevilla', '2021-05-21'),
('45806949B', 'Andrea', 'Garcia', 'mallorca 20', 'Coria del rio', 'Sevilla', '2024-05-26'),
('45806949C', 'Andrea', 'Garcia', 'mallorca 20', 'Coria del rio', 'Sevilla', '2024-05-26'),
('45806949G', 'Andrea', 'Castillo', 'Mallorca 28', 'Sevilla', 'Coria del rio', '1993-05-15'),
('45874582K', 'Andrea', 'Castillo', 'Mallorca 28', 'Sevilla', 'Coria del rio', '1993-05-15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`dni`);
--
-- Base de datos: `registro_anuncios`
--
CREATE DATABASE IF NOT EXISTS `registro_anuncios` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `registro_anuncios`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `id` int(10) NOT NULL,
  `texto` text NOT NULL,
  `fechaDeRegistro` date NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`id`, `texto`, `fechaDeRegistro`, `categoria`, `usuario`, `imagen`) VALUES
(1, 'Nuevo evento en Sevilla.', '2022-12-11', 'noticias', 'root@entidad.com', 'ejemploJPG.jpg_1669964116'),
(2, 'En el Palacio de Congresos hay una feria este fin de semana.', '2022-12-12', 'noticias', 'root@entidad.com', 'ejemploJPG.jpg_1669975996'),
(3, 'Nuevas tapas para disfrutar en el restaurante de moda.', '2022-12-13', 'noticias', 'root@entidad.com', 'ejemploJPG.jpg_1669976885'),
(4, 'Los hosteleros quieren mejores condiciones.', '2022-12-14', 'noticias', 'root@entidad.com', 'ejemploJPG.jpg_1669956990'),
(7, 'Nuevo entrenador para el equipo local.', '2022-12-11', 'deportes', 'root@entidad.com', 'ejemploPNG.png_166952149'),
(8, 'La final es el domingo 18.', '2022-12-12', 'deportes', 'root@entidad.com', 'ejemploPNG.png_166958514'),
(12, 'Las canciones para este fin de semana.', '2022-12-12', 'musica', 'root@entidad.com', ''),
(32, 'test', '2023-12-14', 'Ocio', 'root@entidad.com', '341a3d55fafce08412266ff2783e5dd9.jpg'),
(33, 'prueba 2', '2023-12-14', 'Cine', 'test@test.com', '344009069_923097842108936_6732907884410553041_n.jpg'),
(35, 'canciones', '2023-12-14', 'Deporte', 'alicia@alicia.com', ''),
(36, 'prueba', '2023-12-14', 'Deporte', 'test@test.com', ''),
(37, 'prueba', '2023-12-14', 'Deporte', 'test@test.com', ''),
(38, 'prueba', '2023-12-14', 'Musica', 'root@entidad.com', ''),
(39, 'prueba', '2023-12-14', 'Musica', 'root@entidad.com', ''),
(40, 'prueba2', '2023-12-14', 'Musica', 'root@entidad.com', 'NULL'),
(42, 'ave maria cuando seras mia', '2023-12-14', 'Musica', 'root@entidad.com', 'NULL'),
(44, 'andy y lucas', '2023-12-14', 'Ocio', 'root@entidad.com', ''),
(45, 'andy y lucas', '2023-12-14', 'Ocio', 'root@entidad.com', ''),
(46, 'rosalia', '2023-12-14', 'Cantantes', 'root@entidad.com', ''),
(48, 'Elena, Carlos,Leo', '2023-12-14', 'Sobrinos', 'root@entidad.com', ''),
(49, 'Elena, Carlos,Leo', '2023-12-14', 'Sobrinos', 'root@entidad.com', ''),
(50, 'Rocio jurado', '2023-12-14', 'Cantantes', 'root@entidad.com', ''),
(52, 'Anabel, rocio', '2023-12-14', 'Hermanas', 'root@entidad.com', ''),
(53, 'Anabel, rocio', '2023-12-14', 'Hermanas', 'root@entidad.com', ''),
(54, 'Mama y PAPA', '2023-12-14', 'Familia', 'root@entidad.com', ''),
(55, 'hola', '2023-12-14', 'Saludos', 'root@entidad.com', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(255) NOT NULL,
  `contrasenia_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`email`, `contrasenia_hash`) VALUES
('root@entidad.com', '$2y$10$.iQiiPUIvrJBHCQrUq39GeV12J8QEnup4Jepo3dHdIa0QhxhhClD6'),
('test@test.com', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- Base de datos: `registro_jornadas`
--
CREATE DATABASE IF NOT EXISTS `registro_jornadas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `registro_jornadas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `id` int(11) NOT NULL,
  `ip_origen` varchar(20) COLLATE utf8_bin NOT NULL,
  `email_usuario` varchar(150) COLLATE utf8_bin NOT NULL,
  `dia` varchar(11) COLLATE utf8_bin NOT NULL,
  `horas` varchar(10) COLLATE utf8_bin NOT NULL,
  `concepto` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `jornadas`
--

INSERT INTO `jornadas` (`id`, `ip_origen`, `email_usuario`, `dia`, `horas`, `concepto`) VALUES
(1, '::1', 'ramon.ramirez@equisystems.com', '30/11/2020', '8', 'Tareas de mantenimiento semanal'),
(2, '::1', 'ramon.ramirez@equisystems.com', '01/12/2020', '8', 'Trabajos varios solicitados por superiores'),
(3, '::1', 'ramon.ramirez@equisystems.com', '02/12/2020', '8', 'Asistencia a curso de proveedor'),
(4, '::1', 'ramon.ramirez@equisystems.com', '03/12/2020', '8', 'Montaje instalaciones para curso'),
(5, '::1', 'ramon.ramirez@equisystems.com', '04/12/2020', '8', 'Reviso instalaciones con supervisor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas_borradas`
--

CREATE TABLE `jornadas_borradas` (
  `id` int(11) NOT NULL,
  `ip_origen` varchar(20) COLLATE utf8_bin NOT NULL,
  `email_usuario` varchar(150) COLLATE utf8_bin NOT NULL,
  `dia` varchar(11) COLLATE utf8_bin NOT NULL,
  `horas` varchar(10) COLLATE utf8_bin NOT NULL,
  `concepto` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `jornadas_borradas`
--

INSERT INTO `jornadas_borradas` (`id`, `ip_origen`, `email_usuario`, `dia`, `horas`, `concepto`) VALUES
(8, '::1', 'ramon.ramirez@equisystems.com', '05/12/2020', '4', 'Guardias Sabado'),
(9, '::1', 'ramon.ramirez@equisystems.com', '06/12/2020', '3', 'Guardias Domingo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jornadas_borradas`
--
ALTER TABLE `jornadas_borradas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Base de datos: `registro_predicciones`
--
CREATE DATABASE IF NOT EXISTS `registro_predicciones` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `registro_predicciones`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prediccion`
--

CREATE TABLE `prediccion` (
  `id` int(10) NOT NULL,
  `signo` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `contenido` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prediccion`
--

INSERT INTO `prediccion` (`id`, `signo`, `fecha`, `contenido`) VALUES
(1, 'Aries', '2022-06-04', 'Aries, te iría mucho mejor en el trabajo, si organizases más tus tareas, de esta forma tendrías más tiempo.\r\n\r\nAhora puedes conseguir un sueldo más elevado que el actual. Laboralmente, te está resultando todo bastante gratificante, tendrás satisfacciones. Tus parientes cercanos te harán sentir muy feliz, tendrás su compañía. Tendrás grandes alegrías y mucha complicidad con alguien, disfrútalo. Si quieres que todo vaya bien, tendrás que poner algo más de tu parte en el amor. Deberías descargarte de responsabilidades en todos los ámbitos de tu vida. Deberías hacerte una revisión médica para quedarte con tranquilidad y bien. Posiblemente tengas un día de descanso después de otro muy duro. Vas a tener muy buen humor y contagiarás energía positiva a los demás. Si dejas de pensar que te encuentras mal de salud, empezarás a sentirte mejor.'),
(2, 'Tauro', '2022-06-04', 'Ahora que te va bien económicamente, Tauro, no dejes de ahorrar, te vendrá bien. Te cuesta dar salida a tus ideas y que te hagan caso en el trabajo, lánzate. Mantente alerta, no estás para hacer gastos innecesarios en este momento. Hoy tendrás un buen día con tus compañeros, incluso te divertirás un poco. Harás las cosas que más te gustan y disfrutarás del espacio que necesitas. Los amigos van a ser tu apoyo en esta temporada y debes acudir a ellos. En el amor, profundizarás en alguna amistad, te sentirás con una unión especial a alguien. Tendrás ganas de relajarte y descansar, estás con bastante cansancio, hazlo. Tienes mucha energía y buen humor, trata de conservarlos algún tiempo. En la salud pon de tu parte, tu organismo no está respondiendo como quieres al estrés, procura descansar. De todas las formas, estás con las pilas puestas y no se te va a escapar nada de lo que ocurra.\r\n\r\n'),
(3, 'Geminis', '2022-06-05', 'Tendrás ganas de ir a trabajar ahora, Géminis, porque allí te sentirás muy cómodo. En el trabajo no te costará estar a la altura, lo harás todo muy bien. Tendrás cambios laborales que te desconcertarán un poco, pero te convienen. Profesionalmente, podrás lucirte y tendrás buena organización, te irá muy bien. Tu pareja será tu cómplice, te entenderá perfectamente en todo lo que hagas. En el amor, es buen momento para introducir cambios importantes en relación, lánzate. Hoy te apetecerá pasar una jornada tranquila en casa, junto con tu gente. No te olvidarás de tus seres queridos, vas a estar ahí para escucharlos. Estarás de buen humor y contagiarás tu alegría a los demás, que te seguirán. Estás con mucha energía, intuición y creatividad, saca partido del momento. Por tu salud, toma algunas precauciones, tienes una cierta propensión a resfriarte por el aire acondicionado.\r\n\r\n'),
(4, 'Cancer', '2022-06-03', 'Cáncer, pondrás esfuerzo y entusiasmo en el trabajo, y todo saldrá como quieres. Controla tus gastos, no te dejes llevar por los impulsos ni por lo que digan otros. Vas a tener la suerte de tu lado en asuntos de dinero, prueba a invertir. Podrías tener un encuentro especial con alguien del signo de Cáncer. Pon amor en todo lo que haces, tienes un buen momento para salir a pasear y relajarte, aprovéchalo. Tu relación con los nativos del signo Escorpio te dará muchas alegrías. Puede que vuelvas a ver a un amigo que llevaba un tiempo alejado de ti. Notarás una gran mejoría en cuanto a tu vitalidad y a tu estado de ánimo. Las tensiones que hayas podido tener estos días van a ir desapareciendo. En tu salud, si no te relajas, no se te pasarán esas molestias, no te agobies por nada.\r\n\r\n'),
(5, 'Virgo', '2022-06-08', 'Tendrás que estar menos pendiente en el trabajo.'),
(6, 'Virgo', '2022-06-04', 'Tendrás que estar más pendiente en el trabajo, Virgo, tendrás movimientos importantes. Tendrás buenas oportunidades para los negocios y las inversiones en general. Vas a disponer de una oportunidad magnífica para mejorar las cosas, debes aprovecharla. Tendrás noticias sobre algo interesante que vendrá de fuera, estate pendiente. Deberías poner orden en tus papeles o documentos, estás algo descuidado. Alguien de tu familia te dará buenos consejos, te interesa prestarle atención. En el amor, podrás resolver alguna que otra desavenencia que has tenido últimamente con tu pareja. Vas a tener renovadas tus energías, estarás muy bien. No tendrás grandes problemas de salud, pero aun así, no dejes de cuidarte, es muy importante. Te conviene cambiar un poco tu estilo de vida sedentario, no te beneficia. Te conviene hacer alguna modificación importante para mejorar tu calidad de vida.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(255) NOT NULL,
  `contrasenia_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`email`, `contrasenia_hash`) VALUES
('root@entidad.com', '$2y$10$oeOnQ/5loEbJJh1N/4DvlumSRpimSeB0UCTIdS.KbXBjvCh536/sK');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `prediccion`
--
ALTER TABLE `prediccion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `prediccion`
--
ALTER TABLE `prediccion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
