DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` text COMMENT '添加字段：',
  `field_set` text COMMENT '修改字段：',
  `field_get` text COMMENT '查询字段：',
  `table_nav_name` varchar(500) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(500) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户权限管理';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件上传';
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登陆访问时长';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
insert into `access_token` values ('101','84e31b291f2bde6b7ceb27af5fe8eee3',null,'2','2023-04-28 18:21:49.0','2023-04-28 18:21:49.0','1');
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='用户点击';
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员','2023-04-07 16:29:25.0',null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/admin_avatar.jpg','2023-04-28 17:35:13.0');
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`(teacher_id int(11) NOT NULL AUTO_INCREMENT COMMENT '教师ID',
`job_no` varchar(64) NOT NULL UNIQUE comment '工号',
`full_name` varchar(64) comment '姓名',
`gender` varchar(64) comment '性别',
`campus_name` varchar(64) comment '校区名称',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (teacher_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '教师';

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`(student_id int(11) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
`student_number` varchar(64) NOT NULL UNIQUE comment '学号',
`full_name` varchar(64) comment '姓名',
`gender` varchar(64) comment '性别',
`campus_name` varchar(64) comment '校区名称',
`class_name` varchar(64) comment '班级名称',
`grade_name` varchar(64) comment '年级名称',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (student_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '学生';

DROP TABLE IF EXISTS `campus_management`;
CREATE TABLE `campus_management`(campus_management_id int(11) NOT NULL AUTO_INCREMENT COMMENT '校区管理ID',
`campus_name` varchar(64) comment '校区名称',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (campus_management_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '校区管理';
insert into `campus_management` values (1,'校区名称1',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `campus_management` values (2,'校区名称2',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `campus_management` values (3,'校区名称3',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `campus_management` values (4,'校区名称4',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `campus_management` values (5,'校区名称5',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `campus_management` values (6,'校区名称6',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `campus_management` values (7,'校区名称7',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `campus_management` values (8,'校区名称8',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');

DROP TABLE IF EXISTS `class_management`;
CREATE TABLE `class_management`(class_management_id int(11) NOT NULL AUTO_INCREMENT COMMENT '班级管理ID',
`class_name` varchar(64) comment '班级名称',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (class_management_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '班级管理';
insert into `class_management` values (1,'班级名称1',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `class_management` values (2,'班级名称2',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `class_management` values (3,'班级名称3',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `class_management` values (4,'班级名称4',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `class_management` values (5,'班级名称5',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `class_management` values (6,'班级名称6',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `class_management` values (7,'班级名称7',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `class_management` values (8,'班级名称8',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');

DROP TABLE IF EXISTS `grade_management`;
CREATE TABLE `grade_management`(grade_management_id int(11) NOT NULL AUTO_INCREMENT COMMENT '年级管理ID',
`grade_name` varchar(64) comment '年级名称',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (grade_management_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '年级管理';
insert into `grade_management` values (1,'年级名称1',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `grade_management` values (2,'年级名称2',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `grade_management` values (3,'年级名称3',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `grade_management` values (4,'年级名称4',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `grade_management` values (5,'年级名称5',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `grade_management` values (6,'年级名称6',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `grade_management` values (7,'年级名称7',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `grade_management` values (8,'年级名称8',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');

DROP TABLE IF EXISTS `scoring_items`;
CREATE TABLE `scoring_items`(scoring_items_id int(11) NOT NULL AUTO_INCREMENT COMMENT '评分项目ID',
`rating_type` varchar(64) comment '评分类型',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (scoring_items_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '评分项目';
insert into `scoring_items` values (1,'评分类型1',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `scoring_items` values (2,'评分类型2',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `scoring_items` values (3,'评分类型3',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `scoring_items` values (4,'评分类型4',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `scoring_items` values (5,'评分类型5',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `scoring_items` values (6,'评分类型6',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `scoring_items` values (7,'评分类型7',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `scoring_items` values (8,'评分类型8',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');

DROP TABLE IF EXISTS `behavioral_rating`;
CREATE TABLE `behavioral_rating`(behavioral_rating_id int(11) NOT NULL AUTO_INCREMENT COMMENT '行为评分ID',
`campus_name` varchar(64) comment '校区名称',
`grade_name` varchar(64) comment '年级名称',
`class_name` varchar(64) comment '班级名称',
`student` int(11) DEFAULT 0 comment '学生',
`student_id` varchar(64) comment '学号',
`total_score` int(11) DEFAULT 0 comment '总分数',
`total_deduction_points` int(11) DEFAULT 0 comment '总扣分',
`actual_score` varchar(64) comment '实际分数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (behavioral_rating_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '行为评分';
insert into `behavioral_rating` values (1,'校区名称1','年级名称1','班级名称1',0,'学号1',1,1,'实际分数1',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `behavioral_rating` values (2,'校区名称2','年级名称2','班级名称2',0,'学号2',2,2,'实际分数2',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `behavioral_rating` values (3,'校区名称3','年级名称3','班级名称3',0,'学号3',3,3,'实际分数3',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `behavioral_rating` values (4,'校区名称4','年级名称4','班级名称4',0,'学号4',4,4,'实际分数4',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `behavioral_rating` values (5,'校区名称5','年级名称5','班级名称5',0,'学号5',5,5,'实际分数5',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `behavioral_rating` values (6,'校区名称6','年级名称6','班级名称6',0,'学号6',6,6,'实际分数6',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `behavioral_rating` values (7,'校区名称7','年级名称7','班级名称7',0,'学号7',7,7,'实际分数7',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `behavioral_rating` values (8,'校区名称8','年级名称8','班级名称8',0,'学号8',8,8,'实际分数8',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');

DROP TABLE IF EXISTS `bonus_items`;
CREATE TABLE `bonus_items`(bonus_items_id int(11) NOT NULL AUTO_INCREMENT COMMENT '加分项目ID',
`rating_date` date comment '评分日期',
`campus_name` varchar(64) comment '校区名称',
`grade_name` varchar(64) comment '年级名称',
`class_name` varchar(64) comment '班级名称',
`student` int(11) DEFAULT 0 comment '学生',
`student_id` varchar(64) comment '学号',
`rating_type` varchar(64) comment '评分类型',
`bonus_points` int(11) DEFAULT 0 comment '加分分数',
`remarks` varchar(64) comment '备注信息',
`rating_teacher` int(11) DEFAULT 0 comment '评分教师',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (bonus_items_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '加分项目';
insert into `bonus_items` values (1,'2023-04-11','校区名称1','年级名称1','班级名称1',0,'学号1','评分类型1',1,'备注信息1',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `bonus_items` values (2,'2023-04-11','校区名称2','年级名称2','班级名称2',0,'学号2','评分类型2',2,'备注信息2',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `bonus_items` values (3,'2023-04-11','校区名称3','年级名称3','班级名称3',0,'学号3','评分类型3',3,'备注信息3',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `bonus_items` values (4,'2023-04-11','校区名称4','年级名称4','班级名称4',0,'学号4','评分类型4',4,'备注信息4',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `bonus_items` values (5,'2023-04-11','校区名称5','年级名称5','班级名称5',0,'学号5','评分类型5',5,'备注信息5',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `bonus_items` values (6,'2023-04-11','校区名称6','年级名称6','班级名称6',0,'学号6','评分类型6',6,'备注信息6',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `bonus_items` values (7,'2023-04-11','校区名称7','年级名称7','班级名称7',0,'学号7','评分类型7',7,'备注信息7',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `bonus_items` values (8,'2023-04-11','校区名称8','年级名称8','班级名称8',0,'学号8','评分类型8',8,'备注信息8',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');

DROP TABLE IF EXISTS `deduction_items`;
CREATE TABLE `deduction_items`(deduction_items_id int(11) NOT NULL AUTO_INCREMENT COMMENT '扣分项目ID',
`rating_date` date comment '评分日期',
`campus_name` varchar(64) comment '校区名称',
`grade_name` varchar(64) comment '年级名称',
`class_name` varchar(64) comment '班级名称',
`student` int(11) DEFAULT 0 comment '学生',
`student_id` varchar(64) comment '学号',
`rating_type` varchar(64) comment '评分类型',
`deduction_points` int(11) DEFAULT 0 comment '扣分分数',
`remarks` varchar(64) comment '备注信息',
`rating_teacher` int(11) DEFAULT 0 comment '评分教师',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (deduction_items_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '扣分项目';
insert into `deduction_items` values (1,'2023-04-11','校区名称1','年级名称1','班级名称1',0,'学号1','评分类型1',1,'备注信息1',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `deduction_items` values (2,'2023-04-11','校区名称2','年级名称2','班级名称2',0,'学号2','评分类型2',2,'备注信息2',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `deduction_items` values (3,'2023-04-11','校区名称3','年级名称3','班级名称3',0,'学号3','评分类型3',3,'备注信息3',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `deduction_items` values (4,'2023-04-11','校区名称4','年级名称4','班级名称4',0,'学号4','评分类型4',4,'备注信息4',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `deduction_items` values (5,'2023-04-11','校区名称5','年级名称5','班级名称5',0,'学号5','评分类型5',5,'备注信息5',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `deduction_items` values (6,'2023-04-11','校区名称6','年级名称6','班级名称6',0,'学号6','评分类型6',6,'备注信息6',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `deduction_items` values (7,'2023-04-11','校区名称7','年级名称7','班级名称7',0,'学号7','评分类型7',7,'备注信息7',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `deduction_items` values (8,'2023-04-11','校区名称8','年级名称8','班级名称8',0,'学号8','评分类型8',8,'备注信息8',0,0,'2023-04-11 21:18:22','2023-04-11 21:18:22');

DROP TABLE IF EXISTS `semester_total`;
CREATE TABLE `semester_total`(semester_total_id int(11) NOT NULL AUTO_INCREMENT COMMENT '学期总计ID',
`student` int(11) DEFAULT 0 comment '学生',
`student_id` varchar(64) comment '学号',
`campus_name` varchar(64) comment '校区名称',
`grade_name` varchar(64) comment '年级名称',
`class_name` varchar(64) comment '班级名称',
`graded_semester` varchar(64) comment '评分学期',
`full_score` varchar(64) comment '满分',
`bonus_points` varchar(64) comment '加分',
`deduction_points` varchar(64) comment '扣分',
`total` varchar(64) comment '合计',
`total_score` varchar(64) comment '总分',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (semester_total_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '学期总计';
insert into `semester_total` values (1,0,'学号1','校区名称1','年级名称1','班级名称1','评分学期1','满分1','加分1','扣分1','合计1','总分1',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `semester_total` values (2,0,'学号2','校区名称2','年级名称2','班级名称2','评分学期2','满分2','加分2','扣分2','合计2','总分2',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `semester_total` values (3,0,'学号3','校区名称3','年级名称3','班级名称3','评分学期3','满分3','加分3','扣分3','合计3','总分3',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `semester_total` values (4,0,'学号4','校区名称4','年级名称4','班级名称4','评分学期4','满分4','加分4','扣分4','合计4','总分4',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `semester_total` values (5,0,'学号5','校区名称5','年级名称5','班级名称5','评分学期5','满分5','加分5','扣分5','合计5','总分5',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `semester_total` values (6,0,'学号6','校区名称6','年级名称6','班级名称6','评分学期6','满分6','加分6','扣分6','合计6','总分6',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `semester_total` values (7,0,'学号7','校区名称7','年级名称7','班级名称7','评分学期7','满分7','加分7','扣分7','合计7','总分7',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');
insert into `semester_total` values (8,0,'学号8','校区名称8','年级名称8','班级名称8','评分学期8','满分8','加分8','扣分8','合计8','总分8',0,'2023-04-11 21:18:22','2023-04-11 21:18:22');

insert into `auth` values ('1','管理员','教师','teacher','教师','/teacher/table','','_blank','1','1','1','1','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('2','管理员','教师','teacher','教师详情','/teacher/view','','_blank','1','1','1','1','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('3','管理员','学生','student','学生','/student/table','','_blank','1','1','1','1','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('4','管理员','学生','student','学生详情','/student/view','','_blank','1','1','1','1','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('5','管理员','校区管理','campus_management','校区管理','/campus_management/table','','_blank','1','1','1','1','campus_name','campus_name','campus_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('6','管理员','校区管理','campus_management','校区管理详情','/campus_management/view','','_blank','1','1','1','1','campus_name','campus_name','campus_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('7','管理员','班级管理','class_management','班级管理','/class_management/table','','_blank','1','1','1','1','class_name','class_name','class_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('8','管理员','班级管理','class_management','班级管理详情','/class_management/view','','_blank','1','1','1','1','class_name','class_name','class_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('9','管理员','年级管理','grade_management','年级管理','/grade_management/table','','_blank','1','1','1','1','grade_name','grade_name','grade_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('10','管理员','年级管理','grade_management','年级管理详情','/grade_management/view','','_blank','1','1','1','1','grade_name','grade_name','grade_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('11','管理员','评分项目','scoring_items','评分项目','/scoring_items/table','','_blank','1','1','1','1','rating_type','rating_type','rating_type',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('12','管理员','评分项目','scoring_items','评分项目详情','/scoring_items/view','','_blank','1','1','1','1','rating_type','rating_type','rating_type',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('13','管理员','行为评分','behavioral_rating','行为评分','/behavioral_rating/table','','_blank','1','1','1','1','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('14','管理员','行为评分','behavioral_rating','行为评分详情','/behavioral_rating/view','','_blank','1','1','1','1','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('15','管理员','加分项目','bonus_items','加分项目','/bonus_items/table','','_blank','1','1','1','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher',null,'0','{"figure":true}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('16','管理员','加分项目','bonus_items','加分项目详情','/bonus_items/view','','_blank','1','1','1','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('17','管理员','扣分项目','deduction_items','扣分项目','/deduction_items/table','','_blank','1','1','1','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher',null,'0','{"figure":true}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('18','管理员','扣分项目','deduction_items','扣分项目详情','/deduction_items/view','','_blank','1','1','1','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('19','管理员','学期总计','semester_total','学期总计','/semester_total/table','','_blank','1','1','1','1','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score',null,'0','{"figure":true,"export_db":true}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('20','管理员','学期总计','semester_total','学期总计详情','/semester_total/view','','_blank','1','1','1','1','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('21','管理员','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('22','管理员','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('23','管理员','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('24','管理员','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('25','游客','教师','teacher','教师','/teacher/table','','_blank','1','0','0','0','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('26','游客','教师','teacher','教师详情','/teacher/view','','_blank','1','0','0','0','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('27','游客','学生','student','学生','/student/table','','_blank','1','0','0','0','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('28','游客','学生','student','学生详情','/student/view','','_blank','1','0','0','0','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('29','游客','校区管理','campus_management','校区管理','/campus_management/table','','_blank','0','0','0','0','campus_name','campus_name','campus_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('30','游客','校区管理','campus_management','校区管理详情','/campus_management/view','','_blank','0','0','0','0','campus_name','campus_name','campus_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('31','游客','班级管理','class_management','班级管理','/class_management/table','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('32','游客','班级管理','class_management','班级管理详情','/class_management/view','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('33','游客','年级管理','grade_management','年级管理','/grade_management/table','','_blank','0','0','0','0','grade_name','grade_name','grade_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('34','游客','年级管理','grade_management','年级管理详情','/grade_management/view','','_blank','0','0','0','0','grade_name','grade_name','grade_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('35','游客','评分项目','scoring_items','评分项目','/scoring_items/table','','_blank','0','0','0','0','rating_type','rating_type','rating_type',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('36','游客','评分项目','scoring_items','评分项目详情','/scoring_items/view','','_blank','0','0','0','0','rating_type','rating_type','rating_type',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('37','游客','行为评分','behavioral_rating','行为评分','/behavioral_rating/table','','_blank','0','0','0','0','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('38','游客','行为评分','behavioral_rating','行为评分详情','/behavioral_rating/view','','_blank','0','0','0','0','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('39','游客','加分项目','bonus_items','加分项目','/bonus_items/table','','_blank','0','0','0','0','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher',null,'0','{"figure":false}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('40','游客','加分项目','bonus_items','加分项目详情','/bonus_items/view','','_blank','0','0','0','0','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('41','游客','扣分项目','deduction_items','扣分项目','/deduction_items/table','','_blank','0','0','0','0','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher',null,'0','{"figure":false}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('42','游客','扣分项目','deduction_items','扣分项目详情','/deduction_items/view','','_blank','0','0','0','0','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('43','游客','学期总计','semester_total','学期总计','/semester_total/table','','_blank','0','0','0','0','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score',null,'0','{"figure":false,"export_db":false}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('44','游客','学期总计','semester_total','学期总计详情','/semester_total/view','','_blank','0','0','0','0','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('45','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('46','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('47','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('48','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('49','教师','教师','teacher','教师','/teacher/table','','_blank','0','0','0','0','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('50','教师','教师','teacher','教师详情','/teacher/view','','_blank','0','0','0','0','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('51','教师','学生','student','学生','/student/table','','_blank','0','0','0','0','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name',null,'0','{}','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `auth` values ('52','教师','学生','student','学生详情','/student/view','','_blank','0','0','0','0','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('53','教师','校区管理','campus_management','校区管理','/campus_management/table','','_blank','0','0','0','0','campus_name','campus_name','campus_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('54','教师','校区管理','campus_management','校区管理详情','/campus_management/view','','_blank','0','0','0','0','campus_name','campus_name','campus_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('55','教师','班级管理','class_management','班级管理','/class_management/table','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('56','教师','班级管理','class_management','班级管理详情','/class_management/view','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('57','教师','年级管理','grade_management','年级管理','/grade_management/table','','_blank','0','0','0','0','grade_name','grade_name','grade_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('58','教师','年级管理','grade_management','年级管理详情','/grade_management/view','','_blank','0','0','0','0','grade_name','grade_name','grade_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('59','教师','评分项目','scoring_items','评分项目','/scoring_items/table','','_blank','0','0','0','0','rating_type','rating_type','rating_type',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('60','教师','评分项目','scoring_items','评分项目详情','/scoring_items/view','','_blank','0','0','0','0','rating_type','rating_type','rating_type',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('61','教师','行为评分','behavioral_rating','行为评分','/behavioral_rating/table','','_blank','0','0','0','1','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('62','教师','行为评分','behavioral_rating','行为评分详情','/behavioral_rating/view','','_blank','0','0','0','1','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('63','教师','加分项目','bonus_items','加分项目','/bonus_items/table','','_blank','1','0','0','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher',null,'0','{"figure":true}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('64','教师','加分项目','bonus_items','加分项目详情','/bonus_items/view','','_blank','1','0','0','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('65','教师','扣分项目','deduction_items','扣分项目','/deduction_items/table','','_blank','1','0','0','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher',null,'0','{"figure":true}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('66','教师','扣分项目','deduction_items','扣分项目详情','/deduction_items/view','','_blank','1','0','0','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('67','教师','学期总计','semester_total','学期总计','/semester_total/table','','_blank','1','0','0','1','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score',null,'0','{"figure":false,"export_db":true}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('68','教师','学期总计','semester_total','学期总计详情','/semester_total/view','','_blank','1','0','0','1','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('69','教师','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('70','教师','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('71','教师','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('72','教师','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('73','学生','教师','teacher','教师','/teacher/table','','_blank','0','0','0','0','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('74','学生','教师','teacher','教师详情','/teacher/view','','_blank','0','0','0','0','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name','job_no,full_name,gender,campus_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('75','学生','学生','student','学生','/student/table','','_blank','0','0','0','0','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('76','学生','学生','student','学生详情','/student/view','','_blank','0','0','0','0','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name','student_number,full_name,gender,campus_name,class_name,grade_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('77','学生','校区管理','campus_management','校区管理','/campus_management/table','','_blank','0','0','0','0','campus_name','campus_name','campus_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('78','学生','校区管理','campus_management','校区管理详情','/campus_management/view','','_blank','0','0','0','0','campus_name','campus_name','campus_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('79','学生','班级管理','class_management','班级管理','/class_management/table','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('80','学生','班级管理','class_management','班级管理详情','/class_management/view','','_blank','0','0','0','0','class_name','class_name','class_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('81','学生','年级管理','grade_management','年级管理','/grade_management/table','','_blank','0','0','0','0','grade_name','grade_name','grade_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('82','学生','年级管理','grade_management','年级管理详情','/grade_management/view','','_blank','0','0','0','0','grade_name','grade_name','grade_name',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('83','学生','评分项目','scoring_items','评分项目','/scoring_items/table','','_blank','0','0','0','0','rating_type','rating_type','rating_type',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('84','学生','评分项目','scoring_items','评分项目详情','/scoring_items/view','','_blank','0','0','0','0','rating_type','rating_type','rating_type',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('85','学生','行为评分','behavioral_rating','行为评分','/behavioral_rating/table','','_blank','0','0','0','1','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('86','学生','行为评分','behavioral_rating','行为评分详情','/behavioral_rating/view','','_blank','0','0','0','1','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score','campus_name,grade_name,class_name,student,student_id,total_score,total_deduction_points,actual_score',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('87','学生','加分项目','bonus_items','加分项目','/bonus_items/table','','_blank','0','0','0','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher',null,'0','{"figure":true}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('88','学生','加分项目','bonus_items','加分项目详情','/bonus_items/view','','_blank','0','0','0','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,bonus_points,remarks,rating_teacher',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('89','学生','扣分项目','deduction_items','扣分项目','/deduction_items/table','','_blank','0','0','0','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher',null,'0','{"figure":true}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('90','学生','扣分项目','deduction_items','扣分项目详情','/deduction_items/view','','_blank','0','0','0','1','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher','rating_date,campus_name,grade_name,class_name,student,student_id,rating_type,deduction_points,remarks,rating_teacher',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('91','学生','学期总计','semester_total','学期总计','/semester_total/table','','_blank','0','0','0','0','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score',null,'0','{"figure":false,"export_db":false}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('92','学生','学期总计','semester_total','学期总计详情','/semester_total/view','','_blank','0','0','0','0','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score','student,student_id,campus_name,grade_name,class_name,graded_semester,full_score,bonus_points,deduction_points,total,total_score',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('93','学生','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('94','学生','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('95','学生','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `auth` values ('96','学生','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
insert into `user_group` values ('1','100','管理员',null,'','','0','0','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `user_group` values ('2','100','游客',null,'','','0','0','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `user_group` values ('3','100','教师',null,'teacher','teacher_id','0','1','2023-04-11 21:18:22.0','2023-04-11 21:18:22.0');
insert into `user_group` values ('4','100','学生',null,'student','student_id','0','1','2023-04-11 21:18:23.0','2023-04-11 21:18:23.0');
