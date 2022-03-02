/*
Navicat MySQL Data Transfer

Source Server         : 毕设
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : weixin_music

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2021-03-14 21:58:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL COMMENT '主键id',
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'url地址',
  `sort` int(65) DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
  `menu_flag` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '是否是菜单(字典)',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `status` varchar(32) COLLATE utf8_bin DEFAULT 'ENABLE' COMMENT '菜单状态(字典)',
  `new_page_flag` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '是否打开新页面的标识(字典)',
  `open_flag` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '是否打开(字典)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('105', 'system', '0', '[0],', '系统管理', 'layui-icon layui-icon-set', '#', '20', '1', 'Y', null, 'ENABLE', null, '1', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('106', 'mgr', 'system', '[0],[system],', '用户管理', '', '/mgr', '1', '2', 'Y', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('107', 'mgr_add', 'mgr', '[0],[system],[mgr],', '添加用户', null, '/mgr/add', '1', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('108', 'mgr_edit', 'mgr', '[0],[system],[mgr],', '修改用户', null, '/mgr/edit', '2', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('109', 'mgr_delete', 'mgr', '[0],[system],[mgr],', '删除用户', null, '/mgr/delete', '3', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('110', 'mgr_reset', 'mgr', '[0],[system],[mgr],', '重置密码', null, '/mgr/reset', '4', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('111', 'mgr_freeze', 'mgr', '[0],[system],[mgr],', '冻结用户', null, '/mgr/freeze', '5', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('112', 'mgr_unfreeze', 'mgr', '[0],[system],[mgr],', '解除冻结用户', null, '/mgr/unfreeze', '6', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('113', 'mgr_setRole', 'mgr', '[0],[system],[mgr],', '分配角色', null, '/mgr/setRole', '7', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('114', 'role', 'system', '[0],[system],', '角色管理', null, '/role', '2', '2', 'Y', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('115', 'role_add', 'role', '[0],[system],[role],', '添加角色', null, '/role/add', '1', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('116', 'role_edit', 'role', '[0],[system],[role],', '修改角色', null, '/role/edit', '2', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('117', 'role_remove', 'role', '[0],[system],[role],', '删除角色', null, '/role/remove', '3', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('118', 'role_setAuthority', 'role', '[0],[system],[role],', '配置权限', null, '/role/setAuthority', '4', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('119', 'menu', 'system', '[0],[system],', '菜单管理', null, '/menu', '4', '2', 'Y', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('120', 'menu_add', 'menu', '[0],[system],[menu],', '添加菜单', null, '/menu/add', '1', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('121', 'menu_edit', 'menu', '[0],[system],[menu],', '修改菜单', null, '/menu/edit', '2', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('122', 'menu_remove', 'menu', '[0],[system],[menu],', '删除菜单', null, '/menu/remove', '3', '3', 'N', null, 'ENABLE', null, '0', null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('150', 'to_menu_edit', 'menu', '[0],[system],[menu],', '菜单编辑跳转', '', '/menu/menu_edit', '4', '3', 'N', null, 'ENABLE', null, null, null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('151', 'menu_list', 'menu', '[0],[system],[menu],', '菜单列表', '', '/menu/list', '5', '3', 'N', null, 'ENABLE', null, null, null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('162', 'to_role_edit', 'role', '[0],[system],[role],', '修改角色跳转', '', '/role/role_edit', '5', '3', 'N', null, 'ENABLE', null, null, null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('163', 'to_role_assign', 'role', '[0],[system],[role],', '角色分配跳转', '', '/role/role_assign', '6', '3', 'N', null, 'ENABLE', null, null, null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('164', 'role_list', 'role', '[0],[system],[role],', '角色列表', '', '/role/list', '7', '3', 'N', null, 'ENABLE', null, null, null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('165', 'to_assign_role', 'mgr', '[0],[system],[mgr],', '分配角色跳转', '', '/mgr/role_assign', '8', '3', 'N', null, 'ENABLE', null, null, null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('166', 'to_user_edit', 'mgr', '[0],[system],[mgr],', '编辑用户跳转', '', '/mgr/user_edit', '9', '3', 'N', null, 'ENABLE', null, null, null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('167', 'mgr_list', 'mgr', '[0],[system],[mgr],', '用户列表', '', '/mgr/list', '10', '3', 'N', null, 'ENABLE', null, null, null, '2019-03-29 16:32:27', null, '1');
INSERT INTO `sys_menu` VALUES ('1349973724367929346', 'PIC', '0', '[0],', '轮播图管理', 'fa-star', '/pic', '999', '1', 'Y', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973724367929347', 'PIC_ADD', 'PIC', '[0],[PIC],', '轮播图管理添加', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973724367929348', 'PIC_EDIT', 'PIC', '[0],[PIC],', '轮播图管理修改', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973724367929349', 'PIC_DELETE', 'PIC', '[0],[PIC],', '轮播图管理删除', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973724699279361', 'REGISTER_USER', '0', '[0],', '注册用户管理', 'fa-star', '/registerUser', '999', '1', 'Y', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973724699279362', 'REGISTER_USER_ADD', 'REGISTER_USER', '[0],[REGISTER_USER],', '注册用户管理添加', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973724699279363', 'REGISTER_USER_EDIT', 'REGISTER_USER', '[0],[REGISTER_USER],', '注册用户管理修改', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973724699279364', 'REGISTER_USER_DELETE', 'REGISTER_USER', '[0],[REGISTER_USER],', '注册用户管理删除', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973724904800257', 'SINGER', '0', '[0],', '歌手管理', 'fa-star', '/singer', '999', '1', 'Y', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973724904800258', 'SINGER_ADD', 'SINGER', '[0],[SINGER],', '歌手管理添加', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973724904800259', 'SINGER_EDIT', 'SINGER', '[0],[SINGER],', '歌手管理修改', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973724904800260', 'SINGER_DELETE', 'SINGER', '[0],[SINGER],', '歌手管理删除', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:31', '2021-01-15 14:56:31', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725022240770', 'SONG', '0', '[0],', '音乐库管理', 'fa-star', '/song', '999', '1', 'Y', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725022240771', 'SONG_ADD', 'SONG', '[0],[SONG],', '音乐库管理添加', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725022240772', 'SONG_EDIT', 'SONG', '[0],[SONG],', '音乐库管理修改', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725022240773', 'SONG_DELETE', 'SONG', '[0],[SONG],', '音乐库管理删除', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725127098370', 'SONG_COLLECTION', '0', '[0],', '歌曲收藏', 'fa-star', '/songCollection', '999', '1', 'Y', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725127098371', 'SONG_COLLECTION_ADD', 'SONG_COLLECTION', '[0],[SONG_COLLECTION],', '歌曲收藏添加', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725127098372', 'SONG_COLLECTION_EDIT', 'SONG_COLLECTION', '[0],[SONG_COLLECTION],', '歌曲收藏修改', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725127098373', 'SONG_COLLECTION_DELETE', 'SONG_COLLECTION', '[0],[SONG_COLLECTION],', '歌曲收藏删除', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725198401538', 'SONG_PLAYED', '0', '[0],', '最近播放', 'fa-star', '/songPlayed', '999', '1', 'Y', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725198401539', 'SONG_PLAYED_ADD', 'SONG_PLAYED', '[0],[SONG_PLAYED],', '最近播放添加', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725198401540', 'SONG_PLAYED_EDIT', 'SONG_PLAYED', '[0],[SONG_PLAYED],', '最近播放修改', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725198401541', 'SONG_PLAYED_DELETE', 'SONG_PLAYED', '[0],[SONG_PLAYED],', '最近播放删除', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725341007873', 'SONG_SHEET', '0', '[0],', '歌单管理', 'fa-star', '/songSheet', '999', '1', 'Y', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725341007874', 'SONG_SHEET_ADD', 'SONG_SHEET', '[0],[SONG_SHEET],', '歌单管理添加', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725341007875', 'SONG_SHEET_EDIT', 'SONG_SHEET', '[0],[SONG_SHEET],', '歌单管理修改', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');
INSERT INTO `sys_menu` VALUES ('1349973725341007876', 'SONG_SHEET_DELETE', 'SONG_SHEET', '[0],[SONG_SHEET],', '歌单管理删除', 'fa-star', '', '999', '2', 'N', '', 'ENABLE', '', '', '2021-01-15 14:56:32', '2021-01-15 14:56:32', '1', '1');

-- ----------------------------
-- Table structure for `sys_relation`
-- ----------------------------
DROP TABLE IF EXISTS `sys_relation`;
CREATE TABLE `sys_relation` (
  `relation_id` bigint(20) NOT NULL COMMENT '主键',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`relation_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_relation
-- ----------------------------
INSERT INTO `sys_relation` VALUES ('1242678093222416385', '1242651847553945601', '1157931416824037377');
INSERT INTO `sys_relation` VALUES ('1242678093327273985', '1242651847553945602', '1157931416824037377');
INSERT INTO `sys_relation` VALUES ('1242678093344051201', '1242651847562334210', '1157931416824037377');
INSERT INTO `sys_relation` VALUES ('1242678093352439810', '1242651847562334211', '1157931416824037377');
INSERT INTO `sys_relation` VALUES ('1242678093360828418', '1242651847616860162', '1157931416824037377');
INSERT INTO `sys_relation` VALUES ('1242678093377605634', '1242651847616860163', '1157931416824037377');
INSERT INTO `sys_relation` VALUES ('1242678093385994242', '1242651847616860164', '1157931416824037377');
INSERT INTO `sys_relation` VALUES ('1242678093394382849', '1242651847616860165', '1157931416824037377');
INSERT INTO `sys_relation` VALUES ('1349978688024694785', '105', '1');
INSERT INTO `sys_relation` VALUES ('1349978688360239106', '106', '1');
INSERT INTO `sys_relation` VALUES ('1349978688385404929', '107', '1');
INSERT INTO `sys_relation` VALUES ('1349978688402182145', '108', '1');
INSERT INTO `sys_relation` VALUES ('1349978688427347970', '109', '1');
INSERT INTO `sys_relation` VALUES ('1349978688456708098', '110', '1');
INSERT INTO `sys_relation` VALUES ('1349978688481873922', '111', '1');
INSERT INTO `sys_relation` VALUES ('1349978688507039745', '112', '1');
INSERT INTO `sys_relation` VALUES ('1349978688532205570', '113', '1');
INSERT INTO `sys_relation` VALUES ('1349978688544788482', '165', '1');
INSERT INTO `sys_relation` VALUES ('1349978688574148609', '166', '1');
INSERT INTO `sys_relation` VALUES ('1349978688599314434', '167', '1');
INSERT INTO `sys_relation` VALUES ('1349978688628674562', '114', '1');
INSERT INTO `sys_relation` VALUES ('1349978688649646081', '115', '1');
INSERT INTO `sys_relation` VALUES ('1349978688674811906', '116', '1');
INSERT INTO `sys_relation` VALUES ('1349978688704172033', '117', '1');
INSERT INTO `sys_relation` VALUES ('1349978688725143553', '118', '1');
INSERT INTO `sys_relation` VALUES ('1349978688750309378', '162', '1');
INSERT INTO `sys_relation` VALUES ('1349978688750309379', '163', '1');
INSERT INTO `sys_relation` VALUES ('1349978688750309380', '164', '1');
INSERT INTO `sys_relation` VALUES ('1349978688750309381', '119', '1');
INSERT INTO `sys_relation` VALUES ('1349978688750309382', '120', '1');
INSERT INTO `sys_relation` VALUES ('1349978688922275841', '121', '1');
INSERT INTO `sys_relation` VALUES ('1349978688922275842', '122', '1');
INSERT INTO `sys_relation` VALUES ('1349978688922275843', '150', '1');
INSERT INTO `sys_relation` VALUES ('1349978688993579010', '151', '1');
INSERT INTO `sys_relation` VALUES ('1349978689027133441', '1349973724367929346', '1');
INSERT INTO `sys_relation` VALUES ('1349978689052299266', '1349973724367929347', '1');
INSERT INTO `sys_relation` VALUES ('1349978689077465090', '1349973724367929348', '1');
INSERT INTO `sys_relation` VALUES ('1349978689098436609', '1349973724367929349', '1');
INSERT INTO `sys_relation` VALUES ('1349978689115213826', '1349973724699279361', '1');
INSERT INTO `sys_relation` VALUES ('1349978689115213827', '1349973724699279362', '1');
INSERT INTO `sys_relation` VALUES ('1349978689115213828', '1349973724699279363', '1');
INSERT INTO `sys_relation` VALUES ('1349978689115213829', '1349973724699279364', '1');
INSERT INTO `sys_relation` VALUES ('1349978689115213830', '1349973724904800257', '1');
INSERT INTO `sys_relation` VALUES ('1349978689115213831', '1349973724904800258', '1');
INSERT INTO `sys_relation` VALUES ('1349978689115213832', '1349973724904800259', '1');
INSERT INTO `sys_relation` VALUES ('1349978689115213833', '1349973724904800260', '1');
INSERT INTO `sys_relation` VALUES ('1349978689115213834', '1349973725022240770', '1');
INSERT INTO `sys_relation` VALUES ('1349978689115213835', '1349973725022240771', '1');
INSERT INTO `sys_relation` VALUES ('1349978689492701185', '1349973725022240772', '1');
INSERT INTO `sys_relation` VALUES ('1349978689492701186', '1349973725022240773', '1');
INSERT INTO `sys_relation` VALUES ('1349978689492701187', '1349973725341007873', '1');
INSERT INTO `sys_relation` VALUES ('1349978689492701188', '1349973725341007874', '1');
INSERT INTO `sys_relation` VALUES ('1349978689492701189', '1349973725341007875', '1');
INSERT INTO `sys_relation` VALUES ('1349978689492701190', '1349973725341007876', '1');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL COMMENT '主键id',
  `pid` bigint(20) DEFAULT NULL COMMENT '父角色id',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色名称',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '提示',
  `sort` int(11) DEFAULT NULL COMMENT '序号',
  `version` int(11) DEFAULT NULL COMMENT '乐观锁',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '0', '超级管理员', 'administrator', '1', '1', null, null, null, null);
INSERT INTO `sys_role` VALUES ('1157931416824037377', '1', '用户', '用户', '1', null, '2019-08-04 16:28:57', null, '1', null);

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL COMMENT '主键id',
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '头像',
  `account` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '账号',
  `password` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '名字',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '性别(字典)',
  `email` varchar(45) COLLATE utf8_bin DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(450) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `role_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色id(多个逗号隔开)',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门id(多个逗号隔开)',
  `status` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '状态(字典)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新人',
  `version` int(11) DEFAULT NULL COMMENT '乐观锁',
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '部门',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='管理员表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', 'admin', '6d8fa749c57c288520e4be9de1b23736', '6zqfr', '管理员', '2018-11-16 00:00:00', 'M', 'sn93@qq.com', '18200000000', '1', '27', 'ENABLE', '2016-01-29 08:49:53', null, '2020-05-01 18:13:33', '24', '25', '教育局');
INSERT INTO `sys_user` VALUES ('1157931654582353922', null, 'user', '3a5bb4c76b55288e9a5b2eb5e8023348', '15jph', '管理员', '2019-08-04 00:00:00', 'F', '123456@qq.com', '185555555', '1157931416824037377', null, 'DELETED', '2019-08-04 16:29:54', '1', '2020-03-25 12:49:48', '1157931654582353922', null, null);
INSERT INTO `sys_user` VALUES ('1233707856871411713', null, '18932288888', 'd3a2d86582e88e88f5dadab20a0c2305', 'iaace', '王老师', null, null, null, '1233707856561033218', '1157931416824037377', null, 'DELETED', '2020-02-29 18:57:28', '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('1233720345646444546', null, '18555555555', '2df7356269a86726a05f854874ee1a2c', 'g6so9', '张未', null, null, null, '1233720345541586946', '1157931416824037377', null, 'DELETED', '2020-02-29 19:47:06', '1233707856871411713', null, null, null, null);
INSERT INTO `sys_user` VALUES ('1242675547703558146', null, 'zhanghao1', '3f292c0b65eab2bd31f845ea445be202', 'ky802', '教育局', '2020-03-01 00:00:00', 'M', '123456@qq.com', '18932297581', null, null, 'DELETED', '2020-03-25 12:51:53', '1', null, null, null, null);
INSERT INTO `sys_user` VALUES ('1242675854097448961', null, 'zhanghao1', '8f1b2ebee815d8a43be469dd81a5da7a', 'a9xe3', '张三', '2020-03-01 00:00:00', 'M', '123456@qq.com', '18932297581', '1157931416824037377', null, 'ENABLE', '2020-03-25 12:53:06', '1', '2020-05-01 18:13:27', '1', null, '教育局');
INSERT INTO `sys_user` VALUES ('1256164729050451970', null, '23', '132b7b7fc36522e0cb91e7e970810bb4', 'p10mq', '13', '2020-05-03 00:00:00', 'M', '123456@qq.com', '131231', '1157931416824037377', null, 'DELETED', '2020-05-01 18:13:04', '1', null, null, null, null);

-- ----------------------------
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `comment_id` bigint(20) NOT NULL,
  `context` varchar(255) NOT NULL COMMENT '评论内容',
  `user_id` bigint(20) NOT NULL COMMENT '评论人',
  `time` datetime DEFAULT NULL COMMENT '评论时间',
  `song_id` bigint(20) DEFAULT NULL COMMENT '音乐',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='歌曲评论';

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1368045657747595265', '我最喜欢的歌', '1350465049227902978', '2021-03-06 11:47:57', '1350007003095629826');
INSERT INTO `t_comment` VALUES ('1368061716445765634', '赞一个', '1350465049227902978', '2021-03-06 12:51:45', '1350007003095629826');
INSERT INTO `t_comment` VALUES ('1368061779314188290', '这首歌曲很不错哦，推荐', '1350465049227902978', '2021-03-06 12:52:00', '1350007003095629826');

-- ----------------------------
-- Table structure for `t_pic`
-- ----------------------------
DROP TABLE IF EXISTS `t_pic`;
CREATE TABLE `t_pic` (
  `pic_id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播图管理';

-- ----------------------------
-- Records of t_pic
-- ----------------------------
INSERT INTO `t_pic` VALUES ('1350051736547459073', 'http://192.168.3.2/images/7c411c0a-5398-44ba-aa51-891bf19929de.jpg');
INSERT INTO `t_pic` VALUES ('1350051759586770945', 'http://192.168.3.2/images/6a3839d7-d0fc-4875-9756-dac40c67c958.png');
INSERT INTO `t_pic` VALUES ('1350051774799511553', 'http://192.168.3.2/images/f12ab865-31b4-4038-994a-091e2fc5ff93.jpg');
INSERT INTO `t_pic` VALUES ('1359446855436460034', 'http://192.168.3.2/images/f79dba71-3ce8-42aa-91c3-c0a129c8e811.png');

-- ----------------------------
-- Table structure for `t_register_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_register_user`;
CREATE TABLE `t_register_user` (
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '昵称',
  `pic` varchar(255) NOT NULL COMMENT '头像',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `user_name` varchar(255) NOT NULL COMMENT '用户名',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='注册用户管理';

-- ----------------------------
-- Records of t_register_user
-- ----------------------------
INSERT INTO `t_register_user` VALUES ('1350465049227902978', '喜歡吹風', 'https://thirdwx.qlogo.cn/mmopen/vi_32/74mRiaIhAKqumxibnE0HjiaarTuV4xUc1ic8NuyRMa5bhqpYGo2S7iaibhIzV9gC9VkgEFvJPJ3iaDwVSM3cveUQRkP9Q/132', '123456', 'zhangsan');
INSERT INTO `t_register_user` VALUES ('1350794688894734337', '喜歡吹風', 'https://thirdwx.qlogo.cn/mmopen/vi_32/74mRiaIhAKqumxibnE0HjiaarTuV4xUc1ic8NuyRMa5bhqpYGo2S7iaibhIzV9gC9VkgEFvJPJ3iaDwVSM3cveUQRkP9Q/132', '123456', 'lisi');
INSERT INTO `t_register_user` VALUES ('1350796677133332481', '喜歡吹風', 'https://thirdwx.qlogo.cn/mmopen/vi_32/74mRiaIhAKqumxibnE0HjiaarTuV4xUc1ic8NuyRMa5bhqpYGo2S7iaibhIzV9gC9VkgEFvJPJ3iaDwVSM3cveUQRkP9Q/132', '123456', 'wangwu');
INSERT INTO `t_register_user` VALUES ('1350797800258891777', '喜歡吹風', 'https://thirdwx.qlogo.cn/mmopen/vi_32/74mRiaIhAKqumxibnE0HjiaarTuV4xUc1ic8NuyRMa5bhqpYGo2S7iaibhIzV9gC9VkgEFvJPJ3iaDwVSM3cveUQRkP9Q/132', '123456', 'chenchen');
INSERT INTO `t_register_user` VALUES ('1350805427151908866', '喜歡吹風', 'https://thirdwx.qlogo.cn/mmopen/vi_32/74mRiaIhAKqumxibnE0HjiaarTuV4xUc1ic8NuyRMa5bhqpYGo2S7iaibhIzV9gC9VkgEFvJPJ3iaDwVSM3cveUQRkP9Q/132', '123456', 'zhangsan1');
INSERT INTO `t_register_user` VALUES ('1356207541176938497', '万有引力', 'https://thirdwx.qlogo.cn/mmopen/vi_32/0c7VQtfCatn7gJQZnnzouz9f8JXxUnyiaXeULmppuQE1brxrsLPcdfgR2Mw0t0XiaiacToDCPCVWaxafUblhtTtqA/132', '123456', 'zhangli');
INSERT INTO `t_register_user` VALUES ('1359447159703855105', '万有引力', 'https://thirdwx.qlogo.cn/mmopen/vi_32/0c7VQtfCatn7gJQZnnzouz9f8JXxUnyiaXeULmppuQE1brxrsLPcdfgR2Mw0t0XiaiacToDCPCVWaxafUblhtTtqA/132', '123456', 'liwei');

-- ----------------------------
-- Table structure for `t_sheet_list`
-- ----------------------------
DROP TABLE IF EXISTS `t_sheet_list`;
CREATE TABLE `t_sheet_list` (
  `list_id` bigint(20) NOT NULL,
  `sheet_id` bigint(20) NOT NULL COMMENT '歌单id',
  `song_id` bigint(20) NOT NULL COMMENT '歌曲id',
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='歌单中歌曲';

-- ----------------------------
-- Records of t_sheet_list
-- ----------------------------
INSERT INTO `t_sheet_list` VALUES ('1350042451927072770', '1349986496606588929', '1350007003095629826');
INSERT INTO `t_sheet_list` VALUES ('1350081039570018306', '1349990905222660098', '1350007003095629826');
INSERT INTO `t_sheet_list` VALUES ('1350081814761283586', '1349986496606588929', '1350081785673785345');
INSERT INTO `t_sheet_list` VALUES ('1350082618301849602', '1349986496606588929', '1350082580150460418');
INSERT INTO `t_sheet_list` VALUES ('1350083216619315201', '1349986496606588929', '1350083122557853698');
INSERT INTO `t_sheet_list` VALUES ('1350083264568598529', '1349990905222660098', '1350081785673785345');
INSERT INTO `t_sheet_list` VALUES ('1350083270801334274', '1349990905222660098', '1350082580150460418');
INSERT INTO `t_sheet_list` VALUES ('1356207196811997186', '1356207153530974209', '1350007003095629826');
INSERT INTO `t_sheet_list` VALUES ('1356207206203043842', '1356207153530974209', '1350082580150460418');
INSERT INTO `t_sheet_list` VALUES ('1359446715019550722', '1349991388259680258', '1359446441974554626');
INSERT INTO `t_sheet_list` VALUES ('1359446773194547201', '1349991984979116033', '1350082580150460418');

-- ----------------------------
-- Table structure for `t_singer`
-- ----------------------------
DROP TABLE IF EXISTS `t_singer`;
CREATE TABLE `t_singer` (
  `singer_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '歌手姓名',
  `pic` varchar(255) NOT NULL COMMENT '歌手头像',
  `findex` varchar(255) NOT NULL COMMENT '姓名首字母',
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='歌手管理';

-- ----------------------------
-- Records of t_singer
-- ----------------------------
INSERT INTO `t_singer` VALUES ('1349998613250310145', '薛之谦', 'http://192.168.3.2/images/ba9bd398-aaae-49d4-9baa-d6a74465e264.jpg', 'X');
INSERT INTO `t_singer` VALUES ('1349999184178970626', '周杰伦', 'http://192.168.3.2/images/14d5099f-5a3c-408d-9906-d96c838c2eb4.jpg', 'Z');
INSERT INTO `t_singer` VALUES ('1349999344942448641', '陈奕迅', 'http://192.168.3.2/images/570f1434-dfb6-44df-8b01-fcbf8f271b3d.jpg', 'C');
INSERT INTO `t_singer` VALUES ('1349999714238332929', '林俊杰', 'http://192.168.3.2/images/43712a96-3738-45dd-8d0b-a724db576e83.jpg', 'L');

-- ----------------------------
-- Table structure for `t_song`
-- ----------------------------
DROP TABLE IF EXISTS `t_song`;
CREATE TABLE `t_song` (
  `song_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '歌曲名称',
  `singer_id` bigint(20) NOT NULL COMMENT '歌手',
  `url` varchar(255) DEFAULT NULL COMMENT '歌曲链接',
  `pic` varchar(255) DEFAULT NULL COMMENT '歌曲图片',
  `mark` varchar(60) DEFAULT NULL COMMENT '专辑',
  `duration` varchar(255) DEFAULT NULL COMMENT '歌曲时长（秒）',
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='音乐库管理';

-- ----------------------------
-- Records of t_song
-- ----------------------------
INSERT INTO `t_song` VALUES ('1350007003095629826', '天外来物周', '1349998613250310145', 'http://192.168.3.2/images/575d1820-80a6-4af9-9e8f-8724485fede2.mov', 'http://192.168.3.2/images/92b89c0a-c529-44d2-9535-f3fbf79c3f5f.jpg', '21312', '257');
INSERT INTO `t_song` VALUES ('1350081785673785345', '认真的雪', '1349998613250310145', 'http://192.168.3.2/images/4926d2e3-2668-41c7-8869-7620bcf99ea1.m4a', 'http://192.168.3.2/images/61e5079b-f441-4a45-b1d7-72fbb9795638.png', '认真的雪', '257');
INSERT INTO `t_song` VALUES ('1350082580150460418', '布拉格广场 ', '1349999184178970626', 'http://192.168.3.2/images/df02c630-4d41-4c83-9f97-3225b12182b4.m4a', 'http://192.168.3.2/images/257c47d0-b516-40f9-96b3-0b4d0c552aa4.png', '布拉格广场 ', '257');
INSERT INTO `t_song` VALUES ('1350083122557853698', '祝我生日快乐 ', '1349999184178970626', 'http://192.168.3.2/images/abd1be32-85e2-4340-9e49-44c0afc6f417.m4a', 'http://192.168.3.2/images/fe1e878c-d920-4c4c-a884-879d87042644.png', '祝我生日快乐 ', '257');
INSERT INTO `t_song` VALUES ('1356207012027740162', '祝我生日快乐2', '1349999184178970626', 'http://192.168.3.2/images/1a92f043-88cb-4bdc-9856-34ecefab6dbf.m4a', 'http://192.168.3.2/images/f89af842-e873-4fcd-ad41-c60dacca9bcb.png', '祝我生日', '70');
INSERT INTO `t_song` VALUES ('1359446441974554626', '认真的雪2', '1349999714238332929', 'http://192.168.3.2/images/4a55f240-5c9f-4c32-a805-090bc39768b3.m4a', 'http://192.168.3.2/images/2b43899f-e58f-4288-8da8-c137113f5b78.png', '认真的雪2', '70');

-- ----------------------------
-- Table structure for `t_song_collection`
-- ----------------------------
DROP TABLE IF EXISTS `t_song_collection`;
CREATE TABLE `t_song_collection` (
  `collection_id` bigint(20) NOT NULL,
  `song_id` bigint(20) DEFAULT NULL COMMENT '歌曲',
  `time` datetime DEFAULT NULL COMMENT '收藏时间',
  `user_id` bigint(20) DEFAULT NULL COMMENT '收藏人',
  PRIMARY KEY (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='歌曲收藏';

-- ----------------------------
-- Records of t_song_collection
-- ----------------------------
INSERT INTO `t_song_collection` VALUES ('1350794846378266625', '1350007003095629826', '2021-01-17 21:19:23', '1350794688894734337');
INSERT INTO `t_song_collection` VALUES ('1350794908235862018', '1350082580150460418', '2021-01-17 21:19:37', '1350794688894734337');
INSERT INTO `t_song_collection` VALUES ('1350796759211667458', '1350007003095629826', '2021-01-17 21:26:59', '1350796677133332481');
INSERT INTO `t_song_collection` VALUES ('1350796832842674178', '1350081785673785345', '2021-01-17 21:27:16', '1350796677133332481');
INSERT INTO `t_song_collection` VALUES ('1350796870071316482', '1350083122557853698', '2021-01-17 21:27:25', '1350796677133332481');
INSERT INTO `t_song_collection` VALUES ('1350797854998753281', '1350007003095629826', '2021-01-17 21:31:20', '1350797800258891777');
INSERT INTO `t_song_collection` VALUES ('1350797908140584962', '1350081785673785345', '2021-01-17 21:31:33', '1350797800258891777');
INSERT INTO `t_song_collection` VALUES ('1350797948624007170', '1350082580150460418', '2021-01-17 21:31:42', '1350797800258891777');
INSERT INTO `t_song_collection` VALUES ('1350797965455749121', '1350083122557853698', '2021-01-17 21:31:46', '1350797800258891777');
INSERT INTO `t_song_collection` VALUES ('1350807272788275202', '1350081785673785345', '2021-01-17 22:08:45', '1350805427151908866');
INSERT INTO `t_song_collection` VALUES ('1350809691177824258', '1350083122557853698', '2021-01-17 22:18:22', '1350465049227902978');
INSERT INTO `t_song_collection` VALUES ('1356207808630927361', '1350081785673785345', '2021-02-01 19:48:33', '1356207541176938497');
INSERT INTO `t_song_collection` VALUES ('1356208215872679938', '1350082580150460418', '2021-02-01 19:50:10', '1356207541176938497');
INSERT INTO `t_song_collection` VALUES ('1359447725532241921', '1350083122557853698', '2021-02-10 18:22:50', '1359447159703855105');
INSERT INTO `t_song_collection` VALUES ('1369297923158753281', '1350081785673785345', '2021-03-09 22:43:59', '1350465049227902978');

-- ----------------------------
-- Table structure for `t_song_played`
-- ----------------------------
DROP TABLE IF EXISTS `t_song_played`;
CREATE TABLE `t_song_played` (
  `played_id` bigint(20) NOT NULL,
  `song_id` bigint(20) DEFAULT NULL COMMENT '歌曲',
  `time` datetime DEFAULT NULL COMMENT '播放时间',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户',
  PRIMARY KEY (`played_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='最近播放';

-- ----------------------------
-- Records of t_song_played
-- ----------------------------
INSERT INTO `t_song_played` VALUES ('1350726248196714497', '1350007003095629826', '2021-03-09 23:11:59', '1350465049227902978');
INSERT INTO `t_song_played` VALUES ('1350726266953641986', '1350081785673785345', '2021-03-09 23:16:17', '1350465049227902978');
INSERT INTO `t_song_played` VALUES ('1350727282927316994', '1350083122557853698', '2021-03-09 23:24:50', '1350465049227902978');
INSERT INTO `t_song_played` VALUES ('1350794833271066625', '1350007003095629826', '2021-01-17 21:19:19', '1350794688894734337');
INSERT INTO `t_song_played` VALUES ('1350794900572868610', '1350082580150460418', '2021-01-17 21:19:36', '1350794688894734337');
INSERT INTO `t_song_played` VALUES ('1350796753071206401', '1350007003095629826', '2021-01-17 21:26:57', '1350796677133332481');
INSERT INTO `t_song_played` VALUES ('1350796827901784066', '1350081785673785345', '2021-01-17 21:27:15', '1350796677133332481');
INSERT INTO `t_song_played` VALUES ('1350796865998647298', '1350083122557853698', '2021-01-17 21:27:32', '1350796677133332481');
INSERT INTO `t_song_played` VALUES ('1350797848212369410', '1350007003095629826', '2021-01-17 21:31:18', '1350797800258891777');
INSERT INTO `t_song_played` VALUES ('1350797902809624577', '1350081785673785345', '2021-01-17 21:31:31', '1350797800258891777');
INSERT INTO `t_song_played` VALUES ('1350797944110936066', '1350082580150460418', '2021-01-17 21:31:41', '1350797800258891777');
INSERT INTO `t_song_played` VALUES ('1350797960628105218', '1350083122557853698', '2021-01-17 21:31:45', '1350797800258891777');
INSERT INTO `t_song_played` VALUES ('1350799050123739138', '1350082580150460418', '2021-03-09 23:20:34', '1350465049227902978');
INSERT INTO `t_song_played` VALUES ('1350806381637087233', '1350007003095629826', '2021-01-17 22:05:30', '1350805427151908866');
INSERT INTO `t_song_played` VALUES ('1350807102046547969', '1350081785673785345', '2021-01-17 22:12:08', '1350805427151908866');
INSERT INTO `t_song_played` VALUES ('1350807175283290113', '1350083122557853698', '2021-01-17 22:08:57', '1350805427151908866');
INSERT INTO `t_song_played` VALUES ('1356207661616377857', '1350007003095629826', '2021-02-01 19:49:07', '1356207541176938497');
INSERT INTO `t_song_played` VALUES ('1356207801567719425', '1350081785673785345', '2021-02-01 19:48:32', '1356207541176938497');
INSERT INTO `t_song_played` VALUES ('1356207918324559873', '1350082580150460418', '2021-02-01 19:50:09', '1356207541176938497');
INSERT INTO `t_song_played` VALUES ('1359447317069946882', '1350082580150460418', '2021-02-10 18:21:38', '1359447159703855105');
INSERT INTO `t_song_played` VALUES ('1359447386800250881', '1350007003095629826', '2021-02-10 18:23:48', '1359447159703855105');
INSERT INTO `t_song_played` VALUES ('1359447409239777282', '1350081785673785345', '2021-02-10 18:22:30', '1359447159703855105');
INSERT INTO `t_song_played` VALUES ('1359447720717180929', '1350083122557853698', '2021-02-10 18:22:49', '1359447159703855105');

-- ----------------------------
-- Table structure for `t_song_sheet`
-- ----------------------------
DROP TABLE IF EXISTS `t_song_sheet`;
CREATE TABLE `t_song_sheet` (
  `sheet_id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '歌单名称',
  `pic` varchar(1255) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`sheet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='歌单管理';

-- ----------------------------
-- Records of t_song_sheet
-- ----------------------------
INSERT INTO `t_song_sheet` VALUES ('1349986496606588929', '热歌榜', 'http://192.168.3.2/images/acc83ec2-7c36-42fc-a4d3-f38a719f6652.png');
INSERT INTO `t_song_sheet` VALUES ('1349990905222660098', '新歌速递', 'http://192.168.3.2/images/099a2615-5bcb-44db-a738-479f604aec2c.png');
INSERT INTO `t_song_sheet` VALUES ('1349991388259680258', '飙升榜', 'http://192.168.3.2/images/45cfecb1-1968-4ab2-9785-e7fb9f518a94.jpg');
INSERT INTO `t_song_sheet` VALUES ('1349991984979116033', '网络歌曲榜', 'http://192.168.3.2/images/07d81761-b327-47a2-924d-e33c7a932f4e.png');
INSERT INTO `t_song_sheet` VALUES ('1349992914273304577', '内地', 'http://192.168.3.2/images/17c895e7-4c86-40d9-934f-97e7ac53908a.png');
INSERT INTO `t_song_sheet` VALUES ('1349993306390396930', 'K歌金曲', 'http://192.168.3.2/images/e8cf1d6e-8cb9-4b00-b363-3aede3b10770.png');
INSERT INTO `t_song_sheet` VALUES ('1356207153530974209', '新歌速递', 'http://192.168.3.2/images/84c8fbb5-2074-4c43-a745-2998f5253aed.png');
