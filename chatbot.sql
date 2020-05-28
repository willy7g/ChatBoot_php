-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2020 a las 04:22:51
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chatbot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `user` longtext NOT NULL,
  `chatbot` longtext NOT NULL,
  `action` varchar(255) NOT NULL,
  `del_msg` tinyint(4) NOT NULL DEFAULT 1,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `chats`
--

INSERT INTO `chats` (`id`, `user`, `chatbot`, `action`, `del_msg`, `date`) VALUES
(1, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-25 21:26:47'),
(2, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-25 21:30:57'),
(3, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-25 21:35:56'),
(4, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-25 21:36:29'),
(5, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-25 21:36:38'),
(6, 'que hora es', 'echo $child2;', 'query', 0, '2020-05-25 21:38:43'),
(7, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-25 22:12:35'),
(8, 'que dia hoy', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-25 22:35:13'),
(9, 'que fecha es hoy', 'echo $child1;', 'query', 0, '2020-05-25 22:35:38'),
(10, 'que dia es hoy', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-25 22:37:06'),
(11, 'promocion del dia', 'le tenemos las siguientes promociones\r\n* Comida Rapida\r\n* Cafe', 'text', 0, '2020-05-25 22:39:49'),
(12, 'que bebidas tiene', '*Coca Cola\r\n*Agua Fresca\r\n*COmputadora\r\n*Fresco de PIña', 'text', 0, '2020-05-25 22:41:45'),
(13, 'bebidas', '*Coca Cola\r\n*Agua Fresca\r\n*COmputadora\r\n*Fresco de PIña', 'text', 0, '2020-05-25 22:42:43'),
(14, 'promocion', 'le tenemos las siguientes promociones\r\n* Comida Rapida\r\n* Cafe', 'text', 0, '2020-05-25 22:43:13'),
(15, 'como me llamo', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-25 22:43:25'),
(16, 'abre google', '<a href=\"https://www.google.es/\"  target=\"_blank\"> Haz Click aqui </a>', 'text', 0, '2020-05-25 22:44:12'),
(17, 'te amo', 'gracias yo tambien me siento bien contigo', 'text', 0, '2020-05-25 22:45:15'),
(18, 'dime una adivinanza', 'Claro que te parece esta:\r\n\r\nLibro de poco tamaño que solo tiene doce hojas\r\npero se lee en un año:\r\n\r\n\r\nel Calendario', 'text', 0, '2020-05-25 22:47:17'),
(19, 'bebidas', '*Coca Cola\r\n*Agua Fresca\r\n*COmputadora\r\n*Fresco de PIña', 'text', 0, '2020-05-25 22:48:12'),
(20, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-25 23:12:41'),
(21, 'cual', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-25 23:12:48'),
(22, 'h', 'hello', 'text', 0, '2020-05-26 14:35:44'),
(23, 'que dia es hoy', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-26 14:35:51'),
(24, 'que hora tienes', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-26 14:36:01'),
(25, 'que hora es', 'echo $child2;', 'query', 0, '2020-05-26 14:36:08'),
(26, 'que dia es', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-26 14:36:17'),
(27, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-26 14:43:20'),
(28, 'bebidas', '*Coca Cola\r\n*Agua Fresca\r\n*COmputadora\r\n*Fresco de PIña', 'text', 0, '2020-05-26 14:43:34'),
(29, 'tu nombre', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-26 14:43:43'),
(30, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-26 14:43:51'),
(31, 'h', 'hello', 'text', 0, '2020-05-26 14:43:57'),
(32, 'que tal', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-26 14:51:42'),
(33, 'h', 'hello', 'text', 0, '2020-05-26 14:51:45'),
(34, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-26 15:01:48'),
(35, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-26 15:01:56'),
(36, 'comida', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-26 15:02:06'),
(37, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-26 15:28:33'),
(38, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-26 15:38:22'),
(39, 'que tal', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-26 15:42:13'),
(40, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-27 19:23:50'),
(41, 'como te llamas', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-27 19:24:20'),
(42, 'que dia es hoy', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-27 19:24:57'),
(43, 'que fecha es hoy', 'echo $child1;', 'query', 0, '2020-05-27 19:25:22'),
(44, 'dime mi nombre', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-27 19:28:37'),
(45, 'soy william', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-27 19:31:35'),
(46, 'como te llamas', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-27 19:32:27'),
(47, 'como te llamas', 'Hola Soy BOTTaco!! En que te puedo ayudar dime y con gusto lo are.!!', 'text', 0, '2020-05-27 19:34:18'),
(48, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-27 19:35:49'),
(49, 'dime tu nombre', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-27 19:35:59'),
(50, 'dime tu nombre', 'Hola Soy BOTTaco!! En que te puedo ayudar dime y con gusto lo are.!!', 'text', 0, '2020-05-27 19:37:05'),
(51, 'como te llamas', 'Hola Soy BOTTaco!! En que te puedo ayudar dime y con gusto lo are.!!', 'text', 0, '2020-05-27 19:37:15'),
(52, 'que menu tiene', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-27 19:37:52'),
(53, 'que menú tiene', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 0, '2020-05-27 19:38:12'),
(54, 'menu', 'te ofrecemos los siguientes\r\n*pollo\r\n*carne\r\n*amburguesas', 'text', 0, '2020-05-27 19:38:58'),
(55, 'te amo', 'gracias yo tambien me siento bien contigo', 'text', 0, '2020-05-27 19:39:56'),
(56, 'abre google', '<a href=\"https://www.google.es/\"  target=\"_blank\"> Haz Click aqui </a>', 'text', 0, '2020-05-27 19:45:13'),
(57, 'que hora es', 'echo $child2;', 'query', 0, '2020-05-27 19:46:01'),
(58, 'abre youtube', '<a href=\"https://www.youtube.com/?hl=es-419&gl=GT\"  target=\"_blank\"> Haz Click aqui </a>', 'text', 0, '2020-05-27 19:47:55'),
(59, 'abre youtube', '<a href=\"https://www.youtube.com/?hl=es-419&gl=GT\"  target=\"_blank\"> Haz Click aqui </a>', 'text', 0, '2020-05-27 19:48:43'),
(60, 'abre youtube', '<a href=\"https://www.youtube.com/?hl=es-419&gl=GT\"  target=\"_blank\"> Pulsa Aqui!! </a>', 'text', 0, '2020-05-27 19:48:43'),
(61, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-27 20:04:15'),
(62, 'hola', 'hola en que te puedo ayudar?', 'text', 0, '2020-05-27 20:04:19'),
(63, 'hola', 'hola en que te puedo ayudar?', 'text', 1, '2020-05-27 20:06:50'),
(64, 'como te llamas', 'Hola Soy BOTTaco!! En que te puedo ayudar dime y con gusto lo are.!!', 'text', 1, '2020-05-27 20:06:59'),
(65, 'bebida', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 1, '2020-05-27 20:07:03'),
(66, 'bebidas', '*Coca Cola\r\n*Agua Fresca\r\n*COmputadora\r\n*Fresco de PIña', 'text', 1, '2020-05-27 20:07:11'),
(67, 'papa', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 1, '2020-05-27 20:11:13'),
(68, 'computadora', 'Lo siento pero no estoy exactamente clara cómo ayudarte', 'text', 1, '2020-05-27 20:14:34'),
(69, 'compta', 'Lo siento pero no estoy exactamente clara cómo ayudarte, prengutame algo sobre los menu de hoy y con gusto te ayudare!!. Me encanta ayudar!!', 'text', 1, '2020-05-27 20:15:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `question`
--

INSERT INTO `question` (`id`, `question`, `answer`, `action`) VALUES
(1, 'hi,h', 'hello', 'text'),
(2, 'how r u', 'i am fine, thank you', 'text'),
(3, 'hola', 'hola en que te puedo ayudar?', 'text'),
(4, 'que  menú tienen,menu, menú', 'te ofrecemos los siguientes\r\n*pollo\r\n*carne\r\n*amburguesas', 'text'),
(5, 'que hora es', 'echo $child2;', 'query'),
(6, 'que fecha es hoy,que dia hoy', 'echo $child1;', 'query'),
(7, 'abre google', '<a href=\"https://www.google.es/\"  target=\"_blank\"> Haz Click aqui </a>', 'text'),
(8, 'promocion del dia,promocion', 'le tenemos las siguientes promociones\r\n* Comida Rapida\r\n* Cafe', 'text'),
(9, 'que Bebidas tiene,bebidas', '*Coca Cola\r\n*Agua Fresca\r\n*COmputadora\r\n*Fresco de PIña', 'text'),
(10, 'te amo', 'gracias yo tambien me siento bien contigo', 'text'),
(11, 'dime una adivinanza', 'Claro que te parece esta:\r\n\r\nLibro de poco tamaño que solo tiene doce hojas\r\npero se lee en un año:\r\n\r\n\r\nel Calendario', 'text'),
(12, 'como te llamas, dime tu nombre', 'Hola Soy BOTTaco!! En que te puedo ayudar dime y con gusto lo are.!!', 'text'),
(13, 'abre youtube', '<a href=\"https://www.youtube.com/?hl=es-419&gl=GT\"  target=\"_blank\"> Haz Click aqui </a>', 'text'),
(14, 'abre youtube', '<a href=\"https://www.youtube.com/?hl=es-419&gl=GT\"  target=\"_blank\"> Pulsa Aqui!! </a>', 'text');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
