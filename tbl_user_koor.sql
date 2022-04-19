/*
 Navicat Premium Data Transfer

 Source Server         : laragon
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : db_zakat_new

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 19/04/2022 15:51:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_user_koor
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_koor`;
CREATE TABLE `tbl_user_koor`  (
  `id_user_koor` int(11) NOT NULL AUTO_INCREMENT,
  `nama_koor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `panggilan_koor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_koor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `level` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user_koor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user_koor
-- ----------------------------
INSERT INTO `tbl_user_koor` VALUES (1, 'M. Apriadi Setiawan', 'Adi', '1', 'adi', 'c46335eb267e2e1cde5b017acb4cd799', 7);
INSERT INTO `tbl_user_koor` VALUES (2, 'M. Nur Laba', 'Mas Nur', '2', 'nur', 'b55178b011bfb206965f2638d0f87047', 7);
INSERT INTO `tbl_user_koor` VALUES (3, 'Rizky', 'Rizky', '3', 'rizky', '49d8712dd6ac9c3745d53cd4be48284c', 7);
INSERT INTO `tbl_user_koor` VALUES (4, 'Abdul Mughni', 'Oni', '4', 'oni', 'cb7f4a5e75e6f7340971c99ea4587999', 7);
INSERT INTO `tbl_user_koor` VALUES (5, 'Miftachudin', 'mifta', '5', 'mifta', '150bfb5c3fcc30c477b8253721262363', 7);
INSERT INTO `tbl_user_koor` VALUES (6, 'Zahid', 'Zahid', '6', 'zahid', 'c651148415ab2a260e6c506075c12ae3', 7);

SET FOREIGN_KEY_CHECKS = 1;
