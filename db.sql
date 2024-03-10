/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - gaoxiaoxiaoyoujioaoyou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaoxiaoyoujioaoyou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaoxiaoyoujioaoyou`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/gaoxiaoxiaoyoujioaoyou/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/gaoxiaoxiaoyoujioaoyou/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/gaoxiaoxiaoyoujioaoyou/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-05-06 16:49:28'),(2,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-05-06 16:49:28'),(3,'sex_types','性别类型',1,'男',NULL,NULL,'2022-05-06 16:49:28'),(4,'sex_types','性别类型',2,'女',NULL,NULL,'2022-05-06 16:49:28'),(5,'aihao_types','兴趣爱好',1,'兴趣爱好1',NULL,NULL,'2022-05-06 16:49:28'),(6,'aihao_types','兴趣爱好',2,'兴趣爱好2',NULL,NULL,'2022-05-06 16:49:28'),(7,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2022-05-06 16:49:28'),(8,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2022-05-06 16:49:28'),(9,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2022-05-06 16:49:28'),(10,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-05-06 16:49:28'),(11,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-05-06 16:49:28');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',NULL,3,1,'2022-05-06 16:52:02','2022-05-06 16:52:02','2022-05-06 16:52:02'),(2,'帖子标题2',3,NULL,'发布内容2',NULL,3,1,'2022-05-06 16:52:02','2022-05-06 16:52:02','2022-05-06 16:52:02'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,1,'2022-05-06 16:52:02','2022-05-06 16:52:02','2022-05-06 16:52:02'),(4,'帖子标题4',2,NULL,'发布内容4',NULL,1,1,'2022-05-06 16:52:02','2022-05-06 16:52:02','2022-05-06 16:52:02'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,3,1,'2022-05-06 16:52:02','2022-05-06 16:52:02','2022-05-06 16:52:02'),(6,NULL,NULL,1,'评论内容2112',5,NULL,2,'2022-05-06 17:35:42',NULL,'2022-05-06 17:35:42'),(7,NULL,1,NULL,'用户评论2122112',5,NULL,2,'2022-05-06 17:36:49',NULL,'2022-05-06 17:36:49');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int(11) NOT NULL COMMENT '公告类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/gaoxiaoxiaoyoujioaoyou/upload/news1.jpg',1,'2022-05-06 16:52:02','公告详情1','2022-05-06 16:52:02'),(2,'公告名称2','http://localhost:8080/gaoxiaoxiaoyoujioaoyou/upload/news2.jpg',2,'2022-05-06 16:52:02','公告详情2','2022-05-06 16:52:02'),(3,'公告名称3','http://localhost:8080/gaoxiaoxiaoyoujioaoyou/upload/news3.jpg',2,'2022-05-06 16:52:02','公告详情3','2022-05-06 16:52:02'),(4,'公告名称4','http://localhost:8080/gaoxiaoxiaoyoujioaoyou/upload/news4.jpg',2,'2022-05-06 16:52:02','公告详情4','2022-05-06 16:52:02'),(5,'公告名称5','http://localhost:8080/gaoxiaoxiaoyoujioaoyou/upload/news5.jpg',1,'2022-05-06 16:52:02','公告详情5','2022-05-06 16:52:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','hewfmt5c3ncrc6z1lfuthpf7nxfyxxjy','2022-05-06 17:26:23','2022-05-06 18:36:11'),(2,1,'admin','users','管理员','su7ajezdqnfergach5mjxwvullc9yu5i','2022-05-06 17:35:25','2022-05-06 18:42:07');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-08-01 08:15:04');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `aihao_types` int(11) DEFAULT NULL COMMENT '兴趣爱好 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_content` text COMMENT '个人简介',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_photo`,`sex_types`,`aihao_types`,`yonghu_email`,`yonghu_content`,`create_time`) values (1,'a1','123456','名称1','17703786901','http://localhost:8080/gaoxiaoxiaoyoujioaoyou/upload/yonghu1.jpg',2,2,'1@qq.com','个人简介1','2022-05-06 16:52:02'),(2,'a2','123456','名称2','17703786902','http://localhost:8080/gaoxiaoxiaoyoujioaoyou/upload/yonghu2.jpg',2,1,'2@qq.com','个人简介2','2022-05-06 16:52:02'),(3,'a3','123456','名称3','17703786903','http://localhost:8080/gaoxiaoxiaoyoujioaoyou/upload/yonghu3.jpg',2,2,'3@qq.com','个人简介3','2022-05-06 16:52:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
