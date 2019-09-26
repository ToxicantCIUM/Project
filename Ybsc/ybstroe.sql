/*
Navicat MySQL Data Transfer

Source Server         : yanbin
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : ybstroe

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-09-08 23:09:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '严斌', '123456');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(50) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '电脑办公');
INSERT INTO `category` VALUES ('2', '家具家居');
INSERT INTO `category` VALUES ('3', '鲜果时光');
INSERT INTO `category` VALUES ('4', '图书音像');
INSERT INTO `category` VALUES ('5', '母婴孕婴');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cust_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(255) DEFAULT NULL,
  `cust_source` varchar(255) DEFAULT NULL,
  `cust_industry` varchar(255) DEFAULT NULL,
  `cust_level` varchar(255) DEFAULT NULL,
  `cust_phone` varchar(255) DEFAULT NULL,
  `cust_mobile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `gdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_hot` int(1) DEFAULT '0',
  `cid` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '梵希蔓短袖衬衣女2018新款夏季气质韩版通勤', '159.00', 'goods_001.png', '你好啊哈哈哈', '0', null);
INSERT INTO `goods` VALUES ('2', '姿忆秀五分袖宽松衬衫女2018夏装新款竖条纹\r\n', '88.00', 'goods_002.png', null, '0', null);
INSERT INTO `goods` VALUES ('3', '梵希蔓短袖雪纺衬衫短款2018夏季新款女装韩\r\n', '176.00', 'goods_003.png', null, '0', null);
INSERT INTO `goods` VALUES ('4', '2018夏季新款雪纺衬衫女上衣职业OL短袖衬衣韩版修身休闲', '159.00', 'goods_004.png', null, '0', null);
INSERT INTO `goods` VALUES ('5', '电脑椅家用电竞椅 人体工学椅子座椅网布转椅可躺老板椅办公椅', '269.00', 'goods_005.png', null, '0', null);
INSERT INTO `goods` VALUES ('6', '电脑椅家用座椅办公椅主播椅子游戏椅网吧电竞椅可躺午休', '699.00', 'goods_006.png', null, '0', null);
INSERT INTO `goods` VALUES ('7', '百图 立领条纹衬衫女套头短袖百搭雪纺衫上\r\n', '179.00', 'goods_007.png', null, '0', null);
INSERT INTO `goods` VALUES ('8', '不锈钢卫浴室柜组合小户型挂墙式洗手洗脸盆池卫生间厕所洗漱台盆', '305.00', 'goods_008.png', null, '0', null);
INSERT INTO `goods` VALUES ('9', '北欧双盆浴室柜组合简约卫浴柜镜柜卫生间洗手盆洗脸盆洗漱台盆柜', '900.00', 'goods_009.png', null, '0', null);
INSERT INTO `goods` VALUES ('10', '简约现代浴室柜洗手盆柜组合洗脸卫生间小户型厕所洗漱台卫浴吊柜', '948.00', 'goods_10.png', null, '0', null);
INSERT INTO `goods` VALUES ('11', '三只鸟旅行箱拉杆箱女铝框20寸行李箱万向轮24寸学生密码箱登机箱', '268.00', 'goods_11.png', null, '0', null);
INSERT INTO `goods` VALUES ('12', '全铝镁铝合金拉杆箱金属旅行箱子男女万向轮行李箱商务学生登机箱', '375.00', 'goods_12.png', null, '0', null);
INSERT INTO `goods` VALUES ('13', '床上双人电脑桌 台式电脑桌家用笔记本电脑桌 ', '89.00', 'goods_13.png', null, '0', null);
INSERT INTO `goods` VALUES ('14', '男童鞋儿童运动鞋2018春秋新款夏季网面休闲透气小白网鞋女童鞋子', '79.00', 'goods_10.png', '', '1', '1');

-- ----------------------------
-- Table structure for linkman
-- ----------------------------
DROP TABLE IF EXISTS `linkman`;
CREATE TABLE `linkman` (
  `link_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) DEFAULT NULL,
  `link_gender` varchar(255) DEFAULT NULL,
  `link_phone` varchar(255) DEFAULT NULL,
  `link_mobile` varchar(255) DEFAULT NULL,
  `link_email` varchar(255) DEFAULT NULL,
  `link_qq` varchar(255) DEFAULT NULL,
  `link_position` varchar(255) DEFAULT NULL,
  `link_memo` varchar(255) DEFAULT NULL,
  `link_cust_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`link_id`),
  KEY `FKeixto111iws64sd78b4ktip7p` (`link_cust_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of linkman
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_code` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0d496edd-11d4-4d23-bcd7-68cd28b22114', '严斌', '123456', '17759056562', '0', null, null, null, null);
INSERT INTO `user` VALUES ('43ce7baa-a3da-42df-b41a-8cefce89c5b8', '1243163719', '111', '1111', '0', null, null, null, null);
INSERT INTO `user` VALUES ('497023ea-626c-4561-8021-0cf9593011b1', 'll', '123', '1111', '0', null, null, null, null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
