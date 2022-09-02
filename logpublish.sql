/*
 Navicat MySQL Data Transfer

 Source Server         : aa
 Source Server Type    : MySQL
 Source Server Version : 50537
 Source Host           : localhost:3306
 Source Schema         : logpublish

 Target Server Type    : MySQL
 Target Server Version : 50537
 File Encoding         : 65001

 Date: 08/06/2021 12:42:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aa
-- ----------------------------
DROP TABLE IF EXISTS `aa`;
CREATE TABLE `aa`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `age` int(10) NULL DEFAULT NULL,
  `bir` date NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of aa
-- ----------------------------
INSERT INTO `aa` VALUES (1, 'qq', 12, '2020-12-12', 1);

-- ----------------------------
-- Table structure for loginfo
-- ----------------------------
DROP TABLE IF EXISTS `loginfo`;
CREATE TABLE `loginfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of loginfo
-- ----------------------------
INSERT INTO `loginfo` VALUES (1, '标题11', '内容11', '2021-05-25 10:57:37', 1);
INSERT INTO `loginfo` VALUES (2, '标题2', '内容2', '2021-05-25 10:57:40', 1);
INSERT INTO `loginfo` VALUES (4, 'aa', 'aa', '2021-06-01 10:19:54', 2);
INSERT INTO `loginfo` VALUES (6, 'asdfdfadsgadsg', 'afdsgf adsgadasdgdfg', '2021-06-08 11:08:30', 1);
INSERT INTO `loginfo` VALUES (7, 'fdhxcfvbxcv', 'bcvzbxcvbzcvbz', '2021-06-08 11:08:36', 1);
INSERT INTO `loginfo` VALUES (8, 'asdfa', 'asdfasd', '2021-06-08 11:14:24', 2);
INSERT INTO `loginfo` VALUES (9, 'asdga', 'dsgasdgads', '2021-06-08 11:14:29', 2);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `bir` date NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `imgUrl` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sex` int(255) NULL DEFAULT NULL COMMENT '1:男 ，2:女',
  `status` int(255) NOT NULL DEFAULT 1 COMMENT '0:注销 ，1:正常 ，2:禁用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'aa', '123456', '2021-03-09', '13673301774', 'qwe@11.com', 'geag', 'upLoad/1.jpg', 1, 1);
INSERT INTO `userinfo` VALUES (2, 'bb', '123456', '2021-03-03', '15634563786', 'asd@ssd.com', 'asdf', 'upLoad/2.jpg', 2, 1);
INSERT INTO `userinfo` VALUES (3, 'cc', '123456', '2021-02-19', '15847833783', 'ss@46.com', 'fsdf', 'upLoad/3.jpg', 1, 1);
INSERT INTO `userinfo` VALUES (5, 'qwer', '123456', '2021-05-04', '1234345', '1234', '1324', 'upLoad/4.jpg', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
