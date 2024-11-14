/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - tanweiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tanweiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tanweiguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-06 19:39:56'),(2,'sex_types','性别',2,'女',NULL,'2021-05-06 19:39:56'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-05-06 19:39:56'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-05-06 19:39:56'),(5,'taanwei_types','摊位类型',1,'临时',NULL,'2021-05-06 19:39:56'),(6,'taanwei_types','摊位类型',2,'固定',NULL,'2021-05-06 19:39:56'),(7,'zhuangtai_types','摊位状态',1,'不空闲',NULL,'2021-05-06 19:39:56'),(8,'zhuangtai_types','摊位状态',2,'空闲',NULL,'2021-05-06 19:39:56'),(9,'shenqing_types','申请类型',1,'申请摊位',NULL,'2021-05-06 19:39:56'),(10,'shenqing_types','申请类型',2,'升级摊位',NULL,'2021-05-06 19:39:56'),(11,'quyu_types','摊位区域名称',1,'蔬菜区',NULL,'2021-05-06 19:39:56'),(12,'quyu_types','摊位区域名称',2,'肉类区',NULL,'2021-05-06 19:39:56'),(13,'quyu_types','摊位区域名称',3,'海鲜区',NULL,'2021-05-06 19:39:56'),(14,'shenhe_types','审核状态',1,'未审核',NULL,'2021-05-06 19:39:56'),(15,'shenhe_types','审核状态',2,'通过',NULL,'2021-05-06 19:39:56'),(16,'shenhe_types','审核状态',3,'拒绝',NULL,'2021-05-06 19:39:57');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告1',1,'http://localhost:8080/tanweiguanli/file/download?fileName=1620356612371.jpg','2021-05-07 11:03:36','公告详情1\r\n','2021-05-07 11:03:36'),(2,'公告2',2,'http://localhost:8080/tanweiguanli/file/download?fileName=1620356621726.jpg','2021-05-07 11:03:43','公告详情2\r\n','2021-05-07 11:03:43');

/*Table structure for table `shenqing` */

DROP TABLE IF EXISTS `shenqing`;

CREATE TABLE `shenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '申请用户',
  `taanwei_id` int(11) DEFAULT NULL COMMENT '申请摊位',
  `shenhe_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `shenqing_types` int(11) DEFAULT NULL COMMENT '申请类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='摊位申请';

/*Data for the table `shenqing` */

insert  into `shenqing`(`id`,`yonghu_id`,`taanwei_id`,`shenhe_types`,`shenqing_types`,`insert_time`,`create_time`) values (5,1,3,2,1,'2021-05-07 11:05:21','2021-05-07 11:05:21'),(6,1,2,3,1,'2021-05-07 11:05:24','2021-05-07 11:05:24'),(7,1,1,2,1,'2021-05-07 11:05:26','2021-05-07 11:05:26'),(11,1,3,2,2,'2021-05-07 11:15:22','2021-05-07 11:15:22');

/*Table structure for table `taanwei` */

DROP TABLE IF EXISTS `taanwei`;

CREATE TABLE `taanwei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `taanwei_name` varchar(200) DEFAULT NULL COMMENT '摊位编号 ',
  `taanwei_types` int(200) DEFAULT NULL COMMENT '摊位类型 Search111',
  `zhuangtai_types` int(200) DEFAULT NULL COMMENT '摊位状态 Search111',
  `quyu_types` int(200) DEFAULT NULL COMMENT '摊位区域 Search111',
  `taanwei_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='摊位信息';

/*Data for the table `taanwei` */

insert  into `taanwei`(`id`,`taanwei_name`,`taanwei_types`,`zhuangtai_types`,`quyu_types`,`taanwei_content`,`create_time`) values (1,'001',2,1,3,'详情信息1\r\n','2021-05-06 21:20:01'),(2,'002',1,2,2,'详情信息2\r\n','2021-05-07 10:57:05'),(3,'003',2,1,1,'详情信息3\r\n','2021-05-07 11:02:28');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','oxssle01zuiirm4il3gk2ggo0xtl70yv','2021-05-06 19:54:33','2021-05-07 12:16:12'),(2,1,'111','yonghu','用户','of3m0nwiu7yy193uic3x6j1qru4wxak1','2021-05-07 10:55:37','2021-05-07 12:07:45'),(3,2,'222','yonghu','用户','nm8pxo2xvazjustniqgbpumcm4eimbyx','2021-05-07 11:05:34','2021-05-07 12:05:35');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `wode` */

DROP TABLE IF EXISTS `wode`;

CREATE TABLE `wode` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '摊主 ',
  `taanwei_id` int(200) DEFAULT NULL COMMENT '摊位编号 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='我的摊位';

/*Data for the table `wode` */

insert  into `wode`(`id`,`yonghu_id`,`taanwei_id`,`create_time`) values (4,1,3,'2021-05-07 11:06:47'),(5,1,1,'2021-05-07 11:07:38');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882200011216111','13549944121','1111@qq.com','http://localhost:8080/tanweiguanli/file/download?fileName=1620302276217.jpg','2021-05-06 19:57:58'),(2,'222','123456','用户2',2,'410882200011216112','13549944682','2222@qq.com','http://localhost:8080/tanweiguanli/file/download?fileName=1620302291341.jpg','2021-05-06 19:58:12'),(3,'333','123456','用户3',2,'410882200011216113','13549944123','3333@qq.com','http://localhost:8080/tanweiguanli/file/download?fileName=1620356459851.jpg','2021-05-07 11:01:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
