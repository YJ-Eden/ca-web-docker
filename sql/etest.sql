/*
 Navicat MySQL Data Transfer

 Source Server         : eden-demo1(root@root123)
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost
 Source Database       : etest

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : utf-8

 Date: 03/27/2020 18:21:49 PM
*/

create database `etest` default character set utf8 collate utf8_general_ci;
 
use etest;

-- ----------------------------
--  Table structure for `basic_data`
-- ----------------------------
DROP TABLE IF EXISTS `basic_data`;
CREATE TABLE `basic_data` (
  `type` smallint(10) NOT NULL COMMENT '基础数据类型',
  `name` varchar(50) DEFAULT NULL COMMENT '基础类型名称',
  `basic_code` varchar(50) NOT NULL COMMENT '基础数据编号',
  `basic_name` varchar(50) DEFAULT NULL COMMENT '基础编号名称',
  PRIMARY KEY (`type`,`basic_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `basic_data`
-- ----------------------------
BEGIN;
INSERT INTO `basic_data` VALUES ('1', '教学科目', '1', '语文'), ('1', '教学科目', '10', '音乐'), ('1', '教学科目', '11', '美术'), ('1', '教学科目', '12', '体育'), ('1', '教学科目', '13', '社科'), ('1', '教学科目', '14', '伦理'), ('1', '教学科目', '15', '生理'), ('1', '教学科目', '2', '数学'), ('1', '教学科目', '3', '英语'), ('1', '教学科目', '4', '物理'), ('1', '教学科目', '5', '化学'), ('1', '教学科目', '6', '生物'), ('1', '教学科目', '7', '政治'), ('1', '教学科目', '8', '历史'), ('1', '教学科目', '9', '地理'), ('2', '学生类型', '1', '专科'), ('2', '学生类型', '2', '本科'), ('2', '学生类型', '3', '研究生'), ('2', '学生类型', '4', '留学生'), ('2', '学生类型', '5', '交换生'), ('2', '学生类型', '6', '国防生'), ('3', '学生状态', '1', '待审批'), ('3', '学生状态', '2', '已注册'), ('3', '学生状态', '3', '已锁定'), ('4', '日志类型', '1', '学生'), ('4', '日志类型', '2', '教师'), ('4', '日志类型', '3', '超级管理员');
COMMIT;

-- ----------------------------
--  Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(40) DEFAULT NULL COMMENT '日志内容',
  `type` tinyint(2) DEFAULT NULL COMMENT '日志类型（1：学生；2：教师；3：超级管理员）',
  `person_id` bigint(40) DEFAULT NULL COMMENT '对应的人员ID',
  `person_name` varchar(40) DEFAULT NULL COMMENT '对应的人员姓名',
  `log_time` datetime DEFAULT NULL COMMENT '日志时间',
  `remark` varchar(40) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `student_id` bigint(40) DEFAULT NULL COMMENT '学生id',
  `project` tinyint(4) DEFAULT NULL COMMENT '教学科目（对应基础数据表type=1）',
  `ranking` smallint(5) DEFAULT NULL COMMENT '排名',
  `unit` varchar(40) DEFAULT NULL COMMENT '单位',
  `teacher_id` bigint(40) DEFAULT NULL COMMENT '教师id',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(40) DEFAULT NULL COMMENT '备注',
  `score121` decimal(5,0) DEFAULT NULL COMMENT '分数',
  `answer12110` decimal(5,0) DEFAULT NULL,
  `answer12111` decimal(5,0) DEFAULT NULL,
  `answer12112` decimal(5,0) DEFAULT NULL,
  `score` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `score`
-- ----------------------------
BEGIN;
INSERT INTO `score` VALUES ('67', '1', null, null, null, null, '2020-03-19 14:04:49', null, '100', null, null, null, null), ('73', '17', null, null, null, null, '2020-03-27 17:57:53', null, '3', '12', '6', '0', null);
COMMIT;

-- ----------------------------
--  Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(40) DEFAULT NULL COMMENT '姓名',
  `password` varchar(40) DEFAULT NULL COMMENT '密码md5加密',
  `code` varchar(40) DEFAULT NULL COMMENT '学号',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `sex` tinyint(2) DEFAULT '1' COMMENT '性别（1：男；2：女）',
  `nation` varchar(40) DEFAULT NULL COMMENT '民族',
  `college` varchar(40) DEFAULT NULL COMMENT '学院',
  `major` varchar(40) DEFAULT NULL COMMENT '专业',
  `nationality` varchar(40) DEFAULT NULL COMMENT '国籍',
  `entrance_date` date DEFAULT NULL COMMENT '入学日期',
  `student_type` tinyint(2) DEFAULT '2' COMMENT '学生类型（1：专科；2：本科；3：研究生；4：留学生；5：交换生；6：国防生）',
  `identity` varchar(18) DEFAULT NULL COMMENT '身份证',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `native_place` varchar(40) DEFAULT NULL COMMENT '籍贯',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态（1:待审批；2：已注册；3：已锁定）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `student`
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES ('1', 'student', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('17', 'eden', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2');
COMMIT;

-- ----------------------------
--  Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(40) DEFAULT NULL COMMENT '姓名',
  `password` varchar(40) DEFAULT NULL COMMENT '密码md5加密',
  `code` varchar(40) DEFAULT NULL COMMENT '教师编号',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `sex` tinyint(4) DEFAULT '1' COMMENT '性别（1：男；2：女）',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `identity` varchar(18) DEFAULT NULL COMMENT '身份证',
  `nation` varchar(40) DEFAULT NULL COMMENT '民族',
  `nationality` varchar(40) DEFAULT NULL COMMENT '国籍',
  `native_place` varchar(40) DEFAULT NULL COMMENT '籍贯',
  `major` varchar(40) DEFAULT NULL COMMENT '教师科目',
  `entrance_date` date DEFAULT NULL COMMENT '来校时间',
  `remark` varchar(40) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `teacher`
-- ----------------------------
BEGIN;
INSERT INTO `teacher` VALUES ('1', 'admin', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, null, null, null), ('2', 'teacher', '14e1b600b1fd579f47433b88e8d85291', 'DBT001', '1982-09-21', '1', '18500698774', '420111177712140456', '汉族', '中国', '湖北省安陆市', '计算机应用', '2015-06-09', null);
COMMIT;

/*更新root密码*/
use mysql;

update mysql.user set authentication_string=password('root123') where user='root';

flush privileges;
