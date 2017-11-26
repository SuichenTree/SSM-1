/*
Navicat MySQL Data Transfer

Source Server         : qwe
Source Server Version : 50555
Source Host           : localhost:3306
Source Database       : test6

Target Server Type    : MYSQL
Target Server Version : 50555
File Encoding         : 65001

Date: 2017-11-26 16:44:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hr_employee`
-- ----------------------------
DROP TABLE IF EXISTS `hr_employee`;
CREATE TABLE `hr_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工编号(自增长)',
  `work_no` int(11) NOT NULL COMMENT '工号',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `dept` varchar(50) DEFAULT NULL COMMENT '部门',
  `post` varchar(20) DEFAULT NULL COMMENT '岗位名称',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '工作邮箱',
  `id_no` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `wechat_no` varchar(50) DEFAULT NULL COMMENT '微信号',
  `hireDate` datetime DEFAULT NULL COMMENT '入职时间',
  `isActive` varchar(30) DEFAULT '1' COMMENT '在职状态',
  `creator` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `creator_no` varchar(38) DEFAULT NULL,
  `company_no` varchar(38) DEFAULT NULL,
  `wechat_union_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_employee` (`work_no`,`company_no`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_employee
-- ----------------------------
INSERT INTO `hr_employee` VALUES ('1', '1001', '小野寺小咲', '伪恋12', '女主角', '13592889662', '1001@qq.com', '124566325142563254', '100136', '2017-01-01 00:00:00', '在职', null, '2017-08-29 14:50:25', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('2', '1002', '赤座灯里', '摇曳百合', '21', '17666036647 ', '1002@qq.com', '1110', '1002', '2017-01-01 00:00:00', '在职', null, '2017-08-15 14:24:16', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('3', '1003', '日向翔阳', '排球少年', '', '18666678999', '1003@qq.com', '1101', '1003', '2017-01-01 00:00:00', '0', null, '2017-08-15 14:23:50', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('4', '1004', '木之本樱', '百变小樱魔术卡', '女主角', '13407459046', '1004@qq.com', '1100', '1004', '2017-01-01 00:00:00', '0', null, '2017-08-11 14:30:36', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('5', '1005', '香风智乃', '请问您今天要来点兔子吗', '设计总监', '17099149876', '1005@qq.com', '1011', '1005', '2017-01-02 00:00:00', '1', null, '2017-08-05 00:36:49', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('6', '1006', '黑沼爽子', '好想告诉你', '设计总监', '17605997525', '1006@qq.com', '1010', '1006', '2017-01-02 00:00:00', '1', null, '2017-08-05 00:37:44', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('7', '1007', '路飞', '航海王', '设计总监', '13458655888', '1007@qq.com', '1001', '1007', '2017-01-02 00:00:00', '0', null, '2017-08-11 14:30:56', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('8', '1008', '种岛白杨', '迷糊餐厅', '', '17301624234', '1008@qq.com', '1000', '1008', '2017-07-01 00:00:00', '1', null, '2017-08-05 00:42:42', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('9', '1010', '茵蒂克丝', '魔法禁书目录', '女主角', '17605997525', '1009@qq.com', '0111', '1009', '2017-01-02 00:00:00', '1', null, '2017-08-05 01:11:49', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('10', '1011', '孙悟空', '西游记', '主角', '15026666278', '1010@qq.com', '0110', '1010', '2017-01-01 00:00:00', '0', null, '2017-08-15 16:10:31', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('11', '1012', '青丘白浅', '三生三世十里桃花', '女主角', '13660199111', '1011@qq.com', '0101', '1011', '2017-01-01 00:00:00', '1', null, '2017-08-16 11:24:42', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('12', '1013', '本间芽衣子', '未闻花名', '111', '18871283737', '1012@qq.com', '010011111111111', '1012111', '2017-08-17 00:00:00', '1', null, '2017-08-30 18:35:15', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('13', '1212', 'glory', '123', '123', '13593710367', '123@qq.com', '111111111111111', '123213', '2017-08-31 00:00:00', '0', null, '2017-08-31 17:14:44', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('14', '1014', 'hcg', '123', '123', '18163317094', '123@qq.com', '12111111111111111', '12312312312', '2017-03-02 00:00:00', '1', null, '2017-08-31 17:15:57', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('15', '1015', 'gray', 'gay', 'gay', '17671774437', '123@qq.com', '12111111111111118', '1200', '2017-08-31 17:54:27', '1', null, '2017-08-31 23:53:40', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', 'oyYD0wnawy5yWg1zV_X7oEKGVI4U');
INSERT INTO `hr_employee` VALUES ('16', '1020', 'zhouw', '研发部', '研发总监', '13407105946', 'zhouw@fct.com', '420233201701014321', 'www111', '2017-08-31 00:00:00', '1', null, '2017-08-31 22:38:16', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('17', '2142', '冲田总悟', '银魂', '常年习惯性坑队友', '13499149870', 'q@qq.com', '123124233454564', '112323432', '2017-09-01 00:00:00', '1', null, '2017-09-01 09:23:06', null, '{BFA80866-0000-0000-05C3-1F0A00000001}', null);
INSERT INTO `hr_employee` VALUES ('18', '1231', '2', '2', '2', '2', '2', '2', '2', '2017-10-11 10:10:03', '在职', null, null, null, null, null);

-- ----------------------------
-- Table structure for `hr_kpi_evalform`
-- ----------------------------
DROP TABLE IF EXISTS `hr_kpi_evalform`;
CREATE TABLE `hr_kpi_evalform` (
  `id` int(11) NOT NULL COMMENT '考核表编号',
  `content_json` text COMMENT '考核内容（JSON试题）',
  `form_status` varchar(255) DEFAULT NULL,
  `project_no` int(11) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `creator_no` varchar(38) DEFAULT NULL,
  `company_no` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_kpi_evalform
-- ----------------------------
INSERT INTO `hr_kpi_evalform` VALUES ('1010800000', '{\"examinees\":[{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"赤座灯里\",\"no\":2},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"日向翔阳\",\"no\":3},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"黑沼爽子\",\"no\":6}],\"rater\":{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"香风智乃\",\"no\":5},\"sections\":[{\"questions\":[{\"title\":\"\"},{\"title\":\"\"},{\"title\":\"\"}],\"title\":\"\",\"type\":1}]}', '5', '17', '系统管理员', '2017-08-27 17:48:49', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalform` VALUES ('1010803000', '{\"examinees\":[{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"赤座灯里\",\"no\":2},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"日向翔阳\",\"no\":3},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"木之本樱\",\"no\":4},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"香风智乃\",\"no\":5},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"黑沼爽子\",\"no\":6}],\"rater\":{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"小野寺小咲\",\"no\":1},\"sections\":[{\"questions\":[{\"score\":5.0,\"title\":\"战国时期各诸侯国对于官吏的任用，一般都以俸禄制度代替过去的食邑制度。俸禄制度的实行在当时的主要作用是    1．推动了商品经济发展   2．肯定了郡县制进步性   3．促进了分封制的瓦解   4．有利于国家选拔\"},{\"score\":5.0,\"title\":\"1921年中共“一大”上通过的《中国共产党纲领》（英文译稿）中规定：“以无产阶级革命军队推翻资产阶级，由劳动阶级重建国家，直至消灭阶级差别；……废除资本私有制，没收一切生产资料，如机器、土地、厂房、半成品等，归社会所有。”对上述材料的解读，不正确的是    1．中国共产党是新型的革命政党     2．党纲通过宣告中国共产党的诞生   3．中共以反帝反封建为主要任务   4．中共缺乏对中国国情的正确认识\"},{\"score\":5.0,\"title\":\"1954年，当选第一届全国人民代表大会的1226名代表，是中国有史以来第一次经过普选产生的，故此次大会又被称为“第一次真正的人民大会”。这次“真正的人民大会”的主要功绩是     1．人民代表由海选产生，体现了民主的广泛性   2．规定权力属于人民，人民开始成为国家主人   3．制定了我国第一部社会主义类型的宪法   4．人民有了行使政治权力的唯一机关\"},{\"score\":5.0,\"title\":\"明朝时“田中事，田主一切不问，皆佃农任之”，地主与佃农之间，“交租之外，两不相问”。此种现象反映出当时    1．地主与佃农间存在雇佣关系   2．土地所有权与经营权没有分离   3．佃农有较大的生产自主权   4．租佃制抑制了佃农的生产积极性\"}],\"score\":20.0,\"title\":\"选择题\",\"type\":1},{\"questions\":[{\"title\":\"为什么大家希望有英雄啊？ 每个人都想得到别人无法得到的， 但没有人，愿意付出别人无法付出的。 所以，能够为了别人的未来，而牺牲自己的人…… 真的存在吗？\"},{\"title\":\"你把你的梦想当成什么？你把相信你梦想的人当成什么？\"},{\"title\":\"就算勉强站起来又怎样？到底想挣扎到什么时候啊？你那两只眼睛是窟窿吗？力量上绝对的差距你看不到吗？  我只看得到，必须要去的地方！\"}],\"title\":\"阅读下面的文字，按要求作文。\",\"type\":2}]}', '3', '12', '系统管理员', '2017-08-16 12:55:11', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalform` VALUES ('1010804000', '{\"examinees\":[{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"小野寺小咲\",\"no\":1},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"赤座灯里\",\"no\":2},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"日向翔阳\",\"no\":3},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"木之本樱\",\"no\":4},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"香风智乃\",\"no\":5},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"黑沼爽子\",\"no\":6}],\"rater\":{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"gray\",\"no\":15},\"sections\":[{\"questions\":[{\"score\":5.0,\"title\":\"123\"}],\"score\":5.0,\"title\":\"1\",\"type\":1},{\"questions\":[{\"title\":\"123\"}],\"title\":\"4\",\"type\":2}]}', '5', '20', '系统管理员', '2017-08-31 23:38:30', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalform` VALUES ('1010903000', '{\"examinees\":[{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"赤座灯里\",\"no\":2}],\"rater\":{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"日向翔阳\",\"no\":3},\"sections\":[{\"questions\":[{\"score\":3.0,\"title\":\"123132132\"},{\"score\":4.0,\"title\":\"1233333\"}],\"score\":7.0,\"title\":\"11\",\"type\":1}]}', '2', '16', '系统管理员', '2017-09-13 17:30:05', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalform` VALUES ('1010905000', '{\"examinees\":[{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"小野寺小咲\",\"no\":1},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"日向翔阳\",\"no\":3},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"木之本樱\",\"no\":4},{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"路飞\",\"no\":7}],\"rater\":{\"companyNo\":\"{BFA80866-0000-0000-05C3-1F0A00000001}\",\"name\":\"小野寺小咲\",\"no\":1},\"sections\":[{\"questions\":[{\"title\":\"\"},{\"title\":\"\"},{\"title\":\"\"}],\"title\":\"\",\"type\":2},{\"questions\":[{\"title\":\"\"},{\"title\":\"111\"},{\"title\":\"\"},{\"title\":\"\"},{\"title\":\"\"}],\"title\":\"\",\"type\":1},{\"questions\":[{\"title\":\"\"}],\"title\":\"\",\"type\":1},{\"questions\":[{\"title\":\"\"}],\"title\":\"\",\"type\":2}]}', '3', '9', '系统管理员', '2017-09-15 15:48:46', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}');

-- ----------------------------
-- Table structure for `hr_kpi_evalproject`
-- ----------------------------
DROP TABLE IF EXISTS `hr_kpi_evalproject`;
CREATE TABLE `hr_kpi_evalproject` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目编号',
  `title` varchar(255) NOT NULL COMMENT '考核名称',
  `organizer` varchar(255) DEFAULT NULL COMMENT '组织者',
  `type` char(1) NOT NULL COMMENT '考核类型',
  `typeDateStart` varchar(255) NOT NULL COMMENT '考核区间开始',
  `typeDateEnd` varchar(255) NOT NULL COMMENT '考核区间结束',
  `object` varchar(255) DEFAULT NULL COMMENT '考核对象',
  `purpose` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '考核目标',
  `weightA` double NOT NULL COMMENT '成绩权重A(自评)',
  `weightB` double NOT NULL COMMENT '成绩权重B(他评)',
  `threshold` double DEFAULT NULL COMMENT '预警阈值',
  `startDate` datetime NOT NULL COMMENT '考核开始日期',
  `endDate` datetime NOT NULL COMMENT '考核结束日期',
  `rules` text COMMENT '考核规则',
  `project_status` char(1) DEFAULT NULL COMMENT '考核项目状态',
  `creator` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `creator_no` varchar(38) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL COMMENT '发送人',
  `sendTime` datetime DEFAULT NULL COMMENT '统一发送时间',
  `sender_no` varchar(38) DEFAULT NULL,
  `company_no` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_kpi_evalproject
-- ----------------------------
INSERT INTO `hr_kpi_evalproject` VALUES ('9', '2017年9月月度考核', '笛亚', '1', '2017/09/01', '2017/09/28', '全体员工', '相信奇迹的人，本身就和奇迹一样了不起', '50', '50', '20', '2017-09-01 00:00:00', '2017-09-28 00:00:00', 'qqqqqq', '3', '系统管理员', '2017-09-15 15:46:18', '{BFA80866-0000-0000-05C3-1F4600000003}', '系统管理员', '2017-09-15 15:54:53', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('10', '2017年8月月度考核', '盖亚', '1', '2017/08/09', '2017/10/04', '全体员工', '星空之所以美丽，就是因为在无限的宇宙中，不管黑暗如何蔓延，都有星星的光芒去把它照亮。 世界也是这样，有绝望的地方，就会有希望产生。', '12', '88', '20', '2017-08-09 00:00:00', '2017-10-04 00:00:00', '1111', '1', '系统管理员', '2017-09-15 16:01:59', '{BFA80866-0000-0000-05C3-1F4600000003}', null, null, null, '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('11', '测试By技术 - 9月考核', '约士亚', '1', '2017/09', '2017/10', '全体员工', '王冠会让戴上它的人高人一头，是地位的象征。 但王冠真正的意义是：当灾难从天而降时，我会为你们抵挡一切，永远让你们只看到金色的希望。', '20', '80', '20', '2017-09-01 00:00:00', '2017-10-01 00:00:00', '世界上最美的，是人的微笑啊！把所有人都踩在脚下，才能登上的顶峰，还能看到什么风景', '1', '系统管理员', '2017-08-16 12:49:57', '{BFA80866-0000-0000-05C3-1F4600000003}', null, null, null, '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('12', '2017年6月至10月月度考核', '格格斯', '1', '2017/06/01', '2017/10/01', '全体员工', '不可能这三个字，你说的太多了', '50', '50', '20', '2017-06-01 00:00:00', '2017-10-01 00:00:00', '牺牲别人换来的明天，还能装得下什么梦想啊?!', '3', '系统管理员', '2017-08-16 12:50:16', '{BFA80866-0000-0000-05C3-1F4600000003}', null, null, null, '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('13', '2017年年度考核', '盖亚', '1', '2017/01/11', '2017/09/12', '全体员工', '拥有希望的人，和满天的星星一样，是永远不会孤独的。找到和自己一样的星星，把通往自由的路， 照亮吧！', '80', '12', '20', '2017-01-11 00:00:00', '2017-09-12 00:00:00', '不管你们的梦想有多么可笑，带上它，给我高高地飞起来。', '1', '系统管理员', '2017-08-15 15:53:49', '{BFA80866-0000-0000-05C3-1F4600000003}', null, null, null, '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('14', '2017年秋季考核', '张晓', '3', '2017/06', '2017/09', '员工', '考核一下而已，不需要目标。', '90', '10', '20', '2017-06-01 00:00:00', '2017-09-22 00:00:00', '开始吧', '1', '系统管理员', '2017-08-15 17:49:23', '{BFA80866-0000-0000-05C3-1F4600000003}', null, null, null, '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('15', '2017年6月月度考核', '麦当', '1', '2017/06/09', '2017/07/09', '全体员工', '只会躲在别人背后的家伙，不管拥有什么力量，都不会变强吧。', '50', '50', '20', '2017-06-09 00:00:00', '2017-07-09 00:00:00', '122121', '2', '系统管理员', '2017-09-15 16:02:11', '{BFA80866-0000-0000-05C3-1F4600000003}', null, null, null, '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('16', '2017年3月考核', '兰远征-HR', '1', '2017/03/13', '2017/04/22', '产品部', '本月工作绩效', '26', '74', '20', '2017-03-13 00:00:00', '2017-04-22 00:00:00', '', '2', '系统管理员', '2017-08-16 16:10:15', '{BFA80866-0000-0000-05C3-1F4600000003}', null, null, null, '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('17', '2017年3月考核', '兰远征-HR', '1', '2017/03/02', '2019/04/02', '产品研发部', '考核产品部门本月绩效', '40', '60', '20', '2017-03-02 00:00:00', '2017-04-02 00:00:00', '本次考核采用自评+领导+同事互相评分（多个评分取平均值）的方式。', '5', '系统管理员', '2017-08-16 12:17:20', '{BFA80866-0000-0000-05C3-1F4600000003}', '系统管理员', '2017-08-27 17:48:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('18', '3月研发部考核', '兰远征-HR', '1', '2017/03/01', '2017/04/30', '研发部程序员', '工作表现，工作能力，工作态度，工作方法', '30', '70', '20', '2017-03-16 00:00:00', '2017-04-19 00:00:00', '本次考核采用自评加领导评分方式。', '2', '系统管理员', '2017-08-16 12:19:46', '{BFA80866-0000-0000-05C3-1F4600000003}', null, null, null, '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('19', '3月考核-市场部', '兰远征-HR', '1', '2017/03/01', '2017/03/30', '市场部销售主管', '工作表现，业绩量', '40', '60', '20', '2017-08-16 00:00:00', '2017-08-11 00:00:00', '本次采用自评加领导评分', '2', '系统管理员', '2017-08-16 12:23:34', '{BFA80866-0000-0000-05C3-1F4600000003}', null, null, null, '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('20', '前台', '123', '1', '2017/08/18', '2017/09/09', '123', '123', '20', '80', '20', '2017-08-24 00:00:00', '2017-09-07 00:00:00', '123', '5', '系统管理员', '2017-08-31 23:37:46', '{BFA80866-0000-0000-05C3-1F4600000003}', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalproject` VALUES ('21', '犬瘟热', '124', '3', '2032/04/12', '2041/02/04', '染发膏', '我染头发', '22', '22', null, '2017-08-30 06:30:00', '2017-09-12 09:12:00', '12412', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('22', '后台', '自由高达', '1', '2014/12/04', '2012/04/24', '全体员工', '裁员100人', '22', '11', null, '2017-09-13 11:55:00', '2017-09-16 09:12:00', '一切体现公正公平，不允许贿赂。', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('151', '2017年9月27日考核', '总经理', '1', '2013/12/11', '2032/11/30', '全体员工', '国庆休假8天', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('152', '2017年9月27日考核', 'xiaoming', '2', '2012/03/12', '2012/03/12', '地球人', '地球毁灭', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '213', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('153', '2017年9月27日考核', 'xiaoming', '1', '2013/12/31', '2012/03/12', '地球人', '地球毁灭', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('154', '2017年9月27日考核', 'xiaoming', '4', '2032/11/30', '2031/03/12', '地球人', '地球毁灭', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('155', '2017年9月27日考核', '总经理', '2', '2031/02/03', '2012/03/12', '地球人', '地球毁灭', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('156', '2017年9月27日考核', 'xiaoming', '2', '2013/11/23', '2031/02/03', '全体员工', '地球毁灭', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('157', '2017年9月27日考核', 'xiaoming', '2', '2013/12/31', '2012/03/21', '全体员工', '地球毁灭', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('158', '2017年9月27日考核', 'xiaoming', '3', '2013/11/21', '2012/03/12', '地球人', '地球毁灭', '22', '22', null, '2017-09-11 05:45:00', '2017-09-12 09:21:00', '213', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('159', '2017年9月27日考核', '总经理', '2', '2013/11/11', '2012/03/13', '地球人', '地球毁灭', '22', '22', null, '2017-09-11 05:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('160', '2017年9月27日考核', 'xiaoming', '1', '2012/03/13', '2012/03/12', '地球人', '全体降薪100元', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '213', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('161', '2017年9月27日考核', '12', '2', '2012/03/12', '2012/03/23', '地球人', '全体降薪100元', '21', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('162', '2017年9月27日考核', 'xiaoming', '2', '2012/03/13', '2012/03/12', '地球人', '全体降薪100元', '21', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('163', '2017年9月27日考核', '总经理', '1', '2013/11/30', '2012/03/12', '地球人', '地球毁灭', '22', '22', null, '2017-09-11 05:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('164', '2017年9月27日考核', 'xiaoming', '2', '2012/03/13', '2012/03/12', '地球人', '地球毁灭', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '213', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('165', '2017年9月27日考核', 'xiaoming', '3', '2012/03/12', '2012/03/12', '地球人', '地球毁灭', '22', '22', null, '2017-09-11 05:45:00', '2017-09-12 09:21:00', '213', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('166', '2017年9月27日考核', 'xiaoming', '2', '2032/12/13', '2012/03/12', '地球人', '地球毁灭', '12', '23', null, '2017-09-11 08:25:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('167', '2017年9月27日考核', 'xiaoming', '2', '2013/11/30', '2012/03/12', '地球人', '地球毁灭', '22', '22', null, '2017-09-11 05:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('168', '12112', 'xiaoming', '2', '2012/03/12', '2032/11/30', '地球人', '全体降薪100元', '12', '22', null, '2017-09-13 11:35:00', '2017-09-12 09:21:00', '21', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('169', '2017年9月27日考核', 'xiaoming', '1', '2013/11/23', '2012/03/12', '地球人', '地球毁灭', '22', '22', null, '2017-09-11 05:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('170', '2017年9月27日考核', 'xiaoming', '3', '2013/11/23', '2012/03/12', '地球人', '全体降薪100元', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('171', '2017年9月27日考核', 'xiaoming', '2', '2013/12/31', '2012/03/31', '地球人', '地球毁灭', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('172', '2017年9月27日考核', '总经理', '2', '2012/03/21', '2013/02/03', '地球人', '地球毁灭', '22', '22', null, '2017-09-11 05:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('173', '2017年9月27日考核', 'xiaoming', '2', '2012/03/12', '2012/03/31', '地球人', '地球毁灭', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('174', '2017年9月27日考核', 'xiaoming', '2', '2031/12/31', '2012/03/12', '地球人', '全体降薪100元', '22', '22', null, '2017-08-29 18:25:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('175', '2017年9月27日考核', 'xiaoming', '2', '2013/02/13', '2012/03/12', '全体员工', '地球毁灭', '22', '22', null, '2017-09-11 05:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('176', '2017年9月27日考核', 'xiaoming', '2', '2012/03/13', '2012/03/21', '地球人', '黑暗', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '23123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('177', '2017年9月27日考核', '总经理', '3', '2034/12/31', '2012/03/12', '全体员工', '全体降薪100元', '12', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '213', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('178', '2017年9月27日考核', 'xiaoming', '2', '2012/03/12', '2012/03/12', '地球人', '全体降薪100元', '22', '22', null, '2017-09-11 05:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('179', '2017年9月27日考核', 'xiaoming', '1', '2013/12/31', '2012/03/12', '全体员工', '全体降薪100元', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('180', '2017年9月27日考核', '总经理', '1', '2012/03/12', '2012/03/21', '地球人', '地球毁灭', '22', '22', null, '2017-09-06 09:45:00', '2017-09-12 09:21:00', '123', null, null, null, null, null, null, null, null);
INSERT INTO `hr_kpi_evalproject` VALUES ('181', '21', '21', '1', '2012/03/12', '2012/03/12', '12', '21', '21', '2', null, '1899-12-06 10:30:00', '2017-10-02 09:20:00', '213', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `hr_kpi_evalrelation`
-- ----------------------------
DROP TABLE IF EXISTS `hr_kpi_evalrelation`;
CREATE TABLE `hr_kpi_evalrelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考核关系编号',
  `project_no` int(11) DEFAULT NULL,
  `form_no` int(11) DEFAULT NULL,
  `leader_no` int(11) DEFAULT NULL,
  `emp_no` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `selfScore` double(255,0) DEFAULT NULL,
  `leaderScore` double(255,0) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `company_no` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_kpi_evalrelation
-- ----------------------------
INSERT INTO `hr_kpi_evalrelation` VALUES ('127', '12', '1010803000', '1', '2', '3', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('128', '12', '1010803000', '1', '3', '4', '14', '16', '15', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('129', '12', '1010803000', '1', '4', '4', '14', '10', '12', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('130', '12', '1010803000', '1', '5', '3', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('131', '12', '1010803000', '1', '6', '3', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('132', '17', '1010800000', '5', '2', '5', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('133', '17', '1010800000', '5', '3', '5', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('134', '17', '1010800000', '5', '6', '5', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('135', '20', '1010804000', '15', '1', '5', '0', '5', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('136', '20', '1010804000', '15', '2', '5', '0', '5', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('137', '20', '1010804000', '15', '3', '5', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('138', '20', '1010804000', '15', '4', '5', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('139', '20', '1010804000', '15', '5', '5', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('140', '20', '1010804000', '15', '6', '5', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('141', '16', '1010903000', '3', '2', '2', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('146', '9', '1010905000', '1', '1', '3', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('147', '9', '1010905000', '1', '3', '3', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('148', '9', '1010905000', '1', '4', '3', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalrelation` VALUES ('149', '9', '1010905000', '1', '7', '3', '0', '0', '0', '{BFA80866-0000-0000-05C3-1F0A00000001}');

-- ----------------------------
-- Table structure for `hr_kpi_evalresult`
-- ----------------------------
DROP TABLE IF EXISTS `hr_kpi_evalresult`;
CREATE TABLE `hr_kpi_evalresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_no` int(11) DEFAULT NULL,
  `result_json` text,
  `score` double DEFAULT NULL COMMENT '考评得分',
  `evalTime` datetime DEFAULT NULL COMMENT '考评时间',
  `emp_no` int(11) DEFAULT NULL COMMENT '考核员工编号',
  `isSelfEval` varchar(255) DEFAULT NULL COMMENT '自评他评（1自评）',
  `company_no` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_kpi_evalresult
-- ----------------------------
INSERT INTO `hr_kpi_evalresult` VALUES ('13', '128', '{0:5.0,1:4.0,2:4.0,3:3.0,4:\"12\",5:\"34\",6:\"56\"}', '16', '2017-08-16 00:00:00', '1', 'no', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalresult` VALUES ('14', '128', '{0:5.0,1:4.0,2:3.0,3:2.0,4:\"cs\",5:\"cs4\",6:\"cs111\"}', '14', '2017-08-16 00:00:00', '3', 'yes', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalresult` VALUES ('15', '129', '{0:1.0,1:2.0,2:3.0,3:4.0,4:\"ld1\",5:\";d2\",6:\"ld3\"}', '10', '2017-08-16 00:00:00', '1', 'no', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalresult` VALUES ('16', '129', '{0:5.0,1:4.0,2:3.0,3:2.0,4:\"yg1\",5:\"yg3\",6:\"yg4\"}', '14', '2017-08-16 00:00:00', '4', 'yes', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalresult` VALUES ('17', '135', '{0:5.0}', '5', '2017-08-31 00:00:00', '15', 'no', '{BFA80866-0000-0000-05C3-1F0A00000001}');
INSERT INTO `hr_kpi_evalresult` VALUES ('18', '136', '{0:5.0,1:\"123456\"}', '5', '2017-09-02 00:00:00', '15', 'no', '{BFA80866-0000-0000-05C3-1F0A00000001}');

-- ----------------------------
-- Table structure for `hr_kpi_evalstatus`
-- ----------------------------
DROP TABLE IF EXISTS `hr_kpi_evalstatus`;
CREATE TABLE `hr_kpi_evalstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `rel_no` int(11) DEFAULT NULL COMMENT '考核关系编号',
  `emp_no` int(11) DEFAULT NULL COMMENT '考核员工编号',
  `eval_status` varchar(255) DEFAULT NULL COMMENT '考核状态',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `creator_no` varchar(38) DEFAULT NULL COMMENT '创建者编号',
  `company_no` varchar(38) DEFAULT NULL COMMENT '公司编号',
  `limitTimeEnd` datetime DEFAULT NULL,
  `limitTimeStart` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_kpi_evalstatus
-- ----------------------------
INSERT INTO `hr_kpi_evalstatus` VALUES ('87', '127', '2', '1', '系统管理员', '2017-08-16 16:03:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-10-01 00:00:00', '2017-06-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('88', '127', '1', '1', '系统管理员', '2017-08-16 16:03:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-10-01 00:00:00', '2017-06-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('89', '128', '3', '2', '系统管理员', '2017-08-16 16:03:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-10-01 00:00:00', '2017-06-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('90', '128', '1', '2', '系统管理员', '2017-08-16 16:03:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-10-01 00:00:00', '2017-06-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('91', '129', '4', '2', '系统管理员', '2017-08-16 16:03:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-10-01 00:00:00', '2017-06-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('92', '129', '1', '2', '系统管理员', '2017-08-16 16:03:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-10-01 00:00:00', '2017-06-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('93', '130', '5', '1', '系统管理员', '2017-08-16 16:03:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-10-01 00:00:00', '2017-06-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('94', '130', '1', '1', '系统管理员', '2017-08-16 16:03:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-10-01 00:00:00', '2017-06-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('95', '131', '6', '1', '系统管理员', '2017-08-16 16:03:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-10-01 00:00:00', '2017-06-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('96', '131', '1', '1', '系统管理员', '2017-08-16 16:03:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-10-01 00:00:00', '2017-06-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('97', '132', '2', '3', '系统管理员', '2017-08-27 17:48:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-04-02 00:00:00', '2017-03-02 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('98', '132', '5', '3', '系统管理员', '2017-08-27 17:48:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-04-02 00:00:00', '2017-03-02 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('99', '133', '3', '3', '系统管理员', '2017-08-27 17:48:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-04-02 00:00:00', '2017-03-02 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('100', '133', '5', '3', '系统管理员', '2017-08-27 17:48:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-04-02 00:00:00', '2017-03-02 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('101', '134', '6', '3', '系统管理员', '2017-08-27 17:48:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-04-02 00:00:00', '2017-03-02 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('102', '134', '5', '3', '系统管理员', '2017-08-27 17:48:52', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-04-02 00:00:00', '2017-03-02 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('103', '135', '1', '3', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('104', '135', '15', '2', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('105', '136', '2', '3', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('106', '136', '15', '2', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('107', '137', '3', '3', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('108', '137', '15', '3', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('109', '138', '4', '3', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('110', '138', '15', '3', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('111', '139', '5', '3', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('112', '139', '15', '3', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('113', '140', '6', '3', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('114', '140', '15', '3', '系统管理员', '2017-08-31 23:38:40', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-07 00:00:00', '2017-08-24 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('115', '146', '1', '1', '系统管理员', '2017-09-15 15:54:53', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-28 00:00:00', '2017-09-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('116', '146', '1', '1', '系统管理员', '2017-09-15 15:54:53', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-28 00:00:00', '2017-09-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('117', '147', '3', '1', '系统管理员', '2017-09-15 15:54:53', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-28 00:00:00', '2017-09-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('118', '147', '1', '1', '系统管理员', '2017-09-15 15:54:53', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-28 00:00:00', '2017-09-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('119', '148', '4', '1', '系统管理员', '2017-09-15 15:54:53', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-28 00:00:00', '2017-09-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('120', '148', '1', '1', '系统管理员', '2017-09-15 15:54:53', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-28 00:00:00', '2017-09-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('121', '149', '7', '1', '系统管理员', '2017-09-15 15:54:53', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-28 00:00:00', '2017-09-01 00:00:00');
INSERT INTO `hr_kpi_evalstatus` VALUES ('122', '149', '1', '1', '系统管理员', '2017-09-15 15:54:53', '{BFA80866-0000-0000-05C3-1F4600000003}', '{BFA80866-0000-0000-05C3-1F0A00000001}', '2017-09-28 00:00:00', '2017-09-01 00:00:00');

-- ----------------------------
-- Table structure for `organizational_company`
-- ----------------------------
DROP TABLE IF EXISTS `organizational_company`;
CREATE TABLE `organizational_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(38) NOT NULL COMMENT 'UUID唯一表示',
  `code` varchar(30) DEFAULT NULL COMMENT '公司账号(用作登陆)',
  `name` varchar(255) DEFAULT NULL COMMENT '公司名称(用作展示)',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `contacts` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `fax` varchar(255) DEFAULT NULL COMMENT '传真',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of organizational_company
-- ----------------------------
INSERT INTO `organizational_company` VALUES ('1', '{BFA80866-0000-0000-05C3-1F0A00000001}', 'funcode', '武汉趣码科技有限公司', null, null, null, null);

-- ----------------------------
-- Table structure for `organizational_permission`
-- ----------------------------
DROP TABLE IF EXISTS `organizational_permission`;
CREATE TABLE `organizational_permission` (
  `guid` varchar(38) NOT NULL,
  `classStyle` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL COMMENT 'html属性ID',
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `onclick` varchar(255) DEFAULT NULL,
  `parentGuid` varchar(38) DEFAULT NULL,
  `rel` varchar(255) DEFAULT NULL,
  `tabIndex` int(11) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '权限类型 0菜单 1功能按钮',
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of organizational_permission
-- ----------------------------
INSERT INTO `organizational_permission` VALUES ('10001', 'fa fa-universal-access', '', '1', '考核', '', '-1', '', '1', '', '', '0', '', '');
INSERT INTO `organizational_permission` VALUES ('10002', 'fa fa-id-card', '', '1', '员工', '', '-1', '', '2', '', '', '0', '', '');
INSERT INTO `organizational_permission` VALUES ('20001', '', 'kpiList', '2', 'KPI考核', '', '10001', 'kpiList', '1', 'content', '', '0', '/kpi/list', '');
INSERT INTO `organizational_permission` VALUES ('20002', '', 'd360List', '2', '360考核', '', '10001', 'd360List', '2', 'content', '', '0', '/#', '');
INSERT INTO `organizational_permission` VALUES ('20003', '', 'okrList', '2', 'OKR考核', '', '10001', 'okrList', '3', 'content', '', '0', '/#', '');
INSERT INTO `organizational_permission` VALUES ('20004', '', 'staffList', '2', '员工信息', '', '10002', 'staffList', '1', 'content', '', '0', '/staff/list', '');
INSERT INTO `organizational_permission` VALUES ('20005', '', 'formerList', '2', '离职员工', '', '10002', 'formerList', '2', 'content', '', '0', '/staff/former/list', '');

-- ----------------------------
-- Table structure for `organizational_role`
-- ----------------------------
DROP TABLE IF EXISTS `organizational_role`;
CREATE TABLE `organizational_role` (
  `guid` varchar(38) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fields` varchar(255) DEFAULT NULL,
  `roleType` int(11) DEFAULT NULL,
  `company_no` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of organizational_role
-- ----------------------------
INSERT INTO `organizational_role` VALUES ('{BFA80866-0000-0000-05C3-205A00000008}', '系统管理员', null, '0', '10000001');

-- ----------------------------
-- Table structure for `organizational_rolepermissions`
-- ----------------------------
DROP TABLE IF EXISTS `organizational_rolepermissions`;
CREATE TABLE `organizational_rolepermissions` (
  `guid` varchar(38) NOT NULL,
  `company_no` varchar(38) DEFAULT NULL,
  `permission_no` varchar(38) DEFAULT NULL,
  `role_no` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of organizational_rolepermissions
-- ----------------------------

-- ----------------------------
-- Table structure for `organizational_user`
-- ----------------------------
DROP TABLE IF EXISTS `organizational_user`;
CREATE TABLE `organizational_user` (
  `guid` varchar(38) NOT NULL,
  `activate` varchar(255) DEFAULT NULL,
  `activateDate` datetime DEFAULT NULL,
  `checkCode` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `departmentId` varchar(255) DEFAULT NULL,
  `departmentName` varchar(255) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL COMMENT '上一次登陆时间',
  `firstTimeLoginDate` datetime DEFAULT NULL COMMENT '初次登陆时间',
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `userType` varchar(255) DEFAULT NULL,
  `company_no` varchar(38) DEFAULT NULL,
  `role_no` varchar(38) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `FKd0ugi2men9h69in0eovrrtah8` (`role_no`),
  CONSTRAINT `organizational_user_ibfk_1` FOREIGN KEY (`role_no`) REFERENCES `organizational_role` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of organizational_user
-- ----------------------------
INSERT INTO `organizational_user` VALUES ('{BFA80866-0000-0000-05C3-1F4600000003}', '1', null, null, '2015-08-07 14:04:54', null, null, '2017-09-16 18:01:31', '2015-08-07 14:19:43', null, '0', 'admin', '系统管理员', '1231', '主账号', '{BFA80866-0000-0000-05C3-1F0A00000001}', '{BFA80866-0000-0000-05C3-205A00000008}');
