/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 30/07/2018 19:51:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_book_infor
-- ----------------------------
DROP TABLE IF EXISTS `tbl_book_infor`;
CREATE TABLE `tbl_book_infor`  (
  `book_id` int(11) NOT NULL,
  `book_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_book_infor
-- ----------------------------
INSERT INTO `tbl_book_infor` VALUES (1000, '1', '数据结构', 0);
INSERT INTO `tbl_book_infor` VALUES (1001, '1', 'C语言', 2);
INSERT INTO `tbl_book_infor` VALUES (1002, '2', '大学英语', 2);
INSERT INTO `tbl_book_infor` VALUES (1003, '2', '高等数学', 5);
INSERT INTO `tbl_book_infor` VALUES (1004, '2', '大学物理', 5);
INSERT INTO `tbl_book_infor` VALUES (1005, '7', '马克思思想', 5);
INSERT INTO `tbl_book_infor` VALUES (1007, '8', '电脑维修', 4);
INSERT INTO `tbl_book_infor` VALUES (1008, '9', 'Web技术', 5);
INSERT INTO `tbl_book_infor` VALUES (1010, '50', '程序员的自我修养', 2);
INSERT INTO `tbl_book_infor` VALUES (2000, '3', '我i的世界', 13);

-- ----------------------------
-- Table structure for tbl_book_send
-- ----------------------------
DROP TABLE IF EXISTS `tbl_book_send`;
CREATE TABLE `tbl_book_send`  (
  `send_book_id` int(11) NOT NULL,
  `send_student_id` int(11) NULL DEFAULT NULL,
  `send_book_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`send_book_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_book_send
-- ----------------------------
INSERT INTO `tbl_book_send` VALUES (1010, 123, 1);

-- ----------------------------
-- Table structure for tbl_book_student
-- ----------------------------
DROP TABLE IF EXISTS `tbl_book_student`;
CREATE TABLE `tbl_book_student`  (
  `student_id` int(10) NOT NULL,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` int(10) NULL DEFAULT NULL,
  `student_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_book_student
-- ----------------------------
INSERT INTO `tbl_book_student` VALUES (123, '邓聪', 123, '男');
INSERT INTO `tbl_book_student` VALUES (1212, '1212', 1212, '男');
INSERT INTO `tbl_book_student` VALUES (12345, '徐圆通', 1234, '男');
INSERT INTO `tbl_book_student` VALUES (110120, '徐圆通', 123, '男');
INSERT INTO `tbl_book_student` VALUES (201710, '唐亦', 201710, '男');

SET FOREIGN_KEY_CHECKS = 1;
