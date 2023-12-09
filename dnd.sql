/*
Navicat MySQL Data Transfer

Source Server         : L49
Source Server Version : 100428
Source Host           : localhost:3306
Source Database       : dnd

Target Server Type    : MYSQL
Target Server Version : 100428
File Encoding         : 65001

Date: 2023-12-09 20:55:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for objects
-- ----------------------------
DROP TABLE IF EXISTS `objects`;
CREATE TABLE `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of objects
-- ----------------------------
INSERT INTO `objects` VALUES ('1', '1', '1702133690269strabery.jpg', 'first', '2023-12-09 14:54:50', '2023-12-09 14:54:50');
INSERT INTO `objects` VALUES ('2', '1', '1702133723896blueberry.jpg', 'second', '2023-12-09 14:55:23', '2023-12-09 14:55:23');
INSERT INTO `objects` VALUES ('3', '4', '1702133740782cherry.jpg', 'thrid', '2023-12-09 14:55:40', '2023-12-09 14:55:40');
INSERT INTO `objects` VALUES ('4', '4', '1702133782287raspberries.jpg', 'fourth', '2023-12-09 14:56:22', '2023-12-09 14:56:22');
INSERT INTO `objects` VALUES ('5', '2', '1702133806588cherry.jpg', 'fifth', '2023-12-09 14:56:46', '2023-12-09 14:56:46');
INSERT INTO `objects` VALUES ('6', '4', '1702133827222blueberry.jpg', 'sixth', '2023-12-09 14:57:07', '2023-12-09 14:57:07');
INSERT INTO `objects` VALUES ('7', '1', '1702133850517raspberries.jpg', 'seventh', '2023-12-09 14:57:30', '2023-12-09 14:57:30');
INSERT INTO `objects` VALUES ('8', '3', '1702133868995strabery.jpg', 'eighth', '2023-12-09 14:57:49', '2023-12-09 14:57:49');
SET FOREIGN_KEY_CHECKS=1;
