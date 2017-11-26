/*
Navicat MySQL Data Transfer

Source Server         : 主机
Source Server Version : 50555
Source Host           : localhost:3306
Source Database       : test4

Target Server Type    : MYSQL
Target Server Version : 50555
File Encoding         : 65001

Date: 2017-09-15 14:29:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '财务部门');
INSERT INTO `dept` VALUES ('2', '清洁部门');
INSERT INTO `dept` VALUES ('3', '安全部门');
INSERT INTO `dept` VALUES ('4', '管理部门');
INSERT INTO `dept` VALUES ('5', 'pop');
INSERT INTO `dept` VALUES ('6', 'www');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(8) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `hobby` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `dept_id` (`dept_id`),
  KEY `job_id` (`job_id`),
  CONSTRAINT `dept_id` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '1', '1', '11', '11', 'nan', '111', '111');
INSERT INTO `employee` VALUES ('2', '1', '1', 'safd', '12', 'nan', '1231231231', '1221');
INSERT INTO `employee` VALUES ('3', '1', '1', '111', '12', 'nan', '11111', 'eat');
INSERT INTO `employee` VALUES ('123', '1', '1', '123', '12', 'nan', '123', '123');

-- ----------------------------
-- Table structure for `job`
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', 'boss');
INSERT INTO `job` VALUES ('2', 'normal');
INSERT INTO `job` VALUES ('3', 'senior');
INSERT INTO `job` VALUES ('4', 'manager');
INSERT INTO `job` VALUES ('5', '总经理');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '2', '2');
INSERT INTO `user` VALUES ('3', '3', '3');
INSERT INTO `user` VALUES ('4', 'jim', '123456');
INSERT INTO `user` VALUES ('5', '5', '5');
INSERT INTO `user` VALUES ('6', '6', '6');
INSERT INTO `user` VALUES ('7', '7', '7');
INSERT INTO `user` VALUES ('8', '8', '8');
INSERT INTO `user` VALUES ('9', '9', '9');
INSERT INTO `user` VALUES ('10', '10', '10');
INSERT INTO `user` VALUES ('11', '11', '11');
