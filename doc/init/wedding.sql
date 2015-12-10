/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50158
Source Host           : localhost:3306
Source Database       : wedding

Target Server Type    : MYSQL
Target Server Version : 50158
File Encoding         : 65001

Date: 2015-11-20 17:05:13
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `dress`
-- ----------------------------
DROP TABLE IF EXISTS `dress`;
CREATE TABLE `dress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoer_id` int(11) NOT NULL,
  `img_url` varchar(100) COLLATE utf8_bin NOT NULL,
  `type` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of dress
-- ----------------------------
INSERT INTO dress VALUES ('1', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('2', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('3', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('4', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('5', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('6', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('7', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('8', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('9', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('10', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('11', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('12', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('13', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('14', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('15', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('16', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('17', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('18', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('19', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('20', '1', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('21', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('22', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('23', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('24', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('25', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('26', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('27', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('28', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('29', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('30', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('31', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('32', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('33', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('34', '2', 'images/dress_wedding_pic2.jpg', '1', '0');
INSERT INTO dress VALUES ('40', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('41', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('42', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('43', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('44', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('45', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('46', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('47', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('48', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('49', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('50', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('51', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('52', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('53', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('54', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('55', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('56', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('57', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('58', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('59', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('60', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('61', '2', 'images/dress_wedding_pic2.jpg', '2', '0');
INSERT INTO dress VALUES ('62', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('63', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('64', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('65', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('66', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('67', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('68', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('69', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('70', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('71', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('72', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('73', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('74', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('75', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('76', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('77', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('78', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('79', '2', 'images/dress_wedding_pic2.jpg', '3', '0');
INSERT INTO dress VALUES ('80', '2', 'images/dress_wedding_pic2.jpg', '3', '0');

-- ----------------------------
-- Table structure for `makeup_makeer`
-- ----------------------------
DROP TABLE IF EXISTS `makeup_makeer`;
CREATE TABLE `makeup_makeer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `degree` varchar(50) COLLATE utf8_bin NOT NULL,
  `img_url` varchar(200) COLLATE utf8_bin NOT NULL,
  `content` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of makeup_makeer
-- ----------------------------
INSERT INTO makeup_makeer VALUES ('1', 'test3', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('2', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('3', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('4', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('5', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('6', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('7', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('8', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('9', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('10', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('11', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('12', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('13', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('14', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('15', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('16', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('17', 'test1', 'lala', 'images/makeer_pic2.jpg', 'lalallalalalalalallal', '0');
INSERT INTO makeup_makeer VALUES ('18', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('19', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('20', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('21', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('22', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('23', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('24', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('25', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('26', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('27', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('28', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('29', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('30', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('31', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('32', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('33', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('34', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('35', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('36', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('37', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('38', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('39', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('40', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('41', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('42', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('43', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('44', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('45', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('46', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('47', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('48', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('49', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('50', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');
INSERT INTO makeup_makeer VALUES ('51', 'test1', 'lala', 'images/makeer_pic2.jpg', 'hahah', '0');

-- ----------------------------
-- Table structure for `makeup_works`
-- ----------------------------
DROP TABLE IF EXISTS `makeup_works`;
CREATE TABLE `makeup_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `makeer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `img_url` varchar(100) COLLATE utf8_bin NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of makeup_works
-- ----------------------------
INSERT INTO makeup_works VALUES ('1', '1', '2015-08-19', 'wewewe', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('2', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('3', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('4', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('5', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('6', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('7', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('8', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('9', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('10', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('11', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('12', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('13', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('14', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('15', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('16', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('17', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('18', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('19', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('20', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('21', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('22', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('23', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('24', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('25', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('26', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('27', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('28', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('29', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('30', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('31', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('32', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('33', '1', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('34', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('35', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('36', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('37', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('38', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('39', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('40', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('41', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('42', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('43', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('44', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('45', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('46', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('47', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('48', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('49', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('50', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('51', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('52', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('53', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('54', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('55', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('56', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('57', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('58', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('59', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('60', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('61', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('62', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('63', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('64', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('65', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('66', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('67', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('68', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('69', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('70', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('71', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('72', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('73', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('74', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('75', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('76', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('77', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('78', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('79', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('80', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('81', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('82', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('83', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');
INSERT INTO makeup_works VALUES ('84', '2', '2015-08-19', 'lalallalalalalalallal', 'images/make_work_pic4.jpg', '0');

-- ----------------------------
-- Table structure for `message2`
-- ----------------------------
DROP TABLE IF EXISTS `message2`;
CREATE TABLE `message2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ctime` datetime DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `qqNum` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `telPhone` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `suggestion` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of message2
-- ----------------------------
INSERT INTO message2 VALUES ('1', '2015-08-05 18:18:31', 'test', '34234', '23423', 'skdjflsdf', 'lskdjflksj', '????????');
INSERT INTO message2 VALUES ('2', '2015-08-05 18:20:49', 'test', '34234', '23423', 'skdjflsdf', 'lskdjflksj', 'sdf士大夫');
INSERT INTO message2 VALUES ('3', '2015-08-16 12:25:09', 'test', '123', '123', '707823233@qq.com', '?????', '???');
INSERT INTO message2 VALUES ('4', '2015-08-17 07:00:37', 'test', 'sdf', 'asdf', 'asdf', 'asdf', 'asdfg');
INSERT INTO message2 VALUES ('5', '2015-08-17 07:01:35', 'test', 'sdf', 'asdf', 'asdf', 'asdf', 'asdfg');
INSERT INTO message2 VALUES ('6', '2015-08-17 07:02:40', 'test', 'sdf', 'asdf', 'asdf', 'asdf', 'asdfg');
INSERT INTO message2 VALUES ('7', '2015-08-17 07:03:06', 'test', 'sdf', 'asdf', 'asdf', 'asdf', 'asdfg');
INSERT INTO message2 VALUES ('8', '2015-08-17 07:05:23', 'test', 'test', 'asdf', 'sadf', 'sadf', 'asdf');
INSERT INTO message2 VALUES ('9', '2015-08-17 07:06:00', 'test', 'test', 'asdf', 'sadf', 'sadf', 'asdf');
INSERT INTO message2 VALUES ('10', '2015-08-17 07:06:26', 'test', 'test', 'asdf', 'sadf', 'sadf', 'asdf');
INSERT INTO message2 VALUES ('11', '2015-08-17 07:07:12', 'test', '234', 'tet', 'qsdf', 'asdf', 'asdfw');
INSERT INTO message2 VALUES ('12', '2015-08-17 07:11:00', 'test', 'sadf', 'asdf', 'asdf', 'asdf', 'asdf');
INSERT INTO message2 VALUES ('13', '2015-08-17 07:33:03', 'test', '234', '234', 'tsdf', 'asdf', 'asdfg');
INSERT INTO message2 VALUES ('14', '2015-08-17 07:33:07', 'test', '234', '234', 'tsdf', 'asdf', 'asdfg');
INSERT INTO message2 VALUES ('15', '2015-08-17 07:34:09', 'asdf', 'sdf', 'sdfdf', 'sdfsd', 'sdfsdf', 'dfsdf');
INSERT INTO message2 VALUES ('16', '2015-08-17 09:07:48', 'test', 'test', 'test', 'test', 'test', 'test');
INSERT INTO message2 VALUES ('17', '2015-08-17 09:09:25', 'test', 'test', 'test', 'test', 'test', 'teste');
INSERT INTO message2 VALUES ('18', '2015-08-17 09:16:24', 'test', 'tes', 'test', 'test', 'test', 'etest');
INSERT INTO message2 VALUES ('19', '2015-08-17 09:19:24', 'test', 'test', 'test', 'test', 'test', 'test');
INSERT INTO message2 VALUES ('20', '2015-08-17 09:43:02', 'test', 'dfsdf', 'tet', 'tes', 'test', 'test');
INSERT INTO message2 VALUES ('21', '2015-08-17 09:52:09', 'test', 'dfsdf', 'tet', 'tes', 'test', 'test');
INSERT INTO message2 VALUES ('22', '2015-08-17 14:09:22', 'test', 'test', 'test', 'test', 'test', 'test');
INSERT INTO message2 VALUES ('23', '2015-08-17 14:09:54', 'test', 'test', 'test', '707823233@qq.com', 'test', 'test');
INSERT INTO message2 VALUES ('24', '2015-08-17 14:10:02', 'test', '123123', '123123', '707823233@qq.com', 'test', 'test');
INSERT INTO message2 VALUES ('25', '2015-08-17 14:12:22', 'test', '123123', '123123', '707823233@qq.com', 'test', '翻跟斗风格');
INSERT INTO message2 VALUES ('26', '2015-08-17 14:12:37', 'test', '123123', '123123', '707823233@qq.com', '感到反感', '翻跟斗风格');

-- ----------------------------
-- Table structure for `photoer`
-- ----------------------------
DROP TABLE IF EXISTS `photoer`;
CREATE TABLE `photoer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `degree` varchar(50) COLLATE utf8_bin NOT NULL,
  `content` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of photoer
-- ----------------------------
INSERT INTO photoer VALUES ('1', 'images/photoer2.jpg', 'anniee', '資深攝影師', '摄制组是导演为创作成员之一。负责运送摄影器材和造型创作，将电影用摄影机拍摄成胶片，完全体现导演创作设计的银幕造型。在摄制组中，一般有导演、摄影师、照明人员组成摄影小组，导演作为摄影技术处理的负责人，领导摄影小组工作。摄制组设总摄影师，摄影师则在导演领导下，作为执行导演，负责具体创作工作。按胶片不同，分为故事片摄影师、科教片摄影师、新闻纪录片摄影师、美术片摄影师等。此外，还有从事特技摄影、特殊摄影（如杀人、水下杀人、空中杀人等）团体艺术、字幕摄影等专业摄影师。1', '0');
INSERT INTO photoer VALUES ('2', 'images/photoer4.jpg', 'anniie', '資深攝影師', '摄制组是导演为创作成员之一。负责运送摄影器材和造型创作，将电影用摄影机拍摄成胶片，完全体现导演创作设计的银幕造型。在摄制组中，一般有导演、摄影师、照明人员组成摄影小组，导演作为摄影技术处理的负责人，领导摄影小组工作。摄制组设总摄影师，摄影师则在导演领导下，作为执行导演，负责具体创作工作。按胶片不同，分为故事片摄影师、科教片摄影师、新闻纪录片摄影师、美术片摄影师等。此外，还有从事特技摄影、特殊摄影（如杀人、水下杀人、空中杀人等）团体艺术、字幕摄影等专业摄影师。2', '0');
INSERT INTO photoer VALUES ('3', 'images/photoer3.jpg', 'annie', '資深攝影師', '摄制组是导演为创作成员之一。负责运送摄影器材和造型创作，将电影用摄影机拍摄成胶片，完全体现导演创作设计的银幕造型。在摄制组中，一般有导演、摄影师、照明人员组成摄影小组，导演作为摄影技术处理的负责人，领导摄影小组工作。摄制组设总摄影师，摄影师则在导演领导下，作为执行导演，负责具体创作工作。按胶片不同，分为故事片摄影师、科教片摄影师、新闻纪录片摄影师、美术片摄影师等。此外，还有从事特技摄影、特殊摄影（如杀人、水下杀人、空中杀人等）团体艺术、字幕摄影等专业摄影师。3', '0');
INSERT INTO photoer VALUES ('4', 'images/photoer2.jpg', 'annie', '資深攝影師', '摄制组是导演为创作成员之一。负责运送摄影器材和造型创作，将电影用摄影机拍摄成胶片，完全体现导演创作设计的银幕造型。在摄制组中，一般有导演、摄影师、照明人员组成摄影小组，导演作为摄影技术处理的负责人，领导摄影小组工作。摄制组设总摄影师，摄影师则在导演领导下，作为执行导演，负责具体创作工作。按胶片不同，分为故事片摄影师、科教片摄影师、新闻纪录片摄影师、美术片摄影师等。此外，还有从事特技摄影、特殊摄影（如杀人、水下杀人、空中杀人等）团体艺术、字幕摄影等专业摄影师。4', '0');
INSERT INTO photoer VALUES ('5', 'images/photoer5.jpg', 'annie', '测试', '摄制组是导演为创作成员之一。负责运送摄影器材和造型创作，将电影用摄影机拍摄成胶片，完全体现导演创作设计的银幕造型。在摄制组中，一般有导演、摄影师、照明人员组成摄影小组，导演作为摄影技术处理的负责人，领导摄影小组工作。摄制组设总摄影师，摄影师则在导演领导下，作为执行导演，负责具体创作工作。按胶片不同，分为故事片摄影师、科教片摄影师、新闻纪录片摄影师、美术片摄影师等。此外，还有从事特技摄影、特殊摄影（如杀人、水下杀人、空中杀人等）团体艺术、字幕摄影等专业摄影师。5', '0');
INSERT INTO photoer VALUES ('6', 'images/photoer5.jpg', 'annie', '测试', null, '1');
INSERT INTO photoer VALUES ('7', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('8', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('11', 'images/photoer1.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('12', 'images/photoer4.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('13', 'images/photoer3.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('14', 'images/photoer2.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('15', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('16', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('17', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('18', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('21', 'images/photoer1.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('22', 'images/photoer4.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('23', 'images/photoer3.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('24', 'images/photoer2.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('25', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('26', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('27', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('28', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('31', 'images/photoer1.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('32', 'images/photoer4.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('33', 'images/photoer3.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('34', 'images/photoer2.jpg', 'annie', '資深攝影師', null, '0');
INSERT INTO photoer VALUES ('35', 'images/photoer5.jpg', 'annie', '测试', '', '1');
INSERT INTO photoer VALUES ('36', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('37', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('38', 'images/photoer5.jpg', 'annie', '测试', null, '0');
INSERT INTO photoer VALUES ('39', 'test', 'tes', 'test', 'skdjflsdf', '0');
INSERT INTO photoer VALUES ('40', 'images/test5_dd_photoer1.jpg', 'test5', 'dd', '', '1');
INSERT INTO photoer VALUES ('41', 'images/test1_dd_photoer1.jpg', 'test1', 'dd', '', '0');
INSERT INTO photoer VALUES ('42', 'images/test2_dd_photoer1.jpg', 'test2', 'dd', '', '0');
INSERT INTO photoer VALUES ('43', 'images/test3_dd_photoer1.jpg', 'test3', 'dd', '', '0');
INSERT INTO photoer VALUES ('44', 'ftp://112.74.28.4\\photoer\\test1\\icon\\test1_dd_photoer1.jpg', 'test1', 'dd', '', '100');
INSERT INTO photoer VALUES ('45', 'ftp://112.74.28.4\\photoer\\test2\\icon\\test2_dd_photoer1.jpg', 'test2', 'dd', '', '100');
INSERT INTO photoer VALUES ('46', 'ftp://112.74.28.4\\photoer\\test3\\icon\\test3_dd_photoer1.jpg', 'test3', 'dd', '', '100');
INSERT INTO photoer VALUES ('47', 'ftp://112.74.28.4\\photoer\\test1\\icon\\test1_dd_photoer1.jpg', 'test1', 'dd', '', '100');
INSERT INTO photoer VALUES ('48', 'ftp://112.74.28.4\\photoer\\test1\\icon\\test1_dd_photoer1.jpg', 'test1', 'dd', '', '0');
INSERT INTO photoer VALUES ('49', 'ftp://112.74.28.4\\photoer\\test1\\icon\\test1_dd_photoer1.jpg', 'test1', 'dd', '', '0');
INSERT INTO photoer VALUES ('50', 'ftp://112.74.28.4\\photoer\\test1\\icon\\test1_dd_photoer1.jpg', 'test1', 'dd', '', '0');
INSERT INTO photoer VALUES ('51', 'ftp://112.74.28.4\\photoer\\test1\\icon\\test1_dd_photoer1.jpg', 'test1', 'dd', '', '100');

-- ----------------------------
-- Table structure for `photoer_works`
-- ----------------------------
DROP TABLE IF EXISTS `photoer_works`;
CREATE TABLE `photoer_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `img_url` varchar(100) COLLATE utf8_bin NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of photoer_works
-- ----------------------------
INSERT INTO photoer_works VALUES ('1', '1', '2015-08-18', 'haha1', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('2', '1', '2015-08-18', 'kk', 'images/IMG_0021.jpg', '0');
INSERT INTO photoer_works VALUES ('3', '1', '2015-08-18', 'kk', 'images/test.jpg', '0');
INSERT INTO photoer_works VALUES ('4', '1', '2015-08-18', 'kk', 'images/test1.jpg', '0');
INSERT INTO photoer_works VALUES ('5', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('6', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('7', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('8', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('9', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('10', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('11', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('12', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('13', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('14', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('15', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('16', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('17', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('18', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('19', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('20', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('21', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('22', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('23', '1', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('24', '1', '2015-08-18', 'kk9', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('25', '1', '2015-08-18', 'kk8', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('26', '1', '2015-08-18', 'kk7', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('27', '1', '2015-08-18', 'kk6', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('28', '1', '2015-08-18', 'kk5', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('29', '1', '2015-08-18', 'kk4', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('30', '1', '2015-08-18', 'kk3', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('31', '1', '2015-08-18', 'kk2', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('32', '1', '2015-08-18', 'kk1', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('33', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('34', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('35', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('36', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('37', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('38', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('39', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('40', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('41', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('42', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('43', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('44', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('45', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('46', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('47', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('48', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('49', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('50', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('51', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('52', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('53', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('54', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('55', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('56', '2', '2015-08-18', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('57', '2', '0015-08-19', 'kk', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('58', '2', '2015-08-27', '', 'images/photo_works2.jpg', '0');
INSERT INTO photoer_works VALUES ('59', '42', '2015-10-04', 'xixix.zip', 'images/banner1.jpg', '0');
INSERT INTO photoer_works VALUES ('60', '42', '2015-10-04', 'xixix.zip', 'images/banner2.jpg', '0');
INSERT INTO photoer_works VALUES ('61', '42', '2015-10-04', 'xixix.zip', 'images/banner3.jpg', '0');
INSERT INTO photoer_works VALUES ('62', '42', '2015-10-04', 'xixix.zip', 'images/banner4.jpg', '0');
INSERT INTO photoer_works VALUES ('63', '42', '2015-10-04', 'xixix.zip', 'images/test1_dd_photoer1.jpg', '100');
INSERT INTO photoer_works VALUES ('64', '42', '2015-10-04', 'xixix.zip', 'images/test2_dd_photoer1.jpg', '100');
INSERT INTO photoer_works VALUES ('65', '42', '2015-10-04', 'xixix.zip', 'images/test3_dd_photoer1.jpg', '100');
INSERT INTO photoer_works VALUES ('66', '42', '2015-10-05', 'xixix', 'ftp://112.74.28.4\\photoer\\test2\\works\\banner1.jpg', '0');
INSERT INTO photoer_works VALUES ('67', '42', '2015-10-05', 'xixix', 'ftp://112.74.28.4\\photoer\\test2\\works\\banner2.jpg', '0');
INSERT INTO photoer_works VALUES ('68', '42', '2015-10-05', 'xixix', 'ftp://112.74.28.4\\photoer\\test2\\works\\banner3.jpg', '0');
INSERT INTO photoer_works VALUES ('69', '42', '2015-10-05', 'xixix', 'ftp://112.74.28.4\\photoer\\test2\\works\\banner4.jpg', '0');
INSERT INTO photoer_works VALUES ('70', '42', '2015-10-05', 'xixix', 'ftp://112.74.28.4\\photoer\\test2\\works\\test1_dd_photoer1.jpg', '100');
INSERT INTO photoer_works VALUES ('71', '42', '2015-10-05', 'xixix', 'ftp://112.74.28.4\\photoer\\test2\\works\\test2_dd_photoer1.jpg', '100');
INSERT INTO photoer_works VALUES ('72', '42', '2015-10-05', 'xixix', 'ftp://112.74.28.4\\photoer\\test2\\works\\test3_dd_photoer1.jpg', '100');

-- ----------------------------
-- Table structure for `tb_act_cms_right`
-- ----------------------------
DROP TABLE IF EXISTS `tb_act_cms_right`;
CREATE TABLE `tb_act_cms_right` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RIGHT_ID` int(11) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `URL` varchar(150) DEFAULT NULL,
  `MATCH_OPER` varchar(150) DEFAULT NULL COMMENT 'Ê¹ÓÃÕýÔò±í´ïÊ½Æ¥Åä¶ÔÓ¦µÄactionÀà',
  `MEMO` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKE2F738286914DAF0` (`RIGHT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_act_cms_right
-- ----------------------------
INSERT INTO tb_act_cms_right VALUES ('1', null, '系统管理', '', '', '系统管理菜单');
INSERT INTO tb_act_cms_right VALUES ('11', '1', '角色管理', '/system/role.action', '/system/role', '角色管理页面.');
INSERT INTO tb_act_cms_right VALUES ('12', '1', '用户管理', '/system/user.action', '/system/user', '用户管理页面');
INSERT INTO tb_act_cms_right VALUES ('10', '1', '权限管理', '/system/right.action', '/system-manager/right', null);
INSERT INTO tb_act_cms_right VALUES ('57', '42', '化妆师作品管理', '/romantic/makeup-works.action', '/romantic/makeup-works', '填写此权限的描述性文字.');
INSERT INTO tb_act_cms_right VALUES ('56', '42', '化妆师管理', '/romantic/makeup-makeer.action', '/romantic/makeup-makeer', '填写此权限的描述性文字.');
INSERT INTO tb_act_cms_right VALUES ('54', '42', '摄影师作品管理', '/romantic/photoer-works.action', '/romantic/photoer-works', '填写此权限的描述性文字.');
INSERT INTO tb_act_cms_right VALUES ('55', '42', '摄影师管理', '/romantic/photoer.action', '/romantic/photoer', '填写此权限的描述性文字.');
INSERT INTO tb_act_cms_right VALUES ('42', null, 'pcbs', '/', '/', '填写此权限的描述性文字.');
INSERT INTO tb_act_cms_right VALUES ('45', '1', 'ip限制管理', '/system/ip-filter.action', '/system/ip-filter', '填写此权限的描述性文字.');
INSERT INTO tb_act_cms_right VALUES ('53', '42', '客户留言管理', '/romantic/message2.action', '/romantic/message2', 'test');

-- ----------------------------
-- Table structure for `tb_act_cms_role`
-- ----------------------------
DROP TABLE IF EXISTS `tb_act_cms_role`;
CREATE TABLE `tb_act_cms_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) DEFAULT NULL,
  `MEMO` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_act_cms_role
-- ----------------------------
INSERT INTO tb_act_cms_role VALUES ('1', '管理员', '管理员');
INSERT INTO tb_act_cms_role VALUES ('2', '渠道', '');

-- ----------------------------
-- Table structure for `tb_act_cms_rs_role_right`
-- ----------------------------
DROP TABLE IF EXISTS `tb_act_cms_rs_role_right`;
CREATE TABLE `tb_act_cms_rs_role_right` (
  `RIGHT_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`RIGHT_ID`),
  KEY `FKC4AC23DDECDD7884` (`ROLE_ID`),
  KEY `FKC4AC23DD6914DAF0` (`RIGHT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_act_cms_rs_role_right
-- ----------------------------
INSERT INTO tb_act_cms_rs_role_right VALUES ('1', '1');
INSERT INTO tb_act_cms_rs_role_right VALUES ('10', '1');
INSERT INTO tb_act_cms_rs_role_right VALUES ('11', '1');
INSERT INTO tb_act_cms_rs_role_right VALUES ('12', '1');
INSERT INTO tb_act_cms_rs_role_right VALUES ('42', '1');
INSERT INTO tb_act_cms_rs_role_right VALUES ('45', '1');
INSERT INTO tb_act_cms_rs_role_right VALUES ('53', '1');
INSERT INTO tb_act_cms_rs_role_right VALUES ('54', '1');
INSERT INTO tb_act_cms_rs_role_right VALUES ('55', '1');
INSERT INTO tb_act_cms_rs_role_right VALUES ('56', '1');
INSERT INTO tb_act_cms_rs_role_right VALUES ('57', '1');

-- ----------------------------
-- Table structure for `tb_act_cms_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_act_cms_user`;
CREATE TABLE `tb_act_cms_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(11) DEFAULT NULL,
  `ACCOUNT` varchar(40) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `PASSWD` varchar(32) DEFAULT NULL,
  `PHONE` varchar(14) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `LAST_LOGIN_TIME` datetime DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  `MEMO` varchar(150) DEFAULT NULL,
  `CITY_CODE` varchar(4) DEFAULT NULL,
  `RECEIVE_SMS` int(11) DEFAULT NULL,
  `pnList` text,
  `cpayid` varchar(50) DEFAULT NULL,
  `gameid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK622A843FECDD7884` (`ROLE_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_act_cms_user
-- ----------------------------
INSERT INTO tb_act_cms_user VALUES ('1', '1', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '13126478100', '', '2012-07-02 16:11:22', '2015-10-08 17:42:42', '1', '', '', '3', '', 'gzmanwei', 'hanghaidashidaien');
INSERT INTO tb_act_cms_user VALUES ('15', '1', 'jifenglieren', 'jifenglieren', 'c248ab4ac07969bd3360de9b9fa094b6', null, null, '2015-07-16 09:34:13', '2015-07-16 09:34:26', '1', null, null, null, 'com.hunter.storm.hy!@#jd001', 'gzshenhai', 'jifenglieren');
INSERT INTO tb_act_cms_user VALUES ('14', '2', 'dianyi_sgc', 'dianyi_sgc', '42d15fb96dce9c6f8a5e8bca934ca929', null, null, '2015-01-23 10:05:26', '2015-01-23 11:17:15', '1', null, null, null, 'aa', 'aa', 'aa');
INSERT INTO tb_act_cms_user VALUES ('13', '1', 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', null, null, '2015-01-05 15:15:37', '2015-01-05 15:15:49', '1', null, null, null, '', '', '');
INSERT INTO tb_act_cms_user VALUES ('16', '1', 'jiezhaobalvbu', 'jiezhaobalvbu', '6c7cb519d8d7cf8ac8c1d772b494ac7b', null, null, '2015-07-16 10:24:43', '2015-07-17 17:21:00', '1', null, null, null, 'com.give.zhao.yb!@#jd001', 'twfeiyu', 'jiezhaobalvbu');
INSERT INTO tb_act_cms_user VALUES ('17', '1', 'sanguoce', 'sanguoce', 'b1cdf3712cd6f2e5112d58dd0b91797b', null, null, '2015-07-17 14:37:22', '2015-07-17 17:23:29', '1', null, null, null, 'com.sgc.jdgl!@#qcsg_004,com.ej.plsj!@#qcsg_006,com.ej.plsg!@#qcsg_007,com.ej.zstx!@#qcsg_009,com.ej.fyws!@#qcsg_010,com.ce.sg!@#qcsg_011,com.sanguo.ce.gp!@#qcsg_012,com.full.wildness!@#qcsg_013,com.zs.sanguo2!@#qcsg_014', 'szransi', 'sanguoshijie');

-- ----------------------------
-- Table structure for `tb_act_result_code`
-- ----------------------------
DROP TABLE IF EXISTS `tb_act_result_code`;
CREATE TABLE `tb_act_result_code` (
  `CREATE_DATE` datetime DEFAULT NULL,
  `MEMO` varchar(500) DEFAULT NULL,
  `ERROR_TEXT` varchar(200) DEFAULT NULL,
  `CONSTANT_NAME` varchar(200) DEFAULT NULL,
  `RESULT_CODE` int(11) NOT NULL,
  PRIMARY KEY (`RESULT_CODE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_act_result_code
-- ----------------------------
INSERT INTO tb_act_result_code VALUES ('2012-03-23 14:10:56', '系统内部错误,当错误不确定,或不可预料的错误发生时抛出', '系统内部错误', 'SYS_INTERNAL_ERROR', '1');
INSERT INTO tb_act_result_code VALUES ('2012-03-23 14:11:39', '登陆时检查用户账号不存在.', '账号不存在', 'LOGIN_ACCOUNT_NOT_FOUND', '100');
INSERT INTO tb_act_result_code VALUES ('2012-03-23 14:13:38', '系统登陆时,账号密码不正确.', '账号密码错误', 'LOGIN_ACCOUNT_PASSWORD_ERROR', '101');
INSERT INTO tb_act_result_code VALUES ('2012-03-23 14:17:09', '用户页面闲置太久导致Session已超时,此时访问需要登陆才可访问的资源,会抛出该消息.', '登陆超时', 'LOGIN_TIMEOUT', '102');
INSERT INTO tb_act_result_code VALUES ('2012-03-23 14:17:42', '用户修改自己的密码,旧的密码不正确时抛出', '旧密码错误', 'OLD_PASSWORD_ERROR', '103');
INSERT INTO tb_act_result_code VALUES ('2012-03-23 14:21:20', '尝试访问未被授权的资源时抛出', '非法访问 ', 'AUTH_ILLEGAL_ACCESS', '104');
INSERT INTO tb_act_result_code VALUES ('2012-03-23 14:21:11', '尝试访问未被授权的功能时抛出', '鉴权失败', 'AUTH_FAIL', '105');
INSERT INTO tb_act_result_code VALUES ('2012-03-23 14:21:52', '登陆时,账号或密码为空', '账号或密码为空', 'LOGIN_ACCOUNT_OR_PASSWORD_BLANK', '106');
INSERT INTO tb_act_result_code VALUES ('2012-05-09 16:41:39', '删除使用中的权限时', '被引用的权限未能删除成功', 'RIGHT_DELETE_IN_USED', '107');
INSERT INTO tb_act_result_code VALUES ('2012-05-09 16:41:06', '删除使用中的角色时', '被引用的角色未能删除成功', 'ROLE_DELETE_IN_USED', '108');
INSERT INTO tb_act_result_code VALUES ('2012-05-16 11:40:07', '删除有文章的栏目时', '被引用的栏目未能删除成功', 'CATEGORY_DELETE_IN_USED', '109');
INSERT INTO tb_act_result_code VALUES ('2012-05-16 11:40:37', '删除有文章的用户或删除超级管理员时', '被引用的用户未能删除成功', 'CMS_USER_DELETE_IN_USED', '110');
INSERT INTO tb_act_result_code VALUES ('2012-06-13 10:33:30', '上传文件时超出允许大小时', '你上传的文件超过允许的大小', 'FILE_UPLOAD_SIZE_LIMIT_EXCEEDED', '111');

-- ----------------------------
-- Table structure for `tb_act_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_act_user`;
CREATE TABLE `tb_act_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `user_mdn` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `answer` varchar(200) DEFAULT NULL COMMENT '选择题答案：1A,2B,3ABC...这样的格式记录用户的答案',
  `suggest` varchar(1000) DEFAULT NULL COMMENT '户用的建议',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_act_user
-- ----------------------------
INSERT INTO tb_act_user VALUES ('50', '奋斗奋斗', '13122112211', '1A,2A,3A,4A,6B,7B', '反对反对撒发生大幅度所发生的放松放松放松的方式的防守对方是否萨芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬反对反对撒发生大幅度所发生的放松放松放松的方式的防守对方是否萨芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬反对反对撒发生大幅度所发生的放松放松放松的方式的防守对方是否萨芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬反对反对撒发生大幅度所发生的放松放松放松的方式的防守对方是否萨芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬', '2013-07-29 16:26:42');
INSERT INTO tb_act_user VALUES ('55', '才宣布您', '13126478521', '1B,2B,3B,4BC,5C,7B,8C,9C,10C', '发呆发呆发呆', '2013-07-29 16:35:46');
INSERT INTO tb_act_user VALUES ('57', '扎错', '15312312121', '1A,2B,3A,4A,5B,6A,7B,8A,9A,10A', null, '2013-07-29 17:38:47');
INSERT INTO tb_act_user VALUES ('58', 'fddfd', '13122112211', ',9C', 'fdfd', '2013-07-30 10:41:01');
INSERT INTO tb_act_user VALUES ('59', 'fdfdfs', '13112222212', '9D', 'vfdsfds', '2013-07-30 10:56:11');
INSERT INTO tb_act_user VALUES ('60', 'xx', '11', 'a', 'suggestsss', '2013-07-29 16:26:42');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `repassword` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `tb_userinfo`;
CREATE TABLE `tb_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `repassword` varchar(16) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO t_user VALUES ('1', 'xufeng');
