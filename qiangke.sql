/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50018
Source Host           : 127.0.0.1:3306
Source Database       : qiangke

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2018-04-30 17:27:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `cname` varchar(255) default NULL,
  `ctime` varchar(255) default NULL,
  `clocation` varchar(255) default NULL,
  PRIMARY KEY  (`cid`,`tid`),
  KEY `tid` (`tid`),
  KEY `cid` (`cid`),
  CONSTRAINT `tid` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('123', '111', 'Java', '周一上午1-3', '2教105');
INSERT INTO `course` VALUES ('124', '111', '数据库', '周二晚上12-14', '2教305');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `score` double default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`cid`,`sid`),
  KEY `sid` (`sid`),
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`),
  CONSTRAINT `sid` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('123', '1', '-1', '未考试');
INSERT INTO `result` VALUES ('124', '2', '-1', '未考试');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sname` varchar(255) default NULL,
  `spw` varchar(255) default NULL,
  `sclass` varchar(255) default NULL,
  `smajor` varchar(255) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '小红', '123', '16计算机8班', '计算机');
INSERT INTO `student` VALUES ('2', '小明', '456', '16计算机8班', '计算机');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `tname` varchar(255) default NULL,
  `tpw` varchar(255) default NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('111', '苑老师', '123123');
