/*
Navicat MySQL Data Transfer

Source Server         : cn
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : trivial

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2020-06-12 14:56:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderid` int(16) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `amount` int(16) default NULL,
  `spot` varchar(255) default NULL,
  `sum_price` int(16) default NULL,
  `userid` int(16) NOT NULL,
  `viewid` int(16) NOT NULL,
  PRIMARY KEY  (`orderid`),
  KEY `order_user_fk` (`userid`),
  KEY `oeder_view_fk` (`viewid`),
  CONSTRAINT `oeder_view_fk` FOREIGN KEY (`viewid`) REFERENCES `view_infor` (`viewid`),
  CONSTRAINT `order_user_fk` FOREIGN KEY (`userid`) REFERENCES `user_infor` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', 'ffc', '150', '南极', '300', '1', '1');
INSERT INTO `order` VALUES ('2', 'lry', '150', '南极', '300', '2', '1');
INSERT INTO `order` VALUES ('3', 'admin·', '150', '南极', '300', '3', '1');
INSERT INTO `order` VALUES ('4', 'ffc', '160', '北极', '320', '1', '2');
INSERT INTO `order` VALUES ('5', 'lry', '160', '北极', '320', '2', '2');
INSERT INTO `order` VALUES ('6', 'admin·', '160', '北极', '320', '3', '2');
INSERT INTO `order` VALUES ('7', 'ffc', '150', '欢乐谷', '300', '1', '3');
INSERT INTO `order` VALUES ('8', 'lry', '150', '欢乐谷', '300', '2', '3');
INSERT INTO `order` VALUES ('9', 'admin·', '150', '欢乐谷', '300', '3', '3');

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
INSERT INTO `user_infor` VALUES ('1', 'ffc', '123', '用户', '男', 'ffc');
INSERT INTO `user_infor` VALUES ('2', 'lry', '123', '用户', '女', 'lry');
INSERT INTO `user_infor` VALUES ('3', 'admin·', '123', '用户', '男', 'admin');

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
