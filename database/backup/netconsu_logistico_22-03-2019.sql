/*
Navicat MySQL Data Transfer

Source Server         : Servidor
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : netconsu_logistico

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-03-22 17:52:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `logistpanaderiacliente`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiacliente`;
CREATE TABLE `logistpanaderiacliente` (
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
-- Records of logistpanaderiacliente
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiaclienteasignacion`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaclienteasignacion`;
CREATE TABLE `logistpanaderiaclienteasignacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_Panaderia` int(11) DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `ultimodespacho` date DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaclienteasignacion
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiaclientepropietarios`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaclientepropietarios`;
CREATE TABLE `logistpanaderiaclientepropietarios` (
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
-- Records of logistpanaderiaclientepropietarios
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiaclienteresponsables`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaclienteresponsables`;
CREATE TABLE `logistpanaderiaclienteresponsables` (
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
-- Records of logistpanaderiaclienteresponsables
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiadistribucionoferta`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiadistribucionoferta`;
CREATE TABLE `logistpanaderiadistribucionoferta` (
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
-- Records of logistpanaderiadistribucionoferta
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiadistribucionorden`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiadistribucionorden`;
CREATE TABLE `logistpanaderiadistribucionorden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiadistribucionorden
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiadistribuidora`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiadistribuidora`;
CREATE TABLE `logistpanaderiadistribuidora` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `telefono` double DEFAULT NULL,
  `validacorreo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiadistribuidora
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiadistribuidoraalmacen`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiadistribuidoraalmacen`;
CREATE TABLE `logistpanaderiadistribuidoraalmacen` (
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
-- Records of logistpanaderiadistribuidoraalmacen
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiadistribuidoraresponsable`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiadistribuidoraresponsable`;
CREATE TABLE `logistpanaderiadistribuidoraresponsable` (
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
-- Records of logistpanaderiadistribuidoraresponsable
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiaordendistribucion`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordendistribucion`;
CREATE TABLE `logistpanaderiaordendistribucion` (
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
-- Records of logistpanaderiaordendistribucion
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiaordendistribuciondetalle`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordendistribuciondetalle`;
CREATE TABLE `logistpanaderiaordendistribuciondetalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `cod_Asignacion` varchar(255) DEFAULT NULL,
  `id_Ordendeopeaciones` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordendistribuciondetalle
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiaordenoperaciones`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperaciones`;
CREATE TABLE `logistpanaderiaordenoperaciones` (
  `id` int(11) NOT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `id_OrdenDistribucion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordenoperaciones
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiaordenoperacionesasignaresponsables`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperacionesasignaresponsables`;
CREATE TABLE `logistpanaderiaordenoperacionesasignaresponsables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_OrdenOperaciones` int(11) DEFAULT NULL,
  `id_Responsable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordenoperacionesasignaresponsables
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiaordenoperacionesresponsables`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperacionesresponsables`;
CREATE TABLE `logistpanaderiaordenoperacionesresponsables` (
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
-- Records of logistpanaderiaordenoperacionesresponsables
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiapresentacionesdeproductos`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiapresentacionesdeproductos`;
CREATE TABLE `logistpanaderiapresentacionesdeproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presentacion` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiapresentacionesdeproductos
-- ----------------------------
INSERT INTO `logistpanaderiapresentacionesdeproductos` VALUES ('1', 'GRANEL', null);
INSERT INTO `logistpanaderiapresentacionesdeproductos` VALUES ('2', 'SACO DE 60KG', null);

-- ----------------------------
-- Table structure for `logistpanaderiaproductos`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaproductos`;
CREATE TABLE `logistpanaderiaproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `peso` decimal(10,0) DEFAULT NULL,
  `id_presentacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaproductos
-- ----------------------------
INSERT INTO `logistpanaderiaproductos` VALUES ('1', 'HARINA DE TRIGO', null, '1');

-- ----------------------------
-- Table structure for `logistpanaderiasilo`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiasilo`;
CREATE TABLE `logistpanaderiasilo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` double DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiasilo
-- ----------------------------
INSERT INTO `logistpanaderiasilo` VALUES ('1', 'SILO NRO 1', 'DIR', '4245116999', 'correo@gmail.com');

-- ----------------------------
-- Table structure for `logistpanaderiasiloalmacen`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiasiloalmacen`;
CREATE TABLE `logistpanaderiasiloalmacen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_Silo` varchar(255) DEFAULT NULL,
  `id_producto` varchar(255) DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiasiloalmacen
-- ----------------------------
INSERT INTO `logistpanaderiasiloalmacen` VALUES ('1', '1', '1', '519490', '2019-03-22 20:51:45', '2019-03-22 06:24:19');

-- ----------------------------
-- Table structure for `logistpanaderiasiloalmacenincorporacion`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiasiloalmacenincorporacion`;
CREATE TABLE `logistpanaderiasiloalmacenincorporacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_recarga` varchar(255) DEFAULT NULL,
  `id_Silo` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `fecha` varchar(11) DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `merma` float DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiasiloalmacenincorporacion
-- ----------------------------
INSERT INTO `logistpanaderiasiloalmacenincorporacion` VALUES ('21', null, '1', '1', '14/03/2019', '500000', '10', 'gt', '2019-03-22 19:44:25', '2019-03-22 20:47:01');
INSERT INTO `logistpanaderiasiloalmacenincorporacion` VALUES ('22', null, '1', '1', '15/03/2019', '10000', null, null, '2019-03-22 20:51:44', '2019-03-22 20:51:44');
INSERT INTO `logistpanaderiasiloalmacenincorporacion` VALUES ('20', null, '1', '1', '25/03/2019', '10000', '200', 'prueba 1', '2019-03-22 19:24:09', '2019-03-22 19:44:01');

-- ----------------------------
-- Table structure for `logistpanaderiasiloresponsables`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiasiloresponsables`;
CREATE TABLE `logistpanaderiasiloresponsables` (
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
-- Records of logistpanaderiasiloresponsables
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiatransporte`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiatransporte`;
CREATE TABLE `logistpanaderiatransporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehiculo` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `placa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiatransporte
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiatransporteconductores`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiatransporteconductores`;
CREATE TABLE `logistpanaderiatransporteconductores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `validadsms` int(11) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiatransporteconductores
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiatransporteorden`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiatransporteorden`;
CREATE TABLE `logistpanaderiatransporteorden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_vehiculo` int(11) DEFAULT NULL,
  `id_conductor` int(11) DEFAULT NULL,
  `cod_Transporte` varchar(255) DEFAULT NULL,
  `tipo_Transporte` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiatransporteorden
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_03_22_023138_create_sessions_table', '2');

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
-- Table structure for `sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------

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
INSERT INTO `users` VALUES ('1', 'admin', 'admin@example.com', '$2y$10$L/tQ8XVc9ser2y65U6wce.KBQcaSFHtwtmP4edBagFOrUx35mbrTK', '0FwtlGLqE9uACguysC0hLTH31zjmwm9yUpVcYYGslEGnhTAVAWN5ZC5WQZqi', '2019-03-22 00:11:34', '2019-03-22 00:11:34');
