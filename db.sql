/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kechengzhiyuanguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kechengzhiyuanguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kechengzhiyuanguanli`;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-15 10:04:37'),(2,'sex_types','性别',2,'女',NULL,'2021-05-15 10:04:37'),(3,'kecheng_types','课程类型名称',1,'课程类型1',NULL,'2021-05-15 10:04:37'),(4,'kecheng_types','课程类型名称',2,'课程类型2',NULL,'2021-05-15 10:04:37'),(5,'kecheng_types','课程类型名称',3,'课程类型3',NULL,'2021-05-15 10:04:37'),(6,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-05-15 10:04:37'),(7,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-05-15 10:04:37'),(8,'zuoye_types','交付状态',1,'未交付',NULL,'2021-05-15 10:04:37'),(9,'zuoye_types','交付状态',2,'延期交付',NULL,'2021-05-15 10:04:37'),(10,'zuoye_types','交付状态',3,'已交付',NULL,'2021-05-15 10:04:37');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_email`,`jiaoshi_photo`,`create_time`) values (1,'333','123456','教师1',2,'410882200112121111','13516622941','1111@qq.com','http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621045044842.jpg','2021-05-15 10:17:25'),(2,'444','123456','教师2',1,'410882200112121112','13516622942','2222@qq.com','http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621045060386.jpg','2021-05-15 10:17:41');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111',
  `kecheng_types` int(200) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_file` varchar(200) DEFAULT NULL COMMENT '课件',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `kecheng_shijian` int(200) DEFAULT NULL COMMENT '课程时间/分钟',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '负责教师',
  `zuoye_content` text COMMENT '作业信息',
  `kecheng_renzhiyaoqiu` timestamp NULL DEFAULT NULL COMMENT '作业交付时间',
  `kecheng_content` text COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_types`,`kecheng_file`,`kecheng_video`,`kecheng_shijian`,`jiaoshi_id`,`zuoye_content`,`kecheng_renzhiyaoqiu`,`kecheng_content`,`create_time`) values (1,'课程名称1',1,'http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621045122583.doc','http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621045127386.mp4',30,1,'作业信息1\r\n\r\n','2021-05-16 13:00:00','课程详情1\r\n\r\n','2021-05-15 10:18:58'),(2,'课程2',2,'http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621045157214.xls','http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621045160936.mp4',60,2,'作业信息2\r\n\r\n','2021-05-17 00:00:00','课程详情2\r\n\r\n','2021-05-15 10:19:32'),(3,'课程3',3,'http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621048103454.rar','http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621048107902.mp4',120,2,'作业信息3\r\n\r\n','2021-05-15 11:00:00','课程详情3\r\n','2021-05-15 11:08:52');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621045269632.jpg','2021-05-15 10:21:13','公告信息详情1\r\n\r\n','2021-05-15 10:21:13'),(4,'公告2',2,'http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621045280349.jpg','2021-05-15 10:21:22','公告信息详情2\r\n\r\n','2021-05-15 10:21:22');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','ooijfr8fw59oc0wan3oztthd5d3r6whx','2021-05-14 19:31:59','2021-05-15 12:15:01'),(2,1,'111','yonghu','学生','s75whhrfckebo1q1te4h5h4efbf2iu8h','2021-05-15 09:58:36','2021-05-15 12:15:46'),(3,1,'333','jiaoshi','教师','dkw77gb14kzr8dl3pdw1uhe0w70nk8so','2021-05-15 10:47:09','2021-05-15 12:10:56'),(4,2,'222','yonghu','学生','3rm7sis4dmigstkbq7ut7zxr9dnviiut','2021-05-15 11:10:22','2021-05-15 12:10:22'),(5,2,'444','jiaoshi','教师','o1e5241s8jd18tr5rs2ehboel8nawc51','2021-05-15 11:12:06','2021-05-15 12:12:06');

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

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`kecheng_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_photo`,`create_time`) values (1,'111','123456','学生1',1,2,'410882198912111111','17789966591','1111@qq.com','http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621045076297.jpg','2021-05-15 10:17:57'),(2,'222','123456','学生2',1,3,'410882198912111112','17789966592','2222@qq.com','http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621045093164.jpg','2021-05-15 10:18:14');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业',
  `zuoye_types` int(11) DEFAULT NULL COMMENT '交付状态 Search111',
  `zuoye_pingfen` int(11) DEFAULT NULL COMMENT '教师评分',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '交付时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='作业信息';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`kecheng_id`,`yonghu_id`,`zuoye_file`,`zuoye_types`,`zuoye_pingfen`,`insert_time`,`create_time`) values (1,1,1,'http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621046260348.doc',3,21,'2021-05-15 10:37:41','2021-05-15 10:26:46'),(2,2,1,'http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621048203541.xls',3,NULL,'2021-05-15 11:10:04','2021-05-15 11:09:54'),(3,3,2,'http://localhost:8080/kechengzhiyuanguanli/file/download?fileName=1621048239614.xls',2,1311,'2021-05-15 11:10:41','2021-05-15 11:10:41');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
