/*
Navicat MySQL Data Transfer

Source Server         : cn
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : trivial

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2020-06-18 21:36:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_infor
-- ----------------------------
DROP TABLE IF EXISTS `user_infor`;
CREATE TABLE `user_infor` (
  `userid` int(11) NOT NULL auto_increment,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `identity` varchar(255) NOT NULL default '用户' COMMENT '"用户"',
  `sex` varchar(255) default NULL,
  `realname` varchar(255) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_infor
-- ----------------------------
INSERT INTO `user_infor` VALUES ('2', 'lry', '123', '用户', '女', 'lry');
INSERT INTO `user_infor` VALUES ('3', 'admin', '123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('4', 'admin', '233', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('5', 'admin', '222', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('6', 'admin', '333', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('7', 'admin', '444', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('9', 'asd', '54', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('10', 'asadad', '565', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('11', 'da', '6565', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('12', 'as', '5', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('13', 'ad', '6565', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('14', 'dasdas', '5665', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('15', 'sas', '55', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('16', 'sadasd', '565', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('17', 'ssdf', '4454', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('18', 'fbgbfb', '4545', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('19', 'dfbdbf', '455', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('20', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('21', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('22', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('23', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('24', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('25', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('26', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('27', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('28', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('29', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('30', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('31', 'ffc', 'ffc123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('32', 'sz', 'sz123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('33', 'sz', 'sz123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('34', 'sz', 'sz123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('35', 'sz', 'sz123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('36', 'sz', 'sz123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('37', 'sz', 'sz123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('38', 'sz', 'sz123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('39', 'sz', 'sz123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('40', 'sz', 'sz123', '用户', '男', 'admin');
INSERT INTO `user_infor` VALUES ('41', 'sz', 'sz123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('42', 'sz', 'sz123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('43', 'sz', 'sz123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('44', 'sz', 'sz123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('45', 'sz', 'sz123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('46', 'sz', 'sz123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('47', 'sz', 'sz123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('48', 'sz', 'sz123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('49', 'sz', 'sz123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('50', 'sz', 'sz123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('51', 'sz', 'sz123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('52', 'sz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('53', 'sz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('54', 'sz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('55', 'sz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('56', 'sz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('57', 'sz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('58', 'dddd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('59', 'dddd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('60', 'dddd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('61', 'dddd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('62', 'dddd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('63', 'dddd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('64', 'dd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('65', 'dd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('66', 'dd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('67', 'dd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('68', 'dd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('69', 'dd', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('70', 'axz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('71', 'axz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('72', 'axz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('73', 'axz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('74', 'axz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('75', 'axz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('76', 'axz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('77', 'axz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('78', 'axz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('79', 'axz', '123', '用户', '女', 'admin');
INSERT INTO `user_infor` VALUES ('80', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('81', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('82', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('83', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('84', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('85', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('86', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('87', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('88', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('89', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('90', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('91', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('92', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('93', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('94', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('95', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('96', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('97', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('98', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('99', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('100', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('101', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('102', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('103', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('104', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('105', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('106', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('107', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('108', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('109', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('110', 'axz', '123', '用户', '女', 'axz');
INSERT INTO `user_infor` VALUES ('111', 'axz', '123', '用户', '女', 'axz');

-- ----------------------------
-- Table structure for user_order
-- ----------------------------
DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order` (
  `orderid` int(16) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `amount` int(16) default NULL,
  `spot` varchar(255) default NULL,
  `sum_price` int(16) default NULL,
  `userid` int(16) NOT NULL,
  `viewid` int(16) NOT NULL,
  PRIMARY KEY  (`orderid`),
  KEY `oeder_view_fk` (`viewid`),
  KEY `order_user_fk` (`userid`),
  CONSTRAINT `oeder_view_fk` FOREIGN KEY (`viewid`) REFERENCES `view_infor` (`viewid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_user_fk` FOREIGN KEY (`userid`) REFERENCES `user_infor` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_order
-- ----------------------------
INSERT INTO `user_order` VALUES ('2', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('3', 'admin', '150', '南极', '300', '3', '1');
INSERT INTO `user_order` VALUES ('5', 'lry', '160', '北极', '320', '2', '2');
INSERT INTO `user_order` VALUES ('6', 'admin', '160', '北极', '320', '3', '2');
INSERT INTO `user_order` VALUES ('8', 'lry', '150', '欢乐谷', '300', '2', '3');
INSERT INTO `user_order` VALUES ('9', 'admin', '150', '欢乐谷', '300', '3', '3');
INSERT INTO `user_order` VALUES ('11', 'dsd', '22', '北极', '22', '3', '2');
INSERT INTO `user_order` VALUES ('13', 'admin', '23', '南极', '33', '2', '3');
INSERT INTO `user_order` VALUES ('14', 'admain', '22', '北极', '33', '4', '1');
INSERT INTO `user_order` VALUES ('15', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('16', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('17', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('18', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('19', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('20', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('21', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('22', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('23', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('24', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('25', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('26', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('27', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('28', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('29', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('30', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('31', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('32', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('33', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('34', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('35', 'ffc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('36', 'ffc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('37', 'ffc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('38', 'ffc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('39', 'ffc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('40', 'ffc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('41', 'ffc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('42', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('43', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('44', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('45', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('46', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('47', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('48', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('49', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('50', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('51', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('52', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('53', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('54', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('55', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('56', 'ffc', '150', '爱丁堡', '300', '2', '1');
INSERT INTO `user_order` VALUES ('57', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('58', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('59', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('60', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('61', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('62', 'ffc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('63', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('64', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('65', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('66', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('67', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('68', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('69', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('70', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('71', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('72', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('73', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('74', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('75', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('76', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('77', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('78', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('79', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('80', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('81', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('82', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('83', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('84', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('85', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('86', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('87', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('88', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('89', 'fddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('90', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('91', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('92', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('93', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('94', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('95', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('96', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('97', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('98', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('99', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('100', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('101', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('102', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('103', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('104', 'sddddc', '150', '南极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('105', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('106', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('107', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('108', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('109', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('110', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('111', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('112', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('113', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('114', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('115', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('116', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('117', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('118', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('119', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('120', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('121', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('122', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('123', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('124', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('125', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('126', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('127', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('128', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('129', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('130', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('131', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('132', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('133', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('134', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('135', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('136', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('137', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('138', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('139', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('140', 'sddddc', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('141', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('142', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('143', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('144', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('145', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('146', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('147', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('148', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('149', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('150', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('151', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('152', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('153', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('154', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('155', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('156', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('157', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('158', 'sd', '150', '北极', '300', '2', '1');
INSERT INTO `user_order` VALUES ('159', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('160', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('161', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('162', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('163', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('164', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('165', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('166', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('167', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('168', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('169', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('170', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('171', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('172', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('173', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('174', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('175', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('176', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('177', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('178', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('179', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('180', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('181', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('182', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('183', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('184', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('185', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('186', 'sd', '150', '北极', '300', '3', '4');
INSERT INTO `user_order` VALUES ('187', 'sd', '150', '北极', '300', '3', '4');

-- ----------------------------
-- Table structure for view_infor
-- ----------------------------
DROP TABLE IF EXISTS `view_infor`;
CREATE TABLE `view_infor` (
  `viewid` int(16) NOT NULL auto_increment,
  `spot` varchar(255) default NULL,
  `place` varchar(255) NOT NULL,
  `price` decimal(16,0) default NULL,
  `brief` varchar(255) default NULL,
  `video_path` varchar(255) default NULL,
  `image_path` varchar(255) default NULL,
  PRIMARY KEY  (`viewid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of view_infor
-- ----------------------------
INSERT INTO `view_infor` VALUES ('1', '南极', '南极圈', '150', '抓企鹅', '', null);
INSERT INTO `view_infor` VALUES ('2', '北极', '北极圈', '160', '抓熊', null, null);
INSERT INTO `view_infor` VALUES ('3', '欢乐谷', '武汉', '150', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('4', '北极', '武汉', '3343', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('5', '北极', '武汉', '3434', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('6', '北极', '武汉', '434', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('7', '北极', '武汉', '4343', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('8', '北极', '武汉', '434', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('9', '北极', '武汉', '434', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('10', '北极', '武汉', '43434', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('11', '北极', '武汉', '4343', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('12', '北极', '武汉', '43', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('13', '北极', '北极圈', '3434', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('14', '北极', '北极圈', '434', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('15', '北极', '北极圈', '43', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('16', '北极', '北极圈', '343', '抓人', null, null);
INSERT INTO `view_infor` VALUES ('17', '北极', '北极圈', '323', 'sdsd', null, null);
INSERT INTO `view_infor` VALUES ('18', '南极', '南极圈', '232', '抓熊', null, null);
INSERT INTO `view_infor` VALUES ('57', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('58', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('59', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('60', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('61', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('62', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('63', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('64', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('65', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('66', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('67', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('68', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('69', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('70', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('71', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('72', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('73', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('74', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('75', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('76', '爱丁堡', '英国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('77', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('78', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('79', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('80', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('81', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('82', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('83', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('84', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('85', '巴黎圣母院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('86', '巴黎院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('87', '巴黎院', '法国', '1', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('88', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('89', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('90', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('91', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('92', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('93', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('94', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('95', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('96', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('97', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('98', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('99', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('100', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('101', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('102', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('103', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('104', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('105', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('106', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('107', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('108', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('109', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('110', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('111', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('112', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('113', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('114', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('115', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('116', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('117', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('118', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('119', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('120', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('121', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('122', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('123', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('124', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('125', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('126', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('127', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('128', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('129', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('130', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('131', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('132', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('133', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('134', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('135', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('136', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('137', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('138', '巴黎院', '法国', '11', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('139', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('140', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('141', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('142', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('143', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('144', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('145', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('146', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('147', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('148', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('149', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('150', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('151', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('152', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('153', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('154', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('155', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('156', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('157', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('158', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('159', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('160', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('161', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('162', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('163', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('164', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('165', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('166', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('167', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('168', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('169', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('170', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('171', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('172', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('173', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('174', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('175', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('176', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('177', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('178', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('179', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('180', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('181', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('182', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('183', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('184', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('185', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('186', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('187', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('188', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('189', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('190', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('191', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('192', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('193', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('194', '巴黎院', '法国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('195', '巴黎院', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('196', '巴黎院', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('197', '巴黎院', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('198', '巴黎院', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('199', '巴黎院', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('200', '巴黎院', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('201', '巴黎院', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('202', '巴黎院', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('203', '巴黎院', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('204', '巴黎院', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('205', '巴黎院', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('206', '爱定', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('207', '爱定', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('208', '爱定', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('209', '爱定', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('210', '爱定', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('211', '爱定', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('212', '爱定', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('213', '爱定', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('214', '爱定', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('215', '爱定', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('216', '爱定', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('217', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('218', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('219', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('220', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('221', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('222', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('223', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('224', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('225', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('226', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('227', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('228', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('229', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('230', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('231', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('232', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('233', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('234', '皇后镇', '英国', '131', '教堂', null, null);
INSERT INTO `view_infor` VALUES ('235', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('236', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('237', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('238', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('239', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('240', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('241', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('242', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('243', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('244', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('245', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('246', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('247', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('248', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('249', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('250', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('251', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('252', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('253', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('254', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('255', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('256', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('257', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('258', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('259', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('260', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('261', '皇后镇', '英国', '131', '蹦极', null, null);
INSERT INTO `view_infor` VALUES ('262', '皇后镇', '英国', '131', '蹦极', null, null);
