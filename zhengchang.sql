/*
Navicat MySQL Data Transfer

Source Server         : yangling
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : zhengchang

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2016-10-04 13:32:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ad`
-- ----------------------------
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `photo` text,
  `pics` text,
  `content` text,
  `addtime` int(20) DEFAULT NULL,
  `updatetime` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES ('11', '方式', '', 'Photoii/1475117037909.jpeg', '', '', '1475117037', null);

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `content` text,
  `protime` int(20) DEFAULT NULL,
  `uptime` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('3', '关于我们', '', '广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团<br />\r\n专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口<br />\r\n是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领<br />\r\n内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不<br />\r\n品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速<br />\r\n以精英设计队伍、创新设计思维、完善售后服务。', '1474001891', '1474094112');
INSERT INTO `article` VALUES ('4', '公司介绍', '', '广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。\r\n广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。\r\n诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团\r\n队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。\r\n广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，\r\n以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高\r\n度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。<br />\r\n<p>\r\n	广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心\r\n服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，\r\n以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高\r\n度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、\r\n完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口\r\n碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。\r\n</p>', '1474038942', null);
INSERT INTO `article` VALUES ('5', '公司荣誉', '', '广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。\r\n广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。\r\n诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团\r\n队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。\r\n广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，\r\n以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高\r\n度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。<br />\r\n<p>\r\n	广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心\r\n服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，\r\n以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高\r\n度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、\r\n完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口\r\n碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。\r\n</p>', '1474251393', null);
INSERT INTO `article` VALUES ('6', '公司简介', '', '广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。\r\n广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。\r\n诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团\r\n队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。\r\n广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，\r\n以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高\r\n度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。<br />\r\n<p>\r\n	广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心\r\n服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，\r\n以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高\r\n度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、\r\n完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口\r\n碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。\r\n</p>', '1474251409', null);
INSERT INTO `article` VALUES ('7', '公司文化', '', '广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。\r\n广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。\r\n诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团\r\n队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。\r\n广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所\r\n想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，\r\n以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高\r\n度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。<br />\r\n<p>\r\n	广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心\r\n服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，\r\n以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高\r\n度赞誉。诚信是打不倒的品牌，口碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、\r\n完善售后服务，迅速成为设计领域内的品牌团队。专业施工队伍为客户精心服务，想业主之所想，用最细微的精心赢得了客户的高度赞誉。诚信是打不倒的品牌，口\r\n碑是用不完的资本。广州CINTA装饰设计有限公司，以精英设计队伍、创新设计思维、完善售后服务，迅速成为设计领域内的品牌团队。\r\n</p>', '1474251432', null);

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `pics` varchar(100) DEFAULT NULL,
  `content` text,
  `addtime` int(20) DEFAULT NULL,
  `updatetime` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '轮播主图1', '222', 'Photoii/1475119648835.jpeg', '', '', '1475117933', '1475119648');
INSERT INTO `banner` VALUES ('3', '轮播主图1', '', 'Photoii/147511799594.png', '', '', '1475117995', null);
INSERT INTO `banner` VALUES ('4', '轮播主图1', '', 'Photoii/1475155353210.jpeg', '', '', '1475155353', null);
INSERT INTO `banner` VALUES ('5', '公司介绍banner', '', 'Photoii/1475155674476.png', '', '', '1475155674', null);
INSERT INTO `banner` VALUES ('6', '新闻中心banner', '', 'Photoii/1475155747103.png', '', '', '1475155747', null);
INSERT INTO `banner` VALUES ('7', '产品中心banner', '', 'Photoii/1475155822889.png', '', '', '1475155822', null);
INSERT INTO `banner` VALUES ('8', '联系我们banner', '', 'Photoii/1475155862176.png', '', '', '1475155862', null);
INSERT INTO `banner` VALUES ('9', '轮播主图1', '', 'Photoii/1475195609643.jpeg', '', '', '1475195609', null);

-- ----------------------------
-- Table structure for `contact_manner`
-- ----------------------------
DROP TABLE IF EXISTS `contact_manner`;
CREATE TABLE `contact_manner` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postalcode` int(50) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `telephone` int(100) DEFAULT NULL,
  `faxes` varchar(100) DEFAULT NULL,
  `mailbox` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact_manner
-- ----------------------------
INSERT INTO `contact_manner` VALUES ('1', '广州CINTA装饰设计有限公司', '广东省广州市白云区永泰', '312400', '400 - 678 - 3567', '575', '0575-83220818 ', 'chinakeon@163.com');

-- ----------------------------
-- Table structure for `contact_us`
-- ----------------------------
DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE `contact_us` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `postmail` varchar(50) DEFAULT NULL,
  `content` text,
  `addtime` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact_us
-- ----------------------------
INSERT INTO `contact_us` VALUES ('5', 'fsd', '0', 'fsd', 'fs', '1474385423');
INSERT INTO `contact_us` VALUES ('10', 'fse', '0', 'fs', 'dfs', '1474442835');
INSERT INTO `contact_us` VALUES ('11', '公司介绍', '0', '的g', '发', '1474452182');

-- ----------------------------
-- Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `addtime` int(20) DEFAULT NULL,
  `updatetime` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('1', '土巴兔装修网', 'https://www.baidu.com/', '1474387778', null);
INSERT INTO `friend` VALUES ('2', '湖南装修网', 'https://www.baidu.com/', '1474387878', null);
INSERT INTO `friend` VALUES ('3', '河南装修网', 'https://www.baidu.com/', '1474387911', null);
INSERT INTO `friend` VALUES ('4', '土巴图装修网', 'https://www.baidu.com/', '1474387935', null);
INSERT INTO `friend` VALUES ('5', '土巴图装修网', 'https://www.baidu.com/', '1474387941', null);
INSERT INTO `friend` VALUES ('6', '土巴图装修网', 'https://www.baidu.com/', '1474387946', null);
INSERT INTO `friend` VALUES ('7', '土巴图装修网', 'https://www.baidu.com/', '1474387953', null);
INSERT INTO `friend` VALUES ('8', '土巴图装修网', 'https://www.baidu.com/', '1474387982', null);
INSERT INTO `friend` VALUES ('9', '土巴图装修网', 'https://www.baidu.com/', '1474387987', null);
INSERT INTO `friend` VALUES ('10', '土巴图装修网', 'https://www.baidu.com/', '1474387992', null);
INSERT INTO `friend` VALUES ('11', '土巴图装修网', 'https://www.baidu.com/', '1474387998', '1474388396');
INSERT INTO `friend` VALUES ('12', '土巴图装修网', 'https://www.baidu.com/', '1474388867', null);
INSERT INTO `friend` VALUES ('13', '土巴图装修网', 'https://www.baidu.com/', '1474388874', null);
INSERT INTO `friend` VALUES ('14', '土巴图装修网', 'https://www.baidu.com/', '1474388878', '1475196261');

-- ----------------------------
-- Table structure for `indexconcat`
-- ----------------------------
DROP TABLE IF EXISTS `indexconcat`;
CREATE TABLE `indexconcat` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `headertel` varchar(20) DEFAULT NULL,
  `alltel` varchar(20) DEFAULT NULL,
  `hottel` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexconcat
-- ----------------------------
INSERT INTO `indexconcat` VALUES ('1', '0731-20208282 ', '020-25869589 ', '123458952', '586485326@163.com ', '广东省广州市白云区永泰恒企大厦');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `productpig` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float(20,0) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `pics` text,
  `house` varchar(20) DEFAULT NULL,
  `serve` varchar(8) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `protime` int(11) DEFAULT NULL,
  `update` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('17', '51', ' 别墅家居装修', '260000', 'Photoii/1474449848398.jpeg', 'Photoii/147444853243.jpeg|Photoii/1474448532708.jpeg|Photoii/1474448532212.jpeg|', '多户', '智能', '10000M', '1474011213', '1474449944');
INSERT INTO `product` VALUES ('18', '51', '别墅家居装修', '8220000', 'Photoii/147445000739.jpeg', 'Photoii/147445000729.jpeg|Photoii/1474450007675.jpeg|Photoii/1474450007205.jpeg|', '单户', '智能', '10000M', '1474011244', '1474450007');
INSERT INTO `product` VALUES ('19', '51', '别墅家居装修', '54564', 'Photoii/147445007950.jpeg', 'Photoii/1474450079439.jpeg|Photoii/1474450079572.jpeg|Photoii/1474450079367.jpeg|', '5544', '填入', '10020', '1474011263', '1474450079');
INSERT INTO `product` VALUES ('20', '51', '别墅家居装修', '5455', 'Photoii/1474450300761.jpeg', 'Photoii/1474450300826.jpeg|Photoii/1474450300268.jpeg|Photoii/1474450300543.jpeg|', '大户', '智能', '60000', '1474011287', '1474450300');
INSERT INTO `product` VALUES ('21', '51', '别墅家居装修', '400000', 'Photoii/1474451136351.jpeg', 'Photoii/1474451136478.jpeg|Photoii/1474451136281.jpeg|Photoii/1474451136293.jpeg|', '大户', '智能', '10000M', '1474011301', '1474451136');
INSERT INTO `product` VALUES ('22', '51', '别墅家居装修', '50000', 'Photoii/1474535611733.jpeg', 'Photoii/1474451172953.jpeg|Photoii/1474451172556.jpeg|Photoii/1474451172698.jpeg|', '大户', '智能', '60000', '1474011320', '1474535611');
INSERT INTO `product` VALUES ('23', '51', '别墅家居装修', '70000', 'Photoii/1474451207147.jpeg', 'Photoii/1474451207372.jpeg|Photoii/1474451207271.jpeg|Photoii/1474451207362.jpeg|', '大户', '智能', '10000M', '1474011356', '1474451207');
INSERT INTO `product` VALUES ('24', '51', '别墅家居装修', '2000000000', 'Photoii/1474451749904.jpeg', 'Photoii/1474451749783.jpeg|Photoii/1474451749746.jpeg|Photoii/1474451749412.jpeg|', '大户', '智能', '10000M', '1474011371', '1474451749');
INSERT INTO `product` VALUES ('25', '51', '别墅家居装修', '7000000', 'Photoii/1474451785722.jpeg', 'Photoii/1474451785470.jpeg|Photoii/1474451785816.jpeg|Photoii/1474451785267.jpeg|', '大户', '智能', '10000M', '1474011385', '1474451785');
INSERT INTO `product` VALUES ('26', '51', '别墅家居装修', '70000', 'Photoii/1474451955118.jpeg', 'Photoii/1474451955503.jpeg|Photoii/1474451955956.jpeg|Photoii/1474451955214.jpeg|', '大户', '智能', '10000M', '1474011401', '1474451955');
INSERT INTO `product` VALUES ('27', '52', '办公装修案例', '9000000', 'Photoii/1474451988274.jpeg', 'Photoii/1474451988569.jpeg|Photoii/1474451988680.jpeg|Photoii/1474451988330.jpeg|', '大户', '智能', '10000M', '1474012025', '1474451988');
INSERT INTO `product` VALUES ('28', '52', '办公装修案例', '7000000', 'Photoii/1474012053635.png', 'Photoii/147455431013.png|Photoii/1474554310781.png|Photoii/1474554310470.png|', '大户', '智能', '10000M', '1474012053', '1474554310');
INSERT INTO `product` VALUES ('29', '52', '办公装修案例', '80000', 'Photoii/1474452428775.jpeg', 'Photoii/1474452428640.jpeg|Photoii/1474452428465.jpeg|Photoii/1474452428172.jpeg|', '大户', '智能', '60000', '1474012076', '1474452428');
INSERT INTO `product` VALUES ('30', '52', '办公装修案例', '899999989760', 'Photoii/1474452386680.jpeg', 'Photoii/1474452386463.jpeg|Photoii/1474452386543.jpeg|Photoii/1474452386335.jpeg|', '大户', '智能', '60000', '1474012093', '1474452386');
INSERT INTO `product` VALUES ('31', '52', '办公装修案例', '2000000000', 'Photoii/1474451707470.jpeg', 'Photoii/1474451707366.jpeg|Photoii/1474451707441.jpeg|Photoii/1474451707652.jpeg|', '大户', '智能', '10000M', '1474012122', '1474451707');
INSERT INTO `product` VALUES ('32', '52', '办公装修案例', '50000', 'Photoii/1474451664433.jpeg', 'Photoii/1474451664610.jpeg|Photoii/1474451664989.jpeg|Photoii/1474451664255.jpeg|', '大户', '智能', '10020', '1474012137', '1474451664');
INSERT INTO `product` VALUES ('33', '52', '办公装修案例', '40000000', 'Photoii/1474451576590.jpeg', 'Photoii/1474451576149.jpeg|Photoii/1474451576648.jpeg|Photoii/1474451576507.jpeg|', '大户', '智能', '10000M', '1474012154', '1474451576');
INSERT INTO `product` VALUES ('34', '52', '办公装修案例', '900000000', 'Photoii/147445162487.jpeg', 'Photoii/1474451624576.jpeg|Photoii/1474451624215.jpeg|Photoii/1474451624991.jpeg|', '大户', '智能', '60000', '1474012172', '1474451624');
INSERT INTO `product` VALUES ('35', '52', '办公装修案例', '1000', 'Photoii/147445131879.jpeg', 'Photoii/1474554224891.png|Photoii/1474554224997.png|Photoii/1474554224262.png|', '01', '01', '01', '1474012187', '1474554224');
INSERT INTO `product` VALUES ('36', '52', '办公装修案例', '30000', 'Photoii/1474451299694.jpeg', 'Photoii/147445129945.jpeg|Photoii/1474451299724.jpeg|Photoii/1474451299718.jpeg|', '打户', '智能', '10000M', '1474012203', '1474451299');
INSERT INTO `product` VALUES ('37', '53', '海天酒店客房', '6000', 'Photoii/1474451255437.jpeg', 'Photoii/14744512551.jpeg|Photoii/147445125582.jpeg|Photoii/1474451255128.jpeg|', '大户', '智能', '10000M', '1474091089', '1474451255');
INSERT INTO `product` VALUES ('38', '53', '海天酒店客房', '6000', 'Photoii/1474451094715.jpeg', 'Photoii/1474451094133.jpeg|Photoii/1474451094853.jpeg|Photoii/1474451094121.jpeg|', '大户', '智能', '10000M', '1474091123', '1474451094');
INSERT INTO `product` VALUES ('39', '53', '海天酒店客房', '20000', 'Photoii/1474451050312.jpeg', 'Photoii/1474451050122.jpeg|Photoii/1474451050830.jpeg|Photoii/147445105018.jpeg|', '大户', '智能', '10020', '1474091141', '1474451050');
INSERT INTO `product` VALUES ('40', '53', '海天酒店客房', '6000', 'Photoii/1474450997422.jpeg', 'Photoii/1474450997101.jpeg|Photoii/1474450997742.jpeg|Photoii/1474450997887.jpeg|', '大户', '智能', '10000M', '1474091153', '1474450997');
INSERT INTO `product` VALUES ('41', '53', '海天酒店客房', '2000', 'Photoii/1474450953228.jpeg', 'Photoii/1474450953355.jpeg|Photoii/1474450953805.jpeg|Photoii/1474450953342.jpeg|', '大户', '智能', '10000M', '1474091173', '1474450953');
INSERT INTO `product` VALUES ('42', '53', '海天酒店客房', '1000', 'Photoii/1474450918827.jpeg', 'Photoii/1474450918227.jpeg|Photoii/1474450918621.jpeg|Photoii/1474450918140.jpeg|', '大户', '智能', '10000M', '1474091190', '1474450918');
INSERT INTO `product` VALUES ('43', '53', '海天酒店客房', '20000', 'Photoii/1474450873363.jpeg', 'Photoii/1474450873298.jpeg|Photoii/147445087383.jpeg|Photoii/1474450873220.jpeg|', '大户', '智能', '10000M', '1474091203', '1474450873');
INSERT INTO `product` VALUES ('44', '53', '海天酒店客房', '10000', 'Photoii/1474450488809.jpeg', 'Photoii/1474450488155.jpeg|Photoii/1474450488998.jpeg|Photoii/1474450488678.jpeg|', '大户', '智能', '10000M', '1474091219', '1474450488');
INSERT INTO `product` VALUES ('45', '53', '海天酒店客房', '10000', 'Photoii/1474450454149.jpeg', 'Photoii/147445045443.jpeg|Photoii/1474450454904.jpeg|Photoii/1474450454910.jpeg|', '大户', '智能', '10000M', '1474091232', '1474450454');
INSERT INTO `product` VALUES ('46', '53', '海天酒店客房', '62000', 'Photoii/1474450410350.jpeg', 'Photoii/1474450410611.jpeg|Photoii/1474450410948.jpeg|Photoii/1474450410334.jpeg|', '大户', '智能', '10020', '1474091245', '1474450410');
INSERT INTO `product` VALUES ('47', '53', '海天酒店客房', '82525', 'Photoii/1474450374126.jpeg', 'Photoii/1474450374545.jpeg|Photoii/1474450374871.jpeg|Photoii/1474450374742.jpeg|', '87', '87', '87', '1474091256', '1474450374');
INSERT INTO `product` VALUES ('48', '53', '海天酒店客房', '5455', 'Photoii/1474450341272.jpeg', 'Photoii/1474450341743.jpeg|Photoii/1474450341269.jpeg|Photoii/1474450341502.jpeg|', '5', '45', '54', '1474091268', '1474450341');

-- ----------------------------
-- Table structure for `zc_category`
-- ----------------------------
DROP TABLE IF EXISTS `zc_category`;
CREATE TABLE `zc_category` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `catname` varchar(50) DEFAULT NULL,
  `level` smallint(2) DEFAULT NULL,
  `module` varchar(20) DEFAULT NULL,
  `pig` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zc_category
-- ----------------------------
INSERT INTO `zc_category` VALUES ('29', '首页导航', '1', 'nav', '0');
INSERT INTO `zc_category` VALUES ('30', 'Home首页', '2', 'Index', '29');
INSERT INTO `zc_category` VALUES ('31', '公司介绍', '2', 'Company', '29');
INSERT INTO `zc_category` VALUES ('32', '新闻中心', '2', 'News', '29');
INSERT INTO `zc_category` VALUES ('33', '产品中心', '2', 'Product', '29');
INSERT INTO `zc_category` VALUES ('34', '联系我们', '2', 'Contact_us', '29');
INSERT INTO `zc_category` VALUES ('46', '公司简介', '3', 'synopsis', '31');
INSERT INTO `zc_category` VALUES ('47', '公司文化', '3', 'Kultur', '31');
INSERT INTO `zc_category` VALUES ('48', '公司荣誉', '3', 'glory', '31');
INSERT INTO `zc_category` VALUES ('49', '公司新闻', '3', 'Company', '32');
INSERT INTO `zc_category` VALUES ('50', '行业新闻', '3', 'Calling', '32');
INSERT INTO `zc_category` VALUES ('51', '家居装修', '3', 'family', '33');
INSERT INTO `zc_category` VALUES ('52', '办公装修', '3', 'work', '33');
INSERT INTO `zc_category` VALUES ('53', '酒店客房', '3', 'ginshop', '33');
INSERT INTO `zc_category` VALUES ('54', '(联系我们页)联系方式', '3', 'mode', '34');
INSERT INTO `zc_category` VALUES ('55', '在线留言', '3', 'word', '34');
INSERT INTO `zc_category` VALUES ('56', '相关新闻', '3', 'News', '32');
INSERT INTO `zc_category` VALUES ('57', '热门推荐', '3', 'News', '32');
INSERT INTO `zc_category` VALUES ('58', '产品新闻', '3', 'News', '32');
INSERT INTO `zc_category` VALUES ('59', '(首页)联系方式', '3', 'nav', '34');

-- ----------------------------
-- Table structure for `zc_group`
-- ----------------------------
DROP TABLE IF EXISTS `zc_group`;
CREATE TABLE `zc_group` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `rule` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zc_group
-- ----------------------------
INSERT INTO `zc_group` VALUES ('1', '超级管理员', 'all');
INSERT INTO `zc_group` VALUES ('2', '新闻编辑员', '1,2,3,4,5,6,9,10,11,12,13,14,15,16,17,18,19,20,21,');
INSERT INTO `zc_group` VALUES ('4', '网站管理员', '1,2,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23');
INSERT INTO `zc_group` VALUES ('5', '广告编辑员', '4,5,6,18,19,20,21,22,23');

-- ----------------------------
-- Table structure for `zc_manager`
-- ----------------------------
DROP TABLE IF EXISTS `zc_manager`;
CREATE TABLE `zc_manager` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `groupid` varchar(50) DEFAULT NULL,
  `logintime` int(20) DEFAULT NULL,
  `loginIP` varchar(255) DEFAULT NULL,
  `loginnum` int(8) DEFAULT NULL,
  `addtime` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zc_manager
-- ----------------------------
INSERT INTO `zc_manager` VALUES ('7', 'admin', '202cb962ac59075b964b07152d234b70', '开发者', '123', '1', '1475558607', '', '41', '1473045800');
INSERT INTO `zc_manager` VALUES ('29', 'abc', '202cb962ac59075b964b07152d234b70', '123', '123', '5', '1474627473', '', '2', '1474128803');
INSERT INTO `zc_manager` VALUES ('35', '123', '202cb962ac59075b964b07152d234b70', '123', '123', '5', null, null, null, '1475212087');

-- ----------------------------
-- Table structure for `zc_menu`
-- ----------------------------
DROP TABLE IF EXISTS `zc_menu`;
CREATE TABLE `zc_menu` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pid` int(8) DEFAULT NULL,
  `m` varchar(20) DEFAULT NULL,
  `c` varchar(20) DEFAULT NULL,
  `a` varchar(20) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `mtype` smallint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zc_menu
-- ----------------------------
INSERT INTO `zc_menu` VALUES ('1', '管理员管理', '0', 'Admin', 'Manager', 'index', null, null);
INSERT INTO `zc_menu` VALUES ('2', '添加管理员', '1', 'Admin', 'Manager', 'add', 'index.php?m=Admin&c=Manager&a=add', null);
INSERT INTO `zc_menu` VALUES ('3', '管理员列表', '1', 'Admin', 'Manager', 'index', 'index.php?m=Admin&c=Manager&a=index', null);
INSERT INTO `zc_menu` VALUES ('4', '菜单管理', '0', 'Admin', 'Menu', 'index', 'index.php?m=Admin&c=Menu&a=index', null);
INSERT INTO `zc_menu` VALUES ('5', '添加菜单', '4', 'Admin', 'Menu', 'add', 'index.php?m=Admin&c=Menu&a=add', null);
INSERT INTO `zc_menu` VALUES ('6', '菜单列表', '4', 'Admin', 'Menu', 'index', 'index.php?m=Admin&c=Menu&a=index', null);
INSERT INTO `zc_menu` VALUES ('9', '新闻管理', '0', 'Admin', 'News', 'index', 'index.php?m=Admin&c=News&a=index', null);
INSERT INTO `zc_menu` VALUES ('10', '新闻添加', '9', 'Admin', 'News', 'add', 'index.php?m=Admin&c=News&a=add', null);
INSERT INTO `zc_menu` VALUES ('11', '新闻列表', '9', 'Admin', 'News', 'index', 'index.php?m=Admin&c=News&a=index', null);
INSERT INTO `zc_menu` VALUES ('12', '栏目分类模块', '0', 'Admin', 'Category', 'index', 'index.php?m=Admin&c=Category&a=index', null);
INSERT INTO `zc_menu` VALUES ('13', '添加栏目', '12', 'Admin', 'Category', 'add', 'index.php?m=Admin&c=Category&a=add', null);
INSERT INTO `zc_menu` VALUES ('14', '栏目列表', '12', 'Admin', 'Category', 'index', 'index.php?m=Admin&c=Category&a=index', null);
INSERT INTO `zc_menu` VALUES ('15', '产品管理', '0', 'Admin', 'product', 'index', 'index.php?m=Admin&c=product&a=index', null);
INSERT INTO `zc_menu` VALUES ('16', '产品添加', '15', 'Admin', 'Product', 'add', 'index.php?m=Admin&c=Product&a=add', null);
INSERT INTO `zc_menu` VALUES ('17', '产品列表', '15', 'Admin', 'Product', 'index', 'index.php?m=Admin&c=Product&a=index', null);
INSERT INTO `zc_menu` VALUES ('18', '广告管理', '0', 'Admin', 'Ad', 'index', 'index.php?m=Admin&c=Ad&a=index', null);
INSERT INTO `zc_menu` VALUES ('19', '广告添加', '18', 'Admin', 'Ad', 'add', 'index.php?m=Admin&c=Ad&a=add', null);
INSERT INTO `zc_menu` VALUES ('20', '广告列表', '18', 'Admin', 'Ad', 'index', 'index.php?m=Admin&c=Ad&a=index', null);
INSERT INTO `zc_menu` VALUES ('21', '文章管理', '0', 'Admin', 'Article', 'index', 'index.php?m=Admin&c=Article&a=index', null);
INSERT INTO `zc_menu` VALUES ('22', '添加文章', '21', 'Admin', 'Article', 'add', 'index.php?m=Admin&c=Article&a=add', null);
INSERT INTO `zc_menu` VALUES ('23', '文章列表', '21', 'Admin', 'Article', 'index', 'index.php?m=Admin&c=Article&a=index', null);
INSERT INTO `zc_menu` VALUES ('25', '管理员组别（权限）管理', '0', 'Admin', 'ManagerGroup', 'index', 'index.php?m=Admin&c=ManagerGroup&a=index', null);
INSERT INTO `zc_menu` VALUES ('26', '添加组别', '25', 'Admin', 'ManagerGroup', 'add', 'index.php?m=Admin&c=ManagerGroup&a=add', null);
INSERT INTO `zc_menu` VALUES ('27', '组别列表', '25', 'Admin', 'ManagerGroup', 'index', 'index.php?m=Admin&c=ManagerGroup&a=index', null);
INSERT INTO `zc_menu` VALUES ('28', '联系我们', '0', 'Admin', 'Contact_us', 'index', 'index.php?m=Admin&c=Contact_us&a=index', null);
INSERT INTO `zc_menu` VALUES ('29', '（联系我们页）联系方式', '28', 'Admin', 'Contact_us', 'index', 'index.php?m=Admin&c=Contact_us&a=index', null);
INSERT INTO `zc_menu` VALUES ('30', '在线留言', '28', 'Admin', 'Contact_us', 'word', 'index.php?m=Admin&c=Contact_us&a=word', null);
INSERT INTO `zc_menu` VALUES ('35', '友情链接', '0', 'Admin', 'Friend', 'index', 'index.php?m=Admin&c=Friend&a=index', null);
INSERT INTO `zc_menu` VALUES ('36', '友情链接列表', '35', 'Admin', 'Friend', 'index', 'index.php?m=Admin&c=Friend&a=index', null);
INSERT INTO `zc_menu` VALUES ('37', '友情链接添加', '35', 'Admin', 'Friend', 'add', 'index.php?m=Admin&c=Friend&a=add', null);
INSERT INTO `zc_menu` VALUES ('39', '2', '38', '1', '', '', 'index.php?m=1&c=&a=', null);
INSERT INTO `zc_menu` VALUES ('40', '(首页)联系方式', '28', 'Admin', 'Indexconcat', 'index', 'index.php?m=Admin&c=Indexconcat&a=index', null);
INSERT INTO `zc_menu` VALUES ('41', 'banner图管理', '0', 'Admin', 'Banner', 'index', 'index.php?m=Admin&c=Banner&a=index', null);
INSERT INTO `zc_menu` VALUES ('42', 'banner图列表', '41', 'Admin', 'Banner', 'index', 'index.php?m=Admin&c=Banner&a=index', null);
INSERT INTO `zc_menu` VALUES ('43', 'banner图添加', '41', 'Admin', 'Banner', 'add', 'index.php?m=Admin&c=Banner&a=add', null);

-- ----------------------------
-- Table structure for `zc_news`
-- ----------------------------
DROP TABLE IF EXISTS `zc_news`;
CREATE TABLE `zc_news` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `newpig` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `from` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `pics` text,
  `content` text,
  `addtime` int(20) DEFAULT NULL,
  `updatetime` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zc_news
-- ----------------------------
INSERT INTO `zc_news` VALUES ('1', '49', '▪  品牌家装公司PK野装队', '', '', 'Photoii/1474160980729.jpeg', '', '和麦家装饰签定合同开始历时3月，终于在2014年圣诞时把新家布置完毕，算是在这个圣诞送给自已的一个礼物吧。也感谢我的父母亲，每个双休不辞辛苦从老\r\n家开车赶过来陪同我一起跑市场，真是天下父母心，放心吧，女儿一定会好好孝顺你们的。\r\n&nbsp;&nbsp;&nbsp;都说今年流行简美的风格，只是刚开始设计的时候，我还确定不了风格，喜欢美式也喜欢法式，又喜欢带有点欧州乡村风格。不过对于现在的风格我还是很满\r\n意的，也很喜欢。设计师孙是通过19楼业主的装修日记找到他的，从日记中看出业主对他的评价很高，那套装修的风格我也喜欢，就联系了孙，没在找第二家了，\r\n是不是觉得我少根筋，都不比较下，呵呵，不过主要是在第一次和孙沟通中，觉得他蛮实在的，我妈妈对他影响也蛮好的。哈哈，装修花了不少钱，下次在装修估计\r\n是要嫁人了，就让我败一回吧。', '1474008220', '1474160980');
INSERT INTO `zc_news` VALUES ('2', '49', '▪  戴江平：“互联网+家装”的关键是品质+服务', '', '', 'Photoii/1474160949272.jpeg', '', '和麦家装饰签定合同开始历时3月，终于在2014年圣诞时把新家布置完毕，算是在这个圣诞送给自已的一个礼物吧。也感谢我的父母亲，每个双休不辞辛苦从老\r\n家开车赶过来陪同我一起跑市场，真是天下父母心，放心吧，女儿一定会好好孝顺你们的。\r\n&nbsp;&nbsp;&nbsp;都说今年流行简美的风格，只是刚开始设计的时候，我还确定不了风格，喜欢美式也喜欢法式，又喜欢带有点欧州乡村风格。不过对于现在的风格我还是很满\r\n意的，也很喜欢。设计师孙是通过19楼业主的装修日记找到他的，从日记中看出业主对他的评价很高，那套装修的风格我也喜欢，就联系了孙，没在找第二家了，\r\n是不是觉得我少根筋，都不比较下，呵呵，不过主要是在第一次和孙沟通中，觉得他蛮实在的，我妈妈对他影响也蛮好的。哈哈，装修花了不少钱，下次在装修估计\r\n是要嫁人了，就让我败一回吧。', '1474008282', '1474160949');
INSERT INTO `zc_news` VALUES ('3', '49', '▪  高端家装明码标价服务升级', '', '', 'Photoii/1474160891382.jpeg', '', '和麦家装饰签定合同开始历时3月，终于在2014年圣诞时把新家布置完毕，算是在这个圣诞送给自已的一个礼物吧。也感谢我的父母亲，每个双休不辞辛苦从老\r\n家开车赶过来陪同我一起跑市场，真是天下父母心，放心吧，女儿一定会好好孝顺你们的。\r\n&nbsp;&nbsp;&nbsp;都说今年流行简美的风格，只是刚开始设计的时候，我还确定不了风格，喜欢美式也喜欢法式，又喜欢带有点欧州乡村风格。不过对于现在的风格我还是很满\r\n意的，也很喜欢。设计师孙是通过19楼业主的装修日记找到他的，从日记中看出业主对他的评价很高，那套装修的风格我也喜欢，就联系了孙，没在找第二家了，\r\n是不是觉得我少根筋，都不比较下，呵呵，不过主要是在第一次和孙沟通中，觉得他蛮实在的，我妈妈对他影响也蛮好的。哈哈，装修花了不少钱，下次在装修估计\r\n是要嫁人了，就让我败一回吧。', '1474008312', '1474160891');
INSERT INTO `zc_news` VALUES ('4', '49', '▪  进口家具“火热”下的冷思考', '', '', 'Photoii/1474160858438.jpeg', '', '和麦家装饰签定合同开始历时3月，终于在2014年圣诞时把新家布置完毕，算是在这个圣诞送给自已的一个礼物吧。也感谢我的父母亲，每个双休不辞辛苦从老\r\n家开车赶过来陪同我一起跑市场，真是天下父母心，放心吧，女儿一定会好好孝顺你们的。\r\n&nbsp;&nbsp;&nbsp;都说今年流行简美的风格，只是刚开始设计的时候，我还确定不了风格，喜欢美式也喜欢法式，又喜欢带有点欧州乡村风格。不过对于现在的风格我还是很满\r\n意的，也很喜欢。设计师孙是通过19楼业主的装修日记找到他的，从日记中看出业主对他的评价很高，那套装修的风格我也喜欢，就联系了孙，没在找第二家了，\r\n是不是觉得我少根筋，都不比较下，呵呵，不过主要是在第一次和孙沟通中，觉得他蛮实在的，我妈妈对他影响也蛮好的。哈哈，装修花了不少钱，下次在装修估计\r\n是要嫁人了，就让我败一回吧。', '1474008359', '1474160858');
INSERT INTO `zc_news` VALUES ('5', '49', '▪  装修旺季来临 家装企业迎来新一轮“火拼”', '', '', 'Photoii/1474160817464.jpeg', '', '和麦家装饰签定合同开始历时3月，终于在2014年圣诞时把新家布置完毕，算是在这个圣诞送给自已的一个礼物吧。也感谢我的父母亲，每个双休不辞辛苦从老\r\n家开车赶过来陪同我一起跑市场，真是天下父母心，放心吧，女儿一定会好好孝顺你们的。\r\n&nbsp;&nbsp;&nbsp;都说今年流行简美的风格，只是刚开始设计的时候，我还确定不了风格，喜欢美式也喜欢法式，又喜欢带有点欧州乡村风格。不过对于现在的风格我还是很满\r\n意的，也很喜欢。设计师孙是通过19楼业主的装修日记找到他的，从日记中看出业主对他的评价很高，那套装修的风格我也喜欢，就联系了孙，没在找第二家了，\r\n是不是觉得我少根筋，都不比较下，呵呵，不过主要是在第一次和孙沟通中，觉得他蛮实在的，我妈妈对他影响也蛮好的。哈哈，装修花了不少钱，下次在装修估计\r\n是要嫁人了，就让我败一回吧。', '1474008378', '1474160817');
INSERT INTO `zc_news` VALUES ('6', '49', '▪  评测：安信古夷苏木植物油实木地板', '', '', 'Photoii/1474160384270.jpeg', '', '和麦家装饰签定合同开始历时3月，终于在2014年圣诞时把新家布置完毕，算是在这个圣诞送给自已的一个礼物吧。也感谢我的父母亲，每个双休不辞辛苦从老\r\n家开车赶过来陪同我一起跑市场，真是天下父母心，放心吧，女儿一定会好好孝顺你们的。\r\n&nbsp;&nbsp;&nbsp;都说今年流行简美的风格，只是刚开始设计的时候，我还确定不了风格，喜欢美式也喜欢法式，又喜欢带有点欧州乡村风格。不过对于现在的风格我还是很满\r\n意的，也很喜欢。设计师孙是通过19楼业主的装修日记找到他的，从日记中看出业主对他的评价很高，那套装修的风格我也喜欢，就联系了孙，没在找第二家了，\r\n是不是觉得我少根筋，都不比较下，呵呵，不过主要是在第一次和孙沟通中，觉得他蛮实在的，我妈妈对他影响也蛮好的。哈哈，装修花了不少钱，下次在装修估计\r\n是要嫁人了，就让我败一回吧。', '1474008402', '1474160384');
INSERT INTO `zc_news` VALUES ('7', '49', '▪  解码净水行业 上海国际水展除林志玲还看啥', '', '', 'Photoii/1474160684262.jpeg', '', '和麦家装饰签定合同开始历时3月，终于在2014年圣诞时把新家布置完毕，算是在这个圣诞送给自已的一个礼物吧。也感谢我的父母亲，每个双休不辞辛苦从老\r\n家开车赶过来陪同我一起跑市场，真是天下父母心，放心吧，女儿一定会好好孝顺你们的。\r\n&nbsp;&nbsp;&nbsp;都说今年流行简美的风格，只是刚开始设计的时候，我还确定不了风格，喜欢美式也喜欢法式，又喜欢带有点欧州乡村风格。不过对于现在的风格我还是很满\r\n意的，也很喜欢。设计师孙是通过19楼业主的装修日记找到他的，从日记中看出业主对他的评价很高，那套装修的风格我也喜欢，就联系了孙，没在找第二家了，\r\n是不是觉得我少根筋，都不比较下，呵呵，不过主要是在第一次和孙沟通中，觉得他蛮实在的，我妈妈对他影响也蛮好的。哈哈，装修花了不少钱，下次在装修估计\r\n是要嫁人了，就让我败一回吧。', '1474008419', '1474160684');
INSERT INTO `zc_news` VALUES ('8', '50', '▪  圣象郭总签惠民承诺书', '', '', 'Photoii/1474423177631.png', '', '二个月之前，十五位家居领袖大佬们就在谋划一件大事！今天这件大事终于在全国范围内拉开帷幕！今天下午在上海、南京、大连、苏州这一轮', '1474009012', '1475164877');
INSERT INTO `zc_news` VALUES ('9', '50', '▪  “虹动中国雨虹之星选拔赛”山西分站', '', '', 'Photoii/1474160164794.jpeg', '', '和麦家装饰签定合同开始历时3月，终于在2014年圣诞时把新家布置完毕，算是在这个圣诞送给自已的一个礼物吧。也感谢我的父母亲，每个双休不辞辛苦从老\r\n家开车赶过来陪同我一起跑市场，真是天下父母心，放心吧，女儿一定会好好孝顺你们的。\r\n&nbsp;&nbsp;&nbsp;都说今年流行简美的风格，只是刚开始设计的时候，我还确定不了风格，喜欢美式也喜欢法式，又喜欢带有点欧州乡村风格。不过对于现在的风格我还是很满\r\n意的，也很喜欢。设计师孙是通过19楼业主的装修日记找到他的，从日记中看出业主对他的评价很高，那套装修的风格我也喜欢，就联系了孙，没在找第二家了，\r\n是不是觉得我少根筋，都不比较下，呵呵，不过主要是在第一次和孙沟通中，觉得他蛮实在的，我妈妈对他影响也蛮好的。哈哈，装修花了不少钱，下次在装修估计\r\n是要嫁人了，就让我败一回吧。', '1474009045', '1474160164');
INSERT INTO `zc_news` VALUES ('10', '50', '▪  圣象郭总在中国好家居百城峰惠签惠民承', '', '', 'Photoii/1474159983503.jpeg', '', '本案例定义为后现代风格，整体设计都比较有新意。它强调的是历史的延续性，但又不拘泥于传统的逻辑思维方式。将一些古典构件的抽象形式以新的手法组合在一\r\n起。而后现代表现最为突出的是，追求时尚与潮流，非常注重居室空间的布局和使用功能的完美结合。后现代家居中的线条有的柔美也只，而有的却富有节奏感，所\r\n以整体出现一个立体型的整合。024-85855112', '1474009069', '1474159983');
INSERT INTO `zc_news` VALUES ('11', '50', '▪  乐家卫浴裴杰 最终是让消费者享受卫浴', '', '', 'Photoii/1474386318282.png', '', '<span class=\"type\">沈阳林凤装饰装修工程有限公司成立于1997年，注册资金5000万，是融合家装、工装业务的综合型专业装饰服务商。公\r\n司秉承着“造福客户，成就员工”的企业宗旨，\"实实在在做装修\"的经营理念，积极扩展辽沈装饰装修市场，推行诚信服\r\n务，倡导绿色装修、环保装修，真诚的为每一位顾客，量身定制温馨、舒适的居家环境和工作空间。\r\n林凤装饰热线电话：13342476674 <br />\r\n</span>', '1474009084', '1474386318');
INSERT INTO `zc_news` VALUES ('12', '50', '▪  庆贺欧罗拉木门贵阳、连云港旗舰店隆重', '', '', 'Photoii/1474159635717.jpeg', '', '沈阳林凤装饰装修工程有限公司成立于1997年，注册资金5000万，是融合家装、工装业务的综合型专业装饰服务商。公司秉承着“造福客户，成就员工”的\r\n企业宗旨，&amp;quot;实实在在做装修&amp;quot;的经营理念，积极扩展辽沈装饰装修市场，推行诚信服务，倡导绿色装修、环保装修，真诚\r\n的为每一位顾客，量身定制温馨、舒适的居家环境和工作空间。\r\n林凤装饰热线电话：13342476674', '1474009104', '1474159635');
INSERT INTO `zc_news` VALUES ('13', '58', '真言德胜郑秋伟：新常态下产品渠道均需创新', 'http://jiaju.sina.com.cn', '新浪家居', 'Photoii/1474041195779.png', '', '2015年，家居行业的发展既有有迹可循的判断，又有着各种不确定性因素的交织。互联网对家居行业的渗透，特别是移动互联网所带来的冲击和影响，几乎让我\r\n们很难按照往常的逻辑思维来看待这个行业。在这种背景下，行业既有的格局，以及权力结构或将产生重大变化。矛盾与冲突，合作与联合，创新与变革或将以一种\r\n我们意想不到的方式发生。因此，我们更需要可以穿透行业迷雾的视野，更希望听到振聋发聩的行业真言。<br />\r\n<br />\r\n新浪家居新闻中心2015年度重磅策划，“真言2015”系列将与家居行业的顶级企业大佬，智慧企业家深入对话，通过我们的对话、思考和记录，去尽可能的展现这个行业真实与客观的发展脉络。', '1474041195', null);
INSERT INTO `zc_news` VALUES ('14', '58', '装修省一半 新浪抢工长搅热京城家装市场', '', '', 'Photoii/1474041307213.png', '', '据悉，新浪抢工长平台日前宣布其签约工长数已经成功突破万人大关，并从5月18日起启动为期一个月的“万万没想到，装修省一半” \r\n惠民活动。此次惠民活动砍掉装修公司多个提点环节，让消费者与工长直接签约，为消费者省掉约30%装修款的超实惠活动，活动现场人气火爆，好礼不断，精彩\r\n纷呈，展现了一种全新的装修模式。<br />\r\n<br />\r\n本次活动于下午13:30正式开幕，分为三大环节：首先赵博士装修不上当大讲堂中为大家讲解了装修中常见十大陷阱；其次工长代表分别作自我介绍；最后业主与工长互动交流。同时现场还有交定金抽大奖的环节，4999现金抽奖活动将现场推向高潮。', '1474041307', null);
INSERT INTO `zc_news` VALUES ('15', '58', '高端家装明码标价服务升级', '', '', 'Photoii/1474041388482.png', '', '今年2月当爱空间携“699套餐”强势登场时，成为引爆京城家装公司降价潮的导火索。此后半月，圣点装饰迅速推出“698套餐”，4月居然装饰推出快屋\r\n“599套餐”，搜房网推出了“极限精装666套餐”。一直不做家装套餐的业之峰装饰也悄然研发了套装产品，即将推向市场。上周，主营高端家装的博洛尼宣\r\n布放弃施工利润，让利30%，德系品质的施工项目报价确定在每平方米509元，不再增项。博洛尼此举无疑是在挑战高端家装的极致性价比。<br />\r\n<br />\r\n上周六，博洛尼CEO蔡明当着前来参加博洛尼年度盛典的千余消费者宣布，将放弃施工利润，德系工程标准、变态级环保标准的施工报价明码实价为每平方米509元，全程零增项。蔡总详细介绍如何实现。', '1474041388', null);
INSERT INTO `zc_news` VALUES ('16', '58', '品牌家装公司PK野装队', '', '', 'Photoii/1474041458940.png', '', '低价切入，高价结束”是很多找过家装游击队装修的业主的感想。第一眼会让消费者觉得价格很便宜，很有诱惑力。“游击队来讲，他们的随意性比较强。如果品牌\r\n家装报价19万，游击队可以报到17万，他可以随意地更改，因为没有公司规定约束他们，所有的东西他们都可以减。但是装饰公司不一样，大家都有一个系统，\r\n都有固定的管理方式，所以这个价格不可能随着客户的需求，依据客户想的去改变。所以可能会有一些客户觉得品牌家装的这种方式有一点死板，从而选择游击\r\n队。”圣点装饰设计部经理焦春雷说道。瑞博文北京公司总经理汤谨宾称，瑞博文跟野装队的“撞单”情况特别多，通常野装队凭借“不收设计费，不收管理费，不\r\n收税金，不收成品保护费”说服业主找他们完成施工。', '1474041458', null);
INSERT INTO `zc_news` VALUES ('17', '56', '高度不收成品保护费”说服业主找他', '给对方不收设计费，不收管理', '高度', 'Photoii/1474172224356.jpeg', '', '找过家装游击队装修的业主的感想。第一眼会让消费者觉得价格很便宜，很有诱惑力。“游击队来讲，他们的随意性比较强。如果品牌\r\n家装报价19万，游击队可以报到17万，他可以随意地更改，因为没有公司规定约束他们，所有的东西他们都可以减。但是装饰公司不一样，大家都有一个系统，\r\n都有固定的管理方式，所以这个价格不可能随着客户的需求，依据客户想的去改变。所以可能会有一些客户觉得品牌家装的这种方式有一点死板，从而选择游击\r\n队。”圣点装饰设计部经理焦春雷说道。瑞博文北京公司总经理汤谨宾称，瑞博文跟野装队的“撞单”情况特别多，通常野装队凭借“不收设计费，不收管理费，不\r\n收税金，不收成品保护费”说服业主找他们完成施工。', '1474172224', '1474386593');
INSERT INTO `zc_news` VALUES ('18', '56', '戴江平：“互联网+家装”的关键是品质+服务', '', '', '', '', '', '1474389252', null);
INSERT INTO `zc_news` VALUES ('19', '56', '品牌家装公司PK野装队', '', '', 'Photoii/1474430887829.png', '', '低价切入，高价结束”是很多找过家装游击队装修的业主的感想。第一眼会让消费者觉得价格很便宜，很有诱惑力。“游击队来讲，他们的随意性比较强。如果品牌\r\n家装报价19万，游击队可以报到17万，他可以随意地更改，因为没有公司规定约束他们，所有的东西他们都可以减。但是装饰公司不一样，大家都有一个系统，\r\n都有固定的管理方式，所以这个价格不可能随着客户的需求，依据客户想的去改变。所以可能会有一些客户觉得品牌家装的这种方式有一点死板，从而选择游击\r\n队。”圣点装饰设计部经理焦春雷说道。瑞博文北京公司总经理汤谨宾称，瑞博文跟野装队的“撞单”情况特别多，通常野装队凭借“不收设计费，不收管理费，不\r\n收税金，不收成品保护费”说服业主找他们完成施工。', '1474389285', '1475207577');
INSERT INTO `zc_news` VALUES ('20', '56', '高端家装明码标价服务升级', '', '', '', '', '', '1474389311', null);
INSERT INTO `zc_news` VALUES ('21', '56', '进口家具“火热”下的冷思考', '', '', '', '', '', '1474389335', null);
INSERT INTO `zc_news` VALUES ('22', '56', '装修旺季来临 家装企业迎来新一轮“火拼”', '', '', '', '', '', '1474389355', null);
INSERT INTO `zc_news` VALUES ('23', '56', '评测：安信古夷苏木植物油实木地板', '', '', '', '', '', '1474389374', null);
INSERT INTO `zc_news` VALUES ('24', '56', '解码净水行业 上海国际水展除林志玲还看啥', '', '', '', '', '', '1474389402', null);
INSERT INTO `zc_news` VALUES ('25', '56', '家电“染”绿 从设计开始', '', '', '', '', '', '1474389419', null);
INSERT INTO `zc_news` VALUES ('26', '56', ' 王牌品质，初心不变！', '', '', '', '', '', '1474389437', null);
INSERT INTO `zc_news` VALUES ('27', '57', '“虹动中国雨虹之星选拔赛”山西分站', '', '', '', '', '', '1474389469', null);
INSERT INTO `zc_news` VALUES ('28', '57', ' 圣象郭总在中国好家居百城峰惠签惠民承', '', '', 'Photoii/1474423129747.png', '', '', '1474389505', '1474423129');
INSERT INTO `zc_news` VALUES ('29', '57', '家卫浴裴杰 最终是让消费者享受卫浴', '', '', 'Photoii/1474430803703.png', '', '', '1474389525', '1474430803');
INSERT INTO `zc_news` VALUES ('30', '57', '庆贺欧罗拉木门贵阳、连云港旗舰店隆重', '', '', 'Photoii/1474430814306.png', '', '', '1474389544', '1474430814');
INSERT INTO `zc_news` VALUES ('31', '57', ' 格兰电气助力多彩贵州传统龙舟赛', '', '', 'Photoii/1474430824448.png', '', '', '1474389558', '1474430824');
INSERT INTO `zc_news` VALUES ('32', '57', '王牌品质，初心不变！', '', '', 'Photoii/1474430834897.png', '', '美国前国务卿基辛格、前财长保尔森、前财长鲁宾、前驻华大使芮效俭、前白宫国家安全委员会亚洲事务高级主任贝德、IBM总裁兼首席执行官罗睿兰、陶氏化学\r\n公司董事会主席兼首席执行官利伟诚、时代华纳董事会主席兼首席执行官比克斯、黑石集团董事会主席兼首席执行官苏世民、大都会保险总裁兼首席执行官坎达里\r\n安、高朋集团共同创始人凯维尔、美国外交关系委员会主席哈斯、学校长博林格、耶鲁大学教授罗奇、《外交》杂志主编罗斯、美国公共电视网中文电视台主持人查理·罗斯出席。', '1474389577', '1474452675');
INSERT INTO `zc_news` VALUES ('33', '57', '来建博会品鉴好莱客大师之作！', '', '', 'Photoii/1474430846123.png', '', '美国前国务卿基辛格、前财长保尔森、前财长鲁宾、前驻华大使芮效俭、前白宫国家安全委员会亚洲事务高级主任贝德、IBM总裁兼首席执行官罗睿兰、陶氏化学\r\n公司董事会主席兼首席执行官利伟诚、时代华纳董事会主席兼首席执行官比克斯、黑石集团董事会主席兼首席执行官苏世民、大都会保险总裁兼首席执行官坎达里\r\n安、高朋集团共同创始人凯维尔、美国外交关系委员会主席哈斯、学校长博林格、耶鲁大学教授罗奇、《外交》杂志主编罗斯、美国公共电视网中文电视台主持人查理·罗斯出席。', '1474389593', '1474452682');
INSERT INTO `zc_news` VALUES ('34', '57', '涂刷完美墙面 墙面漆施工全攻略', '', '', 'Photoii/147443085521.png', '', '美国前国务卿基辛格、前财长保尔森、前财长鲁宾、前驻华大使芮效俭、前白宫国家安全委员会亚洲事务高级主任贝德、IBM总裁兼首席执行官罗睿兰、陶氏化学\r\n公司董事会主席兼首席执行官利伟诚、时代华纳董事会主席兼首席执行官比克斯、黑石集团董事会主席兼首席执行官苏世民、大都会保险总裁兼首席执行官坎达里\r\n安、高朋集团共同创始人凯维尔、美国外交关系委员会主席哈斯、学校长博林格、耶鲁大学教授罗奇、《外交》杂志主编罗斯、美国公共电视网中文电视台主持人查理·罗斯出席。', '1474389617', '1474452694');
INSERT INTO `zc_news` VALUES ('35', '57', '二手房装修必看的10大流程解析', '', '', 'Photoii/1474430865112.png', '', '美国前国务卿基辛格、前财长保尔森、前财长鲁宾、前驻华大使芮效俭、前白宫国家安全委员会亚洲事务高级主任贝德、IBM总裁兼首席执行官罗睿兰、陶氏化学\r\n公司董事会主席兼首席执行官利伟诚、时代华纳董事会主席兼首席执行官比克斯、黑石集团董事会主席兼首席执行官苏世民、大都会保险总裁兼首席执行官坎达里\r\n安、高朋集团共同创始人凯维尔、美国外交关系委员会主席哈斯、学校长博林格、耶鲁大学教授罗奇、《外交》杂志主编罗斯、美国公共电视网中文电视台主持人查理·罗斯出席。', '1474389634', '1474452707');
