/*
 Navicat Premium Data Transfer

 Source Server         : XAMPP 7
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : db_zakat_new

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 15/04/2021 10:44:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_donatur
-- ----------------------------
DROP TABLE IF EXISTS `tbl_donatur`;
CREATE TABLE `tbl_donatur`  (
  `id_donatur` int NOT NULL AUTO_INCREMENT,
  `nama_donatur` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_donatur` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `bukti_terima` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nominal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `petugas_penerima` int NULL DEFAULT NULL,
  `validation` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_donatur`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_donatur
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_master_alamat
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_alamat`;
CREATE TABLE `tbl_master_alamat`  (
  `id_master_alamat` int NOT NULL AUTO_INCREMENT,
  `nama_master_alamat` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_master_alamat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_alamat
-- ----------------------------
INSERT INTO `tbl_master_alamat` VALUES (1, 'RT 01');
INSERT INTO `tbl_master_alamat` VALUES (2, 'RT 02');
INSERT INTO `tbl_master_alamat` VALUES (3, 'RT 03');
INSERT INTO `tbl_master_alamat` VALUES (4, 'RT 18');
INSERT INTO `tbl_master_alamat` VALUES (5, 'RT 19');
INSERT INTO `tbl_master_alamat` VALUES (6, 'RT 20');

-- ----------------------------
-- Table structure for tbl_master_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_jabatan`;
CREATE TABLE `tbl_master_jabatan`  (
  `id_master_jabatan` int NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_master_jabatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_jabatan
-- ----------------------------
INSERT INTO `tbl_master_jabatan` VALUES (1, 'Admin');
INSERT INTO `tbl_master_jabatan` VALUES (2, 'Sekretaris');
INSERT INTO `tbl_master_jabatan` VALUES (3, 'Petugas');
INSERT INTO `tbl_master_jabatan` VALUES (4, 'Bendahara');
INSERT INTO `tbl_master_jabatan` VALUES (5, 'Koordinator');

-- ----------------------------
-- Table structure for tbl_master_kwitansi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_kwitansi`;
CREATE TABLE `tbl_master_kwitansi`  (
  `id_kwitansi` int NOT NULL AUTO_INCREMENT,
  `nama_organisasi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_lembaga` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_organisasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `pembayaran` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kota_kwitansi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_organisasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id_kwitansi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_kwitansi
-- ----------------------------
INSERT INTO `tbl_master_kwitansi` VALUES (1, 'Remaja Masjid Nurul ', 'Masjid Besar Nurul H', 'logo_1587121453.png', 'Maal, Partisipasi So', 'Janti ', 'Jl. Brigjen Katamso No.123 Janti, Waru - Sidoarjo');

-- ----------------------------
-- Table structure for tbl_master_laporan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_laporan`;
CREATE TABLE `tbl_master_laporan`  (
  `id_master_lap` int NOT NULL AUTO_INCREMENT,
  `jabataan_lap` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_pemilik_jabatan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `masehi` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hijriyah` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_sekretaris` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_master_lap`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_laporan
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_master_lokasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_lokasi`;
CREATE TABLE `tbl_master_lokasi`  (
  `id_lokasi` int NOT NULL,
  `nama_lokasi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_lokasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kontak_lokasi` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto_lokasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id_lokasi`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_lokasi
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_master_maal
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_maal`;
CREATE TABLE `tbl_master_maal`  (
  `id_master_maal` int NOT NULL AUTO_INCREMENT,
  `nama_maal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_master_maal`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_maal
-- ----------------------------
INSERT INTO `tbl_master_maal` VALUES (1, 'Maal');
INSERT INTO `tbl_master_maal` VALUES (2, 'Partisipasi Sosial');
INSERT INTO `tbl_master_maal` VALUES (3, 'Infaq / Shodaqo');
INSERT INTO `tbl_master_maal` VALUES (4, 'Fidyah');

-- ----------------------------
-- Table structure for tbl_master_penerima
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_penerima`;
CREATE TABLE `tbl_master_penerima`  (
  `id_ket` int NOT NULL AUTO_INCREMENT,
  `nama_ket` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_ket`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_penerima
-- ----------------------------
INSERT INTO `tbl_master_penerima` VALUES (1, 'Berat');
INSERT INTO `tbl_master_penerima` VALUES (2, 'RIngan');
INSERT INTO `tbl_master_penerima` VALUES (3, 'Sabil');

-- ----------------------------
-- Table structure for tbl_penerima
-- ----------------------------
DROP TABLE IF EXISTS `tbl_penerima`;
CREATE TABLE `tbl_penerima`  (
  `id_penerima` int NOT NULL,
  `nama_penerima` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ket_penerima` int NULL DEFAULT NULL,
  `koor` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_penerima`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_penerima
-- ----------------------------
INSERT INTO `tbl_penerima` VALUES (1, 'Sumarso', 1, 1);
INSERT INTO `tbl_penerima` VALUES (2, 'Bu Yani', 3, 1);
INSERT INTO `tbl_penerima` VALUES (3, 'Bpk Matakup', 2, 1);
INSERT INTO `tbl_penerima` VALUES (4, 'Bu Saropah', 2, 1);
INSERT INTO `tbl_penerima` VALUES (5, 'Bpk Parman', 2, 1);
INSERT INTO `tbl_penerima` VALUES (6, 'Bpk Jayadi (Sanimas)', 2, 1);
INSERT INTO `tbl_penerima` VALUES (7, 'Bu Matrio / Sampah', 1, 1);
INSERT INTO `tbl_penerima` VALUES (8, 'Bu Jenjem', 1, 1);
INSERT INTO `tbl_penerima` VALUES (9, 'Eka', 1, 1);
INSERT INTO `tbl_penerima` VALUES (10, 'Bpk Suli', 2, 1);
INSERT INTO `tbl_penerima` VALUES (11, 'Ibu hasanah ', 1, 1);
INSERT INTO `tbl_penerima` VALUES (12, 'Bpk Samsul', 3, 1);
INSERT INTO `tbl_penerima` VALUES (13, 'Futihatus', 2, 1);
INSERT INTO `tbl_penerima` VALUES (14, 'Bu Zubaidah', 2, 1);
INSERT INTO `tbl_penerima` VALUES (15, 'Bu Kasiah', 2, 1);
INSERT INTO `tbl_penerima` VALUES (16, 'Bu Julaika', 2, 1);
INSERT INTO `tbl_penerima` VALUES (17, 'Bpk Sumarsono', 2, 1);
INSERT INTO `tbl_penerima` VALUES (18, 'Bpk Yono', 1, 1);
INSERT INTO `tbl_penerima` VALUES (19, 'Bpk Marianto ', 2, 1);
INSERT INTO `tbl_penerima` VALUES (20, 'Bpk Sahid ', 2, 1);
INSERT INTO `tbl_penerima` VALUES (21, 'Bpk Surati', 2, 1);
INSERT INTO `tbl_penerima` VALUES (22, 'Bu Sunar', 2, 1);
INSERT INTO `tbl_penerima` VALUES (23, 'Bpak hasan', 2, 1);
INSERT INTO `tbl_penerima` VALUES (24, 'Bpk Sari (Suroso) /sri utami', 2, 1);
INSERT INTO `tbl_penerima` VALUES (25, 'Bpk Soemedi', 3, 1);
INSERT INTO `tbl_penerima` VALUES (26, 'Bu Fida (Qodir)', 3, 1);
INSERT INTO `tbl_penerima` VALUES (27, 'Bpk Hada’ (Bu Titin)', 2, 1);
INSERT INTO `tbl_penerima` VALUES (28, 'Bpk Jaiman', 2, 1);
INSERT INTO `tbl_penerima` VALUES (29, 'Bpk Paidi', 2, 1);
INSERT INTO `tbl_penerima` VALUES (30, 'Bpk Suroso (Daia)', 2, 1);
INSERT INTO `tbl_penerima` VALUES (31, 'Bu Siti', 2, 1);
INSERT INTO `tbl_penerima` VALUES (32, 'Bpk Joko', 2, 1);
INSERT INTO `tbl_penerima` VALUES (33, 'Rita', 2, 1);
INSERT INTO `tbl_penerima` VALUES (35, 'Sholeha (P. Sari)', 2, 1);
INSERT INTO `tbl_penerima` VALUES (36, 'Choirul (Dian)', 2, 1);
INSERT INTO `tbl_penerima` VALUES (37, 'ibu diana', 2, 1);
INSERT INTO `tbl_penerima` VALUES (38, 'Mad Bukhori', 2, 1);
INSERT INTO `tbl_penerima` VALUES (39, 'Bu Khomsatun', 2, 1);
INSERT INTO `tbl_penerima` VALUES (40, 'Ten / Ketang zainul ', 2, 1);
INSERT INTO `tbl_penerima` VALUES (41, 'Bpk Qodir', 3, 1);
INSERT INTO `tbl_penerima` VALUES (42, 'bu juaria', 2, 1);
INSERT INTO `tbl_penerima` VALUES (43, 'Ny Muslika', 2, 1);
INSERT INTO `tbl_penerima` VALUES (44, 'Ulfa (Kost Nyoman)', 1, 2);
INSERT INTO `tbl_penerima` VALUES (45, 'Sowandi (Kost Suyono)', 2, 2);
INSERT INTO `tbl_penerima` VALUES (46, 'Agus Salim', 3, 2);
INSERT INTO `tbl_penerima` VALUES (47, 'Abd. Rosyid', 3, 2);
INSERT INTO `tbl_penerima` VALUES (48, 'M. Isa', 3, 2);
INSERT INTO `tbl_penerima` VALUES (49, 'Karsimin', 2, 2);
INSERT INTO `tbl_penerima` VALUES (50, 'Socheh', 3, 2);
INSERT INTO `tbl_penerima` VALUES (51, 'Juwariyah', 3, 2);
INSERT INTO `tbl_penerima` VALUES (53, 'Ibu Hamida', 2, 2);
INSERT INTO `tbl_penerima` VALUES (54, 'Bu Nur (Pecel)', 1, 2);
INSERT INTO `tbl_penerima` VALUES (55, 'Sunaryo (Doyok)', 2, 2);
INSERT INTO `tbl_penerima` VALUES (56, 'H. Chamim Rosidi', 3, 2);
INSERT INTO `tbl_penerima` VALUES (57, 'Abd. Ghofur', 2, 2);
INSERT INTO `tbl_penerima` VALUES (58, 'Fatchul Korib', 1, 2);
INSERT INTO `tbl_penerima` VALUES (59, 'Ach Kamaludin', 2, 2);
INSERT INTO `tbl_penerima` VALUES (60, 'Sundari', 1, 2);
INSERT INTO `tbl_penerima` VALUES (61, 'Rochimah', 3, 2);
INSERT INTO `tbl_penerima` VALUES (63, 'Sua Pijet', 1, 2);
INSERT INTO `tbl_penerima` VALUES (64, 'Riadi', 2, 2);
INSERT INTO `tbl_penerima` VALUES (65, 'Kholil', 1, 2);
INSERT INTO `tbl_penerima` VALUES (66, 'Ani', 1, 2);
INSERT INTO `tbl_penerima` VALUES (67, 'Abd Karim', 2, 2);
INSERT INTO `tbl_penerima` VALUES (68, 'Sriama (Pecel)', 2, 2);
INSERT INTO `tbl_penerima` VALUES (69, 'Nining (Alm Kamid) ', 2, 2);
INSERT INTO `tbl_penerima` VALUES (70, 'Zahro', 3, 2);
INSERT INTO `tbl_penerima` VALUES (74, 'Martini (Kost Tulus)', 2, 2);
INSERT INTO `tbl_penerima` VALUES (76, 'Nanang (Kost Siti)', 2, 2);
INSERT INTO `tbl_penerima` VALUES (113, 'Hj. Nurul Qomariyah', 3, 4);
INSERT INTO `tbl_penerima` VALUES (114, 'Bu Ameni', 1, 4);
INSERT INTO `tbl_penerima` VALUES (115, 'Bpk Khusairi', 1, 4);
INSERT INTO `tbl_penerima` VALUES (116, 'Bu Sumarni', 1, 4);
INSERT INTO `tbl_penerima` VALUES (117, 'Bu Semi', 1, 4);
INSERT INTO `tbl_penerima` VALUES (118, 'Bpk Sigit Sugiarto ', 2, 4);
INSERT INTO `tbl_penerima` VALUES (119, 'Bu Nur Rohmah', 3, 4);
INSERT INTO `tbl_penerima` VALUES (120, 'Bpk Saki', 1, 4);
INSERT INTO `tbl_penerima` VALUES (121, 'Bu Mudjiono', 1, 4);
INSERT INTO `tbl_penerima` VALUES (122, 'Amal', 2, 4);
INSERT INTO `tbl_penerima` VALUES (123, 'Bu Siamah', 1, 4);
INSERT INTO `tbl_penerima` VALUES (124, 'Bu Nur Mahmuda', 1, 4);
INSERT INTO `tbl_penerima` VALUES (125, 'Toni M', 2, 4);
INSERT INTO `tbl_penerima` VALUES (126, 'Hj. Indahwati ', 3, 4);
INSERT INTO `tbl_penerima` VALUES (127, 'H. Anas Aly', 3, 4);
INSERT INTO `tbl_penerima` VALUES (128, 'M. Munir', 3, 4);
INSERT INTO `tbl_penerima` VALUES (129, 'Bpk Mat Sholehuddin ', 1, 4);
INSERT INTO `tbl_penerima` VALUES (130, 'Bu Harti (Malik)', 1, 4);
INSERT INTO `tbl_penerima` VALUES (131, 'Muhaimin (Alex)', 2, 4);
INSERT INTO `tbl_penerima` VALUES (132, 'Hari Setiono', 1, 4);
INSERT INTO `tbl_penerima` VALUES (133, 'Bpk M Sofi’i', 3, 4);
INSERT INTO `tbl_penerima` VALUES (134, 'Bpk Saimun', 1, 4);
INSERT INTO `tbl_penerima` VALUES (135, 'Sunarto', 1, 5);
INSERT INTO `tbl_penerima` VALUES (136, 'Mulyosantoso', 1, 5);
INSERT INTO `tbl_penerima` VALUES (137, 'Mbak Tatik', 1, 5);
INSERT INTO `tbl_penerima` VALUES (138, 'Mbah Mud', 1, 5);
INSERT INTO `tbl_penerima` VALUES (139, 'Mbah Kamiso', 1, 5);
INSERT INTO `tbl_penerima` VALUES (140, 'Mega FS', 1, 5);
INSERT INTO `tbl_penerima` VALUES (142, 'Amala', 1, 5);
INSERT INTO `tbl_penerima` VALUES (143, 'Misnati', 1, 5);
INSERT INTO `tbl_penerima` VALUES (144, 'Latifah', 1, 5);
INSERT INTO `tbl_penerima` VALUES (145, 'Mbah Ratmi', 1, 5);
INSERT INTO `tbl_penerima` VALUES (147, 'Sutama', 1, 5);
INSERT INTO `tbl_penerima` VALUES (148, 'Yadi', 2, 5);
INSERT INTO `tbl_penerima` VALUES (149, 'Jamila', 2, 5);
INSERT INTO `tbl_penerima` VALUES (150, 'Cak Mat Satpam', 2, 5);
INSERT INTO `tbl_penerima` VALUES (151, 'Ibu Sum', 2, 5);
INSERT INTO `tbl_penerima` VALUES (152, 'Pak Minto', 2, 5);
INSERT INTO `tbl_penerima` VALUES (155, 'Bpk. Sokib', 2, 5);
INSERT INTO `tbl_penerima` VALUES (156, 'Suryati', 2, 5);
INSERT INTO `tbl_penerima` VALUES (157, 'Khozin', 2, 5);
INSERT INTO `tbl_penerima` VALUES (158, 'Sukir', 2, 5);
INSERT INTO `tbl_penerima` VALUES (159, 'Yanto', 2, 5);
INSERT INTO `tbl_penerima` VALUES (160, 'Mujiati', 3, 5);
INSERT INTO `tbl_penerima` VALUES (161, 'Dewi Asfiyah', 3, 5);
INSERT INTO `tbl_penerima` VALUES (162, 'Nur Anisah', 3, 5);
INSERT INTO `tbl_penerima` VALUES (163, 'Nur Sakbani', 3, 5);
INSERT INTO `tbl_penerima` VALUES (164, 'Ulfa', 3, 5);
INSERT INTO `tbl_penerima` VALUES (165, 'Wulan Jalil', 3, 5);
INSERT INTO `tbl_penerima` VALUES (166, 'Asemah', 2, 6);
INSERT INTO `tbl_penerima` VALUES (167, 'Ulis', 2, 6);
INSERT INTO `tbl_penerima` VALUES (168, 'Ninik', 1, 6);
INSERT INTO `tbl_penerima` VALUES (169, 'Fitri', 1, 6);
INSERT INTO `tbl_penerima` VALUES (170, 'Bu Kadiman/Jayem', 1, 6);
INSERT INTO `tbl_penerima` VALUES (172, 'Ny Sembodo', 2, 6);
INSERT INTO `tbl_penerima` VALUES (173, 'Munasri', 2, 6);
INSERT INTO `tbl_penerima` VALUES (174, 'Kholiq', 1, 6);
INSERT INTO `tbl_penerima` VALUES (175, 'Bpk Ilham Kos', 2, 6);
INSERT INTO `tbl_penerima` VALUES (176, 'Imam kos Mukiyat', 2, 6);
INSERT INTO `tbl_penerima` VALUES (177, 'Gunawan Kos Yus', 2, 6);
INSERT INTO `tbl_penerima` VALUES (178, 'Endang', 3, 6);
INSERT INTO `tbl_penerima` VALUES (179, 'Bunda Diyah', 3, 6);
INSERT INTO `tbl_penerima` VALUES (180, 'Alm Umar Efendy', 1, 6);
INSERT INTO `tbl_penerima` VALUES (181, 'Agus', 2, 6);
INSERT INTO `tbl_penerima` VALUES (182, 'Taufiq', 2, 6);
INSERT INTO `tbl_penerima` VALUES (183, 'Kusnan kos', 2, 6);
INSERT INTO `tbl_penerima` VALUES (184, 'Meme', 2, 6);
INSERT INTO `tbl_penerima` VALUES (185, 'Sunarsih', 2, 6);
INSERT INTO `tbl_penerima` VALUES (186, 'Ibu Mirna', 1, 6);
INSERT INTO `tbl_penerima` VALUES (187, 'Makrufah', 1, 6);
INSERT INTO `tbl_penerima` VALUES (188, 'Ibu Ulfa', 1, 6);
INSERT INTO `tbl_penerima` VALUES (190, 'Bu Hindun', 2, 6);
INSERT INTO `tbl_penerima` VALUES (191, 'Rinda', 3, 6);
INSERT INTO `tbl_penerima` VALUES (192, 'Asmalika', 3, 6);
INSERT INTO `tbl_penerima` VALUES (193, 'Ibu Maya', 2, 6);
INSERT INTO `tbl_penerima` VALUES (194, 'Romlah', 1, 6);
INSERT INTO `tbl_penerima` VALUES (195, 'Maryam ', 1, 6);
INSERT INTO `tbl_penerima` VALUES (196, 'Saipul kos yanto', 2, 6);
INSERT INTO `tbl_penerima` VALUES (209, 'P.panut', 3, 2);
INSERT INTO `tbl_penerima` VALUES (210, 'Udin bodrex', 2, 2);
INSERT INTO `tbl_penerima` VALUES (211, 'Harsono/ning nur', 2, 2);
INSERT INTO `tbl_penerima` VALUES (213, 'Agus mujaidi(edi)', 2, 2);
INSERT INTO `tbl_penerima` VALUES (215, 'Bu Lek Alif', 2, 6);
INSERT INTO `tbl_penerima` VALUES (216, 'Sulika', 2, 6);
INSERT INTO `tbl_penerima` VALUES (217, 'Asmadi', 1, 6);
INSERT INTO `tbl_penerima` VALUES (218, 'Lut', 2, 6);
INSERT INTO `tbl_penerima` VALUES (219, 'eka wulan', 1, 1);
INSERT INTO `tbl_penerima` VALUES (220, 'bpk untung', 2, 1);
INSERT INTO `tbl_penerima` VALUES (221, 'dul hadi', 2, 1);
INSERT INTO `tbl_penerima` VALUES (222, 'sulton', 2, 1);
INSERT INTO `tbl_penerima` VALUES (223, 'bu nurul', 2, 1);
INSERT INTO `tbl_penerima` VALUES (224, 'bpk buri', 2, 1);
INSERT INTO `tbl_penerima` VALUES (225, 'irtanto', 2, 1);
INSERT INTO `tbl_penerima` VALUES (226, 'Jaswadi', 2, 4);
INSERT INTO `tbl_penerima` VALUES (227, 'Dani', 1, 4);
INSERT INTO `tbl_penerima` VALUES (228, 'Tutik', 1, 4);
INSERT INTO `tbl_penerima` VALUES (229, 'Umiyati (kos p. Ahmad)', 1, 4);
INSERT INTO `tbl_penerima` VALUES (230, 'Khundoli', 2, 4);
INSERT INTO `tbl_penerima` VALUES (231, 'Mut (gorengan)', 1, 4);
INSERT INTO `tbl_penerima` VALUES (232, 'Abdul Kahar', 2, 3);
INSERT INTO `tbl_penerima` VALUES (233, 'Khotimah', 1, 3);
INSERT INTO `tbl_penerima` VALUES (234, 'Ning Tin', 2, 3);
INSERT INTO `tbl_penerima` VALUES (235, 'Hamzah', 1, 3);
INSERT INTO `tbl_penerima` VALUES (236, 'Sholeh', 2, 3);
INSERT INTO `tbl_penerima` VALUES (237, 'Jumadi', 2, 3);
INSERT INTO `tbl_penerima` VALUES (238, 'Ninik', 2, 3);
INSERT INTO `tbl_penerima` VALUES (239, 'Tutik', 2, 3);
INSERT INTO `tbl_penerima` VALUES (240, 'Linasih', 1, 3);
INSERT INTO `tbl_penerima` VALUES (241, 'ASiah', 1, 3);
INSERT INTO `tbl_penerima` VALUES (242, 'Sariyah', 1, 3);
INSERT INTO `tbl_penerima` VALUES (243, 'H. JUfri', 3, 3);
INSERT INTO `tbl_penerima` VALUES (244, 'Yasak', 3, 3);
INSERT INTO `tbl_penerima` VALUES (245, 'Dayat', 2, 3);
INSERT INTO `tbl_penerima` VALUES (246, 'Naium', 2, 3);
INSERT INTO `tbl_penerima` VALUES (247, 'Ali Usman', 2, 3);
INSERT INTO `tbl_penerima` VALUES (248, 'Rika', 2, 3);
INSERT INTO `tbl_penerima` VALUES (249, 'Lilik', 2, 3);
INSERT INTO `tbl_penerima` VALUES (250, 'Farid', 2, 3);
INSERT INTO `tbl_penerima` VALUES (251, 'Zainuri', 3, 3);
INSERT INTO `tbl_penerima` VALUES (252, 'Sunarto', 2, 3);
INSERT INTO `tbl_penerima` VALUES (253, 'Edi Supriyanto', 2, 3);
INSERT INTO `tbl_penerima` VALUES (254, 'Eko', 2, 3);
INSERT INTO `tbl_penerima` VALUES (255, 'Ali Ibrahim', 1, 3);
INSERT INTO `tbl_penerima` VALUES (256, 'Ali Fathani', 1, 3);
INSERT INTO `tbl_penerima` VALUES (257, 'Fathana', 1, 3);
INSERT INTO `tbl_penerima` VALUES (258, 'Ali Mustaqim', 1, 3);
INSERT INTO `tbl_penerima` VALUES (259, 'Yulima', 1, 3);
INSERT INTO `tbl_penerima` VALUES (260, 'Buk MAr', 1, 3);
INSERT INTO `tbl_penerima` VALUES (261, 'Rokha', 1, 3);
INSERT INTO `tbl_penerima` VALUES (262, 'Mariah', 1, 3);
INSERT INTO `tbl_penerima` VALUES (263, 'Wati', 2, 3);
INSERT INTO `tbl_penerima` VALUES (264, 'Ibuk e yoyok', 1, 3);
INSERT INTO `tbl_penerima` VALUES (265, 'Aas', 3, 3);
INSERT INTO `tbl_penerima` VALUES (266, 'Bu Siti', 3, 3);
INSERT INTO `tbl_penerima` VALUES (267, 'Yayuk', 2, 3);
INSERT INTO `tbl_penerima` VALUES (268, 'Genduk', 1, 3);
INSERT INTO `tbl_penerima` VALUES (269, 'Sundari', 1, 3);
INSERT INTO `tbl_penerima` VALUES (270, 'Aris', 2, 3);
INSERT INTO `tbl_penerima` VALUES (271, 'Bu Suha', 1, 3);
INSERT INTO `tbl_penerima` VALUES (272, 'P. Bambang', 2, 3);
INSERT INTO `tbl_penerima` VALUES (273, 'Zaky Fanani', 2, 3);
INSERT INTO `tbl_penerima` VALUES (274, 'Yanu', 2, 6);
INSERT INTO `tbl_penerima` VALUES (275, 'Misbakhul', 2, 2);
INSERT INTO `tbl_penerima` VALUES (276, 'Susi', 3, 1);
INSERT INTO `tbl_penerima` VALUES (277, 'Leo Sunaryo', 2, 5);
INSERT INTO `tbl_penerima` VALUES (278, 'Seno Susanto', 2, 5);
INSERT INTO `tbl_penerima` VALUES (279, 'Bpk. Misri', 2, 5);
INSERT INTO `tbl_penerima` VALUES (280, 'Bpk. Rokim', 2, 5);
INSERT INTO `tbl_penerima` VALUES (281, 'Bpk. Roni', 2, 5);
INSERT INTO `tbl_penerima` VALUES (282, 'Bpk. Duki', 2, 5);
INSERT INTO `tbl_penerima` VALUES (283, 'Bpk. Suhadak', 2, 5);
INSERT INTO `tbl_penerima` VALUES (284, 'Bpk. Taufik H', 2, 5);
INSERT INTO `tbl_penerima` VALUES (285, 'Ibu Lilik', 2, 5);
INSERT INTO `tbl_penerima` VALUES (286, 'Tantok', 1, 5);
INSERT INTO `tbl_penerima` VALUES (287, 'Putra', 2, 5);
INSERT INTO `tbl_penerima` VALUES (288, 'Purnomo', 2, 5);
INSERT INTO `tbl_penerima` VALUES (289, 'Bamban s (ASE)', 2, 5);
INSERT INTO `tbl_penerima` VALUES (290, 'Sanjono', 2, 5);
INSERT INTO `tbl_penerima` VALUES (291, 'bpk. Putro', 2, 5);
INSERT INTO `tbl_penerima` VALUES (292, 'Bpk. Donok', 2, 5);
INSERT INTO `tbl_penerima` VALUES (293, 'Sutrisno', 2, 5);
INSERT INTO `tbl_penerima` VALUES (294, 'Sugeng R', 2, 5);
INSERT INTO `tbl_penerima` VALUES (295, 'Mbah Siti', 1, 5);
INSERT INTO `tbl_penerima` VALUES (296, 'Cak mat baihaqi', 2, 5);
INSERT INTO `tbl_penerima` VALUES (297, 'Firman ady bopeng', 2, 4);
INSERT INTO `tbl_penerima` VALUES (298, 'Yaati kos erwin', 2, 4);
INSERT INTO `tbl_penerima` VALUES (299, 'Toari', 2, 4);
INSERT INTO `tbl_penerima` VALUES (300, 'Sugeng R', 2, 5);
INSERT INTO `tbl_penerima` VALUES (301, 'M amin', 2, 5);

-- ----------------------------
-- Table structure for tbl_user_koor
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_koor`;
CREATE TABLE `tbl_user_koor`  (
  `id_user_koor` int NOT NULL AUTO_INCREMENT,
  `nama_koor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `panggilan_koor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_koor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `level` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_user_koor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user_koor
-- ----------------------------
INSERT INTO `tbl_user_koor` VALUES (1, 'M. Apriadi Setiawan', 'Adi', '1', NULL, NULL, 5);
INSERT INTO `tbl_user_koor` VALUES (2, 'M. Nur Laba', 'Mas Nur', '2', NULL, NULL, 5);
INSERT INTO `tbl_user_koor` VALUES (3, 'Rooki', 'Rocky', '3', NULL, NULL, 5);
INSERT INTO `tbl_user_koor` VALUES (4, 'Abdul Mughni', 'Oni', '4', NULL, NULL, 5);
INSERT INTO `tbl_user_koor` VALUES (5, 'Om. Agus', 'Mas Agus', '5', NULL, NULL, 5);
INSERT INTO `tbl_user_koor` VALUES (6, 'Zahid', 'Zahid', '6', 'zahid', 'd32ec73eb8d6d4c5527287af5eb707d7', 5);

-- ----------------------------
-- Table structure for tbl_user_petugas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_petugas`;
CREATE TABLE `tbl_user_petugas`  (
  `id_user_petugas` int NOT NULL AUTO_INCREMENT,
  `nama_petugas` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `keterangan` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` int NULL DEFAULT 5,
  PRIMARY KEY (`id_user_petugas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user_petugas
-- ----------------------------
INSERT INTO `tbl_user_petugas` VALUES (3, 'Moch. Firman Firdaus', 'admin', 'e79c7323f62151abde47e29987b38859', 'akusayangkamu', 1);

-- ----------------------------
-- Table structure for tbl_zakat_fitrah
-- ----------------------------
DROP TABLE IF EXISTS `tbl_zakat_fitrah`;
CREATE TABLE `tbl_zakat_fitrah`  (
  `id_zakat_fitrah` int NOT NULL AUTO_INCREMENT,
  `nama_pemberi_zakat_fitrah` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `besaran_jiwa` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `berat_beras` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_beras` decimal(10, 2) NULL DEFAULT NULL,
  `uang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  `petugas` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_zakat_fitrah`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_zakat_fitrah
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_zakat_maal
-- ----------------------------
DROP TABLE IF EXISTS `tbl_zakat_maal`;
CREATE TABLE `tbl_zakat_maal`  (
  `id_zakat_maal` int NOT NULL AUTO_INCREMENT,
  `nama_pemberi_maal` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori_zakat` int NULL DEFAULT NULL,
  `nominal_zakat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tanggal` date NULL DEFAULT NULL,
  `petugas1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `petugas2` int NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id_zakat_maal`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_zakat_maal
-- ----------------------------
INSERT INTO `tbl_zakat_maal` VALUES (3, 'Firman Firdaus', 1, '100000', 'Janti', '2021-04-13', '3', 2, '');

SET FOREIGN_KEY_CHECKS = 1;
