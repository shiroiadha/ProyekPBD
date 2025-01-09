-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for jadwalngajar
CREATE DATABASE IF NOT EXISTS `jadwalngajar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `jadwalngajar`;

-- Dumping structure for table jadwalngajar.akun
CREATE TABLE IF NOT EXISTS `akun` (
  `id_akun` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('siswa','guru','admin') NOT NULL,
  PRIMARY KEY (`id_akun`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jadwalngajar.akun: ~8 rows (approximately)
DELETE FROM `akun`;
INSERT INTO `akun` (`id_akun`, `username`, `password`, `role`) VALUES
	(1, 'dina', 'password123', 'siswa'),
	(2, 'eko', 'password123', 'siswa'),
	(3, 'fina', 'password123', 'siswa'),
	(4, 'ahmad', 'password123', 'guru'),
	(5, 'budi', 'password123', 'guru'),
	(6, 'citra', 'password123', 'guru'),
	(7, 'admin1', 'adminpass', 'admin'),
	(8, 'admin2', 'adminpass', 'admin');

-- Dumping structure for table jadwalngajar.guru
CREATE TABLE IF NOT EXISTS `guru` (
  `id_guru` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  PRIMARY KEY (`id_guru`),
  UNIQUE KEY `nip` (`nip`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jadwalngajar.guru: ~12 rows (approximately)
DELETE FROM `guru`;
INSERT INTO `guru` (`id_guru`, `nama`, `nip`, `telepon`) VALUES
	(1, 'Ahmad', '1980001', '081234567890'),
	(2, 'Budi', '1980002', '081234567891'),
	(3, 'Citra', '1980003', '081234567892'),
	(4, 'Dewi', '1980004', '081234567893'),
	(5, 'Eka', '1980005', '081234567894'),
	(6, 'Fajar', '1980006', '081234567895'),
	(7, 'Gina', '1980007', '081234567896'),
	(8, 'Hadi', '1980008', '081234567897'),
	(9, 'Merry', '1980009', '089123458675'),
	(10, 'Renko', '1980010', '081223458967'),
	(11, 'Keiki', '1980011', '081324563971'),
	(12, 'Usumi', '1980012', '901284390184');

-- Dumping structure for table jadwalngajar.jadwal
CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `hari` varchar(50) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_ruang` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  PRIMARY KEY (`id_jadwal`),
  KEY `id_kelas` (`id_kelas`),
  KEY `id_mapel` (`id_mapel`),
  KEY `id_guru` (`id_guru`),
  KEY `id_ruang` (`id_ruang`),
  KEY `id_tahun` (`id_tahun`),
  CONSTRAINT `FK_jadwal_guru` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_matapelajaran` FOREIGN KEY (`id_mapel`) REFERENCES `matapelajaran` (`id_mapel`) ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_ruangkelas` FOREIGN KEY (`id_ruang`) REFERENCES `ruangkelas` (`id_ruang`) ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_tahunajaran` FOREIGN KEY (`id_tahun`) REFERENCES `tahunajaran` (`id_tahun`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jadwalngajar.jadwal: ~8 rows (approximately)
DELETE FROM `jadwal`;
INSERT INTO `jadwal` (`id_jadwal`, `hari`, `jam_mulai`, `jam_selesai`, `id_kelas`, `id_mapel`, `id_guru`, `id_ruang`, `id_tahun`) VALUES
	(1, 'Senin', '08:00:00', '09:30:00', 1, 1, 1, 1, 1),
	(2, 'Senin', '09:30:00', '11:00:00', 1, 2, 2, 1, 1),
	(3, 'Selasa', '08:00:00', '09:30:00', 2, 3, 3, 2, 1),
	(4, 'Rabu', '10:00:00', '11:30:00', 3, 4, 4, 2, 1),
	(5, 'Kamis', '13:00:00', '14:30:00', 4, 5, 5, 3, 1),
	(6, 'Jumat', '08:00:00', '09:30:00', 5, 6, 6, 4, 1),
	(7, 'Senin', '14:00:00', '15:30:00', 6, 7, 7, 5, 1),
	(8, 'Selasa', '09:30:00', '11:00:00', 7, 8, 8, 6, 1);

-- Dumping structure for table jadwalngajar.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(50) NOT NULL,
  `id_guru` int(11) NOT NULL,
  PRIMARY KEY (`id_kelas`),
  UNIQUE KEY `nama_kelas` (`nama_kelas`),
  KEY `id_guru` (`id_guru`),
  CONSTRAINT `FK_kelas_guru` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jadwalngajar.kelas: ~13 rows (approximately)
DELETE FROM `kelas`;
INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `id_guru`) VALUES
	(1, '10A', 5),
	(2, '10B', 2),
	(3, '11A', 3),
	(4, '11B', 10),
	(5, '12A', 5),
	(6, '12B', 6),
	(7, '10C', 7),
	(8, '11C', 8),
	(10, '10D', 3),
	(11, '10E', 4),
	(12, '12R', 11),
	(13, '12E', 1);

-- Dumping structure for table jadwalngajar.matapelajaran
CREATE TABLE IF NOT EXISTS `matapelajaran` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(100) NOT NULL,
  `kode_mapel` varchar(20) NOT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jadwalngajar.matapelajaran: ~8 rows (approximately)
DELETE FROM `matapelajaran`;
INSERT INTO `matapelajaran` (`id_mapel`, `nama_mapel`, `kode_mapel`) VALUES
	(1, 'Matematika', 'MATH101'),
	(2, 'Bahasa Indonesia', 'INDO101'),
	(3, 'Fisika', 'PHYS101'),
	(4, 'Kimia', 'CHEM101'),
	(5, 'Biologi', 'BIO101'),
	(6, 'Sejarah', 'HIST101'),
	(7, 'Geografi', 'GEO101'),
	(8, 'Ekonomi', 'ECON101');

-- Dumping structure for table jadwalngajar.ruangkelas
CREATE TABLE IF NOT EXISTS `ruangkelas` (
  `id_ruang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ruang` varchar(50) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  PRIMARY KEY (`id_ruang`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jadwalngajar.ruangkelas: ~8 rows (approximately)
DELETE FROM `ruangkelas`;
INSERT INTO `ruangkelas` (`id_ruang`, `nama_ruang`, `kapasitas`) VALUES
	(1, 'Ruang 101', 40),
	(2, 'Ruang 102', 35),
	(3, 'Ruang 103', 30),
	(4, 'Ruang 104', 25),
	(5, 'Ruang 105', 20),
	(6, 'Ruang 106', 15),
	(7, 'Ruang 107', 50),
	(8, 'Ruang 108', 45);

-- Dumping structure for table jadwalngajar.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_siswa`),
  UNIQUE KEY `nis` (`nis`),
  KEY `kelas_id` (`id_kelas`) USING BTREE,
  CONSTRAINT `FK_siswa_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jadwalngajar.siswa: ~9 rows (approximately)
DELETE FROM `siswa`;
INSERT INTO `siswa` (`id_siswa`, `nama`, `nis`, `telepon`, `id_kelas`) VALUES
	(2, 'Eko', '1002', '081234567891', 1),
	(3, 'Fina', '1003', '081234567890', 2),
	(4, 'Gilang', '1004', '081234567890', 2),
	(5, 'Hana', '1005', '081234567890', 1),
	(6, 'Irfan', '1006', '081234567890', 1),
	(7, 'Joko', '1007', '081234567890', 2),
	(8, 'Kiki', '1008', '081234567890', 2),
	(9, 'Mara', '1009', '081322440099', 1),
	(10, 'Merry Harn', '1010', '081238973456', NULL);

-- Dumping structure for table jadwalngajar.tahunajaran
CREATE TABLE IF NOT EXISTS `tahunajaran` (
  `id_tahun` int(11) NOT NULL AUTO_INCREMENT,
  `tahun_mulai` int(11) NOT NULL,
  `tahun_selesai` int(11) NOT NULL,
  `status_aktif` enum('Aktif','Tidak Aktif') DEFAULT NULL,
  PRIMARY KEY (`id_tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table jadwalngajar.tahunajaran: ~8 rows (approximately)
DELETE FROM `tahunajaran`;
INSERT INTO `tahunajaran` (`id_tahun`, `tahun_mulai`, `tahun_selesai`, `status_aktif`) VALUES
	(1, 2024, 2025, 'Aktif'),
	(2, 2023, 2024, ''),
	(3, 2022, 2023, ''),
	(4, 2021, 2022, ''),
	(5, 2020, 2021, ''),
	(6, 2019, 2020, ''),
	(7, 2018, 2019, ''),
	(8, 2017, 2018, '');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
