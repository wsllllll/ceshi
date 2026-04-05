-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot32e20828n
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springboot32e20828n`
--

/*!40000 DROP DATABASE IF EXISTS `springboot32e20828n`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot32e20828n` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot32e20828n`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(200) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  `type` int(11) DEFAULT NULL COMMENT '参数类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL,1),(2,'picture2','upload/picture2.jpg',NULL,1),(3,'picture3','upload/picture3.jpg',NULL,1),(11,'baidu','{\"appId\":\"49214550\",\"apiKey\":\"7Otjpv2kn0ljQk45qXOXh5MO\",\"secretKey\":\"BMfbXRbTIVaB4C3SbRTtGqDv1wHDvyXS\"}',NULL,2),(21,'bLoginBackgroundImg','',NULL,3),(22,'bRegisterBackgroundImg','',NULL,3),(23,'bIndexBackgroundImg','',NULL,3),(24,'bTopLogo','',NULL,3),(25,'bHomeLogo','',NULL,3);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jixiaokaohe`
--

DROP TABLE IF EXISTS `jixiaokaohe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jixiaokaohe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `gonghao` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '工号',
  `yuangongkaoqin` int(11) DEFAULT NULL COMMENT '员工考勤',
  `gongzuotaidu` int(11) DEFAULT NULL COMMENT '工作态度',
  `yewujineng` int(11) DEFAULT NULL COMMENT '业务技能',
  `gongzuojixiao` int(11) DEFAULT NULL COMMENT '工作绩效',
  `zongdefen` int(11) DEFAULT NULL COMMENT '总得分',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `guanlizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理账号',
  `guanlixingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='绩效考核';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jixiaokaohe`
--

LOCK TABLES `jixiaokaohe` WRITE;
/*!40000 ALTER TABLE `jixiaokaohe` DISABLE KEYS */;
INSERT INTO `jixiaokaohe` VALUES (1,'2026-01-30 15:22:04','赵阳','001',10,10,10,10,36,'2026-01-30','102','张雨'),(2,'2026-01-30 15:22:04','徐天宇','006',10,10,10,10,49,'2026-01-30','108','李静'),(3,'2026-01-30 15:22:04','刘芳','005',10,10,10,10,23,'2026-01-30','104','孙俪'),(4,'2026-01-30 15:22:04','董珊','008',10,10,10,10,68,'2026-01-30','103','赵敏'),(5,'2026-01-30 15:22:04','吴磊','004',10,10,10,10,92,'2026-01-30','107','李军'),(6,'2026-01-30 15:22:04','陈浩','007',10,10,10,10,58,'2026-01-30','106','王磊'),(7,'2026-01-30 15:22:04','周雪','003',10,10,10,10,26,'2026-01-30','105','刘洋'),(8,'2026-01-30 15:22:04','张明','002',10,10,10,10,32,'2026-01-30','101','赵芳');
/*!40000 ALTER TABLE `jixiaokaohe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COLLATE utf8mb4_unicode_ci COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2026-01-30 15:22:04','[{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"支付\",\"员工工资\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\"],\"menu\":\"员工薪资\",\"menuJump\":\"列表\",\"tableName\":\"yuangongxinzi\"}],\"menu\":\"员工薪资管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"删除\"],\"menu\":\"员工签到\",\"menuJump\":\"列表\",\"tableName\":\"yuangongqiandao\"}],\"menu\":\"员工签到管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\"],\"menu\":\"员工考勤\",\"menuJump\":\"列表\",\"tableName\":\"yuangongkaoqin\"}],\"menu\":\"员工考勤管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"申诉\",\"同意\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"职位申诉\",\"确认\",\"申诉\",\"同意\"],\"menu\":\"职位调动\",\"menuJump\":\"列表\",\"tableName\":\"zhiweidiaodong\"}],\"menu\":\"职位调动管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"职位申诉\",\"menuJump\":\"列表\",\"tableName\":\"zhiweishensu\"}],\"menu\":\"职位申诉管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"绩效分数\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\"],\"menu\":\"绩效考核\",\"menuJump\":\"列表\",\"tableName\":\"jixiaokaohe\"}],\"menu\":\"绩效考核管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"请假申请\",\"menuJump\":\"列表\",\"tableName\":\"qingjiashenqing\"}],\"menu\":\"请假申请管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"员工\",\"tableName\":\"yuangong\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"员工人数\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"员工\",\"menuJump\":\"列表\",\"tableName\":\"yuangong\"}],\"menu\":\"员工管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"支付\",\"员工工资\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"支付\"],\"menu\":\"员工薪资\",\"menuJump\":\"列表\",\"tableName\":\"yuangongxinzi\"}],\"menu\":\"员工薪资管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"员工签到\",\"menuJump\":\"列表\",\"tableName\":\"yuangongqiandao\"}],\"menu\":\"员工签到管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"员工考勤\",\"menuJump\":\"列表\",\"tableName\":\"yuangongkaoqin\"}],\"menu\":\"员工考勤管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"申诉\",\"同意\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"职位调动\",\"menuJump\":\"列表\",\"tableName\":\"zhiweidiaodong\"}],\"menu\":\"职位调动管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"职位申诉\",\"menuJump\":\"列表\",\"tableName\":\"zhiweishensu\"}],\"menu\":\"职位申诉管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"绩效分数\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"绩效考核\",\"menuJump\":\"列表\",\"tableName\":\"jixiaokaohe\"}],\"menu\":\"绩效考核管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"请假申请\",\"menuJump\":\"列表\",\"tableName\":\"qingjiashenqing\"}],\"menu\":\"请假申请管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"人事管理员\",\"tableName\":\"renshiguanliyuan\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"员工人数\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"首页统计\",\"首页总数\"],\"menu\":\"员工\",\"menuJump\":\"列表\",\"tableName\":\"yuangong\"}],\"menu\":\"员工管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"人事人数\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"首页总数\",\"首页统计\"],\"menu\":\"人事管理员\",\"menuJump\":\"列表\",\"tableName\":\"renshiguanliyuan\"}],\"menu\":\"人事管理员管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"支付\",\"员工工资\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"删除\",\"审核\",\"支付\",\"首页总数\",\"首页统计\"],\"menu\":\"员工薪资\",\"menuJump\":\"列表\",\"tableName\":\"yuangongxinzi\"}],\"menu\":\"员工薪资管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"员工签到\",\"menuJump\":\"列表\",\"tableName\":\"yuangongqiandao\"}],\"menu\":\"员工签到管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"员工考勤\",\"menuJump\":\"列表\",\"tableName\":\"yuangongkaoqin\"}],\"menu\":\"员工考勤管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"职位信息\",\"menuJump\":\"列表\",\"tableName\":\"zhiweixinxi\"}],\"menu\":\"职位信息管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"申诉\",\"同意\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"职位调动\",\"menuJump\":\"列表\",\"tableName\":\"zhiweidiaodong\"}],\"menu\":\"职位调动管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"职位申诉\",\"menuJump\":\"列表\",\"tableName\":\"zhiweishensu\"}],\"menu\":\"职位申诉管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"绩效分数\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"删除\",\"首页总数\",\"首页统计\"],\"menu\":\"绩效考核\",\"menuJump\":\"列表\",\"tableName\":\"jixiaokaohe\"}],\"menu\":\"绩效考核管理\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"请假申请\",\"menuJump\":\"列表\",\"tableName\":\"qingjiashenqing\"}],\"menu\":\"请假申请管理\"},{\"child\":[{\"allButtons\":[\"查看\",\"编辑名称\",\"编辑父级\",\"编辑权限\",\"删除\"],\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"编辑名称\",\"编辑父级\",\"编辑权限\",\"删除\"],\"menu\":\"菜单列表\",\"tableName\":\"menu\"},{\"allButtons\":[\"查看\",\"删除\"],\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"系统日志\",\"tableName\":\"syslog\"}],\"menu\":\"系统管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiashenqing`
--

DROP TABLE IF EXISTS `qingjiashenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工号',
  `xingming` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `qingjialeixing` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请假类型',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `qingjiayuanyin` longtext COLLATE utf8mb4_unicode_ci COMMENT '请假原因',
  `guanlixingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理姓名',
  `guanlizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理账号',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='请假申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiashenqing`
--

LOCK TABLES `qingjiashenqing` WRITE;
/*!40000 ALTER TABLE `qingjiashenqing` DISABLE KEYS */;
INSERT INTO `qingjiashenqing` VALUES (1,'2026-01-30 15:22:04','001','赵阳','事假','2026-01-30 23:22:04','2026-01-30 23:22:04',1,'预约的房屋过户手续需本人到场办理，该时段无法更改，申请请假1天','张雨','102','是',''),(2,'2026-01-30 15:22:04','006','徐天宇','事假','2026-01-30 23:22:04','2026-01-30 23:22:04',2,'家中老人突发感冒发热，需陪同就医并照顾，申请请假1天','李静','108','是',''),(3,'2026-01-30 15:22:04','005','刘芳','事假','2026-01-30 23:22:04','2026-01-30 23:22:04',3,'连续高强度工作后出现头晕乏力症状，医生建议短期休息，申请请假1天','孙俪','104','是',''),(4,'2026-01-30 15:22:04','008','董珊','事假','2026-01-30 23:22:04','2026-01-30 23:22:04',4,'近期持续失眠导致精神状态差，需在家休息调整，申请请假1天','赵敏','103','是',''),(5,'2026-01-30 15:22:04','004','吴磊','事假','2026-01-30 23:22:04','2026-01-30 23:22:04',5,'远房长辈来本地住院，需前往医院探望并帮忙办理相关手续，申请请假半天','李军','107','是',''),(6,'2026-01-30 15:22:04','007','陈浩','事假','2026-01-30 23:22:04','2026-01-30 23:22:04',6,'晨起突发急性肠胃炎，频繁腹痛呕吐，无法正常到岗，申请请假1天','王磊','106','是',''),(7,'2026-01-30 15:22:04','003','周雪','事假','2026-01-30 23:22:04','2026-01-30 23:22:04',7,'老家亲属来本地办事，需前往车站接站并协助办理手续，申请请假半天','刘洋','105','是',''),(8,'2026-01-30 15:22:04','002','张明','事假','2026-01-30 23:22:04','2026-01-30 23:22:04',8,'家中燃气、电路需进行年度安全检修，需留人配合工作人员，申请请假半天','赵芳','101','是','');
/*!40000 ALTER TABLE `qingjiashenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renshiguanliyuan`
--

DROP TABLE IF EXISTS `renshiguanliyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renshiguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guanlizhanghao` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理账号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `guanlixingming` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理姓名',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `guanlizhanghao` (`guanlizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='人事管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renshiguanliyuan`
--

LOCK TABLES `renshiguanliyuan` WRITE;
/*!40000 ALTER TABLE `renshiguanliyuan` DISABLE KEYS */;
INSERT INTO `renshiguanliyuan` VALUES (21,'2026-01-30 15:22:04','102','e10adc3949ba59abbe56e057f20f883e','张雨','男','13434567890','140101199902144567','upload/renshiguanliyuan_touxiang1.jpg'),(22,'2026-01-30 15:22:04','108','e10adc3949ba59abbe56e057f20f883e','李静','女','13545678901','500101200312122345','upload/renshiguanliyuan_touxiang2.jpg'),(23,'2026-01-30 15:22:04','104','e10adc3949ba59abbe56e057f20f883e','孙俪','女','13534567890','360101199106188901','upload/renshiguanliyuan_touxiang3.jpg'),(24,'2026-01-30 15:22:04','103','e10adc3949ba59abbe56e057f20f883e','赵敏','女','13523456789','230101200304166789','upload/renshiguanliyuan_touxiang4.jpg'),(25,'2026-01-30 15:22:04','107','e10adc3949ba59abbe56e057f20f883e','李军','男','13589012345','420101200009099012','upload/renshiguanliyuan_touxiang5.jpg'),(26,'2026-01-30 15:22:04','106','e10adc3949ba59abbe56e057f20f883e','王磊','男','13578901234','110101200001011234','upload/renshiguanliyuan_touxiang6.jpg'),(27,'2026-01-30 15:22:04','105','e10adc3949ba59abbe56e057f20f883e','刘洋','男','13412345678','610101200206066789','upload/renshiguanliyuan_touxiang7.jpg'),(28,'2026-01-30 15:22:04','101','e10adc3949ba59abbe56e057f20f883e','赵芳','男','13423456789','210101197507077890','upload/renshiguanliyuan_touxiang8.jpg');
/*!40000 ALTER TABLE `renshiguanliyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog`
--

DROP TABLE IF EXISTS `syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `operation` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户操作',
  `method` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请求方法',
  `params` longtext COLLATE utf8mb4_unicode_ci COMMENT '请求参数',
  `time` bigint(20) DEFAULT NULL COMMENT '请求时长(毫秒)',
  `ip` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'IP地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog`
--

LOCK TABLES `syslog` WRITE;
/*!40000 ALTER TABLE `syslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(255) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongyixinxi`
--

DROP TABLE IF EXISTS `tongyixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongyixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '工号',
  `xingming` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `tongyishijian` datetime DEFAULT NULL COMMENT '同意时间',
  `guanlizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理账号',
  `guanlixingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='同意信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongyixinxi`
--

LOCK TABLES `tongyixinxi` WRITE;
/*!40000 ALTER TABLE `tongyixinxi` DISABLE KEYS */;
INSERT INTO `tongyixinxi` VALUES (1,'2026-01-30 15:22:04','001','赵阳','2026-01-30 23:22:04','102','张雨',1,1),(2,'2026-01-30 15:22:04','006','徐天宇','2026-01-30 23:22:04','108','李静',2,2),(3,'2026-01-30 15:22:04','005','刘芳','2026-01-30 23:22:04','104','孙俪',3,3),(4,'2026-01-30 15:22:04','008','董珊','2026-01-30 23:22:04','103','赵敏',4,4),(5,'2026-01-30 15:22:04','004','吴磊','2026-01-30 23:22:04','107','李军',5,5),(6,'2026-01-30 15:22:04','007','陈浩','2026-01-30 23:22:04','106','王磊',6,6),(7,'2026-01-30 15:22:04','003','周雪','2026-01-30 23:22:04','105','刘洋',7,7),(8,'2026-01-30 15:22:04','002','张明','2026-01-30 23:22:04','101','赵芳',8,8);
/*!40000 ALTER TABLE `tongyixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '管理员' COMMENT '角色',
  `image` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2026-01-30 15:22:04','admin','admin','管理员','upload/image1.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '工号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `xingming` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `qingjiatianshu` double DEFAULT NULL COMMENT '请假天数',
  `zhiwei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2026-01-30 15:22:04','001','e10adc3949ba59abbe56e057f20f883e','赵阳','男','15187654321','44010119980909009F','upload/yuangong_touxiang1.jpg',1,'实习生'),(12,'2026-01-30 15:22:04','006','e10adc3949ba59abbe56e057f20f883e','徐天宇','女','13290123456','11010219910202002Y','upload/yuangong_touxiang2.jpg',2,'实习生'),(13,'2026-01-30 15:22:04','005','e10adc3949ba59abbe56e057f20f883e','刘芳','女','13567890123','51010120011212012I','upload/yuangong_touxiang3.jpg',3,'实习生'),(14,'2026-01-30 15:22:04','008','e10adc3949ba59abbe56e057f20f883e','董珊','女','13187654321','31010119950606006C','upload/yuangong_touxiang4.jpg',4,'实习生'),(15,'2026-01-30 15:22:04','004','e10adc3949ba59abbe56e057f20f883e','吴磊','男','13987654321','33010320090820020Q','upload/yuangong_touxiang5.jpg',5,'实习生'),(16,'2026-01-30 15:22:04','007','e10adc3949ba59abbe56e057f20f883e','陈浩','男','13023456789','31010319970808008E','upload/yuangong_touxiang6.jpg',6,'实习生'),(17,'2026-01-30 15:22:04','003','e10adc3949ba59abbe56e057f20f883e','周雪','男','15012345678','11010119900101001X','upload/yuangong_touxiang7.jpg',7,'实习生'),(18,'2026-01-30 15:22:04','002','e10adc3949ba59abbe56e057f20f883e','张明','男','13276543210','44010219991010010G','upload/yuangong_touxiang8.jpg',8,'实习生');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongkaoqin`
--

DROP TABLE IF EXISTS `yuangongkaoqin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongkaoqin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dengjibianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登记编号',
  `xingming` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `gonghao` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工号',
  `zhengchangcishu` int(11) DEFAULT NULL COMMENT '正常次数',
  `chidaocishu` int(11) DEFAULT NULL COMMENT '迟到次数',
  `zaotuicishu` int(11) DEFAULT NULL COMMENT '早退次数',
  `chuchacishu` int(11) DEFAULT NULL COMMENT '出差次数',
  `jiabancishu` int(11) DEFAULT NULL COMMENT '加班次数',
  `qingjiacishu` int(11) DEFAULT NULL COMMENT '请假次数',
  `kuanggongcishu` int(11) DEFAULT NULL COMMENT '旷工次数',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `guanlizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理账号',
  `guanlixingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dengjibianhao` (`dengjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工考勤';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongkaoqin`
--

LOCK TABLES `yuangongkaoqin` WRITE;
/*!40000 ALTER TABLE `yuangongkaoqin` DISABLE KEYS */;
INSERT INTO `yuangongkaoqin` VALUES (1,'2026-01-30 15:22:04','1111111111','赵阳','001',36,27,27,8,8,8,8,'2026-01-30','早退经领导批准','102','张雨'),(2,'2026-01-30 15:22:04','2222222222','徐天宇','006',49,15,15,2,2,2,2,'2026-01-30','考勤系统故障','108','李静'),(3,'2026-01-30 15:22:04','3333333333','刘芳','005',23,25,25,9,9,9,9,'2026-01-30','病假附医院证明','104','孙俪'),(4,'2026-01-30 15:22:04','4444444444','董珊','008',68,2,2,4,4,4,4,'2026-01-30','年假剩余3天','103','赵敏'),(5,'2026-01-30 15:22:04','5555555555','吴磊','004',92,19,19,6,6,6,6,'2026-01-30','加班抵扣事假','107','李军'),(6,'2026-01-30 15:22:04','6666666666','陈浩','007',58,1,1,1,1,1,1,'2026-01-30','婚假合规申请','106','王磊'),(7,'2026-01-30 15:22:04','7777777777','周雪','003',26,17,17,3,3,3,3,'2026-01-30','正常出勤无异常','105','刘洋'),(8,'2026-01-30 15:22:04','8888888888','张明','002',32,6,6,7,7,7,7,'2026-01-30','产假正常休假','101','赵芳');
/*!40000 ALTER TABLE `yuangongkaoqin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongqiandao`
--

DROP TABLE IF EXISTS `yuangongqiandao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongqiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工号',
  `xingming` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `qiandaodidian` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签到地点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工签到';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongqiandao`
--

LOCK TABLES `yuangongqiandao` WRITE;
/*!40000 ALTER TABLE `yuangongqiandao` DISABLE KEYS */;
INSERT INTO `yuangongqiandao` VALUES (1,'2026-01-30 15:22:04','001','赵阳','upload/yuangongqiandao_touxiang1.jpg,upload/yuangongqiandao_touxiang2.jpg,upload/yuangongqiandao_touxiang3.jpg','2026-01-30 23:22:04','公司总部办公楼'),(2,'2026-01-30 15:22:04','006','徐天宇','upload/yuangongqiandao_touxiang2.jpg,upload/yuangongqiandao_touxiang3.jpg,upload/yuangongqiandao_touxiang4.jpg','2026-01-30 23:22:04','分公司办公区'),(3,'2026-01-30 15:22:04','005','刘芳','upload/yuangongqiandao_touxiang3.jpg,upload/yuangongqiandao_touxiang4.jpg,upload/yuangongqiandao_touxiang5.jpg','2026-01-30 23:22:04','市场部工位区'),(4,'2026-01-30 15:22:04','008','董珊','upload/yuangongqiandao_touxiang4.jpg,upload/yuangongqiandao_touxiang5.jpg,upload/yuangongqiandao_touxiang6.jpg','2026-01-30 23:22:04','行政楼2层大厅'),(5,'2026-01-30 15:22:04','004','吴磊','upload/yuangongqiandao_touxiang5.jpg,upload/yuangongqiandao_touxiang6.jpg,upload/yuangongqiandao_touxiang7.jpg','2026-01-30 23:22:04','研发中心3号楼'),(6,'2026-01-30 15:22:04','007','陈浩','upload/yuangongqiandao_touxiang6.jpg,upload/yuangongqiandao_touxiang7.jpg,upload/yuangongqiandao_touxiang8.jpg','2026-01-30 23:22:04','远程居家办公'),(7,'2026-01-30 15:22:04','003','周雪','upload/yuangongqiandao_touxiang7.jpg,upload/yuangongqiandao_touxiang8.jpg,upload/yuangongqiandao_touxiang1.jpg','2026-01-30 23:22:04','临时办公驻点'),(8,'2026-01-30 15:22:04','002','张明','upload/yuangongqiandao_touxiang8.jpg,upload/yuangongqiandao_touxiang1.jpg,upload/yuangongqiandao_touxiang2.jpg','2026-01-30 23:22:04','销售部驻点处');
/*!40000 ALTER TABLE `yuangongqiandao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongxinzi`
--

DROP TABLE IF EXISTS `yuangongxinzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongxinzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `gonghao` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '工号',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `jibengongzi` double DEFAULT NULL COMMENT '基本工资',
  `jiabangongzi` double DEFAULT NULL COMMENT '加班工资',
  `jixiaojiangjin` double DEFAULT NULL COMMENT '绩效奖金',
  `gangweibutie` double DEFAULT NULL COMMENT '岗位补贴',
  `koukuanjine` double DEFAULT NULL COMMENT '扣款金额',
  `jiaqikouxin` double DEFAULT NULL COMMENT '假期扣薪',
  `shifagongzi` double DEFAULT NULL COMMENT '实发工资',
  `koukuanyuanyin` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '扣款原因',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `guanlizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理账号',
  `guanlixingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理姓名',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  `ispay` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工薪资';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongxinzi`
--

LOCK TABLES `yuangongxinzi` WRITE;
/*!40000 ALTER TABLE `yuangongxinzi` DISABLE KEYS */;
INSERT INTO `yuangongxinzi` VALUES (1,'2026-01-30 15:22:04','赵阳','001',1,5196,189,189,189,189,1,5196,'考勤异常扣款','2026-01-30','102','张雨','是','','已支付'),(2,'2026-01-30 15:22:04','徐天宇','006',2,7823,156,156,156,156,2,7823,'设备遗失扣款','2026-01-30','108','李静','是','','已支付'),(3,'2026-01-30 15:22:04','刘芳','005',3,9457,235,235,235,235,3,9457,'迟到3次扣款','2026-01-30','104','孙俪','是','','已支付'),(4,'2026-01-30 15:22:04','董珊','008',4,6875,489,489,489,489,4,6875,'绩效未达标扣','2026-01-30','103','赵敏','是','','已支付'),(5,'2026-01-30 15:22:04','吴磊','004',5,5428,318,318,318,318,5,5428,'旷工1天扣款','2026-01-30','107','李军','是','','已支付'),(6,'2026-01-30 15:22:04','陈浩','007',6,6381,394,394,394,394,6,6381,'工装损坏赔偿','2026-01-30','106','王磊','是','','已支付'),(7,'2026-01-30 15:22:04','周雪','003',7,7142,267,267,267,267,7,7142,'未按流程操作','2026-01-30','105','刘洋','是','','已支付'),(8,'2026-01-30 15:22:04','张明','002',8,6219,345,345,345,345,8,6219,'工作失误扣款','2026-01-30','101','赵芳','是','','已支付');
/*!40000 ALTER TABLE `yuangongxinzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiweidiaodong`
--

DROP TABLE IF EXISTS `zhiweidiaodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiweidiaodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `gonghao` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '工号',
  `zhiwei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '原职位',
  `xianzhiwei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现职位',
  `biandongyuanyin` longtext COLLATE utf8mb4_unicode_ci COMMENT '变动原因',
  `biandongriqi` date DEFAULT NULL COMMENT '变动日期',
  `guanlizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理账号',
  `guanlixingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='职位调动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiweidiaodong`
--

LOCK TABLES `zhiweidiaodong` WRITE;
/*!40000 ALTER TABLE `zhiweidiaodong` DISABLE KEYS */;
INSERT INTO `zhiweidiaodong` VALUES (1,'2026-01-30 15:22:04','赵阳','001','实习生','生产车间班组长','公司组织架构调整','2026-01-30','102','张雨'),(2,'2026-01-30 15:22:04','徐天宇','006','实习生','市场推广专员','项目需要调任岗位','2026-01-30','108','李静'),(3,'2026-01-30 15:22:04','刘芳','005','实习生','设计部UI设计师','专业技能提升调任','2026-01-30','104','孙俪'),(4,'2026-01-30 15:22:04','董珊','008','实习生','人力资源专员','岗位优化调整职位','2026-01-30','103','赵敏'),(5,'2026-01-30 15:22:04','吴磊','004','实习生','运营数据分析员','降职调整工作岗位','2026-01-30','107','李军'),(6,'2026-01-30 15:22:04','陈浩','007','实习生','财务会计主管','晋升管理岗位任职','2026-01-30','106','王磊'),(7,'2026-01-30 15:22:04','周雪','003','实习生','销售区域经理','临时借调其他部门','2026-01-30','105','刘洋'),(8,'2026-01-30 15:22:04','张明','002','实习生','技术支持工程师','因能力匹配调岗','2026-01-30','101','赵芳');
/*!40000 ALTER TABLE `zhiweidiaodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiweishensu`
--

DROP TABLE IF EXISTS `zhiweishensu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiweishensu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '工号',
  `xingming` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `shensuyuanyin` longtext COLLATE utf8mb4_unicode_ci COMMENT '申诉原因',
  `shensuriqi` date DEFAULT NULL COMMENT '申诉日期',
  `guanlizhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理账号',
  `guanlixingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='职位申诉';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiweishensu`
--

LOCK TABLES `zhiweishensu` WRITE;
/*!40000 ALTER TABLE `zhiweishensu` DISABLE KEYS */;
INSERT INTO `zhiweishensu` VALUES (1,'2026-01-30 15:22:04','001','赵阳','不想换职位','2026-01-30','102','张雨',1,1,'是',''),(2,'2026-01-30 15:22:04','006','徐天宇','不想换职位','2026-01-30','108','李静',2,2,'是',''),(3,'2026-01-30 15:22:04','005','刘芳','不想换职位','2026-01-30','104','孙俪',3,3,'是',''),(4,'2026-01-30 15:22:04','008','董珊','不想换职位','2026-01-30','103','赵敏',4,4,'是',''),(5,'2026-01-30 15:22:04','004','吴磊','不想换职位','2026-01-30','107','李军',5,5,'是',''),(6,'2026-01-30 15:22:04','007','陈浩','不想换职位','2026-01-30','106','王磊',6,6,'是',''),(7,'2026-01-30 15:22:04','003','周雪','不想换职位','2026-01-30','105','刘洋',7,7,'是',''),(8,'2026-01-30 15:22:04','002','张明','不想换职位','2026-01-30','101','赵芳',8,8,'是','');
/*!40000 ALTER TABLE `zhiweishensu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiweixinxi`
--

DROP TABLE IF EXISTS `zhiweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiwei` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhiwei` (`zhiwei`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='职位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiweixinxi`
--

LOCK TABLES `zhiweixinxi` WRITE;
/*!40000 ALTER TABLE `zhiweixinxi` DISABLE KEYS */;
INSERT INTO `zhiweixinxi` VALUES (1,'2026-01-30 15:22:04','生产车间班组长'),(2,'2026-01-30 15:22:04','市场推广专员'),(3,'2026-01-30 15:22:04','设计部UI设计师'),(4,'2026-01-30 15:22:04','人力资源专员'),(5,'2026-01-30 15:22:04','运营数据分析员'),(6,'2026-01-30 15:22:04','财务会计主管'),(7,'2026-01-30 15:22:04','销售区域经理'),(8,'2026-01-30 15:22:04','技术支持工程师');
/*!40000 ALTER TABLE `zhiweixinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-31  9:59:54
