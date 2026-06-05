-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2026 a las 01:50:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `categoria_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `created_at`, `updated_at`, `imagen`, `categoria_id`) VALUES
(1, 'Mouse', 'Inalambrico HP', 325.00, 15, '2026-06-04 16:14:57', '2026-06-04 16:41:28', 'productos/uaeMV3M113BijQDuuRRugqezrrcsEFkJ5AQ6AK44.webp', 1),
(2, 'Extensor de Rango', 'TP-LINK TL-WA855RE', 405.00, 33, '2026-06-04 16:14:57', '2026-06-05 04:50:28', 'productos/Sun4lIsL0BbdrEs53zRtek436xtDKYfBpbq8Bl9A.webp', 1),
(3, 'Camara', 'Sony a6400', 16400.00, 10, '2026-06-04 16:14:57', '2026-06-05 04:46:17', 'productos/shAEd1ynLYW8oXZQWuYeRrT3HAdvY5MBp2JVxhDm.webp', 1),
(4, 'Audífonos Bluetooth', 'Select Sound BTH027', 469.00, 24, '2026-06-04 16:14:57', '2026-06-05 04:47:25', 'productos/0zjtNFZ60auyb5IXIwfiFpbflPMZQGg13CY8Zzu3.webp', 1),
(5, 'Reloj Electrónico', 'Cuadrado', 230.00, 21, '2026-06-04 16:14:57', '2026-06-05 05:03:59', 'productos/PWh4HRFxskdi66vwS7iWJIH3RXNMIovV1MEHwewv.webp', 1),
(6, 'Playera', 'Essential Sporty Levis', 454.00, 61, '2026-06-04 16:14:57', '2026-06-05 04:57:41', 'productos/PM6hkiokWGSu2Zb3aocTqNZC3OJYuBJJIw5DweWx.webp', 2),
(7, 'Chamarra', 'Para mujer, marca Puma', 472.00, 49, '2026-06-04 16:14:57', '2026-06-05 04:54:28', 'productos/Rg9zlhTF0Y5yy6hQosn6gAkm6EfvnnvqkFpJ7Ukd.webp', 2),
(8, 'Blusa', 'Holgada de cuello redondo', 257.00, 45, '2026-06-04 16:14:57', '2026-06-05 04:58:58', 'productos/AzYMvmyQShXNxfhJ8sv5ohU4rCwVL2uxFeKAvIMG.webp', 2),
(9, 'Polo', 'De algodon, Marca: Ferrari', 8500.00, 4, '2026-06-04 16:14:57', '2026-06-05 04:39:02', 'productos/zf4QEdqq6IU58qLEuNF2zs6rEEJLjoHJPbwWPPgW.webp', 2),
(10, 'Conjunto', 'Ropa deportiva para hombre', 210.00, 20, '2026-06-04 16:14:57', '2026-06-05 05:00:24', 'productos/HlaPR65PUQU7QYewtIxHpxkMsMCJQkCVagWehbSj.webp', 2),
(11, 'Olla', 'Kitchenaid', 1430.00, 16, '2026-06-04 16:14:57', '2026-06-05 05:05:58', 'productos/M6AT3yMJFGwhIjkXfgSqiI6XaJoyKjQtS2FMavrS.webp', 3),
(12, 'Ventilador', 'Vornado, 28 cm', 1333.00, 15, '2026-06-04 16:14:58', '2026-06-05 04:41:21', 'productos/5gUvjlrffsO87nYd0mXGoisRZo3SKLPastL6Ka5X.webp', 3),
(13, 'Cajonera', 'Kerrville con 3 cajones, Marron y Gris', 1899.00, 10, '2026-06-04 16:14:58', '2026-06-05 04:51:50', 'productos/Lf0rsXIuie34m3jPQ025fIJwRt5tPE8XVY4nu6oc.webp', 3),
(14, 'Vajilla', 'Vajilla cerrada para 4 personas', 1187.00, 16, '2026-06-04 16:14:58', '2026-06-05 04:55:35', 'productos/lLVHzUt6mLoJG6KJwnfjGpiaTnStt91Wk66DDRRe.webp', 3),
(15, 'Reloj Despertador', 'Misik mr486w', 559.00, 13, '2026-06-04 16:14:58', '2026-06-05 04:43:49', 'productos/i3BysdjglD8hCQ82fYmSuggOmSbAGyXCg3f4kEPU.webp', 3),
(16, 'Raqueta', 'Head Ti', 668.00, 25, '2026-06-04 16:14:58', '2026-06-05 04:42:22', 'productos/fWAg4h2vOXemIRfMfwNXcyrvFAFq2BNlfZ1IIBNU.webp', 4),
(17, 'Gafas de Natación', 'TYR Blackops 140 EV', 512.00, 63, '2026-06-04 16:14:58', '2026-06-05 04:45:32', 'productos/FbnMtlBan5pV1NGY4Oi9F9MFqGGbvnKAE8H7DmPX.webp', 4),
(18, 'Saco de Boxeo', 'Portatil e inflable', 701.00, 35, '2026-06-04 16:14:58', '2026-06-05 04:49:31', 'productos/wBvmPQOTF3PGiaZLJohQJ4OoK9XixLhE3E5ulIJO.webp', 4),
(19, 'Mancuernas', 'Par de mancuernas hexagonales de 3lb', 1889.00, 6, '2026-06-04 16:14:58', '2026-06-05 04:48:43', 'productos/bjL2QM0YnPJbRt1xxqmJF9VmNPNIddhPOIHgEZka.webp', 4),
(20, 'Canasta de Baloncesto', 'Ajustable', 1000.00, 11, '2026-06-04 16:14:58', '2026-06-05 05:01:56', 'productos/iiBwdtmZLEgOF73D0ojhXVhyVjppENjioNsSZqgK.webp', 4),
(21, 'Audífonos', 'STF Orion True Wireless Blanco', 530.00, 20, '2026-06-05 05:07:54', '2026-06-05 05:07:54', 'productos/M5YyNsCEcWayMrqpEFEuIl6AHnobHd8d0o6rgCmh.webp', 1),
(22, 'Tableta', 'Samsung Galaxy Tab S10 Fe', 6810.00, 9, '2026-06-05 05:08:39', '2026-06-05 05:08:39', 'productos/3E2ioOGWKuPhKdMKEx0oBXLPdQoFvz6ssgLCzIv5.webp', 1),
(23, 'Teclado y Mouse', 'Kit Logitech MK345', 799.00, 12, '2026-06-05 05:10:00', '2026-06-05 05:10:00', 'productos/FuiMh5HDamdM556W0dDb58CKbmSOLyaCSczYr8hH.webp', 1),
(24, 'Bocina', 'woofer 12 portátil Alienpro Ap-600 tws rgb 130w rms', 5010.00, 5, '2026-06-05 05:10:59', '2026-06-05 05:10:59', 'productos/80IEtaOSlvObxQjcnqLXaeNDQzoHYWdETPSYVDH6.webp', 1),
(25, 'Televisión', 'Hisense 4K QLED', 6001.00, 10, '2026-06-05 05:12:12', '2026-06-05 05:12:12', 'productos/pNs9MBj1NWu6YvANXVNCmuF4d4TQFBAwqisK15JL.webp', 1),
(26, 'Mono', 'Mono De Mujer Ropa Casual De Verano Correas Ajustables', 356.00, 40, '2026-06-05 05:16:38', '2026-06-05 05:16:38', 'productos/jEMbduckYGiMnRcw3q4LpbPPQaFoDTTrtaN0TmoY.webp', 2),
(27, 'Chaleco', 'Sandro', 6280.00, 21, '2026-06-05 05:17:44', '2026-06-05 05:17:44', 'productos/X8bPK1XtII8yClRCbjsicmLYiNdbxg3M2s2uzbwa.webp', 2),
(28, 'Ropa de Fiesta', 'Alta calidad, K 40624', 424.00, 10, '2026-06-05 05:18:44', '2026-06-05 05:18:44', 'productos/xWTl1m2GxbGDtQNVshtKhpSh8fn7ZApCa7xWzFdd.webp', 2),
(29, 'Traje', 'Men\'s BOSS Traje slim fit de dos piezas en lana virgen a cuadros', 14290.00, 9, '2026-06-05 05:20:08', '2026-06-05 05:20:08', 'productos/PLyTtTSRA7e28FYgZ66AZJp93natRS5OhP8mgMCh.webp', 2),
(30, 'Vestido', 'Ivonne, sin mangas y estampado', 2189.00, 4, '2026-06-05 05:21:18', '2026-06-05 05:21:18', 'productos/tIZzobJOk7p1p0tmGenAnONGsomZS2efejjEN5j2.webp', 2),
(31, 'Mueble de Cocina', 'para Fregadero agata madesa 1 puerta 2 cajones Crema/Blanco', 6750.00, 3, '2026-06-05 05:23:37', '2026-06-05 05:23:37', 'productos/0aButMEIzRKtdEcElUVAvPeSDuQScPHIyWmCRmRl.webp', 3),
(32, 'Aspiradora', 'Alámbrica Westinghouse 1.2 L 600w Wfvc600bk', 1189.00, 14, '2026-06-05 05:24:46', '2026-06-05 05:24:46', 'productos/H5NaQCFeIfeUDuq3l1XG1SyOUzy9SWYd2rKgUJqQ.webp', 3),
(33, 'Cesta de Frutas', 'komfora de bambú de 3 niveles con 2 perchas para cocina', 2319.00, 5, '2026-06-05 05:26:12', '2026-06-05 05:26:12', 'productos/2r473Z1oWoExLU3whZV3DyIjeiPhP5LjfwkhS2pB.webp', 3),
(34, 'Cafetera', 'Fcsa Boro 600ml', 357.00, 4, '2026-06-05 05:27:42', '2026-06-05 05:27:42', 'productos/gmTcpD46gfXbnT0INYCnNrR9IFOuNo50R0aAx2iC.jpg', 3),
(35, 'Limpiador', 'Lavanda Mejorado 5 Lt', 55.00, 23, '2026-06-05 05:28:23', '2026-06-05 05:28:23', 'productos/Zww8aTIZ6iYyUqwQT30BVQdCmt0X1njoYMA6I748.jpg', 3),
(36, 'Tenis', 'Asics Gel-Pulse 16 Hombre', 2825.00, 11, '2026-06-05 05:29:43', '2026-06-05 05:29:43', 'productos/kFX2mMNStyEYYiQjnRSxJfJIYAmQDWCobnqA0JeJ.webp', 4),
(37, 'Bolsa de Raquetas', 'Multi Babolat Team Con 2 Raquetas Pulsión', 2240.00, 21, '2026-06-05 05:30:51', '2026-06-05 05:30:51', 'productos/VuFHuDn62vPC0zvkJn74yVKsTQtRtHADW1OGYnor.webp', 4),
(38, 'Balon de Futbol', 'Mxgnp-001', 950.00, 10, '2026-06-05 05:32:19', '2026-06-05 05:32:19', 'productos/NIt3eWOeRdrHwHhTIrRR1dLnmgJ4LAHXEiS3fL5M.webp', 4),
(39, 'Pelota de Yoga con Bomba', 'Wod Pro 75 cm', 188.00, 5, '2026-06-05 05:33:47', '2026-06-05 05:33:47', 'productos/UMb8K39vFUEYAZp6bOKrcmA7AyEac1oisOatNkbC.webp', 4),
(40, 'Juego de Arco y Flecha', 'Con luces de flash LED', 663.00, 2, '2026-06-05 05:35:16', '2026-06-05 05:35:16', 'productos/DvuN2sFVezVMQgvyouCnoPwCgoXCvGFKDKtTiGSP.webp', 4),
(41, 'Calculadora', 'Nextep, Cubierta Metálica Batería Solar', 124.00, 11, '2026-06-05 05:36:28', '2026-06-05 05:36:28', 'productos/KbBlfTHHqHJAY7TdmwIbYNFkKYIGzS0zuQwcsrJA.webp', 1),
(42, 'Báscula', 'Báscula de cocina digitales', 1657.00, 16, '2026-06-05 05:37:45', '2026-06-05 05:37:45', 'productos/5IJ4NTmV8B5l9f4MhZXy6Wwq3pyG6uFCwIGVDzUd.jpg', 1),
(43, 'Telémetro', 'Cinta métrica digital', 654.00, 23, '2026-06-05 05:38:40', '2026-06-05 05:38:40', 'productos/9JmKM7sLTFK9bLS13KQOPHeInc3I0DRhpzuUFsmQ.webp', 1),
(44, 'Cronómetro', 'Digital Y Profesional Para Deporte Fitness', 135.00, 5, '2026-06-05 05:39:48', '2026-06-05 05:39:48', 'productos/MnDXQDXMjPKA8lRjJkVhgTJ5mGeS7hfc8V4Sn1OJ.webp', 4),
(45, 'Guantes de Fútbol', 'Doble Amenaza Deportes De Batalla', 520.00, 13, '2026-06-05 05:40:37', '2026-06-05 05:40:37', 'productos/k3LERDcC42YltLL6HBvf7miG5QcEgdnQZSyzvvpk.webp', 4),
(46, 'Podómetro', 'Greeniant', 499.00, 7, '2026-06-05 05:41:28', '2026-06-05 05:41:28', 'productos/zqyE3oO0IdQbOWnXplqOXZrfvDAR8HXCPoAo4Mml.webp', 4),
(47, 'Mopa', 'Universal para limpieza de suelos en casa', 5099.00, 4, '2026-06-05 05:42:32', '2026-06-05 05:42:32', 'productos/SzwsuNC0BTlDDESykq5QCQWyDbYWKdiUFTN2tVVo.webp', 3),
(48, 'Posavasos', 'Acolchado cuadrado con almohadilla térmica', 60.00, 55, '2026-06-05 05:43:31', '2026-06-05 05:43:31', 'productos/rfPabktpdMI0tWJ1kl9qBHbSWGGZiXJgCqywqtRx.webp', 3),
(49, 'Edredón', 'Matrimonial interior Dalfiori', 1919.00, 22, '2026-06-05 05:45:11', '2026-06-05 05:45:11', 'productos/V7YJWVs2ss1eqIiKogGkk7obx3IbazpnAjU7lyY7.webp', 3),
(50, 'Traje', 'Casual comercial de color liso', 1015.00, 4, '2026-06-05 05:46:12', '2026-06-05 05:46:12', 'productos/JJkxWoFzOv1CuNvhGqtayB15u7GVzGqg1nakxi6S.webp', 2),
(51, 'Conjunto de Ropa', 'De lujo para niños', 640.00, 23, '2026-06-05 05:48:47', '2026-06-05 05:48:47', 'productos/fOHSQOUp3YYJck2YmMib8QOf74osmehQcUUvxTnM.webp', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_categoria_id_foreign` (`categoria_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
