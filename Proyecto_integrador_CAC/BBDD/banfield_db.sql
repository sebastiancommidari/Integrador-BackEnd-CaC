-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2022 a las 05:32:29
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banfield_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--
-- Creación: 15-07-2022 a las 04:14:38
-- Última actualización: 18-07-2022 a las 00:58:25
--

CREATE TABLE `jugadores` (
  `dorsal` int(11) NOT NULL,
  `posicion` varchar(3) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `lugar_nac` varchar(45) DEFAULT NULL,
  `valor_venta` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`dorsal`, `posicion`, `nombre`, `apellido`, `fecha_nac`, `lugar_nac`, `valor_venta`) VALUES
(1, 'ARQ', 'Enrique', 'Bologna', '1982-02-13', 'Buenos Aires, Argentina', 120000),
(2, 'DEF', 'Alexis', 'Maldonado', '1997-09-02', 'La Rioja, Argentina', 2500000),
(3, 'DEF', 'Luis', 'Mago', '1994-09-15', 'Cumana, Venezuela', 500000),
(4, 'DEF', 'Emanuel', 'Coronel', '1997-02-01', 'Tucuman, Argentina', 3000000),
(5, 'MED', 'Nicolas', 'Domingo', '1985-04-08', 'Totoras, Argentina', 5000000),
(6, 'DEF', 'Dylan', 'Gissi', '1991-04-27', 'Genf, Suiza', 300000),
(7, 'MED', 'Nicolas', 'Bertolo', '1986-01-02', 'Cordoba, Argentina', 200000),
(8, 'MED', 'Giuliano', 'Galoppo', '1999-06-18', 'Buenos Aires, Argentina', 8000000),
(9, 'DEL', 'Juan Manuel', 'Cruz', '1999-07-19', 'Buenos Aires, Argentina', 1300000),
(10, 'MED', 'Jesus', 'Datolo', '1984-05-19', 'Buenos Aires, Argentina', 800000),
(11, 'DEL', 'Agustin', 'Urzi', '2000-05-04', 'Buenos Aires, Argentina', 6000000),
(12, 'ARQ', 'Facundo', ' Cambeses', '1997-04-09', 'Buenos Aires, Argentina', 1000000),
(13, 'DEF', 'Luciano', 'Abecasis', '1990-06-04', 'Rosario, Argentina', 300000),
(14, 'DEF', 'Jose', 'Alvarez', '1994-12-27', 'Montevideo, Uruguay', 600000),
(15, 'MED', 'Alejandro', 'Cabrera', '1992-09-30', 'Los Condores, Argentina', 999999999),
(16, 'MED', 'Matias', 'Gonzalez', '2002-02-28', 'Buenos Aires, Argentina', 5000000),
(17, 'DEF', 'Alejandro', 'Maciel', '1997-04-22', 'El Dorado, Argentina', 2000000),
(18, 'DEL', 'Andres', 'Chavez', '1991-03-21', 'Salto, Argentina', 800000),
(19, 'DEL', 'Ramiro', 'Enrique', '2001-05-04', 'Burzaco, Argentina', 4000000),
(20, 'DEL', 'Mauricio', 'Cuero', '1993-01-28', 'Tumaco, Colombia', 1300000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`dorsal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `dorsal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
