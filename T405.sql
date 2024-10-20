-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.38 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 t405 的数据库结构
DROP DATABASE IF EXISTS `t405`;
CREATE DATABASE IF NOT EXISTS `t405` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t405`;

-- 导出  表 t405.config 结构
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

-- 正在导出表  t405.config 的数据：~3 rows (大约)
DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

-- 导出  表 t405.dictionary 结构
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

-- 正在导出表  t405.dictionary 的数据：~27 rows (大约)
DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'meishi_types', '美食类型', 1, '美食类型1', NULL, NULL, '2023-02-24 01:30:35'),
	(2, 'meishi_types', '美食类型', 2, '美食类型2', NULL, NULL, '2023-02-24 01:30:35'),
	(3, 'meishi_types', '美食类型', 3, '美食类型3', NULL, NULL, '2023-02-24 01:30:35'),
	(4, 'huodong_types', '活动类型', 1, '活动类型1', NULL, NULL, '2023-02-24 01:30:35'),
	(5, 'huodong_types', '活动类型', 2, '活动类型2', NULL, NULL, '2023-02-24 01:30:35'),
	(6, 'huodong_types', '活动类型', 3, '活动类型3', NULL, NULL, '2023-02-24 01:30:35'),
	(7, 'huodong_yuyue_yesno_types', '订单类型', 1, '待审核', NULL, NULL, '2023-02-24 01:30:35'),
	(8, 'huodong_yuyue_yesno_types', '订单类型', 2, '同意', NULL, NULL, '2023-02-24 01:30:35'),
	(9, 'huodong_yuyue_yesno_types', '订单类型', 3, '拒绝', NULL, NULL, '2023-02-24 01:30:35'),
	(10, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-02-24 01:30:35'),
	(11, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-02-24 01:30:35'),
	(12, 'minsu_types', '客房类型', 1, '客房类型1', NULL, NULL, '2023-02-24 01:30:35'),
	(13, 'minsu_types', '客房类型', 2, '客房类型2', NULL, NULL, '2023-02-24 01:30:35'),
	(14, 'minsu_types', '客房类型', 3, '客房类型3', NULL, NULL, '2023-02-24 01:30:35'),
	(15, 'minsu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-02-24 01:30:35'),
	(16, 'minsu_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-02-24 01:30:35'),
	(17, 'minsu_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-02-24 01:30:35'),
	(18, 'minsu_order_types', '订单类型', 103, '已完成', NULL, NULL, '2023-02-24 01:30:35'),
	(19, 'minsu_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-02-24 01:30:35'),
	(20, 'minsu_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-02-24 01:30:35'),
	(21, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-02-24 01:30:35'),
	(22, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-02-24 01:30:35'),
	(23, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-02-24 01:30:35'),
	(24, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-02-24 01:30:36'),
	(25, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-02-24 01:30:36'),
	(26, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-02-24 01:30:36'),
	(27, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-02-24 01:30:36');

-- 导出  表 t405.forum 结构
DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

-- 正在导出表  t405.forum 的数据：~6 rows (大约)
DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', 34, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(2, '帖子标题2', 2, NULL, '发布内容2', 410, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(3, '帖子标题3', 2, NULL, '发布内容3', 239, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(4, '帖子标题4', 2, NULL, '发布内容4', 481, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(5, '帖子标题5', 2, NULL, '发布内容5', 350, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(6, NULL, 1, NULL, '21312312', 5, 2, '2023-02-24 11:08:34', NULL, '2023-02-24 11:08:34'),
	(7, NULL, 1, NULL, '666', 5, 2, '2024-09-26 06:39:54', NULL, '2024-09-26 06:39:54');

-- 导出  表 t405.huodong 结构
DROP TABLE IF EXISTS `huodong`;
CREATE TABLE IF NOT EXISTS `huodong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '活动名称  Search111 ',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '活动照片',
  `huodong_types` int DEFAULT NULL COMMENT '活动类型 Search111',
  `huodong_content` text COMMENT '活动介绍 ',
  `huodong_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='活动';

-- 正在导出表  t405.huodong 的数据：~5 rows (大约)
DELETE FROM `huodong`;
INSERT INTO `huodong` (`id`, `huodong_name`, `huodong_photo`, `huodong_types`, `huodong_content`, `huodong_delete`, `insert_time`, `create_time`) VALUES
	(1, '活动名称1', 'upload/huodong1.jpg', 2, '活动介绍1', 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(2, '活动名称2', 'upload/huodong2.jpg', 1, '活动介绍2', 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(3, '活动名称3', 'upload/huodong3.jpg', 1, '活动介绍3', 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(4, '活动名称4', 'upload/huodong4.jpg', 2, '活动介绍4', 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(5, '活动名称5', 'upload/huodong5.jpg', 1, '活动介绍5', 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48');

-- 导出  表 t405.huodong_yuyue 结构
DROP TABLE IF EXISTS `huodong_yuyue`;
CREATE TABLE IF NOT EXISTS `huodong_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `huodong_id` int DEFAULT NULL COMMENT '活动',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `huodong_yuyue_text` text COMMENT '报名理由',
  `huodong_yuyue_yesno_types` int DEFAULT NULL COMMENT '报名状态 Search111 ',
  `huodong_yuyue_yesno_text` text COMMENT '审核回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='活动报名';

-- 正在导出表  t405.huodong_yuyue 的数据：~6 rows (大约)
DELETE FROM `huodong_yuyue`;
INSERT INTO `huodong_yuyue` (`id`, `huodong_yuyue_uuid_number`, `huodong_id`, `yonghu_id`, `huodong_yuyue_text`, `huodong_yuyue_yesno_types`, `huodong_yuyue_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, '1677202248403', 1, 3, '报名理由1', 1, NULL, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(2, '1677202248399', 2, 3, '报名理由2', 1, NULL, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(3, '1677202248409', 3, 3, '报名理由3', 1, NULL, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(4, '1677202248445', 4, 3, '报名理由4', 1, NULL, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(5, '1677202248468', 5, 1, '报名理由5', 2, '123123', '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(6, '1677236907534', 3, 1, '132132', 3, '123123', '2023-02-24 11:08:28', '2023-02-24 11:08:28'),
	(7, '1727332801871', 3, 1, '666', 1, NULL, '2024-09-26 06:40:02', '2024-09-26 06:40:02');

-- 导出  表 t405.meishi 结构
DROP TABLE IF EXISTS `meishi`;
CREATE TABLE IF NOT EXISTS `meishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '美食名称  Search111 ',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '美食照片',
  `meishi_types` int DEFAULT NULL COMMENT '美食类型 Search111',
  `meishi_content` text COMMENT '美食介绍 ',
  `meishi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='美食';

-- 正在导出表  t405.meishi 的数据：~5 rows (大约)
DELETE FROM `meishi`;
INSERT INTO `meishi` (`id`, `meishi_name`, `meishi_photo`, `meishi_types`, `meishi_content`, `meishi_delete`, `insert_time`, `create_time`) VALUES
	(1, '美食名称1', 'upload/meishi1.jpg', 1, '美食介绍1', 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(2, '美食名称2', 'upload/meishi2.jpg', 3, '美食介绍2', 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(3, '美食名称3', 'upload/meishi3.jpg', 2, '美食介绍3', 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(4, '美食名称4', 'upload/meishi4.jpg', 2, '美食介绍4', 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(5, '美食名称5', 'upload/meishi5.jpg', 2, '美食介绍5', 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48');

-- 导出  表 t405.minsu 结构
DROP TABLE IF EXISTS `minsu`;
CREATE TABLE IF NOT EXISTS `minsu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `minsu_uuid_number` varchar(200) DEFAULT NULL COMMENT '客房编号',
  `minsu_name` varchar(200) DEFAULT NULL COMMENT '客房名称  Search111 ',
  `minsu_photo` varchar(200) DEFAULT NULL COMMENT '客房照片',
  `minsu_types` int DEFAULT NULL COMMENT '客房类型 Search111',
  `minsu_new_money` decimal(10,2) DEFAULT NULL COMMENT '客房定金 ',
  `minsu_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `minsu_content` text COMMENT '客房介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `minsu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='客房';

-- 正在导出表  t405.minsu 的数据：~5 rows (大约)
DELETE FROM `minsu`;
INSERT INTO `minsu` (`id`, `minsu_uuid_number`, `minsu_name`, `minsu_photo`, `minsu_types`, `minsu_new_money`, `minsu_clicknum`, `minsu_content`, `shangxia_types`, `minsu_delete`, `insert_time`, `create_time`) VALUES
	(1, '1677202248405', '客房名称1', 'upload/minsu1.jpg', 2, 265.41, 415, '客房介绍1', 1, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(2, '1677202248468', '客房名称2', 'upload/minsu2.jpg', 2, 61.28, 35, '客房介绍2', 1, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(3, '1677202248446', '客房名称3', 'upload/minsu3.jpg', 2, 368.59, 309, '客房介绍3', 1, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(4, '1677202248451', '客房名称4', 'upload/minsu4.jpg', 3, 444.30, 148, '客房介绍4', 1, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(5, '1677202248498', '客房名称5', 'upload/minsu5.jpg', 1, 404.46, 5, '客房介绍5', 2, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48');

-- 导出  表 t405.minsu_collection 结构
DROP TABLE IF EXISTS `minsu_collection`;
CREATE TABLE IF NOT EXISTS `minsu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `minsu_id` int DEFAULT NULL COMMENT '客房',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `minsu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='客房收藏';

-- 正在导出表  t405.minsu_collection 的数据：~7 rows (大约)
DELETE FROM `minsu_collection`;
INSERT INTO `minsu_collection` (`id`, `minsu_id`, `yonghu_id`, `minsu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(2, 2, 2, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(3, 3, 3, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(4, 4, 3, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(5, 5, 3, 1, '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(6, 4, 1, 1, '2023-02-24 11:06:25', '2023-02-24 11:06:25'),
	(7, 5, 1, 1, '2023-02-24 11:08:16', '2023-02-24 11:08:16'),
	(8, 1, 1, 1, '2024-09-26 06:40:15', '2024-09-26 06:40:15');

-- 导出  表 t405.minsu_commentback 结构
DROP TABLE IF EXISTS `minsu_commentback`;
CREATE TABLE IF NOT EXISTS `minsu_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `minsu_id` int DEFAULT NULL COMMENT '客房',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `minsu_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='客房评价';

-- 正在导出表  t405.minsu_commentback 的数据：~5 rows (大约)
DELETE FROM `minsu_commentback`;
INSERT INTO `minsu_commentback` (`id`, `minsu_id`, `yonghu_id`, `minsu_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2023-02-24 01:30:48', '回复信息1', '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(2, 2, 3, '评价内容2', '2023-02-24 01:30:48', '回复信息2', '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(3, 3, 3, '评价内容3', '2023-02-24 01:30:48', '回复信息3', '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(4, 4, 1, '评价内容4', '2023-02-24 01:30:48', '回复信息4', '2023-02-24 01:30:48', '2023-02-24 01:30:48'),
	(5, 5, 2, '评价内容5', '2023-02-24 01:30:48', '回复信息5111', '2023-02-24 11:10:08', '2023-02-24 01:30:48');

-- 导出  表 t405.minsu_order 结构
DROP TABLE IF EXISTS `minsu_order`;
CREATE TABLE IF NOT EXISTS `minsu_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `minsu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `minsu_id` int DEFAULT NULL COMMENT '客房',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `minsu_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `minsu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `minsu_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `minsu_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='客房预定';

-- 正在导出表  t405.minsu_order 的数据：~2 rows (大约)
DELETE FROM `minsu_order`;
INSERT INTO `minsu_order` (`id`, `minsu_order_uuid_number`, `minsu_id`, `yonghu_id`, `minsu_order_time`, `minsu_order_true_price`, `minsu_order_types`, `minsu_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1677236735099', 4, 1, '2023-02-27 16:00:00', 444.30, 103, 1, '2023-02-24 11:05:35', '2023-02-24 11:05:35'),
	(2, '1677236926096', 4, 1, '2023-02-28 06:00:00', 444.30, 102, 1, '2023-02-24 11:08:46', '2023-02-24 11:08:46');

-- 导出  表 t405.news 结构
DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

-- 正在导出表  t405.news 的数据：~5 rows (大约)
DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'upload/news1.jpg', '2023-02-24 01:30:48', '公告详情1', '2023-02-24 01:30:48'),
	(2, '公告标题2', 3, 'upload/news2.jpg', '2023-02-24 01:30:48', '公告详情2', '2023-02-24 01:30:48'),
	(3, '公告标题3', 3, 'upload/news3.jpg', '2023-02-24 01:30:48', '公告详情3', '2023-02-24 01:30:48'),
	(4, '公告标题4', 3, 'upload/news4.jpg', '2023-02-24 01:30:48', '公告详情4', '2023-02-24 01:30:48'),
	(5, '公告标题5', 2, 'upload/news5.jpg', '2023-02-24 01:30:48', '公告详情5', '2023-02-24 01:30:48');

-- 导出  表 t405.token 结构
DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

-- 正在导出表  t405.token 的数据：~2 rows (大约)
DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'uoy6yem4xs43vbx5i0j3g9bxaofbrhgf', '2023-02-24 01:38:07', '2024-09-26 07:38:20'),
	(2, 1, 'a1', 'yonghu', '用户', '32aol3nkknk7sggqd3oe7c37y0v9lbif', '2023-02-24 02:02:45', '2024-09-26 07:39:43');

-- 导出  表 t405.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

-- 正在导出表  t405.users 的数据：~1 rows (大约)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

-- 导出  表 t405.yonghu 结构
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

-- 正在导出表  t405.yonghu 的数据：~3 rows (大约)
DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `sex_types`, `yonghu_photo`, `yonghu_id_number`, `yonghu_phone`, `yonghu_email`, `new_money`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 1, 'upload/yonghu1.jpg', '410224199010102001', '17703786901', '1@qq.com', 10334.45, 1, '2023-02-24 01:30:48'),
	(2, '用户2', '123456', '用户姓名2', 2, 'upload/yonghu2.jpg', '410224199010102002', '17703786902', '2@qq.com', 783.19, 1, '2023-02-24 01:30:48'),
	(3, '用户3', '123456', '用户姓名3', 1, 'upload/yonghu3.jpg', '410224199010102003', '17703786903', '3@qq.com', 140.10, 1, '2023-02-24 01:30:48');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
