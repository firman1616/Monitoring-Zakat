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

 Date: 21/04/2022 01:49:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_penerima
-- ----------------------------
DROP TABLE IF EXISTS `tbl_penerima`;
CREATE TABLE `tbl_penerima`  (
  `id_penerima` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penerima` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ket_penerima` int(11) NULL DEFAULT NULL,
  `koor` int(11) NULL DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `status_penerima` int(1) NULL DEFAULT 0,
  `validation_data` int(255) NULL DEFAULT 0,
  `date_validation` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_penerima`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 394 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_penerima
-- ----------------------------
INSERT INTO `tbl_penerima` VALUES (1, 'Sumarso', 1, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (2, 'Bu Yani', 3, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (4, 'Bu Saropah', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (6, 'Bpk Jayadi (Sanimas)', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (8, 'Bu Jenjem', 1, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (9, 'Eka', 1, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (10, 'Bpk Suli', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (12, 'Bpk Samsul', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (13, 'Futihatus', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (14, 'Bu Zubaidah', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (15, 'Bu Kasiah', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (16, 'Bu Julaika', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (17, 'Bpk Sumarsono', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (18, 'Bpk Yono', 1, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (19, 'Bpk Marianto ', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (20, 'Bpk Sahid ', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (21, 'Bpk Surati', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (22, 'Bu Sunar', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (24, 'Bpk Sari (Suroso) /sri utami', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (25, 'Bpk Soemedi', 3, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (26, 'Bu Fida (Qodir)', 3, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (27, 'Bpk Hada’ (Bu Titin)', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (28, 'Bpk Jaiman', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (29, 'Bpk Paidi', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (31, 'Bu Siti', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (32, 'Bpk Joko', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (33, 'Rita', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (36, 'Choirul (Dian)', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (37, 'ibu diana', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (38, 'Mad Bukhori', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (39, 'Bu Khomsatun', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (41, 'Bpk Qodir', 3, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (42, 'bu juaria', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (46, 'Agus Salim', 3, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (47, 'Abd. Rosyid', 3, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (48, 'M. Isa', 1, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (49, 'Karsimin', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (50, 'Socheh', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (51, 'Juwariyah', 3, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (54, 'Bu Nur (Pecel)', 1, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (55, 'Sunaryo (Doyok)', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (56, 'H. Chamim Rosidi', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (57, 'Abd. Ghofur', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (58, 'Fatchul Korib', 1, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (59, 'Ach Kamaludin', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (61, 'Rochimah', 3, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (63, 'Sua Pijet', 1, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (64, 'Riadi', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (65, 'Kholil', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (66, 'Ani', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (68, 'Sriama (Pecel)', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (69, 'Nining (Alm Kamid) ', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (70, 'Zahro', 3, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (74, 'Martini (Kost Tulus)', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (113, 'Hj. Nurul Qomariyah', 3, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (114, 'Bu Ameni', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (115, 'Bpk Khusairi', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (116, 'Bu Sumarni', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (117, 'Bu Semi', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (118, 'Bpk Sigit Sugiarto ', 2, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (119, 'Bu Nur Rohmah', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (121, 'Bu Mudjiono', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (122, 'Amal', 2, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (123, 'Bu Siamah', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (124, 'Bu Nur Mahmuda', 2, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (125, 'Toni M', 2, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (126, 'Hj. Indahwati ', 3, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (127, 'H. Anas Aly', 3, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (129, 'Bpk Mat Jeliteng', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (130, 'Bu Harti (Malik)', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (132, 'Hari Setiono', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (133, 'Bpk M Sofi’i', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (134, 'Bpk Saimun', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (166, 'Asemah', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (167, 'Ulis', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (168, 'Ninik', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (169, 'Fitri', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (170, 'Bu Kadiman/Jayem', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (172, 'Ny Sembodo', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (173, 'Munasri', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (174, 'Ny.Kholiq', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (176, 'Imam kos Mukiyat', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (177, 'Gunawan Kos Yus', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (178, 'Endang', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (179, 'Bunda Diyah', 3, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (180, 'Alm Umar Efendy', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (181, 'Agus', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (182, 'Taufiq', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (183, 'Kusnan kos', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (184, 'Meme', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (185, 'Sunarsih', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (186, 'Ibu Mirna', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (187, 'Makrufah', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (188, 'Ibu Ulfa', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (191, 'Rinda', 3, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (192, 'Asmalika', 3, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (193, 'Ibu Maya', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (194, 'Romlah', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (195, 'Nur Azizah ', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (209, 'P.panut', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (211, 'Harsono/ning nur', 1, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (215, 'Bu Lek Alif ?', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (216, 'Sulika', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (217, 'Tas\'an', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (218, 'Ibu Dinda', 1, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (220, 'bpk untung', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (221, 'dul hadi', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (222, 'sulton', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (223, 'bu nurul', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (224, 'bpk buri', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (225, 'irtanto', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (226, 'Jaswadi', 2, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (227, 'Dani', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (228, 'Tutik', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (230, 'Bu Tin (Khundoli)', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (231, 'Mut (gorengan)', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (232, 'Abdul Kahar', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (234, 'Ning Susiati', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (235, 'Muslimah', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (236, 'Sholeh', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (238, 'Ninik', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (239, 'Tutik', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (241, 'Asiah', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (242, 'Sariyah', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (246, 'Naimun', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (251, 'Zainuri', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (254, 'Eko', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (255, 'Ali Ibrahim', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (256, 'Ali Fathani', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (257, 'Fathana', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (258, 'Ali Mustaqim', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (259, 'Yulima', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (260, 'Buk Mar\'ah', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (261, 'Rokha', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (262, 'Mariah', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (263, 'Wati', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (264, 'Buk Win', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (265, 'Aas', 3, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (266, 'Bu Siti', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (268, 'Darmi (Genduk)', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (271, 'Bu Suha ', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (274, 'Ibunya Nera', 2, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (276, 'Susi', 3, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (298, 'Yaati kos erwin', 2, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (299, 'Toari', 2, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (303, 'Agung', 1, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (304, 'Bu sundari', 2, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (305, 'Hariono (kost suyono)', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (306, 'Martinus(kost pipit)', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (307, 'Rohman(kost pipit)', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (308, 'Bpk hermanto', 2, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (309, 'Edi Supriyanto', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (310, 'Iwan(kost nyoman)', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (312, 'Yudha', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (313, 'Rais', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (314, 'Basri', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (317, 'Mulyosantoso', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (318, 'Mbak Tatik', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (319, 'Mbah Mud', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (320, 'Mbah Kamiso', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (321, 'Mega FS', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (322, 'Amala', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (323, 'Misnati', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (324, 'Latifah', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (325, 'Mbah Ratmi', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (326, 'Yadi', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (327, 'Jamila', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (328, 'P Mat satpam', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (329, 'Bu Sum', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (330, 'P Minto', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (331, 'P. Sokib', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (332, 'Suryati', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (333, 'Khozin', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (335, 'Mujiati', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (336, 'Dewi Asfiyah', 3, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (337, 'Nur Anisah', 3, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (339, 'Ulfa', 3, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (341, 'Seno Susanto', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (342, 'P. Misri', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (343, 'P. Rokim', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (347, 'P. Taufik H', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (348, 'B. Lilik', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (349, 'Tantok', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (350, 'Putra', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (351, 'P. Komar', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (352, 'Purnomo (bagas)', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (353, 'Bambang Ase', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (355, 'P. Dono Novi', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (356, 'Sutrisno', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (357, 'Sugeng P', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (358, 'Mbah Siti', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (360, 'Umi kalsum', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (361, 'M Amin', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (365, 'Arwintono', 2, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (366, 'karomah ', 1, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (367, 'ibu sri cucuk ', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (368, 'nah rowi ', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (369, 'jumaroh', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (370, 'pak totok', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (371, 'ayu ', 1, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (372, 'maimunah', 1, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (373, 'ropi\'ah', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (374, 'bapak paeran ', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (376, 'Ayah Arimbi (pengamen)', 2, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (377, 'Bpk. Paijan (supir Bemo)', 1, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (378, 'Abdul  Karim', 2, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (379, 'Ustd. Abdi', 3, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (380, 'Komaria', 1, 15, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (381, 'Aisyah', 3, 18, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (382, 'Sunarto', 1, 19, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (384, 'Yati', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (385, 'Rianto', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (386, 'Kholil', 1, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (387, 'Imam Muslik', 2, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (388, 'H. Jufri', 3, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (389, 'Malikhah', 3, 16, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (390, 'Siti Mudrika', 3, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (391, 'Sri Rahayu', 2, 17, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (392, 'Ten Ketang', 2, 14, 0, 0, 0, NULL);
INSERT INTO `tbl_penerima` VALUES (393, 'Tukiyem', 1, 17, 0, 0, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
