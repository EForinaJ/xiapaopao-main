/*
Navicat MySQL Data Transfer

Source Server         : eforinaj
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : xiapaopao

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2024-05-10 16:26:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_announcement
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement`;
CREATE TABLE `sys_announcement` (
  `announcement_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `status` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_announcement
-- ----------------------------
INSERT INTO `sys_announcement` VALUES ('2', '关于我们', null, 'fghfdghfg', '2', '2022-06-19 19:41:05');
INSERT INTO `sys_announcement` VALUES ('3', '测试公告', 'https://www.baidu.com/', '撒旦发射点发射点发射点啊手动阀洒大啊手动阀', '0', '2024-03-30 20:57:26');

-- ----------------------------
-- Table structure for sys_article
-- ----------------------------
DROP TABLE IF EXISTS `sys_article`;
CREATE TABLE `sys_article` (
  `article_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `forum_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_top` tinyint(4) DEFAULT NULL,
  `content` text,
  `favorites` bigint(20) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `hots` bigint(20) DEFAULT NULL,
  `comments` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_article
-- ----------------------------

-- ----------------------------
-- Table structure for sys_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority`;
CREATE TABLE `sys_authority` (
  `authority_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `component` varchar(100) DEFAULT NULL COMMENT '组件地址',
  `order_by` int(10) DEFAULT NULL,
  `redirect` varchar(200) DEFAULT NULL COMMENT '跳转',
  `path` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `target` tinyint(4) DEFAULT '1' COMMENT '打开方式（1页签 2新窗口）',
  `type` tinyint(4) DEFAULT '1' COMMENT '菜单类型（1目录 2菜单 3按钮）',
  `hidden` tinyint(4) DEFAULT '2' COMMENT '菜单状态（2显示 1隐藏）',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_authority
-- ----------------------------
INSERT INTO `sys_authority` VALUES ('1', '权限管理', '0', 'PageView', '94', '/authority/list', '/authority', '/authority', '1', '1', '2', 'bars', '2021-09-18 23:49:59', '2024-03-28 23:16:56', '');
INSERT INTO `sys_authority` VALUES ('2', '权限列表', '1', 'AuthorityList', null, null, '/authority/list', '/authority/list', '1', '2', '2', '', '2021-09-18 23:51:48', '2021-09-18 23:51:50', '');
INSERT INTO `sys_authority` VALUES ('3', '权限创建', '1', 'AuthorityCreate', null, null, '/authority/create', '/authority/create', '1', '2', '1', '#', '2021-09-19 17:34:52', '2021-09-19 17:34:54', '');
INSERT INTO `sys_authority` VALUES ('4', '权限编辑', '1', 'AuthorityEdit', '0', '', '/authority/edit', '/authority/edit', '1', '2', '1', '', null, '2021-09-19 21:41:28', '');
INSERT INTO `sys_authority` VALUES ('5', '权限删除', '1', '', '0', '', '', '/authority/remove', '0', '3', '0', '', '2021-09-19 21:43:17', '2021-09-19 21:43:17', '');
INSERT INTO `sys_authority` VALUES ('8', '管理列表', '1', 'MangerList', '2', '', '/manger/list', '/manger/list', '1', '2', '2', '', '2021-09-19 22:48:29', '2021-09-19 22:48:29', '');
INSERT INTO `sys_authority` VALUES ('9', '管理创建', '1', 'MangerCreate', '0', '', '/manger/create', '/manger/create', '1', '2', '1', '', '2021-09-19 23:05:14', '2021-09-20 19:41:27', '');
INSERT INTO `sys_authority` VALUES ('10', '角色列表', '1', 'RoleList', '3', '', '/role/list', '/role/list', '1', '2', '2', '', '2021-09-19 23:10:25', '2021-09-19 23:10:25', '');
INSERT INTO `sys_authority` VALUES ('11', '角色创建', '1', 'RoleCreate', '0', '', '/role/create', '/role/create', '1', '2', '1', '', null, '2021-09-20 00:27:31', '');
INSERT INTO `sys_authority` VALUES ('12', '角色编辑', '1', 'RoleEdit', '0', '', '/role/edit', '/role/edit', '1', '2', '1', '', null, '2021-09-20 01:16:42', '');
INSERT INTO `sys_authority` VALUES ('14', '管理编辑', '1', 'MangerEdit', '0', '', '/manger/edit', '/manger/edit', '1', '2', '1', '', '2021-09-20 13:09:29', '2021-09-20 19:41:17', '');
INSERT INTO `sys_authority` VALUES ('15', '管理删除', '1', '', '0', '', '', '/manger/remove', '0', '3', '0', '', '2021-09-20 13:34:09', '2021-09-20 19:41:05', '');
INSERT INTO `sys_authority` VALUES ('16', '系统管理', '0', 'PageView', '92', '/system/setting', '/system', '/system', '1', '1', '2', 'bars', '2021-09-20 13:46:52', '2024-03-28 23:34:37', '');
INSERT INTO `sys_authority` VALUES ('17', '系统设置', '16', 'SystemSetting', '10', '', '/system/setting', '/system/setting', '1', '2', '2', '', '2021-09-20 13:51:45', '2021-09-20 13:51:45', '');
INSERT INTO `sys_authority` VALUES ('18', '系统保存', '16', '', '0', '', '', '/system/save', '0', '3', '0', '', '2021-09-20 14:02:06', '2021-09-20 14:02:06', '');
INSERT INTO `sys_authority` VALUES ('19', '支付配置', '16', 'PayOption', '2', '', '/pay/option', '/pay/option', '1', '2', '2', '', '2021-09-20 16:19:18', '2021-09-20 16:19:18', '');
INSERT INTO `sys_authority` VALUES ('20', '存储配置', '16', 'OssOption', '0', '', '/oss/option', '/oss/option', '1', '2', '2', '', '2021-09-20 16:30:04', '2021-09-20 16:30:11', '');
INSERT INTO `sys_authority` VALUES ('21', '邮箱配置', '16', 'EmailOption', '0', '', '/email/option', '/email/option', '1', '2', '2', '', '2021-09-20 16:30:40', '2021-09-20 16:30:45', '');
INSERT INTO `sys_authority` VALUES ('28', '媒体列表', '45', 'MediaList', '7', '', '/media/list', '/media/list', '1', '2', '2', '', '2021-09-20 21:18:33', '2024-03-29 00:54:18', '');
INSERT INTO `sys_authority` VALUES ('32', '媒体删除', '28', '', '0', '', '', '/media/remove', '0', '3', '0', '', '2021-09-22 16:35:17', '2021-09-22 16:35:17', '');
INSERT INTO `sys_authority` VALUES ('34', '媒体上传', '28', '', '0', '', '', '/media/upload', '0', '3', '0', '', '2021-09-22 22:00:29', '2022-06-23 00:25:40', '');
INSERT INTO `sys_authority` VALUES ('42', '分类列表', '45', 'CategoryList', '10', '', '/category/list', '/category/list', '1', '2', '2', '', '2021-09-23 00:32:25', '2024-03-29 00:53:59', '');
INSERT INTO `sys_authority` VALUES ('43', '分类删除', '42', '', '0', '', '', '/category/remove', '0', '3', '0', '', '2021-09-23 00:48:35', '2021-09-23 00:48:35', '');
INSERT INTO `sys_authority` VALUES ('44', '分类创建', '45', 'CategoryCreate', '0', '', '/category/create', '/category/create', '1', '2', '1', '', '2021-09-23 00:49:03', '2021-10-14 14:05:50', '');
INSERT INTO `sys_authority` VALUES ('45', '运营中心', '0', 'PageView', '96', '', '/operation', '/operation', '1', '1', '2', 'bars', '2021-09-23 01:02:01', '2024-03-28 23:16:41', '');
INSERT INTO `sys_authority` VALUES ('46', '标签列表', '45', 'TagList', '9', '', '/tag/list', '/tag/list', '1', '2', '2', '', '2021-09-23 01:17:22', '2024-03-29 00:53:47', '');
INSERT INTO `sys_authority` VALUES ('47', '标签推荐', '46', '', '0', '', '', '/tag/top', '0', '3', '0', '', '2021-09-23 01:18:59', '2021-09-23 01:18:59', '');
INSERT INTO `sys_authority` VALUES ('48', '标签删除', '46', '', '0', '', '', '/tag/remove', '0', '3', '0', '', '2021-09-23 01:19:22', '2021-09-23 01:19:22', '');
INSERT INTO `sys_authority` VALUES ('56', '查询模块分类', '42', '', '0', '', '', '/category/module', '0', '3', '0', '', '2021-09-23 12:29:16', '2021-09-23 12:29:16', '');
INSERT INTO `sys_authority` VALUES ('57', '热门标签', '46', '', '0', '', '', '/tag/hots', '0', '3', '0', '', '2021-09-23 13:09:54', '2021-09-23 13:09:54', '');
INSERT INTO `sys_authority` VALUES ('66', '资源删除', '63', '', '0', '', '', '/resource/remove', '0', '3', '0', '', '2021-09-23 14:35:29', '2021-09-23 14:37:17', '');
INSERT INTO `sys_authority` VALUES ('67', '资源还原', '63', '', '0', '', '', '/resource/reduction', '0', '3', '0', '', '2021-09-23 14:35:52', '2021-09-23 14:37:09', '');
INSERT INTO `sys_authority` VALUES ('68', '资源移入回收站', '63', '', '0', '', '', '/resource/recover', '0', '3', '0', '', '2021-09-23 14:36:13', '2021-09-23 14:36:13', '');
INSERT INTO `sys_authority` VALUES ('69', '资源审核', '63', '', '0', '', '', '/resource/review', '0', '3', '0', '', '2021-09-23 14:36:53', '2021-09-23 14:36:53', '');
INSERT INTO `sys_authority` VALUES ('74', '视频删除', '71', '', '0', '', '', '/video/remove', '0', '3', '0', '', '2021-09-23 14:35:29', '2021-09-23 14:37:17', '');
INSERT INTO `sys_authority` VALUES ('75', '视频还原', '71', '', '0', '', '', '/video/reduction', '0', '3', '0', '', '2021-09-23 14:35:52', '2021-09-23 14:37:09', '');
INSERT INTO `sys_authority` VALUES ('76', '视频移入回收站', '71', '', '0', '', '', '/video/recover', '0', '3', '0', '', '2021-09-23 14:36:13', '2021-09-23 14:36:13', '');
INSERT INTO `sys_authority` VALUES ('77', '视频审核', '71', '', '0', '', '', '/video/review', '0', '3', '0', '', '2021-09-23 14:36:53', '2021-09-23 14:36:53', '');
INSERT INTO `sys_authority` VALUES ('82', '课程删除', '79', '', '0', '', '', '/edu/remove', '0', '3', '0', '', '2021-09-23 14:35:29', '2021-09-23 14:37:17', '');
INSERT INTO `sys_authority` VALUES ('83', '课程还原', '79', '', '0', '', '', '/edu/reduction', '0', '3', '0', '', '2021-09-23 14:35:52', '2021-09-23 14:37:09', '');
INSERT INTO `sys_authority` VALUES ('84', '课程移入回收站', '79', '', '0', '', '', '/edu/recover', '0', '3', '0', '', '2021-09-23 14:36:13', '2021-09-23 14:36:13', '');
INSERT INTO `sys_authority` VALUES ('85', '课程审核', '79', '', '0', '', '', '/edu/review', '0', '3', '0', '', '2021-09-23 14:36:53', '2021-09-23 14:36:53', '');
INSERT INTO `sys_authority` VALUES ('93', '帖子置顶', '216', '', '0', '', '', '/post/top', '0', '3', '0', '', '2021-09-26 13:42:20', '2024-03-19 20:14:56', '');
INSERT INTO `sys_authority` VALUES ('94', '帖子审核', '216', '', '0', '', '', '/post/review', '0', '3', '0', '', '2021-09-26 13:42:45', '2024-03-19 20:14:40', '');
INSERT INTO `sys_authority` VALUES ('96', '帖子还原', '216', '', '0', '', '', '/post/reduction', '0', '3', '0', '', '2021-09-26 13:43:46', '2024-03-19 20:14:02', '');
INSERT INTO `sys_authority` VALUES ('97', '帖子移到回收站', '216', '', '0', '', '', '/post/remove', '0', '3', '0', '', '2021-09-26 13:44:05', '2024-03-19 20:13:46', '');
INSERT INTO `sys_authority` VALUES ('101', '评论审核', '274', '', '0', '', '', '/comment/review', '0', '3', '0', '', '2021-09-26 18:46:38', '2021-09-26 18:47:45', '');
INSERT INTO `sys_authority` VALUES ('102', '评论移入回收站', '274', '', '0', '', '', '/comment/remove', '0', '3', '0', '', '2021-09-26 18:48:22', '2024-03-14 20:54:50', '');
INSERT INTO `sys_authority` VALUES ('103', '评论还原', '274', '', '0', '', '', '/comment/reduction', '0', '3', '0', '', '2021-09-26 18:48:33', '2021-09-26 18:48:33', '');
INSERT INTO `sys_authority` VALUES ('104', '评论删除', '274', '', '0', '', '', '/comment/delete', '0', '3', '0', '', '2021-09-26 18:48:43', '2024-03-14 20:54:41', '');
INSERT INTO `sys_authority` VALUES ('105', '答案审核', '91', '', '0', '', '', '/answer/review', '0', '3', '0', '', '2021-09-26 18:49:26', '2021-09-26 18:49:26', '');
INSERT INTO `sys_authority` VALUES ('106', '答案移入回收站', '91', '', '0', '', '', '/answer/recover', '0', '3', '0', '', '2021-09-26 18:49:41', '2021-09-26 18:49:41', '');
INSERT INTO `sys_authority` VALUES ('107', '答案还原', '91', '', '0', '', '', '/answer/reduction', '0', '3', '0', '', '2021-09-26 18:49:52', '2021-09-26 18:49:52', '');
INSERT INTO `sys_authority` VALUES ('108', '答案删除', '91', '', '0', '', '', '/answer/remove', '0', '3', '0', '', '2021-09-26 18:50:00', '2021-09-26 18:50:00', '');
INSERT INTO `sys_authority` VALUES ('109', '圈子审核', '90', '', '0', '', '', '/group/review', '0', '3', '0', '', '2021-09-26 18:50:37', '2021-09-26 18:50:37', '');
INSERT INTO `sys_authority` VALUES ('110', '圈子移入回收站', '90', '', '0', '', '', '/group/recover', '0', '3', '0', '', '2021-09-26 18:50:46', '2021-09-26 18:50:46', '');
INSERT INTO `sys_authority` VALUES ('111', '圈子还原', '90', '', '0', '', '', '/group/reduction', '0', '3', '0', '', '2021-09-26 18:50:54', '2021-09-26 18:50:54', '');
INSERT INTO `sys_authority` VALUES ('112', '圈子删除', '90', '', '0', '', '', '/group/remove', '0', '3', '0', '', '2021-09-26 18:51:04', '2021-09-26 18:51:04', '');
INSERT INTO `sys_authority` VALUES ('113', '问题审核', '89', '', '0', '', '', '/question/review', '0', '3', '0', '', '2021-09-26 18:51:39', '2021-09-26 18:51:39', '');
INSERT INTO `sys_authority` VALUES ('114', '问题移入回收站', '89', '', '0', '', '', '/question/recover', '0', '3', '0', '', '2021-09-26 18:51:51', '2021-09-26 18:51:51', '');
INSERT INTO `sys_authority` VALUES ('115', '问题还原', '89', '', '0', '', '', '/question/reduction', '0', '3', '0', '', '2021-09-26 18:52:02', '2021-09-26 18:52:02', '');
INSERT INTO `sys_authority` VALUES ('116', '问题删除', '89', '', '0', '', '', '/question/remove', '0', '3', '0', '', '2021-09-26 18:52:10', '2021-09-26 18:52:10', '');
INSERT INTO `sys_authority` VALUES ('117', '用户管理', '0', 'PageView', '93', '/user/list', '/user', '/user', '1', '1', '2', 'bars', '2021-09-26 21:34:22', '2024-03-28 23:34:30', '');
INSERT INTO `sys_authority` VALUES ('118', '用户列表', '117', 'UserList', '0', '', '/user/list', '/user/list', '1', '2', '2', '', '2021-09-26 21:36:57', '2021-09-26 21:36:57', '');
INSERT INTO `sys_authority` VALUES ('119', '等级列表', '117', 'GradeList', '0', '', '/grade/list', '/grade/list', '1', '2', '2', '', '2021-09-26 21:37:26', '2021-09-26 21:37:26', '');
INSERT INTO `sys_authority` VALUES ('120', '会员列表', '117', 'VipList', '0', '', '/vip/list', '/vip/list', '1', '2', '2', '', '2021-09-26 21:37:43', '2021-09-26 21:37:43', '');
INSERT INTO `sys_authority` VALUES ('121', '实名认证', '117', 'VerifyList', '0', '', '/verify/list', '/verify/list', '1', '2', '2', '', '2021-09-26 21:38:10', '2021-09-26 21:38:10', '');
INSERT INTO `sys_authority` VALUES ('122', '用户创建', '117', 'UserCreate', '0', '', '/user/create', '/user/create', '1', '2', '1', '', '2021-09-27 14:18:37', '2021-09-27 14:18:37', '');
INSERT INTO `sys_authority` VALUES ('123', '用户编辑', '117', 'UserEdit', '0', '', '/user/edit', '/user/edit', '1', '2', '1', '', '2021-09-27 14:19:14', '2021-09-27 14:19:14', '');
INSERT INTO `sys_authority` VALUES ('124', '用户审核', '118', '', '0', '', '', '/user/review', '1', '3', '1', '', '2021-09-27 14:20:08', '2021-09-27 14:20:58', '');
INSERT INTO `sys_authority` VALUES ('125', '用户删除', '118', '', '0', '', '', '/user/remove', '1', '3', '1', '', '2021-09-27 14:20:21', '2021-09-27 14:20:48', '');
INSERT INTO `sys_authority` VALUES ('126', '获取用户修改信息', '123', '', '0', '', '', '/user/edit/info', '0', '3', '0', '', '2021-09-27 16:04:11', '2021-09-27 16:04:11', '');
INSERT INTO `sys_authority` VALUES ('127', '获取课程修改信息', '81', '', '0', '', '', '/edu/edit/info', '0', '3', '0', '', '2021-09-27 16:04:56', '2021-09-27 16:04:56', '');
INSERT INTO `sys_authority` VALUES ('128', '获取视频修改信息', '73', '', '0', '', '', '/video/edit/info', '0', '3', '0', '', '2021-09-27 16:05:16', '2021-09-27 16:05:16', '');
INSERT INTO `sys_authority` VALUES ('130', '获取资源修改信息', '65', '', '0', '', '', '/resource/edit/info', '0', '3', '0', '', '2021-09-27 16:05:50', '2021-09-27 16:05:50', '');
INSERT INTO `sys_authority` VALUES ('131', '等级创建', '119', '', '0', '', '', '/grade/create', '0', '3', '0', '', '2021-09-27 20:59:18', '2021-09-27 20:59:18', '');
INSERT INTO `sys_authority` VALUES ('132', '等级编辑', '119', '', '0', '', '', '/grade/edit', '0', '3', '0', '', '2021-09-27 20:59:33', '2021-09-27 20:59:33', '');
INSERT INTO `sys_authority` VALUES ('133', '会员创建', '120', '', '0', '', '', '/vip/create', '0', '3', '0', '', '2021-09-27 21:39:15', '2021-09-27 21:39:15', '');
INSERT INTO `sys_authority` VALUES ('134', '会员编辑', '120', '', '0', '', '', '/vip/edit', '0', '3', '0', '', '2021-09-27 21:39:30', '2021-09-27 21:39:30', '');
INSERT INTO `sys_authority` VALUES ('135', '获取会员编辑信息', '120', '', '0', '', '', '/vip/edit/info', '0', '3', '0', '', '2021-09-27 21:40:44', '2021-09-27 21:40:44', '');
INSERT INTO `sys_authority` VALUES ('136', '获取等级编辑信息', '119', '', '0', '', '', '/grade/edit/info', '0', '3', '0', '', '2021-09-27 21:40:54', '2021-09-27 21:40:54', '');
INSERT INTO `sys_authority` VALUES ('137', '认证审核', '121', '', '0', '', '', '/verify/review', '0', '3', '0', '', '2021-09-27 21:59:30', '2021-09-27 21:59:30', '');
INSERT INTO `sys_authority` VALUES ('138', '认证删除', '121', '', '0', '', '', '/verify/remove', '0', '3', '0', '', '2021-09-27 21:59:38', '2021-09-27 21:59:38', '');
INSERT INTO `sys_authority` VALUES ('139', '财务管理', '0', 'PageView', '95', '/order/list', '/finance', '/finance', '1', '1', '2', 'bars', '2021-09-27 22:11:12', '2024-03-28 23:16:48', '');
INSERT INTO `sys_authority` VALUES ('140', '订单列表', '139', 'OrderList', '0', '', '/order/list', '/order/list', '1', '2', '2', '', '2021-09-27 22:11:53', '2021-09-27 22:12:53', '');
INSERT INTO `sys_authority` VALUES ('141', '提现列表', '139', 'WithdrawList', '0', '', '/withdraw/list', '/withdraw/list', '1', '2', '2', '', '2021-09-27 22:12:42', '2024-03-28 11:25:50', '');
INSERT INTO `sys_authority` VALUES ('142', '订单删除', '140', '', '0', '', '', '/order/remove', '0', '3', '0', '', '2021-09-27 22:48:10', '2021-09-27 22:48:54', '');
INSERT INTO `sys_authority` VALUES ('143', '订单信息查看', '139', 'OrderInfo', '0', '', '/order/info', '/order/info', '1', '2', '1', '', '2021-09-27 22:48:44', '2021-09-27 22:51:10', '');
INSERT INTO `sys_authority` VALUES ('144', '提现审核', '141', '', '0', '', '', '/withdraw/review', '0', '3', '0', '', '2021-09-27 23:14:35', '2024-03-28 11:26:09', '');
INSERT INTO `sys_authority` VALUES ('145', '提现删除', '141', '', '0', '', '', '/withdraw/remove', '0', '3', '0', '', '2021-09-27 23:14:45', '2024-03-28 11:26:00', '');
INSERT INTO `sys_authority` VALUES ('146', '获取角色编辑信息', '12', '', '0', '', '', '/role/edit/info', '0', '3', '0', '', '2021-09-28 13:24:32', '2021-09-28 13:24:32', '');
INSERT INTO `sys_authority` VALUES ('147', '获取管理编辑信息', '14', '', '0', '', '', '/manger/edit/info', '0', '3', '0', '', '2021-09-28 13:25:08', '2021-09-28 13:25:08', '');
INSERT INTO `sys_authority` VALUES ('148', '获取权限编辑信息', '4', '', '0', '', '', '/authority/edit/info', '0', '3', '0', '', '2021-09-28 13:25:35', '2021-09-28 13:25:35', '');
INSERT INTO `sys_authority` VALUES ('151', '分类编辑', '45', 'CategoryEdit', '0', '', '/category/edit', '/category/edit', '1', '2', '1', '', '2021-10-14 14:15:24', '2021-10-14 14:15:24', '');
INSERT INTO `sys_authority` VALUES ('152', '获取编辑信息', '42', '', '0', '', '', '/category/edit/info', '0', '3', '0', '', '2021-10-14 14:49:49', '2021-10-14 14:49:49', '');
INSERT INTO `sys_authority` VALUES ('153', '充值列表', '139', 'RechargeList', '0', '', '/recharge/list', '/recharge/list', '1', '2', '2', '', '2021-11-02 23:28:42', '2021-11-02 23:28:42', '');
INSERT INTO `sys_authority` VALUES ('154', '充值删除', '153', '', '0', '', '', '/recharge/remove', '0', '3', '0', '', '2021-11-02 23:29:17', '2021-11-02 23:29:17', '');
INSERT INTO `sys_authority` VALUES ('155', '充值审核', '153', '', '0', '', '', '/recharge/review', '0', '3', '0', '', '2021-11-02 23:29:45', '2021-11-02 23:29:45', '');
INSERT INTO `sys_authority` VALUES ('156', '卡密列表', '139', 'CardList', '0', '', '/card/list', '/card/list', '1', '2', '2', '', '2021-11-04 01:54:26', '2021-11-04 02:08:20', '');
INSERT INTO `sys_authority` VALUES ('157', '生成卡密', '156', '', '0', '', '', '/card/create', '0', '3', '0', '', '2021-11-04 01:54:56', '2021-11-04 02:08:41', '');
INSERT INTO `sys_authority` VALUES ('158', '卡密删除', '156', '', '0', '', '', '/card/remove', '0', '3', '0', '', '2021-11-04 01:55:20', '2021-11-04 02:08:34', '');
INSERT INTO `sys_authority` VALUES ('159', '短信配置', '16', 'SmsOption', '1', '', '/sms/option', '/sms/option', '1', '2', '2', '', '2021-11-28 16:45:51', '2021-11-28 16:45:51', '');
INSERT INTO `sys_authority` VALUES ('161', '仪表盘', '0', 'Dashboard', '100', '', '/dashboard', '/dashboard', '1', '1', '2', 'bars', '2021-12-07 12:37:46', '2021-12-07 12:49:13', '');
INSERT INTO `sys_authority` VALUES ('162', '大文件上传', '28', '', '0', '', '', '/upload/chunk', '0', '3', '0', '', '2021-12-17 13:37:34', '2021-12-17 13:44:08', '');
INSERT INTO `sys_authority` VALUES ('163', '大文件合并', '28', '', '0', '', '', '/upload/mergeChunk', '0', '3', '0', '', '2021-12-17 16:40:37', '2021-12-17 16:40:37', '');
INSERT INTO `sys_authority` VALUES ('164', '页面列表', '45', 'PageList', '4', '', '/page/list', '/page/list', '1', '2', '2', '', '2022-06-19 18:08:50', '2024-03-11 19:16:34', '');
INSERT INTO `sys_authority` VALUES ('165', '页面创建', '45', 'PageCreate', '1', '', '/page/create', '/page/create', '1', '2', '1', '', '2022-06-19 18:09:29', '2022-06-19 18:09:29', '');
INSERT INTO `sys_authority` VALUES ('166', '页面编辑', '45', 'PageEdit', '0', '', '/page/edit', '/page/edit', '1', '2', '1', '', '2022-06-19 18:10:07', '2022-06-19 18:10:07', '');
INSERT INTO `sys_authority` VALUES ('167', '获取页面编辑信息', '164', '', '0', '', '', '/page/edit/info', '0', '3', '0', '', '2022-06-19 19:51:12', '2022-06-19 19:51:12', '');
INSERT INTO `sys_authority` VALUES ('168', '页面删除', '164', '', '0', '', '', '/page/remove', '0', '3', '0', '', '2022-06-19 19:51:32', '2022-06-19 19:51:32', '');
INSERT INTO `sys_authority` VALUES ('174', '小文件上传', '28', '', '0', '', '', '/upload/minFile', '0', '3', '0', '', '2022-06-23 00:27:29', '2022-06-23 00:27:29', '');
INSERT INTO `sys_authority` VALUES ('175', '意见反馈', '45', 'SuggestList', '0', '', '/suggest/list', '/suggest/list', '1', '2', '2', '', '2022-07-06 14:16:09', '2022-07-06 14:16:09', '');
INSERT INTO `sys_authority` VALUES ('177', '意见删除', '175', '', '0', '', '', '/suggest/remove', '0', '3', '0', '', '2022-07-06 15:17:38', '2022-07-06 15:17:38', '');
INSERT INTO `sys_authority` VALUES ('205', '文章列表', '283', 'ArticleList', '5', '', '/article/list', '/article/list', '1', '2', '2', '', '2023-06-30 16:29:14', '2024-04-05 19:05:45', '');
INSERT INTO `sys_authority` VALUES ('206', '文章审核', '205', '', '0', '', '', '/article/review', '0', '3', '0', '', '2023-06-30 17:39:08', '2024-04-05 19:07:43', '');
INSERT INTO `sys_authority` VALUES ('207', '文章删除', '205', '', '0', '', '', '/article/delete', '0', '3', '0', '', '2023-06-30 17:39:37', '2024-04-05 19:07:17', '');
INSERT INTO `sys_authority` VALUES ('216', '帖子列表', '282', 'PostList', '5', '', '/post/list', '/post/list', '1', '2', '2', '', '2023-07-25 10:36:45', '2024-03-29 00:53:08', '');
INSERT INTO `sys_authority` VALUES ('240', '文章创建', '283', 'ArticleCreate', '0', '', '/article/create', '/article/create', '1', '2', '2', '', '2023-10-05 16:03:33', '2024-04-05 19:05:22', '');
INSERT INTO `sys_authority` VALUES ('241', '获取文章信息', '205', '', '0', '', '', '/article/info', '0', '3', '0', '', '2023-10-06 02:08:48', '2024-04-05 19:07:02', '');
INSERT INTO `sys_authority` VALUES ('242', '文章人工审核', '205', '', '0', '', '', '/article/authentication', '0', '3', '0', '', '2023-10-10 00:34:06', '2024-04-05 19:06:51', '');
INSERT INTO `sys_authority` VALUES ('243', '文章编辑', '283', 'ArticleEdit', '0', '', '/article/edit', '/article/edit', '1', '2', '1', '', '2023-10-13 00:06:15', '2024-04-05 19:05:07', '');
INSERT INTO `sys_authority` VALUES ('244', '获取文章编辑信息', '205', '', '0', '', '', '/article/edit/info', '0', '3', '0', '', '2023-10-13 00:09:01', '2024-04-05 19:06:32', '');
INSERT INTO `sys_authority` VALUES ('245', '文章删除', '205', '', '0', '', '', '/article/remove', '0', '3', '0', '', '2023-10-13 01:38:36', '2024-04-05 19:06:18', '');
INSERT INTO `sys_authority` VALUES ('246', '文章恢复', '205', '', '0', '', '', '/article/reduction', '0', '3', '0', '', '2023-10-13 01:58:08', '2024-04-05 19:06:07', '');
INSERT INTO `sys_authority` VALUES ('247', '文章勋章赛季', '205', '', '0', '', '', '/article/meta', '0', '3', '0', '', '2024-01-31 01:16:59', '2024-04-05 19:05:57', '');
INSERT INTO `sys_authority` VALUES ('253', '版块列表', '45', 'ForumList', '11', '', '/forum/list', '/forum/list', '1', '1', '2', '', '2024-03-13 19:51:24', '2024-03-29 00:54:38', '');
INSERT INTO `sys_authority` VALUES ('254', '版块删除', '253', '', '0', '', '', '/forum/delete', '0', '3', '0', '', '2024-03-13 19:52:05', '2024-03-19 19:52:45', '');
INSERT INTO `sys_authority` VALUES ('255', '版块编辑', '253', '', '0', '', '', '/forum/edit', '0', '3', '0', '', '2024-03-13 19:52:28', '2024-03-19 19:52:24', '');
INSERT INTO `sys_authority` VALUES ('256', '版块创建', '253', '', '0', '', '', '/forum/create', '0', '3', '0', '', '2024-03-13 19:52:56', '2024-03-19 19:52:07', '');
INSERT INTO `sys_authority` VALUES ('257', '获取版块编辑信息', '253', '', '0', '', '', '/forum/edit/info', '0', '3', '0', '', '2024-03-13 19:53:43', '2024-03-19 19:51:41', '');
INSERT INTO `sys_authority` VALUES ('258', '获取所有版块', '253', '', '0', '', '', '/forum/all', '0', '3', '0', '', '2024-03-13 20:51:10', '2024-03-19 19:35:46', '');
INSERT INTO `sys_authority` VALUES ('259', '社区管理', '0', 'PageView', '97', '', '/content', '/content', '1', '1', '2', 'bars', '2024-03-13 22:25:22', '2024-03-28 23:16:36', '');
INSERT INTO `sys_authority` VALUES ('263', '帖子创建', '282', 'PostCreate', '0', '', '/post/create', '/post/create', '1', '2', '2', '', '2024-03-14 16:30:36', '2024-03-28 11:18:57', '');
INSERT INTO `sys_authority` VALUES ('264', '获取帖子编辑信息', '216', '', '0', '', '', '/post/edit/info', '0', '3', '0', '', '2024-03-14 16:31:07', '2024-03-19 20:13:25', '');
INSERT INTO `sys_authority` VALUES ('265', '帖子编辑', '282', 'PostEdit', '0', '', '/post/edit', '/post/edit', '1', '2', '1', '', '2024-03-14 16:31:29', '2024-03-28 11:18:44', '');
INSERT INTO `sys_authority` VALUES ('274', '评论列表', '259', 'CommentList', '0', '', '/comment/list', '/comment/list', '1', '2', '2', '', '2024-03-14 20:01:30', '2024-03-14 20:01:30', '');
INSERT INTO `sys_authority` VALUES ('275', '积分列表', '139', 'IntegralList', '0', '', '/integral/list', '/integral/list', '1', '2', '2', '', '2024-03-19 10:28:51', '2024-03-19 10:28:51', '');
INSERT INTO `sys_authority` VALUES ('276', '积分删除', '275', '', '0', '', '', '/integral/delete', '0', '3', '0', '', '2024-03-19 10:29:13', '2024-03-19 10:29:13', '');
INSERT INTO `sys_authority` VALUES ('278', '帖子删除', '216', '', '0', '', '', '/post/delete', '0', '3', '0', '', '2024-03-19 20:15:18', '2024-03-19 20:15:18', '');
INSERT INTO `sys_authority` VALUES ('279', '举报列表', '259', 'ReportList', '0', '', '/report/list', '/report/list', '1', '2', '2', '', '2024-03-20 10:53:36', '2024-03-20 10:53:36', '');
INSERT INTO `sys_authority` VALUES ('280', '举报审核', '279', '', '0', '', '', '/report/review', '0', '3', '0', '', '2024-03-20 20:36:14', '2024-03-20 20:52:15', '');
INSERT INTO `sys_authority` VALUES ('281', '举报删除', '279', '', '0', '', '', '/report/delete', '0', '3', '0', '', '2024-03-20 20:36:37', '2024-03-20 20:51:23', '');
INSERT INTO `sys_authority` VALUES ('282', '帖子管理', '0', 'PageView', '99', '', '/post', '/post', '1', '1', '2', 'bars', '2024-03-28 11:17:59', '2024-03-28 23:16:21', '');
INSERT INTO `sys_authority` VALUES ('283', '文章管理', '0', 'PageView', '98', '', '/article', '/article', '1', '1', '2', 'bars', '2024-03-28 11:19:38', '2024-04-05 19:04:59', '');
INSERT INTO `sys_authority` VALUES ('287', '公告列表', '45', 'AnnouncementList', '8', '', '/announcement/list', '/announcement/list', '1', '2', '2', '', '2024-03-28 17:13:57', '2024-03-29 00:54:08', '');
INSERT INTO `sys_authority` VALUES ('288', '公告创建', '287', '', '0', '', '/announcement/create', '/announcement/create', '0', '3', '0', '', '2024-03-28 17:21:55', '2024-03-28 17:22:35', '');
INSERT INTO `sys_authority` VALUES ('289', '公告删除', '287', '', '0', '', '', '/announcement/delete', '0', '3', '0', '', '2024-03-28 17:22:28', '2024-03-28 17:22:28', '');
INSERT INTO `sys_authority` VALUES ('292', '公告编辑', '287', '', '0', '', '', '/announcement/edit', '0', '3', '0', '', '2024-03-28 21:04:41', '2024-03-28 21:04:41', '');
INSERT INTO `sys_authority` VALUES ('293', '获取公告编辑信息', '287', '', '0', '', '', '/announcement/edit/info', '0', '3', '0', '', '2024-03-28 21:08:36', '2024-03-28 21:08:36', '');

-- ----------------------------
-- Table structure for sys_card
-- ----------------------------
DROP TABLE IF EXISTS `sys_card`;
CREATE TABLE `sys_card` (
  `card_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `used_id` bigint(20) DEFAULT NULL COMMENT '使用者id',
  `secret_key` varchar(255) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态: 1未使用，2已使用',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_card
-- ----------------------------
INSERT INTO `sys_card` VALUES ('1', '0', '28ca88d5d85db59f61180eebe972566f', '50.00', '1', '2023-08-07 13:49:02');
INSERT INTO `sys_card` VALUES ('2', '0', '0c79b98b57e1f5c092d4f13a824b0ef3', '50.00', '1', '2023-08-07 13:49:02');
INSERT INTO `sys_card` VALUES ('3', '0', '3aea4de4b1343a2f249a8bfb53a7c361', '50.00', '1', '2023-08-07 13:49:02');
INSERT INTO `sys_card` VALUES ('4', '0', '283efb5b066f3b011f28c1195ff29c67', '50.00', '1', '2023-08-07 13:49:02');
INSERT INTO `sys_card` VALUES ('5', '0', '989cc403ab2541f02634980de32a0e11', '50.00', '1', '2023-08-07 13:49:02');
INSERT INTO `sys_card` VALUES ('6', '0', '6fe79cf8ae8d8d312c716ac34f6a6b58', '50.00', '1', '2023-08-07 13:49:02');
INSERT INTO `sys_card` VALUES ('7', '0', '21c314527b40d6e4cc537073c1da1213', '50.00', '1', '2023-08-07 13:49:02');
INSERT INTO `sys_card` VALUES ('8', '0', '3a2ab174c5eaa602f0b7637626799cd0', '50.00', '1', '2023-08-07 13:49:02');
INSERT INTO `sys_card` VALUES ('9', '0', '1388295fa9e14b9f41a3cee3715e1bdc', '50.00', '1', '2023-08-07 13:49:02');
INSERT INTO `sys_card` VALUES ('10', '0', '380b070540ceef5b1f550f1441206732', '50.00', '1', '2023-08-07 13:49:02');

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT '0' COMMENT '顶级分类',
  `forum_id` bigint(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL COMMENT '所属模块',
  `is_auditing` tinyint(4) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(50) DEFAULT NULL COMMENT '分类别名',
  `cover` varchar(255) DEFAULT NULL COMMENT '分类背景图',
  `sort` int(10) DEFAULT NULL COMMENT '分类排序',
  `keywords` varchar(50) DEFAULT NULL COMMENT '分类关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '分类描述',
  `isTop` tinyint(4) DEFAULT '1' COMMENT '分类状态 1 不推荐 2推荐',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `delete_time` datetime DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO `sys_category` VALUES ('24', '0', '1', 'post', '2', '测试新版块', 'test', 'https://static.7b2.com/wp-content/uploads/2024/02/street-7971714_1280.jpg?x-oss-process=image/resize,m_fill,h_388,w_516/sharpen,120/format,webp', '1', '测试新版块', 'sdfsadfasdf ', '2', '2024-03-19 19:36:39', '2024-03-19 19:36:39', null);
INSERT INTO `sys_category` VALUES ('28', '0', '1', 'post', '1', '闲聊广场', 'xlgc', '/public/uploads/2024-04-09/d0eyif8u7c8xjrroau.png', '2', '测试文章分类 ', '吐槽内容', '1', '2024-03-22 02:15:51', '2024-03-22 02:15:51', null);

-- ----------------------------
-- Table structure for sys_comment
-- ----------------------------
DROP TABLE IF EXISTS `sys_comment`;
CREATE TABLE `sys_comment` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reply_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '发布用户',
  `top_id` bigint(20) DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL COMMENT '模块',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型 1图片 2视频 3文字',
  `files` text COMMENT '文件链接',
  `likes` bigint(20) DEFAULT NULL COMMENT '点赞数',
  `remark` varchar(500) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '2已审核，1未审核',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_comment
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` text COMMENT '参数键值',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('5', '邮箱配置', 'EmailOptions', '{\"host\":\"smtp.qq.com\",\"port\":\"587\",\"user\":\"973728679@qq.com\",\"pass\":\"mzrchjdssewlbbib\",\"email\":\"973728679@qq.com\"}', '2020-05-18 00:34:51', '2021-08-17 19:38:37', '邮箱配置');
INSERT INTO `sys_config` VALUES ('7', '基础设置', 'BaseSetting', '{\"title\":\"爱派克斯\",\"childTitle\":\"找出你的新声\",\"description\":\"分享你的技能发现你的美\",\"url\":\"http://aipaikesi.com\",\"logo\":\"/public/uploads/2022-08-16/cm7id3z0elsncpxbzu.png\",\"adminLogo\":\"/public/uploads/2021-06-30/ccgxrrsx6enov4utih.png\",\"icon\":\"/public/uploads/2022-08-16/cm7j5hg1upzjoh1apt.ico\",\"currencySymbol\":\"￥\",\"language\":\"zh\",\"recordNumber\":\"桂-4152055\"}', '2020-05-24 00:41:43', '2024-04-09 01:55:41', '基础设置');
INSERT INTO `sys_config` VALUES ('8', '文件设置', 'FileSetting', '{\"engine\":\"local\",\"path\":\"uploads\",\"minFileSize\":\"10\",\"bigFileSize\":\"200\",\"imageType\":[\".png\",\".jpg\",\".jpeg\",\".ico\"],\"audioType\":[\".mp3\"],\"videoType\":[\".mp4\"],\"otherType\":[\".crt\"]}', '2020-05-30 22:47:11', '2022-08-16 22:12:39', '文件设置');
INSERT INTO `sys_config` VALUES ('9', '支付宝配置', 'AlyPayOptions', '{\"appId\":\"2016102700770129\",\"privateKey\":\"MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCjkmnBSEjwpvBFLUF279MLV1bSjjnnokhocdEgTYx4Qy6zhtpUfyV/LwRQ31ddUtoTYhCedOO5nd95vMrAOSU2++ZdXWVjUfw1er4fFaMlNp8hQkKOgp8bDLO05x3/o9rG0oOWqWreyUGoPoWRQhnzJt6kYbJtunx3d8hBN59jM0PHiDODDsgiu8sq4muk/BjayF8FKypkp2LQCNjpxbUPIcbjpLsRzrJ4eH+Om+10cMHpIDLl6JZITwq3JF6l39cS61N4xNwOOtE/1KCo3x9/y8T2XF3PQvfHjXHeNuwQNIvey828a7KFbTgV6O09lOCTvjP1HmA1zvpHD6MizaofAgMBAAECggEAfX9WGG9HVywd6FVihshWGbt257EriCage1Hn62rUPWj+KctrM60hrcT7ALl6pCVvH7P7oDd6iO0xioto27Z8cQUvp66CnYNHiBiWSe8l7uVLjg7yVbiuLei+8CrqfzrOHgFh6HQvhKLQ9y6Q9/PJSR8nbuNuLHYKDPcf87mjVk3Cz6D03V9B1avfaH5IiLvlZwrAgVk7FoZEoBnhZhIg7yME4DUitPykTGg1ur/Gofe+xrPqONOnvZW8wNa/l2nKIPQwBaiUVcSV7gVBRRkw/GADMV59titx1dyzmR0b61GLexjI2WxXRLnAe1+qXrbOcbsCKIgFjQELbCz8MYFYgQKBgQDM7m/rzIcsJkmHXFGZdVRIdFzx73SUKMSu3srCs+7urUG9HNupf16ykMHv1p7rA0tBt6lzTAUgpf0F959JE1fUl+tyy2gUDyqOrP1FzF91wbertTXcrBcv9wMD5mvENSHNz9CDQ3Z7ZHtpPSnk2AvGhXzDSc6pnEkBzUIIVjgQfwKBgQDMVXSsnESsUwzz9qfzWxT9qsELIMM91xyn/w7FWcvIZvd33TzpPP0aZ69hylmaUPpSp4wwL5+zqPOvfI03y5En7ZzohMBTebU4H4m3aK4GHF0w+6ft+bt04ZAyFc7lyf/w+nEniPgQHSQqMu64FbK+GrYxrAXzSFhHfH/b35uWYQKBgGYpK3RSdsRkpd0sAaXN3uFr2PXnGKfPlxVSDaR4jNFBX/dFzp+11mCQV44X4QtpjffJ9lh6+kdnWDbEVgzY7r0VqxOEIXN2iBGuXWiRVLlghA6+fIZw5/JKYp9sHCcpEZwHUHxPgl5LHla9XgguR9iErUixn6vgNGkIiTWcvcBDAoGAfUGNShppBnHKqOp0vfsBfRZlS9sDlC7/RARYG6YWA30LChE2u4tFZCBXJE0UbEJjkLNgflFTRqC08MgbES7ahm1kGCz4cLNU4ViD5UhoFRriDZrWsEy8GsQCzpELyVTwbdo37xJJbidO+gdKytGSRnK9aOmYpC+e3gN1pWUHTUECgYA0zjkcEHfYzxH/VChkT9SzuI4WIJ+NSQ5ztljaZlDPg8rskUCB/kV6tRXW5oVBmgm4VyHl5bOl8PkoUC06Zhe6jiZ5cSUnfvCi7w2ysc1y5Nypc1P/qBu0bGK0nLRdFHbuv4IZsCrcvaR86QFeK14xO+yJ3kkOyXLd4UTvXYG/xg==\",\"appPublicKey\":\"http://beethorn.com/public/uploads/2022-07-03/cl6446516yqk8s03bl.crt\",\"alyCertPublicKey\":\"http://beethorn.com/public/uploads/2022-07-03/cl6448p2rn6cs8ppzr.crt\",\"alyRootCert\":\"http://beethorn.com/public/uploads/2022-07-03/cl6449uckjbwua78na.crt\"}', '2020-06-13 15:32:17', '2022-07-03 23:05:54', '支付宝配置');
INSERT INTO `sys_config` VALUES ('10', '支付设置', 'PaySetting', '{\"integral\":[1,2,3],\"alyPay\":1,\"weChatPay\":1,\"payMode\":[3],\"recharge\":[3],\"withdrawMoneyMin\":50,\"withdrawMoneyServicePercent\":0.005,\"servicePercent\":0.05}', '2020-06-13 16:37:21', '2024-03-19 13:59:50', '支付设置');
INSERT INTO `sys_config` VALUES ('12', '用户设置', 'UserSetting', '{\"defaultAvatar\":\"/public/uploads/2021-06-30/ccgxrrsx6enov4utih.png\",\"defaultCover\":\"/public/uploads/2021-06-30/ccgxrrsx6enov4utih.png\",\"defaultGrade\":\"1\",\"verifyMode\":\"0\",\"verifyPrice\":21}', '2020-10-25 17:25:12', '2021-08-17 13:46:49', '用户设置');
INSERT INTO `sys_config` VALUES ('22', '首页设计', 'HomeDesign', '[{\"title\":\"轮播\",\"height\":\"300\",\"list\":[{\"link\":\"http://www.beethorn.com/video/7\",\"cover\":\"/public/uploads/2022-05-19/ck3oy1mqb4b46ao3ze.png\",\"isPlatform\":2,\"title\":\"基于宝塔环境安装\"},{\"link\":\"http://www.beethorn.com/video/8\",\"cover\":\"/public/uploads/2022-05-19/ck3ro87vm6rqbondro.png\",\"isPlatform\":2,\"title\":\"服务端数据接口安装\"},{\"link\":\"http://www.beethorn.com/video/9\",\"cover\":\"/public/uploads/2022-05-19/ck3ruhz0ucr3q5sus7.png\",\"isPlatform\":2,\"title\":\"前台安装\"},{\"link\":\"http://www.beethorn.com/video/10\",\"cover\":\"/public/uploads/2022-05-19/ck3rxgo2mre1goloyc.png\",\"isPlatform\":2,\"title\":\"后台管理安装\"}],\"style\":1,\"isOpen\":false},{\"title\":\"广告\",\"showTitle\":1,\"height\":\"200\",\"style\":9,\"content\":\"{\\\"cover\\\":\\\"http://beethorn.com/public/uploads/2022-05-19/ck3skse1peyjzln4ay.png\\\",\\\"link\\\":\\\"/\\\",\\\"isPlatform\\\":2}\",\"isOpen\":false},{\"title\":\"视频组件\",\"showTitle\":2,\"videoIds\":\"7,8,9,10\",\"style\":6,\"isOpen\":false},{\"title\":\"广告2\",\"showTitle\":1,\"height\":\"200\",\"style\":9,\"content\":\"{\\\"cover\\\":\\\"/public/uploads/2021-11-19/cftnonwtwzmjcc0hwi.jpg\\\",\\\"link\\\":\\\"/\\\",\\\"isPlatform\\\":2}\",\"isOpen\":false}]', '2021-04-12 20:29:03', '2022-05-19 22:02:17', '首页设计');
INSERT INTO `sys_config` VALUES ('24', '通知设置', 'NoticeSetting', '{\"register\":\"{siteTitle}欢迎您的加入\",\"create\":\"您发布《{title}》,已经审核: {reason}\",\"remove\":\"您发布的内容{title}，被删除了，{reason}\",\"groupCreate\":\"您创建《{title}》,已经审核: {reason}\",\"groupRemove\":\"您创建{title}，被删除了: {reason}\",\"report\":\"您举报的内容，已处理，{reason}\",\"userProhibit\":\"{reason}\",\"verify\":\"您实名认证已审核，{reason}\",\"cash\":\"您编号为{code}提现申请已经打款，\"}', '2021-05-16 02:07:09', '2021-06-21 00:44:05', '通知设置');
INSERT INTO `sys_config` VALUES ('26', '登录注册设置', 'AuthSetting', '{\"loginRegisterMode\":\"email\",\"policyUrl\":\"\",\"protocolUrl\":\"\",\"social\":[],\"register\":\"恭喜您注册成为我们的用户\"}', '2021-06-22 00:51:45', '2022-06-26 16:43:16', '登录注册设置');
INSERT INTO `sys_config` VALUES ('27', '阿里云oss配置', 'AlyOssOption', '{\"roleArn\":\"acs:ram::1986051699684916:role/ramosstest\",\"roleSessionName\":\"beetorn\",\"regionId\":\"cn-shenzhen\",\"endpoint\":\"oss-cn-shenzhen.aliyuncs.com\",\"accessKeyId\":\"LTAI5t8RPwZu2SL4Rm7wKZSe\",\"accessKeySecret\":\"d4r3CXZJr1DIusaX4R2JTaViXAh42P\",\"bucketName\":\"beethorn\"}', '2021-07-02 21:38:09', '2022-06-27 18:41:49', '阿里云oss配置');
INSERT INTO `sys_config` VALUES ('28', '七牛oss配置', 'QiNiuOssOption', '{\"endpoint\":\"21312\",\"accessKeyId\":\"312312\",\"accessKeySecret\":\"3123\",\"bucketName\":\"123\",\"address\":\"213123\"}', '2021-07-02 22:17:48', '2021-07-02 22:17:48', '七牛oss配置');
INSERT INTO `sys_config` VALUES ('29', '阿里云短信配置', 'AlySmsOptions', '{\"id\":\"LTAIyOnBE3wGtyAA\",\"secret\":\"PlwvkrExsup3XccmMxaonmJe4HshK3\",\"publicKey\":null,\"appPublicKey\":null,\"alyCertPublicKey\":null,\"alyRootCert\":null}', '2021-11-28 17:05:20', '2021-11-28 17:05:27', '阿里云短信配置');
INSERT INTO `sys_config` VALUES ('30', 'H5首页设计', 'H5Design', '[{\"title\":\"轮播组件\",\"desc\":\"\",\"showTitle\":1,\"height\":360,\"style\":1,\"swpies\":[{\"link\":\"https://www.baidu.com/\",\"cover\":\"http://beethorn.com/public/uploads/2022-05-21/ck578w4erbhuwnb1fl.png@w240_h170\",\"isPlatform\":2},{\"link\":\"https://www.baidu.com/\",\"cover\":\"http://beethorn.com/public/uploads/2022-05-21/ck578w4erbhuwnb1fl.png@w240_h170\",\"isPlatform\":2},{\"link\":\"http://www.beethorn.com/\",\"cover\":\"http://beethorn.com/public/uploads/2022-05-21/ck578w4erbhuwnb1fl.png@w240_h170\",\"isPlatform\":2},{\"link\":\"http://www.beethorn.com/\",\"cover\":\"http://beethorn.com/public/uploads/2022-05-21/ck578w4erbhuwnb1fl.png@w240_h170\",\"isPlatform\":2}]},{\"title\":\"热门课程\",\"desc\":\"\",\"showTitle\":1,\"style\":2,\"module\":\"edu\"},{\"title\":\"热门视频\",\"desc\":\"\",\"showTitle\":1,\"style\":2,\"module\":\"video\"},{\"title\":\"热门音频\",\"desc\":\"\",\"style\":2,\"module\":\"audio\"},{\"title\":\"热门文章\",\"desc\":\"\",\"showTitle\":1,\"style\":3,\"module\":\"article\"}]', '2021-11-30 12:39:22', '2022-06-21 21:58:43', 'H5首页设计');
INSERT INTO `sys_config` VALUES ('31', '微信小程序首页设计', 'WechatMiniProgramDesign', '[{\"title\":\"轮播1\",\"height\":360,\"list\":[{\"isPlatform\":2,\"module\":\"article\",\"id\":\"1\"},{\"link\":\"\",\"cover\":\"\",\"isPlatform\":2,\"module\":\"video\",\"id\":\"2\"},{\"link\":\"\",\"cover\":\"\",\"isPlatform\":2,\"module\":\"audio\",\"id\":\"3\"},{\"link\":\"\",\"cover\":\"\",\"isPlatform\":2,\"module\":\"resource\",\"id\":\"3\"}],\"style\":1},{\"title\":\"社区组件\",\"showTitle\":2,\"topicIds\":\"9,8,7\",\"questionIds\":\"\",\"style\":2},{\"title\":\"自定义内容组件\",\"showTitle\":2,\"list\":[{\"title\":\"动态\",\"icon\":\"\",\"link\":\"pages/feed/index\",\"isPlatform\":1},{\"title\":\"动态\",\"icon\":\"\",\"link\":\"pages/feed/index\",\"isPlatform\":1},{\"title\":\"动态\",\"icon\":\"\",\"link\":\"pages/feed/index\",\"isPlatform\":1},{\"title\":\"动态\",\"icon\":\"\",\"link\":\"pages/feed/index\",\"isPlatform\":1}],\"style\":5},{\"title\":\"课程组件\",\"showTitle\":2,\"eduIds\":\"2,3,4\",\"style\":4},{\"title\":\"自定义图片组件\",\"showTitle\":2,\"image\":\"/public/uploads/2021-11-19/cftsrmz4obqsgk9ndy.jpg\",\"link\":\"http://fibercms.com/\",\"style\":6},{\"title\":\"投稿组件\",\"showTitle\":2,\"audioIds\":\"2,3,4\",\"videoIds\":\"2,3,4\",\"resourceIds\":\"2,3,4\",\"style\":7},{\"title\":\"文章组件\",\"showTitle\":2,\"articleIds\":\"2,3,4,1\",\"style\":3}]', '2021-11-30 14:34:02', '2021-11-30 14:44:09', '微信小程序首页设计');
INSERT INTO `sys_config` VALUES ('32', '积分设置', 'IntegralAndExperienceSetting', '{\"moneyToIntegral\":50,\"register\":20,\"signIn\":\"10-40\",\"createPost\":5,\"postCount\":2,\"createComment\":2,\"commentCount\":2,\"like\":2,\"likeCount\":2,\"favorite\":2,\"favoriteCount\":2,\"follow\":2,\"followCount\":2,\"report\":2,\"reportCount\":2,\"postEssence\":5,\"postEssenceCount\":2}', '2024-03-19 13:21:21', '2024-04-09 02:16:30', '积分设置');
INSERT INTO `sys_config` VALUES ('33', 'Apex设置', 'ApexSetting', '{\"season\":\"突破\",\"icon\":\"撒旦发射点发\",\"number\":\"20\",\"endTime\":\"sad法撒旦\",\"rankEndTime\":\"1715101200\"}', '2024-03-29 20:53:41', '2024-03-30 01:06:03', 'rankEndTime');

-- ----------------------------
-- Table structure for sys_experience
-- ----------------------------
DROP TABLE IF EXISTS `sys_experience`;
CREATE TABLE `sys_experience` (
  `experience_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `experience` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`experience_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_experience
-- ----------------------------
INSERT INTO `sys_experience` VALUES ('43', '1', '6', '50', '2024-03-25 17:34:09');
INSERT INTO `sys_experience` VALUES ('44', '1', '6', '50', '2024-03-25 17:35:54');
INSERT INTO `sys_experience` VALUES ('45', '1', '5', '50', '2024-03-25 17:37:04');
INSERT INTO `sys_experience` VALUES ('46', '1', '5', '50', '2024-03-25 17:39:07');
INSERT INTO `sys_experience` VALUES ('47', '1', '2', '67', '2024-03-25 17:59:32');
INSERT INTO `sys_experience` VALUES ('48', '1', '4', '50', '2024-03-25 18:02:11');
INSERT INTO `sys_experience` VALUES ('49', '1', '2', '87', '2024-03-26 00:29:25');
INSERT INTO `sys_experience` VALUES ('50', '1', '2', '55', '2024-03-27 01:14:39');
INSERT INTO `sys_experience` VALUES ('51', '1', '3', '50', '2024-03-27 15:52:40');
INSERT INTO `sys_experience` VALUES ('52', '1', '3', '50', '2024-03-27 15:53:15');
INSERT INTO `sys_experience` VALUES ('53', '1', '3', '50', '2024-03-27 16:06:36');
INSERT INTO `sys_experience` VALUES ('54', '1', '6', '50', '2024-03-29 02:24:03');
INSERT INTO `sys_experience` VALUES ('55', '1', '4', '50', '2024-03-29 20:24:51');
INSERT INTO `sys_experience` VALUES ('56', '1', '4', '50', '2024-03-31 23:46:22');
INSERT INTO `sys_experience` VALUES ('57', '1', '4', '50', '2024-04-01 00:13:59');
INSERT INTO `sys_experience` VALUES ('58', '1', '4', '50', '2024-04-01 00:29:29');
INSERT INTO `sys_experience` VALUES ('59', '1', '5', '50', '2024-04-01 01:03:24');
INSERT INTO `sys_experience` VALUES ('60', '1', '5', '50', '2024-04-01 01:03:32');
INSERT INTO `sys_experience` VALUES ('61', '1', '5', '50', '2024-04-01 01:03:33');
INSERT INTO `sys_experience` VALUES ('62', '1', '6', '50', '2024-04-01 02:24:32');
INSERT INTO `sys_experience` VALUES ('63', '1', '6', '50', '2024-04-01 03:07:43');
INSERT INTO `sys_experience` VALUES ('64', '1', '7', '50', '2024-04-01 16:55:50');
INSERT INTO `sys_experience` VALUES ('65', '1', '7', '50', '2024-04-01 16:55:50');
INSERT INTO `sys_experience` VALUES ('66', '1', '7', '50', '2024-04-01 16:55:51');
INSERT INTO `sys_experience` VALUES ('67', '1', '6', '50', '2024-04-04 19:29:32');
INSERT INTO `sys_experience` VALUES ('68', '1', '6', '50', '2024-04-04 19:34:18');
INSERT INTO `sys_experience` VALUES ('69', '1', '2', '53', '2024-04-04 19:37:55');
INSERT INTO `sys_experience` VALUES ('70', '1', '5', '50', '2024-04-04 19:39:57');
INSERT INTO `sys_experience` VALUES ('71', '1', '6', '50', '2024-04-04 20:55:54');
INSERT INTO `sys_experience` VALUES ('72', '1', '3', '50', '2024-04-06 03:50:54');
INSERT INTO `sys_experience` VALUES ('73', '1', '3', '5', '2024-05-01 23:42:30');
INSERT INTO `sys_experience` VALUES ('74', '1', '3', '5', '2024-05-01 23:45:38');

-- ----------------------------
-- Table structure for sys_forum
-- ----------------------------
DROP TABLE IF EXISTS `sys_forum`;
CREATE TABLE `sys_forum` (
  `forum_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(50) DEFAULT NULL COMMENT '分类别名',
  `cover` varchar(255) DEFAULT NULL COMMENT '分类背景图',
  `sort` int(10) DEFAULT NULL COMMENT '分类排序',
  `keywords` varchar(50) DEFAULT NULL COMMENT '分类关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '分类描述',
  `isTop` tinyint(4) DEFAULT '1' COMMENT '分类状态 1 不推荐 2推荐',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `delete_time` datetime DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`forum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_forum
-- ----------------------------
INSERT INTO `sys_forum` VALUES ('1', 'Apex', 'apex', 'https://q1.itc.cn/images01/20240302/34cc254096ae4648b034b7d1ff4fe7af.png', '0', 'Apex英雄', null, '1', '2023-03-11 17:12:25', '2023-03-11 17:12:27', null);

-- ----------------------------
-- Table structure for sys_grade
-- ----------------------------
DROP TABLE IF EXISTS `sys_grade`;
CREATE TABLE `sys_grade` (
  `grade_id` bigint(10) NOT NULL AUTO_INCREMENT,
  `next` bigint(4) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `experience` bigint(10) DEFAULT NULL,
  `auth` text,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_grade
-- ----------------------------
INSERT INTO `sys_grade` VALUES ('1', '2', 'Lv1', '/public/uploads/2024-04-09/d0exndd2p8atepewlc.png', '0', '[\"like\",\"favorite\",\"message\",\"follow\"]');
INSERT INTO `sys_grade` VALUES ('2', '3', 'Lv2', '/public/uploads/2024-04-09/d0exrpv95nx8fmbjrz.png', '200', '[\"post\",\"like\",\"comment\",\"favorite\",\"message\",\"upload\",\"follow\",\"report\"]');
INSERT INTO `sys_grade` VALUES ('3', '4', 'Lv3', '/public/uploads/2024-04-09/d0ey4tea1y53aawxh3.png', '400', '[\"post\",\"like\",\"comment\",\"favorite\",\"message\",\"upload\",\"follow\",\"report\"]');
INSERT INTO `sys_grade` VALUES ('4', '0', 'Lv4', '/public/uploads/2024-04-09/d0ey4w8wsloapoaknn.png', '800', '[\"post\",\"like\",\"favorite\",\"comment\",\"message\",\"upload\",\"follow\",\"report\"]');

-- ----------------------------
-- Table structure for sys_integral
-- ----------------------------
DROP TABLE IF EXISTS `sys_integral`;
CREATE TABLE `sys_integral` (
  `integral_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `mode` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `integral` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`integral_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_integral
-- ----------------------------
INSERT INTO `sys_integral` VALUES ('50', '1', '32', 'post', '2', '10', '50', '2024-03-24 02:25:38');
INSERT INTO `sys_integral` VALUES ('51', '2', '32', 'post', '1', '10', '50', '2024-03-24 02:25:38');
INSERT INTO `sys_integral` VALUES ('52', '1', null, null, '1', '5', '50', '2024-03-24 03:44:50');
INSERT INTO `sys_integral` VALUES ('53', '1', null, null, '1', '6', '50', '2024-03-24 03:44:51');
INSERT INTO `sys_integral` VALUES ('54', '1', null, null, '1', '6', '50', '2024-03-24 03:44:52');
INSERT INTO `sys_integral` VALUES ('55', '1', null, null, '1', '7', '50', '2024-03-24 15:59:20');
INSERT INTO `sys_integral` VALUES ('56', '1', null, null, '1', '7', '50', '2024-03-24 15:59:22');
INSERT INTO `sys_integral` VALUES ('57', '1', null, null, '1', '7', '50', '2024-03-24 15:59:22');
INSERT INTO `sys_integral` VALUES ('58', '1', null, null, '1', '5', '50', '2024-03-24 23:54:52');
INSERT INTO `sys_integral` VALUES ('59', '1', null, null, '1', '5', '50', '2024-03-24 23:55:08');
INSERT INTO `sys_integral` VALUES ('60', '1', null, null, '1', '5', '50', '2024-03-25 00:00:09');
INSERT INTO `sys_integral` VALUES ('61', '1', null, null, '1', '5', '50', '2024-03-25 00:00:34');
INSERT INTO `sys_integral` VALUES ('62', '1', null, null, '1', '5', '50', '2024-03-25 00:01:03');
INSERT INTO `sys_integral` VALUES ('63', '1', null, null, '1', '7', '50', '2024-03-25 02:09:35');
INSERT INTO `sys_integral` VALUES ('64', '1', null, null, '1', '7', '50', '2024-03-25 02:09:47');
INSERT INTO `sys_integral` VALUES ('65', '1', null, null, '1', '6', '50', '2024-03-25 17:30:19');
INSERT INTO `sys_integral` VALUES ('66', '1', null, null, '1', '6', '50', '2024-03-25 17:30:29');
INSERT INTO `sys_integral` VALUES ('67', '1', null, null, '1', '6', '50', '2024-03-25 17:31:15');
INSERT INTO `sys_integral` VALUES ('68', '1', null, null, '1', '2', '67', '2024-03-25 17:59:32');
INSERT INTO `sys_integral` VALUES ('69', '1', null, null, '2', '4', '50', '2024-03-25 18:02:11');
INSERT INTO `sys_integral` VALUES ('70', '1', null, null, '1', '2', '87', '2024-03-26 00:29:25');
INSERT INTO `sys_integral` VALUES ('71', '1', null, null, '1', '1', '2500', '2024-03-26 01:58:27');
INSERT INTO `sys_integral` VALUES ('72', '1', null, null, '1', '2', '55', '2024-03-27 01:14:39');
INSERT INTO `sys_integral` VALUES ('73', '1', null, null, '1', '3', '50', '2024-03-27 15:52:40');
INSERT INTO `sys_integral` VALUES ('74', '1', null, null, '1', '3', '50', '2024-03-27 15:53:15');
INSERT INTO `sys_integral` VALUES ('75', '1', null, null, '1', '3', '50', '2024-03-27 16:06:36');
INSERT INTO `sys_integral` VALUES ('76', '1', null, null, '1', '6', '50', '2024-03-29 02:24:03');
INSERT INTO `sys_integral` VALUES ('77', '1', null, null, '1', '4', '50', '2024-03-29 20:24:51');
INSERT INTO `sys_integral` VALUES ('78', '1', null, null, '1', '4', '50', '2024-03-31 23:46:22');
INSERT INTO `sys_integral` VALUES ('79', '1', null, null, '1', '4', '50', '2024-04-01 00:13:59');
INSERT INTO `sys_integral` VALUES ('80', '1', null, null, '1', '4', '50', '2024-04-01 00:29:29');
INSERT INTO `sys_integral` VALUES ('81', '1', null, null, '1', '5', '50', '2024-04-01 01:03:24');
INSERT INTO `sys_integral` VALUES ('82', '1', null, null, '1', '5', '50', '2024-04-01 01:03:32');
INSERT INTO `sys_integral` VALUES ('83', '1', null, null, '1', '5', '50', '2024-04-01 01:03:33');
INSERT INTO `sys_integral` VALUES ('84', '1', null, null, '1', '6', '50', '2024-04-01 02:24:32');
INSERT INTO `sys_integral` VALUES ('85', '1', null, null, '1', '6', '50', '2024-04-01 03:07:43');
INSERT INTO `sys_integral` VALUES ('86', '1', null, null, '1', '7', '50', '2024-04-01 16:55:50');
INSERT INTO `sys_integral` VALUES ('87', '1', null, null, '1', '7', '50', '2024-04-01 16:55:50');
INSERT INTO `sys_integral` VALUES ('88', '1', null, null, '1', '7', '50', '2024-04-01 16:55:51');
INSERT INTO `sys_integral` VALUES ('89', '1', null, null, '1', '6', '50', '2024-04-04 19:29:32');
INSERT INTO `sys_integral` VALUES ('90', '1', null, null, '1', '6', '50', '2024-04-04 19:34:18');
INSERT INTO `sys_integral` VALUES ('91', '1', null, null, '1', '2', '53', '2024-04-04 19:37:55');
INSERT INTO `sys_integral` VALUES ('92', '1', null, null, '1', '5', '50', '2024-04-04 19:39:57');
INSERT INTO `sys_integral` VALUES ('93', '1', null, null, '1', '6', '50', '2024-04-04 20:55:54');
INSERT INTO `sys_integral` VALUES ('94', '1', null, null, '1', '3', '50', '2024-04-06 03:50:54');
INSERT INTO `sys_integral` VALUES ('95', '1', null, null, '1', '3', '5', '2024-05-01 23:42:30');
INSERT INTO `sys_integral` VALUES ('96', '1', null, null, '1', '3', '5', '2024-05-01 23:45:38');

-- ----------------------------
-- Table structure for sys_manger
-- ----------------------------
DROP TABLE IF EXISTS `sys_manger`;
CREATE TABLE `sys_manger` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` tinyint(4) DEFAULT '3' COMMENT '用户性别（1男 2女 3未知）',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `salt` char(10) DEFAULT NULL COMMENT '密码盐',
  `status` tinyint(4) DEFAULT '0' COMMENT '帐号状态（1停用,2正常）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_time` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `delete_time` datetime DEFAULT NULL COMMENT '软删除',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_manger
-- ----------------------------
INSERT INTO `sys_manger` VALUES ('1', 'Eforinaj', '973728679@qq.com', '', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3nw7klmpy3rihv3j.jpg', 'f3565ae9276f3b7244230c1bcbb4ff4c', 'ePJsln', '2', '[::1]', '2024-05-02 19:07:26', '2021-05-10 05:50:02', '2022-05-19 18:21:46', '', null);
INSERT INTO `sys_manger` VALUES ('3', '新用户248752', 'test@admin.com', '', '1', 'http://beethorn.com/public/uploads/2022-05-19/ck3nwb7r2eobowdifx.jpg', '528fae61d5899c4eb7edc13bc9ed1945', 'Zh0DRf', '2', '[::1]', '2024-05-02 19:50:25', '2021-05-10 05:58:47', '2022-05-19 18:22:11', '', null);

-- ----------------------------
-- Table structure for sys_manger_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_manger_role`;
CREATE TABLE `sys_manger_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_manger_role
-- ----------------------------
INSERT INTO `sys_manger_role` VALUES ('1', '1');
INSERT INTO `sys_manger_role` VALUES ('3', '15');

-- ----------------------------
-- Table structure for sys_media
-- ----------------------------
DROP TABLE IF EXISTS `sys_media`;
CREATE TABLE `sys_media` (
  `media_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '上传的用户',
  `path` varchar(255) DEFAULT NULL COMMENT '存放路径',
  `name` varchar(50) DEFAULT NULL COMMENT '文件名称',
  `or_name` varchar(50) DEFAULT NULL COMMENT '原始文件名称',
  `size` varchar(50) NOT NULL COMMENT '文件大小',
  `ext` varchar(10) DEFAULT NULL COMMENT '文件后缀',
  `status` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `delete_time` datetime DEFAULT NULL,
  `media_type` varchar(20) DEFAULT NULL COMMENT '文件类型',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`media_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_media
-- ----------------------------
INSERT INTO `sys_media` VALUES ('102', '1', '/public/uploads/2024-04-09/d0exndd2p8atepewlc.png', 'd0exndd2p8atepewlc.png', 'user-level-1.png', '6034', '.png', '2', '2024-04-09 01:55:17', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('103', '1', '/public/uploads/2024-04-09/d0exrpv95nx8fmbjrz.png', 'd0exrpv95nx8fmbjrz.png', 'user-level-2.png', '5962', '.png', '2', '2024-04-09 02:00:58', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('104', '1', '/public/uploads/2024-04-09/d0ey4tea1y53aawxh3.png', 'd0ey4tea1y53aawxh3.png', 'user-level-3.png', '6270', '.png', '2', '2024-04-09 02:18:04', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('105', '1', '/public/uploads/2024-04-09/d0ey4w8wsloapoaknn.png', 'd0ey4w8wsloapoaknn.png', 'user-level-4.png', '6438', '.png', '2', '2024-04-09 02:18:10', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('106', '1', '/public/uploads/2024-04-09/d0eyif8u7c8xjrroau.png', 'd0eyif8u7c8xjrroau.png', '截屏2022-01-05-下午2.48.12.png', '8178', '.png', '1', '2024-04-09 02:35:50', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('107', '1', '/public/uploads/2024-04-09/d0ez3ezur5mwmotojl.png', 'd0ez3ezur5mwmotojl.png', '摇摆云.png', '232869', '.png', '1', '2024-04-09 03:03:15', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('108', '1', '/public/uploads/2024-04-09/d0ffy1du1nscp30y60.png', 'd0ffy1du1nscp30y60.png', 'Shane@2x.bee12e83.png', '44763', '.png', '1', '2024-04-09 16:15:33', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('109', '1', '/public/uploads/2024-04-09/d0fg4msj3btkokn6da.png', 'd0fg4msj3btkokn6da.png', 'thumb.png', '45080', '.png', '1', '2024-04-09 16:24:10', null, 'PNG', '');
INSERT INTO `sys_media` VALUES ('110', '1', '/public/uploads/2024-05-01/d0y5fknsmr94ge6kyb.jpg', 'd0y5fknsmr94ge6kyb.jpg', '20230808165725_1.jpg', '428137', '.jpg', '1', '2024-05-01 16:01:54', null, 'JPG', '');
INSERT INTO `sys_media` VALUES ('111', '1', '/public/uploads/2024-05-01/d0y5fnk0q1a8rfqgne.jpg', 'd0y5fnk0q1a8rfqgne.jpg', '20230808165725_1.jpg', '428137', '.jpg', '1', '2024-05-01 16:02:00', null, 'JPG', '');
INSERT INTO `sys_media` VALUES ('112', '1', '/public/uploads/2024-05-01/d0yf4s79ev3cph31hr.jpg', 'd0yf4s79ev3cph31hr.jpg', '20230808165725_1.jpg', '428137', '.jpg', '1', '2024-05-01 23:37:59', null, 'JPG', '');
INSERT INTO `sys_media` VALUES ('113', '1', '/public/uploads/2024-05-01/d0yf5dx7fwiksvjb3e.jpg', 'd0yf5dx7fwiksvjb3e.jpg', '20230808165725_1.jpg', '428137', '.jpg', '1', '2024-05-01 23:38:47', null, 'JPG', '');
INSERT INTO `sys_media` VALUES ('114', '1', '/public/uploads/2024-05-01/d0yf670q9vmwuuw3fw.jpg', 'd0yf670q9vmwuuw3fw.jpg', '20230808165725_1.jpg', '428137', '.jpg', '1', '2024-05-01 23:39:50', null, 'JPG', '');
INSERT INTO `sys_media` VALUES ('115', '1', '/public/uploads/2024-05-01/d0yf83nain44rhbbkv.jpg', 'd0yf83nain44rhbbkv.jpg', '20230808165725_1.jpg', '428137', '.jpg', '1', '2024-05-01 23:42:19', null, 'JPG', '');
INSERT INTO `sys_media` VALUES ('116', '1', '/public/uploads/2024-05-01/d0yfaldih7hk8cmmfh.jpg', 'd0yfaldih7hk8cmmfh.jpg', '20230808165725_1.jpg', '428137', '.jpg', '2', '2024-05-01 23:45:35', null, 'JPG', '');
INSERT INTO `sys_media` VALUES ('117', '1', '/public/uploads/2024-05-02/d0z47x5whk68ngrqqx.jpg', 'd0z47x5whk68ngrqqx.jpg', '20230808165725_1.jpg', '428137', '.jpg', '1', '2024-05-02 19:17:33', null, 'JPG', '');
INSERT INTO `sys_media` VALUES ('118', '1', '/public/uploads/2024-05-02/d0z4a2jnp3xszwwbld.jpg', 'd0z4a2jnp3xszwwbld.jpg', '20230808165725_1.jpg', '428137', '.jpg', '2', '2024-05-02 19:20:22', null, 'JPG', '');

-- ----------------------------
-- Table structure for sys_media_related
-- ----------------------------
DROP TABLE IF EXISTS `sys_media_related`;
CREATE TABLE `sys_media_related` (
  `media_id` bigint(20) NOT NULL,
  `related_id` bigint(20) NOT NULL,
  `module` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_media_related
-- ----------------------------
INSERT INTO `sys_media_related` VALUES ('102', '1', 'grade');
INSERT INTO `sys_media_related` VALUES ('103', '2', 'grade');
INSERT INTO `sys_media_related` VALUES ('104', '3', 'grade');
INSERT INTO `sys_media_related` VALUES ('105', '4', 'grade');
INSERT INTO `sys_media_related` VALUES ('116', '3', 'post');
INSERT INTO `sys_media_related` VALUES ('118', '5', 'post');

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message` (
  `message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `receiver` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `content` text,
  `status` tinyint(4) DEFAULT NULL,
  `is_show_create_time` tinyint(4) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_message
-- ----------------------------
INSERT INTO `sys_message` VALUES ('1', '2', '1', 'fdgsdfgsdfg', '2', '1', '2024-03-24 16:36:10');
INSERT INTO `sys_message` VALUES ('2', '1', '2', 'sdfasdfasdf', '2', '2', '2024-03-25 03:38:01');
INSERT INTO `sys_message` VALUES ('3', '1', '2', '规划尽快发规划', '2', '1', '2024-03-25 03:38:14');
INSERT INTO `sys_message` VALUES ('4', '1', '2', '的方式广东省分公司', '2', '2', '2024-03-25 12:46:11');
INSERT INTO `sys_message` VALUES ('5', '1', '2', '广泛受到法国', '2', '2', '2024-03-25 12:46:20');
INSERT INTO `sys_message` VALUES ('6', '1', '2', '梵蒂冈地方官', '2', '1', '2024-03-25 12:46:29');
INSERT INTO `sys_message` VALUES ('7', '2', '1', '豆腐干岁的法国', '2', '2', '2024-03-25 13:07:43');
INSERT INTO `sys_message` VALUES ('8', '2', '1', '打发十分大师傅1', '2', '1', '2024-03-25 14:02:11');
INSERT INTO `sys_message` VALUES ('9', '1', '2', 'fgsdfgsdfg', '2', '1', '2024-03-25 15:24:00');
INSERT INTO `sys_message` VALUES ('10', '1', '2', '的方式根深蒂固当时法国是', '2', '1', '2024-03-25 15:24:10');
INSERT INTO `sys_message` VALUES ('11', '1', '2', '发的公司的法国收到岁的法国', '2', '1', '2024-03-25 15:24:23');
INSERT INTO `sys_message` VALUES ('12', '2', '1', '法国岁的法国岁的法国', '2', '1', '2024-03-25 15:24:37');
INSERT INTO `sys_message` VALUES ('13', '1', '2', '国际法更好的风格和法定规划', '2', '1', '2024-03-25 15:24:47');
INSERT INTO `sys_message` VALUES ('14', '2', '1', 'sdfasdfsadfsfsa', '2', '1', '2024-03-25 15:43:43');
INSERT INTO `sys_message` VALUES ('15', '2', '1', '士大夫撒旦发', '2', '1', '2024-03-25 15:44:21');
INSERT INTO `sys_message` VALUES ('16', '2', '1', '回归方程地方', '2', '1', '2024-03-25 15:52:14');
INSERT INTO `sys_message` VALUES ('17', '2', '1', '让他有的人法国', '2', '1', '2024-03-25 16:39:09');
INSERT INTO `sys_message` VALUES ('18', '2', '1', '工会经费', '2', '1', '2024-03-25 16:39:35');
INSERT INTO `sys_message` VALUES ('19', '2', '1', '十大发射点', '2', '1', '2024-03-25 17:03:34');
INSERT INTO `sys_message` VALUES ('20', '2', '1', '十大发射点上帝发誓', '2', '1', '2024-03-25 17:10:52');
INSERT INTO `sys_message` VALUES ('21', '2', '1', '撒地方撒旦', '2', '1', '2024-03-25 17:14:25');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `user_id` bigint(20) DEFAULT NULL,
  `receiver` bigint(20) DEFAULT NULL COMMENT '接收者',
  `module` varchar(50) DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '是否阅读1未阅读，2已阅读',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('36', '0', '1', 'announcement', '3', '1', '2', '2024-04-05 00:09:58');

-- ----------------------------
-- Table structure for sys_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_order`;
CREATE TABLE `sys_order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '下单人id',
  `author_id` bigint(20) DEFAULT NULL COMMENT '作者id',
  `pay_method` tinyint(4) DEFAULT NULL COMMENT '支付方式：1支付宝，2微信，3余额',
  `order_money` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `district_money` decimal(10,2) DEFAULT NULL COMMENT '优惠金额',
  `author_money` decimal(10,2) DEFAULT NULL COMMENT '作者收益',
  `service_money` decimal(10,2) DEFAULT NULL COMMENT '服务费',
  `payment_money` decimal(10,2) DEFAULT NULL COMMENT '支付金额',
  `order_point` bigint(10) unsigned DEFAULT '0' COMMENT '订单积分',
  `order_type` tinyint(4) DEFAULT NULL COMMENT '订单类型: 1 充值，2打赏充电，3内容购买，4查看话题隐藏内容  ,5加入付费圈子,6购买付费课程,7查看付费答案，8开通vip，9认证付费，10需求付费',
  `order_mode` tinyint(4) DEFAULT NULL COMMENT '订单方式：1虚拟物品，2实体物品',
  `shipping_money` decimal(10,2) DEFAULT NULL COMMENT '运输费用',
  `shipping_address` varchar(100) DEFAULT NULL COMMENT '收获地址',
  `shipping_comp_name` varchar(10) DEFAULT NULL COMMENT '快递公司',
  `shipping_phone` varchar(50) DEFAULT NULL COMMENT '收货人联系方式',
  `shipping_name` varchar(50) DEFAULT NULL COMMENT '收货人姓名',
  `shipping_sn` varchar(60) DEFAULT NULL COMMENT '快递单号',
  `shipping_time` datetime DEFAULT NULL COMMENT '发货时间',
  `detail_id` bigint(20) DEFAULT NULL,
  `detail_module` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '订单状态 1未支付，2已支付',
  `invoice` varchar(100) DEFAULT NULL COMMENT '发票抬头',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_order
-- ----------------------------

-- ----------------------------
-- Table structure for sys_page
-- ----------------------------
DROP TABLE IF EXISTS `sys_page`;
CREATE TABLE `sys_page` (
  `page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `content` mediumtext,
  `status` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_page
-- ----------------------------
INSERT INTO `sys_page` VALUES ('1', '用户协议', 'yhxy', '（BeeThorn）快速开发平台采用Apache-2.0技术协议</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">二次开发如用于商业性质或开源竞品请不要删除和修改蜂刺（BeeThorn）源码头部的版权与作者声明及出处</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">允许进行商用，但是不允许二次开源出来并进行收费</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">我们已经申请了相关的软件著作权和相关登记</span></p>\n</li>\n<li class=\"md-list-item\">\n<p class=\"md-end-block md-p\"><span class=\"md-plain\">如果您在自己的项目中使用了我们项目中的扩展或模块，请在项目介绍中进行明确说明</span></p>\n</li>\n</ul>\n<h2 class=\"md-end-block md-heading\"><span class=\"md-plain\">支持开源</span></h2>\n<p class=\"md-end-block md-p md-focus\"><span class=\"md-plain\">如果您喜爱蜂刺（BeeThorn），请给常熬夜的作者资金赞助一下吧！</span></p>', '2', '2022-06-19 17:47:01', '2022-06-19 17:47:04');
INSERT INTO `sys_page` VALUES ('2', '关于我们', 'aboutme', '<p>关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们</p>', '2', '2022-06-19 19:41:05', '2022-06-19 19:41:05');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '发布用户',
  `forum_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `type` tinyint(4) NOT NULL COMMENT '类型 1帖子，2问答',
  `title` varchar(255) DEFAULT NULL COMMENT '话题',
  `content` text,
  `setResource` tinyint(4) DEFAULT NULL,
  `resource` text,
  `images` text COMMENT '文件链接',
  `video` varchar(255) DEFAULT NULL,
  `favorites` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL COMMENT '查看',
  `likes` bigint(20) DEFAULT NULL,
  `hots` bigint(20) DEFAULT '0',
  `comments` bigint(20) DEFAULT NULL,
  `is_top` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：0全部,1待审核 ，2已发布 ，3拒绝，4草稿',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_recharge
-- ----------------------------
DROP TABLE IF EXISTS `sys_recharge`;
CREATE TABLE `sys_recharge` (
  `recharge_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL COMMENT '充值金额',
  `mode` tinyint(4) DEFAULT NULL COMMENT '充值方式：1支付宝，2微信，3卡密，4人工转账',
  `card_key` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '转账人名称',
  `type` tinyint(4) DEFAULT NULL COMMENT '转账类型：1支付宝，2微信',
  `number` varchar(50) DEFAULT NULL COMMENT '转账单号',
  `status` tinyint(4) DEFAULT NULL COMMENT '充值状态：1待审核，2已充值，3未充值',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`recharge_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_recharge
-- ----------------------------
INSERT INTO `sys_recharge` VALUES ('54', '1', 'C171082953961625408831', '20.00', '3', 'fghsdfhgsdfgs', '', '1', '', '1', '2024-03-19 14:25:39', '2024-03-19 14:25:39', 'asdasdas');

-- ----------------------------
-- Table structure for sys_report
-- ----------------------------
DROP TABLE IF EXISTS `sys_report`;
CREATE TABLE `sys_report` (
  `report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '举报类型 1广告垃圾，2违规内容，3恶意灌水，4重复发帖',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `remark` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态，2 已处理，1 未处理',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_report
-- ----------------------------

-- ----------------------------
-- Table structure for sys_reward
-- ----------------------------
DROP TABLE IF EXISTS `sys_reward`;
CREATE TABLE `sys_reward` (
  `reward_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `collection_id` bigint(20) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`reward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_reward
-- ----------------------------
INSERT INTO `sys_reward` VALUES ('1', 'player', '9', '1', null, '20.00', '2024-03-23 16:07:11');
INSERT INTO `sys_reward` VALUES ('2', 'player', '9', '1', '2', '50.00', '2024-03-23 16:17:58');
INSERT INTO `sys_reward` VALUES ('3', 'player', '9', '1', '2', '50.00', '2024-03-23 16:19:36');
INSERT INTO `sys_reward` VALUES ('4', 'article', '9', '1', '0', '20.00', '2024-03-23 16:25:42');
INSERT INTO `sys_reward` VALUES ('5', 'player', '9', '1', '2', '20.00', '2024-03-23 16:36:03');
INSERT INTO `sys_reward` VALUES ('6', 'article', '32', '1', '1', '20.00', '2024-03-24 02:27:18');
INSERT INTO `sys_reward` VALUES ('7', 'article', '31', '1', '2', '20.00', '2024-03-27 01:06:11');
INSERT INTO `sys_reward` VALUES ('8', 'post', '41', '1', '1', '2.00', '2024-03-31 17:45:34');
INSERT INTO `sys_reward` VALUES ('9', 'post', '41', '1', '1', '2.00', '2024-03-31 17:46:04');
INSERT INTO `sys_reward` VALUES ('10', 'post', '41', '1', '1', '2.00', '2024-03-31 17:46:24');
INSERT INTO `sys_reward` VALUES ('11', 'post', '41', '1', '1', '2.00', '2024-03-31 20:41:41');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `title` varchar(30) NOT NULL COMMENT '角色名称',
  `status` tinyint(4) NOT NULL COMMENT '角色状态（2正常 1停用）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', '2', '2021-08-26 11:38:26', '2024-03-29 01:27:37', '');
INSERT INTO `sys_role` VALUES ('15', '后台演示', '2', '2021-08-26 11:41:08', '2024-05-02 19:50:17', '');
INSERT INTO `sys_role` VALUES ('16', '测试角色', '1', '2021-09-20 01:12:54', '2022-05-19 18:21:26', '');

-- ----------------------------
-- Table structure for sys_role_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_authority`;
CREATE TABLE `sys_role_authority` (
  `role_id` bigint(20) NOT NULL,
  `authority_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_authority
-- ----------------------------
INSERT INTO `sys_role_authority` VALUES ('1', '1');
INSERT INTO `sys_role_authority` VALUES ('1', '2');
INSERT INTO `sys_role_authority` VALUES ('1', '3');
INSERT INTO `sys_role_authority` VALUES ('1', '4');
INSERT INTO `sys_role_authority` VALUES ('1', '5');
INSERT INTO `sys_role_authority` VALUES ('1', '8');
INSERT INTO `sys_role_authority` VALUES ('1', '9');
INSERT INTO `sys_role_authority` VALUES ('1', '10');
INSERT INTO `sys_role_authority` VALUES ('1', '11');
INSERT INTO `sys_role_authority` VALUES ('1', '12');
INSERT INTO `sys_role_authority` VALUES ('1', '14');
INSERT INTO `sys_role_authority` VALUES ('1', '15');
INSERT INTO `sys_role_authority` VALUES ('1', '16');
INSERT INTO `sys_role_authority` VALUES ('1', '17');
INSERT INTO `sys_role_authority` VALUES ('1', '18');
INSERT INTO `sys_role_authority` VALUES ('1', '19');
INSERT INTO `sys_role_authority` VALUES ('1', '20');
INSERT INTO `sys_role_authority` VALUES ('1', '21');
INSERT INTO `sys_role_authority` VALUES ('1', '28');
INSERT INTO `sys_role_authority` VALUES ('1', '32');
INSERT INTO `sys_role_authority` VALUES ('1', '34');
INSERT INTO `sys_role_authority` VALUES ('1', '42');
INSERT INTO `sys_role_authority` VALUES ('1', '43');
INSERT INTO `sys_role_authority` VALUES ('1', '44');
INSERT INTO `sys_role_authority` VALUES ('1', '45');
INSERT INTO `sys_role_authority` VALUES ('1', '46');
INSERT INTO `sys_role_authority` VALUES ('1', '47');
INSERT INTO `sys_role_authority` VALUES ('1', '48');
INSERT INTO `sys_role_authority` VALUES ('1', '56');
INSERT INTO `sys_role_authority` VALUES ('1', '57');
INSERT INTO `sys_role_authority` VALUES ('1', '93');
INSERT INTO `sys_role_authority` VALUES ('1', '94');
INSERT INTO `sys_role_authority` VALUES ('1', '96');
INSERT INTO `sys_role_authority` VALUES ('1', '97');
INSERT INTO `sys_role_authority` VALUES ('1', '101');
INSERT INTO `sys_role_authority` VALUES ('1', '102');
INSERT INTO `sys_role_authority` VALUES ('1', '103');
INSERT INTO `sys_role_authority` VALUES ('1', '104');
INSERT INTO `sys_role_authority` VALUES ('1', '117');
INSERT INTO `sys_role_authority` VALUES ('1', '118');
INSERT INTO `sys_role_authority` VALUES ('1', '119');
INSERT INTO `sys_role_authority` VALUES ('1', '121');
INSERT INTO `sys_role_authority` VALUES ('1', '122');
INSERT INTO `sys_role_authority` VALUES ('1', '123');
INSERT INTO `sys_role_authority` VALUES ('1', '124');
INSERT INTO `sys_role_authority` VALUES ('1', '125');
INSERT INTO `sys_role_authority` VALUES ('1', '126');
INSERT INTO `sys_role_authority` VALUES ('1', '131');
INSERT INTO `sys_role_authority` VALUES ('1', '132');
INSERT INTO `sys_role_authority` VALUES ('1', '133');
INSERT INTO `sys_role_authority` VALUES ('1', '134');
INSERT INTO `sys_role_authority` VALUES ('1', '135');
INSERT INTO `sys_role_authority` VALUES ('1', '136');
INSERT INTO `sys_role_authority` VALUES ('1', '137');
INSERT INTO `sys_role_authority` VALUES ('1', '138');
INSERT INTO `sys_role_authority` VALUES ('1', '139');
INSERT INTO `sys_role_authority` VALUES ('1', '140');
INSERT INTO `sys_role_authority` VALUES ('1', '141');
INSERT INTO `sys_role_authority` VALUES ('1', '142');
INSERT INTO `sys_role_authority` VALUES ('1', '143');
INSERT INTO `sys_role_authority` VALUES ('1', '144');
INSERT INTO `sys_role_authority` VALUES ('1', '145');
INSERT INTO `sys_role_authority` VALUES ('1', '146');
INSERT INTO `sys_role_authority` VALUES ('1', '147');
INSERT INTO `sys_role_authority` VALUES ('1', '148');
INSERT INTO `sys_role_authority` VALUES ('1', '151');
INSERT INTO `sys_role_authority` VALUES ('1', '152');
INSERT INTO `sys_role_authority` VALUES ('1', '153');
INSERT INTO `sys_role_authority` VALUES ('1', '154');
INSERT INTO `sys_role_authority` VALUES ('1', '155');
INSERT INTO `sys_role_authority` VALUES ('1', '156');
INSERT INTO `sys_role_authority` VALUES ('1', '157');
INSERT INTO `sys_role_authority` VALUES ('1', '158');
INSERT INTO `sys_role_authority` VALUES ('1', '159');
INSERT INTO `sys_role_authority` VALUES ('1', '161');
INSERT INTO `sys_role_authority` VALUES ('1', '162');
INSERT INTO `sys_role_authority` VALUES ('1', '163');
INSERT INTO `sys_role_authority` VALUES ('1', '164');
INSERT INTO `sys_role_authority` VALUES ('1', '165');
INSERT INTO `sys_role_authority` VALUES ('1', '166');
INSERT INTO `sys_role_authority` VALUES ('1', '167');
INSERT INTO `sys_role_authority` VALUES ('1', '168');
INSERT INTO `sys_role_authority` VALUES ('1', '174');
INSERT INTO `sys_role_authority` VALUES ('1', '175');
INSERT INTO `sys_role_authority` VALUES ('1', '177');
INSERT INTO `sys_role_authority` VALUES ('1', '205');
INSERT INTO `sys_role_authority` VALUES ('1', '206');
INSERT INTO `sys_role_authority` VALUES ('1', '207');
INSERT INTO `sys_role_authority` VALUES ('1', '216');
INSERT INTO `sys_role_authority` VALUES ('1', '240');
INSERT INTO `sys_role_authority` VALUES ('1', '241');
INSERT INTO `sys_role_authority` VALUES ('1', '242');
INSERT INTO `sys_role_authority` VALUES ('1', '243');
INSERT INTO `sys_role_authority` VALUES ('1', '244');
INSERT INTO `sys_role_authority` VALUES ('1', '245');
INSERT INTO `sys_role_authority` VALUES ('1', '246');
INSERT INTO `sys_role_authority` VALUES ('1', '247');
INSERT INTO `sys_role_authority` VALUES ('1', '253');
INSERT INTO `sys_role_authority` VALUES ('1', '254');
INSERT INTO `sys_role_authority` VALUES ('1', '255');
INSERT INTO `sys_role_authority` VALUES ('1', '256');
INSERT INTO `sys_role_authority` VALUES ('1', '257');
INSERT INTO `sys_role_authority` VALUES ('1', '258');
INSERT INTO `sys_role_authority` VALUES ('1', '259');
INSERT INTO `sys_role_authority` VALUES ('1', '263');
INSERT INTO `sys_role_authority` VALUES ('1', '264');
INSERT INTO `sys_role_authority` VALUES ('1', '265');
INSERT INTO `sys_role_authority` VALUES ('1', '274');
INSERT INTO `sys_role_authority` VALUES ('1', '275');
INSERT INTO `sys_role_authority` VALUES ('1', '276');
INSERT INTO `sys_role_authority` VALUES ('1', '278');
INSERT INTO `sys_role_authority` VALUES ('1', '279');
INSERT INTO `sys_role_authority` VALUES ('1', '280');
INSERT INTO `sys_role_authority` VALUES ('1', '281');
INSERT INTO `sys_role_authority` VALUES ('1', '282');
INSERT INTO `sys_role_authority` VALUES ('1', '283');
INSERT INTO `sys_role_authority` VALUES ('1', '287');
INSERT INTO `sys_role_authority` VALUES ('1', '288');
INSERT INTO `sys_role_authority` VALUES ('1', '289');
INSERT INTO `sys_role_authority` VALUES ('1', '292');
INSERT INTO `sys_role_authority` VALUES ('1', '293');
INSERT INTO `sys_role_authority` VALUES ('15', '1');
INSERT INTO `sys_role_authority` VALUES ('15', '2');
INSERT INTO `sys_role_authority` VALUES ('15', '3');
INSERT INTO `sys_role_authority` VALUES ('15', '4');
INSERT INTO `sys_role_authority` VALUES ('15', '5');
INSERT INTO `sys_role_authority` VALUES ('15', '8');
INSERT INTO `sys_role_authority` VALUES ('15', '9');
INSERT INTO `sys_role_authority` VALUES ('15', '10');
INSERT INTO `sys_role_authority` VALUES ('15', '11');
INSERT INTO `sys_role_authority` VALUES ('15', '12');
INSERT INTO `sys_role_authority` VALUES ('15', '14');
INSERT INTO `sys_role_authority` VALUES ('15', '15');
INSERT INTO `sys_role_authority` VALUES ('15', '16');
INSERT INTO `sys_role_authority` VALUES ('15', '17');
INSERT INTO `sys_role_authority` VALUES ('15', '18');
INSERT INTO `sys_role_authority` VALUES ('15', '19');
INSERT INTO `sys_role_authority` VALUES ('15', '20');
INSERT INTO `sys_role_authority` VALUES ('15', '21');
INSERT INTO `sys_role_authority` VALUES ('15', '28');
INSERT INTO `sys_role_authority` VALUES ('15', '32');
INSERT INTO `sys_role_authority` VALUES ('15', '34');
INSERT INTO `sys_role_authority` VALUES ('15', '42');
INSERT INTO `sys_role_authority` VALUES ('15', '43');
INSERT INTO `sys_role_authority` VALUES ('15', '44');
INSERT INTO `sys_role_authority` VALUES ('15', '45');
INSERT INTO `sys_role_authority` VALUES ('15', '46');
INSERT INTO `sys_role_authority` VALUES ('15', '47');
INSERT INTO `sys_role_authority` VALUES ('15', '48');
INSERT INTO `sys_role_authority` VALUES ('15', '56');
INSERT INTO `sys_role_authority` VALUES ('15', '57');
INSERT INTO `sys_role_authority` VALUES ('15', '93');
INSERT INTO `sys_role_authority` VALUES ('15', '94');
INSERT INTO `sys_role_authority` VALUES ('15', '96');
INSERT INTO `sys_role_authority` VALUES ('15', '97');
INSERT INTO `sys_role_authority` VALUES ('15', '101');
INSERT INTO `sys_role_authority` VALUES ('15', '102');
INSERT INTO `sys_role_authority` VALUES ('15', '103');
INSERT INTO `sys_role_authority` VALUES ('15', '104');
INSERT INTO `sys_role_authority` VALUES ('15', '117');
INSERT INTO `sys_role_authority` VALUES ('15', '118');
INSERT INTO `sys_role_authority` VALUES ('15', '119');
INSERT INTO `sys_role_authority` VALUES ('15', '120');
INSERT INTO `sys_role_authority` VALUES ('15', '121');
INSERT INTO `sys_role_authority` VALUES ('15', '122');
INSERT INTO `sys_role_authority` VALUES ('15', '123');
INSERT INTO `sys_role_authority` VALUES ('15', '124');
INSERT INTO `sys_role_authority` VALUES ('15', '125');
INSERT INTO `sys_role_authority` VALUES ('15', '126');
INSERT INTO `sys_role_authority` VALUES ('15', '131');
INSERT INTO `sys_role_authority` VALUES ('15', '132');
INSERT INTO `sys_role_authority` VALUES ('15', '133');
INSERT INTO `sys_role_authority` VALUES ('15', '134');
INSERT INTO `sys_role_authority` VALUES ('15', '135');
INSERT INTO `sys_role_authority` VALUES ('15', '136');
INSERT INTO `sys_role_authority` VALUES ('15', '137');
INSERT INTO `sys_role_authority` VALUES ('15', '138');
INSERT INTO `sys_role_authority` VALUES ('15', '139');
INSERT INTO `sys_role_authority` VALUES ('15', '140');
INSERT INTO `sys_role_authority` VALUES ('15', '141');
INSERT INTO `sys_role_authority` VALUES ('15', '142');
INSERT INTO `sys_role_authority` VALUES ('15', '143');
INSERT INTO `sys_role_authority` VALUES ('15', '144');
INSERT INTO `sys_role_authority` VALUES ('15', '145');
INSERT INTO `sys_role_authority` VALUES ('15', '146');
INSERT INTO `sys_role_authority` VALUES ('15', '147');
INSERT INTO `sys_role_authority` VALUES ('15', '148');
INSERT INTO `sys_role_authority` VALUES ('15', '151');
INSERT INTO `sys_role_authority` VALUES ('15', '152');
INSERT INTO `sys_role_authority` VALUES ('15', '153');
INSERT INTO `sys_role_authority` VALUES ('15', '154');
INSERT INTO `sys_role_authority` VALUES ('15', '155');
INSERT INTO `sys_role_authority` VALUES ('15', '156');
INSERT INTO `sys_role_authority` VALUES ('15', '157');
INSERT INTO `sys_role_authority` VALUES ('15', '158');
INSERT INTO `sys_role_authority` VALUES ('15', '159');
INSERT INTO `sys_role_authority` VALUES ('15', '161');
INSERT INTO `sys_role_authority` VALUES ('15', '162');
INSERT INTO `sys_role_authority` VALUES ('15', '163');
INSERT INTO `sys_role_authority` VALUES ('15', '164');
INSERT INTO `sys_role_authority` VALUES ('15', '165');
INSERT INTO `sys_role_authority` VALUES ('15', '166');
INSERT INTO `sys_role_authority` VALUES ('15', '167');
INSERT INTO `sys_role_authority` VALUES ('15', '168');
INSERT INTO `sys_role_authority` VALUES ('15', '174');
INSERT INTO `sys_role_authority` VALUES ('15', '175');
INSERT INTO `sys_role_authority` VALUES ('15', '177');
INSERT INTO `sys_role_authority` VALUES ('15', '205');
INSERT INTO `sys_role_authority` VALUES ('15', '206');
INSERT INTO `sys_role_authority` VALUES ('15', '207');
INSERT INTO `sys_role_authority` VALUES ('15', '216');
INSERT INTO `sys_role_authority` VALUES ('15', '240');
INSERT INTO `sys_role_authority` VALUES ('15', '241');
INSERT INTO `sys_role_authority` VALUES ('15', '242');
INSERT INTO `sys_role_authority` VALUES ('15', '243');
INSERT INTO `sys_role_authority` VALUES ('15', '244');
INSERT INTO `sys_role_authority` VALUES ('15', '245');
INSERT INTO `sys_role_authority` VALUES ('15', '246');
INSERT INTO `sys_role_authority` VALUES ('15', '247');
INSERT INTO `sys_role_authority` VALUES ('15', '253');
INSERT INTO `sys_role_authority` VALUES ('15', '254');
INSERT INTO `sys_role_authority` VALUES ('15', '255');
INSERT INTO `sys_role_authority` VALUES ('15', '256');
INSERT INTO `sys_role_authority` VALUES ('15', '257');
INSERT INTO `sys_role_authority` VALUES ('15', '258');
INSERT INTO `sys_role_authority` VALUES ('15', '259');
INSERT INTO `sys_role_authority` VALUES ('15', '263');
INSERT INTO `sys_role_authority` VALUES ('15', '264');
INSERT INTO `sys_role_authority` VALUES ('15', '265');
INSERT INTO `sys_role_authority` VALUES ('15', '274');
INSERT INTO `sys_role_authority` VALUES ('15', '275');
INSERT INTO `sys_role_authority` VALUES ('15', '276');
INSERT INTO `sys_role_authority` VALUES ('15', '278');
INSERT INTO `sys_role_authority` VALUES ('15', '279');
INSERT INTO `sys_role_authority` VALUES ('15', '280');
INSERT INTO `sys_role_authority` VALUES ('15', '281');
INSERT INTO `sys_role_authority` VALUES ('15', '282');
INSERT INTO `sys_role_authority` VALUES ('15', '283');
INSERT INTO `sys_role_authority` VALUES ('15', '287');
INSERT INTO `sys_role_authority` VALUES ('15', '288');
INSERT INTO `sys_role_authority` VALUES ('15', '289');
INSERT INTO `sys_role_authority` VALUES ('15', '292');
INSERT INTO `sys_role_authority` VALUES ('15', '293');
INSERT INTO `sys_role_authority` VALUES ('16', '1');
INSERT INTO `sys_role_authority` VALUES ('16', '2');
INSERT INTO `sys_role_authority` VALUES ('16', '3');
INSERT INTO `sys_role_authority` VALUES ('16', '4');
INSERT INTO `sys_role_authority` VALUES ('16', '5');
INSERT INTO `sys_role_authority` VALUES ('16', '8');
INSERT INTO `sys_role_authority` VALUES ('16', '9');
INSERT INTO `sys_role_authority` VALUES ('16', '10');
INSERT INTO `sys_role_authority` VALUES ('16', '11');
INSERT INTO `sys_role_authority` VALUES ('16', '12');

-- ----------------------------
-- Table structure for sys_suggest
-- ----------------------------
DROP TABLE IF EXISTS `sys_suggest`;
CREATE TABLE `sys_suggest` (
  `suggest_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `content` mediumtext,
  `images` text,
  `connect_mode` tinyint(4) DEFAULT NULL,
  `connect_number` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`suggest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_suggest
-- ----------------------------
INSERT INTO `sys_suggest` VALUES ('1', '1', 'sas123123', '', '1', 'sdfasdfasdf', '2022-07-06 15:14:56');
INSERT INTO `sys_suggest` VALUES ('2', '1', 'dgfhfghdfghfgdhfdgh', '', '1', 'gfhdghdfgh', '2022-07-25 22:09:16');
INSERT INTO `sys_suggest` VALUES ('3', '1', 'sadsdgfsdgfsdf', '', '2', 'sdfsadfasdf', '2022-07-25 22:10:06');
INSERT INTO `sys_suggest` VALUES ('4', '1', 'gfsdfgsdfgsdgfdfgsdfg', '', '1', 'dsfgsdfgsdgsdfgsdfg', '2022-07-25 22:12:55');
INSERT INTO `sys_suggest` VALUES ('5', '1', 'sdafsadfsdf', '', '1', 'sdfsadfadf', '2022-07-25 22:14:30');
INSERT INTO `sys_suggest` VALUES ('6', '1', 'sdfsadfsdf', '', '1', 'sdfsadfsdaf', '2022-07-25 22:15:06');
INSERT INTO `sys_suggest` VALUES ('7', '1', 'sdfgasdfasd', '', '1', 'sadfasdfsd', '2022-07-25 22:15:26');

-- ----------------------------
-- Table structure for sys_tag
-- ----------------------------
DROP TABLE IF EXISTS `sys_tag`;
CREATE TABLE `sys_tag` (
  `tag_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `top` tinyint(4) DEFAULT '1' COMMENT '是否推荐 1不推荐 2推荐',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_tag
-- ----------------------------

-- ----------------------------
-- Table structure for sys_tag_related
-- ----------------------------
DROP TABLE IF EXISTS `sys_tag_related`;
CREATE TABLE `sys_tag_related` (
  `tag_id` bigint(20) NOT NULL,
  `related_id` bigint(20) NOT NULL COMMENT '关系id',
  `module` varchar(50) DEFAULT NULL COMMENT '模块'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_tag_related
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` tinyint(4) DEFAULT '3' COMMENT '用户性别（1男 2女 3未知）',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `salt` char(10) DEFAULT NULL COMMENT '密码盐',
  `cover` varchar(255) DEFAULT NULL,
  `follows` bigint(20) DEFAULT NULL,
  `fans` bigint(20) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL,
  `grade` bigint(20) DEFAULT NULL,
  `vip` bigint(20) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `integral` bigint(20) DEFAULT NULL COMMENT '积分',
  `experience` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '帐号状态（1停用,2正常）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_time` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `delete_time` datetime DEFAULT NULL COMMENT '软删除',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '虾泡泡', '973728679@qq.com', '', '3', 'https://thirdqq.qlogo.cn/g?b=oidb&k=usEKyVAG8mHg5oVaLZEiasw&s=100&t=1554791450@w50_h50', 'ff8abb46afeef50579edd7ffb8c3fcf7', 'JKYg1h', 'https://zaaap-1254235226.cos.ap-guangzhou.myqcloud.com/short_pic/2022/08/06/20211111_170454.jpg?imageMogr2/thumbnail/!50p', '212', '12', '12', '12', '4', null, '8.00', '5472', '1355', 'sdsadfasdf', '2', '[::1]', '2024-05-05 03:08:31', '2024-03-25 17:33:28', '2024-03-25 17:33:30', null, null);
INSERT INTO `sys_user` VALUES ('2', 'test的身份噶士大夫', '356866114@qq.com', '', '3', 'https://zaaap-1254235226.cos.ap-guangzhou.myqcloud.com/images/2022/08/04/a5c5d7ff74af28cef1b01b72b0cf400a.jpg?imageMogr2/thumbnail/!50p', 'ab801cfcfea8548ec0572d2a72b41df0', 'PDpVGb', 'https://zaaap-1254235226.cos.ap-guangzhou.myqcloud.com/short_pic/2022/08/06/20211111_170454.jpg?imageMogr2/thumbnail/!50p', '2', '24', null, '12', '1', '0', '110.00', '100', '20', 'asdasd', '2', '[::1]', '2022-07-27 16:00:57', '2022-06-19 13:01:07', '2024-03-18 19:10:59', null, null);
INSERT INTO `sys_user` VALUES ('3', '下撒发射点发', '356866114@.com', '', '1', 'https://oss.zibll.com/zibll.com/2020/09/qinver-cover-%E5%A4%87%E4%BB%BD.jpg', 'c345f7e16218dd22eb5c30adbc769818', 'Yqr8IW', 'https://zaaap-1254235226.cos.ap-guangzhou.myqcloud.com/short_pic/2022/08/06/20211111_170454.jpg?imageMogr2/thumbnail/!50p', '123123', '123123', '123', '12', '1', '0', '20.00', '123123', '123', 'efdgdsfgdsfg', '2', '', null, '2024-03-18 19:14:51', '2024-03-18 19:14:51', '', null);

-- ----------------------------
-- Table structure for sys_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_favorite`;
CREATE TABLE `sys_user_favorite` (
  `user_id` bigint(20) DEFAULT NULL,
  `favorite_id` bigint(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_follow
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_follow`;
CREATE TABLE `sys_user_follow` (
  `user_id` bigint(20) DEFAULT NULL,
  `follow_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user_follow
-- ----------------------------
INSERT INTO `sys_user_follow` VALUES ('1', '3');
INSERT INTO `sys_user_follow` VALUES ('2', '1');
INSERT INTO `sys_user_follow` VALUES ('1', '2');

-- ----------------------------
-- Table structure for sys_user_like
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_like`;
CREATE TABLE `sys_user_like` (
  `user_id` bigint(20) NOT NULL,
  `related_id` bigint(20) NOT NULL,
  `module` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`related_id`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user_like
-- ----------------------------
INSERT INTO `sys_user_like` VALUES ('1', '1', 'comment');
INSERT INTO `sys_user_like` VALUES ('1', '4', 'answer');
INSERT INTO `sys_user_like` VALUES ('1', '9', 'player');
INSERT INTO `sys_user_like` VALUES ('1', '19', 'comment');
INSERT INTO `sys_user_like` VALUES ('1', '24', 'comment');
INSERT INTO `sys_user_like` VALUES ('1', '25', 'comment');
INSERT INTO `sys_user_like` VALUES ('1', '31', 'article');
INSERT INTO `sys_user_like` VALUES ('1', '37', 'post');
INSERT INTO `sys_user_like` VALUES ('1', '41', 'post');
INSERT INTO `sys_user_like` VALUES ('1', '42', 'post');
INSERT INTO `sys_user_like` VALUES ('1', '49', 'comment');
INSERT INTO `sys_user_like` VALUES ('1', '50', 'comment');
INSERT INTO `sys_user_like` VALUES ('1', '53', 'comment');
INSERT INTO `sys_user_like` VALUES ('1', '54', 'comment');
INSERT INTO `sys_user_like` VALUES ('3', '5', 'question');

-- ----------------------------
-- Table structure for sys_user_vip
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_vip`;
CREATE TABLE `sys_user_vip` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `vip_id` bigint(20) NOT NULL COMMENT '角色ID',
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`vip_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_vip
-- ----------------------------

-- ----------------------------
-- Table structure for sys_verify
-- ----------------------------
DROP TABLE IF EXISTS `sys_verify`;
CREATE TABLE `sys_verify` (
  `verify_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `name` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `code` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  `encryption` varchar(255) DEFAULT NULL COMMENT '加密后的认证信息',
  `mode` tinyint(4) DEFAULT NULL COMMENT '联系方式 1 qq, 2微信',
  `number` varchar(50) DEFAULT NULL COMMENT '联系号码',
  `create_time` datetime DEFAULT NULL COMMENT '认证时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（1待审，2成功，3拒绝）',
  PRIMARY KEY (`verify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_verify
-- ----------------------------
INSERT INTO `sys_verify` VALUES ('3', '1', '荣*来', '455******654', '1a23d963924fc704f0c3132d871222e0', '1', '6565156', '2021-07-10 17:14:26', '2021-07-10 17:14:26', '', '2');

-- ----------------------------
-- Table structure for sys_vip
-- ----------------------------
DROP TABLE IF EXISTS `sys_vip`;
CREATE TABLE `sys_vip` (
  `vip_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL COMMENT '会员标题',
  `icon` varchar(255) DEFAULT NULL,
  `day` int(4) DEFAULT NULL COMMENT '到期时间',
  `price` decimal(10,2) DEFAULT NULL COMMENT '开通价格',
  `discount` decimal(10,2) DEFAULT NULL COMMENT '折扣',
  `color` varchar(30) DEFAULT NULL COMMENT '自定义颜色',
  PRIMARY KEY (`vip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_vip
-- ----------------------------
INSERT INTO `sys_vip` VALUES ('1', '月会员', 'http://localhost:8199/public/uploads/2022-07-09/clb1ysxnzo6cvefd0e.png', '31', '20.00', '0.50', '');
INSERT INTO `sys_vip` VALUES ('2', '年会员', '/public/uploads/2021-11-19/cftswh0hteh6uoswhh.png', '365', '2000.00', '0.00', '');
INSERT INTO `sys_vip` VALUES ('3', '永久会员', '/public/uploads/2021-11-19/cftswh0hteh6uoswhh.png', '0', '3423.00', '0.00', '');
INSERT INTO `sys_vip` VALUES ('4', '测试会员第三方', '/public/uploads/2021-11-19/cftswh0hteh6uoswhh.png', '50', '324.00', '0.00', '0');

-- ----------------------------
-- Table structure for sys_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `sys_withdraw`;
CREATE TABLE `sys_withdraw` (
  `withdraw_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `code` varchar(50) NOT NULL COMMENT '提现单号',
  `withdraw_money` decimal(10,2) DEFAULT NULL,
  `service_money` decimal(10,2) DEFAULT NULL COMMENT '服务费',
  `money` decimal(10,2) DEFAULT NULL COMMENT '实际金额',
  `mode` tinyint(4) DEFAULT NULL COMMENT '方式，1人工转账，2第三方到账',
  `number` varchar(255) DEFAULT NULL COMMENT '账号',
  `receipt_num` varchar(255) DEFAULT NULL,
  `pay_method` tinyint(4) DEFAULT NULL COMMENT '支付方式（1支付宝，2微信）',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1待审核，2审核通过，3审核不通过',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`withdraw_id`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_withdraw
-- ----------------------------
INSERT INTO `sys_withdraw` VALUES ('15', '1', 'W1367951171139169864111', '49.75', '0.25', '50.00', '1', 'dfgsdfg', '', '1', '1', '', '2024-03-26 02:34:58', '2024-03-26 02:34:58');

-- ----------------------------
-- Procedure structure for add_col_bio
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_col_bio`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_col_bio`()
BEGIN
IF not EXISTS (SELECT column_name FROM information_schema.columns WHERE table_name = 'sys_medal' and column_name = 'bio')


THEN

ALTER TABLE sys_medal ADD COLUMN `bio` VARCHAR(255);
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_add
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_add`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_add`(
    IN tab varchar(200),
    IN colu varchar(200),
    IN cus_type varchar(200))
BEGIN
    set @sql = CONCAT('ALTER TABLE ',tab,' ADD COLUMN ',colu, ' ', cus_type);
    set @sql2 = CONCAT('ALTER TABLE ',tab,' MODIFY COLUMN ',colu, ' ', cus_type);
    IF NOT EXISTS (SELECT * FROM information_schema.columns
    WHERE table_schema = DATABASE()  AND table_name = tab AND column_name = colu) THEN
        PREPARE stmt FROM @sql;
        EXECUTE stmt ;
        deallocate prepare stmt;
    ELSE
        PREPARE stmt2 FROM @sql2;
        EXECUTE stmt2 ;
        deallocate prepare stmt2;
    END IF;
  END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for proc_add_table
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_add_table`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_add_table`(in var_table_name varchar(64),in var_sqlstr varchar(1024))
top:begin
   
    set @p_tablenum='';
    set @sqlstr1=concat('select count(table_name)into @p_tablenum from information_schema.tables where table_schema=database() and table_name=\'',var_table_name,'\' limit 1;');
    prepare stmt1 from @sqlstr1;
    execute stmt1;
    deallocate prepare stmt1;
    if(@p_tablenum>0)then
        leave top;
    end if;

    
    set @sqlcmd=var_sqlstr;
    prepare stmt2 from @sqlcmd;
    execute stmt2;
    deallocate prepare stmt2;
end ;
;;
DELIMITER ;
