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

 Date: 04/24/2020 23:25:51 PM
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
  `score` decimal(5,0) DEFAULT NULL,
  `iscomplete11` tinyint(1) DEFAULT NULL,
  `score111` decimal(5,0) DEFAULT NULL COMMENT '分数',
  `answer111` varchar(500) DEFAULT NULL,
  `iscomplete12` tinyint(1) DEFAULT NULL,
  `score121` decimal(5,0) DEFAULT NULL COMMENT '分数',
  `answer121` varchar(500) DEFAULT NULL,
  `score122` decimal(5,0) DEFAULT NULL COMMENT '分数',
  `answer122` varchar(500) DEFAULT NULL,
  `iscomplete13` tinyint(1) DEFAULT NULL,
  `score131` decimal(5,0) DEFAULT NULL COMMENT '分数',
  `answer131` varchar(500) DEFAULT NULL,
  `score132` decimal(5,0) DEFAULT NULL COMMENT '分数',
  `answer132` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `score`
-- ----------------------------
BEGIN;
INSERT INTO `score` VALUES ('81', '17', null, null, null, null, '2020-04-24 23:16:50', null, null, '1', null, '5.788^583.8^5.88^75.85^8.8^5.6^456.5^453.7^45.5^5.7757^2.964^6.897', '1', '12', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3', '11.908^13.562^0', '1', '19', '0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0', '16', '0^0^0^0^1^0.71^0^0^0^-0.71^0^0^0^0^0^0^1^0^0^0^1');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `student`
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES ('1', 'student', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('17', 'eden', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('19', '1120170150', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('20', '1120170154', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('21', '1120170157', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('22', '1120170297', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('23', '1120170462', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('24', '1120170644', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('25', '1120170647', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('26', '1120170659', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('27', '1120170699', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('28', '1120171138', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('29', '1120171396', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('30', '1120171489', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('31', '1120172102', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('32', '1120172111', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('33', '1120172123', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('34', '1120172126', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('35', '1120172130', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('36', '1120172133', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('37', '1120172138', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('38', '1120172142', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('39', '1120172144', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('40', '1120172146', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('41', '1120172166', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('42', '1120172195', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('43', '1120172745', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('44', '1120172759', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('45', '1120172761', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('46', '1120172763', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('47', '1120172825', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('48', '1120172977', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('49', '1120172979', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('50', '1120172981', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('51', '1120172984', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('52', '1120172985', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('53', '1120172991', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('54', '1120172992', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('55', '1120172994', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('56', '1120173010', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('57', '1120173298', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('58', '1120173299', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('59', '1120173303', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('60', '1120173312', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('61', '1120173317', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('62', '1120173327', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('63', '1120173335', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('64', '1120173447', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('65', '1120173469', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('66', '1120173597', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('67', '1820171040', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('68', '1120162059', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2');
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

