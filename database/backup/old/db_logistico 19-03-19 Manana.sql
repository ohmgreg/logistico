/*
Navicat MySQL Data Transfer

Source Server         : Servidor
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : netconsu_logistico

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-03-19 10:59:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `LogistPanaderiaCliente`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaCliente`;
CREATE TABLE `LogistPanaderiaCliente` (
  `id` int(11) NOT NULL,
  `NombrePanaderia` varchar(255) DEFAULT NULL,
  `rif` varchar(255) DEFAULT NULL,
  `FechaConstitucion` date DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagran` varchar(255) DEFAULT NULL,
  `capacidadinstalada` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `validaemail` int(11) DEFAULT NULL,
  `validadocumento` int(11) DEFAULT NULL,
  `SolicitudDeSupervicion` int(11) DEFAULT NULL,
  `suspendido` int(11) DEFAULT NULL,
  `observacionSuspencion` date DEFAULT NULL,
  `findelasuspencion` date DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `id_parroquia` int(11) DEFAULT NULL,
  `MotivoSolicitudDeSupervicion` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `Nombre` (`NombrePanaderia`),
  FULLTEXT KEY `rif` (`rif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaCliente
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaClienteAsignacion`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaClienteAsignacion`;
CREATE TABLE `LogistPanaderiaClienteAsignacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_Panaderia` int(11) DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `ultimodespacho` date DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaClienteAsignacion
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaClientePropietarios`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaClientePropietarios`;
CREATE TABLE `LogistPanaderiaClientePropietarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `cedula` double DEFAULT NULL,
  `id_Panaderia` int(11) DEFAULT NULL,
  `niveldeacciones` float DEFAULT NULL,
  `telefono_ppal` int(11) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `validatelefono` int(11) DEFAULT NULL,
  `validaemail` int(11) DEFAULT NULL,
  `validasms` int(11) DEFAULT NULL,
  `validacedula` int(11) DEFAULT NULL,
  `validafoto` int(11) DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  `tokenmail` varchar(255) DEFAULT '',
  `tokensms` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaClientePropietarios
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaClienteResponsables`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaClienteResponsables`;
CREATE TABLE `LogistPanaderiaClienteResponsables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `cedula` double DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` double(11,0) DEFAULT NULL,
  `id_Panaderia` int(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `validaemail` int(255) DEFAULT NULL,
  `validacorreo` int(255) DEFAULT NULL,
  `validasms` int(255) DEFAULT NULL,
  `validacedula` int(255) DEFAULT NULL,
  `validafoto` int(255) DEFAULT NULL,
  `activo` int(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaClienteResponsables
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaDistribucionOferta`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaDistribucionOferta`;
CREATE TABLE `LogistPanaderiaDistribucionOferta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_OrdenDistribucion` int(11) DEFAULT NULL,
  `id_Distribuidora` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `fechadespacho` date DEFAULT NULL,
  `id_OrdenTransporte` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaDistribucionOferta
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaDistribucionOrden`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaDistribucionOrden`;
CREATE TABLE `LogistPanaderiaDistribucionOrden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaDistribucionOrden
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaDistribuidora`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaDistribuidora`;
CREATE TABLE `LogistPanaderiaDistribuidora` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `telefono` double DEFAULT NULL,
  `validacorreo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaDistribuidora
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaDistribuidoraAlmacen`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaDistribuidoraAlmacen`;
CREATE TABLE `LogistPanaderiaDistribuidoraAlmacen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `preciocompra` decimal(10,0) DEFAULT NULL,
  `precioventa` decimal(10,0) DEFAULT NULL,
  `id_OrdendeDistribucion` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `existencia` decimal(10,0) DEFAULT NULL,
  `id_Distribuidora` int(11) DEFAULT NULL,
  `merma` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaDistribuidoraAlmacen
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaDistribuidoraResponsable`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaDistribuidoraResponsable`;
CREATE TABLE `LogistPanaderiaDistribuidoraResponsable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Distribuidora` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` double DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `validacorreo` int(11) DEFAULT NULL,
  `validasms` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaDistribuidoraResponsable
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaOrdenDistribucion`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaOrdenDistribucion`;
CREATE TABLE `LogistPanaderiaOrdenDistribucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_panadera` int(11) DEFAULT NULL,
  `fechaAsignacion` date DEFAULT NULL,
  `fechadespacho` date DEFAULT NULL,
  `nodeposito` varchar(255) DEFAULT NULL,
  `banco` varchar(255) DEFAULT NULL,
  `cod_Asignacion` varchar(255) DEFAULT NULL,
  `id_OrdenTransporte` int(11) DEFAULT NULL,
  `peso` decimal(10,0) DEFAULT NULL,
  `costoDistribucion` decimal(10,0) DEFAULT NULL,
  `precioventaDistribucion` decimal(10,0) DEFAULT NULL,
  `completado` int(11) NOT NULL DEFAULT '0',
  `validasms` int(11) NOT NULL DEFAULT '0',
  `validaemail` int(11) NOT NULL DEFAULT '0',
  `id_Transporte` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaOrdenDistribucion
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaOrdenDistribucionDetalle`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaOrdenDistribucionDetalle`;
CREATE TABLE `LogistPanaderiaOrdenDistribucionDetalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `cod_Asignacion` varchar(255) DEFAULT NULL,
  `id_Ordendeopeaciones` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaOrdenDistribucionDetalle
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaOrdenOperaciones`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaOrdenOperaciones`;
CREATE TABLE `LogistPanaderiaOrdenOperaciones` (
  `id` int(11) NOT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `id_OrdenDistribucion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaOrdenOperaciones
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaOrdenOperacionesasignaResponsables`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaOrdenOperacionesasignaResponsables`;
CREATE TABLE `LogistPanaderiaOrdenOperacionesasignaResponsables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_OrdenOperaciones` int(11) DEFAULT NULL,
  `id_Responsable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaOrdenOperacionesasignaResponsables
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaOrdenOperacionesResponsables`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaOrdenOperacionesResponsables`;
CREATE TABLE `LogistPanaderiaOrdenOperacionesResponsables` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` double(11,0) DEFAULT NULL,
  `institucion` varchar(11) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `validacorreo` int(11) DEFAULT NULL,
  `validasms` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaOrdenOperacionesResponsables
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaPresentacionesdeProductos`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaPresentacionesdeProductos`;
CREATE TABLE `LogistPanaderiaPresentacionesdeProductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presentacion` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaPresentacionesdeProductos
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaProductos`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaProductos`;
CREATE TABLE `LogistPanaderiaProductos` (
  `id` int(11) NOT NULL,
  `nombre` int(11) DEFAULT NULL,
  `peso` decimal(10,0) DEFAULT NULL,
  `id_presentacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaProductos
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaSilo`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaSilo`;
CREATE TABLE `LogistPanaderiaSilo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` double DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaSilo
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaSiloAlmacen`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaSiloAlmacen`;
CREATE TABLE `LogistPanaderiaSiloAlmacen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Silo` varchar(255) DEFAULT NULL,
  `id_producto` varchar(255) DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaSiloAlmacen
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaSiloAlmacenIncorporacion`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaSiloAlmacenIncorporacion`;
CREATE TABLE `LogistPanaderiaSiloAlmacenIncorporacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `id_Silo` int(11) DEFAULT NULL,
  `merma` float DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaSiloAlmacenIncorporacion
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaSiloResponsables`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaSiloResponsables`;
CREATE TABLE `LogistPanaderiaSiloResponsables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activo` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `validasms` int(11) DEFAULT NULL,
  `validacorreo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaSiloResponsables
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaTransporte`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaTransporte`;
CREATE TABLE `LogistPanaderiaTransporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehiculo` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `placa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaTransporte
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaTransporteConductores`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaTransporteConductores`;
CREATE TABLE `LogistPanaderiaTransporteConductores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `validadsms` int(11) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaTransporteConductores
-- ----------------------------

-- ----------------------------
-- Table structure for `LogistPanaderiaTransporteOrden`
-- ----------------------------
DROP TABLE IF EXISTS `LogistPanaderiaTransporteOrden`;
CREATE TABLE `LogistPanaderiaTransporteOrden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_vehiculo` int(11) DEFAULT NULL,
  `id_conductor` int(11) DEFAULT NULL,
  `cod_Transporte` varchar(255) DEFAULT NULL,
  `tipo_Transporte` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of LogistPanaderiaTransporteOrden
-- ----------------------------

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin@example.com', '$2y$10$L/tQ8XVc9ser2y65U6wce.KBQcaSFHtwtmP4edBagFOrUx35mbrTK', null, '2019-03-22 00:11:34', '2019-03-22 00:11:34');
