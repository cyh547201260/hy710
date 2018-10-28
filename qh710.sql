/*
Navicat MySQL Data Transfer

Source Server         : hy710
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : qh710

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-29 00:05:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qh710_apply
-- ----------------------------
DROP TABLE IF EXISTS `qh710_apply`;
CREATE TABLE `qh710_apply` (
  `apply_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `matter_id` int(10) NOT NULL,
  `apply_user` int(100) NOT NULL,
  `apply_type` int(10) NOT NULL,
  `apply_content` varchar(200) DEFAULT NULL,
  `apply_state` int(10) DEFAULT NULL,
  `apply_time` varchar(100) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qh710_apply
-- ----------------------------

-- ----------------------------
-- Table structure for qh710_comment
-- ----------------------------
DROP TABLE IF EXISTS `qh710_comment`;
CREATE TABLE `qh710_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `matter_id` int(10) NOT NULL,
  `comment_user` int(100) NOT NULL,
  `comment_content` varchar(200) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qh710_comment
-- ----------------------------

-- ----------------------------
-- Table structure for qh710_dep
-- ----------------------------
DROP TABLE IF EXISTS `qh710_dep`;
CREATE TABLE `qh710_dep` (
  `dep_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(100) NOT NULL,
  `father_id` int(10) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qh710_dep
-- ----------------------------
INSERT INTO `qh710_dep` VALUES ('1', '国务院', null, null);
INSERT INTO `qh710_dep` VALUES ('2', ' 天安门', null, null);
INSERT INTO `qh710_dep` VALUES ('3', '阿斯蒂芬', null, null);
INSERT INTO `qh710_dep` VALUES ('4', '阿斯蒂芬', '0', null);
INSERT INTO `qh710_dep` VALUES ('5', '公证处', '0', null);
INSERT INTO `qh710_dep` VALUES ('6', '一级部门', '0', null);
INSERT INTO `qh710_dep` VALUES ('7', '二级部门', '6', null);
INSERT INTO `qh710_dep` VALUES ('8', '公正处二级部门', '5', null);
INSERT INTO `qh710_dep` VALUES ('9', '督察部', '0', null);
INSERT INTO `qh710_dep` VALUES ('10', '督察部二级部门', '9', null);

-- ----------------------------
-- Table structure for qh710_log
-- ----------------------------
DROP TABLE IF EXISTS `qh710_log`;
CREATE TABLE `qh710_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `matter_id` int(10) NOT NULL,
  `log_user` int(100) NOT NULL,
  `log_content` int(200) DEFAULT NULL,
  `log_type` int(10) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qh710_log
-- ----------------------------

-- ----------------------------
-- Table structure for qh710_matter
-- ----------------------------
DROP TABLE IF EXISTS `qh710_matter`;
CREATE TABLE `qh710_matter` (
  `matter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `matter_depid` int(10) NOT NULL,
  `matter_issecret` int(2) NOT NULL,
  `matter_title` varchar(200) DEFAULT NULL,
  `matter_from` varchar(200) NOT NULL,
  `matter_task` varchar(200) NOT NULL,
  `matter_deltime` varchar(100) NOT NULL,
  `matter_deldep` int(10) NOT NULL,
  `complete_timelimit` varchar(100) NOT NULL,
  `respon_depuer` int(10) NOT NULL,
  `respon_depid` int(10) NOT NULL,
  `follow_leader` int(10) NOT NULL,
  `deal_result` varchar(1000) DEFAULT NULL,
  `matter_file` varchar(100) DEFAULT NULL,
  `sign_time` varchar(100) DEFAULT NULL,
  `sign_user` int(100) DEFAULT NULL,
  `sup_user` int(100) NOT NULL,
  `eval_user` int(100) DEFAULT NULL,
  `complete_time` varchar(100) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `matter_state` int(10) NOT NULL,
  PRIMARY KEY (`matter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qh710_matter
-- ----------------------------

-- ----------------------------
-- Table structure for qh710_message
-- ----------------------------
DROP TABLE IF EXISTS `qh710_message`;
CREATE TABLE `qh710_message` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `matter_id` int(10) NOT NULL,
  `message_user` int(100) NOT NULL,
  `message_content` int(200) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qh710_message
-- ----------------------------

-- ----------------------------
-- Table structure for qh710_report
-- ----------------------------
DROP TABLE IF EXISTS `qh710_report`;
CREATE TABLE `qh710_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `matter_id` int(10) NOT NULL,
  `stage_name` varchar(100) DEFAULT NULL,
  `stage_require` varchar(200) DEFAULT NULL,
  `end_time` varchar(100) NOT NULL,
  `dep_id` int(10) DEFAULT NULL,
  `target_task` varchar(200) DEFAULT NULL,
  `deal_progress` varchar(200) DEFAULT NULL,
  `progress_state` varchar(200) DEFAULT NULL,
  `progress_situ` varchar(200) DEFAULT NULL,
  `report_problem` varchar(200) DEFAULT NULL,
  `report_nextstep` varchar(200) DEFAULT NULL,
  `report_file` varchar(500) DEFAULT NULL,
  `create_time` varchar(100) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qh710_report
-- ----------------------------

-- ----------------------------
-- Table structure for qh710_urge
-- ----------------------------
DROP TABLE IF EXISTS `qh710_urge`;
CREATE TABLE `qh710_urge` (
  `urge_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `matter_id` int(10) NOT NULL,
  `urge_userid` int(100) NOT NULL,
  `urge_time` varchar(100) NOT NULL,
  `urge_content` varchar(200) NOT NULL,
  `beurged_userid` varchar(200) NOT NULL,
  `urge_file` varchar(200) DEFAULT NULL,
  `urge_filename` varchar(100) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`urge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qh710_urge
-- ----------------------------

-- ----------------------------
-- Table structure for qh710_user
-- ----------------------------
DROP TABLE IF EXISTS `qh710_user`;
CREATE TABLE `qh710_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_account` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `dep_id` int(10) NOT NULL,
  `user_post` varchar(100) DEFAULT NULL,
  `user_sex` int(10) NOT NULL,
  `user_nation` varchar(100) DEFAULT NULL,
  `user_birth` varchar(100) DEFAULT NULL,
  `user_phone1` varchar(100) DEFAULT NULL,
  `user_phone2` varchar(100) DEFAULT NULL,
  `user_logintime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `login_times` int(100) DEFAULT '0',
  `user_address` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_auth` varchar(10) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qh710_user
-- ----------------------------
INSERT INTO `qh710_user` VALUES ('1', '超级管理员', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0', null, '1', null, null, null, null, '2018-10-28 17:53:32', '1', null, null, '1000', 'e592a4063bdfb7c5931210dca5aaca9b');
INSERT INTO `qh710_user` VALUES ('2', '张三', 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '10', '', '1', '', '', '', '', null, '0', '', '1', '1', null);
INSERT INTO `qh710_user` VALUES ('3', '李斯', 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '10', '', '1', '', '', '', '', null, '0', '', '1', '1', null);
INSERT INTO `qh710_user` VALUES ('4', '李斯', 'lisi2', 'e10adc3949ba59abbe56e057f20f883e', '10', '', '1', '', '', '', '', null, '0', '', '1', '1', null);
INSERT INTO `qh710_user` VALUES ('5', '豆角', 'doujiao', 'e10adc3949ba59abbe56e057f20f883e', '7', '秘书', '1', '汉', '1994.04', '15810733325', '', null, '0', '北京市东城区磁器口新城文化大厦', '1', '1', null);
