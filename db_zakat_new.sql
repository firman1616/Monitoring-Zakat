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

 Date: 24/04/2022 11:56:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_donatur
-- ----------------------------
DROP TABLE IF EXISTS `tbl_donatur`;
CREATE TABLE `tbl_donatur`  (
  `id_donatur` int(11) NOT NULL AUTO_INCREMENT,
  `nama_donatur` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_donatur` int(11) NULL DEFAULT NULL,
  `alamat_lainnya` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nominal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `petugas_penerima` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 0,
  `validation` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_donatur`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_donatur
-- ----------------------------
INSERT INTO `tbl_donatur` VALUES (4, 'Ibu Sadan', 7, 'Janti waru', '150000', 3, 0, NULL);
INSERT INTO `tbl_donatur` VALUES (5, 'Johan Wisaksono / Hasna Rief', 5, 'Rt 19', '500000', 3, 0, NULL);
INSERT INTO `tbl_donatur` VALUES (6, 'Bpk mulyadi', 4, 'RT 18', '100000', 3, 0, NULL);
INSERT INTO `tbl_donatur` VALUES (7, 'Bpk. Rudi Setiawan', 4, 'RT 18', '100000', 3, 0, NULL);
INSERT INTO `tbl_donatur` VALUES (8, 'H Sukani ', 6, 'RT 20', '500000', 3, 0, NULL);
INSERT INTO `tbl_donatur` VALUES (9, 'H Suyono ', 6, 'RT 20', '300000', 3, 0, NULL);
INSERT INTO `tbl_donatur` VALUES (10, 'H Nuril Huda', 6, 'RT 20', '200000', 3, 0, NULL);

-- ----------------------------
-- Table structure for tbl_master_akses
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_akses`;
CREATE TABLE `tbl_master_akses`  (
  `id_akses` int(255) NOT NULL AUTO_INCREMENT,
  `nama_akses` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_akses`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_akses
-- ----------------------------
INSERT INTO `tbl_master_akses` VALUES (1, 'Super Admin');
INSERT INTO `tbl_master_akses` VALUES (2, 'Admin');
INSERT INTO `tbl_master_akses` VALUES (3, 'Sekretaris');
INSERT INTO `tbl_master_akses` VALUES (4, 'Bendahara');
INSERT INTO `tbl_master_akses` VALUES (5, 'Petugas');
INSERT INTO `tbl_master_akses` VALUES (6, 'User');
INSERT INTO `tbl_master_akses` VALUES (7, 'Koordinator');

-- ----------------------------
-- Table structure for tbl_master_alamat
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_alamat`;
CREATE TABLE `tbl_master_alamat`  (
  `id_master_alamat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_master_alamat` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_master_alamat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_master_alamat
-- ----------------------------
INSERT INTO `tbl_master_alamat` VALUES (1, 'RT 01');
INSERT INTO `tbl_master_alamat` VALUES (2, 'RT 02');
INSERT INTO `tbl_master_alamat` VALUES (3, 'RT 03');
INSERT INTO `tbl_master_alamat` VALUES (4, 'RT 18');
INSERT INTO `tbl_master_alamat` VALUES (5, 'RT 19');
INSERT INTO `tbl_master_alamat` VALUES (6, 'RT 20');
INSERT INTO `tbl_master_alamat` VALUES (7, 'Lainnya');

-- ----------------------------
-- Table structure for tbl_master_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_jabatan`;
CREATE TABLE `tbl_master_jabatan`  (
  `id_master_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_master_jabatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_master_jabatan
-- ----------------------------
INSERT INTO `tbl_master_jabatan` VALUES (1, 'Ketua');
INSERT INTO `tbl_master_jabatan` VALUES (2, 'Sekretaris');
INSERT INTO `tbl_master_jabatan` VALUES (3, 'Petugas');
INSERT INTO `tbl_master_jabatan` VALUES (4, 'Bendahara');
INSERT INTO `tbl_master_jabatan` VALUES (5, 'Koordinator');

-- ----------------------------
-- Table structure for tbl_master_kwitansi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_kwitansi`;
CREATE TABLE `tbl_master_kwitansi`  (
  `id_kwitansi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_organisasi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_lembaga` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_organisasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `pembayaran` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kota_kwitansi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_organisasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id_kwitansi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_master_kwitansi
-- ----------------------------
INSERT INTO `tbl_master_kwitansi` VALUES (1, 'Remaja Masjid Nurul ', 'Masjid Besar Nurul H', 'logo_1587121453.png', 'Maal, Partisipasi So', 'Janti ', 'Jl. Brigjen Katamso No.123 Janti, Waru - Sidoarjo');

-- ----------------------------
-- Table structure for tbl_master_laporan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_laporan`;
CREATE TABLE `tbl_master_laporan`  (
  `id_master_lap` int(11) NOT NULL AUTO_INCREMENT,
  `jabataan_lap` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_pemilik_jabatan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `masehi` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hijriyah` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_sekretaris` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_master_lap`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_master_laporan
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_master_lokasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_lokasi`;
CREATE TABLE `tbl_master_lokasi`  (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_lokasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kontak_lokasi` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto_lokasi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id_lokasi`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_master_lokasi
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_master_maal
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_maal`;
CREATE TABLE `tbl_master_maal`  (
  `id_master_maal` int(11) NOT NULL AUTO_INCREMENT,
  `nama_maal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_master_maal`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
  `id_ket` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ket` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_ket`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_master_penerima
-- ----------------------------
INSERT INTO `tbl_master_penerima` VALUES (1, 'Fakir');
INSERT INTO `tbl_master_penerima` VALUES (2, 'Miskin');
INSERT INTO `tbl_master_penerima` VALUES (3, 'Sabilillah');

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
  `date_validation` date NULL DEFAULT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user_koor
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user_petugas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_petugas`;
CREATE TABLE `tbl_user_petugas`  (
  `id_user_petugas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_petugas` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `keterangan` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat_petugas` int(11) NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT 5,
  PRIMARY KEY (`id_user_petugas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user_petugas
-- ----------------------------
INSERT INTO `tbl_user_petugas` VALUES (3, 'Moch. Firman Firdaus', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1, 1);
INSERT INTO `tbl_user_petugas` VALUES (5, 'M. Firdi Widiansyah', 'widi', 'd49b9709c6ca14577f08b2ab21ab7964', 'widi', 2, 2);
INSERT INTO `tbl_user_petugas` VALUES (6, 'Auliya Arfiantoro', 'fian', '3a63bfc12d919d317531fe8583593d7a', 'fian', 1, 3);
INSERT INTO `tbl_user_petugas` VALUES (7, 'Rizky Rachmad Zulkar', 'boboho', '8e36aec125377b008352fc32b27daf06', 'boboho', 3, 3);
INSERT INTO `tbl_user_petugas` VALUES (8, 'Alif Rafliyudin', 'alif', '099a147c0c6bcd34009896b2cc88633c', 'alif', 3, 5);
INSERT INTO `tbl_user_petugas` VALUES (9, 'Yuli Dwi Setiawan', 'yuli', '4a01a05a350e1c7710c989f1211245a8', 'yuli', 2, 5);
INSERT INTO `tbl_user_petugas` VALUES (10, 'Edo Dwi Minardi', 'edo', 'd2d612f72e42577991f4a5936cecbcc0', 'edo', 4, 5);
INSERT INTO `tbl_user_petugas` VALUES (11, 'Achmad Garudatus Zam', 'garuda', '586293e168054f480d08e30fba98c295', 'garuda', 1, 5);
INSERT INTO `tbl_user_petugas` VALUES (12, 'Alfin Rahmad Zakaria', 'alfin', '6ff92dee2a93081f0192781f156fa0e9', 'alfin', 1, 5);
INSERT INTO `tbl_user_petugas` VALUES (13, 'M. Wahyu Hidayatulla', 'wahyu', '32c9e71e866ecdbc93e497482aa6779f', 'wahyu', 1, 5);
INSERT INTO `tbl_user_petugas` VALUES (14, 'M. Apriadi Setiawan', 'adi', 'c46335eb267e2e1cde5b017acb4cd799', 'adi', 1, 7);
INSERT INTO `tbl_user_petugas` VALUES (15, 'M. Nur Laba', 'nur', 'b55178b011bfb206965f2638d0f87047', 'nur', 2, 7);
INSERT INTO `tbl_user_petugas` VALUES (16, 'Rizky', 'rizky', '49d8712dd6ac9c3745d53cd4be48284c', 'rizky', 3, 7);
INSERT INTO `tbl_user_petugas` VALUES (17, 'Abdul Mughni', 'oni', 'cb7f4a5e75e6f7340971c99ea4587999', 'oni', 4, 7);
INSERT INTO `tbl_user_petugas` VALUES (18, 'Zahid', 'zahid', 'c651148415ab2a260e6c506075c12ae3', 'zahid', 6, 7);
INSERT INTO `tbl_user_petugas` VALUES (19, 'Miftachudin', 'mifta', '150bfb5c3fcc30c477b8253721262363', 'mifta', 5, 7);

-- ----------------------------
-- Table structure for tbl_zakat_fitrah
-- ----------------------------
DROP TABLE IF EXISTS `tbl_zakat_fitrah`;
CREATE TABLE `tbl_zakat_fitrah`  (
  `id_zakat_fitrah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemberi_zakat_fitrah` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `besaran_jiwa` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `berat_beras` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_beras` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` int(11) NULL DEFAULT NULL,
  `alamat_lainnya` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  `petugas` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id_zakat_fitrah`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 409 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_zakat_fitrah
-- ----------------------------
INSERT INTO `tbl_zakat_fitrah` VALUES (2, 'Achmad Muqorrobin', '7', '2.8', '19.60', '231000', 7, 'Tropodo', '   ', '2021-05-12 16:24:50', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (3, 'Khusnul Yaqin', '4', '3', '12.00', '', 6, 'RT20/RW01 Janti Waru Sidoarjo', '', '2021-05-05 20:47:55', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (4, 'anas fauzi', '3', '3', '9.00', '', 1, '', '', '2021-05-05 21:34:08', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (5, 'bapak Dimas', '1', '3', '3.00', '', 7, 'wedoro', '', '2021-05-05 21:34:50', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (6, 'Edi', '3', '4', '12.00', '', 7, 'Jl. Brigjen Katamso', '  ', '2021-05-10 09:20:08', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (7, 'Mas ria', '3', '2.8', '8.40', '99000', 2, 'RT02/RW01 JANTI', '   ', '2021-05-07 14:17:11', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (8, 'Bpk. Abu Siri', '3', '2.8', '8.40', '99000', 7, 'Balongpoh', '  ', '2021-05-07 14:17:26', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (9, 'Bpk. Imron', '3', '2.8', '8.40', '', 4, 'Rt 18', '', '2021-05-07 13:28:53', 7);
INSERT INTO `tbl_zakat_fitrah` VALUES (10, 'Bpak nanang', '6', '2.8', '16.80', '', 3, 'Rt 03, Rw 01', '', '2021-05-07 13:30:23', 7);
INSERT INTO `tbl_zakat_fitrah` VALUES (11, 'Bpak dul', '2', '2.8', '5.60', '66000', 5, 'Rt 19, Rw 01', '  ', '2021-05-07 14:17:43', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (12, 'Bpak budi Ariano', '3', '3', '9.00', '', 1, 'Rt 01, Rw 01', '', '2021-05-07 13:33:45', 7);
INSERT INTO `tbl_zakat_fitrah` VALUES (13, 'Bapak M. lukman Hakim', '5', '2.8', '14.00', '165000', 7, 'Graha Tirta Akasia 36', '', '2021-05-07 13:42:12', 7);
INSERT INTO `tbl_zakat_fitrah` VALUES (14, 'Ibu Erni', '4', '3', '12.00', '', 4, 'RT18/RW01 Janti', '', '2021-05-07 15:23:57', 7);
INSERT INTO `tbl_zakat_fitrah` VALUES (15, 'Miskidi', '1', '3', '3.00', '', 2, 'Rt02/RW01 JANTI\r\n', '', '2021-05-07 16:20:24', 7);
INSERT INTO `tbl_zakat_fitrah` VALUES (16, 'Sulanto', '4', '3', '12.00', '', 5, 'Janti RT 19 RW 1', '', '2021-05-07 16:23:37', 7);
INSERT INTO `tbl_zakat_fitrah` VALUES (17, 'Bpk. Purwanto', '3', '3', '9.00', '', 2, 'RT02/Rw01 Janti', '', '2021-05-07 16:39:32', 7);
INSERT INTO `tbl_zakat_fitrah` VALUES (18, 'Bpk suryanto', '3', '3', '9.00', '', 3, 'Rt 03', ' ', '2021-05-08 16:37:58', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (19, 'Yudianto purnomo', '3', '3', '9.00', '', 7, 'Perumahan Rri blok G no3', ' ', '2021-05-08 16:39:02', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (20, 'Ahmad abdul ghofur', '2', '2.8', '5.60', '66000', 5, 'Janti RT 19 RW 1', '', '2021-05-07 20:49:03', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (21, 'Bpk Syahrul', '3', '2.8', '8.40', '99000', 7, 'Brigjen Katamso no 2c', ' ', '2021-05-08 16:35:50', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (22, 'Bpk Hanafi', '3', '2.8', '8.40', '99000', 7, 'Janti 249C Waru', '', '2021-05-08 15:49:47', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (23, 'Bu Harti', '5', '3', '15.00', '', 4, 'RT 18', '', '2021-05-08 15:51:07', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (25, 'Suharywianto', '4', '3', '12.00', '', 4, 'Janti rt 18 rw1', ' ', '2021-05-08 16:22:36', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (26, 'Didik Sutrisno', '4', '2.8', '11.20', '132000', 3, 'Janti rt 03 rw 01', '', '2021-05-08 16:19:32', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (27, 'Paujan', '7', '3', '21.00', '', 1, 'Janti RT 01 Rw 01', '', '2021-05-08 16:30:11', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (28, 'Tumin', '2', '3', '6.00', '', 4, 'Janti RT 18 RW 01', '', '2021-05-08 16:33:50', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (29, 'Ibu Kustimah', '3', '3', '9.00', '', 4, 'Jnti rt 18', '', '2021-05-08 16:41:14', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (30, 'Pak ibrahim', '4', '3', '12.00', '', 3, 'RT3', '', '2021-05-08 20:02:15', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (31, 'Bapak Ali Fatoni', '3', '3', '9.00', '', 3, 'RT3', '', '2021-05-08 20:06:25', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (32, 'Bapak Mansur', '3', '3', '9.00', '', 3, 'RT3', ' Bpk manus\r\nRodiyah\r\nAhmid\r\nFarih', '2021-05-10 09:13:16', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (33, 'Bapak ipung', '3', '3', '9.00', '', 2, 'RT2', ' ', '2021-05-08 20:33:32', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (34, 'Bpak sueb', '9', '3', '27.00', '', 4, 'RT 18', 'Sueb\r\nTrismiyati\r\nDaru sarosa\r\nHertulis\r\nJatu\r\nNoh tabrani\r\nDadang\r\nHimawan\r\nReisa', '2021-05-08 20:34:47', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (35, 'Bpk Karsimin', '7', '3', '21.00', '', 2, 'RT 02', ' ', '2021-05-10 09:11:55', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (36, 'Zuli', '2', '3', '6.00', '', 3, 'Rt 03', ' ', '2021-05-09 00:12:40', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (37, 'Hermahadi', '3', '3', '9.00', '', 5, 'Rt 19', '', '2021-05-09 00:03:49', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (38, 'Ponco', '4', '3', '12.00', '', 6, 'Rt 20', '', '2021-05-09 00:05:13', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (39, 'Farid', '5', '3', '15.00', '', 2, 'Rt 02', '', '2021-05-09 00:05:49', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (40, 'Erik', '1', '3', '3.00', '', 5, 'Rt 19', '', '2021-05-09 00:06:42', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (41, 'Hadi', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-09 00:07:27', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (42, 'Mbak efi', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-09 00:08:27', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (43, 'Asta', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-09 00:10:19', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (44, 'Yulianto', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-09 00:11:06', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (45, 'Nur A.', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-09 00:11:50', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (46, 'Suwadi', '3', '3', '9.00', '', 3, 'Janti RT 03 RW 01', '', '2021-05-09 15:17:50', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (47, 'Aziz', '4', '2.8', '11.20', '132000', 4, 'Rt 18 rw 01', '', '2021-05-09 15:21:32', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (48, 'Tri Wijaya', '3', '3', '9.00', '', 6, 'Rt 20 rw 01', '', '2021-05-09 15:22:51', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (49, 'Miftahuddin', '2', '3', '6.00', '', 5, 'Rt 19 rw 01', '', '2021-05-09 15:27:37', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (50, 'Rosyid', '1', '3', '3.00', '', 5, 'Rt 19 rw 01', '', '2021-05-09 15:28:24', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (51, 'Amin', '4', '3', '12.00', '', 5, 'Rt 19 rw 01', '', '2021-05-09 15:31:02', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (52, 'Edi', '2', '2.8', '5.60', '66000', 1, 'Rt 01 rw 01', '', '2021-05-09 15:32:37', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (53, 'Kadiono', '3', '3', '9.00', '', 1, 'Rt 01 rw 01', '', '2021-05-09 15:33:33', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (54, 'Bagus Nurya U.', '4', '3', '12.00', '', 7, 'Wisma tropodo', '', '2021-05-09 15:34:40', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (55, 'Sriamah', '2', '3', '6.00', '', 2, 'Rt 02 rw 01', '', '2021-05-09 15:35:36', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (56, 'Gatot Bijantoro', '4', '3', '12.00', '', 6, 'Rt 20', '', '2021-05-09 16:19:35', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (57, 'Pak poniran', '3', '3', '9.00', '', 4, 'Rt 18', '', '2021-05-09 16:21:04', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (58, 'Ari', '3', '2.8', '8.40', '99000', 2, 'Rt 02 Rw 01', '', '2021-05-09 17:21:02', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (59, 'Asiah', '1', '2.8', '2.80', '33000', 3, 'Rt 03 Rw 01', '', '2021-05-09 17:24:56', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (60, 'Suharwati', '1', '2.8', '2.80', '33000', 7, 'Rt 12 rw 01 makarya binangun', '', '2021-05-09 17:29:25', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (61, 'Moch. Guntur H.', '2', '2.8', '5.60', '', 2, 'Rt 02 Rw 01', '', '2021-05-09 18:12:13', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (62, 'Bpk Mardi', '2', '3', '6.00', '', 3, 'RT 03 RW 01', ' ', '2021-05-10 09:05:40', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (63, 'Siti Nur Qomariyah', '2', '3', '6.00', '', 2, 'RT 02', ' ', '2021-05-10 09:06:08', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (64, 'Abd Muntholib', '1', '3', '3.00', '', 1, '', '  ', '2021-05-09 22:43:40', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (65, 'Aizzatulqutsyiah', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:39:52', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (66, 'M. Fasikurrizal', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:40:17', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (67, 'Risa oktafian ningrum', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:40:52', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (68, 'Bpk Bisar', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:41:14', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (69, 'prabowo hariadi', '5', '2.8', '14.00', '', 1, 'rt 1', '  wahyu', '2021-05-10 09:14:55', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (70, 'Ibu Poniyati', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:41:39', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (71, 'Mei cany beti Cahyani', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:42:22', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (73, 'Rudi Bestian Cahyani', '1', '3', '3.00', '', 1, '', '', '2021-05-09 22:43:02', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (74, 'Suryono', '3', '3', '9.00', '', 1, '', ' ', '2021-05-10 09:12:12', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (75, 'Ponidi', '2', '3', '6.00', '', 1, '', ' ', '2021-05-10 09:13:56', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (76, 'Bpk Khambali', '2', '3', '6.00', '', 2, 'RT 02', ' ', '2021-05-10 09:19:19', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (77, 'Bpk Arofi\'', '2', '3', '6.00', '', 2, 'RT 02', ' ', '2021-05-10 09:19:22', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (78, 'Ibu Masruin', '3', '3', '9.00', '', 1, 'RT 01', ' ', '2021-05-10 09:19:40', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (79, 'Bpk Adi Maulana', '5', '2.8', '14.00', '165000', 7, 'Perum Graha Tirta Dahlia', ' ', '2021-05-10 09:14:40', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (80, 'Bpk Belvi Anjaudi', '2', '3', '6.00', '', 3, 'RT 03', ' ', '2021-05-10 09:15:59', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (81, 'Bpk munasan', '5', '3', '15.00', '', 1, 'Desa cucung RT 01', '  ', '2021-05-10 09:18:19', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (82, 'Bayu winarwo', '4', '3', '12.00', '', 2, 'RT 02', ' ', '2021-05-10 09:16:40', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (83, 'Ibu endang s', '1', '3', '3.00', '', 2, 'RT 02', '', '2021-05-09 22:51:50', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (84, 'Bpk Wahyu', '1', '2.8', '2.80', '33000', 7, 'Magetan', '  ', '2021-05-10 09:31:32', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (85, 'Bpk Wahyudi', '4', '3', '12.00', '', 6, 'RT 20', ' ', '2021-05-10 09:13:25', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (86, 'Bpk Agus Sugianto', '5', '2.8', '14.00', '', 2, 'RT 02', ' ', '2021-05-10 09:18:34', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (87, 'Bpk naimun', '3', '3', '9.00', '', 3, 'RT 03', '  ', '2021-05-10 09:20:41', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (88, 'Bpk M Nur muji', '2', '2.8', '5.60', '66000', 4, 'RT 18', ' ', '2021-05-10 09:20:51', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (89, 'Bpk Heryanto', '6', '2.8', '16.80', '198000', 7, 'Dukuh ngingas', ' ', '2021-05-10 09:21:08', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (90, 'Bpk Sugeng', '2', '3', '6.00', '', 5, 'RT 19', ' ', '2021-05-10 09:21:14', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (91, 'Miswanto', '3', '3', '9.00', '', 6, 'RT 20', ' ', '2021-05-10 09:21:24', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (92, 'Ismi', '4', '3', '12.00', '', 6, 'RT 20', ' ', '2021-05-10 09:21:34', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (93, 'Weli W', '3', '3', '9.00', '', 1, '', ' ', '2021-05-10 09:21:39', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (94, 'Edi sutrisno', '1', '3', '3.00', '', 6, 'RT 20', '', '2021-05-10 08:54:50', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (95, 'Taufiq', '4', '3', '12.00', '', 6, 'RT 20', ' ', '2021-05-10 09:22:02', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (96, 'Bpk. Wiyanto', '6', '3', '18.00', '', 1, 'Rt01/ RW01 JANTI', '', '2021-05-10 09:06:59', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (97, 'Pungky', '2', '3', '6.00', '', 6, 'RT 20', '', '2021-05-10 09:23:32', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (98, 'Bpk. Puguh Hadi', '7', '3', '21.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:23:32', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (99, 'Enti Sugiarti', '3', '3', '9.00', '', 6, 'RT 20', '  ', '2021-05-10 09:27:52', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (100, 'Bpk. Prabowo Hariyadi', '5', '3', '15.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:24:29', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (102, 'Tri Bawin Agung Prasetyo', '2', '3', '6.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:25:20', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (103, 'Saiful Hamzah', '3', '3', '9.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:27:19', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (104, 'Elisa', '1', '3', '3.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:27:40', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (105, 'Bpk. Nasikin Setyanto', '4', '3', '12.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:28:12', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (106, 'Mahfudz', '3', '3', '9.00', '', 3, 'RT 03', '', '2021-05-10 09:28:37', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (107, 'Bpk. Hasim', '3', '3', '9.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:29:10', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (108, 'Bpk. Nisfu Laili', '2', '3', '6.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:30:11', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (109, 'H.M. Juferi', '2', '3', '6.00', '', 3, 'RT 03', '', '2021-05-10 09:30:32', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (110, 'Bpk. Sahud', '4', '3', '12.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:30:40', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (111, 'Ibu Luluk Okta Nurdiana', '2', '3', '6.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:31:48', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (112, 'Bpk. Musliman', '7', '3', '21.00', '', 1, 'RT01/RW01 JANTI', '', '2021-05-10 09:32:28', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (113, 'Bpk. Hariono', '5', '3', '15.00', '', 1, 'RT01/RW01 JANTI', ' ', '2021-05-10 09:33:07', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (114, 'Bapak Mujiono', '2', '3', '6.00', '', 4, 'RT18/RW01 JANTI', '', '2021-05-10 12:04:43', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (115, 'Supriyanto', '3', '3', '9.00', '', 3, 'Rt 03 RW 01', '', '2021-05-10 16:03:43', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (116, 'Sarito', '3', '2.8', '8.40', '99000', 5, 'Rt 19 rw 01', '', '2021-05-10 16:04:20', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (117, 'Adi Lukmanto', '4', '2.8', '11.20', '132000', 4, 'Rt 18 Rw 01', '', '2021-05-10 16:05:14', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (118, 'Mujiono', '2', '3', '6.00', '', 4, 'Rt 18 Rw 01', '', '2021-05-10 16:06:01', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (119, 'Khusnul Hasyim', '2', '2.8', '5.60', '66000', 7, 'Janti', '', '2021-05-10 16:07:38', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (120, 'Abdul Misbahul S', '4', '3', '12.00', '', 2, 'Rt 02 Rw 01', '', '2021-05-10 16:08:11', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (121, 'Shofi\'i', '2', '2.8', '5.60', '66000', 4, 'Rt 18 rw 01', '', '2021-05-10 16:08:48', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (122, 'Yati', '3', '2.8', '8.40', '', 2, 'Rt 02 rw 01', '', '2021-05-10 16:09:29', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (123, 'Yayuk', '5', '2.8', '14.00', '165000', 2, 'Rt 02 Rw 01', '', '2021-05-10 17:44:47', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (124, 'Khusnul', '2', '2.8', '5.60', '', 3, 'Rt  03 rw 01', '', '2021-05-10 17:45:24', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (125, 'Nurhayati', '1', '2.8', '2.80', '33000', 7, 'Makarya', '', '2021-05-10 17:46:04', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (126, 'Mahmud', '3', '3', '9.00', '', 4, 'Rt 18 rw 01', '', '2021-05-10 17:47:10', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (127, 'Suwarto', '4', '3', '12.00', '', 6, 'Rt 20 rw 01', '', '2021-05-10 17:48:59', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (128, 'Indra gunawan', '3', '2.8', '8.40', '99000', 7, 'Buduran', '', '2021-05-10 17:49:21', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (129, 'Mustofa', '2', '3', '6.00', '', 4, 'Rt 02 rw 01', '', '2021-05-10 17:49:49', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (130, 'Lilik Masluhah', '4', '2.8', '11.20', '132000', 4, 'Rt 18 Rw 01', '', '2021-05-10 17:50:33', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (131, 'Syaifuddin', '5', '3', '15.00', '', 3, 'Rt 03 rw 01', ' ', '2021-05-10 18:03:27', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (132, 'Pujiwanto', '4', '3', '12.00', '', 4, 'Rt 18 Rw 01', ' ', '2021-05-10 18:10:41', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (133, 'Bpk pugiwanto', '4', '3', '12.00', '', 4, 'RT 18', '', '2021-05-10 20:01:04', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (134, 'H. Kamim', '2', '3', '6.00', '', 1, '', '', '2021-05-10 20:01:27', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (135, 'Rifa\' kamdi', '1', '3', '3.00', '', 1, '', '', '2021-05-10 20:01:51', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (136, 'Puji lestari', '5', '2.8', '14.00', '165000', 5, 'RT 19', '', '2021-05-10 20:02:35', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (137, 'Bpk. Mariyanto', '8', '3', '24.00', '', 1, 'RT01', ' Wahyu', '2021-05-10 20:17:21', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (138, 'Bp. Jito', '4', '3', '12.00', '', 1, 'Rt1', 'Wahyu', '2021-05-10 20:18:19', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (139, 'Bp. Sumadi', '5', '3', '15.00', '', 1, 'Rt1', 'Wahyu', '2021-05-10 20:19:03', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (140, 'Rahayu', '2', '3', '6.00', '', 1, 'Rt1', 'Wahyu', '2021-05-10 20:40:08', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (141, 'Bpk Sumarlan', '4', '3', '12.00', '', 1, 'Rt1', '', '2021-05-10 20:42:20', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (142, 'Sandi', '3', '3', '9.00', '', 1, 'Rt1', '', '2021-05-10 20:42:43', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (143, 'Bpk M Fahmi putro', '4', '3', '12.00', '', 7, 'Makariya', ' ', '2021-05-10 21:03:41', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (144, 'Bpk Adi suroso', '3', '3', '9.00', '', 7, 'Sepanjang', '', '2021-05-10 21:04:31', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (145, 'Bpk pulung', '7', '2.8', '19.60', '231000', 7, 'Graha Tirta akasia', '', '2021-05-10 21:05:11', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (146, 'Bpk asep', '3', '2.8', '8.40', '99000', 2, 'RT 02', '', '2021-05-10 21:05:46', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (147, 'Bpk Hendro', '2', '3', '6.00', '', 6, 'RT 20', '', '2021-05-10 21:06:23', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (148, 'Ibu Rahayu', '4', '3', '12.00', '', 1, 'RT 01', '', '2021-05-10 21:06:52', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (149, 'Bpk Haru', '3', '2.8', '8.40', '99000', 6, 'RT 20', ' ', '2021-05-10 21:08:17', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (150, 'Bpk Udin', '4', '2.8', '11.20', '', 2, 'RT 02', '', '2021-05-10 21:09:04', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (151, 'Bpk mulyadi', '2', '3', '6.00', '', 4, 'RT 18', '', '2021-05-10 21:09:50', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (152, 'Bpk narto', '4', '3', '12.00', '', 2, 'RT 02', '', '2021-05-10 21:14:15', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (153, 'Bpk kamiso', '1', '2.8', '2.80', '', 5, 'RT 19', '', '2021-05-10 21:14:57', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (154, 'Bpk H. Nurul huda', '6', '2.8', '16.80', '', 6, 'RT 20', '  ', '2021-05-10 21:16:39', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (155, 'Bpk eko', '5', '2.8', '14.00', '', 3, 'RT 03', '', '2021-05-10 21:17:25', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (156, 'Ibu nur aini', '3', '2.8', '8.40', '66000', 1, '', '1 beras sendiri \r\n2 beli', '2021-05-10 21:18:21', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (157, 'Bpk sadi', '2', '2.8', '5.60', '', 3, 'RT 03', '', '2021-05-10 21:18:44', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (158, 'Gilanh rayanda', '1', '2.8', '2.80', '', 7, 'Sadang RT 06', '', '2021-05-10 21:19:49', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (159, 'Bpk roni', '3', '2.8', '8.40', '', 5, 'RT 19', '', '2021-05-10 21:20:54', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (160, 'Bpk saikhu', '3', '2.8', '8.40', '', 2, 'RT 02', '', '2021-05-10 21:23:08', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (161, 'Bpk saikhu', '3', '2.8', '8.40', '', 2, 'RT 02', '', '2021-05-10 21:23:44', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (162, 'Bpk supartu', '1', '2.8', '2.80', '33000', 7, 'Ngingas', '', '2021-05-10 21:24:41', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (163, 'Aziz', '1', '2.8', '2.80', '33000', 2, 'RT 02', '', '2021-05-10 21:28:26', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (164, 'Bpk taufiq', '4', '3', '12.00', '', 5, 'RT 19', '', '2021-05-10 21:28:45', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (165, 'Bpk sigit', '5', '3', '15.00', '', 2, 'RT 02', '', '2021-05-10 21:29:26', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (166, 'Bpk Arifin', '2', '3', '6.00', '', 1, 'RT 01', '', '2021-05-10 21:29:48', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (167, 'Bpk Yanto', '1', '3', '3.00', '', 1, 'RT 01', '', '2021-05-10 21:30:15', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (168, 'Bpk sumarso', '5', '3', '15.00', '', 1, 'RT 01', '', '2021-05-10 21:31:36', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (169, 'Bpk arif', '4', '2.8', '11.20', '132000', 4, 'RT 18', '', '2021-05-10 21:32:05', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (170, 'Bpk zainuri', '2', '2.8', '5.60', '', 3, 'RT 03', '', '2021-05-10 21:32:24', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (171, 'Bpk Edi santoso', '4', '3', '12.00', '', 4, 'RT 18', '', '2021-05-10 22:29:27', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (172, 'Siswanto', '3', '3', '9.00', '', 6, 'Rt 20 ', '', '2021-05-10 22:48:33', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (173, 'Sugeng purnomo', '3', '3', '9.00', '', 5, 'Rt 19', '', '2021-05-10 22:51:02', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (174, 'Araya', '3', '3', '9.00', '', 6, 'Rt 20', '', '2021-05-10 22:51:24', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (175, 'Suhartoyo', '5', '3', '15.00', '', 1, '', '', '2021-05-10 22:51:46', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (176, 'Semi', '3', '3', '9.00', '', 6, 'Rt 20', '', '2021-05-10 22:52:07', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (177, 'Sarmanto', '4', '3', '12.00', '', 6, 'Rt 20', '', '2021-05-10 22:52:23', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (178, 'Unaika', '1', '3', '3.00', '', 6, 'RT 20', '', '2021-05-10 22:52:49', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (179, 'Tas\'an', '5', '3', '15.00', '', 6, 'Rt 20', '', '2021-05-10 22:53:10', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (180, 'Nanang', '4', '3', '12.00', '', 6, 'Rt 20', '', '2021-05-10 22:53:31', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (181, 'Mistiyah', '1', '3', '3.00', '', 6, 'Rt 20', '', '2021-05-10 22:53:48', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (182, 'H. Tri Kardi', '3', '3', '9.00', '', 5, 'Rt 19', '', '2021-05-10 22:54:09', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (183, 'Hariono', '2', '3', '6.00', '', 6, 'Rt 20', '', '2021-05-10 22:54:26', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (184, 'Mad Hadi', '2', '3', '6.00', '', 6, 'Rt 20', '', '2021-05-10 22:54:48', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (185, 'Yeni Abdiyah', '3', '3', '9.00', '', 6, 'Rt 20', '', '2021-05-10 22:55:10', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (186, 'Andre', '3', '3', '9.00', '', 5, 'Rt 19', '', '2021-05-10 22:55:26', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (187, 'Hari', '4', '3', '12.00', '', 3, 'Rt 03', '', '2021-05-10 22:55:49', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (188, 'Agus Setiawan', '3', '3', '9.00', '', 1, '', '', '2021-05-10 22:56:08', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (189, 'Munasri', '2', '3', '6.00', '', 6, 'Rt 20', '', '2021-05-10 22:56:28', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (190, 'Dyah Ariani', '3', '3', '9.00', '', 1, '', '', '2021-05-10 22:56:48', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (191, 'Juwanto', '2', '5', '10.00', '', 6, 'Rt 20', ' ', '2021-05-12 10:16:05', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (192, 'Fulan', '1', '3', '3.00', '', 1, '', '', '2021-05-10 22:57:32', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (194, 'Bapak Suroso', '4', '3', '12.00', '', 1, 'RT 01', '', '2021-05-11 08:33:01', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (195, 'Ibu Mirna', '3', '3', '9.00', '', 6, 'RT 20 RW 01', '', '2021-05-11 08:36:31', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (196, 'Firdaus', '3', '3', '9.00', '', 7, 'Kediri', '', '2021-05-11 08:37:31', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (197, 'Bpk Mulya Hariono', '3', '3', '9.00', '', 1, 'RT 01', '', '2021-05-11 08:41:07', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (198, 'Bpk Lindung', '2', '3', '6.00', '', 7, 'Wadung asri', ' ', '2021-05-11 10:56:14', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (199, 'Pak Syukur', '1', '3', '3.00', '', 4, 'RT 18', '', '2021-05-11 09:04:12', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (200, 'Bapak Kudus', '3', '3', '9.00', '', 2, 'RT 02', '', '2021-05-11 09:05:19', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (201, 'Widi', '3', '3', '9.00', '', 2, 'RT 02', '', '2021-05-11 09:06:04', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (202, 'Bapak zakaria', '2', '3', '6.00', '', 3, 'JANTI RT03', '', '2021-05-11 09:43:57', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (203, 'Ibu Desy', '4', '2.8', '11.20', '132000', 7, 'MASANGAN GEDANGAN', '', '2021-05-11 09:46:28', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (204, 'Ibu Nur Mahmudah', '3', '3', '9.00', '', 4, 'JANTI RT18', '', '2021-05-11 09:47:19', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (205, 'Bapak imam', '1', '2.8', '2.80', '33000', 3, 'JANTI RT03', '', '2021-05-11 09:53:33', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (206, 'Bapak Dedik Mulyono', '6', '3', '18.00', '', 6, 'JANTI RT20', '', '2021-05-11 10:15:10', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (207, 'Bapak Sahid', '2', '2.8', '5.60', '', 1, 'JANTI RT01', '', '2021-05-11 10:48:10', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (208, 'Ibu Dewi Nasuchah', '1', '3', '3.00', '', 4, 'JANTI RT18', '', '2021-05-11 11:10:09', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (209, 'Ibu Siti Mufarrohah', '1', '3', '3.00', '', 4, 'JANTI RT18', '', '2021-05-11 11:11:09', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (210, 'Bpk. Karim', '4', '2.8', '11.20', '132000', 7, 'Ngelom Taman', '', '2021-05-11 12:36:05', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (211, 'Bpk. Selamet Riyanto', '5', '3', '15.00', '', 2, '02/01 Janti', '', '2021-05-11 12:57:26', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (212, 'Bpk. Wawan', '5', '2.8', '14.00', '165000', 7, 'Gunung Sari', ' ', '2021-05-12 10:16:52', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (213, 'Slamet Riyanto', '5', '3', '15.00', '', 7, 'Janti', '', '2021-05-11 13:56:20', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (214, 'Munasrip', '3', '2.8', '8.40', '99000', 3, 'Rt 03 rw 01', '', '2021-05-11 13:56:48', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (215, 'Bapak Febri', '4', '3', '12.00', '', 7, 'Kavling BBC', '', '2021-05-11 14:19:36', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (216, 'Agus nur Salim', '5', '3', '15.00', '', 4, 'Rt 18 Rw 01', '', '2021-05-11 15:02:51', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (217, 'Geraldi', '5', '2.8', '14.00', '165000', 6, 'Rt 20 rw 01', '', '2021-05-11 15:11:12', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (218, 'Rianto', '5', '3', '15.00', '', 3, 'Rt 03 RW 01', '', '2021-05-11 17:07:42', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (219, 'Bani Adam', '3', '3', '9.00', '', 1, 'RT 01 RW 01', '', '2021-05-11 17:08:25', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (220, 'Heru', '2', '3', '6.00', '', 5, 'Rt 19 Rw 01', '', '2021-05-11 17:08:56', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (221, 'Rohmat T.', '5', '3', '15.00', '', 7, 'Janti', '', '2021-05-11 17:09:25', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (222, 'Mawan', '3', '2.8', '8.40', '99000', 5, 'RT 19 RW 01', '', '2021-05-11 17:10:07', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (223, 'Suyanto', '3', '2.8', '8.40', '99000', 5, 'Rt 19 rw 01', '', '2021-05-11 17:12:28', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (224, 'Sutisna', '6', '3', '18.00', '', 4, 'Rt 18 rw 01', '', '2021-05-11 17:13:00', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (225, 'Abdul karim', '4', '3', '12.00', '', 3, 'Rt 02 rw 01', '', '2021-05-11 17:13:32', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (226, 'Hj Poniati', '5', '3', '15.00', '', 1, 'Rt 01 Rw 01', '', '2021-05-11 17:19:49', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (227, 'Khoirul', '4', '3', '12.00', '', 6, 'Rt 20 rw 01', '', '2021-05-11 17:20:43', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (228, 'Bapak Usman', '2', '3', '6.00', '', 3, 'RT 03 RW 01', '', '2021-05-11 18:42:48', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (229, 'Bapak Lasmadi', '4', '3', '12.00', '', 3, 'RT 3 RW 1', '', '2021-05-11 18:43:44', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (230, 'Bapak Jawani', '6', '3', '18.00', '', 2, 'RT 2 RW 1', ' ', '2021-05-12 10:06:26', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (231, 'Bapak H.Suprapto', '1', '2,8', '2.00', '', 4, 'RT 18 RW 1', '', '2021-05-11 18:47:12', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (232, 'Bapak Roni', '4', '3', '12.00', '', 6, 'RT 20 RW 1', ' ', '2021-05-12 10:18:30', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (233, 'Bapak Jaya', '3', '2.8', '8.40', '99000', 7, 'Delta Harmoni 61 , Graha Tirta', '   ', '2021-05-12 10:19:25', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (234, 'Fajar Nur Laba', '3', '3', '9.00', '', 2, 'RT 2 RW 1', ' ', '2021-05-12 10:19:52', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (235, 'Rahmat Udin', '3', '3', '9.00', '', 2, 'RT 2 RW 1', ' ', '2021-05-12 10:21:01', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (236, 'Sapto Hartanto', '1', '3', '3.00', '', 7, 'Jl. Brigjend Katamso III', '', '2021-05-11 18:56:05', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (237, 'Eva Susliyati', '1', '3', '3.00', '', 7, 'Jl. Brogjend Katamso III', '', '2021-05-11 18:56:56', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (238, 'Bapak Budi Susanto', '6', '3', '18.00', '', 5, 'RT19 RW1', ' ', '2021-05-12 10:21:45', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (239, 'Bapak Anang', '7', '3', '21.00', '', 6, 'RT 20 RW 1', ' ', '2021-05-12 10:22:31', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (240, 'Bapak Heri Suparman', '1', '3', '3.00', '', 4, 'RT 18 RW 1', '', '2021-05-11 18:59:41', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (241, 'Bapak Ulum', '1', '3', '3.00', '', 4, 'RT18 RW1', '', '2021-05-11 19:00:11', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (242, 'Bapak Sukaji', '1', '3', '3.00', '', 4, 'RT18 RW1', '', '2021-05-11 19:00:38', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (243, 'Bapak Markus Prayitno', '4', '3', '12.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:23:28', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (244, 'Ibu Hindun', '1', '3', '3.00', '', 6, 'RT20 RW1', '', '2021-05-11 19:02:19', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (245, 'Bapak Udon', '3', '3', '9.00', '', 6, 'RT20 RW1', ' ', '2021-05-12 10:23:52', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (246, 'Bapak Mislan', '4', '3', '12.00', '', 6, '\r\nRT20 RW1', ' ', '2021-05-12 10:24:39', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (247, 'Bapak Feri', '3', '3', '9.00', '', 6, 'RT20 RW1', ' ', '2021-05-12 10:25:03', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (248, 'Bapak Yauman', '3', '3', '9.00', '', 6, 'RT20 RW1', ' ', '2021-05-12 10:25:41', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (249, 'Bapak Nizar', '4', '3', '12.00', '', 6, 'RT20 RW1', ' ', '2021-05-12 10:26:17', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (250, 'Ibu Siti', '1', '2.8', '2.80', '33000', 3, 'RT3 RW1', ' ', '2021-05-12 10:26:57', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (251, 'Ibu Sa’adah', '5', '3', '15.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:28:31', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (252, 'KH. M. Ridwan Yasin', '5', '5', '25.00', '', 4, 'RT18 Rw1', ' ', '2021-05-12 10:28:58', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (253, 'M Arif', '3', '3', '9.00', '', 4, 'RT18 RW 1', ' ', '2021-05-12 10:29:20', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (254, 'Bapak Mustaqim', '3', '3', '9.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:29:43', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (255, 'Jahuri', '4', '3', '12.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:30:16', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (256, 'M Tahir', '2', '3', '6.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:30:38', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (257, 'Bu Kholifah', '3', '3', '9.00', '', 4, 'RT18 RW1', ' ', '2021-05-12 10:31:01', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (258, 'Bapak Sunari', '6', '3', '18.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:31:25', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (259, 'Bapak Oyik Suripto', '6', '3', '18.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:33:58', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (260, 'Bapak Riyadi', '9', '3', '27.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:33:31', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (261, 'Bapak Sunarto', '6', '3', '18.00', '', 5, 'RT19 RW1', ' ', '2021-05-12 10:31:42', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (262, 'Bapak Ki Agus Rasyid', '4', '2.8', '11.20', '132000', 7, 'Jawa Timur', '  ', '2021-05-12 10:35:12', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (263, 'Bu Mar’ah', '3', '2.8', '8.40', '99000', 3, 'RT3 RW1', '  ', '2021-05-12 10:36:53', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (264, 'Bapak Cholil', '5', '3', '15.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:37:16', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (265, 'Bapak Malik', '1', '2.8', '2.80', '33000', 4, 'RT18 RW1', ' ', '2021-05-12 10:37:37', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (266, 'Bapak Suwono', '4', '3', '12.00', '', 7, 'Brigjend Katamso 254', ' ', '2021-05-12 10:37:58', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (267, 'Bapak Sami’an', '4', '3', '12.00', '', 1, 'RT1 RW1', ' ', '2021-05-12 10:38:20', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (268, 'Bapak Sutomo', '5', '3', '15.00', '', 1, 'RT1 RW1', ' ', '2021-05-12 10:40:46', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (269, 'Bapak Sudarto', '6', '3', '18.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:38:56', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (270, 'Bapak Rahmat', '3', '3', '9.00', '', 2, 'RT2 RW1', ' ', '2021-05-12 10:43:54', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (271, 'Ibu Sofi', '2', '3', '6.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:44:17', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (272, 'Bapak Duk', '3', '3', '9.00', '', 5, 'RT19 RW1', ' ', '2021-05-12 10:40:55', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (273, 'Aprilia ', '5', '3', '15.00', '', 7, 'Makarya Binangun', ' ', '2021-05-12 10:40:10', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (274, 'Bapak Jalil', '4', '2.8', '11.20', '132000', 5, 'RT19 RW1', ' ', '2021-05-12 10:39:02', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (275, 'Bapak Ali', '2', '3', '6.00', '', 3, 'RT3 RW1', ' ', '2021-05-12 10:51:26', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (276, 'Wahyu', '3', '3', '9.00', '99000', 2, 'RT 02 RW 01', '', '2021-05-11 20:57:49', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (277, 'Rachmat Rahadian', '5', '3', '15.00', '', 1, 'RT 01 RW 01', '', '2021-05-11 20:59:08', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (278, 'Bapak Panut', '2', '3', '6.00', '66000', 2, 'RT 02 RW 01', '', '2021-05-11 21:00:01', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (279, 'Bapak Ahmad Baihaqi', '1', '3', '3.00', '', 5, 'RT 19 RW 01', '', '2021-05-11 21:00:47', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (280, 'M. Khoirunnasirin', '1', '3', '3.00', '', 5, 'RT 19 RW 01', '', '2021-05-11 21:01:39', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (281, 'Bapak Mulyadi', '2', '3', '6.00', '', 1, 'RT 01 RW 01', '', '2021-05-11 21:02:35', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (282, 'Bapak Ma’mun', '4', '3', '12.00', '', 2, 'RT 02 RW 01', '', '2021-05-11 21:03:35', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (283, 'Ibu Asma', '9', '3', '27.00', '', 6, 'RT 20 RW 01', '', '2021-05-11 21:04:26', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (284, 'Abdul Ghofur', '4', '2.8', '11.20', '132000', 6, 'RT 20 RW 01', '', '2021-05-11 21:05:34', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (285, 'Bapak Irianto', '2', '3', '6.00', '', 2, 'RT 02 RW 01', '', '2021-05-11 21:26:17', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (286, 'Bpk Rokhim', '5', '3', '15.00', '', 5, 'RT 19', '', '2021-05-11 21:51:11', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (287, 'Bpk Ruddy', '5', '3', '15.00', '', 7, 'Boughenvil', '', '2021-05-11 21:51:36', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (288, 'Bpk Agus salim', '4', '3', '12.00', '', 2, 'RT 02', '', '2021-05-11 21:52:11', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (289, 'Bpk Harianto', '3', '2.8', '8.40', '99000', 1, 'RT 01', '', '2021-05-11 21:52:35', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (290, 'Bpk. Sukarji', '2', '2.8', '5.60', '66000', 6, 'RT 20', 'Ibu nursiah', '2021-05-11 22:10:50', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (291, 'Bapak Siswanto', '3', '3', '9.00', '', 5, 'RT19 RW1', '', '2021-05-11 22:26:45', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (292, 'Bpk. H. Kadar', '3', '4', '12.00', '', 6, 'RT 20', '', '2021-05-11 22:26:53', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (293, 'Bapak Mukiron', '10', '3', '30.00', '', 6, 'RT20 RW1', '', '2021-05-11 22:27:35', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (294, 'Eddy Darmawan', '7', '3', '21.00', '', 6, 'RT 20', '', '2021-05-11 22:27:39', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (295, 'Bapak Kojin', '2', '3', '6.00', '', 5, 'RT19 RW1', '', '2021-05-11 22:28:13', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (296, 'Sujuanto', '4', '3', '12.00', '', 6, 'RT 20', '', '2021-05-11 22:28:33', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (297, 'Bapak Heru', '3', '3', '9.00', '', 6, 'RT19 RW1', '', '2021-05-11 22:28:41', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (298, 'Bapak Amin Susilo', '1', '3', '3.00', '', 6, 'RT20 RW1', '', '2021-05-11 22:29:09', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (299, 'Marhaban', '2', '3', '6.00', '', 7, 'Perum Makarya', '', '2021-05-11 22:29:09', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (300, 'Bapak Adi', '4', '3', '12.00', '', 5, 'RT19 RW1', '', '2021-05-11 22:29:36', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (301, 'Dian', '3', '2', '6.00', '', 5, 'RT 19', '', '2021-05-11 22:29:46', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (302, 'Ibu Maria', '1', '3', '3.00', '', 5, 'RT 19', ' ', '2021-05-11 22:30:29', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (303, 'Hadi Minarno', '5', '3', '15.00', '', 6, 'RT20 RW1', '', '2021-05-11 22:31:20', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (304, 'Minarno', '5', '3', '15.00', '', 6, 'RT 20', '', '2021-05-11 22:31:22', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (305, 'Ibu Supriati', '2', '3', '6.00', '', 5, 'RT19 RW1', '', '2021-05-11 22:31:38', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (306, 'Ibu sut', '5', '3', '15.00', '', 6, 'RT 20', '', '2021-05-11 22:31:55', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (307, 'Bapak Zahid', '1', '3', '3.00', '', 6, 'RT20 RW1', '', '2021-05-11 22:32:11', 6);
INSERT INTO `tbl_zakat_fitrah` VALUES (308, 'Ibu prapto', '1', '2.8', '2.80', '33000', 4, 'RT 18', '', '2021-05-11 22:33:49', 11);
INSERT INTO `tbl_zakat_fitrah` VALUES (309, 'Moch. Arifianto', '5', '3', '15.00', '', 1, 'Rt1', '', '2021-05-11 23:10:41', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (310, 'Siti Khomsatun ', '1', '3', '3.00', '', 1, 'Rt1', '', '2021-05-11 23:11:06', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (311, 'Sri Mulyaning Ati', '3', '3', '9.00', '', 1, 'Rt1', '', '2021-05-11 23:11:43', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (312, 'Adi Setiawan', '5', '3', '15.00', '', 1, 'Rt1', '', '2021-05-11 23:13:01', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (313, 'Sunaryo', '5', '5', '25.00', '', 1, 'Rt1', '', '2021-05-11 23:13:29', 13);
INSERT INTO `tbl_zakat_fitrah` VALUES (314, 'Cristian', '2', '2.8', '5.60', '66000', 1, 'Rt 01 rw 01', '', '2021-05-12 00:06:27', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (315, 'Jupriyadi', '4', '2.8', '11.20', '132000', 2, 'Rt 02 RW 01', '', '2021-05-12 00:07:34', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (316, 'Santoso', '3', '5', '15.00', '', 5, 'Rt 19 rw 01', '', '2021-05-12 00:08:41', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (317, 'Komar', '1', '5', '5.00', '', 5, 'Rt 19', '', '2021-05-12 00:09:19', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (318, 'Sukarji', '2', '2.8', '5.60', '66000', 6, 'Rt 20', '', '2021-05-12 00:10:35', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (319, 'Rodi', '5', '3', '15.00', '', 2, 'Rt 02', '', '2021-05-12 00:11:23', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (320, 'Eka Budi s', '2', '3', '6.00', '', 2, 'Rt 02', '', '2021-05-12 00:12:02', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (321, 'Firdaus Faisal', '6', '4.14', '24.84', '', 7, 'RRI', '', '2021-05-12 00:13:54', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (322, 'Rudi Isnawan', '4', '3', '12.00', '', 4, 'Rt 18 rw 01', '', '2021-05-12 09:01:40', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (323, 'Jalil', '1', '2.8', '2.80', '', 2, 'Rt 02 rw 01', '', '2021-05-12 09:02:34', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (324, 'Samsul Huda', '3', '3', '9.00', '', 2, 'Rt 02 rw 01', '', '2021-05-12 09:03:09', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (325, 'Abdillah', '2', '3', '6.00', '', 2, 'Rt 02 rw 01', '', '2021-05-12 09:03:47', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (326, 'Albad', '4', '2.8', '11.20', '132000', 7, 'Pengkol', '', '2021-05-12 09:04:39', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (327, 'Ghofur', '4', '3', '12.00', '', 2, 'Rt 02 ', '', '2021-05-12 09:05:21', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (328, 'Reza', '3', '2.8', '8.40', '99000', 6, 'Rt 20', '', '2021-05-12 09:06:11', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (329, 'Abd Rosyid', '3', '3', '9.00', '', 2, 'Rt 02 rw01', ' ', '2021-05-12 09:08:12', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (330, 'Putra', '1', '3', '3.00', '', 4, 'Rt 18', '', '2021-05-12 09:09:22', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (331, 'Rio', '1', '3', '3.00', '', 4, 'Rt 18', '', '2021-05-12 09:09:45', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (332, 'Sujatmiko', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 09:12:18', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (333, 'Mauli', '2', '3', '6.00', '', 4, 'Rt 03', '', '2021-05-12 09:12:34', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (334, 'Sokhib', '1', '3', '3.00', '', 6, 'Rt 20 ', '', '2021-05-12 09:12:56', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (335, 'Ilman', '4', '3', '12.00', '', 6, 'Rt 20', '', '2021-05-12 09:14:18', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (336, 'Yadi Mulyadi', '4', '3', '12.00', '', 5, 'Rt 19', '', '2021-05-12 09:14:39', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (337, 'Zainuri', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 09:15:03', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (338, 'Moch. Nugroho', '1', '3', '3.00', '', 4, 'Rt 18', '', '2021-05-12 09:15:46', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (339, 'Semi', '1', '3', '3.00', '', 4, 'Rt 18', '', '2021-05-12 09:16:42', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (340, 'Ibu komaroh', '1', '3', '3.00', '', 4, 'Rt 18', '3', '2021-05-12 09:17:11', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (341, 'Kasemi', '2', '3', '6.00', '66000', 3, 'Rt 03 rw 01', '', '2021-05-12 09:21:53', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (342, 'Agung', '5', '3', '15.00', '', 2, 'Rt 02 rw 01', '', '2021-05-12 09:22:14', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (343, 'Ahmad Syahroni', '3', '3', '9.00', '', 5, 'Rt 19', '', '2021-05-12 09:22:32', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (344, 'Umar', '2', '3', '6.00', '', 6, 'Rt 20', '', '2021-05-12 09:24:48', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (345, 'Imron', '4', '2.8', '11.20', '132000', 2, 'Rt 02', '', '2021-05-12 09:25:07', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (346, 'Aris Budiono', '2', '3', '6.00', '', 2, 'Rt 02', '', '2021-05-12 09:25:28', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (347, 'Bambang', '5', '3', '15.00', '', 3, 'Rt 03', '', '2021-05-12 09:25:51', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (348, 'Agus Setiawan', '3', '3', '9.00', '', 6, 'Rt 20', '', '2021-05-12 09:26:13', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (349, 'Harmadi', '2', '3', '6.00', '', 3, 'Rt 03', '', '2021-05-12 09:26:29', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (350, 'Isnaini', '3', '3', '9.00', '', 4, 'Rt 18', '', '2021-05-12 09:26:55', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (351, 'Farochah', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 09:27:11', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (352, 'Agus irawan', '2', '3', '6.00', '', 1, 'Rt 01', '', '2021-05-12 09:27:27', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (353, 'Eni', '1', '3', '3.00', '', 1, 'Rt 01', '', '2021-05-12 09:27:42', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (354, 'M. Shobikh', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 09:28:49', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (355, 'Rumanto', '1', '3', '3.00', '', 7, 'Rt 9 Rw 03', '', '2021-05-12 09:29:13', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (356, 'Baitul Ali', '4', '3', '12.00', '', 2, 'Rt 02 rw 01', '', '2021-05-12 09:36:38', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (357, 'Karniadi', '6', '3', '18.00', '', 3, 'Rt 03', '', '2021-05-12 10:26:32', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (358, 'Nanik', '2', '3', '6.00', '', 5, 'Rt 19', '', '2021-05-12 10:27:03', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (359, 'Agus Setiawan', '4', '3', '12.00', '', 7, 'Rt 17 rw 03', '', '2021-05-12 10:27:29', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (360, 'Indra ramadhan', '1', '3', '3.00', '', 5, 'Rt 19', '', '2021-05-12 10:27:51', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (361, 'Didit', '5', '3', '15.00', '', 2, 'Rt 02', '', '2021-05-12 10:28:11', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (362, 'Sugito', '4', '3', '12.00', '', 2, 'Rt 02', '', '2021-05-12 10:28:37', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (363, 'Aksin', '5', '3', '15.00', '', 2, 'Rt 02', '', '2021-05-12 10:28:57', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (364, 'Fauzi', '5', '3', '15.00', '', 7, 'Lamongan', '', '2021-05-12 10:29:14', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (365, 'Fatkhur', '4', '3', '12.00', '', 4, 'Rt 18', '', '2021-05-12 10:29:34', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (366, 'Ameni', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 10:55:02', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (367, 'Sigit', '2', '3', '6.00', '', 4, 'Rt 18', '', '2021-05-12 10:56:01', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (368, 'Surendi', '3', '2.8', '8.40', '99000', 7, 'Gang V', '', '2021-05-12 10:56:51', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (369, 'Rendi rusbian', '3', '3', '9.00', '', 4, 'Rt 18 rw 01', '', '2021-05-12 11:00:32', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (370, 'Hendrik', '1', '3', '3.00', '', 5, 'Rt 19\r\n', '', '2021-05-12 11:03:25', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (371, 'Hendrik', '1', '3', '3.00', '', 5, 'RT 19 RW 01', '', '2021-05-12 12:53:59', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (372, 'Moch. Solton', '5', '3', '15.00', '', 1, 'RT 01 RW 01', '', '2021-05-12 12:54:42', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (373, 'Moh. Sofi Agustin', '1', '2.8', '2.80', '33000', 7, 'Balongpoh RT 30 RW 06', '', '2021-05-12 12:55:37', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (374, 'Bapak Sihadi', '6', '3', '18.00', '', 3, 'RT 03 RW 01', '', '2021-05-12 12:56:14', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (375, 'Bapak Khoiri', '2', '3', '6.00', '', 3, 'RT 03 RW 01', '', '2021-05-12 13:03:40', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (376, 'Ade Yudistira', '3', '3', '9.00', '', 6, 'RT 20 RW 01', '', '2021-05-12 13:04:12', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (377, 'Feby Warta', '1', '3', '3.00', '33000', 6, 'RT 20 RW 01', ' ', '2021-05-12 14:57:41', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (378, 'Ibu Endang', '1', '3', '3.00', '', 2, 'RT 02 RW 01', ' ', '2021-05-12 13:06:20', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (379, 'Silvi Puspita', '3', '3', '9.00', '99000', 4, 'RT 18 RW 01', '', '2021-05-12 13:07:19', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (380, 'Farrel', '3', '3', '9.00', '', 6, 'RT 20 RW 01', '', '2021-05-12 13:07:48', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (381, 'Sodikin', '5', '3', '15.00', '', 6, 'RT 20 RW 01', '', '2021-05-12 13:08:26', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (382, 'Agus Baru Yazid', '4', '3', '12.00', '132000', 6, 'RT 20 RW 01', '', '2021-05-12 13:09:13', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (383, 'Qorni\'', '2', '3', '6.00', '', 2, 'RT 02 RW 01', '', '2021-05-12 13:19:22', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (384, 'Moch. Nasrullah', '5', '3', '15.00', '165000', 2, 'RT 02 RW 01', '', '2021-05-12 13:20:39', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (385, 'Bapak Adi Sunaryo', '3', '3', '9.00', '', 5, 'RT 19 RW 01', '', '2021-05-12 13:21:16', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (386, 'Pak Fahmi', '3', '3', '9.00', '', 3, 'RT 03 RW 01', '', '2021-05-12 13:22:10', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (387, 'Pak Handris', '1', '3', '3.00', '', 7, 'Berbek 1G', '', '2021-05-12 13:23:05', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (388, 'Pak Dicky', '4', '2.8', '11.20', '132000', 7, 'Graha Tirta Akasia No.52', '', '2021-05-12 13:23:55', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (389, 'Ibu Pradita', '3', '2.8', '8.40', '99000', 7, 'Gang 5 No.128', '', '2021-05-12 13:24:43', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (390, 'Bu Eka', '5', '3', '15.00', '', 7, 'Gang 5 No. 149', ' ', '2021-05-12 13:51:08', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (391, 'Bpk novan', '3', '3', '9.00', '', 2, 'RT 02', '', '2021-05-12 13:51:48', 12);
INSERT INTO `tbl_zakat_fitrah` VALUES (392, 'Maulida', '2', '3', '6.00', '', 5, 'RT19/RW01 Janti', '', '2021-05-12 14:53:54', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (393, 'Bapak Ahmadi', '3', '3', '9.00', '99000', 7, 'Graha Tirta Bougenville', '', '2021-05-12 15:25:24', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (394, 'Ibu Riyanti', '2', '3', '6.00', '66000', 7, 'Graha Tirta Bougenville', '', '2021-05-12 15:26:33', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (395, 'Ibu Sulastri', '4', '3', '12.00', '', 7, 'Janti', '', '2021-05-12 15:27:41', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (396, 'Bapak Andi', '2', '3', '6.00', '66000', 3, 'RT 03 RW 01', '', '2021-05-12 15:29:21', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (397, 'Mas jainul', '4', '3', '12.00', '', 3, 'Rt03', '', '2021-05-12 15:45:20', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (398, 'Bpk Andreyanto', '4', '3', '12.00', '', 5, 'RT19', '', '2021-05-12 15:46:01', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (399, 'Ibu nurhayani', '2', '3', '6.00', '', 5, 'RT19', '', '2021-05-12 15:47:31', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (400, 'Bpk udin', '1', '3', '3.00', '', 2, 'RT02', '', '2021-05-12 15:48:14', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (401, 'Bpk aas', '4', '3', '12.00', '', 3, 'RT03', '', '2021-05-12 15:48:58', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (402, 'Bpk ubed', '2', '3', '6.00', '', 3, 'RT03', '', '2021-05-12 15:51:05', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (403, 'Bpk Junaidi', '1', '3', '3.00', '', 3, 'RT03', '', '2021-05-12 15:52:25', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (404, 'Bpk nais', '1', '3', '3.00', '', 3, 'RT03', '', '2021-05-12 15:53:09', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (405, 'Bpk saiful anam', '2', '3', '6.00', '', 4, 'RT18', '', '2021-05-12 15:54:58', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (406, 'Krisna harimurti', '1', '3', '3.00', '', 7, 'Perum graha tirta', '', '2021-05-12 15:55:47', 5);
INSERT INTO `tbl_zakat_fitrah` VALUES (407, 'bpk samsul huda', '4', '2.8', '11.20', '', 6, 'Rt20', '', '2021-05-12 16:22:21', 3);
INSERT INTO `tbl_zakat_fitrah` VALUES (408, 'bpk yus', '4', '3', '12.00', '', 4, 'Rt 18', '', '2021-05-12 16:22:41', 3);

-- ----------------------------
-- Table structure for tbl_zakat_maal
-- ----------------------------
DROP TABLE IF EXISTS `tbl_zakat_maal`;
CREATE TABLE `tbl_zakat_maal`  (
  `id_zakat_maal` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemberi_maal` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori_zakat` int(11) NULL DEFAULT NULL,
  `nominal_zakat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` int(11) NULL DEFAULT NULL,
  `alamat_lainnya` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tanggal` date NULL DEFAULT NULL,
  `petugas1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `petugas2` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id_zakat_maal`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_zakat_maal
-- ----------------------------
INSERT INTO `tbl_zakat_maal` VALUES (4, 'Lukman Hakim', 1, '2000000', 7, 'Graha Tirta Akasia 36', '2021-05-07', '7', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (5, 'Mas ria', 3, '1000', 2, 'Rt 02, Rw 01', '2021-05-07', '7', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (6, 'Bpak M. Lukman Hakim', 3, '35000', 7, 'Graha Tirta Akasia 36', '2021-05-07', '7', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (7, 'Lailatul Isnaini Arofah', 4, '450000', 3, 'RT03 RW01 JANTI', '2021-05-07', '7', NULL, 'Nifas');
INSERT INTO `tbl_zakat_maal` VALUES (8, 'Ahmad abdul ghofur', 3, '4000', 5, 'Janti RT 19 RW 01', '2021-05-07', '5', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (9, 'Marlina', 4, '150000', 5, 'Rt 19', '2021-05-08', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (10, 'Farida Nur Zeha', 3, '200000', 7, 'Buduran', '2021-05-08', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (11, 'Miftahuddin', 3, '100000', 5, 'Rt 19 rw 01', '2021-05-09', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (15, 'Apriyana H.', 4, '0', 7, 'Wisma Tropodo', '2021-05-09', '3', NULL, 'Beras 14 kg');
INSERT INTO `tbl_zakat_maal` VALUES (16, 'Bpk Ari', 3, '1000', 7, 'K24', '2021-05-09', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (17, 'Rohaida', 4, '450000', 7, 'Dukuh ngingas', '2021-05-09', '3', NULL, 'Sakit');
INSERT INTO `tbl_zakat_maal` VALUES (18, 'Bpk Adi Maulana', 3, '5000', 7, 'Perum Graha Tirta Dahlia', '2021-05-09', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (19, 'Bpk Wahyu Romahdhony', 1, '17000', 7, 'Magetan', '2021-05-09', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (20, 'Sarito', 3, '1000', 5, 'Rt 19', '2021-05-10', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (21, 'Nurhayati', 3, '17000', 7, 'Makarya Binangun', '2021-05-10', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (22, 'Indra Gunawan', 3, '1000', 7, 'Buduran', '2021-05-10', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (23, 'Filza nur khanani', 4, '450000', 7, 'Brigjen katamso', '2021-05-10', '11', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (24, 'Ibu nur aini', 3, '64000', 1, '', '2021-05-10', '11', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (25, 'Bpk pulung', 1, '500000', 7, 'Graha Tirta akasia', '2021-05-10', '11', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (26, 'Bpk pulung', 3, '269000', 7, 'Graha Tirta akasia', '2021-05-10', '11', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (27, 'Bpk suparto', 3, '2000', 7, 'Ngingas', '2021-05-10', '11', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (28, 'Bpk sigit', 1, '100000', 2, 'RT 02', '2021-05-10', '11', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (29, 'Bpk sigit ', 3, '100000', 2, 'RT 02', '2021-05-10', '11', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (30, 'Ibu suminten', 4, '450000', 5, 'RT 19', '2021-05-10', '11', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (31, 'Juwanto', 3, '200000', 6, 'Rt 20', '2021-05-10', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (33, 'Ibu Prapto', 4, '225000', 1, '', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (34, 'Pak Syukur', 3, '200000', 4, 'RT 18', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (35, 'Hj Abdul Manan', 1, '500000', 7, 'WEDORO MASJID', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (36, 'Ibu Desy', 3, '68000', 7, 'MASANGAN GEDANGAN', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (37, 'Bapak Imam', 3, '17000', 3, 'JANTI 03', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (38, 'Bapak Yahya', 3, '250000', 4, 'JANTI RT18', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (39, 'Ibu Mariyah', 3, '250000', 4, 'JANTI RT18', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (40, 'PT SERODJA SURYA KACA', 2, '500000', 7, 'JANTI', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (41, 'Bpk. Aan', 1, '1500000', 4, 'RT18/RW01', '2021-05-11', '5', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (42, 'Bpk. Selamet Riyanto', 3, '50000', 2, '02/01 Janti', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (43, 'Bpk. Wawan', 1, '100000', 7, 'Gunung Sari', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (44, 'Ibu Sadan', 1, '150000', 3, 'Rt 03 RW 01', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (45, 'Ibu Hasna Rief / Bapak Johan W', 1, '500000', 5, 'Rt 19 rw 01', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (46, 'H. Mulyadi', 1, '100000', 4, 'Rt 18 rw 01', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (47, 'H. Nuril Huda', 1, '200000', 6, 'Rt 20 rw 01', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (48, 'H. Sukani', 1, '500000', 6, 'Rt 20 rw 01', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (49, 'Bpk. Rudi Setiawan', 1, '100000', 4, 'RT 18', '2021-05-11', '11', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (50, 'Ibu Siti', 3, '7000', 3, 'RT 03 RW 01', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (51, 'Bapak Mulyadi', 1, '500000', 1, 'Janti RT 01', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (52, 'Ari budiono', 3, '100000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (53, 'Nanuk Susilowati', 4, '450000', 7, 'Makarya Binangun', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (54, 'Bapak Sutomo', 1, '1000000', 1, 'Janti RT 01', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (55, 'Elinda Wulandari', 4, '250000', 3, 'RT 03 RW 01', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (56, 'Jahuri', 1, '1450000', 2, 'RT 02 RW 01', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (57, 'Bapak makmun', 3, '200000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (58, 'Bapak Sadali', 3, '200000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (59, 'Bapak Artono', 1, '100000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (60, 'Toko Setiawan', 2, '200000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (61, 'Gangsar montor (Bpk Sigit)', 1, '300000', 2, 'Janti RT 02', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (62, 'Bapak Munasrip', 3, '1000', 4, 'Janti RT 18', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (63, 'Pak Suwono', 3, '50000', 3, 'RT 03 RW 01', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (64, 'Pak Malik', 3, '17000', 4, 'RT 18 RW 01', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (65, 'Bapak Jalil', 3, '8000', 5, 'RT 19 RW 01', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (66, 'Wahyu', 4, '450000', 2, 'RT 02 RW 01', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (67, 'Bapak Mulyadi', 1, '500000', 1, 'RT 01 RW 01', '2021-05-11', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (68, 'Bani Adam', 3, '100000', 1, 'Rt 01 Rw 01', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (69, 'Roni', 1, '500000', 6, 'Rt 20 Rw 01', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (70, 'Adi triyasa', 4, '180000', 5, 'RT 19', '2021-05-11', '3', NULL, '12 Hari');
INSERT INTO `tbl_zakat_maal` VALUES (71, 'Ibu Prapto', 3, '42000', 4, 'Rt 18 RW 01', '2021-05-11', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (72, 'Cristian dan Tyas', 3, '34000', 1, 'Rt 01', '2021-05-12', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (73, 'Mbak Indra', 1, '100000', 1, 'Rt 01', '2021-05-12', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (74, 'Fulan', 3, '50000', 1, 'Rt 01', '2021-05-12', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (76, 'H. Suyono', 1, '300000', 6, 'Rt 20 rw 01', '2021-05-12', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (77, 'Suliyat', 3, '85000', 6, 'Rt 20 rw 01', '2021-05-12', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (78, 'Albad', 3, '368000', 7, 'Pengkol', '2021-05-12', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (79, 'Imron', 3, '68000', 2, 'Rt 02 rw 01', '2021-05-12', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (80, 'Asiyah', 4, '450000', 3, 'Rt 03', '2021-05-12', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (81, 'Sugito', 1, '200000', 2, 'Rt 02', '2021-05-12', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (82, 'Moch Zaini', 4, '0', 1, '', '2021-05-12', '3', NULL, 'Beras 10 kg');
INSERT INTO `tbl_zakat_maal` VALUES (83, 'Moh. Nasrullah', 3, '35000', 2, 'RT 02 RW 01', '2021-05-12', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (84, 'Moch. Nasrullah', 3, '35000', 2, 'RT 02 RW 01', '2021-05-12', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (85, 'Ibu Pradita', 3, '1000', 7, 'Gang 5 No.128', '2021-05-12', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (86, 'Bu Eka', 3, '175000', 7, 'Gang 5 No.18', '2021-05-12', '12', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (87, 'Sumarlan ', 3, '100000', 1, 'Rt 01', '2021-05-12', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (88, 'Dullah ', 3, '20000', 1, 'Rt 01', '2021-05-12', '3', NULL, '');
INSERT INTO `tbl_zakat_maal` VALUES (89, 'Rochim', 3, '100000', 1, 'Rt 01', '2021-05-12', '3', NULL, '');

SET FOREIGN_KEY_CHECKS = 1;
