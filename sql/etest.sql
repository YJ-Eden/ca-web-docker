/*
 Navicat MySQL Data Transfer

 Source Server         : eden-demo1(root@root123)
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost
 Source Database       : etest1

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : utf-8

 Date: 05/01/2020 22:16:11 PM
*/

create database `etest` default character set utf8 collate utf8_general_ci;
 
use etest;

-- ----------------------------
--  Table structure for `basic_data`
-- ----------------------------
DROP TABLE IF EXISTS `basic_data`;
CREATE TABLE `basic_data` (
  `type` smallint(10) NOT NULL COMMENT 'Ã¥Å¸ÂºÃ§Â¡â‚¬Ã¦â€¢Â°Ã¦ÂÂ®Ã§Â±Â»Ã¥Å¾â€¹',
  `name` varchar(50) DEFAULT NULL COMMENT 'Ã¥Å¸ÂºÃ§Â¡â‚¬Ã§Â±Â»Ã¥Å¾â€¹Ã¥ÂÂÃ§Â§Â°',
  `basic_code` varchar(50) NOT NULL COMMENT 'Ã¥Å¸ÂºÃ§Â¡â‚¬Ã¦â€¢Â°Ã¦ÂÂ®Ã§Â¼â€“Ã¥ÂÂ·',
  `basic_name` varchar(50) DEFAULT NULL COMMENT 'Ã¥Å¸ÂºÃ§Â¡â‚¬Ã§Â¼â€“Ã¥ÂÂ·Ã¥ÂÂÃ§Â§Â°',
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
  `content` varchar(40) DEFAULT NULL COMMENT 'Ã¦â€”Â¥Ã¥Â¿â€”Ã¥â€ â€¦Ã¥Â®Â¹',
  `type` tinyint(2) DEFAULT NULL COMMENT 'Ã¦â€”Â¥Ã¥Â¿â€”Ã§Â±Â»Ã¥Å¾â€¹Ã¯Â¼Ë†1Ã¯Â¼Å¡Ã¥Â­Â¦Ã§â€Å¸Ã¯Â¼â€º2Ã¯Â¼Å¡Ã¦â€¢â„¢Ã¥Â¸Ë†Ã¯Â¼â€º3Ã¯Â¼Å¡Ã¨Â¶â€¦Ã§ÂºÂ§Ã§Â®Â¡Ã§Ââ€ Ã¥â€˜ËœÃ¯Â¼â€°',
  `person_id` bigint(40) DEFAULT NULL COMMENT 'Ã¥Â¯Â¹Ã¥Âºâ€Ã§Å¡â€žÃ¤ÂºÂºÃ¥â€˜ËœID',
  `person_name` varchar(40) DEFAULT NULL COMMENT 'Ã¥Â¯Â¹Ã¥Âºâ€Ã§Å¡â€žÃ¤ÂºÂºÃ¥â€˜ËœÃ¥Â§â€œÃ¥ÂÂ',
  `log_time` datetime DEFAULT NULL COMMENT 'Ã¦â€”Â¥Ã¥Â¿â€”Ã¦â€”Â¶Ã©â€”Â´',
  `remark` varchar(40) DEFAULT NULL COMMENT 'Ã¥Â¤â€¡Ã¦Â³Â¨',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `student_id` bigint(40) DEFAULT NULL COMMENT 'Ã¥Â­Â¦Ã§â€Å¸id',
  `project` tinyint(4) DEFAULT NULL COMMENT 'Ã¦â€¢â„¢Ã¥Â­Â¦Ã§Â§â€˜Ã§â€ºÂ®Ã¯Â¼Ë†Ã¥Â¯Â¹Ã¥Âºâ€Ã¥Å¸ÂºÃ§Â¡â‚¬Ã¦â€¢Â°Ã¦ÂÂ®Ã¨Â¡Â¨type=1Ã¯Â¼â€°',
  `ranking` smallint(5) DEFAULT NULL COMMENT 'Ã¦Å½â€™Ã¥ÂÂ',
  `unit` varchar(40) DEFAULT NULL COMMENT 'Ã¥Ââ€¢Ã¤Â½Â',
  `teacher_id` bigint(40) DEFAULT NULL COMMENT 'Ã¦â€¢â„¢Ã¥Â¸Ë†id',
  `update_time` datetime DEFAULT NULL COMMENT 'Ã¦â€ºÂ´Ã¦â€“Â°Ã¦â€”Â¶Ã©â€”Â´',
  `remark` varchar(40) DEFAULT NULL COMMENT 'Ã¥Â¤â€¡Ã¦Â³Â¨',
  `score` decimal(5,0) DEFAULT NULL,
  `update_time11` datetime DEFAULT NULL COMMENT 'Ã¦â€ºÂ´Ã¦â€“Â°Ã¦â€”Â¶Ã©â€”Â´',
  `iscomplete11` tinyint(1) DEFAULT NULL,
  `score111` varchar(40) DEFAULT NULL COMMENT 'Ã¥Ë†â€ Ã¦â€¢Â°',
  `answer111` varchar(500) DEFAULT NULL,
  `update_time12` datetime DEFAULT NULL COMMENT 'Ã¦â€ºÂ´Ã¦â€“Â°Ã¦â€”Â¶Ã©â€”Â´',
  `iscomplete12` tinyint(1) DEFAULT NULL,
  `score121` varchar(40) DEFAULT NULL COMMENT 'Ã¥Ë†â€ Ã¦â€¢Â°',
  `answer121` varchar(500) DEFAULT NULL,
  `score122` varchar(40) DEFAULT NULL COMMENT 'Ã¥Ë†â€ Ã¦â€¢Â°',
  `answer122` varchar(500) DEFAULT NULL,
  `update_time13` datetime DEFAULT NULL COMMENT 'Ã¦â€ºÂ´Ã¦â€“Â°Ã¦â€”Â¶Ã©â€”Â´',
  `iscomplete13` tinyint(1) DEFAULT NULL,
  `score131` varchar(40) DEFAULT NULL COMMENT 'Ã¥Ë†â€ Ã¦â€¢Â°',
  `answer131` varchar(500) DEFAULT NULL,
  `score132` varchar(40) DEFAULT NULL COMMENT 'Ã¥Ë†â€ Ã¦â€¢Â°',
  `answer132` varchar(500) DEFAULT NULL,
  `update_time21` datetime DEFAULT NULL COMMENT 'Ã¦â€ºÂ´Ã¦â€“Â°Ã¦â€”Â¶Ã©â€”Â´',
  `iscomplete21` tinyint(1) DEFAULT NULL,
  `score211` varchar(40) DEFAULT NULL COMMENT 'Ã¥Ë†â€ Ã¦â€¢Â°',
  `answer211` varchar(500) DEFAULT NULL,
  `score212` varchar(40) DEFAULT NULL COMMENT 'Ã¥Ë†â€ Ã¦â€¢Â°',
  `answer212` varchar(500) DEFAULT NULL,
  `score213` varchar(40) DEFAULT NULL COMMENT 'Ã¥Ë†â€ Ã¦â€¢Â°',
  `answer213` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `score`
-- ----------------------------
BEGIN;
INSERT INTO `score` VALUES ('1', '17', null, null, null, null, '2020-05-01 13:03:08', null, null, '2020-04-27 15:23:18', '1', '0.0^2.0', '0^0^0^0^0^0^0^0^0^0^0^0', '2020-04-30 10:37:45', '1', '12.0^3.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^3.0', '11.098^13.562^0', '2020-05-01 13:03:08', '1', '19.0^3.0', '0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0', '21.0^2.0', '0^0^0^0^0^0.71^0.71^0^0.71^-0.71^0.71^0^4.95^0^0^1^1^0^0^0^1', null, null, null, null, null, null, null, null), ('2', '21', null, null, null, null, '2020-05-01 02:51:07', null, null, '2020-05-01 01:54:41', '1', '0.0^13.0', '1^1^1^1^1^1^555^55^5^0^0^0', '2020-05-01 02:24:02', '1', '12.0^13.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^16.0', '11.098^13.562^0', '2020-05-01 02:51:07', '1', '36.0^3.0', '1^0^0^3^0^1^0^2^0^0^1^1^0.71^-0.71^0^6^0.71^0.71^0^0^0^0^1^0^0^-1^0^8^1^0^0^3.54^0^0^1^0', '16.0^10.0', '0^-3^2^1^1^0.71^0.71^0^-3^-0.71^0.71^0^2^0^0^1^1^0^0^0^1', null, null, null, null, null, null, null, null), ('3', '32', null, null, null, null, '2020-04-30 10:55:45', null, null, '2020-04-30 08:37:17', '1', '0.0^5.0', '0^0^0^0^0^0^0^0^0^0^0^0', '2020-04-30 08:54:14', '1', '11.0^1.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^0', '3.0^1.0', '11.098^13.562^0', '2020-04-30 10:55:45', '1', '31.0^6.0', '1^0^0^3^0^1^0^2^0^0^1^1^1.41^-1.41^0^6^1.41^1.41^0^0^0^0^1^0^0^-1^0^0^1^0^0^3.54^0^0^1^0', '13.0^1.0', '8.75^3.53^-0.73^1^1^0.7^0.7^0^-1.22^-0.7^0.7^0^6.22^0^0^1^1^0^0^0^1', null, null, null, null, null, null, null, null), ('4', '40', null, null, null, null, '2020-04-30 08:45:53', null, null, '2020-04-30 08:45:53', '1', '0.0^45.0', '2^2^2^1^0^0^0^1^-0.5^0^0.5^1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('5', '29', null, null, null, null, '2020-04-30 14:03:09', null, null, '2020-04-30 08:50:56', '1', '0.0^14.0', '0^0^0^0^0^0^0^0^0^0^0^0', '2020-04-30 10:25:12', '1', '12.0^15.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^15.0', '11.098^13.562^0', '2020-04-30 14:03:09', '1', '36.0^15.0', '1^0^0^3^0^1^0^2^0^0^1^1^0.71^-0.71^0^6^0.71^0.71^0^0^0^0^1^0^0^-1^0^8^1^0^0^3.54^0^0^1^0', '21.0^20.0', '8.75^-0.71^3.54^1^1^0.71^0.71^0^-1.24^-0.71^0.71^0^8.24^0^0^1^1^0^0^0^1', null, null, null, null, null, null, null, null), ('6', '38', null, null, null, null, '2020-04-30 12:38:29', null, null, '2020-04-30 09:15:50', '1', '0.0^33.0', '5^5^5^0^0^-1^0^1^0^1^0^0', '2020-04-30 10:41:53', '1', '12.0^34.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^34.0', '11.098^13.562^0', '2020-04-30 12:38:29', '1', '36.0^34.0', '1^0^0^3^0^1^0^2^0^0^1^1^0.71^-0.71^0^6^0.71^0.71^0^0^0^0^1^0^0^-1^0^8^1^0^0^3.54^0^0^1^0', '21.0^34.0', '8.75^-0.71^3.54^1^1^0.71^0.71^0^-1.24^-0.71^0.71^0^8.24^0^0^1^1^0^0^0^1', null, null, null, null, null, null, null, null), ('7', '50', null, null, null, null, '2020-04-30 14:44:09', null, null, '2020-04-30 09:41:23', '1', '0.0^1.0', '0^0^0^0^0^0^0^0^0^0^0^0', '2020-04-30 09:50:01', '1', '12.0^2.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^2.0', '11.098^13.562^0', '2020-04-30 14:44:09', '1', '36.0^6.0', '1^0^0^3^0^1^0^2^0^0^1^1^0.71^-0.71^0^6^0.71^0.71^0^0^0^0^1^0^0^-1^0^8^1^0^0^3.54^0^0^1^0', '21.0^3.0', '8.75^-0.71^3.54^1^1^0.71^0.71^0^-1.24^-0.71^0.71^0^8.24^0^0^1^1^0^0^0^1', null, null, null, null, null, null, null, null), ('8', '27', null, null, null, null, '2020-04-30 10:39:15', null, null, '2020-04-30 10:32:05', '1', '0.0^2.0', '0^0^0^0^0^0^0^0^0^0^0^0', '2020-04-30 10:39:15', '1', '5.0^3.0', '12^0^6^0^0^0^0^0^0^0^0^0', '0.0^3.0', '12^0^6', '2020-04-30 10:36:49', '1', '18.0^1.0', '0^0^0^12^0^0^0^0^0^0^0^6^0^0^0^18^0^0^0^0^0^0^0^0^0^0^0^24^0^0^0^0^0^0^0^12', '12.0^1.0', '0^0^0^0^1^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0', null, null, null, null, null, null, null, null), ('9', '56', null, null, null, null, '2020-05-01 11:46:23', null, null, '2020-04-30 10:36:17', '1', '0.0^5.0', '1^1^1^0.866^-0.5^0^0.5^0.866^0^0^0^1', '2020-05-01 10:24:46', '1', '12.0^4.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^1.0', '11.098^13.562^0', '2020-05-01 11:46:23', '1', '36.0^6.0', '1^0^0^3^0^1^0^2^0^0^1^1^0.71^-0.71^0^6^0.71^0.71^0^0^0^0^1^0^0^-1^0^8^1^0^0^3.54^0^0^1^0', '20.0^6.0', '875^-0.71^3.54^1^0^0.71^0.71^0^0.71^-0.71^0.71^0^4.95^0^0^1^1^0^0^0^1', null, null, null, null, null, null, null, null), ('10', '30', null, null, null, null, '2020-04-30 14:37:20', null, null, '2020-04-30 12:13:31', '1', '0.0^7.0', '0^0^0^0^0^0^0^0^0^0^0^0', '2020-04-30 10:51:01', '1', '12.0^1.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^1.0', '11.098^13.562^0', '2020-04-30 14:37:20', '1', '36.0^12.0', '1^0^0^3^0^1^0^2^0^0^1^1^0.71^-0.71^0^6^0.71^0.71^0^0^0^0^1^0^0^-1^0^8^1^0^0^3.54^0^0^1^0', '20.0^8.0', '8.75^-0.71^3.55^1^1^0.71^0.71^0^-1.24^-0.71^0.71^0^8.24^0^0^1^1^0^0^0^1', null, null, null, null, null, null, null, null), ('11', '24', null, null, null, null, '2020-04-30 13:23:53', null, null, '2020-04-30 11:01:54', '1', '0.0^6.0', '5^3.5^2.2^0.1^0.3^0.6^0.5^0.1^0.8^0.3^0.5^0.1', '2020-04-30 11:10:47', '1', '12.0^1.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^1.0', '11.098^13.562^0', '2020-04-30 13:23:53', '1', '30.0^9.0', '1^0^0^3^0^1^0^2^0^0^1^1^0.71^-0.71^0^6^0.71^0.71^0^0^0^0^1^0^1^0^0^8^0^0^-1^3.54^0^1^0^0', '16.0^10.0', '14.84^-0.71^3.55^1^0^0.71^0.71^0^0.71^-0.71^0.71^0^4.97^0^0^1^1^0^0^0^1', null, null, null, null, null, null, null, null), ('12', '51', null, null, null, null, '2020-04-30 14:35:57', null, null, '2020-04-30 14:10:04', '1', '0.0^29.0', '0^0^0^0^-1^0^1^0^0^0^0^1', '2020-04-30 11:58:14', '1', '12.0^1.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^24.0', '11.098^13.562^0', '2020-04-30 14:35:57', '1', '36.0^6.0', '1^0^0^3^0^1^0^2^0^0^1^1^0.71^-0.71^0^6^0.71^0.71^0^0^0^0^1^0^0^-1^0^8^1^0^0^3.54^0^0^1^0', '21.0^6.0', '8.75^-0.71^3.54^1^0^0.71^0.71^0^0.71^-0.71^0.71^0^4.95^0^0^1^1^0^0^0^1', null, null, null, null, null, null, null, null), ('13', '19', null, null, null, null, '2020-04-30 12:24:47', null, null, '2020-04-30 11:38:29', '1', '0.0^3.0', '1.787^-1.291^2.145^0.934^0.123^-0.337^0^0.94^0.342^0.258^-0.319^0.877', '2020-04-30 12:07:23', '1', '12.0^1.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^1.0', '11.098^13.562^0', '2020-04-30 12:24:47', '1', '28.0^4.0', '0^0^0^3^0^0^0^2^0^0^0^1^0.707^-0.71^0^6^0.707^0.707^0^0^0^0^1^0^0^-1^0^-8^1^0^0^-1.77^0^0^1^0', '9.0^1.0', '8.19^3^-2^-1^1^0.707^-0.71^0^3^0.707^0.707^0^-2^0^0^1^-1^0^0^0^0', null, null, null, null, null, null, null, null), ('14', '48', null, null, null, null, '2020-04-30 12:54:15', null, null, '2020-04-30 12:54:15', '1', '0.0^1.0', '0^0^0^0^0^0^0^0^0^0^0^0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('15', '39', null, null, null, null, '2020-04-30 14:53:37', null, null, '2020-04-30 14:53:37', '1', '0.0^1.0', '0^0^0^0^0^0^0^0^0^0^0^0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('16', '36', null, null, null, null, '2020-04-30 17:38:08', null, null, '2020-04-30 15:04:00', '1', '0.0^2.0', '2.616^5.627^0^0.752^0^-0.659^-0.236^0.934^-0.27^0.615^0.358^0.702', '2020-04-30 15:41:08', '1', '12.0^1.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^1.0', '11.098^13.562^0', '2020-04-30 17:38:08', '1', '36.0^2.0', '1^0^0^3^0^1^0^2^0^0^1^1^0.71^-0.71^0^6^0.71^0.71^0^0^0^0^1^0^0^-1^0^8^1^0^0^3.54^0^0^1^0', '16.0^2.0', '8.75^-3.54^-0.71^1^1^0.71^0.71^0^0^-0.71^0.71^0^0^0^0^1^0^0^0^0^1', null, null, null, null, null, null, null, null), ('17', '44', null, null, null, null, '2020-05-01 02:04:14', null, null, '2020-05-01 02:04:14', '1', '0.0^13.0', '3.561^1.581^-0.398^0.98^0^-0.198^0.064^0.945^0.32^0.187^-0.326^0.927', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('18', '22', null, null, null, null, '2020-05-01 10:35:33', null, null, '2020-05-01 07:23:17', '1', '0.0^4.0', '0^0^0^0^0^0^0^0^0^0^0^0', '2020-05-01 09:20:26', '1', '12.0^2.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^1.0', '11.098^13.562^0', '2020-05-01 10:35:33', '1', '33.0^3.0', '0^0^0^3^0^0^0^2^0^0^0^1^0.71^-0.71^0^6^0.71^0.71^0^0^0^0^1^0^0^-1^0^8^1^0^0^3.54^0^0^1^0', '15.0^1.0', '8.75^3^-2^-1^1^0.71^0.71^0^3^-0.71^0.71^0^-4^0^0^1^-1^0^0^0^1', null, null, null, null, null, null, null, null), ('19', '65', null, null, null, null, '2020-05-01 13:58:36', null, null, '2020-05-01 10:41:54', '1', '0.0^17.0', '1^0^0^1^0^0^0^1^0^0^0^1', '2020-05-01 12:06:23', '1', '12.0^1.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '3.0^2.0', '11.098^13.562^0', '2020-05-01 13:58:36', '1', '36.0^8.0', '1^0^0^3^0^1^0^2^0^0^1^1^0.71^-0.71^0^6^0.71^0.71^0^0^0^0^1^0^0^-1^0^8^1^0^0^3.54^0^0^1^0', '12.0^5.0', '0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0^0', null, null, null, null, null, null, null, null), ('20', '59', null, null, null, null, '2020-05-01 13:41:52', null, null, '2020-05-01 12:35:16', '1', '0.0^15.0', '-7.103^2.211^0^1^0^0^0^1^0^0^0^1', '2020-05-01 13:21:49', '1', '12.0^5.0', '12^6^0^0.866^-0.5^0^0.5^0.866^0^0^0^1', '1.0^3.0', '-9^-1^0', '2020-05-01 13:41:52', null, '25.0^1.0', '0^0^0^3^0^0^0^2^0^0^1^1^1.41^-1.41^0^6^1.41^1.41^0^0^0^0^1^0^1^0^0^5^0^1^0^3.54^0^0^1^0', null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(40) DEFAULT NULL COMMENT 'Ã¥Â§â€œÃ¥ÂÂ',
  `password` varchar(40) DEFAULT NULL COMMENT 'Ã¥Â¯â€ Ã§Â Âmd5Ã¥Å Â Ã¥Â¯â€ ',
  `code` varchar(40) DEFAULT NULL COMMENT 'Ã¥Â­Â¦Ã¥ÂÂ·',
  `birthday` date DEFAULT NULL COMMENT 'Ã¥â€¡ÂºÃ§â€Å¸Ã¦â€”Â¥Ã¦Å“Å¸',
  `sex` tinyint(2) DEFAULT '1' COMMENT 'Ã¦â‚¬Â§Ã¥Ë†Â«Ã¯Â¼Ë†1Ã¯Â¼Å¡Ã§â€Â·Ã¯Â¼â€º2Ã¯Â¼Å¡Ã¥Â¥Â³Ã¯Â¼â€°',
  `nation` varchar(40) DEFAULT NULL COMMENT 'Ã¦Â°â€˜Ã¦â€”Â',
  `college` varchar(40) DEFAULT NULL COMMENT 'Ã¥Â­Â¦Ã©â„¢Â¢',
  `major` varchar(40) DEFAULT NULL COMMENT 'Ã¤Â¸â€œÃ¤Â¸Å¡',
  `nationality` varchar(40) DEFAULT NULL COMMENT 'Ã¥â€ºÂ½Ã§Â±Â',
  `entrance_date` date DEFAULT NULL COMMENT 'Ã¥â€¦Â¥Ã¥Â­Â¦Ã¦â€”Â¥Ã¦Å“Å¸',
  `student_type` tinyint(2) DEFAULT '2' COMMENT 'Ã¥Â­Â¦Ã§â€Å¸Ã§Â±Â»Ã¥Å¾â€¹Ã¯Â¼Ë†1Ã¯Â¼Å¡Ã¤Â¸â€œÃ§Â§â€˜Ã¯Â¼â€º2Ã¯Â¼Å¡Ã¦Å“Â¬Ã§Â§â€˜Ã¯Â¼â€º3Ã¯Â¼Å¡Ã§Â â€Ã§Â©Â¶Ã§â€Å¸Ã¯Â¼â€º4Ã¯Â¼Å¡Ã§â€¢â„¢Ã¥Â­Â¦Ã§â€Å¸Ã¯Â¼â€º5Ã¯Â¼Å¡Ã¤ÂºÂ¤Ã¦ÂÂ¢Ã§â€Å¸Ã¯Â¼â€º6Ã¯Â¼Å¡Ã¥â€ºÂ½Ã©ËœÂ²Ã§â€Å¸Ã¯Â¼â€°',
  `identity` varchar(18) DEFAULT NULL COMMENT 'Ã¨ÂºÂ«Ã¤Â»Â½Ã¨Â¯Â',
  `phone` varchar(20) DEFAULT NULL COMMENT 'Ã§â€ÂµÃ¨Â¯Â',
  `native_place` varchar(40) DEFAULT NULL COMMENT 'Ã§Â±ÂÃ¨Â´Â¯',
  `status` tinyint(2) DEFAULT '1' COMMENT 'Ã§Å Â¶Ã¦â‚¬ÂÃ¯Â¼Ë†1:Ã¥Â¾â€¦Ã¥Â®Â¡Ã¦â€°Â¹Ã¯Â¼â€º2Ã¯Â¼Å¡Ã¥Â·Â²Ã¦Â³Â¨Ã¥â€ Å’Ã¯Â¼â€º3Ã¯Â¼Å¡Ã¥Â·Â²Ã©â€ÂÃ¥Â®Å¡Ã¯Â¼â€°',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `student`
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES ('1', 'student', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('17', 'eden', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('19', '1120170150', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('20', '1120170154', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('21', '1120170157', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('22', '1120170297', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('23', '1120170462', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('24', '1120170644', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('25', '1120170647', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('26', '1120170659', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('27', '1120170699', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('28', '1120171138', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('29', '1120171396', 'a8176a4530732e0db75b6dab7c70d5d5', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('30', '1120171489', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('31', '1120172102', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('32', '1120172111', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('33', '1120172123', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('34', '1120172126', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('35', '1120172130', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('36', '1120172133', '4cf8d4fc36a39be12e39eb6628599125', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('37', '1120172138', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('38', '1120172142', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('39', '1120172144', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('40', '1120172146', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('41', '1120172166', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('42', '1120172195', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('43', '1120172745', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('44', '1120172759', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('45', '1120172761', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('46', '1120172763', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('47', '1120172825', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('48', '1120172977', '739fa76b524f40e25a015c022e7681d4', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('49', '1120172979', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('50', '1120172981', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('51', '1120172984', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('52', '1120172985', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('53', '1120172991', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('54', '1120172992', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('55', '1120172994', '453ed74a2d03c5855d044be1b00385cf', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('56', '1120173010', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('57', '1120173298', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('58', '1120173299', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('59', '1120173303', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('60', '1120173312', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('61', '1120173317', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('62', '1120173327', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('63', '1120173335', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('64', '1120173447', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('65', '1120173469', '4723f7bc79bf76a256e0f673839c2bd1', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('66', '1120173597', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('67', '1820171040', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2'), ('68', '1120162059', '14e1b600b1fd579f47433b88e8d85291', null, null, '1', null, null, null, null, null, '2', null, null, null, '2');
COMMIT;

-- ----------------------------
--  Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(40) DEFAULT NULL COMMENT 'Ã¥Â§â€œÃ¥ÂÂ',
  `password` varchar(40) DEFAULT NULL COMMENT 'Ã¥Â¯â€ Ã§Â Âmd5Ã¥Å Â Ã¥Â¯â€ ',
  `code` varchar(40) DEFAULT NULL COMMENT 'Ã¦â€¢â„¢Ã¥Â¸Ë†Ã§Â¼â€“Ã¥ÂÂ·',
  `birthday` date DEFAULT NULL COMMENT 'Ã¥â€¡ÂºÃ§â€Å¸Ã¦â€”Â¥Ã¦Å“Å¸',
  `sex` tinyint(4) DEFAULT '1' COMMENT 'Ã¦â‚¬Â§Ã¥Ë†Â«Ã¯Â¼Ë†1Ã¯Â¼Å¡Ã§â€Â·Ã¯Â¼â€º2Ã¯Â¼Å¡Ã¥Â¥Â³Ã¯Â¼â€°',
  `phone` varchar(20) DEFAULT NULL COMMENT 'Ã§â€ÂµÃ¨Â¯Â',
  `identity` varchar(18) DEFAULT NULL COMMENT 'Ã¨ÂºÂ«Ã¤Â»Â½Ã¨Â¯Â',
  `nation` varchar(40) DEFAULT NULL COMMENT 'Ã¦Â°â€˜Ã¦â€”Â',
  `nationality` varchar(40) DEFAULT NULL COMMENT 'Ã¥â€ºÂ½Ã§Â±Â',
  `native_place` varchar(40) DEFAULT NULL COMMENT 'Ã§Â±ÂÃ¨Â´Â¯',
  `major` varchar(40) DEFAULT NULL COMMENT 'Ã¦â€¢â„¢Ã¥Â¸Ë†Ã§Â§â€˜Ã§â€ºÂ®',
  `entrance_date` date DEFAULT NULL COMMENT 'Ã¦ÂÂ¥Ã¦Â Â¡Ã¦â€”Â¶Ã©â€”Â´',
  `remark` varchar(40) DEFAULT NULL COMMENT 'Ã¥Â¤â€¡Ã¦Â³Â¨',
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
