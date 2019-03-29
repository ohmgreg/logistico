/*
Navicat MySQL Data Transfer

Source Server         : Servidor
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : netconsu_logistico

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-03-28 11:13:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `logistconfig`
-- ----------------------------
DROP TABLE IF EXISTS `logistconfig`;
CREATE TABLE `logistconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RecargaSilo` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `OrdenDistribucion` int(11) NOT NULL DEFAULT '0',
  `OrdenOperacion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistconfig
-- ----------------------------
INSERT INTO `logistconfig` VALUES ('1', '14', null, '2019-03-27 19:11:51', '3', '3');

-- ----------------------------
-- Table structure for `logistpanaderiacliente`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiacliente`;
CREATE TABLE `logistpanaderiacliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NombrePanaderia` varchar(255) DEFAULT NULL,
  `rif` varchar(255) DEFAULT NULL,
  `sica` int(11) DEFAULT NULL,
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
  `municipio` varchar(100) DEFAULT NULL,
  `parroquia` varchar(100) DEFAULT NULL,
  `MotivoSolicitudDeSupervicion` varchar(255) DEFAULT '',
  `frecuencia` int(11) DEFAULT NULL,
  `UltimoDespacho` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_distribuidora` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `Nombre` (`NombrePanaderia`),
  FULLTEXT KEY `rif` (`rif`)
) ENGINE=MyISAM AUTO_INCREMENT=440 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiacliente
-- ----------------------------
INSERT INTO `logistpanaderiacliente` VALUES ('2', 'ALIMENTOS DAYP C.A', 'J408956730', '524546', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '23/03/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('3', 'SAN HONORATO', 'J409402444', '525298', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '24/03/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('4', 'ADONAI DONAS DL', 'J409302300', '530061', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '25/03/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('5', 'NAUKLE 2013 C.A', 'J403354383', '542559', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '26/03/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('6', 'PANADERIA Y PASTELERIA EBENEZER 1', 'J409970035', '554024', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '27/03/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('7', 'FRSHPAN, C.A', 'J410060603', '554209', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '28/03/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('8', 'INVERSIONES DELCY, C.A', 'V130627630', '571234', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '29/03/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('9', 'ELISA INVERSIONES 2021', 'J410232854', '599856', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '30/03/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('10', 'PANIFICADORA LOS HERMANOS G&G ', 'J411721727', '640500', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '31/03/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('11', 'PANADERIA PASTELERIA PEQUEÑO PARAISO VEZGA 2004 CA', 'J310953066', '16087', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '01/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('12', 'PANADERIA PASTELERIA Y DELICATESES LA MANSION DEL MARQUEZ CA', 'J312259400', '16091', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '02/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('13', 'PANADERIA PERLA PRINCE CA', 'J085223134', '16768', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '03/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('14', 'LA MANSION DEL VALLE CA', 'J31094853', '75062', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '04/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('15', 'PANADERIA Y PASTELERIA LAS TEJAS CA', 'J085352147', '82307', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '05/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('16', 'PANADERIA PASTELERIA LOS GIRASOLES C.A', 'J297910816', '83699', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '06/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('17', 'PANADERIA PASTELERIA Y CHARCUTERIA SAN BENITO CA', 'J085162828', '87394', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '07/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('18', 'EL MORO DE CABUDARE CA', 'J296646520', '91758', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '08/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('19', 'PANADERIA PASTELERIA Y CHARCUTERIA LOMA ALTA CA', 'J316217124', '91832', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '09/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('20', 'INDUSTRIAS DIVINA', 'J296382549', '92755', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '10/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('21', 'PANADERIA ANGELINA CA', 'J299406392', '95774', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '11/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('22', 'PANADERIA Y PASTELERIA VASCO DA GAMAS CA', 'J307414375', '110780', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '12/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('23', 'LINARES OCAMPO CARLOS RUPERTO -', 'V099699686', '148167', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '13/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('24', 'PANADERIA Y PASTELERIA Y CHARCUTERIA EL SANTO NIÑO CA', 'J402678630', '159982', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '14/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('25', 'RAMOS PANADERIA AARON', 'V112673780', '169380', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '15/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('26', 'PANADERIA Y CHARCUTERIA MY GRAN JIRETH CA', 'V146488869', '169743', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '16/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('27', 'EUSEBIO OSCAR EURCHEGUI LAGARRETA', 'V231694524', '170359', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '17/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('28', 'ODAL, C.A', 'J403106320', '171834', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '18/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('29', 'GETSEMANI PEREZ FP', 'V107652066', '178384', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '19/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('30', 'JESUS EDUARDO QUINTERO GONZALEZ (PASAPALOS DON JESUS QUINTERO F.P.)', 'V168687091', '197960', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '20/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('31', 'INVERSIONES DE ALIMENTOS SAHARI CA', 'J404360921', '214180', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '21/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('32', 'GONZALEZ PRACTICO', 'V092584131', '450279', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '22/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('33', 'ALIANZA BLISSFUL', 'J409686000', '452413', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '23/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('34', 'PANADERIA Y PASTELERIA DELICATESES LA ESPERANZA', 'J407979027', '465927', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '24/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('35', 'LA FRAGATA 2015, C.A', 'J407123394', '467787', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '25/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('36', 'INVERSIONES HELANDRA', 'J408928752', '492037', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '26/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('37', 'REPOSTERIA Y PANES COMENARES F.P', 'V128107076', '495875', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '27/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('38', 'SOJO DULCES MOMENTOS, F.P', 'V118811298', '501671', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '28/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('39', 'PANADERIA YPASTELERIA Y CHARCUTERIA VIRGEN DE LA CARIDAD DE COBRE', 'V099871993', '506603', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '29/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('40', 'PANIFICADORA CABUDARE', 'J409273229', '522624', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '30/04/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('41', 'PEREZ PANADERIA ARTESANAL Y MINI ABASTO LOS ANDES', 'V074079551', '461748', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '01/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('42', 'PANADERIA Y PASTELERIA GIOVANPAN C.A', 'J410057050', '549421', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '02/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('43', 'PANADERIA DULCERIA Y RESTAURANTE LAS DELICIAS DE LA GORDA', 'J073897447', '526487', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '03/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('44', 'PANADERIA PASTELERIA Y DELICATESES ARCO IRIS CA', 'J085111646', '308', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '04/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('45', 'PANADERIA Y PASTELERIA ROSA MARIA CA', 'J085218343', '1157', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '05/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('46', 'PANADERIA VILLAS PARK CA', 'J294369537', '3378', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '06/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('47', 'PANADERIA Y PASTELERIA FORTUNA DELI CA', 'J313061301', '4180', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '07/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('48', 'LA ORTIGA DE LARA 2008', 'J296813990', '68290', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '08/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('49', 'PANADERIA PASTELERIA Y CHARCUTERIA SAN JUAN BAUTISTA CA', 'J297304592', '87102', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '09/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('50', 'PANADERIA DON MANUEL CA', 'J314401378', '87237', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '10/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('51', 'PANADERIA PASTELERIA Y CHARCUTERIA LA AMAPOLA CA', 'J301180003', '87314', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '11/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('52', 'PANADERIA MISTER PAN 2002 CA', 'J308341428', '87319', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '12/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('53', 'PANADERIA MISTER PAN CA', 'J303075754', '88721', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '13/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('54', 'PANAD PAST CHARC PIZZERIA Y DELICATESES RASCHEL 2010 CA', 'J310537321', '89870', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '14/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('55', 'PANADERIA Y PASTELERIA MISTER PAN 2003 C.A', 'J309456164', '90093', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '15/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('56', 'PANIFICADORA SOROCAIMA', 'J299547018', '112528', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '16/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('57', 'PANADERIA EL PAN ANDINO', 'JV129510540', '115166', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '17/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('58', 'PANADERIA CHARCUTERIA Y DELICATESES EL NUEVO AMANECER  CA', 'J310315019', '116262', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '18/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('59', 'PANIFICADORA JIMENEZ JHONNY', 'V074002044', '165964', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '19/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('60', 'PANADERIA Y CHARCUTERIA RICO PAN 2014 CA', 'J404040595', '209234', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '20/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('61', 'ALVARADO MI BUEN PASTOR', 'V773236327', '234694', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '21/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('62', 'PANIFICADORA EL PAN DE RAMON C.A', 'J298796529', '255215', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '22/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('63', 'PANADERIA LA ESTRELLA RR CA', 'J405230843', '415719', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '23/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('64', 'PANADERIA ENMANUEL TP C.A', 'J409132692', '496279', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '24/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('65', 'PANIFICADORA GRISOLPAN', 'J297619526', '522815', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '25/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('66', 'PANADERIA EL PRINCIPE KAISS C.A.', 'J408995557', '525008', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '26/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('67', 'PANADERIA LA BANDERA', 'J409399184', '530325', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '27/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('68', 'PANIFICADORA EL BUEN PASTOR', 'J406220884', '537460', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '28/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('69', 'ALRIAN C.A', 'J409554864', '546763', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '29/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('70', 'PANADERIA SANDRA 288', 'J408999390', '523420', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '30/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('71', 'PANIFICADORA LENCHO', 'J409361527', '555957', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '31/05/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('72', 'INVERSIONES AVENDAÑO 2017,C.A', 'J411704768', '674462', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '01/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('73', 'DULCES KAPRICHOS', 'J400142873', '537962', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '02/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('74', 'INCORA', 'J085154361', '36794', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '03/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('75', 'FRITIKOS', 'J085173048', '37797', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '04/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('76', 'DELI CHURROS, C.A', 'J308387436', '41123', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '05/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('77', 'INVERSIONES MI PASTELITO TOM-ENDER C.A', 'J310241767', '87385', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '06/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('78', 'DELI CHURROS AVILA, C.A', 'J312216042', '87942', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '07/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('79', 'DELI CHURROS DEL OESTE, C.A', 'J293865581', '87945', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '08/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('80', 'PASAPALOS Y MUCHO MAS', 'J315048108', '90880', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '09/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('81', 'FUENTE DE SODA, PIZZERIA Y HELADERIA LA NAVE C.A.', 'J085291253', '92304', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '10/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('82', 'MI CAFE C A', 'J305519781', '94383', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '11/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('83', 'LUNCHERIA RESTAURANTEL PASTEL CA -', 'J309831739', '109333', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '12/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('84', 'CHILE KING CA', 'J308198293', '112027', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '13/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('85', 'LOS RICOS DULCES DE MI ABUELA CA', 'J294236863', '115834', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '14/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('86', 'EMPANADAS LA 28', 'J311135570', '117339', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '15/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('87', 'HELADERIA Y PIZZERIA L`INCONTRO C.A', 'J304956932', '117341', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '16/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('88', 'BAR MINI RESTAURANT Y PASAPALOS CELINA', 'V074108560', '126355', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '17/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('89', 'HOTEL PRINCIPE C.A', 'J075023099', '128716', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '18/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('90', 'METROPOLLO 2801 C.A.', 'J400635454', '138957', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '19/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('91', 'LA MARTORANA CA', 'J309022105', '139932', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '20/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('92', 'EL POLLO LICENCIADO C.A.', 'J085218785', '140321', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '21/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('93', 'EL POLLO BACHILLER C.A.', 'J308550795', '140330', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '22/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('94', 'IND PRE-PIZZA LA CHEVERISIMA CA', 'J300194086', '140407', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '23/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('95', 'EL POLLO GRADUADO C.A.', 'J302477310', '140411', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '24/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('96', 'TORTAS COSITA RICA CA', 'J315216710', '145132', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '25/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('97', 'MARCOSS PIZZERIA, C.A', 'J293633222', '145625', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '26/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('98', 'BOCADOS DE VENEZUELA CA', 'J401581641', '154099', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '27/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('99', 'MI PIZZA PIU DEL ESTE, C.A', 'J314945840', '163922', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '28/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('100', 'INVERSIONES Y EVENTOS LA ABUELA2013 C.A', 'J403625484', '204606', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '29/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('101', 'CASA BERTONI, C.A', 'J403846405', '209571', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '30/06/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('102', 'AMERICANS DONUTS Y ALGO MAS', 'J407448986', '442256', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '01/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('103', 'AGÜERO PIZZAMAR', 'V095705738', '483377', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '02/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('104', 'LA PASTELERIA 417 C.A', 'J409006867', '494476', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '03/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('105', 'COOAK FOODS', 'j407203150', '528990', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '04/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('106', 'GRANJERIA CRIOLLA', 'V044775502', '532693', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '05/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('107', 'DELI CHURROS', 'J312216042', '534867', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '06/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('108', 'CANTON PEING EXPRESS C.A', 'J309406167', '546150', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '07/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('109', 'PIZZERIA DON LUIS 028, C.A', 'J410969970', '596028', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '08/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('110', 'PAPA GHINO´S PIZZAS CA', 'J313523984', '112029', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '09/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('111', 'PITTYS CAKES C.A', 'J299530174', '545602', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '10/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('112', 'PIZZA CENTER 2005', 'J294000207', '116291', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '11/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('113', 'PIZZA EXPESS', 'V52617304', '229798', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '12/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('114', 'PIZZA PAOLO C.A', 'J-405686545', '537865', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '13/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('115', 'PIZZERIA LOS POCICLE', 'V073698916', '179420', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '14/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('116', 'POLLO GRADUADO EXPRESS C.A.', 'J311434909', '175816', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '15/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('117', 'POLLO UNIVERSITARIO C.A.', 'J313057886', '140334', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '16/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('118', 'RESTAURANT LARA PERU DEL CENTRO, C.A', 'J400364582', '239279', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '17/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('119', 'RIALPERCO C.A.', 'J400282608', '151251', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '18/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('120', 'TORTA CECY', 'V132696850', '161173', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '19/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('121', 'WILJOS PIZZERIA', 'J401261590', '153060', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '20/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('122', 'DUEQUE TEQUEÑISIMOS DODAS', 'V212950358', '463054', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '21/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('123', 'ORINOCO GRILL C.A.', 'J402118317', '165178', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '22/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('124', 'ALIMENTOS EL AVILA C A', 'J402797818', '427188', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '23/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('125', 'JANTAR RESTAURANT, C.A', 'J408437368', '659717', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '24/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('126', 'INVERSIONES 2640, C.A', 'J407775561', '525398', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '25/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('127', 'PALETA, C.A.', 'J410139145', '572015', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '26/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('128', 'PRONTISSIMO, C.A.', 'J299097349', '165685', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '27/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('129', 'REMOLARA 2007 CA', 'J294642250', '135149', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '28/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('130', 'PASAPALOS EL REY, C.A', 'J409422640', '543004', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '29/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('131', 'DULPAST, C.A.', 'J403966141', '469163', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '30/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('132', 'PIZZERIA DA\'NINO, C.A', 'J401906303', '223641', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '31/07/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('133', 'BUEN SABOR 2008, S.R.L.', 'J297273158', '228361', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '01/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('134', 'COMERCIALIZADORA CLANNTON', 'J409006921', '541879', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '02/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('135', 'IBARRA LA COLOMBIANITA DEL NORTE', 'V222753135', '570643', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '03/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('136', 'BARQUILLAS LUIGI SAN TORO C.A', 'J402525990', '526899', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '04/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('137', 'LA DOÑA, C.A', 'V-085307842', '453594', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '05/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('138', 'PASAPALOS LA FAMILIA', 'J400560462', '532232', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '06/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('139', 'TEQUEFRENCH C.A', 'J401267300', '435443', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '07/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('140', 'HELADERIA Y REPOSTERIA CREAMS BOYS', 'J294538398', '555546', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '08/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('141', 'VICROB', 'J405133040', '583284', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '09/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('142', 'TORONTELLA CAKE AND COFRE', 'J403080372', '379498', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '10/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('143', 'INVERSIONES BRINCA BRINCA', 'J194512631', '34205', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '11/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('144', '100 POR CIEN PIZZA, C.A', 'J298256257', '435433', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '12/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('145', 'CERVECERIA RESTAURANT TRIESTE CHAVEZ F.P', 'E811129693', '481606', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '13/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('146', 'PIZZERIA BAR RESTAURANT DA PIPPO', 'J300575373', '70755', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'DIFERENTES TIPOS DE ENTE', null, '', '15', '14/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('147', 'PANIFICADORA DIVINA PROVIDENCIA', 'J411187658', '662532', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '15/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('148', 'PANIFICADORA LA ROCA ETERNA', 'J410880503', '601156', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '16/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('149', 'PANIFICADORA Y.A.S.A.E.C.A', 'J410628871', '614630', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '17/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('150', 'PANIFICADORA DULCITOS', 'J411345512', '616856', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '18/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('151', 'HORNEADOS ARTESANALES CORAZON DE JESUS', 'J410181974', '598292', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '19/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('152', 'EL HORNO DE SAGRA C.A.', 'J410163747', '570939', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '20/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('153', 'PANIFICADORA PAN DORADO 111', 'J409860337', '549812', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '21/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('154', 'PANIFICADORA LA MONUMENTAL C.A.', 'J409652084', '530268', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '22/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('155', 'PANIFICADORA SAGA', 'J294271383', '534751', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '23/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('156', 'PANIFICADORA LOS CHAGUARAMOS', 'J294169333', '1955', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '24/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('157', 'PANIFICADORA LA PASTORA C.A.', 'J305857369', '5333', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '25/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('158', 'PANIFICADORA CITY PAN ARABE C.A', 'J294626076', '18539', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '26/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('159', 'JOSE LOMBARDI-DISTRIBUIDORA CHILE SNAK DE VENEZUELA', 'V102566781', '88287', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '27/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('160', 'PANIFICADORA DAMASCO C.A.', 'J294889140', '88686', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '28/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('161', 'PANADERIA PANIFICADORA NURAVEN C.A.', 'J298954337', '88747', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '29/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('162', 'PANIFICADORA EL AMASIJO DORADO CA', 'J296441596', '89483', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '30/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('163', 'PANIFICADORA UNION', 'J310352542', '89612', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '31/08/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('164', 'PANIFICADORA Y DISTRIBUIDORA ARCOIRIS,C.A', 'J299637165', '117127', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '01/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('165', 'PANIFICADORA LARENSE, C.A.', 'J316020835', '120760', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '02/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('166', 'PANIFICADORA JR IMPORT C A', 'J317009789', '126620', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '03/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('167', 'PANIFICADORA EIDRYAN FULL PAN CA', 'J401103669', '139421', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '04/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('168', 'PANICADORA LA FE 2012', 'J402112300', '148907', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '05/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('169', 'INV. GABI, C.A', 'J400510643', '168413', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '06/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('170', 'CECIPAN2013 C A', 'J403080623', '203839', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '07/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('171', 'COMERCIALIZADORA LARENSE 2012 C.A', 'J401247237', '252671', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '08/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('172', 'GRAN BARAGUA DEL ESTE C.A.', 'J315169029', '421831', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '09/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('173', 'PANIFICADORA Y COMERCIALIZADORA RAM, C.A.', 'J407781170', '445881', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '10/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('174', 'INDUSTRIAS PP & RD CA', 'J296446997', '447479', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '11/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('175', 'PANIFICADORA ECHEVERRIA Y SEMPRUM ', 'J408280159', '487907', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '12/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('176', 'PASAPALOS BARQUI JUNIOR CA', 'J300391531', '36210', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '13/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('177', 'DELICATESES SAMI CA', 'J409240835', '524058', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '14/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('178', 'PANIFICADORA NACIONAL, C.A.', 'J085183035', '917', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '15/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('179', 'PANIFICADORA DON PEPE', 'J312905859', '4305', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '16/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('180', 'ASOCIACION CIVIL ALIMENTOS VIVA MEJOR', 'J314293125', '4431', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '17/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('181', 'PANIFICADORA NATURAL PAN, C.A.', 'J293532353', '87244', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '18/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('182', 'PANIFICADORA Y DISTRIBUIDORA EL KARDENALITO', 'J315538989', '90183', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '19/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('183', 'MOGOLLON PANIFICADORA LILIAN PASTORA', 'V074249279', '236854', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '20/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('184', 'PANIFICADORA BETHLEHEN, C.A', 'J403652252', '439919', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '21/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('185', 'PANIFICADORA LA ANTENA, C.A', 'J407043790', '447651', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '22/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('186', 'PANIFICADORA EL PAN DIVINO, C.A', 'J409356469', '524986', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '23/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('187', 'CASTILLO PAN DE LA 42, C.A.', 'J409356760', '528797', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '24/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('188', 'LA PANERA', 'J411291447', '616831', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '25/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('189', 'Industria Alimenticia Doce Amor', 'J402561857', '570297', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '26/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('190', 'COMERCIALIZADORA Y PANIFICADORA LA 34 C.A.', 'J409902404', '541777', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '27/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('191', 'PANIFICADORA NUTRIPAN DORADO', 'J312495286', '119171', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '28/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('192', 'PANIFICADORA ASOCIACION COOPERTAIVA EL GRAN DORADO J 45 RL', 'J316802957', '87474', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '29/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('193', 'INVERSIONES CIMM C.A', 'J409632555', '530553', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '30/09/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('194', 'PANADERIA Y PASTELERIA SANDUCHITO', 'J410226510', '579295', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PALAVECINO', null, '', '15', '01/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('195', 'PANIFICADORA KVIPAN, CA', 'J409786684', '584318', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '02/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('196', 'PANIFFICADORA DANI BELL 2014', 'J404352384', '442415', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '03/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('197', 'PANIFICADORA LA CRIOLLA DEL CENTRO C.A.', 'J314971972', '4390', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '04/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('198', 'PANIFICADORA CHICHITA C.A', 'J314606310', '4635', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '05/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('199', 'PANIFICADORA Y PANADERIA LOS BROTHERS.C.A.', 'J295584890', '88334', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '06/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('200', 'PANIFICADORA NUEVO PAN', 'J313907227', '86511', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '07/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('201', 'PANIFICADORA PANI PAN ', 'J305538093', '86517', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '08/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('202', 'PANIFICADORA COIMBRA', 'J411718149', '649683', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '09/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('203', 'DISTRIBUIDORA DIVINA PASTORA MYG', 'J299442534', '144283', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'PANIFICADORA', null, '', '15', '10/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('204', 'PANADERIA Y PASTELERIA LA CASONA', 'J311107410', '75100', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '11/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('205', 'INVERSIONES TAURIPAN C.A.', 'J403429014', '176309', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '12/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('206', 'COOPERATIVA PIZZERIA SANTA BARBARA,SRL', 'J404662065', '216070', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '13/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('207', 'LA FLOR DE SYRIA C.A', 'J404303170', '376772', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '14/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('208', 'COMERCIALIZADORA DIOMAR', 'J408883821', '490348', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '15/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('209', 'PANADERIA  LA ABUELA', 'J408900190', '502323', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '16/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('210', 'INVERSIONES VIRGUEZ', 'J408714892', '522462', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '17/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('211', 'INVERSIONES PANIZAN', 'V073576535', '526095', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '18/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('212', 'LOS CHUCHITOS SRL', 'J303858813', '532122', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '19/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('213', 'DISTRIBUIDORA Y COMERCIALIZADORA L&A RAIMALE, C.A', 'J409546934', '532241', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '20/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('214', 'PANIFICADORA LAS MANZANAS DE JULES', 'J4094022380', '533160', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '21/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('215', 'HO LA LA PIZZERIA RESTAURANT C.A.', 'J408363593', '534930', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '22/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('216', 'PANADERIA MI NUEVA ILUSIÓN ,CA', 'J403589801', '539603', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '23/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('217', 'PANDERIA LOS FAMOSOS PANES DE AIDA', 'J409802779', '545410', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '24/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('218', 'INVERSIONES FRATAY, C.A', 'J409876535', '559571', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '25/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('219', 'ASOCIACION COOPERATIVA MIS NIETOS 1997,C.A', 'J297297804', '561013', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '26/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('220', 'COOPERATIVA LOS GAYONES 942,RS', 'J313912948', '566894', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '27/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('221', 'PANADERIA Y PASTELERIA LA TRILLA 2017,CA', 'J410429410', '586599', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '28/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('222', 'PANIFICADORA TSIKENU,C.A', 'J411108227', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '29/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('223', 'PANADERIA TISIRIS C.A', 'J297882430', '86549', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'CRESPO', null, '', '15', '30/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('224', 'LA  NOVA PAN C A', 'J401929478', '143426', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'SIMON PLANAS', null, '', '15', '31/10/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('225', 'PANADERIA PASTELERIA CHARCUTERIA LOS GIRASOLES 2015 CA', 'J405530898', '411404', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'SIMON PLANAS', null, '', '15', '01/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('226', 'PANADERIA Y PASTELERIA ALISCAR', 'J408499266', '471404', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'SIMON PLANAS', null, '', '15', '02/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('227', 'PANADERIA EL PANAL CA', 'J404984011', '528905', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'SIMON PLANAS', null, '', '15', '03/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('228', 'PANIFICADORA Y CHARCUTERIA MIS JENIS, C.A.', 'J406346616', '541209', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'SIMON PLANAS', null, '', '15', '04/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('229', 'EL DULCE RINCON CARRILLO JEAN 2017, F.P', 'V114837861', '549426', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'SIMON PLANAS', null, '', '15', '05/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('230', 'PANADERIA Y PASTELERIA DOÑA CARMEN', 'J294128181', '88340', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'SIMON PLANAS', null, '', '15', '06/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('231', 'SUPERMERCADO Y PANADERIA SARARE', 'J085238204', '90075', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'SIMON PLANAS', null, '', '15', '07/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('232', 'PANADERIA PASTELERIA AGAPO I', 'J309112619', '90075', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'SIMON PLANAS', null, '', '15', '08/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('233', 'VALERA ISMAEL. E VARIEDADES F.P.', 'V152148514', '549423', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'SIMON PLANAS', null, '', '15', '09/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('234', 'PANADERIA SIEMPRE JEHOVANISIS C.A', 'J295453736', '86551', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '10/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('235', 'PANADERIA PASTELERIA Y CHARCUTERIA TIO NANO C.A', 'J297654372', '87240', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '11/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('236', 'PANADERIA PASTELERIA Y CHARCUTERIA LAS CASITAS C.A', 'J314237020', '87276', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '12/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('237', 'PANADERIA NOR-PAN C.A', 'J311236902', '87321', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '13/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('238', 'PANADERIA Y PASTELERIA PAN DE DIOS C.A', 'J294426565', '95357', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '14/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('239', 'PANADERIA MIS 8 HIJOS C.A PANADERIA Y PASTELERIA', 'J299948250', '101249', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '15/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('240', 'CONSERVAS PANADERIA Y PASTELERIA CRUZ', 'V073898672', '119427', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '16/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('241', 'PANADERIA PASTELERIA CHARCUTERIA LOS PRIMOS  DEL NORTE , C.A', 'J401070388', '142327', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '17/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('242', 'LA PASTELERIA DE FERLY C A', 'J406908568', '502961', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '18/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('243', 'ASOCIACION COOPERATIVA MICHEL LGY, R.L.', 'J410028114', '522311', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '19/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('244', 'INGRID NAILETH BETANCOURT ANSELMI -', 'V122483068', '226796', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '20/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('245', 'ENRIQUE ANTONIO RODRIGUEZ DUN', 'V095504236', '227612', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '21/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('246', 'PANADERIA KATHY PAN 2010 C.A', 'J307886781', '139377', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '22/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('247', 'EL REY DEL PASAPALO J.J CA', 'J403959412', '198408', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '23/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('248', 'PANADERIA Y PASTELERIA MARSHELONIA C.A ', 'J404287124', '437513', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '24/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('249', 'PANADERIA Y PASTELERIA AGUILAR MI PANCITO DE LA ESQUINA', 'V162770787', '456034', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '25/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('250', 'PIZZERIA Y HELADERIA EL HEMIR, C.A.', 'J407592300', '463680', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '26/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('251', 'JESUS MI AMIGO FIEL 2016 C.A', 'J408768690', '493007', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '27/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('252', 'PANADERIA Y CHARCUTERIA PRINCIPE FACTORY, C.A', 'J408559803', '496942', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '28/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('253', 'PANADERIA Y PASTELERIA CHARCUTERIA SAN MARCOS 8 1-10 C.A', 'J408796589', '514056', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '29/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('254', 'PANADERIA Y PASTELERIA ANTONELLA C.A.', 'J405977914', '523938', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '30/11/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('255', 'PANADERIA Y PASTELERIA ENMANUEL C.A', 'J409344720', '524961', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '01/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('256', 'BEIT LEJEM VARGAS F.P', 'V184225855', '526393', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '02/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('257', 'MI DULCE ANGELITO F.P.', 'V149794375', '537424', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '03/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('258', 'PANADERIA NUEVO RENACER 2017', 'J409932095', '542993', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '04/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('259', 'PANADERIA R. ALVARADO', 'V036368892', '545277', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '05/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('260', 'CASTILLO PANADERIA LA VICTORIA FP', 'V129342826', '549477', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '06/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('261', 'PANADERIA RUI PAN CANELON', 'V143478676', '552591', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '07/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('262', 'PANADERIA LA AVENIDA 2017 C A', 'J410172231', '563380', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '08/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('263', 'PANADERIA Y PASTELERIA ARTESANAL  LA PEÑA DEL HORED 2017 C.A', 'J410564750', '580028', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '09/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('264', 'INFANTE PANADERIA LA SAGRADA FAMILIA', 'V066828200', '589557', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '10/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('265', 'Brito Panaderia mi Esfuerzo ', 'V061057346', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '11/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('266', 'PANADERIA PASTELERIA HERMANOS HERNANDEZ', 'J409666760', '529415', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '12/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('267', 'INVERSIONES LA CARIDAD', 'J316139786', '429412', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '13/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('268', 'PANADERIA Y PASTELERIA RIO PAN CA', 'J317466969', '152319', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '14/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('269', 'PANIFICADORA EL PAN NEW', 'J403433275', '436415', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '15/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('270', 'PANADERIA LA NONNA PINA F& G, C.A', 'J409671321', '529775', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '16/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('271', 'JAEN  PANADERIA MORELIS F.P', 'V096286810', '539931', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '17/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('272', 'LINAJE REAL M&B, C.A.', 'J410143720', '555296', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '18/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('273', 'PANIFICADORA AGRO-PARKING C A', 'J311084835', '573276', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '19/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('274', 'PANADERIA Y PASTELERIA EL PRINCIPIO DE LA PROSPERIDAD', 'J410666854', '584337', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '20/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('275', 'PANIFICADORA YUCATAN C.A', 'J410237392', '570063', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '21/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('276', 'CORIANGEL, C.A', 'J404317678', '218216', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '22/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('277', 'EL REY DEL PAN COLOMBIANO 2 CA', 'J401428843', '140845', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '23/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('278', 'PASTELERIA VENECIA 21', 'V117924714', '141573', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '24/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('279', 'PANADERIA PAN-AMERICA C.A', 'J299019348', '98283', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '25/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('280', 'PANADERIA PASTELERIA MAXIPAN 2000 C.A -', 'J308456969', '88124', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '26/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('281', '¨INVERSIONES LOS FRAILESANDINOS C.A¨', 'J315447070', '90550', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '27/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('282', 'PANIFICADORA BUEN PAN C.A', 'J306305742', '87315', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '28/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('283', 'PANADERIA ORO PAN CA', 'J316248836', '86450', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '29/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('284', 'PAN TRIGO DEL NORTE C.A', 'J297959840', '86553', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '30/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('285', 'PANADERIA BRIOCHE 2015 CA', 'J407501224', '442906', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '31/12/2019', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('286', 'SEQUERA PANADERIA LUIS PAN DE DIOS F.P', 'V173062164', '211725', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '01/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('287', 'HERNANDEZ DULCES DE TAMARINDO', 'V168537596', '221331', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '02/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('288', 'TRIGO DORADO 2013 C.A', 'J402881274', '190657', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '03/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('289', 'RAMOS INVERSIONES JHEI', 'V22270582-3', '233907', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '04/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('290', 'GUANAY PANADERIA PASTELERIA Y CHARCUTERIA MIS NIETOS', 'V096064817', '234165', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '05/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('291', 'PANAD PASTELER CHARCULT ARMANDO Y ASOCIADOS', 'J403997187', '256901', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '06/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('292', 'VILLANUEVA MIS TRES BENDICIONES FP', 'V155043942', '383025', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '07/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('293', 'INVERSIONES HERIELY C.A', 'J403787352', '466366', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '08/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('294', 'SANCHEZ REPOSTERIA MISHELL', 'V124366328', '497917', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '09/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('295', 'PANADERIA, PASTELERIA Y CHARCUTERIA MI PEQUEÑA YOR, C.A', 'J409000320', '509687', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '10/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('296', 'CASA DE PAN RODRIGUEZ FP', 'V146495253', '522483', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '11/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('297', 'YAMIREY 2016, C.A', 'J409127419', '523134', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '12/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('298', 'PANADERIA PASTELERIA  Y CHARCUTERIA WILLIAM C.A', 'J409517446', '524112', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '13/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('299', 'A.C DULCERIA Y DELICATESE LA HIGUERA R.L.', 'J400457165', '524482', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '14/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('300', 'ARTEAGA PANADERIA PASTELERIA CHARCUTERIA  MI GRAN SUEÑO FP', 'V170123090', '525136', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '15/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('301', 'DULCIPAN NAYYIN ATACHO 209 FP', 'V118772160', '525885', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '16/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('302', 'PANIFICADORA TAMACA', 'J409273040', '526278', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '17/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('303', 'INVERSIONES LOYO GARABAN N.E.E.C.J , C.A', 'J402686048', '528773', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '18/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('304', 'SUAREZ PANADERIA PASTELERIA Y CHARCUTERIA A.A.A, F.P', 'V047290119', '530497', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '19/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('305', 'PANADERIA EL REYNO DE DIOS C.A', 'J409489019', '534308', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '20/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('306', 'GARCES PEROZA PANADERIA LA VICTORIA', 'V052589645', '537101', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '21/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('307', 'PAN DE VIDA  AGUILAR FP', 'V169733518', '537151', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '22/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('308', 'PANADERIA PASTELERIA Y CHARCUTERIA VICTOR Y MI GENTE', 'J409789128', '541102', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '23/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('309', 'CARIPE EL SEÑOR ES MI PASTOR F.P', 'V043393460', '543083', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '24/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('310', 'ASOCIACION COOPERATIVA YOHEZAMAR R.L.', 'J409311988', '549430', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '25/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('311', 'MEDINA PANDERIA, REPOSTERIA Y CHARCUTERIA DAISY LA SEÑORA DE LAS TORTAS', 'V118775828', '556822', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '26/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('312', 'MENDOZA PANDERIA Y PASAPALOS #EL 99 LA BENDICION DE DIOS', 'V136438367', '559380', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '27/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('313', 'PANADERIA PASTELERIA Y CHARCUTERIA PAN DE VIDA E& A, C.A. ', 'J409814300', '573612', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '28/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('314', 'PANADERIA, PASTELERIA Y CHARCUTERIA COLIBRI JR, C.A.', 'J411363294', '578499', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '29/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('315', 'PANADERIA, PASTELERIA Y CHARCUTERIA MI ESFUERZO EL FUTURO, C.A.', 'J411458600', '578586', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '30/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('316', 'A DIOS SEA LA GLORIA 2017 C.A', 'V171047281', '581575', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '31/01/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('317', 'PANADERIA Y PASTELERIA TRIGO DORADO 7 CA', 'J410623780', '583352', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '01/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('318', 'PANIFICADORA LA NUESTRA DEL NORTE C.A', 'J-408969750', '573789', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '02/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('319', 'LAS 3 IZAS C.A', 'J298386894', '86525', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '03/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('320', 'PANIFICADORA Y PANADERIA LA FE C.A', 'J294115977', '90783', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '04/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('321', 'PANADERIA Y PASTELERIA Y CHARCUTERIA PAOLA 2021 F P', 'V12434024-8', '112780', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '05/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('322', 'PANADERIA  PASTELERIAY CHARCUTERIA LA GLORIA DE JESUS DE NAZARETH C.A.', 'J294368654', '139839', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '06/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('323', 'HEBERT WILFREDO YEPEZ CUICA', 'V108468870', '202308', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '07/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('324', 'PANADERÍA PASTELERIA Y CHARCUTERIA TRIGO MADURO C.A.', 'J317537840', '222847', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '08/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('325', 'PANADERIA MADRE MARIA', 'V743320356', '380910', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '09/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('326', 'PANADERIA, PASTELERIA Y CHARCUTERIA  NUESTRO ESFUERZO, C.A', 'J407517368', '455553', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '10/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('327', 'PANIFICADORA IGLESIAS C.A', 'J306444017', '457614', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '11/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('328', 'REYES PANADERIA REIPAN', 'V073866800', '526990', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '12/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('329', 'J.C ALVAREZ PANADERIA Y PASTELERIA F.P', 'V261654322', '538583', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '13/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('330', 'PANADERIA Y PASTELERIA NUEVO PAN BOBARE 2015 C.A.', 'J406392871', '539128', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '14/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('331', 'PANIFICADORA EL PAN CELESTIAL C.A.', 'J297638199', '86540', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '15/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('332', 'ALFA PAN L&Y C.A.', 'J314518623', '87246', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '16/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('333', '\"MUNDO VITAL CA - PANADERÍA', 'J294940730', '87272', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '17/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('334', 'Y PASTELERIA\"', 'J300959104', '87388', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '18/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('335', 'PANADERIA Y PASTELERIA DEYVID PAN -', 'J301196937', '88685', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '19/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('336', 'PANADERIA PAN DE AZUCAR C.A. PANADERIA Y PASTELERIA', 'J085153462', '89462', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '20/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('337', 'PANADERIA Y PASTELERIA EL RECREO, C.A', 'J315196166', '92452', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '21/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('338', 'PANIFICADORA SANTINA C.A.', 'J295748515', '93973', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '22/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('339', 'PANADERIA PASTELERIA Y DELICATESES LA ESCALA CA -', 'J401533302', '151843', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '23/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('340', 'INVERSIONES MEGAPAN 2012 C A', 'J317015142', '155562', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '24/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('341', 'EL GRAN HORNO C A', 'J402566492', '163356', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '25/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('342', 'PANADERIA Y PASTELERIA EL PAN DE DIOS 2013 CA', 'J299909904', '113810', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '26/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('343', 'PANADERIA PASTELERIA Y CHARCUTERIA EL CASTILLO DEL PAN 2010 CA', 'J299074098', '114725', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '27/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('344', 'PANADERIA NUEVO MILENIO 2010 C.A.', 'J294126421', '115798', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '28/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('345', 'PANADERIA PASTELERIA Y CHARCUTERIA LA NOVA 2007 CA', 'J297971645', '118515', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '29/02/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('346', 'PANADERIA DON RAFAEL CA', 'J410315440', '119401', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '01/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('347', 'PANADERIA Y PASTELERIA JOSANA 2017 C. A', 'J313037354', '119657', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '02/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('348', 'ASOCIACION COOPERATIVA YUL-YANE 306RL', 'J309387464', '120022', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '03/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('349', 'PANIFICADORA ALFA PAN O.L, C.A', 'J409386074', '523845', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '04/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('350', 'DISTRIBUIDORA,PANIFICADORA Y CHARCUTERIA MI ANGEL GABRIEL, C.A', 'J402871856', '524281', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '05/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('351', 'PANADERIA  PASTELERIA Y CHARCUTERIA ROCA FUERTE, C.A', 'J40426785', '524461', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '06/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('352', 'PANADERIA Y CHARCUTERIA BERACA,CA', 'V154255393', '524679', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '07/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('353', 'PEREZ PANADERIA Y PASTELERIA ESPECIALIDADES, F.P', 'J405724528', '527544', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '08/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('354', 'PANADERIA LA GUADALUPANA', 'J409637697', '531767', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '09/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('355', 'PANADERIA,CHARCUTERIA Y VIVERES CHARCUPAN, C.A', 'J409479757', '531898', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '10/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('356', 'PANADERIA Y PASTELERIA LAS DELICIAS C.A', 'V260073180', '532080', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '11/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('357', 'DANIELA JAKSANAYS IBARRA MOLINA', 'J408919850', '532303', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '12/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('358', 'ABASTO Y PANADERIA DON MARCELINO M,S C.A.', 'V233646233', '546340', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '13/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('359', 'PANIFICADORA ARTESANAL UNION RODRIGUEZ', 'V096123767', '550536', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '14/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('360', 'PANADERIA Y PASTELERIA PEREZ ALEXANDER, F.P', 'J409692060', '552599', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '15/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('361', 'PANIFICADORA EL MILAGRO 2017', 'J409721833', '557518', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '16/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('362', 'EL SABOR COLOMBIANO 2018,C.A ', 'J410058994', '565619', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '17/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('363', 'PANADERIA Y PASTELERIA MI GRAN REFUGIO 2017 CA', 'j305723648', '201805', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '18/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('364', 'PANADERÍA Y PASTELERÍA NOEL-PAN CA', 'V154442940', '209849', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '19/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('365', 'RODRIGUEZ MARI MAR 2013', 'J409712052', '211721', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '20/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('366', 'PANADERIA Y CHARCUTERIA VARIEDADES MENDOZA', 'J403224153', '243529', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '21/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('367', 'LUZ PAN DEL NORTE 7 C A', 'V01437755-3', '390842', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '22/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('368', 'PANADERIA GRAN FE ', 'V-21141895-4', '446859', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '23/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('369', 'SANCHEZ PANADERIA LA BENDICION DE DIOS', 'J407267698', '456754', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '24/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('370', 'PANADERIA Y PASTELERIA JESURUM C.A', 'J406772801', '457215', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '25/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('371', 'IVARON 2015 C.A', 'J405966130', '482699', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '26/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('372', 'PANADERIA ELIER 2015, C.A', 'J315326914', '484970', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '27/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('373', 'PANADERIA SIRIA VEN CA', 'J407970950', '487611', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '28/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('374', 'PANIFICADORA LEOPAN C.A', 'V135672072', '494583', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '29/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('375', 'RODRIGUEZ LENNY PANIFICADORA Y ALGO MAS, F.P', 'V073675754', '496117', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '30/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('376', 'PANIFICADORA CASTILLO PAN DE  VIDA', 'J408337991', '501658', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '31/03/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('377', 'PANIFICADORA YAYA, C.A.', 'V153528361', '503905', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '01/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('378', 'REYES PANIFICADORA DELICIAS 1981, C.A', 'J304124902', '97761', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '02/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('379', 'PIZZERIA MASH C.A', 'J410311762', '67609', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '03/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('380', 'PANADERIA Y PASTELERIA DELICIAS DEL TRIGO C.A', 'J308026379', '105622', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '04/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('381', 'PANADERIA PASTELERIA Y VARIEDADES LE FRAZYE CA', 'V096308910', '158455', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '05/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('382', 'GOMEZ VICTOR PANADERIA REPOSTERIA Y CHARCUTERIA F.P', 'J404391797', '211129', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '06/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('383', 'PASAPALOS Y PASTELERIA  MIDOAL C.A', 'V112699810', '226401', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '07/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('384', 'SUAREZ PANADERIA SHALON', 'V052452178', '236810', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '08/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('385', 'ZORAIDA JOSEFINA MONTILLA RODRIGUEZ', 'V137407058', '258704', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '09/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('386', 'CHARCUTERIA,PANADERIA Y PASTELERIA YEKALEX', ' J404286276', '378934', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '10/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('387', 'PANADERÍA, PASTELERÍA, CHARCUTERÍA LA FORTALEZA EN DIOS 91 C A', 'J404321810', '444751', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '11/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('388', 'LA FE EN JESU CRISTO', 'J404215921', '455292', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '12/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('389', 'VANDERHILL', 'V095467039', '463504', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '13/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('390', 'PANADERIA Y PASTELERIA LA ROSA DE SARON', 'J409180182', '497935', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '14/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('391', 'PANDERIA DORALF C.A', 'V109434252', '499481', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '15/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('392', 'FREITES PASAPALOS VARIADOS', 'J405322624', '507039', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '16/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('393', 'PANADERIA, CHARCUTERIA, VIVERES EN GENERAL SAMAN C.A', 'J409131262', '519715', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '17/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('394', 'FABRICA DE PASTA ARTESANAL MELENDINIZ, CA', 'J409711978', '522567', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '18/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('395', 'PANADERIA ARTESANAL MI DULCE PAN, CA', 'V-117855747', '523911', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '19/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('396', 'PANIFICADORA MARLENE FIGUEROA FP', 'J406465038', '524951', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '20/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('397', 'PANIFICADORA MOSCHIANO, C.A', 'V182610980', '529682', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '21/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('398', 'VASQUEZ REPOSTERIA MI DULCE CAPRICHO', 'V096039766', '530000', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '22/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('399', 'ESCALONA PANADERIA MI GRAN SOL F.P', 'V186553906', '531146', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '23/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('400', 'SUAREZ PANES Y PASTELERIA YESICA F.P', 'J409615544', '531615', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '24/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('401', 'PANIFICADORA HERMANOS JJ', 'V095571782', '532918', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '25/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('402', 'CARLOS ENRIQUE NELO GOMEZ', 'V155805982', '533669', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '26/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('403', 'YEPEZ ALFREDO PANADERIA Y PIZZERIA, F.P', 'V 124336623', '533675', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '27/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('404', 'MENDOZA PEROZO ELIA PASTORA', 'J-409471756', '537234', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '28/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('405', 'MINI PANADERIA ARTESANAL LA VENCEDORA.', 'V204739885', '539822', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '29/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('406', 'LADINO PANIFICADORA Y PASTELERIA 2018 FP', 'J404048464', '546789', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '30/04/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('407', 'MC CHILYS FAST FOOD, C.A', 'J409767582', '555946', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '01/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('408', 'CATALEYA PANADERIA, PASTELERIA Y ALGO MAS, C.A. ', 'V145124944', '565594', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '02/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('409', 'MENDOZA PANADERIA Y PASTELERIA', 'J401833721', '570498', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '03/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('410', 'Q SABROSOS 1.C.A. ', 'V151703239', '570572', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '04/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('411', 'PANADERIA Y PASTELERIA MORA F.P.', 'J409910938', '571102', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '05/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('412', 'PANADERIA Y PASTELERIA KALOS PAN 2017 CA', 'J409860817', '578714', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '06/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('413', 'PANIFICADORA Y DISTRIBUIDORA  KUSCO 1, C.A', 'V157778877', '596543', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '07/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('414', 'DISTRIBUIDORA Y PANIFICADORA INRI GRATEROL FP', 'J410295872', '603001', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '08/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('415', 'PANADERIA PASTELERIA FLOR DEL PAN CA', 'J407835378', '634599', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '09/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('416', 'PANIFICADORA LIDER PAN, C.A', 'J409711978', '552567', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '10/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('417', 'PANADERIA ARTESANAL MI DULCE PAN', 'J410663537', '584659', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '11/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('418', 'PANADERIA Y PASTELERIA DIOS ES AMOR 2017', 'J410301775', '568233', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '12/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('419', 'PANADERIA EL GRAN YO SOY 7 CA', 'J309331981', '75371', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '13/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('420', 'PANADERIA LOS CREPUSCULOS 2002 CA', 'J314750526', '86514', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '14/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('421', 'PANADERIA Y PASTELERIA PAN REAL, C.A -', 'J313724955', '87279', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '15/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('422', 'PANADERIA PASTELERIA Y CHARCUTERIA FLORIPAN C.A', 'J316646157', '87911', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'IRIBARREN', null, '', '15', '16/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('423', 'DISPROIN M & E CA', 'V128494240', '506058', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '17/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('424', 'TORREALBA PANADERIA VENEZUELA 22, F.P ', 'J316932648', '115842', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '18/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('425', 'PANADERIA PASTELERIA Y CHARCUTERIA EL ESFUERZO 2006 C.A', 'J297972706', '160323', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '19/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('426', 'PANADERIA PASTELERIA Y CHARCUTERIA  MONSERRAT CA', 'J404800239', '532700', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '20/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('427', 'INVERSIONES YONSEL PAN 20145689 C.A', 'J405554860', '536508', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '21/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('428', 'PANADERIA PASTELERIA Y CHARCUTERIA EL  RICHARDS CA', 'V120196088', '113043', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '22/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('429', 'PANADERIA PASTELERIA AGUADA PAN', 'J410646551', '601803', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '23/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('430', 'PANADERIA Y PASTELERIA DOS SANTOS CA', 'J401147836', '139838', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '24/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('431', 'EL SITIO DEL PAN, C.A (EL SITIO DEL PAN, C.A)', 'J403570906', '391683', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '25/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('432', 'PANADERIA Y PASTELERIA AGUEDA ROSA CA.', 'J299071420', '113403', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '26/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('433', 'LA  NUEVA PANADERIA SUPER PAN C,A', 'J400416019', '165628', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '27/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('434', 'ASOCIACION COOPERATIVA DOÑA RAMONA RL', 'J402098642', '147930', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '28/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('435', 'PANIFICADORA MARIO 2013 CA', 'V229382965', '499971', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '29/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('436', 'PIRE PANADERIA P.V FP', 'J409693147', '632393', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '30/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('437', 'PANADERIA CHARCUTERIA Y VIVERES', 'V012395570', '82194', null, null, null, null, null, null, null, null, null, null, null, '0', null, null, 'URDANETA', null, '', '15', '31/05/2020', null, null, '2');
INSERT INTO `logistpanaderiacliente` VALUES ('438', 'PANIFICADORA DE AGUADA GRANDE', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', null, '', null, '', null, null, null);
INSERT INTO `logistpanaderiacliente` VALUES ('439', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '', null, '', null, null, null, null, null);

-- ----------------------------
-- Table structure for `logistpanaderiaclienteasignacion`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaclienteasignacion`;
CREATE TABLE `logistpanaderiaclienteasignacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `id_Panaderia` int(11) DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `ultimodespacho` varchar(50) DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=879 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaclienteasignacion
-- ----------------------------
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('440', '2', '2', '11', '23/03/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('441', '2', '3', '45', '24/03/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('442', '2', '4', '70', '25/03/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('443', '2', '5', '20', '26/03/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('444', '2', '6', '25', '27/03/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('445', '2', '7', '15', '28/03/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('446', '2', '8', '5', '29/03/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('447', '2', '9', '55', '30/03/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('448', '2', '10', '10', '31/03/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('449', '2', '11', '20', '01/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('450', '2', '12', '0', '02/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('451', '2', '13', '50', '03/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('452', '2', '14', '0', '04/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('453', '2', '15', '25', '05/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('454', '2', '16', '45', '06/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('455', '2', '17', '40', '07/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('456', '2', '18', '20', '08/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('457', '2', '19', '10', '09/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('458', '2', '20', '80', '10/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('459', '2', '21', '10', '11/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('460', '2', '22', '65', '12/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('461', '2', '23', '5', '13/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('462', '2', '24', '45', '14/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('463', '2', '25', '25', '15/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('464', '2', '26', '25', '16/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('465', '2', '27', '5', '17/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('466', '2', '28', '0', '18/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('467', '2', '29', '25', '19/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('468', '2', '30', '5', '20/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('469', '2', '31', '15', '21/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('470', '2', '32', '5', '22/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('471', '2', '33', '55', '23/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('472', '2', '34', '20', '24/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('473', '2', '35', '55', '25/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('474', '2', '36', '45', '26/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('475', '2', '37', '0', '27/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('476', '2', '38', '5', '28/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('477', '2', '39', '20', '29/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('478', '2', '40', '0', '30/04/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('479', '2', '41', '25', '01/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('480', '2', '42', '45', '02/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('481', '2', '43', '10', '03/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('482', '2', '44', '60', '04/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('483', '2', '45', '50', '05/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('484', '2', '46', '50', '06/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('485', '2', '47', '50', '07/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('486', '2', '48', '50', '08/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('487', '2', '49', '60', '09/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('488', '2', '50', '50', '10/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('489', '2', '51', '60', '11/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('490', '2', '52', '60', '12/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('491', '2', '53', '60', '13/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('492', '2', '54', '60', '14/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('493', '2', '55', '60', '15/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('494', '2', '56', '70', '16/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('495', '2', '57', '60', '17/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('496', '2', '58', '50', '18/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('497', '2', '59', '50', '19/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('498', '2', '60', '50', '20/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('499', '2', '61', '60', '21/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('500', '2', '62', '50', '22/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('501', '2', '63', '50', '23/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('502', '2', '64', '50', '24/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('503', '2', '65', '60', '25/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('504', '2', '66', '60', '26/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('505', '2', '67', '50', '27/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('506', '2', '68', '60', '28/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('507', '2', '69', '50', '29/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('508', '2', '70', '100', '30/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('509', '2', '71', '50', '31/05/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('510', '2', '72', '50', '01/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('511', '2', '73', '10', '02/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('512', '2', '74', '30', '03/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('513', '2', '75', '10', '04/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('514', '2', '76', '10', '05/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('515', '2', '77', '10', '06/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('516', '2', '78', '10', '07/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('517', '2', '79', '10', '08/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('518', '2', '80', '60', '09/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('519', '2', '81', '10', '10/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('520', '2', '82', '5', '11/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('521', '2', '83', '5', '12/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('522', '2', '84', '30', '13/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('523', '2', '85', '10', '14/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('524', '2', '86', '10', '15/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('525', '2', '87', '10', '16/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('526', '2', '88', '10', '17/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('527', '2', '89', '10', '18/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('528', '2', '90', '10', '19/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('529', '2', '91', '20', '20/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('530', '2', '92', '5', '21/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('531', '2', '93', '5', '22/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('532', '2', '94', '10', '23/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('533', '2', '95', '5', '24/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('534', '2', '96', '30', '25/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('535', '2', '97', '10', '26/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('536', '2', '98', '30', '27/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('537', '2', '99', '10', '28/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('538', '2', '100', '20', '29/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('539', '2', '101', '30', '30/06/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('540', '2', '102', '20', '01/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('541', '2', '103', '10', '02/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('542', '2', '104', '10', '03/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('543', '2', '105', '10', '04/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('544', '2', '106', '10', '05/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('545', '2', '107', '10', '06/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('546', '2', '108', '10', '07/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('547', '2', '109', '10', '08/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('548', '2', '110', '10', '09/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('549', '2', '111', '10', '10/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('550', '2', '112', '10', '11/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('551', '2', '113', '10', '12/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('552', '2', '114', '10', '13/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('553', '2', '115', '10', '14/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('554', '2', '116', '5', '15/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('555', '2', '117', '5', '16/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('556', '2', '118', '0', '17/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('557', '2', '119', '5', '18/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('558', '2', '120', '10', '19/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('559', '2', '121', '10', '20/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('560', '2', '122', '15', '21/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('561', '2', '123', '10', '22/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('562', '2', '124', '30', '23/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('563', '2', '125', '10', '24/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('564', '2', '126', '5', '25/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('565', '2', '127', '5', '26/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('566', '2', '128', '10', '27/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('567', '2', '129', '5', '28/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('568', '2', '130', '10', '29/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('569', '2', '131', '5', '30/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('570', '2', '132', '10', '31/07/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('571', '2', '133', '5', '01/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('572', '2', '134', '30', '02/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('573', '2', '135', '20', '03/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('574', '2', '136', '10', '04/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('575', '2', '137', '20', '05/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('576', '2', '138', '10', '06/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('577', '2', '139', '10', '07/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('578', '2', '140', '10', '08/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('579', '2', '141', '30', '09/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('580', '2', '142', '10', '10/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('581', '2', '143', '50', '11/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('582', '2', '144', '10', '12/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('583', '2', '145', '10', '13/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('584', '2', '146', '10', '14/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('585', '2', '147', '65', '15/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('586', '2', '148', '45', '16/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('587', '2', '149', '100', '17/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('588', '2', '150', '65', '18/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('589', '2', '151', '120', '19/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('590', '2', '152', '140', '20/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('591', '2', '153', '100', '21/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('592', '2', '154', '0', '22/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('593', '2', '155', '100', '23/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('594', '2', '156', '85', '24/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('595', '2', '157', '100', '25/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('596', '2', '158', '85', '26/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('597', '2', '159', '85', '27/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('598', '2', '160', '65', '28/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('599', '2', '161', '100', '29/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('600', '2', '162', '65', '30/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('601', '2', '163', '65', '31/08/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('602', '2', '164', '140', '01/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('603', '2', '165', '65', '02/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('604', '2', '166', '200', '03/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('605', '2', '167', '65', '04/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('606', '2', '168', '65', '05/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('607', '2', '169', '140', '06/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('608', '2', '170', '80', '07/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('609', '2', '171', '175', '08/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('610', '2', '172', '65', '09/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('611', '2', '173', '45', '10/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('612', '2', '174', '65', '11/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('613', '2', '175', '80', '12/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('614', '2', '176', '0', '13/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('615', '2', '177', '115', '14/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('616', '2', '178', '0', '15/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('617', '2', '179', '100', '16/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('618', '2', '180', '100', '17/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('619', '2', '181', '100', '18/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('620', '2', '182', '70', '19/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('621', '2', '183', '50', '20/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('622', '2', '184', '70', '21/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('623', '2', '185', '0', '22/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('624', '2', '186', '90', '23/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('625', '2', '187', '70', '24/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('626', '2', '188', '70', '25/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('627', '2', '189', '70', '26/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('628', '2', '190', '120', '27/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('629', '2', '191', '90', '28/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('630', '2', '192', '90', '29/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('631', '2', '193', '50', '30/09/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('632', '2', '194', '120', '01/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('633', '2', '195', '45', '02/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('634', '2', '196', '50', '03/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('635', '2', '197', '110', '04/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('636', '2', '198', '100', '05/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('637', '2', '199', '100', '06/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('638', '2', '200', '60', '07/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('639', '2', '201', '90', '08/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('640', '2', '202', '20', '09/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('641', '2', '203', '100', '10/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('642', '2', '204', '30', '11/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('643', '2', '205', '30', '12/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('644', '2', '206', '10', '13/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('645', '2', '207', '50', '14/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('646', '2', '208', '25', '15/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('647', '2', '209', '50', '16/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('648', '2', '210', '10', '17/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('649', '2', '211', '15', '18/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('650', '2', '212', '30', '19/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('651', '2', '213', '30', '20/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('652', '2', '214', '30', '21/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('653', '2', '215', '10', '22/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('654', '2', '216', '10', '23/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('655', '2', '217', '10', '24/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('656', '2', '218', '10', '25/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('657', '2', '219', '30', '26/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('658', '2', '220', '10', '27/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('659', '2', '221', '30', '28/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('660', '2', '222', '0', '29/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('661', '2', '223', '80', '30/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('662', '2', '224', '80', '31/10/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('663', '2', '225', '50', '01/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('664', '2', '226', '30', '02/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('665', '2', '227', '30', '03/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('666', '2', '228', '10', '04/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('667', '2', '229', '10', '05/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('668', '2', '230', '60', '06/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('669', '2', '231', '50', '07/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('670', '2', '232', '60', '08/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('671', '2', '233', '10', '09/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('672', '2', '234', '60', '10/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('673', '2', '235', '60', '11/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('674', '2', '236', '60', '12/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('675', '2', '237', '60', '13/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('676', '2', '238', '60', '14/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('677', '2', '239', '60', '15/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('678', '2', '240', '60', '16/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('679', '2', '241', '60', '17/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('680', '2', '242', '60', '18/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('681', '2', '243', '60', '19/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('682', '2', '244', '10', '20/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('683', '2', '245', '10', '21/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('684', '2', '246', '25', '22/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('685', '2', '247', '10', '23/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('686', '2', '248', '10', '24/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('687', '2', '249', '15', '25/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('688', '2', '250', '10', '26/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('689', '2', '251', '15', '27/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('690', '2', '252', '0', '28/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('691', '2', '253', '15', '29/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('692', '2', '254', '25', '30/11/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('693', '2', '255', '20', '01/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('694', '2', '256', '15', '02/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('695', '2', '257', '10', '03/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('696', '2', '258', '20', '04/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('697', '2', '259', '10', '05/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('698', '2', '260', '15', '06/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('699', '2', '261', '25', '07/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('700', '2', '262', '20', '08/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('701', '2', '263', '10', '09/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('702', '2', '264', '10', '10/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('703', '2', '265', '5', '11/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('704', '2', '266', '30', '12/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('705', '2', '267', '60', '13/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('706', '2', '268', '30', '14/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('707', '2', '269', '30', '15/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('708', '2', '270', '60', '16/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('709', '2', '271', '60', '17/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('710', '2', '272', '60', '18/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('711', '2', '273', '60', '19/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('712', '2', '274', '60', '20/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('713', '2', '275', '50', '21/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('714', '2', '276', '60', '22/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('715', '2', '277', '60', '23/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('716', '2', '278', '60', '24/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('717', '2', '279', '60', '25/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('718', '2', '280', '60', '26/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('719', '2', '281', '60', '27/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('720', '2', '282', '60', '28/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('721', '2', '283', '60', '29/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('722', '2', '284', '35', '30/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('723', '2', '285', '30', '31/12/2019', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('724', '2', '286', '20', '01/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('725', '2', '287', '10', '02/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('726', '2', '288', '20', '03/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('727', '2', '289', '20', '04/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('728', '2', '290', '25', '05/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('729', '2', '291', '25', '06/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('730', '2', '292', '15', '07/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('731', '2', '293', '0', '08/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('732', '2', '294', '25', '09/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('733', '2', '295', '25', '10/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('734', '2', '296', '25', '11/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('735', '2', '297', '25', '12/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('736', '2', '298', '25', '13/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('737', '2', '299', '10', '14/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('738', '2', '300', '10', '15/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('739', '2', '301', '25', '16/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('740', '2', '302', '145', '17/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('741', '2', '303', '25', '18/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('742', '2', '304', '15', '19/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('743', '2', '305', '20', '20/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('744', '2', '306', '20', '21/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('745', '2', '307', '5', '22/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('746', '2', '308', '20', '23/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('747', '2', '309', '25', '24/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('748', '2', '310', '0', '25/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('749', '2', '311', '10', '26/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('750', '2', '312', '10', '27/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('751', '2', '313', '10', '28/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('752', '2', '314', '25', '29/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('753', '2', '315', '25', '30/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('754', '2', '316', '10', '31/01/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('755', '2', '317', '15', '01/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('756', '2', '318', '100', '02/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('757', '2', '319', '15', '03/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('758', '2', '320', '30', '04/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('759', '2', '321', '30', '05/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('760', '2', '322', '30', '06/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('761', '2', '323', '0', '07/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('762', '2', '324', '15', '08/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('763', '2', '325', '10', '09/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('764', '2', '326', '20', '10/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('765', '2', '327', '30', '11/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('766', '2', '328', '15', '12/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('767', '2', '329', '20', '13/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('768', '2', '330', '30', '14/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('769', '2', '331', '30', '15/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('770', '2', '332', '30', '16/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('771', '2', '333', '30', '17/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('772', '2', '334', '30', '18/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('773', '2', '335', '30', '19/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('774', '2', '336', '30', '20/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('775', '2', '337', '30', '21/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('776', '2', '338', '30', '22/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('777', '2', '339', '30', '23/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('778', '2', '340', '30', '24/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('779', '2', '341', '30', '25/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('780', '2', '342', '30', '26/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('781', '2', '343', '30', '27/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('782', '2', '344', '30', '28/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('783', '2', '345', '30', '29/02/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('784', '2', '346', '30', '01/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('785', '2', '347', '30', '02/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('786', '2', '348', '30', '03/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('787', '2', '349', '55', '04/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('788', '2', '350', '30', '05/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('789', '2', '351', '25', '06/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('790', '2', '352', '25', '07/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('791', '2', '353', '30', '08/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('792', '2', '354', '25', '09/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('793', '2', '355', '25', '10/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('794', '2', '356', '25', '11/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('795', '2', '357', '15', '12/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('796', '2', '358', '30', '13/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('797', '2', '359', '30', '14/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('798', '2', '360', '30', '15/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('799', '2', '361', '30', '16/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('800', '2', '362', '30', '17/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('801', '2', '363', '30', '18/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('802', '2', '364', '30', '19/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('803', '2', '365', '30', '20/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('804', '2', '366', '25', '21/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('805', '2', '367', '30', '22/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('806', '2', '368', '30', '23/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('807', '2', '369', '25', '24/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('808', '2', '370', '30', '25/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('809', '2', '371', '30', '26/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('810', '2', '372', '30', '27/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('811', '2', '373', '80', '28/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('812', '2', '374', '30', '29/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('813', '2', '375', '30', '30/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('814', '2', '376', '30', '31/03/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('815', '2', '377', '30', '01/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('816', '2', '378', '60', '02/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('817', '2', '379', '30', '03/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('818', '2', '380', '20', '04/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('819', '2', '381', '20', '05/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('820', '2', '382', '10', '06/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('821', '2', '383', '30', '07/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('822', '2', '384', '10', '08/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('823', '2', '385', '10', '09/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('824', '2', '386', '10', '10/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('825', '2', '387', '15', '11/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('826', '2', '388', '10', '12/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('827', '2', '389', '20', '13/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('828', '2', '390', '20', '14/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('829', '2', '391', '10', '15/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('830', '2', '392', '30', '16/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('831', '2', '393', '20', '17/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('832', '2', '394', '10', '18/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('833', '2', '395', '20', '19/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('834', '2', '396', '20', '20/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('835', '2', '397', '10', '21/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('836', '2', '398', '20', '22/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('837', '2', '399', '20', '23/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('838', '2', '400', '30', '24/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('839', '2', '401', '10', '25/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('840', '2', '402', '10', '26/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('841', '2', '403', '10', '27/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('842', '2', '404', '20', '28/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('843', '2', '405', '10', '29/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('844', '2', '406', '10', '30/04/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('845', '2', '407', '20', '01/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('846', '2', '408', '30', '02/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('847', '2', '409', '5', '03/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('848', '2', '410', '20', '04/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('849', '2', '411', '10', '05/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('850', '2', '412', '30', '06/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('851', '2', '413', '10', '07/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('852', '2', '414', '10', '08/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('853', '2', '415', '30', '09/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('854', '2', '416', '10', '10/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('855', '2', '417', '10', '11/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('856', '2', '418', '20', '12/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('857', '2', '419', '35', '13/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('858', '2', '420', '35', '14/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('859', '2', '421', '35', '15/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('860', '2', '422', '35', '16/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('861', '2', '423', '20', '17/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('862', '2', '424', '20', '18/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('863', '2', '425', '20', '19/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('864', '2', '426', '25', '20/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('865', '2', '427', '20', '21/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('866', '2', '428', '20', '22/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('867', '2', '429', '25', '23/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('868', '2', '430', '20', '24/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('869', '2', '431', '20', '25/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('870', '2', '432', '20', '26/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('871', '2', '433', '20', '27/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('872', '2', '434', '20', '28/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('873', '2', '435', '20', '29/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('874', '2', '436', '5', '30/05/2020', '1');
INSERT INTO `logistpanaderiaclienteasignacion` VALUES ('875', '2', '437', '60', '31/05/2020', '1');

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
-- Table structure for `logistpanaderiadistribucionorden`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiadistribucionorden`;
CREATE TABLE `logistpanaderiadistribucionorden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechainicio` varchar(255) DEFAULT NULL,
  `fechafin` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cantDist` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiadistribucionorden
-- ----------------------------
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('1', '22/03/2019', '24/03/2019', 'OD-2019-01', '0', '2019-03-23 15:14:15', '2019-03-23 21:42:25', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('2', '22/03/2019', '30/03/2019', 'OD-2019-01', '1', '2019-03-23 15:20:54', '2019-03-23 21:42:25', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('3', '24/03/2019', '25/03/2019', 'OD-2019-01', '0', '2019-03-23 16:46:50', '2019-03-23 16:46:50', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('4', '23/03/2019', '23/03/2019', 'OD-2019-01', '0', '2019-03-24 14:05:59', '2019-03-24 14:05:59', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('5', '23/03/2019', '23/03/2019', 'OD-2019-01', '0', '2019-03-24 14:20:56', '2019-03-24 14:20:56', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('6', '23/03/2019', '24/03/2019', 'OD-2019-01', '0', '2019-03-24 16:22:39', '2019-03-24 16:22:39', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('7', '24/03/2019', '27/03/2019', 'OD-2019-01', '0', '2019-03-24 16:23:02', '2019-03-24 16:23:02', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('8', '30/03/2019', '31/03/2019', 'OD-2019-01', '0', '2019-03-24 16:25:42', '2019-03-24 16:25:42', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('9', '27/03/2019', '31/03/2019', 'OD-2019-01', '0', '2019-03-24 16:26:08', '2019-03-24 16:26:08', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('10', '28/03/2019', '30/03/2019', 'OD-2019-01', '0', '2019-03-24 16:27:16', '2019-03-24 16:27:16', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('11', '23/03/2019', '24/03/2019', 'OD-2019-01', '0', '2019-03-24 16:27:23', '2019-03-24 16:27:23', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('12', '23/03/2019', '31/03/2019', 'OD-2019-01', '0', '2019-03-24 18:34:08', '2019-03-24 18:34:08', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('13', '30/03/2019', '31/03/2019', 'OD-2019-01', '0', '2019-03-24 18:34:26', '2019-03-24 18:34:26', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('14', '23/03/2019', '31/03/2019', 'OD-2019-01', '0', '2019-03-24 18:35:43', '2019-03-24 18:35:43', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('15', '23/03/2019', '30/03/2019', 'OD-2019-02', '0', '2019-03-24 18:35:54', '2019-03-24 18:35:54', '0');
INSERT INTO `logistpanaderiadistribucionorden` VALUES ('16', '06/04/2019', '07/04/2019', 'OD-2019-03', '0', '2019-03-27 19:11:51', '2019-03-27 19:11:51', '0');

-- ----------------------------
-- Table structure for `logistpanaderiadistribuidora`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiadistribuidora`;
CREATE TABLE `logistpanaderiadistribuidora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `telefono` double DEFAULT NULL,
  `validacorreo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiadistribuidora
-- ----------------------------
INSERT INTO `logistpanaderiadistribuidora` VALUES ('1', 'DISTRIBUIDORA 1', 'DIRECCION', 'JJ@GMAIL.COM', '4245116999', '0');
INSERT INTO `logistpanaderiadistribuidora` VALUES ('2', 'SISECA', 'DIRECCION', 'JJ@GMAIL.COM', '4245116999', '0');

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
  `status` int(11) NOT NULL DEFAULT '0',
  `merma` decimal(10,0) NOT NULL DEFAULT '0',
  `id_Silo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecharecepcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiadistribuidoraalmacen
-- ----------------------------
INSERT INTO `logistpanaderiadistribuidoraalmacen` VALUES ('16', '2', '1', '2', '2', '2', '1', '1', '1', '1', '1', '2019-03-24 02:12:56', '2019-03-24 05:27:08', '24-03-2019');
INSERT INTO `logistpanaderiadistribuidoraalmacen` VALUES ('10', '2', '1', '2', '1', '20', '5', '1', '1', '15', '1', '2019-03-24 01:54:38', '2019-03-24 05:30:10', '24-03-2019');
INSERT INTO `logistpanaderiadistribuidoraalmacen` VALUES ('11', '2', '1', '1', '1', '7', '3', '1', '1', '4', '1', '2019-03-24 01:59:08', '2019-03-24 05:00:45', '24-03-2019');
INSERT INTO `logistpanaderiadistribuidoraalmacen` VALUES ('12', '2', '1', '2', '1', '23', '23', '1', '1', '0', '1', '2019-03-24 02:00:06', '2019-03-24 04:55:15', '24-03-2019');
INSERT INTO `logistpanaderiadistribuidoraalmacen` VALUES ('15', '2', '1', '2', '1', '5', '5', '1', '1', '0', '1', '2019-03-24 02:11:28', '2019-03-24 04:55:17', '24-03-2019');
INSERT INTO `logistpanaderiadistribuidoraalmacen` VALUES ('13', '2', '1', '2', '1', '23', '23', '1', '1', '0', '1', '2019-03-24 02:04:55', '2019-03-24 04:40:49', '24-03-2019');
INSERT INTO `logistpanaderiadistribuidoraalmacen` VALUES ('14', '2', '1', '2', '1', '23', '23', '1', '1', '0', '1', '2019-03-24 02:10:20', '2019-03-24 04:55:19', '24-03-2019');
INSERT INTO `logistpanaderiadistribuidoraalmacen` VALUES ('17', '2', '10', '20', '16', '100', '99', '2', '1', '1', '1', '2019-03-27 19:13:09', '2019-03-27 19:13:37', '27-03-2019');

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
-- Table structure for `logistpanaderiaordenoperaciondetalle`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperaciondetalle`;
CREATE TABLE `logistpanaderiaordenoperaciondetalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `cod_Asignacion` varchar(255) DEFAULT NULL,
  `id_Ordendeopeaciones` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordenoperaciondetalle
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiaordenoperaciones`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperaciones`;
CREATE TABLE `logistpanaderiaordenoperaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechainicio` varchar(255) DEFAULT NULL,
  `fechafin` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `id_OrdenDistribucion` int(11) DEFAULT NULL,
  `activa` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordenoperaciones
-- ----------------------------
INSERT INTO `logistpanaderiaordenoperaciones` VALUES ('1', '23/03/2019', '23/03/2019', 'asef-009', null, '0', '2019-03-24 14:23:25', '2019-03-24 14:23:25');
INSERT INTO `logistpanaderiaordenoperaciones` VALUES ('2', '23/03/2019', '24/03/2019', 'asef-009', null, '0', '2019-03-24 14:41:23', '2019-03-24 14:41:23');
INSERT INTO `logistpanaderiaordenoperaciones` VALUES ('3', '23/03/2019', '24/03/2019', 'OP-201901', '1', '0', '2019-03-24 16:20:21', '2019-03-24 16:20:21');
INSERT INTO `logistpanaderiaordenoperaciones` VALUES ('4', '23/03/2019', '24/03/2019', 'OP-2019-02', '1', '0', '2019-03-24 16:21:13', '2019-03-24 16:21:13');
INSERT INTO `logistpanaderiaordenoperaciones` VALUES ('5', '23/03/2019', '24/03/2019', 'OP-2019-03', '6', '0', '2019-03-24 17:55:36', '2019-03-24 17:55:36');

-- ----------------------------
-- Table structure for `logistpanaderiaordenoperacionesasignacion`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperacionesasignacion`;
CREATE TABLE `logistpanaderiaordenoperacionesasignacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_OrdenDeOperaciones` int(11) DEFAULT NULL,
  `id_panadera` int(11) DEFAULT NULL,
  `fechaAsignacion` date DEFAULT NULL,
  `fechadespacho` date DEFAULT NULL,
  `nodeposito` varchar(255) DEFAULT NULL,
  `banco` varchar(255) DEFAULT NULL,
  `pesoTN` decimal(10,0) DEFAULT NULL,
  `Costo` decimal(10,0) DEFAULT NULL,
  `Venta` decimal(10,0) DEFAULT NULL,
  `completado` int(11) NOT NULL DEFAULT '0',
  `validasms` int(11) NOT NULL DEFAULT '0',
  `validaemail` int(11) NOT NULL DEFAULT '0',
  `NotificadoPhone` int(11) DEFAULT NULL,
  `NotificadoSMS` int(11) DEFAULT NULL,
  `NotificadoEmail` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordenoperacionesasignacion
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiaordenoperacionesasignaciondetalle`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperacionesasignaciondetalle`;
CREATE TABLE `logistpanaderiaordenoperacionesasignaciondetalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_OrdenDistribucion` int(11) DEFAULT NULL,
  `id_Distribuidora` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `id_OrdenTransporte` int(11) DEFAULT NULL,
  `id_OrdenOperacionesAsignacion|` int(11) DEFAULT NULL,
  `costo` decimal(10,0) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `id_alamcenDistribucion` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordenoperacionesasignaciondetalle
-- ----------------------------

-- ----------------------------
-- Table structure for `logistpanaderiaordenoperacionesasignaresponsables`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperacionesasignaresponsables`;
CREATE TABLE `logistpanaderiaordenoperacionesasignaresponsables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_OrdenOperaciones` int(11) DEFAULT NULL,
  `id_Responsable` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordenoperacionesasignaresponsables
-- ----------------------------
INSERT INTO `logistpanaderiaordenoperacionesasignaresponsables` VALUES ('1', '1', '1', '2019-03-24 14:23:25', '2019-03-24 14:23:25');
INSERT INTO `logistpanaderiaordenoperacionesasignaresponsables` VALUES ('2', '2', '1', '2019-03-24 14:41:23', '2019-03-24 14:41:23');
INSERT INTO `logistpanaderiaordenoperacionesasignaresponsables` VALUES ('3', '3', '1', '2019-03-24 16:20:21', '2019-03-24 16:20:21');
INSERT INTO `logistpanaderiaordenoperacionesasignaresponsables` VALUES ('4', '4', '1', '2019-03-24 16:21:13', '2019-03-24 16:21:13');
INSERT INTO `logistpanaderiaordenoperacionesasignaresponsables` VALUES ('5', '5', '1', '2019-03-24 17:55:36', '2019-03-24 17:55:36');

-- ----------------------------
-- Table structure for `logistpanaderiaordenoperacionesresponsables`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperacionesresponsables`;
CREATE TABLE `logistpanaderiaordenoperacionesresponsables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` double(11,0) DEFAULT NULL,
  `institucion` varchar(11) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `validacorreo` int(11) DEFAULT NULL,
  `validasms` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordenoperacionesresponsables
-- ----------------------------
INSERT INTO `logistpanaderiaordenoperacionesresponsables` VALUES ('1', 'jonathan jimenez', '4245116999', 'blockchain', 'obrero', 'jj@gmail.com', '0', '0', null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaproductos
-- ----------------------------
INSERT INTO `logistpanaderiaproductos` VALUES ('1', 'HARINA DE TRIGO A GRANEL', null, '1');
INSERT INTO `logistpanaderiaproductos` VALUES ('2', 'HARINA DE TRIGO EN SACO', '50', '2');

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
INSERT INTO `logistpanaderiasilo` VALUES ('1', 'SILO 1', 'DIR', '4245116999', 'correo@gmail.com');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiasiloalmacen
-- ----------------------------
INSERT INTO `logistpanaderiasiloalmacen` VALUES ('4', '1', '1', '107550', '2019-03-23 13:23:00', '2019-03-23 04:00:05');
INSERT INTO `logistpanaderiasiloalmacen` VALUES ('5', '1', '2', '499990', '2019-03-27 19:12:48', '2019-03-27 19:11:30');

-- ----------------------------
-- Table structure for `logistpanaderiasiloalmacenincorporacion`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiasiloalmacenincorporacion`;
CREATE TABLE `logistpanaderiasiloalmacenincorporacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_recarga` varchar(255) DEFAULT NULL,
  `id_Silo` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `manufactura` int(11) DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL,
  `fecha` varchar(11) DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `merma` float DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiasiloalmacenincorporacion
-- ----------------------------
INSERT INTO `logistpanaderiasiloalmacenincorporacion` VALUES ('38', '013-22032019-0013', '1', '1', '10', '0', '22/03/2019', '10000', null, 'jj', '2019-03-23 13:23:00', '2019-03-24 02:12:56');
INSERT INTO `logistpanaderiasiloalmacenincorporacion` VALUES ('39', '014*26032019*0014', '1', '2', '200', '100', '26/03/2019', '500000', '10', 'aa', '2019-03-27 19:11:30', '2019-03-27 19:13:09');
INSERT INTO `logistpanaderiasiloalmacenincorporacion` VALUES ('37', '1-21/03/2019-12', '1', '1', '47', '0', '21/03/2019', '100000', '100', 'de', '2019-03-23 04:00:05', '2019-03-24 02:10:20');

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
