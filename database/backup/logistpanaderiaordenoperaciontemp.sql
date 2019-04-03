/*
Navicat MySQL Data Transfer

Source Server         : Servidor
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : netconsu_logistico

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-04-03 12:59:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `logistpanaderiaordenoperaciontemp`
-- ----------------------------
DROP TABLE IF EXISTS `logistpanaderiaordenoperaciontemp`;
CREATE TABLE `logistpanaderiaordenoperaciontemp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Cantidad` int(11) DEFAULT NULL,
  `id_Producto` int(11) DEFAULT NULL,
  `id_Panaderia` int(11) DEFAULT NULL,
  `id_OrdenOperaciones` int(11) DEFAULT NULL,
  `id_distribuidora` int(11) DEFAULT NULL,
  `id_asociado` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logistpanaderiaordenoperaciontemp
-- ----------------------------
INSERT INTO `logistpanaderiaordenoperaciontemp` VALUES ('108', '70', '1', '4', '7', '2', '442', '2019-04-03 17:28:27', '2019-04-03 17:28:27');
INSERT INTO `logistpanaderiaordenoperaciontemp` VALUES ('107', '45', '1', '3', '7', '2', '441', '2019-04-03 17:28:27', '2019-04-03 17:28:27');
INSERT INTO `logistpanaderiaordenoperaciontemp` VALUES ('106', '11', '1', '2', '7', '2', '440', '2019-04-03 17:28:27', '2019-04-03 17:28:27');
INSERT INTO `logistpanaderiaordenoperaciontemp` VALUES ('109', '20', '1', '5', '7', '2', '443', '2019-04-03 17:28:27', '2019-04-03 17:28:27');
