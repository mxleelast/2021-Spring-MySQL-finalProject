/*
Navicat MySQL Data Transfer

Source Server         : 本地1
Source Server Version : 80023
Source Host           : 127.0.0.1:3306
Source Database       : group_5

Target Server Type    : MYSQL
Target Server Version : 80023
File Encoding         : 65001

Date: 2021-06-01 22:52:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for driver
-- ----------------------------
DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver` (
  `driver_id` char(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `nation` varchar(40) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `TEL` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of driver
-- ----------------------------

-- ----------------------------
-- Table structure for drive_license
-- ----------------------------
DROP TABLE IF EXISTS `drive_license`;
CREATE TABLE `drive_license` (
  `license_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `nation` varchar(40) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `TEL` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `v_type` varchar(20) DEFAULT NULL,
  `valid_start_date` date DEFAULT NULL,
  `valid_period` int DEFAULT NULL,
  PRIMARY KEY (`license_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of drive_license
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT,
  `engine_id` varchar(40) NOT NULL,
  `driver_id` int NOT NULL,
  `violation_date` date DEFAULT NULL,
  `v_type` varchar(20) NOT NULL,
  `region` varchar(40) DEFAULT NULL,
  `location` varchar(40) DEFAULT NULL,
  `des_point` int DEFAULT NULL,
  `penalty` decimal(10,2) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for officer
-- ----------------------------
DROP TABLE IF EXISTS `officer`;
CREATE TABLE `officer` (
  `officer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `start_date` date DEFAULT NULL,
  `pos_name` varchar(40) DEFAULT NULL,
  `department` varchar(40) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`officer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of officer
-- ----------------------------

-- ----------------------------
-- Table structure for plate_place
-- ----------------------------
DROP TABLE IF EXISTS `plate_place`;
CREATE TABLE `plate_place` (
  `place_id` varchar(20) NOT NULL,
  `place_name` varchar(40) NOT NULL,
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of plate_place
-- ----------------------------
INSERT INTO `plate_place` VALUES ('冀A', '石家庄');
INSERT INTO `plate_place` VALUES ('冀D', '邯郸');
INSERT INTO `plate_place` VALUES ('冀T', '衡水');
INSERT INTO `plate_place` VALUES ('吉A', '长春');
INSERT INTO `plate_place` VALUES ('吉G', '白城');
INSERT INTO `plate_place` VALUES ('吉J', '松原');
INSERT INTO `plate_place` VALUES ('川A', '成都');
INSERT INTO `plate_place` VALUES ('皖A', '合肥');
INSERT INTO `plate_place` VALUES ('皖B', '芜湖');
INSERT INTO `plate_place` VALUES ('皖H', '安庆');

-- ----------------------------
-- Table structure for vehicle
-- ----------------------------
DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle` (
  `engine_id` char(40) NOT NULL,
  `brand` varchar(40) DEFAULT NULL,
  `v_type` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `displacement` decimal(6,2) DEFAULT NULL,
  `prod_date` date DEFAULT NULL,
  `usage_period` int DEFAULT NULL,
  `license_plate` varchar(20) DEFAULT NULL,
  `place_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`engine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vehicle
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_license
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_license`;
CREATE TABLE `vehicle_license` (
  `v_type` varchar(20) NOT NULL,
  `v_name` varchar(40) NOT NULL,
  `owner_id` varchar(20) DEFAULT NULL,
  `owner_name` varchar(40) DEFAULT NULL,
  `owner_address` varchar(40) DEFAULT NULL,
  `use_type` varchar(40) DEFAULT NULL,
  `brand` varchar(40) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  PRIMARY KEY (`v_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vehicle_license
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_type
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_type`;
CREATE TABLE `vehicle_type` (
  `v_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `v_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`v_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of vehicle_type
-- ----------------------------
INSERT INTO `vehicle_type` VALUES ('A1', '大型客车');
INSERT INTO `vehicle_type` VALUES ('A2', '牵引车');
INSERT INTO `vehicle_type` VALUES ('A3', '城市公交车');
INSERT INTO `vehicle_type` VALUES ('B1', '中型客车');
INSERT INTO `vehicle_type` VALUES ('B2', '大型货车');
INSERT INTO `vehicle_type` VALUES ('C1', '小型汽车');
INSERT INTO `vehicle_type` VALUES ('C2', '小型自动挡汽车');
INSERT INTO `vehicle_type` VALUES ('C3', '低速载货汽车');
INSERT INTO `vehicle_type` VALUES ('C4', '三轮汽车');
INSERT INTO `vehicle_type` VALUES ('D', '普通三轮摩托车');
INSERT INTO `vehicle_type` VALUES ('E', '普通二轮摩托车');
INSERT INTO `vehicle_type` VALUES ('F', '轻便摩托车');

-- ----------------------------
-- Table structure for violation
-- ----------------------------
DROP TABLE IF EXISTS `violation`;
CREATE TABLE `violation` (
  `v_type` varchar(20) NOT NULL,
  `v_name` varchar(40) NOT NULL,
  PRIMARY KEY (`v_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of violation
-- ----------------------------

-- ----------------------------
-- Table structure for violation_type
-- ----------------------------
DROP TABLE IF EXISTS `violation_type`;
CREATE TABLE `violation_type` (
  `v_type` varchar(20) NOT NULL,
  `v_name` varchar(40) NOT NULL,
  `de_point` int DEFAULT NULL,
  `penality` decimal(10,2) DEFAULT NULL,
  `days` int DEFAULT NULL,
  PRIMARY KEY (`v_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of violation_type
-- ----------------------------
INSERT INTO `violation_type` VALUES ('A', '闯红灯', '6', '200.00', '60');
INSERT INTO `violation_type` VALUES ('B', '不按车道导向箭头行驶', '2', '100.00', '30');
INSERT INTO `violation_type` VALUES ('C', '逆行', '3', '200.00', '30');
INSERT INTO `violation_type` VALUES ('D', '违反禁止标线', '3', '200.00', '30');
INSERT INTO `violation_type` VALUES ('E', '不礼让行人', '3', '100.00', '60');
INSERT INTO `violation_type` VALUES ('F', '在人行横道线上掉头', '0', '200.00', '30');
INSERT INTO `violation_type` VALUES ('G', '机动车占用非机动车道', '0', '200.00', '30');
INSERT INTO `violation_type` VALUES ('H', '越线停车', '2', '100.00', '60');
INSERT INTO `violation_type` VALUES ('I', '路口滞留', '2', '200.00', '60');
INSERT INTO `violation_type` VALUES ('J', '左转不让直行', '3', '200.00', '30');
