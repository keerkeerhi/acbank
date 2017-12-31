/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : acbank

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-12-31 19:01:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ac_customers`
-- ----------------------------
DROP TABLE IF EXISTS `ac_customers`;
CREATE TABLE `ac_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL COMMENT '客户信息表',
  `managerid` int(11) DEFAULT NULL,
  `isdel` int(2) DEFAULT '0',
  `numb` float(11,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ac_customers
-- ----------------------------
INSERT INTO `ac_customers` VALUES ('374', '大师傅', '333', 'cyz', '2', '1', '333.000');
INSERT INTO `ac_customers` VALUES ('378', '测试', '55555', 'wlz', '2', '1', '100001.000');
INSERT INTO `ac_customers` VALUES ('379', '周小明', '15537232100', 'wlz', '2', '1', '111111.000');
INSERT INTO `ac_customers` VALUES ('381', '小小', '15537232100', 'cgz', '2', '1', '11111.000');
INSERT INTO `ac_customers` VALUES ('382', '花花', '15537232100', 'wlz', '2', '1', '1111.000');
INSERT INTO `ac_customers` VALUES ('383', '乐乐乐', '15537232100', 'cyz', '2', '1', '10000.000');
INSERT INTO `ac_customers` VALUES ('384', '宝宝', '15537232100', 'wlz', '2', '1', '10000.000');
INSERT INTO `ac_customers` VALUES ('385', 'baobao', '15537232100', 'rgz', '2', '1', '122222.000');
INSERT INTO `ac_customers` VALUES ('386', 'testt', '15537232100', 'wlz', '2', '1', '1111.000');
INSERT INTO `ac_customers` VALUES ('387', '管理', '15537232100', 'rgz', '2', '1', '1111.000');
INSERT INTO `ac_customers` VALUES ('388', 'test大玉', '15537232100', 'rgz', '2', '0', '10000.000');
INSERT INTO `ac_customers` VALUES ('389', 'test1', '15537232100', 'rgz', '2', '1', '11111.000');
INSERT INTO `ac_customers` VALUES ('390', 'test2', '15537232100', 'ygz', '2', '1', '1111.000');
INSERT INTO `ac_customers` VALUES ('391', 'test3', '15537447447', 'byz', '2', '0', '22222.000');

-- ----------------------------
-- Table structure for `ac_dic`
-- ----------------------------
DROP TABLE IF EXISTS `ac_dic`;
CREATE TABLE `ac_dic` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL COMMENT '1、地址',
  `customer` varchar(500) DEFAULT NULL,
  `charact` varchar(500) DEFAULT NULL,
  `limit` varchar(100) DEFAULT NULL,
  `usefor` varchar(200) DEFAULT NULL,
  `ratio` varchar(200) DEFAULT NULL,
  `timelimit` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ac_dic
-- ----------------------------
INSERT INTO `ac_dic` VALUES ('1', '城关镇', 'cgz', '1', null, null, null, null, null, null);
INSERT INTO `ac_dic` VALUES ('2', '菜园镇', 'cyz', '1', null, null, null, null, null, null);
INSERT INTO `ac_dic` VALUES ('3', '任固镇', 'rgz', '1', null, null, null, null, null, null);
INSERT INTO `ac_dic` VALUES ('4', '五陵镇', 'wlz', '1', null, null, null, null, null, null);
INSERT INTO `ac_dic` VALUES ('5', '宜沟镇', 'ygz', '1', null, null, null, null, null, null);
INSERT INTO `ac_dic` VALUES ('6', '白营镇', 'byz', '1', null, null, null, null, null, null);
INSERT INTO `ac_dic` VALUES ('7', '伏道镇', 'fdz', '1', null, null, null, null, null, null);
INSERT INTO `ac_dic` VALUES ('8', '韩庄镇', 'hzz', '1', null, null, null, null, null, null);
INSERT INTO `ac_dic` VALUES ('9', '古贤真', 'gxz', '1', null, null, null, null, null, null);
INSERT INTO `ac_dic` VALUES ('10', '瓦岗乡', 'wgx', '1', null, null, null, null, null, null);
INSERT INTO `ac_dic` VALUES ('11', '普惠贷', '1', '2', '农村和城镇居民中，无银行借款、无不良担保、无民间融资、无涉诉案件、无不良嗜好的“五无”人群。要求本市常住居民。', '信用贷款、无需担保、期限灵活、手续简便。', '　5万元以下。', null, null, null);
INSERT INTO `ac_dic` VALUES ('12', '职贷通\r\n', '2', '2', '本市行政事业单位或金融、电力、通信等优质企业的正式职工。', '免担保、利率低、期限长、速度快。', '　　20万元以下。', null, null, null);
INSERT INTO `ac_dic` VALUES ('13', '助学贷', '3', '2', '新录取及在校大学生（含研究生）。要求本市常住居民，不含外地来济就读学生。', '利率优惠、期限较长、分期还款、手续简便。', '就读剩余年限，每年不超过1万元。', '用于新录取及在校大学生学费或生活费。', '执行央行基准利率，按年浮动。', null);
INSERT INTO `ac_dic` VALUES ('14', '留学贷', '4', '2', '境外就读的大学生（含预科、大学、硕士、博士）。要求现为本市常住居民。', '额度较高、期限较长、利率优惠、分期还款。', '每年不超过20万元，总额不超过50万元。 ', '　学费或生活费。 ', null, null);
INSERT INTO `ac_dic` VALUES ('15', '购物贷', '5', '2', '　购置大件商品且有信贷需求的个人客户。要求本市常住居民。', '　信用贷款、无需担保、额度灵活、分期还款。', null, '　购置大件商品，如：电子产品、家用电器、农用车等。', null, null);
INSERT INTO `ac_dic` VALUES ('16', '装修贷', '6', '2', '住宅装修且有信贷需求的个人客户。要求本市常住居民。', '　方式灵活、额度较高、分期还款。', null, '　住宅装修。', null, '信用、保证贷款最长3年，房产抵押最长5年。');
INSERT INTO `ac_dic` VALUES ('17', '旅游贷', '7', '2', '　外出旅游且有信贷需求的个人客户。要求本市常住居民。', '信用贷款、无需担保、分期还款。', null, '　本人或家庭成员旅游费用。', null, null);
INSERT INTO `ac_dic` VALUES ('18', '住房按揭贷款', '8', '2', '　在本行合作楼盘购买个人住房的个人客户。要求本市常住居民。', '　利率较低、期限较长、分期还款。', '首套住房总房价80%以内，二套以上总房价60%以内。最高50万元。', '　支付购房款。', '　根据人民银行住房贷款利率政策执行，本行定期发布，按年浮动。', '　不超过30年，且贷款到期日借款人年龄不超过60周岁。');
INSERT INTO `ac_dic` VALUES ('19', '二手房贷', '9', '2', '　　购买二手房且有信贷需求的个人客户。要求本市常住居民。', '利率较低、期限较长、按月还款。', '50万元以下，房价60%以内。', '　购买二手房。', '根据人民银行住房贷款利率政策执行，本行定期发布，按年浮动。', '　5至30年，且贷款到期日借款人不超过60周岁。');
INSERT INTO `ac_dic` VALUES ('20', '车易贷', '10', '2', '向本行合作汽车经营商购买汽车且有信贷需求的个人客户。要求本市常住居民。', '利率较低、期限较长、分期还款。', '　贷款额度不超过所购车款的70%，且不超过本行批准的该经销商单车贷款最高限额。', '　个人购买乘用、商用汽车。', null, '　不超过3年。');
INSERT INTO `ac_dic` VALUES ('21', '二手车贷', '11', '2', '购二手车且有信贷需求的个人客户。要求本市常住居民。', '利率较低、期限较长、分期还款。', '　贷款额度不超过购车款的70%，且最高不超过30万元。', '　个人购买二手乘用汽车（不含商用）。', null, '　　最长2年。');
INSERT INTO `ac_dic` VALUES ('22', '长期贷', '12', '2', '1.项目一次性投资较大，但后期有稳定收入来源的个人客户。要求本市常住居民。\r\n　　2.解决存量贷款客户暂时收入较低，一次性全部归还贷款困难的问题。', '期限较长、担保灵活、分期还款。', '　　不超过100万元。', '　个体或微型企业生产经营资金。', null, null);
INSERT INTO `ac_dic` VALUES ('23', '营业部', 'yyb', '3', '6618992', null, null, null, null, null);
INSERT INTO `ac_dic` VALUES ('24', '北海支行', 'bhzh', '3', '6683666', null, null, null, null, null);

-- ----------------------------
-- Table structure for `ac_user`
-- ----------------------------
DROP TABLE IF EXISTS `ac_user`;
CREATE TABLE `ac_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(22) CHARACTER SET latin1 DEFAULT NULL,
  `name` varchar(22) DEFAULT NULL,
  `headimg` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `type` varchar(10) CHARACTER SET latin1 DEFAULT '0' COMMENT '0，普通员工 1，领导',
  `remember_token` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(22) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ac_user
-- ----------------------------
INSERT INTO `ac_user` VALUES ('1', 'admin', '管理员', null, '1', 'Cmm1i8z4Aqs6krCxgU9LOPeSUxFvbARv1RdaXfcTumn0zjBrNhcvhWW3Q8vX', null, '$2y$10$h/W6QQ.X3VUpoenrCcoP/.g0i8efI6iAf1pjy3eJBjTQraZ/7cSFG', null, '2017-12-31 00:20:22');
INSERT INTO `ac_user` VALUES ('2', 'dayu', '大玉', 'http://localhost:8888/public/photos/upload/15147180245456fc54c74a297ce994998c2873b370.jpg', '0', 'GIRUECN6jRCxU4IO5358ydom0JC5LcqlTdy8kl5suYdvlQmBSrawxUFguW9R', '2@qq.com', '$2y$10$h/W6QQ.X3VUpoenrCcoP/.g0i8efI6iAf1pjy3eJBjTQraZ/7cSFG', '15537232222', '2017-12-31 01:42:47');
INSERT INTO `ac_user` VALUES ('10', 'mingming', '明明', '', '0', null, '', '$2y$10$32oL8HnvPud860RTVON4k./GHCgwK6MdnCBTleKTEq1Ig5hY0jJyy', null, null);
