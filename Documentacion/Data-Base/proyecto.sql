-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2020 a las 17:13:30
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acudiente`
--

CREATE TABLE `acudiente` (
  `Id` int(11) NOT NULL,
  `User` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `User` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `Id` int(11) NOT NULL,
  `User` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Grado_Id1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alum_acu`
--

CREATE TABLE `alum_acu` (
  `Alum_Acu_Id` int(11) NOT NULL,
  `Acu_Id1` int(11) DEFAULT NULL,
  `Alum_Id1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alum_mat`
--

CREATE TABLE `alum_mat` (
  `Alum_Mat_Id` int(11) NOT NULL,
  `Alum_Id2` int(11) DEFAULT NULL,
  `Mat_Id2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinador`
--

CREATE TABLE `coordinador` (
  `Id` int(11) NOT NULL,
  `User` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `Id` int(11) NOT NULL,
  `User` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `Id` int(11) NOT NULL,
  `Piso` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `Id` int(11) NOT NULL,
  `Horas` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mat_doc`
--

CREATE TABLE `mat_doc` (
  `Mat_Doc_Id` int(11) NOT NULL,
  `Mat_Id1` int(11) DEFAULT NULL,
  `Doc_Id1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rector`
--

CREATE TABLE `rector` (
  `Id` int(11) NOT NULL,
  `User` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `Cod` int(11) NOT NULL,
  `Dirección` varchar(45) DEFAULT NULL,
  `Admin_Id1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede_doc`
--

CREATE TABLE `sede_doc` (
  `Sede_Doc_Id` int(11) NOT NULL,
  `Sede_Cod1` int(11) DEFAULT NULL,
  `Doc_Id2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acudiente`
--
ALTER TABLE `acudiente`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Grado_Id1` (`Grado_Id1`);

--
-- Indices de la tabla `alum_acu`
--
ALTER TABLE `alum_acu`
  ADD PRIMARY KEY (`Alum_Acu_Id`),
  ADD KEY `Alum_Id1` (`Alum_Id1`),
  ADD KEY `Acu_Id1` (`Acu_Id1`);

--
-- Indices de la tabla `alum_mat`
--
ALTER TABLE `alum_mat`
  ADD PRIMARY KEY (`Alum_Mat_Id`),
  ADD KEY `Alum_Id2` (`Alum_Id2`),
  ADD KEY `Mat_Id2` (`Mat_Id2`);

--
-- Indices de la tabla `coordinador`
--
ALTER TABLE `coordinador`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `mat_doc`
--
ALTER TABLE `mat_doc`
  ADD PRIMARY KEY (`Mat_Doc_Id`),
  ADD KEY `Mat_Id1` (`Mat_Id1`),
  ADD KEY `Doc_Id1` (`Doc_Id1`);

--
-- Indices de la tabla `rector`
--
ALTER TABLE `rector`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`Cod`),
  ADD KEY `Admin_Id1` (`Admin_Id1`);

--
-- Indices de la tabla `sede_doc`
--
ALTER TABLE `sede_doc`
  ADD PRIMARY KEY (`Sede_Doc_Id`),
  ADD KEY `Doc_Id2` (`Doc_Id2`),
  ADD KEY `Sede_Cod1` (`Sede_Cod1`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`Grado_Id1`) REFERENCES `grado` (`Id`);

--
-- Filtros para la tabla `alum_acu`
--
ALTER TABLE `alum_acu`
  ADD CONSTRAINT `alum_acu_ibfk_1` FOREIGN KEY (`Alum_Id1`) REFERENCES `alumno` (`Id`),
  ADD CONSTRAINT `alum_acu_ibfk_2` FOREIGN KEY (`Acu_Id1`) REFERENCES `acudiente` (`Id`);

--
-- Filtros para la tabla `alum_mat`
--
ALTER TABLE `alum_mat`
  ADD CONSTRAINT `alum_mat_ibfk_1` FOREIGN KEY (`Alum_Id2`) REFERENCES `alumno` (`Id`),
  ADD CONSTRAINT `alum_mat_ibfk_2` FOREIGN KEY (`Mat_Id2`) REFERENCES `materia` (`Id`);

--
-- Filtros para la tabla `mat_doc`
--
ALTER TABLE `mat_doc`
  ADD CONSTRAINT `mat_doc_ibfk_1` FOREIGN KEY (`Mat_Id1`) REFERENCES `materia` (`Id`),
  ADD CONSTRAINT `mat_doc_ibfk_2` FOREIGN KEY (`Doc_Id1`) REFERENCES `docente` (`Id`);

--
-- Filtros para la tabla `sede`
--
ALTER TABLE `sede`
  ADD CONSTRAINT `sede_ibfk_1` FOREIGN KEY (`Admin_Id1`) REFERENCES `admin` (`Id`);

--
-- Filtros para la tabla `sede_doc`
--
ALTER TABLE `sede_doc`
  ADD CONSTRAINT `sede_doc_ibfk_1` FOREIGN KEY (`Doc_Id2`) REFERENCES `docente` (`Id`),
  ADD CONSTRAINT `sede_doc_ibfk_2` FOREIGN KEY (`Sede_Cod1`) REFERENCES `sede` (`Cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
