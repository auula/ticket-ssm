/*
 Navicat Premium Data Transfer

 Source Server         : ticket
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : 52.175.120.54:3306
 Source Schema         : ticket

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 18/01/2020 18:03:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_table
-- ----------------------------
DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE `admin_table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_table
-- ----------------------------
INSERT INTO `admin_table` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table`  (
  `oid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'order订单id',
  `order_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `create_time` timestamp(0) NOT NULL COMMENT '订单创建时间',
  `order_uid` bigint(20) NOT NULL COMMENT '订单用户',
  `total_money` decimal(8, 2) NOT NULL COMMENT '订单总价',
  `scenic_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '景点名称',
  `people_number` int(255) NOT NULL DEFAULT 1 COMMENT '预约人数',
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `order_uid`(`order_uid`) USING BTREE,
  CONSTRAINT `order_uid` FOREIGN KEY (`order_uid`) REFERENCES `user_table` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_table
-- ----------------------------
INSERT INTO `order_table` VALUES (1, '1234567890000', '2020-01-16 12:01:34', 7, 188.00, '鼎湖山', 1);
INSERT INTO `order_table` VALUES (4, 'a417fa29-2c38-4ce6-9fcf-0103f4e547c4', '2020-01-16 13:04:57', 7, 98.00, '鼎湖山2同古屋生态旅游度假村.', 1);
INSERT INTO `order_table` VALUES (7, 'd42f31c6-87c2-4aff-a522-8cfe6c4fdc03', '2020-01-16 15:14:50', 7, 490.00, '鼎湖山2同古屋生态旅游度假村.', 5);

-- ----------------------------
-- Table structure for scenic_table
-- ----------------------------
DROP TABLE IF EXISTS `scenic_table`;
CREATE TABLE `scenic_table`  (
  `sid` bigint(255) NOT NULL AUTO_INCREMENT COMMENT 'scenic景点id',
  `scenic_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '景点名称',
  `scenic_price` decimal(8, 2) UNSIGNED ZEROFILL NOT NULL COMMENT '景点price价格',
  `scenic_address` varchar(180) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '景点地址',
  `scenic_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '景点详情',
  `scenic_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '景点图片',
  `scenic_star` int(255) NOT NULL DEFAULT 0 COMMENT '景点热点 前台每点击一次就加一',
  `createTime` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '景点创建时间',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of scenic_table
-- ----------------------------
INSERT INTO `scenic_table` VALUES (1, '鼎湖山同古屋生态旅游度假村.', 000089.60, '凤凰镇同古村旧学校(近九龙湖)', '鼎湖山位于广东省肇庆市境东北部，距肇庆市区18公里，由10多座山组成，总面积11.33平方公里。主峰海拔1000米，是珠江三角洲地区的最高峰。鼎湖山以其是集风景旅游、科学研究、宗教朝拜于一体的胜地而被称为岭南四大名山之首.', 'https://dimg08.c-ctrip.com/images/10091800000158k9e21A6_C_1600_1200_Mtg_7.jpg', 27, '2020-01-14 21:10:57');
INSERT INTO `scenic_table` VALUES (2, '鼎湖山2同古屋生态旅游度假村.', 000098.00, '凤凰镇同古村旧学校(近九龙湖)', '鼎湖山位于广东省肇庆市境东北部，距肇庆市区18公里，由10多座山组成，总面积11.33平方公里。主峰海拔1000米，是珠江三角洲地区的最高峰。鼎湖山以其是集风景旅游、科学研究、宗教朝拜于一体的胜地而被称为岭南四大名山之首.', 'https://dimg08.c-ctrip.com/images/10091800000158k9e21A6_C_1600_1200_Mtg_7.jpg', 19, '2020-01-14 18:33:06');

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table`  (
  `uid` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '用户id\r\n',
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `createTime` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '用户创建时间',
  `idcard` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '身份证号\r\n',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES (7, '小明啊', 'admin123', '2020-01-13 14:50:31', '098765432112345678');
INSERT INTO `user_table` VALUES (9, '测试23', '12123123', '2020-01-16 22:10:59', '111111111111111111');

SET FOREIGN_KEY_CHECKS = 1;
