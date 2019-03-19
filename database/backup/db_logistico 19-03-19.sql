/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : db_logistico

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-03-19 07:47:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for logistpanaderiacilo
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiacilo`;
CREATE TABLE `logistpanaderiacilo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` double DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiacilo
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiaciloalamcen
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaciloalamcen`;
CREATE TABLE `logistpanaderiaciloalamcen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cilo` varchar(255) DEFAULT NULL,
  `id_producto` varchar(255) DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaciloalamcen
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiaciloalmacenincorporacion
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaciloalmacenincorporacion`;
CREATE TABLE `logistpanaderiaciloalmacenincorporacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `id_cilo` int(11) DEFAULT NULL,
  `merma` float DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaciloalmacenincorporacion
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiaciloresponsables
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaciloresponsables`;
CREATE TABLE `logistpanaderiaciloresponsables` (
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
-- Records of logistpanaderiaciloresponsables
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiacliente
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
-- Table structure for logistpanaderiaclienteasignacion
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaclienteasignacion`;
CREATE TABLE `logistpanaderiaclienteasignacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_panaderia` int(11) DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `ultimodespacho` date DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaclienteasignacion
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiaclientepropietarios
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaclientepropietarios`;
CREATE TABLE `logistpanaderiaclientepropietarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `cedula` double DEFAULT NULL,
  `id_panaderia` int(11) DEFAULT NULL,
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
-- Table structure for logistpanaderiaclientesresponsables
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaclientesresponsables`;
CREATE TABLE `logistpanaderiaclientesresponsables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `cedula` double DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` double(11,0) DEFAULT NULL,
  `id_panaderia` int(255) DEFAULT NULL,
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
-- Records of logistpanaderiaclientesresponsables
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiadistribucionoferta
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiadistribucionoferta`;
CREATE TABLE `logistpanaderiadistribucionoferta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordendistribucion` int(11) DEFAULT NULL,
  `id_distribuidora` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `fechadespacho` date DEFAULT NULL,
  `id_ordentransporte` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiadistribucionoferta
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiadistribucionorden
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
-- Table structure for logistpanaderiadistribuidora
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
-- Table structure for logistpanaderiadistribuidoraalmacen
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiadistribuidoraalmacen`;
CREATE TABLE `logistpanaderiadistribuidoraalmacen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `preciocompra` decimal(10,0) DEFAULT NULL,
  `precioventa` decimal(10,0) DEFAULT NULL,
  `id_ordendedistribucion` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `existencia` decimal(10,0) DEFAULT NULL,
  `id_distribuidora` int(11) DEFAULT NULL,
  `merma` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiadistribuidoraalmacen
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiadistribuidoraresponsable
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiadistribuidoraresponsable`;
CREATE TABLE `logistpanaderiadistribuidoraresponsable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_distribuidora` int(11) DEFAULT NULL,
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
-- Table structure for logistpanaderiaordendistribucion
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordendistribucion`;
CREATE TABLE `logistpanaderiaordendistribucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_panadera` int(11) DEFAULT NULL,
  `fechaasignacion` date DEFAULT NULL,
  `fechadespacho` date DEFAULT NULL,
  `nodeposito` varchar(255) DEFAULT NULL,
  `banco` varchar(255) DEFAULT NULL,
  `cod_asignacion` varchar(255) DEFAULT NULL,
  `id_ordentransporte` int(11) DEFAULT NULL,
  `peso` decimal(10,0) DEFAULT NULL,
  `costodistribucion` decimal(10,0) DEFAULT NULL,
  `precioventadistribucion` decimal(10,0) DEFAULT NULL,
  `completado` int(11) NOT NULL DEFAULT '0',
  `validasms` int(11) NOT NULL DEFAULT '0',
  `validaemail` int(11) NOT NULL DEFAULT '0',
  `id_transporte` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordendistribucion
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiaordendistribuciondetalle
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordendistribuciondetalle`;
CREATE TABLE `logistpanaderiaordendistribuciondetalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `cod_asignacion` varchar(255) DEFAULT NULL,
  `id_ordendeopeaciones` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordendistribuciondetalle
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiaordenoperaciones
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperaciones`;
CREATE TABLE `logistpanaderiaordenoperaciones` (
  `id` int(11) NOT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `id_ordendistribucion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordenoperaciones
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiaordenoperacionesasignaresponsables
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperacionesasignaresponsables`;
CREATE TABLE `logistpanaderiaordenoperacionesasignaresponsables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordenoperaciones` int(11) DEFAULT NULL,
  `id_responsable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordenoperacionesasignaresponsables
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiaordenoperacionesresponsables
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
-- Table structure for logistpanaderiapresentacionesdeproductos
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiapresentacionesdeproductos`;
CREATE TABLE `logistpanaderiapresentacionesdeproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presentacion` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiapresentacionesdeproductos
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiaproductos
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaproductos`;
CREATE TABLE `logistpanaderiaproductos` (
  `id` int(11) NOT NULL,
  `nombre` int(11) DEFAULT NULL,
  `peso` decimal(10,0) DEFAULT NULL,
  `id_presentacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaproductos
-- ----------------------------

-- ----------------------------
-- Table structure for logistpanaderiatransporte
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
-- Table structure for logistpanaderiatransporteconductores
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
-- Table structure for logistpanaderiatransporteorden
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiatransporteorden`;
CREATE TABLE `logistpanaderiatransporteorden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_vehiculo` int(11) DEFAULT NULL,
  `id_conductor` int(11) DEFAULT NULL,
  `cod_transporte` varchar(255) DEFAULT NULL,
  `tipo_transporte` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiatransporteorden
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
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
-- Table structure for password_resets
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
-- Table structure for users
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
