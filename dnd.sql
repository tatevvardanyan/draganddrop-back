/*
Navicat MySQL Data Transfer

Source Server         : L49
Source Server Version : 100428
Source Host           : localhost:3306
Source Database       : dnd

Target Server Type    : MYSQL
Target Server Version : 100428
File Encoding         : 65001

Date: 2023-12-12 23:28:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for objects
-- ----------------------------
DROP TABLE IF EXISTS `objects`;
CREATE TABLE `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- Records of objects
-- ----------------------------
INSERT INTO `objects` VALUES ('1', 'blueberry.jpg', '0', '2023-12-12 17:11:40', '2023-12-12 19:26:02');
INSERT INTO `objects` VALUES ('2', 'cherry.jpg', '1', '2023-12-12 17:11:58', '2023-12-12 19:26:46');
INSERT INTO `objects` VALUES ('3', 'raspberries.jpg', '6', '2023-12-12 17:12:08', '2023-12-12 19:25:34');
INSERT INTO `objects` VALUES ('4', 'strabery.jpg', '7', '2023-12-12 17:12:19', '2023-12-12 19:19:47');
INSERT INTO `objects` VALUES ('5', 'blueberry.jpg', '4', '2023-12-12 17:12:33', '2023-12-12 19:27:07');
INSERT INTO `objects` VALUES ('6', 'cherry.jpg', '5', '2023-12-12 17:12:42', '2023-12-12 19:27:16');
INSERT INTO `objects` VALUES ('7', 'raspberries.jpg', '2', '2023-12-12 17:12:52', '2023-12-12 19:27:16');
INSERT INTO `objects` VALUES ('8', 'strabery.jpg', '3', '2023-12-12 17:13:02', '2023-12-12 19:13:50');
SET FOREIGN_KEY_CHECKS=1;
