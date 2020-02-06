/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : guide_vue

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-02-05 23:20:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `app_adr_category`
-- ----------------------------
DROP TABLE IF EXISTS `app_adr_category`;
CREATE TABLE `app_adr_category` (
  `id` varchar(32) NOT NULL COMMENT '分类ID',
  `category` varchar(10) NOT NULL COMMENT '分类名称',
  `order_num` int(4) NOT NULL COMMENT '显示顺序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='category表';

-- ----------------------------
-- Records of app_adr_category
-- ----------------------------
INSERT INTO `app_adr_category` VALUES ('c9f8ad8ac0dc11e9824e2c600ca82001', '八石八景', '1', 'admin', '2019-08-17 18:49:11', '', null);
INSERT INTO `app_adr_category` VALUES ('ca04aea3c0dc11e9824e2c600ca82001', '出入门', '2', 'admin', '2019-08-17 18:49:11', '', null);
INSERT INTO `app_adr_category` VALUES ('ca17c0c1c0dc11e9824e2c600ca82001', '教学楼', '3', 'admin', '2019-08-17 18:49:11', '', null);
INSERT INTO `app_adr_category` VALUES ('ca2c4563c0dc11e9824e2c600ca82001', '科技楼', '4', 'admin', '2019-08-17 18:49:12', '', null);
INSERT INTO `app_adr_category` VALUES ('ca3df57cc0dc11e9824e2c600ca82001', '综合楼', '5', 'admin', '2019-08-17 18:49:12', '', null);
INSERT INTO `app_adr_category` VALUES ('ca44f9c8c0dc11e9824e2c600ca82001', '图书馆', '6', 'admin', '2019-08-17 18:49:12', '', null);
INSERT INTO `app_adr_category` VALUES ('ca4c5459c0dc11e9824e2c600ca82001', '体育场', '7', 'admin', '2019-08-17 18:49:12', '', null);
INSERT INTO `app_adr_category` VALUES ('ca55f692c0dc11e9824e2c600ca82001', '餐饮', '8', 'admin', '2019-08-17 18:49:12', '', null);
INSERT INTO `app_adr_category` VALUES ('ca5ec6aec0dc11e9824e2c600ca82001', '宿舍', '9', 'admin', '2019-08-17 18:49:12', '', null);
INSERT INTO `app_adr_category` VALUES ('ca64e410c0dc11e9824e2c600ca82001', 'ATM', '10', 'admin', '2019-08-17 18:49:12', '', null);
INSERT INTO `app_adr_category` VALUES ('ca6c2728c0dc11e9824e2c600ca82001', '医疗室', '11', 'admin', '2019-08-17 18:49:12', '', null);
INSERT INTO `app_adr_category` VALUES ('ca72c65bc0dc11e9824e2c600ca82001', '快递', '12', 'admin', '2019-08-17 18:49:12', '', null);

-- ----------------------------
-- Table structure for `app_content`
-- ----------------------------
DROP TABLE IF EXISTS `app_content`;
CREATE TABLE `app_content` (
  `id` varchar(32) NOT NULL COMMENT '内容ID',
  `title` varchar(100) DEFAULT NULL COMMENT '内容标题',
  `content` longtext COMMENT '内容正文',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='content表';

-- ----------------------------
-- Records of app_content
-- ----------------------------
INSERT INTO `app_content` VALUES ('0451ac46c0db11e9824e2c600ca82001', '信阳农林学院简介', '<p>信阳农林学院是一所公办全日制普通本科学校，坐落于历史文化名城信阳。信阳地处河南省南部，东邻安徽、南接湖北，楚风豫韵交汇交融，素有“北国江南，江南北国”之美誉，是中国著名的宜居之城、旅游之城、创业之城，其优越的地理区位、优美的自然环境、深厚的文化底蕴和活跃的地方建设，为莘莘学子学习深造提供了优越条件。</p><p>&nbsp;</p><p>学校前身为信阳农业高等专科学校，办学历史可追溯到1910年成立的汝宁府中等实业学堂。一百多年来，学校发扬“艰苦创业、负重奋进、团结拼搏、追求卓越”的精神，秉承“志向立高远、学问做精细”的校训，已建成一所以农林学科专业为特色，农学、工学、管理学、文学、理学等多学科协调发展的与区域经济社会发展相适应的应用型普通高校，为社会培养各类人才10余万人，为河南经济社会发展作出了重要贡献。</p><p>&nbsp;</p><p>学校校园占地1430余亩，校舍建筑面积44.5万余平方米。在校学生1.2万余人，教职工850余人，其中专任教师700余人，具有高级专业技术职务教师230余人，具有博士、硕士学位教师550余人。有国家教学名师1人，全国优秀教师1人，全国十佳双创典型导师1人，河南省教学名师2人，省管专家、学术技术带头人、省级骨干教师等高层次人才40余人，省级优秀教学团队2个，省级优秀基层教学组织2个。</p><p>&nbsp;</p><p>学校设有农学院、林学院、水产学院、茶学院、牧医工程学院、食品学院、园艺学院、规划与设计学院、信息工程学院、工商管理学院、财经学院、外国语学院、生物与制药工程学院、旅游管理学院、思想政治理论课教学部、文学艺术教学部、体育教学部、国际交流与合作部、继续教育学院共19个教学单位，设置有植物保护、种子科学与工程、农学、设施农业科学与工程、林学、园林、水产养殖学、水族科学与技术、茶学、动物医学、动物科学、食品科学与工程、食品质量与安全、园艺、城乡规划、风景园林、环境设计、网络工程、数字媒体技术、物流管理、物联网工程、电子商务、市场营销、财务管理、审计学、商务英语、翻译、制药工程、酒店管理、旅游管理等30个本科专业和若干专业方向，以及畜牧兽医、烹饪工艺与营学校教学科研仪器设备总值7900余万元，建有农学、林学、水产养殖、茶学、动物医学、食品科学与工程等各类实验室45个，稳定的校内外实习实训基地200余个，国家级职业教育实训基地2个，省级示范性实训基地4个，省级实验教学示范中心1个，农林实习场1个。图书馆面积2.8万平方米，现代图书管理系统完善，馆藏图书110万余册，学术期刊1000多种，可利用电子图书35万册（种）。建有较完善的计算机网络服务体系。</p><p>&nbsp;</p><p>学校坚持“质量立校，特色兴校，人才强校”的办学思想，坚持以育人为中心、以提高人才培养质量为核心的教学理念，实施“质量提升，内涵带动”发展战略，大力推进教学质量工程建设，走产学研合作道路，形成了鲜明的办学特色。有省级及以上特色优势专业15个，其中中央财政支持提升专业服务能力项目建设专业2个、河南省高等学校专业综合改革试点项目3个（本科），国家级精品课程4门，河南省精品课程7门，省级精品资源课程2门，河南省精品在线开放课程1门。获省级教学成果50项，其中省级教学成果特等奖1项，一等奖7项，二等奖17项。</p><p>&nbsp;</p><p>学校坚持以提高科学研究水平和科技服务能力为目标，强化科技创新与服务平台建设，牵头组建了河南省茶产业技术创新战略联盟、河南省水库生态渔业产业技术创新战略联盟、河南省食药用真菌产业技术创新战略联盟，获批建立豫南植物有害生物绿色防控院士工作站、河南省博士后研发基地和6个省级工程（技术）研究中心、18个市厅级工程技术研究中心、1个省级和6个市级重点实验室，1个市级星创天地。面向信阳及周边地区粮食、林果、水产、茶叶、畜禽、花卉、食品加工、食用菌、中草药等产业发展，积极开展应用研究、技术开发和成果转化，近年来承担省部级以上科研项目300多项，获得省部级奖80余项，获国家专利300余项。获批建立国家级培育示范基地1个、省级培训基地5个、省级培育机构1个、省级科普示范基地1个，省级产学研合作试点项目6个。市校联合建有信阳马克思主义学院、信阳农民大学，学校联合10余家政府机构与100余家企业组建有产学研合作联盟，积极推进政、产、学、研深化合作，支持地方经济社会发展和脱贫攻坚，近年依托河南省博士服务团、科普传播工程项目及省市科技特派员、“三区”人才支持计划科技人员专项计划、驻村第一书记等为载体，积极服务地方经济社会发展，每年开展各类服务活动千余场次。</p><p>&nbsp;</p><p>在省市领导大力支持和全校教职工的不懈努力下，学校办学赢得多方肯定，先后获有“省级文明学校”、“省级文明单位”、“河南省园林单位”、“河南省高等学校先进党委”、“河南省高等学校党建工作先进单位”、“河南省学校行风建设先进单位”、“河南省职业教育工作先进单位”、“河南省普通高校大中专毕业生就业工作先进集体”、“河南省科技特派员工作先进集体”、“河南省农业科技工作先进单位”、“河南最具就业竞争力示范院校”、“河南省依法治校示范校”等荣誉称号，2015年、2016年连续获得两届中国“互联网+”大学生创新创业大赛全国总决赛银奖。</p><p>&nbsp;</p><p>站在新的历史起点上，全校师生正以饱满的热情、昂扬的斗志掀开学校建设发展的新篇章，为实现学校的跨越发展而努力奋斗。</p>', 'admin', '2019-08-17 18:36:30', 'admin', '2019-12-14 19:27:05');

-- ----------------------------
-- Table structure for `app_map`
-- ----------------------------
DROP TABLE IF EXISTS `app_map`;
CREATE TABLE `app_map` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `title` varchar(100) DEFAULT NULL COMMENT '地点名称',
  `description` varchar(255) DEFAULT NULL COMMENT '地点介绍',
  `logo` varchar(200) DEFAULT NULL COMMENT '地点logo',
  `images` varchar(1000) DEFAULT NULL COMMENT '地点图片',
  `longitude` varchar(100) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(100) DEFAULT NULL COMMENT '纬度',
  `category` varchar(100) DEFAULT NULL COMMENT '分类',
  `order_num` int(4) DEFAULT NULL COMMENT '展示顺序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='map表';

-- ----------------------------
-- Records of app_map
-- ----------------------------
INSERT INTO `app_map` VALUES ('1dbbc153c0dd11e9824e2c600ca82001', '教一楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpOKkLHJolDIOZL.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpOKkLHJolDIOZL.jpg', '114.123734', '32.159238', '教学楼', '1', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:44:13');
INSERT INTO `app_map` VALUES ('1dc519c9c0dd11e9824e2c600ca82001', '美好生活超市', ' ', null, null, '114.126706', '32.16565', '餐饮', '3', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:47:15');
INSERT INTO `app_map` VALUES ('1dcbd1eec0dd11e9824e2c600ca82001', '校医院', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gtqwxiQNzvUmieo.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gtqwxiQNzvUmieo.jpg', '114.125242', '32.166767', '医疗室', '1', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:50:51');
INSERT INTO `app_map` VALUES ('1dd60247c0dd11e9824e2c600ca82001', '科技楼1A', '信息工程学院成立于2002年4月，目前拥有计算机基础实验室（7个）、计算机专业实验室、计算机组成原理实验室、计算机组装与维护实验室、网络互联实验室、综合布线实验室、通信原理实验室、EDA实验室等16个实验室，同时建立15个校外实习实训基地。', 'http://b289.photo.store.qq.com/psb?/V13DIOQn2rGg8K/MaLYbwPbIKBxvsmL.LNWrdqzVw1k6KpklT8NxqzrbCQ!/c/dCEBAAAAAAAA&amp;bo=bQJjAW0CYwEBACc!&amp;rf=mood_app', 'http://b289.photo.store.qq.com/psb?/V13DIOQn2rGg8K/MaLYbwPbIKBxvsmL.LNWrdqzVw1k6KpklT8NxqzrbCQ!/c/dCEBAAAAAAAA&amp;bo=bQJjAW0CYwEBACc!&amp;rf=mood_app', '114.12588', '32.16199', '科技楼', '1', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:44:33');
INSERT INTO `app_map` VALUES ('1ddfe6adc0dd11e9824e2c600ca82001', '科技楼1B', ' ', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/nfDxys9sGqc2uqYkF95I9XGzMunTdTHxwTgkzs6F0SI!/c/dCIBAAAAAAAA&amp;bo=1QKnAdUCpwEBACc!&amp;rf=mood_app', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/nfDxys9sGqc2uqYkF95I9XGzMunTdTHxwTgkzs6F0SI!/c/dCIBAAAAAAAA&amp;bo=1QKnAdUCpwEBACc!&amp;rf=mood_app', '114.125826', '32.161572', '科技楼', '2', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:44:38');
INSERT INTO `app_map` VALUES ('1de6c2b7c0dd11e9824e2c600ca82001', '科技楼1C', ' ', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/Ql1kVQDEmO3kiOPtgGyR5C*gj7mOPbF3I9QYojjFSOk!/c/dCIBAAAAAAAA&amp;bo=FAJZARQCWQEBACc!&amp;rf=mood_app', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/Ql1kVQDEmO3kiOPtgGyR5C*gj7mOPbF3I9QYojjFSOk!/c/dCIBAAAAAAAA&amp;bo=FAJZARQCWQEBACc!&amp;rf=mood_app', '114.125612', '32.161127', '科技楼', '3', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:44:44');
INSERT INTO `app_map` VALUES ('1ded18a7c0dd11e9824e2c600ca82001', '科技楼2A', ' ', 'http://b286.photo.store.qq.com/psb?/V13DIOQn2rGg8K/MsaZGcoS3oNkwd.Im3kuY*tihVDbsd7jxQeyyt1mYiw!/c/dB4BAAAAAAAA&amp;bo=SQJxAUkCcQEBACc!&amp;rf=mood_app', 'http://b286.photo.store.qq.com/psb?/V13DIOQn2rGg8K/MsaZGcoS3oNkwd.Im3kuY*tihVDbsd7jxQeyyt1mYiw!/c/dB4BAAAAAAAA&amp;bo=SQJxAUkCcQEBACc!&amp;rf=mood_app', '114.122865', '32.161309', '科技楼', '4', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:44:49');
INSERT INTO `app_map` VALUES ('1df442ddc0dd11e9824e2c600ca82001', '科技楼2B', ' ', 'http://b289.photo.store.qq.com/psb?/V13DIOQn2rGg8K/J0rMyX.YbNhshVNRonKPnvW5hTYY**ofUftzGxH.1ho!/c/dCEBAAAAAAAA&amp;bo=mAKxAZgCsQEBACc!&amp;rf=mood_app', 'http://b289.photo.store.qq.com/psb?/V13DIOQn2rGg8K/J0rMyX.YbNhshVNRonKPnvW5hTYY**ofUftzGxH.1ho!/c/dCEBAAAAAAAA&amp;bo=mAKxAZgCsQEBACc!&amp;rf=mood_app', '114.122822', '32.160895', '科技楼', '5', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:44:56');
INSERT INTO `app_map` VALUES ('1dfaf487c0dd11e9824e2c600ca82001', '科技楼2C', ' ', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/hsdPNA5KcVvfVwE3BIVzu19GlcJ1b0YhH2OufIO7stk!/c/dCIBAAAAAAAA&amp;bo=bAKVAWwClQEBACc!&amp;rf=mood_app', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/hsdPNA5KcVvfVwE3BIVzu19GlcJ1b0YhH2OufIO7stk!/c/dCIBAAAAAAAA&amp;bo=bAKVAWwClQEBACc!&amp;rf=mood_app', '114.122897', '32.160491', '科技楼', '6', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:45:01');
INSERT INTO `app_map` VALUES ('1e04e436c0dd11e9824e2c600ca82001', '篮球场', ' ', 'http://b289.photo.store.qq.com/psb?/V13DIOQn2rGg8K/tObLq3eW6cHpI36bp9iYd5mw0KghtQjxF*VR9VZrNVM!/c/dCEBAAAAAAAA&amp;bo=0AIcAtACHAIBACc!&amp;rf=mood_app', 'http://b289.photo.store.qq.com/psb?/V13DIOQn2rGg8K/tObLq3eW6cHpI36bp9iYd5mw0KghtQjxF*VR9VZrNVM!/c/dCEBAAAAAAAA&amp;bo=0AIcAtACHAIBACc!&amp;rf=mood_app', '114.123053', '32.162567', '体育场', '1', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:46:17');
INSERT INTO `app_map` VALUES ('1e0cff02c0dd11e9824e2c600ca82001', '排球场', ' ', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/sKhs.UC5VC*IyO*74i7.0xQDi0gjU*AfX7Rw1AT6e1c!/c/dCIBAAAAAAAA&amp;bo=0AIcAtACHAIBACc!&amp;rf=mood_app', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/sKhs.UC5VC*IyO*74i7.0xQDi0gjU*AfX7Rw1AT6e1c!/c/dCIBAAAAAAAA&amp;bo=0AIcAtACHAIBACc!&amp;rf=mood_app', '114.122871', '32.165287', '体育场', '4', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:46:39');
INSERT INTO `app_map` VALUES ('1e142e9ec0dd11e9824e2c600ca82001', '教二楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpOKkrqaxsFwBCc.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpOS1raMmYBDpkt.jpg', '114.125623', '32.159174', '教学楼', '2', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:44:22');
INSERT INTO `app_map` VALUES ('1e1ccf75c0dd11e9824e2c600ca82001', '运动场', ' ', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/KIgf0kxdildP1TlbiZfHKjgdvKu19x5ivbByphn*TcU!/c/dCIBAAAAAAAA&amp;bo=sAKWAbAClgEBACc!&amp;rf=mood_app', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/KIgf0kxdildP1TlbiZfHKjgdvKu19x5ivbByphn*TcU!/c/dCIBAAAAAAAA&amp;bo=sAKWAbAClgEBACc!&amp;rf=mood_app', '114.123042', '32.163956', '体育场', '3', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:46:35');
INSERT INTO `app_map` VALUES ('1e25836ac0dd11e9824e2c600ca82001', '网球场', ' ', null, 'test1', '114.122458', '32.162753', '体育场', '2', 'admin', '2019-08-17 18:51:32', '', '2019-09-14 15:46:28');
INSERT INTO `app_map` VALUES ('1e740cdac0dd11e9824e2c600ca82001', '楚韵湖', ' ', 'http://www.xyafu.edu.cn/images/content/2018-04/20180427180802376183.jpg', 'http://www.xyafu.edu.cn/images/content/2018-04/20180427180802376183.jpg,https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv7AOHdSTHvvGi.jpeg,https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv7AmQTwKxBAXB.jpeg,https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv7AXPzyRvTvKR.jpeg', '114.124737', '32.163865', '八石八景', '3', 'admin', '2019-08-17 18:51:33', '', '2019-09-14 15:42:37');
INSERT INTO `app_map` VALUES ('1ec2d1f2c0dd11e9824e2c600ca82001', '1号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.126357', '32.16417', '宿舍', '1', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:47:25');
INSERT INTO `app_map` VALUES ('1ec9c5bbc0dd11e9824e2c600ca82001', '2号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.126368', '32.164578', '宿舍', '2', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:47:30');
INSERT INTO `app_map` VALUES ('1ed6f58ac0dd11e9824e2c600ca82001', '3号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.12654', '32.164996', '宿舍', '3', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:47:36');
INSERT INTO `app_map` VALUES ('1f08c9ddc0dd11e9824e2c600ca82001', '4号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.126052', '32.166522', '宿舍', '4', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:47:40');
INSERT INTO `app_map` VALUES ('1f0f02dbc0dd11e9824e2c600ca82001', '5号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.125735', '32.166145', '宿舍', '5', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:47:46');
INSERT INTO `app_map` VALUES ('1f19516bc0dd11e9824e2c600ca82001', '6号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.12559', '32.165836', '宿舍', '6', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:47:52');
INSERT INTO `app_map` VALUES ('1f204326c0dd11e9824e2c600ca82001', '7号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.12559', '32.165496', '宿舍', '7', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:47:57');
INSERT INTO `app_map` VALUES ('1f29557ec0dd11e9824e2c600ca82001', '听雨轩', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6HxqTSdGNEiR.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6HxqTSdGNEiR.jpg,https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6HWfqnOHXJBK.jpg', '114.122463', '32.158316', '八石八景', '2', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:42:25');
INSERT INTO `app_map` VALUES ('1f30d0ccc0dd11e9824e2c600ca82001', '8号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.125494', '32.165119', '宿舍', '8', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:48:03');
INSERT INTO `app_map` VALUES ('1f37c447c0dd11e9824e2c600ca82001', '9号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.124727', '32.16511', '宿舍', '9', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:48:08');
INSERT INTO `app_map` VALUES ('1f3e7bdec0dd11e9824e2c600ca82001', '10号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.124727', '32.165446', '宿舍', '10', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:48:14');
INSERT INTO `app_map` VALUES ('1f4a711cc0dd11e9824e2c600ca82001', '中国建设银行', null, 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyIkmAIWDvbGJKO.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyIkmAIWDvbGJKO.jpg', '114.122307', '32.160677', 'ATM', '1', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:49:32');
INSERT INTO `app_map` VALUES ('1f513e70c0dd11e9824e2c600ca82001', '情人坡', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv7TvyedwBklPb.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv7TvyedwBklPb.jpg', '114.124528', '32.15882', '八石八景', '1', 'admin', '2019-08-17 18:51:34', '', '2019-09-14 15:42:04');
INSERT INTO `app_map` VALUES ('1f57c8fac0dd11e9824e2c600ca82001', '荷塘', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6tjUlyHsQvyl.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6tjUlyHsQvyl.jpg,https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6tCcxffxPHwS.jpg', '114.126234', '32.16357', '八石八景', '4', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:42:42');
INSERT INTO `app_map` VALUES ('1f62149dc0dd11e9824e2c600ca82001', '中国工商银行（西）', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fwL7BHNaVmJQsOX.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fwL7BHNaVmJQsOX.jpg', '114.122318', '32.160755', '银行', null, 'admin', '2019-08-17 18:51:35', '', null);
INSERT INTO `app_map` VALUES ('1f6afc10c0dd11e9824e2c600ca82001', '生活区门口', ' ', null, null, '114.127725', '32.165741', '出入门', '3', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:43:05');
INSERT INTO `app_map` VALUES ('1f732489c0dd11e9824e2c600ca82001', '11号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.121583', '32.162794', '宿舍', '11', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:48:22');
INSERT INTO `app_map` VALUES ('1f798bcec0dd11e9824e2c600ca82001', '12号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.121107', '32.162844', '宿舍', '12', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:48:27');
INSERT INTO `app_map` VALUES ('1f80ba34c0dd11e9824e2c600ca82001', '图书馆', '图书馆', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gCzwcBqHKWLZGi3.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gCzwcBqHKWLZGi3.jpg', '114.123949', '32.160646', '图书馆', '1', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:45:25');
INSERT INTO `app_map` VALUES ('1f8770b1c0dd11e9824e2c600ca82001', '13号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.121599', '32.16254', '宿舍', '13', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:48:33');
INSERT INTO `app_map` VALUES ('1f901593c0dd11e9824e2c600ca82001', '14号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fpv6hjAgXFDoCqn.jpg', '114.121107', '32.162611', '宿舍', '14', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:48:38');
INSERT INTO `app_map` VALUES ('1f965d7ec0dd11e9824e2c600ca82001', '韵达(佰米智能)', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gtq7YLEOjTupovr.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyJbHHbRwpZnkJw.jpg', '114.124652', '32.166204', '快递', '1', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:51:17');
INSERT INTO `app_map` VALUES ('1fa522cec0dd11e9824e2c600ca82001', '圆通、顺丰快递', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gtqQwgY9cUvkkH6.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gtqQwgY9cUvkkH6.jpg', '114.125054', '32.166517', '快递', '3', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:51:36');
INSERT INTO `app_map` VALUES ('1fac95aac0dd11e9824e2c600ca82001', 'EMS', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gtqZRbEaxS1f1hC.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gtqZRbEaxS1f1hC.jpg', '114.126272', '32.166399', '快递', '4', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:52:02');
INSERT INTO `app_map` VALUES ('1fb4e676c0dd11e9824e2c600ca82001', '天天快递(金贝贝超市)', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gtqE2dFPQo0r75e.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gtqE2dFPQo0r75e.jpg', '114.124405', '32.167507', '快递', '5', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:55:34');
INSERT INTO `app_map` VALUES ('1fbba74dc0dd11e9824e2c600ca82001', '中通、百世汇通', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gtqnZH4O2Z6QXAh.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gtqnZH4O2Z6QXAh.jpg', '114.12235', '32.167248', '快递', '2', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:51:26');
INSERT INTO `app_map` VALUES ('1fc288e9c0dd11e9824e2c600ca82001', '中原银行', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyKLkRJJslizqeM.jpg', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1536350523612&amp;di=6f05a2a5888f273ed1f30ca6c21a2cd7&amp;imgtype=jpg&amp;src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D3214291140%2C2767779629%26fm%3D214%26gp%3D0.jpg', '114.127023', '32.165618', 'ATM', '3', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:50:08');
INSERT INTO `app_map` VALUES ('1fc9ef43c0dd11e9824e2c600ca82001', '中国农业银行', ' ', 'http://img008.hc360.cn/g2/M03/2E/E6/wKhQuFHROnSEb6d1AAAAAOXE3Dk076.jpg', 'http://img1.imgtn.bdimg.com/it/u=1219438453,1158627288&amp;fm=26&amp;gp=0.jpg', '114.127146', '32.165614', 'ATM', '4', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:50:15');
INSERT INTO `app_map` VALUES ('1fd08553c0dd11e9824e2c600ca82001', '河南省农村信用联社', ' ', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1639398025,2593013213&amp;fm=26&amp;gp=0.jpg', 'https://timgsa.baidu.com/timg?image&amp;quality=80&amp;size=b9999_10000&amp;sec=1536350834445&amp;di=1fd5a48994c73e5d5f3af78619c349d1&amp;imgtype=0&amp;src=http%3A%2F%2Fwww.zzsjpg.com%2Fupfile%2Farticle%2F20130106143592079207.jpg', '114.126411', '32.165655', 'ATM', '2', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:49:41');
INSERT INTO `app_map` VALUES ('1fdacb91c0dd11e9824e2c600ca82001', '南大门', ' ', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/OhdjiGHHypx92JMCCMZYe0ovKbM5AGmqtvSgueCl21M!/b/dCIBAAAAAAAA&amp;bo=QgJ3AUICdwEBACc!&amp;w=392&amp;h=5000', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/OhdjiGHHypx92JMCCMZYe0ovKbM5AGmqtvSgueCl21M!/b/dCIBAAAAAAAA&amp;bo=QgJ3AUICdwEBACc!&amp;w=392&amp;h=5000', '114.124507', '32.156622', '出入门', '1', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:42:54');
INSERT INTO `app_map` VALUES ('1fe1b3acc0dd11e9824e2c600ca82001', '19号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCOJkcwJcUHlya.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCOJkcwJcUHlya.jpg', '114.121395', '32.161281', '宿舍', '19', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:49:08');
INSERT INTO `app_map` VALUES ('1fe83defc0dd11e9824e2c600ca82001', '20号宿舍楼', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCO4AORmwxWRhB.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCO4AORmwxWRhB.jpg', '114.121321', '32.160945', '宿舍', '20', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:49:18');
INSERT INTO `app_map` VALUES ('1feefcb4c0dd11e9824e2c600ca82001', '中国工商银行（东）', ' ', null, null, '114.126533', '32.165768', 'ATM', '5', 'admin', '2019-08-17 18:51:35', '', '2019-09-14 15:50:29');
INSERT INTO `app_map` VALUES ('1ff569d3c0dd11e9824e2c600ca82001', '中国银行', ' ', 'http://img2.imgtn.bdimg.com/it/u=3373327832,3253409614&fm=26&gp=0.jpg', 'http://old.jjl.cn/uploadfile/2016/0118/0118145308337283240.jpg', '114.126808', '32.1653', 'ATM', null, 'admin', '2019-08-17 18:51:36', '', null);
INSERT INTO `app_map` VALUES ('1ffc9071c0dd11e9824e2c600ca82001', '东门', ' ', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/d8eR.nMQaAMgvEHIzyMEN7iqNJyQfhEpcBhkhPSwuw8!/c/dCIBAAAAAAAA&amp;bo=1QERAdUBEQEBACc!&amp;rf=mood_app', 'http://b290.photo.store.qq.com/psb?/V13DIOQn2rGg8K/d8eR.nMQaAMgvEHIzyMEN7iqNJyQfhEpcBhkhPSwuw8!/c/dCIBAAAAAAAA&amp;bo=1QERAdUBEQEBACc!&amp;rf=mood_app', '114.127564', '32.159129', '出入门', '2', 'admin', '2019-08-17 18:51:36', '', '2019-09-14 15:43:00');
INSERT INTO `app_map` VALUES ('200315a1c0dd11e9824e2c600ca82001', '行政楼', ' ', 'http://b289.photo.store.qq.com/psb?/V13DIOQn2rGg8K/3FwH2kkHVZyEoBJ7EBGikz652mqDKg940raZEQsF170!/c/dCEBAAAAAAAA&amp;bo=cQKsAXECrAEBACc!&amp;rf=mood_app', 'http://b289.photo.store.qq.com/psb?/V13DIOQn2rGg8K/3FwH2kkHVZyEoBJ7EBGikz652mqDKg940raZEQsF170!/c/dCEBAAAAAAAA&amp;bo=cQKsAXECrAEBACc!&amp;rf=mood_app', '114.126749', '32.159683', '综合楼', '1', 'admin', '2019-08-17 18:51:36', '', '2019-09-14 15:45:17');
INSERT INTO `app_map` VALUES ('200ecc96c0dd11e9824e2c600ca82001', '学生二餐厅', ' ', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCPRzOyNXgCbjh.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCPRzOyNXgCbjh.jpg,https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCPRoiPdhGtgeb.jpg,https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCPRyWOPONewGr.jpg', '114.122484', '32.159878', '餐饮', '2', 'admin', '2019-08-17 18:51:36', '', '2019-09-14 15:47:11');
INSERT INTO `app_map` VALUES ('20157f81c0dd11e9824e2c600ca82001', '银杏食苑', '学生一餐厅', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCPRbuSaytqKgm.jpg', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCPRbuSaytqKgm.jpg,https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCPRfNxHiXgySa.jpg,https://cloud-minapp-18941.cloud.ifanrusercontent.com/1fyCPRGMEADIBzRD.jpg', '114.126958', '32.166104', '餐饮', '1', 'admin', '2019-08-17 18:51:36', '', '2019-09-14 15:47:06');
INSERT INTO `app_map` VALUES ('9f40275dd5ee11e987862c600ca82001', '15号宿舍楼', null, null, null, '114.12144341362847', '32.162112112901475695', '宿舍', '15', '', '2019-09-13 14:19:51', '', '2019-09-14 15:48:47');
INSERT INTO `app_map` VALUES ('ab16ee74d5ef11e987862c600ca82001', '18号宿舍楼', null, null, null, '114.12100423177084', '32.16174533420139', '宿舍', '18', '', '2019-09-13 14:27:20', '', '2019-09-14 15:49:13');
INSERT INTO `app_map` VALUES ('b94a0aaad5ee11e987862c600ca82001', '16号宿舍楼', null, null, null, '114.1212060546875', '32.16266493055556', '宿舍', '16', '', '2019-09-13 14:20:35', '', '2019-09-14 15:48:55');
INSERT INTO `app_map` VALUES ('d3aef252d5ee11e987862c600ca82001', '17号宿舍楼', null, null, null, '114.12138644748264', '32.16206597222222', '宿舍', '17', '', '2019-09-13 14:21:19', '', '2019-09-14 15:49:01');
INSERT INTO `app_map` VALUES ('fbe5e5fad6c411e9bb252c600ca82001', '京东快递', '京东快递位于文博花园进门第一排左转50米处', null, null, '114.1225808859', '32.16615402138202', '快递', '6', '', '2019-09-14 15:55:14', '', '2019-09-14 15:55:41');

-- ----------------------------
-- Table structure for `app_school`
-- ----------------------------
DROP TABLE IF EXISTS `app_school`;
CREATE TABLE `app_school` (
  `id` varchar(32) NOT NULL COMMENT 'uuid',
  `schoolname` varchar(255) DEFAULT NULL COMMENT '学校中文名称',
  `englishname` varchar(255) DEFAULT NULL COMMENT '学校英文名称',
  `images` varchar(1000) DEFAULT NULL COMMENT '校园图片',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='school表';

-- ----------------------------
-- Records of app_school
-- ----------------------------
INSERT INTO `app_school` VALUES ('05cdf2e8c02111e9824e2c600ca82001', '信阳农林学院', 'Xinyang Agriculture and Forestry University', 'http://www.xyafu.edu.cn/images/content/2018-04/20180427180118038379.jpg,http://www.xyafu.edu.cn/images/content/2018-04/20180427175442208285.jpg,http://www.xyafu.edu.cn/images/content/2018-04/20180427180802376183.jpg,http://www.xyafu.edu.cn/images/content/2018-04/20180427180720139776.jpg,http://www.xyafu.edu.cn/images/content/2018-04/20180427180057169293.jpg', 'admin', '2019-08-16 20:25:13', '', null);

-- ----------------------------
-- Table structure for `app_video`
-- ----------------------------
DROP TABLE IF EXISTS `app_video`;
CREATE TABLE `app_video` (
  `id` varchar(32) NOT NULL COMMENT '视频ID',
  `title` varchar(50) DEFAULT NULL COMMENT '视频标题',
  `coverimg` varchar(100) DEFAULT NULL COMMENT '视频封面图',
  `src` varchar(100) DEFAULT NULL COMMENT '视频链接',
  `status` varchar(2) DEFAULT '0' COMMENT '0为轮播',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='video表';

-- ----------------------------
-- Records of app_video
-- ----------------------------
INSERT INTO `app_video` VALUES ('1aa6aa54c0db11e9824e2c600ca82001', '信阳农林学院形象片', 'http://www.xyafu.edu.cn/images/content/2018-03/20180319164533584532.png', 'https://www.ldtianzhe.top/resource/xynlzw.mp4', '0', 'admin', '2019-08-17 18:37:08', 'admin', '2019-12-05 22:18:55');
INSERT INTO `app_video` VALUES ('1aafac9fc0db11e9824e2c600ca82001', '信阳农林学院中文宣传片', 'http://www.xyafu.edu.cn/images/content/2018-10/20181015195536606995.png', 'https://www.ldtianzhe.top/resource/xynlzwxcp.mp4', '0', 'admin', '2019-08-17 18:37:08', '', null);
INSERT INTO `app_video` VALUES ('1ab9b707c0db11e9824e2c600ca82001', '信阳农林学院英文宣传片', 'http://www.xyafu.edu.cn/images/content/2018-10/20181015195536606995.png', 'https://www.ldtianzhe.top/resource/xynlyw.mp4', '1', 'admin', '2019-08-17 18:37:08', '', null);
INSERT INTO `app_video` VALUES ('1ac62f7cc0db11e9824e2c600ca82001', '信阳农林学院建校108周年贺片', 'https://www.ldtianzhe.top/upload/xynlxq.png', 'https://www.ldtianzhe.top/upload/xynlxq.mp4', '1', 'admin', '2019-08-17 18:37:08', '', null);

-- ----------------------------
-- Table structure for `app_welcome`
-- ----------------------------
DROP TABLE IF EXISTS `app_welcome`;
CREATE TABLE `app_welcome` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `key_name` varchar(30) DEFAULT NULL COMMENT 'key名称',
  `value` varchar(100) DEFAULT NULL COMMENT 'key值',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='welcome表';

-- ----------------------------
-- Records of app_welcome
-- ----------------------------
INSERT INTO `app_welcome` VALUES ('e7c0324ac0d411e9824e2c600ca82001', 'background', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gDRe3d8JYDrIvmG.jpg', 'admin', '2019-08-17 17:52:45', 'admin', '2019-10-19 23:45:18', '背景图片');
INSERT INTO `app_welcome` VALUES ('e7d5e1f4c0d411e9824e2c600ca82001', 'jianjie', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gDWFlWb3C5hDP06.jpg', 'admin', '2019-08-17 17:52:45', 'admin', '2019-08-17 18:02:28', '简介背景');
INSERT INTO `app_welcome` VALUES ('e7e17689c0d411e9824e2c600ca82001', 'video', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gDi2OqbsZLhpItW.jpg', 'admin', '2019-08-17 17:52:45', 'admin', '2019-08-17 18:02:41', '微视背景');
INSERT INTO `app_welcome` VALUES ('e7f4ca79c0d411e9824e2c600ca82001', 'youlan', 'https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gDi2O0wBAEERLqx.jpg', 'admin', '2019-08-17 17:52:46', 'admin', '2019-08-17 18:02:52', '游览背景');

-- ----------------------------
-- Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'app_adr_category', 'category表', 'AppAdrCategory', 'crud', 'com.xyafu.project.wxapp', 'wxapp', 'category', 'category', 'xyafu', null, 'admin', '2019-12-04 23:39:04', '', null, null);
INSERT INTO `gen_table` VALUES ('2', 'app_content', 'content表', 'AppContent', 'crud', 'com.xyafu.project.wxapp', 'wxapp', 'content', 'content', 'xyafu', '{}', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:01:48', null);
INSERT INTO `gen_table` VALUES ('3', 'app_map', 'map表', 'AppMap', 'crud', 'com.xyafu.project.wxapp', 'wxapp', 'map', 'map', 'xyafu', '{}', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22', null);
INSERT INTO `gen_table` VALUES ('4', 'app_school', 'school表', 'AppSchool', 'crud', 'com.xyafu.project.wxapp', 'wxapp', 'school', 'school', 'xyafu', '{}', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:59:19', null);
INSERT INTO `gen_table` VALUES ('5', 'app_video', 'video表', 'AppVideo', 'crud', 'com.xyafu.project.wxapp', 'wxapp', 'video', 'video', 'xyafu', '{}', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 21:49:47', null);
INSERT INTO `gen_table` VALUES ('6', 'app_welcome', 'welcome表', 'AppWelcome', 'crud', 'com.xyafu.project.wxapp', 'wxapp', 'welcome', 'welcome', 'xyafu', '{}', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:45:45', null);
INSERT INTO `gen_table` VALUES ('7', 'sys_attachments', '附件表', 'SysAttachments', 'crud', 'com.xyafu.project.system', 'system', 'attachments', '附件', 'xyafu', '{}', 'admin', '2019-12-14 22:56:29', '', '2020-02-04 18:10:07', null);

-- ----------------------------
-- Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'id', '分类ID', 'varchar(32)', 'String', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-04 23:39:04', '', null);
INSERT INTO `gen_table_column` VALUES ('2', '1', 'category', '分类名称', 'varchar(10)', 'String', 'category', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2019-12-04 23:39:04', '', null);
INSERT INTO `gen_table_column` VALUES ('3', '1', 'order_num', '显示顺序', 'int(4)', 'Integer', 'orderNum', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2019-12-04 23:39:04', '', null);
INSERT INTO `gen_table_column` VALUES ('4', '1', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '4', 'admin', '2019-12-04 23:39:04', '', null);
INSERT INTO `gen_table_column` VALUES ('5', '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '5', 'admin', '2019-12-04 23:39:04', '', null);
INSERT INTO `gen_table_column` VALUES ('6', '1', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-04 23:39:04', '', null);
INSERT INTO `gen_table_column` VALUES ('7', '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '7', 'admin', '2019-12-04 23:39:04', '', null);
INSERT INTO `gen_table_column` VALUES ('8', '2', 'id', '内容ID', 'varchar(32)', 'String', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:01:48');
INSERT INTO `gen_table_column` VALUES ('9', '2', 'title', '内容标题', 'varchar(100)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:01:48');
INSERT INTO `gen_table_column` VALUES ('10', '2', 'content', '内容正文', 'longtext', 'String', 'content', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:01:48');
INSERT INTO `gen_table_column` VALUES ('11', '2', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '4', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:01:48');
INSERT INTO `gen_table_column` VALUES ('12', '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '5', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:01:48');
INSERT INTO `gen_table_column` VALUES ('13', '2', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:01:48');
INSERT INTO `gen_table_column` VALUES ('14', '2', 'update_time', null, 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '7', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:01:48');
INSERT INTO `gen_table_column` VALUES ('15', '3', 'id', 'id', 'varchar(32)', 'String', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('16', '3', 'title', '地点名称', 'varchar(100)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('17', '3', 'description', '地点介绍', 'varchar(255)', 'String', 'description', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('18', '3', 'logo', '地点logo', 'varchar(200)', 'String', 'logo', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('19', '3', 'images', '地点图片', 'varchar(1000)', 'String', 'images', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '5', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('20', '3', 'longitude', '经度', 'varchar(100)', 'String', 'longitude', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('21', '3', 'latitude', '纬度', 'varchar(100)', 'String', 'latitude', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('22', '3', 'category', '分类', 'varchar(100)', 'String', 'category', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '8', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('23', '3', 'order_num', '展示顺序', 'int(4)', 'Integer', 'orderNum', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('24', '3', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '10', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('25', '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '11', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('26', '3', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '12', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('27', '3', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '13', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 00:00:22');
INSERT INTO `gen_table_column` VALUES ('28', '4', 'id', 'uuid', 'varchar(32)', 'String', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:59:19');
INSERT INTO `gen_table_column` VALUES ('29', '4', 'schoolname', '学校中文名称', 'varchar(255)', 'String', 'schoolname', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:59:19');
INSERT INTO `gen_table_column` VALUES ('30', '4', 'englishname', '学校英文名称', 'varchar(255)', 'String', 'englishname', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:59:19');
INSERT INTO `gen_table_column` VALUES ('31', '4', 'images', '校园图片', 'varchar(1000)', 'String', 'images', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'textarea', '', '4', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:59:19');
INSERT INTO `gen_table_column` VALUES ('32', '4', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '5', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:59:19');
INSERT INTO `gen_table_column` VALUES ('33', '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '6', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:59:19');
INSERT INTO `gen_table_column` VALUES ('34', '4', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '7', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:59:19');
INSERT INTO `gen_table_column` VALUES ('35', '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '8', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:59:19');
INSERT INTO `gen_table_column` VALUES ('36', '5', 'id', '视频ID', 'varchar(32)', 'String', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 21:49:47');
INSERT INTO `gen_table_column` VALUES ('37', '5', 'title', '视频标题', 'varchar(50)', 'String', 'title', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 21:49:47');
INSERT INTO `gen_table_column` VALUES ('38', '5', 'coverimg', '视频封面图', 'varchar(100)', 'String', 'coverimg', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 21:49:47');
INSERT INTO `gen_table_column` VALUES ('39', '5', 'src', '视频链接', 'varchar(100)', 'String', 'src', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 21:49:47');
INSERT INTO `gen_table_column` VALUES ('40', '5', 'status', '0为轮播', 'varchar(2)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', 'app_video_status', '5', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 21:49:47');
INSERT INTO `gen_table_column` VALUES ('41', '5', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 21:49:47');
INSERT INTO `gen_table_column` VALUES ('42', '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '7', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 21:49:47');
INSERT INTO `gen_table_column` VALUES ('43', '5', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '8', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 21:49:47');
INSERT INTO `gen_table_column` VALUES ('44', '5', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '9', 'admin', '2019-12-04 23:39:04', '', '2019-12-05 21:49:47');
INSERT INTO `gen_table_column` VALUES ('45', '6', 'id', 'id', 'varchar(32)', 'String', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:45:45');
INSERT INTO `gen_table_column` VALUES ('46', '6', 'key_name', 'key名称', 'varchar(30)', 'String', 'keyName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:45:45');
INSERT INTO `gen_table_column` VALUES ('47', '6', 'value', 'key值', 'varchar(100)', 'String', 'value', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:45:45');
INSERT INTO `gen_table_column` VALUES ('48', '6', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '4', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:45:45');
INSERT INTO `gen_table_column` VALUES ('49', '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '5', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:45:45');
INSERT INTO `gen_table_column` VALUES ('50', '6', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '6', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:45:45');
INSERT INTO `gen_table_column` VALUES ('51', '6', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '7', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:45:45');
INSERT INTO `gen_table_column` VALUES ('52', '6', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '8', 'admin', '2019-12-04 23:39:04', '', '2019-12-04 23:45:45');
INSERT INTO `gen_table_column` VALUES ('53', '7', 'id', '附件id', 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-12-14 22:56:29', '', '2020-02-04 18:10:07');
INSERT INTO `gen_table_column` VALUES ('54', '7', 'file_name', '文件名称', 'varchar(50)', 'String', 'fileName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2019-12-14 22:56:29', '', '2020-02-04 18:10:07');
INSERT INTO `gen_table_column` VALUES ('55', '7', 'file_path', '文件地址', 'varchar(1000)', 'String', 'filePath', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '3', 'admin', '2019-12-14 22:56:29', '', '2020-02-04 18:10:07');
INSERT INTO `gen_table_column` VALUES ('56', '7', 'file_size', '文件大小', 'bigint(20)', 'Long', 'fileSize', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '4', 'admin', '2019-12-14 22:56:29', '', '2020-02-04 18:10:07');
INSERT INTO `gen_table_column` VALUES ('57', '7', 'media_type', '文件类型', 'varchar(50)', 'String', 'mediaType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '5', 'admin', '2019-12-14 22:56:29', '', '2020-02-04 18:10:07');
INSERT INTO `gen_table_column` VALUES ('58', '7', 'suffix', '文件后缀', 'varchar(50)', 'String', 'suffix', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '6', 'admin', '2019-12-14 22:56:29', '', '2020-02-04 18:10:07');
INSERT INTO `gen_table_column` VALUES ('59', '7', 'create_by', '创建者', 'varchar(50)', 'String', 'createBy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2019-12-14 22:56:29', '', '2020-02-04 18:10:07');
INSERT INTO `gen_table_column` VALUES ('60', '7', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '8', 'admin', '2019-12-14 22:56:29', '', '2020-02-04 18:10:07');
INSERT INTO `gen_table_column` VALUES ('61', '7', 'update_by', '更新者', 'varchar(50)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '9', 'admin', '2019-12-14 22:56:29', '', '2020-02-04 18:10:07');
INSERT INTO `gen_table_column` VALUES ('62', '7', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '10', 'admin', '2019-12-14 22:56:29', '', '2020-02-04 18:10:07');

-- ----------------------------
-- Table structure for `sys_attachments`
-- ----------------------------
DROP TABLE IF EXISTS `sys_attachments`;
CREATE TABLE `sys_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件id',
  `file_name` varchar(100) DEFAULT NULL,
  `file_path` varchar(1000) DEFAULT NULL COMMENT '文件地址',
  `file_size` varchar(20) DEFAULT NULL COMMENT '文件大小',
  `media_type` varchar(50) DEFAULT NULL COMMENT '文件类型',
  `suffix` varchar(50) DEFAULT NULL COMMENT '文件后缀',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of sys_attachments
-- ----------------------------
INSERT INTO `sys_attachments` VALUES ('2', 'ad7947d59c285dc45442547629f636712.jpg', 'http://localhost:8083/profile/upload/2020/02/04/f24999379b37da525c2661ff2c7d3382.jpg', '19321', 'image/jpeg', 'jpg', 'admin', '2020-02-04 11:50:06', null, null);
INSERT INTO `sys_attachments` VALUES ('3', '1395798C41ECF887C605C438F1B600AA.jpg', 'http://localhost:8083/profile/upload/2020/02/04/9d5e74d8b0755db1c24d55ca4292350f.jpg', '40059', 'image/jpeg', 'jpg', 'admin', '2020-02-04 11:56:34', null, null);
INSERT INTO `sys_attachments` VALUES ('4', '1515029388837.jpeg', 'http://localhost:8083/profile/upload/2020/02/04/0636553a27512f8e4d8dcf8b3c33b3d8.jpeg', '498632', 'image/jpeg', 'jpeg', 'admin', '2020-02-04 12:02:51', null, null);
INSERT INTO `sys_attachments` VALUES ('5', '1.jpg', 'http://localhost:8083/profile/upload/2020/02/04/352e53393ef38ce0c885964273830654.jpg', '225084', 'image/jpeg', 'jpg', 'admin', '2020-02-04 12:02:51', null, null);
INSERT INTO `sys_attachments` VALUES ('6', '2.jpg', 'http://localhost:8083/profile/upload/2020/02/04/0907c91bb7b314d224756f0b725b1d37.jpg', '179050', 'image/jpeg', 'jpg', 'admin', '2020-02-04 12:02:51', null, null);
INSERT INTO `sys_attachments` VALUES ('7', '1515049357746.jpeg', 'http://localhost:8083/profile/upload/2020/02/04/cf99f2ad92ace702ef7d25f13df8c02a.jpeg', '309769', 'image/jpeg', 'jpeg', 'admin', '2020-02-04 13:34:51', null, null);
INSERT INTO `sys_attachments` VALUES ('8', '1515049392092.jpeg', 'http://localhost:8083/profile/upload/2020/02/04/4751367b1d9cfdde218c034a36861edc.jpeg', '93682', 'image/jpeg', 'jpeg', 'admin', '2020-02-04 13:37:11', null, null);
INSERT INTO `sys_attachments` VALUES ('9', 'a828a719e2a8cbe74284a568b8d31bd6.jpeg', 'http://localhost:8083/profile/upload/2020/02/04/a828a719e2a8cbe74284a568b8d31bd6.jpeg', '652532', 'image/jpeg', 'jpeg', 'admin', '2020-02-04 13:50:35', null, null);
INSERT INTO `sys_attachments` VALUES ('10', '6f8829a3f4e2ba83ddb876cabbd239c8.jpg', 'http://localhost:8083/profile/upload/2020/02/04/6f8829a3f4e2ba83ddb876cabbd239c8.jpg', '27555', 'image/jpeg', 'jpg', 'admin', '2020-02-04 21:21:57', null, null);
INSERT INTO `sys_attachments` VALUES ('11', '093e5f03983d8049aded3c31529859c6.jpeg', 'http://localhost:8083/profile/upload/2020/02/04/093e5f03983d8049aded3c31529859c6.jpeg', '238.3', 'image/jpeg', 'jpeg', 'admin', '2020-02-04 21:25:38', null, null);

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '信阳农林学院', '0', 'ld', '13333333333', 'admin@xyafu.com', '0', '0', 'admin', '2019-03-16 11:33:00', 'admin', '2019-09-06 17:27:32');
INSERT INTO `sys_dept` VALUES ('103', '100', '0,100', '开发部门', '1', 'ld', '19124039363', 'ldtianzhe@163.com', '0', '0', 'admin', '2019-03-16 11:33:00', 'admin', '2019-09-06 17:27:01');
INSERT INTO `sys_dept` VALUES ('104', '100', '0,100', '测试部门', '2', 'ld', '19124039363', 'ldtianzhe@163.com', '0', '0', 'admin', '2019-03-16 11:33:00', 'admin', '2019-09-06 17:27:19');
INSERT INTO `sys_dept` VALUES ('105', '100', '0,100', '运维部门', '3', 'ld', '19124039363', 'ldtianzhe@163.com', '0', '0', 'admin', '2019-03-16 11:33:00', 'admin', '2019-09-06 17:27:32');

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('29', '1', '是', '0', 'app_video_status', null, null, 'N', '0', 'admin', '2019-10-12 18:25:04', 'admin', '2019-12-05 21:48:21', '开启轮播');
INSERT INTO `sys_dict_data` VALUES ('30', '1', '否', '1', 'app_video_status', null, null, 'N', '0', 'admin', '2019-10-12 18:25:22', 'admin', '2019-12-05 21:48:27', '关闭轮播');
INSERT INTO `sys_dict_data` VALUES ('35', '1', '内容id', 'id', 'content', null, null, 'N', '0', 'admin', '2019-10-17 16:39:49', '', null, 'content');
INSERT INTO `sys_dict_data` VALUES ('36', '2', '内容标题', 'title', 'content', null, null, 'N', '0', 'admin', '2019-10-17 16:40:17', '', null, 'content');
INSERT INTO `sys_dict_data` VALUES ('37', '3', '内容正文', 'content', 'content', null, null, 'N', '0', 'admin', '2019-10-17 16:40:32', '', null, 'content');
INSERT INTO `sys_dict_data` VALUES ('38', '4', '创建时间', 'createTime', 'content', null, null, 'N', '0', 'admin', '2019-10-17 16:40:55', '', null, 'content');
INSERT INTO `sys_dict_data` VALUES ('39', '5', '操作', 'opreat', 'content', null, null, 'N', '0', 'admin', '2019-10-17 16:42:24', '', null, 'operat');

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '轮播状态', 'app_video_status', '0', 'admin', '2019-10-12 18:20:59', 'admin', '2019-12-05 21:45:38', '轮播状态');
INSERT INTO `sys_dict_type` VALUES ('12', 'content表头', 'content', '0', 'admin', '2019-10-17 16:34:44', 'admin', '2019-10-17 16:35:16', '数据库表名');
INSERT INTO `sys_dict_type` VALUES ('13', 'school表头', 'school', '0', 'admin', '2019-10-17 16:35:39', '', null, '数据库表名');
INSERT INTO `sys_dict_type` VALUES ('14', 'video表头', 'video', '0', 'admin', '2019-10-17 16:36:08', '', null, '数据库表名');
INSERT INTO `sys_dict_type` VALUES ('15', 'category表头', 'category', '0', 'admin', '2019-10-17 16:36:29', '', null, '数据库表名');
INSERT INTO `sys_dict_type` VALUES ('16', 'map表头', 'map', '0', 'admin', '2019-10-17 16:36:52', '', null, '数据库表名');

-- ----------------------------
-- Table structure for `sys_identity`
-- ----------------------------
DROP TABLE IF EXISTS `sys_identity`;
CREATE TABLE `sys_identity` (
  `identity_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '身份ID',
  `identity_code` varchar(64) NOT NULL COMMENT '身份编码',
  `identity_name` varchar(50) NOT NULL COMMENT '身份名称',
  `identity_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`identity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_identity
-- ----------------------------
INSERT INTO `sys_identity` VALUES ('1', 'teacher', '老师', '1', '0', 'admin', '2019-09-05 11:33:00', 'admin', '2019-09-06 17:09:01', '');
INSERT INTO `sys_identity` VALUES ('2', 'student', '学生', '2', '0', 'admin', '2019-09-05 11:33:00', 'admin', '2019-09-06 17:09:08', '');

-- ----------------------------
-- Table structure for `sys_job`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for `sys_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_logininfor`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 13:03:37');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 14:03:54');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 14:54:09');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 15:33:56');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 16:19:12');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-11 17:00:52');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:01:00');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 20:48:42');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 21:31:53');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 23:41:26');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 13:17:48');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 14:19:09');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-10-12 15:02:47');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 15:02:54');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 15:51:23');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 17:04:01');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-12 18:45:34');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:22:24');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-12 20:23:20');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:23:40');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 21:12:20');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:20:47');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-12 23:06:45');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 23:07:32');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 23:15:59');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 23:50:14');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 13:13:43');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 13:16:36');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 14:01:21');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 16:08:09');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-10-13 18:47:37');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 18:47:45');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 18:58:37');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 19:23:26');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 19:23:36');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 19:23:46');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 19:24:31');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 19:26:05');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 19:44:52');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 19:48:31');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-10-13 19:50:27');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 19:50:59');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-13 20:30:10');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 20:30:18');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 21:15:59');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 21:32:57');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-13 22:28:01');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-14 12:06:49');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-14 13:26:05');
INSERT INTO `sys_logininfor` VALUES ('149', 'ldtianzhe', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-14 13:30:20');
INSERT INTO `sys_logininfor` VALUES ('150', 'ldtianzhe', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-14 13:30:36');
INSERT INTO `sys_logininfor` VALUES ('151', 'ldtianzhe', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-14 13:31:48');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-17 15:51:59');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-17 16:30:16');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 10:29:32');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 14:01:53');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 15:10:20');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 22:39:30');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 13:25:32');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 14:04:14');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-19 14:40:17');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', '2019-10-19 14:40:26');
INSERT INTO `sys_logininfor` VALUES ('162', 'ldtianzhe', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-19 14:40:55');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 15:50:10');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 16:10:01');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2019-10-19 16:51:02');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 17:36:45');
INSERT INTO `sys_logininfor` VALUES ('167', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 20:17:53');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 21:51:48');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-10-19 22:33:29');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 22:33:35');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-20 10:38:41');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-20 10:38:49');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-20 12:32:23');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-20 17:22:28');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-10-20 17:22:39');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-20 17:22:46');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-20 21:10:19');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-10-20 23:17:00');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-10-20 23:17:07');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-20 23:17:12');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-21 14:38:58');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-21 16:15:37');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-21 17:41:09');
INSERT INTO `sys_logininfor` VALUES ('184', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-21 19:25:25');
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-10-22 17:08:38');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-22 17:08:46');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-23 11:11:21');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-23 18:36:40');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-23 21:38:57');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-24 08:59:20');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-24 09:46:47');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-24 09:46:54');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-25 09:48:14');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-10-26 12:36:41');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-26 12:36:46');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-26 13:37:31');
INSERT INTO `sys_logininfor` VALUES ('197', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-26 14:33:18');
INSERT INTO `sys_logininfor` VALUES ('198', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-26 16:10:19');
INSERT INTO `sys_logininfor` VALUES ('199', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-04 23:34:41');
INSERT INTO `sys_logininfor` VALUES ('200', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 09:26:32');
INSERT INTO `sys_logininfor` VALUES ('201', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 12:42:08');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 13:44:55');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 14:42:16');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 15:39:32');
INSERT INTO `sys_logininfor` VALUES ('205', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 16:07:16');
INSERT INTO `sys_logininfor` VALUES ('206', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 16:20:41');
INSERT INTO `sys_logininfor` VALUES ('207', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 16:20:52');
INSERT INTO `sys_logininfor` VALUES ('208', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 16:21:08');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 16:21:21');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 16:22:38');
INSERT INTO `sys_logininfor` VALUES ('211', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 17:01:20');
INSERT INTO `sys_logininfor` VALUES ('212', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 20:05:27');
INSERT INTO `sys_logininfor` VALUES ('213', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 20:40:22');
INSERT INTO `sys_logininfor` VALUES ('214', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-05 21:16:22');
INSERT INTO `sys_logininfor` VALUES ('215', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-06 15:06:51');
INSERT INTO `sys_logininfor` VALUES ('216', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 15:06:58');
INSERT INTO `sys_logininfor` VALUES ('217', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 16:06:39');
INSERT INTO `sys_logininfor` VALUES ('218', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 19:55:01');
INSERT INTO `sys_logininfor` VALUES ('219', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-06 22:18:04');
INSERT INTO `sys_logininfor` VALUES ('220', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 22:18:04');
INSERT INTO `sys_logininfor` VALUES ('221', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-06 22:30:27');
INSERT INTO `sys_logininfor` VALUES ('222', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-06 22:31:35');
INSERT INTO `sys_logininfor` VALUES ('223', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-07 12:14:31');
INSERT INTO `sys_logininfor` VALUES ('224', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2019-12-07 12:25:16');
INSERT INTO `sys_logininfor` VALUES ('225', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2019-12-07 13:39:18');
INSERT INTO `sys_logininfor` VALUES ('226', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2019-12-07 20:20:44');
INSERT INTO `sys_logininfor` VALUES ('227', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '退出成功', '2019-12-07 20:52:06');
INSERT INTO `sys_logininfor` VALUES ('228', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-07 20:52:24');
INSERT INTO `sys_logininfor` VALUES ('229', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '1', '验证码错误', '2019-12-07 21:10:54');
INSERT INTO `sys_logininfor` VALUES ('230', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2019-12-07 21:11:01');
INSERT INTO `sys_logininfor` VALUES ('231', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-12-08 13:16:46');
INSERT INTO `sys_logininfor` VALUES ('232', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-08 13:16:54');
INSERT INTO `sys_logininfor` VALUES ('233', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-08 14:44:39');
INSERT INTO `sys_logininfor` VALUES ('234', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-08 17:31:49');
INSERT INTO `sys_logininfor` VALUES ('235', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-08 22:54:37');
INSERT INTO `sys_logininfor` VALUES ('236', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-09 08:19:20');
INSERT INTO `sys_logininfor` VALUES ('237', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-10 11:44:54');
INSERT INTO `sys_logininfor` VALUES ('238', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2019-12-12 19:59:17');
INSERT INTO `sys_logininfor` VALUES ('239', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 17:34:07');
INSERT INTO `sys_logininfor` VALUES ('240', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-14 18:09:46');
INSERT INTO `sys_logininfor` VALUES ('241', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 18:10:02');
INSERT INTO `sys_logininfor` VALUES ('242', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 20:00:02');
INSERT INTO `sys_logininfor` VALUES ('243', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 22:45:41');
INSERT INTO `sys_logininfor` VALUES ('244', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 23:54:22');
INSERT INTO `sys_logininfor` VALUES ('245', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-12-14 23:59:01');
INSERT INTO `sys_logininfor` VALUES ('246', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-14 23:59:07');
INSERT INTO `sys_logininfor` VALUES ('247', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-15 13:58:32');
INSERT INTO `sys_logininfor` VALUES ('248', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-15 14:48:25');
INSERT INTO `sys_logininfor` VALUES ('249', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-15 15:49:25');
INSERT INTO `sys_logininfor` VALUES ('250', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-15 18:43:42');
INSERT INTO `sys_logininfor` VALUES ('251', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-15 20:16:27');
INSERT INTO `sys_logininfor` VALUES ('252', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-15 22:05:29');
INSERT INTO `sys_logininfor` VALUES ('253', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-15 22:13:38');
INSERT INTO `sys_logininfor` VALUES ('254', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 17:19:37');
INSERT INTO `sys_logininfor` VALUES ('255', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2019-12-31 15:11:46');
INSERT INTO `sys_logininfor` VALUES ('256', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2019-12-31 16:01:28');
INSERT INTO `sys_logininfor` VALUES ('257', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-02-03 16:05:42');
INSERT INTO `sys_logininfor` VALUES ('258', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2020-02-03 16:05:44');
INSERT INTO `sys_logininfor` VALUES ('259', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-03 16:05:50');
INSERT INTO `sys_logininfor` VALUES ('260', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-03 17:02:55');
INSERT INTO `sys_logininfor` VALUES ('261', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-03 18:56:09');
INSERT INTO `sys_logininfor` VALUES ('262', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-04 11:16:15');
INSERT INTO `sys_logininfor` VALUES ('263', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-04 12:56:12');
INSERT INTO `sys_logininfor` VALUES ('264', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-04 21:24:58');
INSERT INTO `sys_logininfor` VALUES ('265', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-04 22:22:06');
INSERT INTO `sys_logininfor` VALUES ('266', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 10:23:53');
INSERT INTO `sys_logininfor` VALUES ('267', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 11:03:33');
INSERT INTO `sys_logininfor` VALUES ('268', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:03:53');
INSERT INTO `sys_logininfor` VALUES ('269', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:00:20');
INSERT INTO `sys_logininfor` VALUES ('270', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:17:35');
INSERT INTO `sys_logininfor` VALUES ('271', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:28:03');
INSERT INTO `sys_logininfor` VALUES ('272', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:31:53');
INSERT INTO `sys_logininfor` VALUES ('273', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:43:41');
INSERT INTO `sys_logininfor` VALUES ('274', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:53:44');
INSERT INTO `sys_logininfor` VALUES ('275', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 15:01:52');
INSERT INTO `sys_logininfor` VALUES ('276', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 15:04:10');
INSERT INTO `sys_logininfor` VALUES ('277', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 15:09:14');
INSERT INTO `sys_logininfor` VALUES ('278', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 15:26:30');
INSERT INTO `sys_logininfor` VALUES ('279', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 16:07:42');
INSERT INTO `sys_logininfor` VALUES ('280', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 16:07:53');
INSERT INTO `sys_logininfor` VALUES ('281', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 17:04:00');
INSERT INTO `sys_logininfor` VALUES ('282', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 17:04:08');
INSERT INTO `sys_logininfor` VALUES ('283', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 17:18:46');
INSERT INTO `sys_logininfor` VALUES ('284', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 17:30:28');
INSERT INTO `sys_logininfor` VALUES ('285', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 17:38:01');
INSERT INTO `sys_logininfor` VALUES ('286', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 18:13:37');
INSERT INTO `sys_logininfor` VALUES ('287', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 18:54:13');
INSERT INTO `sys_logininfor` VALUES ('288', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 18:58:42');
INSERT INTO `sys_logininfor` VALUES ('289', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 22:18:26');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2045 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '1', 'M', '0', '', 'system', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '1', 'M', '0', '', 'monitor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '1', 'M', '0', '', 'tool', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '1', 'C', '0', 'system:user:list', 'user', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '1', 'C', '0', 'system:role:list', 'peoples', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '1', 'C', '0', 'system:menu:list', 'tree-table', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '1', 'C', '0', 'system:dept:list', 'tree', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '1', 'C', '0', 'system:post:list', 'post', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '1', 'C', '0', 'system:dict:list', 'dict', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '1', 'C', '0', 'system:config:list', 'edit', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '1', 'C', '0', 'system:notice:list', 'message', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', 'system/log/index', '1', 'M', '0', '', 'log', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '1', 'C', '0', 'monitor:online:list', 'online', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '1', 'C', '0', 'monitor:druid:list', 'druid', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '1', 'C', '0', 'monitor:server:list', 'server', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', 'gen', 'tool/gen/index', '1', 'C', '0', 'tool:gen:list', 'code', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '1', 'C', '0', 'tool:swagger:list', 'swagger', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '1', 'C', '0', 'monitor:operlog:list', 'form', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '1', 'C', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1001', '用户查询', '100', '1', '', '', '1', 'F', '0', 'system:user:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户新增', '100', '2', '', '', '1', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户修改', '100', '3', '', '', '1', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户删除', '100', '4', '', '', '1', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导出', '100', '5', '', '', '1', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '用户导入', '100', '6', '', '', '1', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '重置密码', '100', '7', '', '', '1', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色查询', '101', '1', '', '', '1', 'F', '0', 'system:role:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色新增', '101', '2', '', '', '1', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色修改', '101', '3', '', '', '1', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色删除', '101', '4', '', '', '1', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '角色导出', '101', '5', '', '', '1', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单查询', '102', '1', '', '', '1', 'F', '0', 'system:menu:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单新增', '102', '2', '', '', '1', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单修改', '102', '3', '', '', '1', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '菜单删除', '102', '4', '', '', '1', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门查询', '103', '1', '', '', '1', 'F', '0', 'system:dept:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门新增', '103', '2', '', '', '1', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门修改', '103', '3', '', '', '1', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '部门删除', '103', '4', '', '', '1', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位查询', '104', '1', '', '', '1', 'F', '0', 'system:post:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位新增', '104', '2', '', '', '1', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位修改', '104', '3', '', '', '1', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位删除', '104', '4', '', '', '1', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '岗位导出', '104', '5', '', '', '1', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典查询', '105', '1', '#', '', '1', 'F', '0', 'system:dict:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典新增', '105', '2', '#', '', '1', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典修改', '105', '3', '#', '', '1', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典删除', '105', '4', '#', '', '1', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '字典导出', '105', '5', '#', '', '1', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数查询', '106', '1', '#', '', '1', 'F', '0', 'system:config:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数新增', '106', '2', '#', '', '1', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数修改', '106', '3', '#', '', '1', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数删除', '106', '4', '#', '', '1', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '参数导出', '106', '5', '#', '', '1', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告查询', '107', '1', '#', '', '1', 'F', '0', 'system:notice:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告新增', '107', '2', '#', '', '1', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告修改', '107', '3', '#', '', '1', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '公告删除', '107', '4', '#', '', '1', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作查询', '500', '1', '#', '', '1', 'F', '0', 'monitor:operlog:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '操作删除', '500', '2', '#', '', '1', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', '1', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', '1', 'F', '0', 'monitor:logininfor:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', '1', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', '1', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '1', 'F', '0', 'monitor:online:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '1', 'F', '0', 'monitor:online:batchLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '1', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '114', '1', '#', '', '1', 'F', '0', 'tool:gen:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '114', '2', '#', '', '1', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '114', '3', '#', '', '1', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '114', '2', '#', '', '1', 'F', '0', 'tool:gen:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '114', '4', '#', '', '1', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '114', '5', '#', '', '1', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('2000', '数据管理', '0', '4', 'datamanage', null, '1', 'M', '0', '', 'datamanage', 'admin', '2019-12-05 12:45:04', 'admin', '2019-12-05 12:53:12', '');
INSERT INTO `sys_menu` VALUES ('2001', '数据表管理', '2000', '1', 'table', 'datamanage/table/index', '1', 'C', '0', '', 'data', 'admin', '2019-12-05 12:57:56', 'admin', '2019-12-07 22:51:47', '');
INSERT INTO `sys_menu` VALUES ('2002', 'welcome列表', '2001', '1', '#', '', '1', 'F', '0', 'wxapp:welcome:list', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-05 14:44:08', '');
INSERT INTO `sys_menu` VALUES ('2003', 'welcome查询', '2002', '2', '#', '', '1', 'F', '0', 'wxapp:welcome:query', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-05 13:47:18', '');
INSERT INTO `sys_menu` VALUES ('2004', 'welcome新增', '2002', '3', '#', '', '1', 'F', '0', 'wxapp:welcome:add', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-05 13:47:50', '');
INSERT INTO `sys_menu` VALUES ('2005', 'welcome修改', '2002', '4', '#', '', '1', 'F', '0', 'wxapp:welcome:edit', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-05 13:48:04', '');
INSERT INTO `sys_menu` VALUES ('2006', 'welcome删除', '2002', '5', '#', '', '1', 'F', '0', 'wxapp:welcome:remove', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-05 13:48:25', '');
INSERT INTO `sys_menu` VALUES ('2007', 'welcome导出', '2002', '6', '#', '', '1', 'F', '0', 'wxapp:welcome:export', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-05 13:48:36', '');
INSERT INTO `sys_menu` VALUES ('2008', 'content列表', '2001', '2', '#', '', '1', 'F', '0', 'wxapp:content:list', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-12-05 15:52:44', 'content菜单');
INSERT INTO `sys_menu` VALUES ('2009', 'content查询', '2008', '1', '#', '', '1', 'F', '0', 'wxapp:content:queadmin', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2010', 'content新增', '2008', '2', '#', '', '1', 'F', '0', 'wxapp:content:add', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2011', 'content修改', '2008', '3', '#', '', '1', 'F', '0', 'wxapp:content:edit', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2012', 'content删除', '2008', '4', '#', '', '1', 'F', '0', 'wxapp:content:remove', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2013', 'content导出', '2008', '5', '#', '', '1', 'F', '0', 'wxapp:content:export', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2014', 'school列表', '2001', '3', '#', '', '1', 'F', '0', 'wxapp:school:list', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-12-05 20:44:15', 'school菜单');
INSERT INTO `sys_menu` VALUES ('2015', 'school查询', '2014', '1', '#', '', '1', 'F', '0', 'wxapp:school:queadmin', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2016', 'school新增', '2014', '2', '#', '', '1', 'F', '0', 'wxapp:school:add', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2017', 'school修改', '2014', '3', '#', '', '1', 'F', '0', 'wxapp:school:edit', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2018', 'school删除', '2014', '4', '#', '', '1', 'F', '0', 'wxapp:school:remove', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2019', 'school导出', '2014', '5', '#', '', '1', 'F', '0', 'wxapp:school:export', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2020', 'video列表', '2001', '4', '#', '', '1', 'F', '0', 'wxapp:video:list', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-12-05 20:44:22', 'video菜单');
INSERT INTO `sys_menu` VALUES ('2021', 'video查询', '2020', '1', '#', '', '1', 'F', '0', 'wxapp:video:queadmin', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2022', 'video新增', '2020', '2', '#', '', '1', 'F', '0', 'wxapp:video:add', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2023', 'video修改', '2020', '3', '#', '', '1', 'F', '0', 'wxapp:video:edit', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2024', 'video删除', '2020', '4', '#', '', '1', 'F', '0', 'wxapp:video:remove', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2025', 'video导出', '2020', '5', '#', '', '1', 'F', '0', 'wxapp:video:export', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2026', 'category列表', '2001', '5', '#', '', '1', 'F', '0', 'wxapp:category:list', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-12-05 20:44:44', 'category菜单');
INSERT INTO `sys_menu` VALUES ('2027', 'category查询', '2026', '1', '#', '', '1', 'F', '0', 'wxapp:category:queadmin', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2028', 'category新增', '2026', '2', '#', '', '1', 'F', '0', 'wxapp:category:add', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2029', 'category修改', '2026', '3', '#', '', '1', 'F', '0', 'wxapp:category:edit', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2030', 'category删除', '2026', '4', '#', '', '1', 'F', '0', 'wxapp:category:remove', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2031', 'category导出', '2026', '5', '#', '', '1', 'F', '0', 'wxapp:category:export', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2032', 'map列表', '2001', '6', '#', '', '1', 'F', '0', 'wxapp:map:list', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-12-05 20:44:56', 'map菜单');
INSERT INTO `sys_menu` VALUES ('2033', 'map查询', '2032', '1', '#', '', '1', 'F', '0', 'wxapp:map:queadmin', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2034', 'map新增', '2032', '2', '#', '', '1', 'F', '0', 'wxapp:map:add', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2035', 'map修改', '2032', '3', '#', '', '1', 'F', '0', 'wxapp:map:edit', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2036', 'map删除', '2032', '4', '#', '', '1', 'F', '0', 'wxapp:map:remove', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2037', 'map导出', '2032', '5', '#', '', '1', 'F', '0', 'wxapp:map:export', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2038', '附件', '2000', '1', 'attachments', 'system/attachments/index', '1', 'C', '0', 'system:attachments:list', 'attachments', 'admin', '2019-03-01 00:00:00', 'admin', '2019-12-15 14:09:06', '附件菜单');
INSERT INTO `sys_menu` VALUES ('2039', '附件查询', '2038', '1', '#', '', '1', 'F', '0', 'system:attachments:queadmin', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2040', '附件新增', '2038', '2', '#', '', '1', 'F', '0', 'system:attachments:add', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2041', '附件修改', '2038', '3', '#', '', '1', 'F', '0', 'system:attachments:edit', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2042', '附件删除', '2038', '4', '#', '', '1', 'F', '0', 'system:attachments:remove', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2043', '附件导出', '2038', '5', '#', '', '1', 'F', '0', 'system:attachments:export', '#', 'admin', '2019-03-01 00:00:00', 'admin', '2019-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('2044', '附件上传', '2038', '2', '', null, '1', 'F', '0', 'system:attachments:upload', '#', 'admin', '2019-12-15 19:01:37', 'admin', '2019-12-15 19:01:57', '');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', 'test', '1', '<p class=\"ql-align-center\">	人文学院成立于***年</p><p class=\"ql-align-center\"><img src=\"http://localhost:8083/profile/upload/2019/12/25/d3406158a18603515c7474ba58aae4b1.jpg\"></p>', '0', 'admin', '2019-12-25 17:22:50', '', null, null);

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/115', '127.0.0.1', '内网IP', '{menuId=115}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', '0', null, '2019-10-11 16:19:21');
INSERT INTO `sys_oper_log` VALUES ('101', '角色管理', '2', 'com.xyafu.project.system.controller.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 16:20:41');
INSERT INTO `sys_oper_log` VALUES ('102', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"田哲\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"运维部门\",\"leader\":\"ld\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 20:52:31');
INSERT INTO `sys_oper_log` VALUES ('103', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"田哲\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"运维部门\",\"leader\":\"ld\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ldtianzhe\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 20:52:41');
INSERT INTO `sys_oper_log` VALUES ('104', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"超级管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"开发部门\",\"leader\":\"ld\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员用户', '2019-10-11 20:52:58');
INSERT INTO `sys_oper_log` VALUES ('105', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"超级管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"开发部门\",\"leader\":\"ld\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员用户', '2019-10-11 20:53:01');
INSERT INTO `sys_oper_log` VALUES ('106', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"超级管理员\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"开发部门\",\"leader\":\"ld\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员用户', '2019-10-11 20:53:03');
INSERT INTO `sys_oper_log` VALUES ('107', '个人信息', '2', 'com.xyafu.project.system.controller.SysProfileController.updateProfile()', 'PUT', '1', 'admin', null, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"超级管理员\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 20:53:19');
INSERT INTO `sys_oper_log` VALUES ('108', '个人信息', '2', 'com.xyafu.project.system.controller.SysProfileController.updateProfile()', 'PUT', '1', 'admin', null, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"超级管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 20:53:20');
INSERT INTO `sys_oper_log` VALUES ('109', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"post\",\"orderNum\":\"5\",\"menuName\":\"身份管理\",\"params\":{},\"parentId\":1,\"path\":\"post\",\"component\":\"system/post/index\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":104,\"menuType\":\"C\",\"perms\":\"system:post:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 20:58:16');
INSERT INTO `sys_oper_log` VALUES ('110', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1054', '127.0.0.1', '内网IP', '{menuId=1054}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', '0', null, '2019-10-11 21:32:23');
INSERT INTO `sys_oper_log` VALUES ('111', '角色管理', '2', 'com.xyafu.project.system.controller.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1552707180000,\"updateBy\":\"admin\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,109,1046,1047,1048,111,112,2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:32:44');
INSERT INTO `sys_oper_log` VALUES ('112', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1054', '127.0.0.1', '内网IP', '{menuId=1054}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:33:08');
INSERT INTO `sys_oper_log` VALUES ('113', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1053', '127.0.0.1', '内网IP', '{menuId=1053}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:33:17');
INSERT INTO `sys_oper_log` VALUES ('114', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1052', '127.0.0.1', '内网IP', '{menuId=1052}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:33:21');
INSERT INTO `sys_oper_log` VALUES ('115', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1051', '127.0.0.1', '内网IP', '{menuId=1051}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:33:25');
INSERT INTO `sys_oper_log` VALUES ('116', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1050', '127.0.0.1', '内网IP', '{menuId=1050}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:33:28');
INSERT INTO `sys_oper_log` VALUES ('117', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1049', '127.0.0.1', '内网IP', '{menuId=1049}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:33:34');
INSERT INTO `sys_oper_log` VALUES ('118', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/110', '127.0.0.1', '内网IP', '{menuId=110}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:33:38');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"身份查询\",\"params\":{},\"parentId\":104,\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1021,\"menuType\":\"F\",\"perms\":\"system:post:query\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:34:15');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"身份新增\",\"params\":{},\"parentId\":104,\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1022,\"menuType\":\"F\",\"perms\":\"system:post:add\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:34:24');
INSERT INTO `sys_oper_log` VALUES ('121', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"身份修改\",\"params\":{},\"parentId\":104,\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1023,\"menuType\":\"F\",\"perms\":\"system:post:edit\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:34:32');
INSERT INTO `sys_oper_log` VALUES ('122', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"身份删除\",\"params\":{},\"parentId\":104,\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1024,\"menuType\":\"F\",\"perms\":\"system:post:remove\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:34:39');
INSERT INTO `sys_oper_log` VALUES ('123', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"5\",\"menuName\":\"身份导出\",\"params\":{},\"parentId\":104,\"path\":\"\",\"component\":\"\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1025,\"menuType\":\"F\",\"perms\":\"system:post:export\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:34:45');
INSERT INTO `sys_oper_log` VALUES ('124', '岗位管理', '3', 'com.xyafu.project.system.controller.SysPostController.remove()', 'DELETE', '1', 'admin', null, '/system/post/3', '127.0.0.1', '内网IP', '{postId=3}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:35:29');
INSERT INTO `sys_oper_log` VALUES ('125', '岗位管理', '3', 'com.xyafu.project.system.controller.SysPostController.remove()', 'DELETE', '1', 'admin', null, '/system/post/2', '127.0.0.1', '内网IP', '{postId=2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:35:42');
INSERT INTO `sys_oper_log` VALUES ('126', '岗位管理', '2', 'com.xyafu.project.system.controller.SysPostController.edit()', 'PUT', '1', 'admin', null, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"postName\":\"老师\",\"postCode\":\"tea\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:35:58');
INSERT INTO `sys_oper_log` VALUES ('127', '岗位管理', '2', 'com.xyafu.project.system.controller.SysPostController.edit()', 'PUT', '1', 'admin', null, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"2\",\"flag\":false,\"remark\":\"\",\"postId\":4,\"params\":{},\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"postName\":\"学生\",\"postCode\":\"user\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:36:10');
INSERT INTO `sys_oper_log` VALUES ('128', '个人信息', '2', 'com.xyafu.project.system.controller.SysProfileController.updateProfile()', 'PUT', '1', 'admin', null, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"ldtianzhe@163.com\",\"nickName\":\"超级管理员\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"开发部门\",\"leader\":\"ld\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1552707180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:36:25');
INSERT INTO `sys_oper_log` VALUES ('129', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"田哲\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"运维部门\",\"leader\":\"ld\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ldtianzhe\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1560310380000,\"status\":\"0\"}', 'null', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2019-10-11 21:36:39');
INSERT INTO `sys_oper_log` VALUES ('130', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"田哲\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"运维部门\",\"leader\":\"ld\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ldtianzhe\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1560310380000,\"status\":\"0\"}', 'null', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2019-10-11 21:36:46');
INSERT INTO `sys_oper_log` VALUES ('131', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[2,1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"田哲\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"运维部门\",\"leader\":\"ld\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ldtianzhe\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1560310380000,\"status\":\"0\"}', 'null', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2019-10-11 21:37:42');
INSERT INTO `sys_oper_log` VALUES ('132', '用户管理', '1', 'com.xyafu.project.system.controller.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"19124039363\",\"admin\":false,\"password\":\"123456\",\"postIds\":[2],\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":104,\"params\":{},\"userName\":\"测试员\",\"roleIds\":[2],\"status\":\"0\"}', 'null', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2019-10-11 21:38:38');
INSERT INTO `sys_oper_log` VALUES ('133', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[2,3],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"田哲\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"运维部门\",\"leader\":\"ld\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ldtianzhe\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1560310380000,\"status\":\"0\"}', 'null', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2019-10-11 21:41:46');
INSERT INTO `sys_oper_log` VALUES ('134', '用户管理', '1', 'com.xyafu.project.system.controller.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$4Yt8fZYs9H6xkQHGcYLGx.pOk.syiU0kMnhgJVR.efQknpWNgZeO6\",\"postIds\":[3],\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:46:45');
INSERT INTO `sys_oper_log` VALUES ('135', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[3],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"信阳农林学院\",\"leader\":\"ld\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1570801605000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:47:06');
INSERT INTO `sys_oper_log` VALUES ('136', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[2,3],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"田哲\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"运维部门\",\"leader\":\"ld\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ldtianzhe\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1560310380000,\"status\":\"0\"}', 'null', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2019-10-11 21:47:18');
INSERT INTO `sys_oper_log` VALUES ('137', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[3],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"田哲\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"运维部门\",\"leader\":\"ld\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ldtianzhe\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1560310380000,\"status\":\"0\"}', 'null', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2019-10-11 21:47:22');
INSERT INTO `sys_oper_log` VALUES ('138', '岗位管理', '2', 'com.xyafu.project.system.controller.SysPostController.edit()', 'PUT', '1', 'admin', null, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"postName\":\"老师\",\"postCode\":\"tea\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:48:37');
INSERT INTO `sys_oper_log` VALUES ('139', '岗位管理', '2', 'com.xyafu.project.system.controller.SysPostController.edit()', 'PUT', '1', 'admin', null, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"2\",\"flag\":false,\"remark\":\"\",\"postId\":2,\"params\":{},\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"postName\":\"学生\",\"postCode\":\"stu\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:48:50');
INSERT INTO `sys_oper_log` VALUES ('140', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":false,\"loginDate\":1521171180000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"田哲\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"运维部门\",\"leader\":\"ld\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ldtianzhe\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1560310380000,\"status\":\"0\"}', 'null', '1', 'nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', '2019-10-11 21:49:00');
INSERT INTO `sys_oper_log` VALUES ('141', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[3,4],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"ld\",\"deptId\":104,\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1570801605000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:49:10');
INSERT INTO `sys_oper_log` VALUES ('142', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"ldtianzhe\",\"sex\":\"0\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"ld\",\"deptId\":104,\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"田哲\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1570801605000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:50:51');
INSERT INTO `sys_oper_log` VALUES ('143', '岗位管理', '3', 'com.xyafu.project.system.controller.SysPostController.remove()', 'DELETE', '1', 'admin', null, '/system/post/4', '127.0.0.1', '内网IP', '{postId=4}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:51:23');
INSERT INTO `sys_oper_log` VALUES ('144', '岗位管理', '2', 'com.xyafu.project.system.controller.SysPostController.edit()', 'PUT', '1', 'admin', null, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"3\",\"flag\":false,\"remark\":\"\",\"postId\":3,\"params\":{},\"createBy\":\"admin\",\"createTime\":1521171180000,\"updateBy\":\"admin\",\"postName\":\"普通用户\",\"postCode\":\"user\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:51:39');
INSERT INTO `sys_oper_log` VALUES ('145', '菜单管理', '1', 'com.xyafu.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"4\",\"menuName\":\"数据管理\",\"params\":{},\"path\":\"data\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 21:52:41');
INSERT INTO `sys_oper_log` VALUES ('146', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"data\",\"orderNum\":\"4\",\"menuName\":\"数据管理\",\"params\":{},\"parentId\":0,\"path\":\"data\",\"children\":[],\"createTime\":1570801961000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 22:01:59');
INSERT INTO `sys_oper_log` VALUES ('147', '菜单管理', '1', 'com.xyafu.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"table\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 22:07:31');
INSERT INTO `sys_oper_log` VALUES ('148', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"table\",\"children\":[],\"createTime\":1570802851000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 22:07:52');
INSERT INTO `sys_oper_log` VALUES ('149', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"table\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"table\",\"children\":[],\"createTime\":1570802851000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 22:17:45');
INSERT INTO `sys_oper_log` VALUES ('150', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[2],\"loginIp\":\"\",\"email\":\"ldtianzhe@163.com\",\"nickName\":\"ldtianzhe\",\"sex\":\"0\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"ld\",\"deptId\":104,\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"田哲\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1570801605000,\"status\":\"0\"}', '{\"msg\":\"修改用户\'田哲\'失败，手机号码已存在\",\"code\":500}', '0', null, '2019-10-11 22:27:32');
INSERT INTO `sys_oper_log` VALUES ('151', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"admin@163.com\",\"nickName\":\"超级管理员\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"开发部门\",\"leader\":\"ld\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1552707180000,\"status\":\"0\"}', 'null', '1', '不允许操作超级管理员用户', '2019-10-11 22:27:59');
INSERT INTO `sys_oper_log` VALUES ('152', '个人信息', '2', 'com.xyafu.project.system.controller.SysProfileController.updateProfile()', 'PUT', '1', 'admin', null, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"xyafu@163.com\",\"nickName\":\"超级管理员\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"开发部门\",\"leader\":\"ld\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1552707180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 22:29:34');
INSERT INTO `sys_oper_log` VALUES ('153', '个人信息', '2', 'com.xyafu.project.system.controller.SysProfileController.updateProfile()', 'PUT', '1', 'admin', null, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"19124039363\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"xyafu@163.com\",\"nickName\":\"超级管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"开发部门\",\"leader\":\"ld\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1552707180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-11 22:29:39');
INSERT INTO `sys_oper_log` VALUES ('154', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.changeStatus()', 'PUT', '1', 'admin', null, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"userId\":100,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 16:24:09');
INSERT INTO `sys_oper_log` VALUES ('155', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.changeStatus()', 'PUT', '1', 'admin', null, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"userId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 16:24:20');
INSERT INTO `sys_oper_log` VALUES ('156', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"table\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"table\",\"component\":\"data/table/index\",\"children\":[],\"createTime\":1570802851000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 17:07:10');
INSERT INTO `sys_oper_log` VALUES ('157', '字典类型', '1', 'com.xyafu.project.system.controller.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"数据库表名\",\"remark\":\"数据表名\",\"params\":{},\"dictType\":\"sys_dataTableName\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 18:20:59');
INSERT INTO `sys_oper_log` VALUES ('158', '字典类型', '2', 'com.xyafu.project.system.controller.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1570875659000,\"updateBy\":\"admin\",\"dictName\":\"数据库表名\",\"remark\":\"数据表名\",\"dictId\":11,\"params\":{},\"dictType\":\"sys_TableName\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 18:21:18');
INSERT INTO `sys_oper_log` VALUES ('159', '字典数据', '1', 'com.xyafu.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"sys_TableName\",\"dictLabel\":\"welcome\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 18:25:04');
INSERT INTO `sys_oper_log` VALUES ('160', '字典数据', '1', 'com.xyafu.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":1,\"remark\":\"school表\",\"params\":{},\"dictType\":\"sys_TableName\",\"dictLabel\":\"school\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 18:25:22');
INSERT INTO `sys_oper_log` VALUES ('161', '字典数据', '1', 'com.xyafu.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"3\",\"dictSort\":3,\"remark\":\"content表\",\"params\":{},\"dictType\":\"sys_TableName\",\"dictLabel\":\"content\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 18:27:13');
INSERT INTO `sys_oper_log` VALUES ('162', '字典数据', '1', 'com.xyafu.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"4\",\"dictSort\":4,\"remark\":\"video表\",\"params\":{},\"dictType\":\"sys_TableName\",\"dictLabel\":\"video\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 18:38:15');
INSERT INTO `sys_oper_log` VALUES ('163', '字典数据', '1', 'com.xyafu.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"5\",\"dictSort\":5,\"remark\":\"category表\",\"params\":{},\"dictType\":\"sys_TableName\",\"dictLabel\":\"category\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 18:39:49');
INSERT INTO `sys_oper_log` VALUES ('164', '字典数据', '1', 'com.xyafu.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"6\",\"dictSort\":6,\"remark\":\"map表\",\"params\":{},\"dictType\":\"sys_TableName\",\"dictLabel\":\"map\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 18:41:18');
INSERT INTO `sys_oper_log` VALUES ('165', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"sys_TableName\",\"dictLabel\":\"welcome\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875904000,\"dictCode\":29,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-12 18:41:57');
INSERT INTO `sys_oper_log` VALUES ('166', '字典类型', '2', 'com.xyafu.project.system.controller.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1570875659000,\"updateBy\":\"admin\",\"dictName\":\"数据库表名\",\"remark\":\"数据表名\",\"dictId\":11,\"params\":{},\"dictType\":\"welcome\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 16:12:12');
INSERT INTO `sys_oper_log` VALUES ('167', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"id\",\"dictSort\":1,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"id\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875904000,\"dictCode\":29,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 16:13:07');
INSERT INTO `sys_oper_log` VALUES ('168', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"key名称\",\"dictSort\":1,\"remark\":\"school表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"key名称\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875922000,\"dictCode\":30,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 16:13:26');
INSERT INTO `sys_oper_log` VALUES ('169', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"key名称\",\"dictSort\":1,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"key名称\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875922000,\"dictCode\":30,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 16:13:36');
INSERT INTO `sys_oper_log` VALUES ('170', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"图片链接\",\"dictSort\":3,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"url\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570876033000,\"dictCode\":31,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 16:15:02');
INSERT INTO `sys_oper_log` VALUES ('171', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"key名称\",\"dictSort\":1,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"key\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875922000,\"dictCode\":30,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 16:15:15');
INSERT INTO `sys_oper_log` VALUES ('172', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"备注\",\"dictSort\":4,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"remark\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570876695000,\"dictCode\":32,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 16:16:01');
INSERT INTO `sys_oper_log` VALUES ('173', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"创建时间\",\"dictSort\":5,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"createTime\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570876789000,\"dictCode\":33,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 16:16:34');
INSERT INTO `sys_oper_log` VALUES ('174', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"操作\",\"dictSort\":6,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"operating\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570876877000,\"dictCode\":34,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 16:17:23');
INSERT INTO `sys_oper_log` VALUES ('175', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"table\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"table\",\"component\":\"data/table/index\",\"children\":[],\"createTime\":1570802851000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"system:welcome:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 18:52:54');
INSERT INTO `sys_oper_log` VALUES ('176', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"table\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2001,\"path\":\"table\",\"component\":\"data/table/index\",\"children\":[],\"createTime\":1570802851000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"F\",\"perms\":\"system:welcome:query\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 19:00:43');
INSERT INTO `sys_oper_log` VALUES ('177', '菜单管理', '1', 'com.xyafu.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"welcome列表\",\"params\":{},\"parentId\":2001,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"system:welcome:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 19:27:48');
INSERT INTO `sys_oper_log` VALUES ('178', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"welcome列表\",\"params\":{},\"parentId\":2001,\"path\":\"\",\"children\":[],\"createTime\":1570966068000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"F\",\"perms\":\"system:welcome:list1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 19:31:38');
INSERT INTO `sys_oper_log` VALUES ('179', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"table\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"table\",\"component\":\"data/table/index\",\"children\":[],\"createTime\":1570802851000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"system:welcome:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 19:31:49');
INSERT INTO `sys_oper_log` VALUES ('180', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"创建时间\",\"dictSort\":5,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"create_time\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570876789000,\"dictCode\":33,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 22:39:31');
INSERT INTO `sys_oper_log` VALUES ('181', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"key_name\",\"dictSort\":1,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"key名称\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875922000,\"dictCode\":30,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 22:41:15');
INSERT INTO `sys_oper_log` VALUES ('182', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"value\",\"dictSort\":3,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"图片链接\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570876033000,\"dictCode\":31,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 22:41:28');
INSERT INTO `sys_oper_log` VALUES ('183', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"remark\",\"dictSort\":4,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"备注\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570876695000,\"dictCode\":32,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 22:41:39');
INSERT INTO `sys_oper_log` VALUES ('184', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"create_time\",\"dictSort\":5,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"创建时间\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570876789000,\"dictCode\":33,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 22:41:51');
INSERT INTO `sys_oper_log` VALUES ('185', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"operating\",\"dictSort\":6,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"操作\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570876877000,\"dictCode\":34,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-13 22:42:06');
INSERT INTO `sys_oper_log` VALUES ('186', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"operat\",\"dictSort\":6,\"remark\":\"welcome表\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"操作\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570876877000,\"dictCode\":34,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-14 12:14:19');
INSERT INTO `sys_oper_log` VALUES ('187', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"id\",\"dictSort\":1,\"remark\":\"welcome\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"id\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875904000,\"dictCode\":29,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-14 12:17:53');
INSERT INTO `sys_oper_log` VALUES ('188', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"keyName\",\"dictSort\":1,\"remark\":\"welcome\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"key名称\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875922000,\"dictCode\":30,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-14 12:17:57');
INSERT INTO `sys_oper_log` VALUES ('189', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"operat\",\"dictSort\":6,\"remark\":\"operat\",\"params\":{},\"dictType\":\"welcome\",\"dictLabel\":\"操作\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570876877000,\"dictCode\":34,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-14 12:19:13');
INSERT INTO `sys_oper_log` VALUES ('190', '菜单管理', '1', 'com.xyafu.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"welcome查询\",\"params\":{},\"parentId\":2001,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-14 12:58:10');
INSERT INTO `sys_oper_log` VALUES ('191', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"table\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"table\",\"component\":\"data/table/index\",\"children\":[],\"createTime\":1570802851000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-14 13:05:29');
INSERT INTO `sys_oper_log` VALUES ('192', '角色管理', '2', 'com.xyafu.project.system.controller.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1552707180000,\"updateBy\":\"admin\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112,2000,2001,2002,2003],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-14 13:29:14');
INSERT INTO `sys_oper_log` VALUES ('193', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"ldtianzhe\",\"sex\":\"0\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"ld\",\"deptId\":104,\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ldtianzhe\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1570801605000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-14 13:31:29');
INSERT INTO `sys_oper_log` VALUES ('194', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"welcome列表\",\"params\":{},\"parentId\":2001,\"path\":\"\",\"children\":[],\"createTime\":1570966068000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"F\",\"perms\":\"system:welcome:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:29:36');
INSERT INTO `sys_oper_log` VALUES ('195', '字典类型', '1', 'com.xyafu.project.system.controller.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"数据库表名\",\"remark\":\"数据库表名\",\"params\":{},\"dictType\":\"content\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:34:44');
INSERT INTO `sys_oper_log` VALUES ('196', '字典类型', '2', 'com.xyafu.project.system.controller.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1570875659000,\"updateBy\":\"admin\",\"dictName\":\"welcome表头\",\"remark\":\"数据表名\",\"dictId\":11,\"params\":{},\"dictType\":\"welcome\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:35:06');
INSERT INTO `sys_oper_log` VALUES ('197', '字典类型', '2', 'com.xyafu.project.system.controller.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1571301284000,\"updateBy\":\"admin\",\"dictName\":\"content表头\",\"remark\":\"数据库表名\",\"dictId\":12,\"params\":{},\"dictType\":\"content\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:35:16');
INSERT INTO `sys_oper_log` VALUES ('198', '字典类型', '1', 'com.xyafu.project.system.controller.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"school表头\",\"remark\":\"数据库表名\",\"params\":{},\"dictType\":\"school\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:35:39');
INSERT INTO `sys_oper_log` VALUES ('199', '字典类型', '1', 'com.xyafu.project.system.controller.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"video表头\",\"remark\":\"数据库表名\",\"params\":{},\"dictType\":\"video\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:36:08');
INSERT INTO `sys_oper_log` VALUES ('200', '字典类型', '1', 'com.xyafu.project.system.controller.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"category表头\",\"remark\":\"数据库表名\",\"params\":{},\"dictType\":\"category\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:36:29');
INSERT INTO `sys_oper_log` VALUES ('201', '字典类型', '1', 'com.xyafu.project.system.controller.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"map表头\",\"remark\":\"数据库表名\",\"params\":{},\"dictType\":\"map\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:36:52');
INSERT INTO `sys_oper_log` VALUES ('202', '字典数据', '1', 'com.xyafu.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"id\",\"dictSort\":1,\"params\":{},\"dictType\":\"content\",\"dictLabel\":\"内容id\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:39:49');
INSERT INTO `sys_oper_log` VALUES ('203', '字典数据', '1', 'com.xyafu.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"title\",\"dictSort\":2,\"params\":{},\"dictType\":\"content\",\"dictLabel\":\"内容标题\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:40:17');
INSERT INTO `sys_oper_log` VALUES ('204', '字典数据', '1', 'com.xyafu.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"content\",\"dictSort\":3,\"params\":{},\"dictType\":\"content\",\"dictLabel\":\"内容正文\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:40:32');
INSERT INTO `sys_oper_log` VALUES ('205', '字典数据', '1', 'com.xyafu.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"createTime\",\"dictSort\":4,\"params\":{},\"dictType\":\"content\",\"dictLabel\":\"创建时间\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:40:55');
INSERT INTO `sys_oper_log` VALUES ('206', '字典数据', '1', 'com.xyafu.project.system.controller.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"opreat\",\"dictSort\":5,\"params\":{},\"dictType\":\"content\",\"dictLabel\":\"操作\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 16:42:24');
INSERT INTO `sys_oper_log` VALUES ('207', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"table\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"\",\"component\":\"data/table/index\",\"children\":[],\"createTime\":1570802851000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 19:48:04');
INSERT INTO `sys_oper_log` VALUES ('208', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2002', '127.0.0.1', '内网IP', '{menuId=2002}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', '0', null, '2019-10-17 19:48:14');
INSERT INTO `sys_oper_log` VALUES ('209', '角色管理', '2', 'com.xyafu.project.system.controller.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1552707180000,\"updateBy\":\"admin\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 19:48:30');
INSERT INTO `sys_oper_log` VALUES ('210', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"table\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"table\",\"component\":\"data/table/index\",\"children\":[],\"createTime\":1570802851000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 19:49:05');
INSERT INTO `sys_oper_log` VALUES ('211', '菜单管理', '1', 'com.xyafu.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"link\",\"orderNum\":\"5\",\"menuName\":\"测试\",\"params\":{},\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 19:49:40');
INSERT INTO `sys_oper_log` VALUES ('212', '菜单管理', '1', 'com.xyafu.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"welcome\",\"params\":{},\"parentId\":2004,\"path\":\"welcome\",\"component\":\"/data/table/welcome/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 19:51:02');
INSERT INTO `sys_oper_log` VALUES ('213', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"welcome\",\"params\":{},\"parentId\":2004,\"path\":\"welcome\",\"component\":\"data/table/welcome/index\",\"children\":[],\"createTime\":1571313062000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2005,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 19:52:52');
INSERT INTO `sys_oper_log` VALUES ('214', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"welcome\",\"params\":{},\"parentId\":2004,\"path\":\"welcome\",\"component\":\"data/welcome/index\",\"children\":[],\"createTime\":1571313062000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2005,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 19:53:46');
INSERT INTO `sys_oper_log` VALUES ('215', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"welcome\",\"params\":{},\"parentId\":2004,\"path\":\"welcome\",\"component\":\"data/welcome/index\",\"children\":[],\"createTime\":1571313062000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2005,\"menuType\":\"C\",\"perms\":\"system:welcome:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-17 19:56:02');
INSERT INTO `sys_oper_log` VALUES ('216', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tool\",\"orderNum\":\"3\",\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"path\":\"tool\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 14:07:28');
INSERT INTO `sys_oper_log` VALUES ('217', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tool\",\"orderNum\":\"3\",\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"path\":\"tool\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 14:07:44');
INSERT INTO `sys_oper_log` VALUES ('218', '通知公告', '3', 'com.xyafu.project.system.controller.SysNoticeController.remove()', 'DELETE', '1', 'admin', null, '/system/notice/1', '127.0.0.1', '内网IP', '{noticeId=1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 14:08:55');
INSERT INTO `sys_oper_log` VALUES ('219', '通知公告', '3', 'com.xyafu.project.system.controller.SysNoticeController.remove()', 'DELETE', '1', 'admin', null, '/system/notice/2', '127.0.0.1', '内网IP', '{noticeId=2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 14:08:58');
INSERT INTO `sys_oper_log` VALUES ('220', '角色管理', '2', 'com.xyafu.project.system.controller.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1552707180000,\"updateBy\":\"admin\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112,2000,2001,2002,2003],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 14:39:25');
INSERT INTO `sys_oper_log` VALUES ('221', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"ldtianzhe\",\"sex\":\"0\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"ld\",\"deptId\":104,\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ldtianzhe\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1570801605000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 14:39:37');
INSERT INTO `sys_oper_log` VALUES ('222', 'welcome', '2', 'com.xyafu.project.system.controller.AppWelcomeController.editSave()', 'PUT', '1', 'admin', null, '/system/welcome', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1566035565000,\"updateBy\":\"admin\",\"keyName\":\"background1\",\"remark\":\"背景图片\",\"updateTime\":1571499342515,\"id\":\"e7c0324ac0d411e9824e2c600ca82001\",\"params\":{},\"value\":\"https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gDRe3d8JYDrIvmG.jpg\"}', 'null', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'key_name\' at row 1\r\n### The error may involve com.xyafu.project.system.mapper.AppWelcomeMapper.updateAppWelcome-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update app_welcome          SET key_name = ?,             value = ?,             create_by = ?,             create_time = ?,             update_by = ?,             update_time = ?,             remark = ?          where id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'key_name\' at row 1\n; Data truncation: Data too long for column \'key_name\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'key_name\' at row 1', '2019-10-19 23:35:42');
INSERT INTO `sys_oper_log` VALUES ('223', 'welcome', '2', 'com.xyafu.project.system.controller.AppWelcomeController.editSave()', 'PUT', '1', 'admin', null, '/system/welcome', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1566035565000,\"updateBy\":\"admin\",\"keyName\":\"background1\",\"remark\":\"背景图片\",\"updateTime\":1571499874911,\"id\":\"e7c0324ac0d411e9824e2c600ca82001\",\"params\":{},\"value\":\"https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gDRe3d8JYDrIvmG.jpg\"}', 'null', '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'key_name\' at row 1\r\n### The error may involve com.xyafu.project.system.mapper.AppWelcomeMapper.updateAppWelcome-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update app_welcome          SET key_name = ?,             value = ?,             create_by = ?,             create_time = ?,             update_by = ?,             update_time = ?,             remark = ?          where id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'key_name\' at row 1\n; Data truncation: Data too long for column \'key_name\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'key_name\' at row 1', '2019-10-19 23:44:35');
INSERT INTO `sys_oper_log` VALUES ('224', 'welcome', '2', 'com.xyafu.project.system.controller.AppWelcomeController.editSave()', 'PUT', '1', 'admin', null, '/system/welcome', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1566035565000,\"updateBy\":\"admin\",\"keyName\":\"background\",\"remark\":\"背景图片1\",\"updateTime\":1571499911115,\"id\":\"e7c0324ac0d411e9824e2c600ca82001\",\"params\":{},\"value\":\"https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gDRe3d8JYDrIvmG.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 23:45:11');
INSERT INTO `sys_oper_log` VALUES ('225', 'welcome', '2', 'com.xyafu.project.system.controller.AppWelcomeController.editSave()', 'PUT', '1', 'admin', null, '/system/welcome', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1566035565000,\"updateBy\":\"admin\",\"keyName\":\"background\",\"remark\":\"背景图片\",\"updateTime\":1571499917908,\"id\":\"e7c0324ac0d411e9824e2c600ca82001\",\"params\":{},\"value\":\"https://cloud-minapp-18941.cloud.ifanrusercontent.com/1gDRe3d8JYDrIvmG.jpg\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 23:45:17');
INSERT INTO `sys_oper_log` VALUES ('226', 'welcome', '3', 'com.xyafu.project.system.controller.AppWelcomeController.remove()', 'DELETE', '1', 'admin', null, '/system/welcome/undefined', '127.0.0.1', '内网IP', '{id=undefined}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2019-10-19 23:50:47');
INSERT INTO `sys_oper_log` VALUES ('227', 'welcome', '1', 'com.xyafu.project.system.controller.AppWelcomeController.addSave()', 'POST', '1', 'admin', null, '/system/welcome', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1571500317137,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 23:51:57');
INSERT INTO `sys_oper_log` VALUES ('228', 'welcome', '3', 'com.xyafu.project.system.controller.AppWelcomeController.remove()', 'DELETE', '1', 'admin', null, '/system/welcome/01146107f28911e9a75a2c600ca82001', '127.0.0.1', '内网IP', '{id=01146107f28911e9a75a2c600ca82001}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 23:52:14');
INSERT INTO `sys_oper_log` VALUES ('229', 'welcome', '1', 'com.xyafu.project.system.controller.AppWelcomeController.addSave()', 'POST', '1', 'admin', null, '/system/welcome', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1571500465650,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 23:54:25');
INSERT INTO `sys_oper_log` VALUES ('230', 'welcome', '3', 'com.xyafu.project.system.controller.AppWelcomeController.remove()', 'DELETE', '1', 'admin', null, '/system/welcome/599b7d7af28911e9a75a2c600ca82001', '127.0.0.1', '内网IP', '{id=599b7d7af28911e9a75a2c600ca82001}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 23:54:34');
INSERT INTO `sys_oper_log` VALUES ('231', 'welcome', '1', 'com.xyafu.project.system.controller.AppWelcomeController.addSave()', 'POST', '1', 'admin', null, '/system/welcome', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1571500610757,\"keyName\":\"test\",\"remark\":\"test\",\"params\":{},\"value\":\"test\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 23:56:50');
INSERT INTO `sys_oper_log` VALUES ('232', 'welcome', '3', 'com.xyafu.project.system.controller.AppWelcomeController.remove()', 'DELETE', '1', 'admin', null, '/system/welcome/b01ce573f28911e9a75a2c600ca82001', '127.0.0.1', '内网IP', '{id=b01ce573f28911e9a75a2c600ca82001}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 23:57:16');
INSERT INTO `sys_oper_log` VALUES ('233', 'welcome', '1', 'com.xyafu.project.system.controller.AppWelcomeController.addSave()', 'POST', '1', 'admin', null, '/system/welcome', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1571500647804,\"keyName\":\"test\",\"remark\":\"t\",\"params\":{},\"value\":\"tet\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 23:57:27');
INSERT INTO `sys_oper_log` VALUES ('234', 'welcome', '3', 'com.xyafu.project.system.controller.AppWelcomeController.remove()', 'DELETE', '1', 'admin', null, '/system/welcome/c62c2a3ff28911e9a75a2c600ca82001', '127.0.0.1', '内网IP', '{id=c62c2a3ff28911e9a75a2c600ca82001}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-19 23:57:31');
INSERT INTO `sys_oper_log` VALUES ('235', '角色管理', '2', 'com.xyafu.project.system.controller.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1552707180000,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"deptIds\":[105,100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 14:37:19');
INSERT INTO `sys_oper_log` VALUES ('236', '角色管理', '2', 'com.xyafu.project.system.controller.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1552707180000,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"deptIds\":[105,100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 14:37:45');
INSERT INTO `sys_oper_log` VALUES ('237', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tool\",\"orderNum\":\"3\",\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"path\":\"tool\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 14:45:25');
INSERT INTO `sys_oper_log` VALUES ('238', '菜单管理', '1', 'com.xyafu.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"2\",\"menuName\":\"附件管理\",\"params\":{},\"parentId\":2000,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 14:47:46');
INSERT INTO `sys_oper_log` VALUES ('239', '菜单管理', '1', 'com.xyafu.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"2\",\"menuName\":\"附件管理\",\"params\":{},\"parentId\":2000,\"path\":\"/data/file\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 14:50:25');
INSERT INTO `sys_oper_log` VALUES ('240', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"2\",\"menuName\":\"附件管理\",\"params\":{},\"parentId\":2000,\"path\":\"file\",\"component\":\"/data/file\",\"children\":[],\"createTime\":1572072624000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2005,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 14:51:00');
INSERT INTO `sys_oper_log` VALUES ('241', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tree\",\"orderNum\":\"4\",\"menuName\":\"部门管理\",\"params\":{},\"parentId\":1,\"path\":\"dept\",\"component\":\"system/dept/index\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":103,\"menuType\":\"C\",\"perms\":\"system:dept:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 16:10:49');
INSERT INTO `sys_oper_log` VALUES ('242', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"post\",\"orderNum\":\"5\",\"menuName\":\"身份管理\",\"params\":{},\"parentId\":1,\"path\":\"post\",\"component\":\"system/post/index\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":104,\"menuType\":\"C\",\"perms\":\"system:post:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 16:11:06');
INSERT INTO `sys_oper_log` VALUES ('243', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/107', '127.0.0.1', '内网IP', '{menuId=107}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2019-10-26 16:11:27');
INSERT INTO `sys_oper_log` VALUES ('244', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1039', '127.0.0.1', '内网IP', '{menuId=1039}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', '0', null, '2019-10-26 16:13:13');
INSERT INTO `sys_oper_log` VALUES ('245', '角色管理', '2', 'com.xyafu.project.system.controller.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1552707180000,\"updateBy\":\"admin\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,111,112,2001,2002,2003,1,2000],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 16:13:45');
INSERT INTO `sys_oper_log` VALUES ('246', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/107', '127.0.0.1', '内网IP', '{menuId=107}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2019-10-26 16:14:09');
INSERT INTO `sys_oper_log` VALUES ('247', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1039', '127.0.0.1', '内网IP', '{menuId=1039}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 16:14:16');
INSERT INTO `sys_oper_log` VALUES ('248', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1038', '127.0.0.1', '内网IP', '{menuId=1038}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 16:14:20');
INSERT INTO `sys_oper_log` VALUES ('249', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1037', '127.0.0.1', '内网IP', '{menuId=1037}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 16:14:23');
INSERT INTO `sys_oper_log` VALUES ('250', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1036', '127.0.0.1', '内网IP', '{menuId=1036}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 16:14:27');
INSERT INTO `sys_oper_log` VALUES ('251', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/107', '127.0.0.1', '内网IP', '{menuId=107}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 16:14:30');
INSERT INTO `sys_oper_log` VALUES ('252', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"dict\",\"orderNum\":\"6\",\"menuName\":\"字典管理\",\"params\":{},\"parentId\":1,\"path\":\"dict\",\"component\":\"system/dict/index\",\"children\":[],\"createTime\":1552707180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":105,\"menuType\":\"C\",\"perms\":\"system:dict:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 16:20:19');
INSERT INTO `sys_oper_log` VALUES ('253', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"edit\",\"orderNum\":\"7\",\"menuName\":\"参数设置\",\"params\":{},\"parentId\":1,\"path\":\"config\",\"component\":\"system/config/index\",\"children\":[],\"createTime\":1552707180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":106,\"menuType\":\"C\",\"perms\":\"system:config:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-10-26 16:20:27');
INSERT INTO `sys_oper_log` VALUES ('254', '代码生成', '6', 'com.xyafu.project.tool.gen.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'app_adr_category,app_content,app_map,app_school,app_video,app_welcome', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-04 23:39:04');
INSERT INTO `sys_oper_log` VALUES ('255', '代码生成', '8', 'com.xyafu.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2019-12-04 23:43:46');
INSERT INTO `sys_oper_log` VALUES ('256', '代码生成', '2', 'com.xyafu.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"xyafu\",\"columns\":[{\"usableColumn\":false,\"columnId\":45,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1575473944000,\"tableId\":6,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":46,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"keyName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"key名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"key_name\"},{\"usableColumn\":false,\"columnId\":47,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"value\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"key值\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"value\"},{\"usableColumn\":false,\"columnId\":48,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createBy\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"创建者\",\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"tableId\":6,\"pk\":false,\"columnName\":\"create_by\"},{\"usableColumn\":false,\"columnId\":49,\"isIncrement\":\"0\",\"increme', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-04 23:45:45');
INSERT INTO `sys_oper_log` VALUES ('257', '代码生成', '8', 'com.xyafu.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2019-12-04 23:46:23');
INSERT INTO `sys_oper_log` VALUES ('258', '代码生成', '2', 'com.xyafu.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"xyafu\",\"columns\":[{\"usableColumn\":false,\"columnId\":36,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"视频ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1575473944000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":37,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"视频标题\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"title\"},{\"usableColumn\":false,\"columnId\":38,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"coverimg\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"视频封面图\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"coverimg\"},{\"usableColumn\":false,\"columnId\":39,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"src\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"视频链接\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"src\"},{\"usableColumn\":false,\"colum', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-04 23:58:33');
INSERT INTO `sys_oper_log` VALUES ('259', '代码生成', '2', 'com.xyafu.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"xyafu\",\"columns\":[{\"usableColumn\":false,\"columnId\":28,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"uuid\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1575473944000,\"tableId\":4,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":29,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"schoolname\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学校中文名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"schoolname\"},{\"usableColumn\":false,\"columnId\":30,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"englishname\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学校英文名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"englishname\"},{\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"images\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"校园图片\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"images\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-04 23:59:19');
INSERT INTO `sys_oper_log` VALUES ('260', '代码生成', '2', 'com.xyafu.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"xyafu\",\"columns\":[{\"usableColumn\":false,\"columnId\":15,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1575473944000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":16,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"地点名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"title\"},{\"usableColumn\":false,\"columnId\":17,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"description\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"地点介绍\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"description\"},{\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"logo\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"地点logo\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(200)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"logo\"},{\"usableColumn\":false,', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 00:00:22');
INSERT INTO `sys_oper_log` VALUES ('261', '代码生成', '2', 'com.xyafu.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"xyafu\",\"columns\":[{\"usableColumn\":false,\"columnId\":8,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"内容ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1575473944000,\"tableId\":2,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":9,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"内容标题\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"title\"},{\"usableColumn\":false,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"content\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"内容正文\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"longtext\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"content\"},{\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"createBy\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"创建者\",\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"tableId\":2,\"pk\":false,\"columnName\":\"create_by\"},{\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":f', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 00:01:48');
INSERT INTO `sys_oper_log` VALUES ('262', '代码生成', '8', 'com.xyafu.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2019-12-05 00:02:57');
INSERT INTO `sys_oper_log` VALUES ('263', '菜单管理', '1', 'com.xyafu.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"4\",\"menuName\":\"数据管理\",\"params\":{},\"path\":\"data\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 12:45:04');
INSERT INTO `sys_oper_log` VALUES ('264', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"5\",\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 12:47:20');
INSERT INTO `sys_oper_log` VALUES ('265', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 12:47:40');
INSERT INTO `sys_oper_log` VALUES ('266', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"datamanage\",\"orderNum\":\"4\",\"menuName\":\"数据管理\",\"params\":{},\"parentId\":0,\"path\":\"data\",\"children\":[],\"createTime\":1575521104000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 12:53:12');
INSERT INTO `sys_oper_log` VALUES ('267', '菜单管理', '1', 'com.xyafu.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"data\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"table\",\"component\":\"data/table/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 12:57:56');
INSERT INTO `sys_oper_log` VALUES ('268', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"data\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"table\",\"component\":\"data/table/index\",\"children\":[],\"createTime\":1575521876000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 13:17:10');
INSERT INTO `sys_oper_log` VALUES ('269', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"welcome\",\"params\":{},\"parentId\":2001,\"path\":\"welcome\",\"component\":\"wxapp/welcome/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"wxapp:welcome:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 13:45:43');
INSERT INTO `sys_oper_log` VALUES ('270', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"welcome查询\",\"params\":{},\"parentId\":2002,\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"F\",\"perms\":\"wxapp:welcome:query\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 13:46:58');
INSERT INTO `sys_oper_log` VALUES ('271', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"welcome查询\",\"params\":{},\"parentId\":2001,\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"F\",\"perms\":\"wxapp:welcome:query\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 13:47:18');
INSERT INTO `sys_oper_log` VALUES ('272', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"welcome新增\",\"params\":{},\"parentId\":2001,\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"F\",\"perms\":\"wxapp:welcome:add\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 13:47:51');
INSERT INTO `sys_oper_log` VALUES ('273', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"welcome修改\",\"params\":{},\"parentId\":2001,\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2005,\"menuType\":\"F\",\"perms\":\"wxapp:welcome:edit\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 13:48:04');
INSERT INTO `sys_oper_log` VALUES ('274', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"welcome删除\",\"params\":{},\"parentId\":2001,\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"F\",\"perms\":\"wxapp:welcome:remove\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 13:48:25');
INSERT INTO `sys_oper_log` VALUES ('275', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"5\",\"menuName\":\"welcome导出\",\"params\":{},\"parentId\":2001,\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2007,\"menuType\":\"F\",\"perms\":\"wxapp:welcome:export\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 13:48:36');
INSERT INTO `sys_oper_log` VALUES ('276', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"welcome\",\"params\":{},\"parentId\":2001,\"path\":\"welcome\",\"component\":\"wxapp/welcome/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"F\",\"perms\":\"wxapp:welcome:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 13:49:03');
INSERT INTO `sys_oper_log` VALUES ('277', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"welcome\",\"params\":{},\"parentId\":2001,\"path\":\"welcome\",\"component\":\"\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"F\",\"perms\":\"wxapp:welcome:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 13:49:27');
INSERT INTO `sys_oper_log` VALUES ('278', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"welcome列表\",\"params\":{},\"parentId\":2001,\"path\":\"welcome\",\"component\":\"wxapp/welcome/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"F\",\"perms\":\"wxapp:welcome:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 14:44:08');
INSERT INTO `sys_oper_log` VALUES ('279', '代码生成', '8', 'com.xyafu.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2019-12-05 15:40:13');
INSERT INTO `sys_oper_log` VALUES ('280', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"content\",\"params\":{},\"parentId\":2001,\"path\":\"content\",\"component\":\"wxapp/content/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"F\",\"perms\":\"wxapp:content:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 15:52:16');
INSERT INTO `sys_oper_log` VALUES ('281', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"content\",\"params\":{},\"parentId\":2001,\"path\":\"content\",\"component\":\"wxapp/content/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"wxapp:content:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 15:52:44');
INSERT INTO `sys_oper_log` VALUES ('282', '代码生成', '8', 'com.xyafu.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2019-12-05 16:33:50');
INSERT INTO `sys_oper_log` VALUES ('283', '代码生成', '8', 'com.xyafu.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2019-12-05 17:03:35');
INSERT INTO `sys_oper_log` VALUES ('284', '代码生成', '8', 'com.xyafu.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2019-12-05 17:04:35');
INSERT INTO `sys_oper_log` VALUES ('285', '代码生成', '8', 'com.xyafu.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2019-12-05 17:04:40');
INSERT INTO `sys_oper_log` VALUES ('286', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"school\",\"params\":{},\"parentId\":2001,\"path\":\"school\",\"component\":\"wxapp/school/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2014,\"menuType\":\"F\",\"perms\":\"wxapp:school:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 20:43:22');
INSERT INTO `sys_oper_log` VALUES ('287', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"video\",\"params\":{},\"parentId\":2001,\"path\":\"video\",\"component\":\"wxapp/video/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2020,\"menuType\":\"F\",\"perms\":\"wxapp:video:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 20:43:33');
INSERT INTO `sys_oper_log` VALUES ('288', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"category\",\"params\":{},\"parentId\":2001,\"path\":\"category\",\"component\":\"wxapp/category/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2026,\"menuType\":\"C\",\"perms\":\"wxapp:category:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 20:43:42');
INSERT INTO `sys_oper_log` VALUES ('289', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"map\",\"params\":{},\"parentId\":2001,\"path\":\"map\",\"component\":\"wxapp/map/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2032,\"menuType\":\"F\",\"perms\":\"wxapp:map:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 20:43:51');
INSERT INTO `sys_oper_log` VALUES ('290', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"school\",\"params\":{},\"parentId\":2001,\"path\":\"school\",\"component\":\"wxapp/school/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2014,\"menuType\":\"F\",\"perms\":\"wxapp:school:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 20:44:15');
INSERT INTO `sys_oper_log` VALUES ('291', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"video\",\"params\":{},\"parentId\":2001,\"path\":\"video\",\"component\":\"wxapp/video/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2020,\"menuType\":\"F\",\"perms\":\"wxapp:video:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 20:44:22');
INSERT INTO `sys_oper_log` VALUES ('292', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"5\",\"menuName\":\"category\",\"params\":{},\"parentId\":2001,\"path\":\"category\",\"component\":\"wxapp/category/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2026,\"menuType\":\"F\",\"perms\":\"wxapp:category:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 20:44:44');
INSERT INTO `sys_oper_log` VALUES ('293', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"5\",\"menuName\":\"category\",\"params\":{},\"parentId\":2001,\"path\":\"category\",\"component\":\"wxapp/category/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2026,\"menuType\":\"F\",\"perms\":\"wxapp:category:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 20:44:44');
INSERT INTO `sys_oper_log` VALUES ('294', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"6\",\"menuName\":\"map\",\"params\":{},\"parentId\":2001,\"path\":\"map\",\"component\":\"wxapp/map/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2032,\"menuType\":\"F\",\"perms\":\"wxapp:map:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 20:44:56');
INSERT INTO `sys_oper_log` VALUES ('295', '代码生成', '2', 'com.xyafu.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"xyafu\",\"columns\":[{\"usableColumn\":false,\"columnId\":36,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"视频ID\",\"updateTime\":1575475113000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1575473944000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":37,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"视频标题\",\"isQuery\":\"1\",\"updateTime\":1575475113000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"title\"},{\"usableColumn\":false,\"columnId\":38,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"coverimg\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"视频封面图\",\"isQuery\":\"1\",\"updateTime\":1575475113000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"coverimg\"},{\"usableColumn\":false,\"columnId\":39,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"src\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"视频链接\",\"isQuery\":\"1\",\"updateTime\":1575475113000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"cr', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:35:40');
INSERT INTO `sys_oper_log` VALUES ('296', '字典类型', '2', 'com.xyafu.project.system.controller.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"remark\":\"轮播状态\",\"dictId\":11,\"params\":{},\"dictType\":\"app_video_status\",\"createBy\":\"admin\",\"createTime\":1570875659000,\"updateBy\":\"admin\",\"dictName\":\"轮播状态\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:45:38');
INSERT INTO `sys_oper_log` VALUES ('297', '字典类型', '3', 'com.xyafu.project.system.controller.SysDictDataController.remove()', 'DELETE', '1', 'admin', null, '/system/dict/data/34', '127.0.0.1', '内网IP', '{dictCodes=34}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:45:48');
INSERT INTO `sys_oper_log` VALUES ('298', '字典类型', '3', 'com.xyafu.project.system.controller.SysDictDataController.remove()', 'DELETE', '1', 'admin', null, '/system/dict/data/31', '127.0.0.1', '内网IP', '{dictCodes=31}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:45:57');
INSERT INTO `sys_oper_log` VALUES ('299', '字典类型', '3', 'com.xyafu.project.system.controller.SysDictDataController.remove()', 'DELETE', '1', 'admin', null, '/system/dict/data/32', '127.0.0.1', '内网IP', '{dictCodes=32}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:46:00');
INSERT INTO `sys_oper_log` VALUES ('300', '字典类型', '3', 'com.xyafu.project.system.controller.SysDictDataController.remove()', 'DELETE', '1', 'admin', null, '/system/dict/data/33', '127.0.0.1', '内网IP', '{dictCodes=33}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:46:03');
INSERT INTO `sys_oper_log` VALUES ('301', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":1,\"remark\":\"开启轮播\",\"params\":{},\"dictType\":\"app_video_status\",\"dictLabel\":\"是\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875904000,\"dictCode\":29,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:46:27');
INSERT INTO `sys_oper_log` VALUES ('302', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":1,\"remark\":\"关闭轮播\",\"params\":{},\"dictType\":\"app_video_status\",\"dictLabel\":\"否\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875922000,\"dictCode\":30,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:47:06');
INSERT INTO `sys_oper_log` VALUES ('303', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"remark\":\"开启轮播\",\"params\":{},\"dictType\":\"app_video_status\",\"dictLabel\":\"是\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875904000,\"dictCode\":29,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:47:15');
INSERT INTO `sys_oper_log` VALUES ('304', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":1,\"remark\":\"开启轮播\",\"params\":{},\"dictType\":\"app_video_status\",\"dictLabel\":\"是\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875904000,\"dictCode\":29,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:48:22');
INSERT INTO `sys_oper_log` VALUES ('305', '字典数据', '2', 'com.xyafu.project.system.controller.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"remark\":\"关闭轮播\",\"params\":{},\"dictType\":\"app_video_status\",\"dictLabel\":\"否\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1570875922000,\"dictCode\":30,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:48:27');
INSERT INTO `sys_oper_log` VALUES ('306', '代码生成', '2', 'com.xyafu.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"xyafu\",\"columns\":[{\"usableColumn\":false,\"columnId\":36,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"视频ID\",\"updateTime\":1575552940000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1575473944000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":37,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"视频标题\",\"isQuery\":\"1\",\"updateTime\":1575552940000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"title\"},{\"usableColumn\":false,\"columnId\":38,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"coverimg\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"视频封面图\",\"isQuery\":\"1\",\"updateTime\":1575552940000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1575473944000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"coverimg\"},{\"usableColumn\":false,\"columnId\":39,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"src\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"视频链接\",\"isQuery\":\"1\",\"updateTime\":1575552940000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"cr', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 21:49:47');
INSERT INTO `sys_oper_log` VALUES ('307', '用户管理', '2', 'com.xyafu.project.system.controller.SysUserController.changeStatus()', 'PUT', '1', 'admin', null, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2019-12-05 22:17:32');
INSERT INTO `sys_oper_log` VALUES ('308', 'video', '2', 'com.xyafu.project.wxapp.controller.AppVideoController.changeStatus()', 'PUT', '1', 'admin', null, '/wxapp/video/changeStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1575555511930,\"params\":{},\"updateBy\":\"admin\",\"id\":\"1aa6aa54c0db11e9824e2c600ca82001\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 22:18:32');
INSERT INTO `sys_oper_log` VALUES ('309', 'video', '2', 'com.xyafu.project.wxapp.controller.AppVideoController.changeStatus()', 'PUT', '1', 'admin', null, '/wxapp/video/changeStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1575555534784,\"params\":{},\"updateBy\":\"admin\",\"id\":\"1aa6aa54c0db11e9824e2c600ca82001\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-05 22:18:54');
INSERT INTO `sys_oper_log` VALUES ('310', 'content', '2', 'com.xyafu.project.wxapp.controller.AppContentController.edit()', 'PUT', '1', 'admin', null, '/wxapp/content', '127.0.0.1', '内网IP', '{\"updateTime\":1575643525118,\"params\":{},\"title\":\"信阳农林学院简介\",\"content\":\"<p>信阳农林学院是一所公办全日制普通本科学校，坐落于历史文化名城信阳。信阳地处河南省南部，东邻安徽、南接湖北，楚风豫韵交汇交融，素有&ldquo;北国江南，江南北国&rdquo;之美誉，是中国著名的宜居之城、旅游之城、创业之城，其优越的地理区位、优美的自然环境、深厚的文化底蕴和活跃的地方建设，为莘莘学子学习深造提供了优越条件。</p>\\n<p>&nbsp;</p>\\n<p>学校前身为信阳农业高等专科学校，办学历史可追溯到1910年成立的汝宁府中等实业学堂。一百多年来，学校发扬&ldquo;艰苦创业、负重奋进、团结拼搏、追求卓越&rdquo;的精神，秉承&ldquo;志向立高远、学问做精细&rdquo;的校训，已建成一所以农林学科专业为特色，农学、工学、管理学、文学、理学等多学科协调发展的与区域经济社会发展相适应的应用型普通高校，为社会培养各类人才10余万人，为河南经济社会发展作出了重要贡献。</p>\\n<p>&nbsp;</p>\\n<p>学校校园占地1430余亩，校舍建筑面积44.5万余平方米。在校学生1.2万余人，教职工850余人，其中专任教师700余人，具有高级专业技术职务教师230余人，具有博士、硕士学位教师550余人。有国家教学名师1人，全国优秀教师1人，全国十佳双创典型导师1人，河南省教学名师2人，省管专家、学术技术带头人、省级骨干教师等高层次人才40余人，省级优秀教学团队2个，省级优秀基层教学组织2个。</p>\\n<p>&nbsp;</p>\\n<p>学校设有农学院、林学院、水产学院、茶学院、牧医工程学院、食品学院、园艺学院、规划与设计学院、信息工程学院、工商管理学院、财经学院、外国语学院、生物与制药工程学院、旅游管理学院、思想政治理论课教学部、文学艺术教学部、体育教学部、国际交流与合作部、继续教育学院共19个教学单位，设置有植物保护、种子科学与工程、农学、设施农业科学与工程、林学、园林、水产养殖学、水族科学与技术、茶学、动物医学、动物科学、食品科学与工程、食品质量与安全、园艺、城乡规划、风景园林、环境设计、网络工程、数字媒体技术、物流管理、物联网工程、电子商务、市场营销、财务管理、审计学、商务英语、翻译、制药工程、酒店管理、旅游管理等30个本科专业和若干专业方向，以及畜牧兽医、烹饪工艺与营学校教学科研仪器设备总值7900余万元，建有农学、林学、水产养殖、茶学、动物医学、食品科学与工程等各类实验室45个，稳定的校内外实习实训基地200余个，国家级职业教育实训基地2个，省级示范性实训基地4个，省级实验教学示范中心1个，农林实习场1个。图书馆面积2.8万平方米，现代图书管理系统完善，馆藏图书110万余册，学术期刊1000多种，可利用电子图书35万册（种）。建有较完善的计算机网络服务体系。</p>\\n<p>&nbsp;</p>\\n<p>学校坚持&ldquo;质量立校，特色兴校，人才强校&rdquo;的办学思想，坚持以育人为中心、以提高人才培养质量为核心的教学理念，实施&ldquo;质量提升，内涵带动&rdquo;发展战略，大力推进教学质量工程建设，走产学研合作道路，形成了鲜明的办学特色。有省级及以上特色优势专业15个，其中中央财政支持提升专业服务能力项目建设专业2个、河南省高等学校专业综合改革试点项目3个（本科），国家级精品课程4门，河南省精品课程7门，省级精品资源课程2门，河南省精品在线开放课程1门。获省级教学成果50项，其中省级教学成果特等奖1项，一等奖7项，二等奖17项。</p>\\n<p>&nbsp;</p>\\n<p>学校坚持以提高科学研究水平和科技服务能力为目标，强化科技创新与服务平台建设，牵头组建了河南省茶产业技术创新战略联盟、河南省水库生态渔业产业技术创新战略联盟、河南省食药用真菌产业技术创新战略联盟，获批建立豫南植物有害生物绿色防控院士工作站、河南省博士后研发基地和6个省级工程（技术）研究中心、18个市厅级工程技术研究中心、1个省级和6个市级重点实验室，1个市级星创天地。面向信阳及周边地区粮食、林果、水产、茶叶、畜禽、花卉、食品加工、食用菌、中草药等产业发展，积极开展应用研究、技术开发和成果转化，近年来承担省部级以上科研项目300多项，获得省部级奖80余项，获国家专利300余项。获批建立国家级培育示范基地1个、省级培训基地5个、省级培育机构1个、省级科普示范基地1个，省级产学研合作试点项目6个。市校联合建有信阳马克思主义学院、信阳农民大学，学校联合10余家政府机构与100余家企业组建有产学研合作联盟，积极推进政、产、学、研深化合作，支持地方经济社会发展和脱贫攻坚，近年依', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-06 22:45:25');
INSERT INTO `sys_oper_log` VALUES ('311', 'content', '2', 'com.xyafu.project.wxapp.controller.AppContentController.edit()', 'PUT', '1', 'admin', null, '/wxapp/content', '127.0.0.1', '内网IP', '{\"updateTime\":1575643617209,\"params\":{},\"title\":\"信阳农林学院简介\",\"content\":\"<p>信阳农林学院是一所公办全日制普通本科学校，坐落于历史文化名城信阳。信阳地处河南省南部，东邻安徽、南接湖北，楚风豫韵交汇交融，素有&ldquo;北国江南，江南北国&rdquo;之美誉，是中国著名的宜居之城、旅游之城、创业之城，其优越的地理区位、优美的自然环境、深厚的文化底蕴和活跃的地方建设，为莘莘学子学习深造提供了优越条件。</p>\\n<p>&nbsp;</p>\\n<p>学校前身为信阳农业高等专科学校，办学历史可追溯到1910年成立的汝宁府中等实业学堂。一百多年来，学校发扬&ldquo;艰苦创业、负重奋进、团结拼搏、追求卓越&rdquo;的精神，秉承&ldquo;志向立高远、学问做精细&rdquo;的校训，已建成一所以农林学科专业为特色，农学、工学、管理学、文学、理学等多学科协调发展的与区域经济社会发展相适应的应用型普通高校，为社会培养各类人才10余万人，为河南经济社会发展作出了重要贡献。</p>\\n<p>&nbsp;</p>\\n<p>学校校园占地1430余亩，校舍建筑面积44.5万余平方米。在校学生1.2万余人，教职工850余人，其中专任教师700余人，具有高级专业技术职务教师230余人，具有博士、硕士学位教师550余人。有国家教学名师1人，全国优秀教师1人，全国十佳双创典型导师1人，河南省教学名师2人，省管专家、学术技术带头人、省级骨干教师等高层次人才40余人，省级优秀教学团队2个，省级优秀基层教学组织2个。</p>\\n<p>&nbsp;</p>\\n<p>学校设有农学院、林学院、水产学院、茶学院、牧医工程学院、食品学院、园艺学院、规划与设计学院、信息工程学院、工商管理学院、财经学院、外国语学院、生物与制药工程学院、旅游管理学院、思想政治理论课教学部、文学艺术教学部、体育教学部、国际交流与合作部、继续教育学院共19个教学单位，设置有植物保护、种子科学与工程、农学、设施农业科学与工程、林学、园林、水产养殖学、水族科学与技术、茶学、动物医学、动物科学、食品科学与工程、食品质量与安全、园艺、城乡规划、风景园林、环境设计、网络工程、数字媒体技术、物流管理、物联网工程、电子商务、市场营销、财务管理、审计学、商务英语、翻译、制药工程、酒店管理、旅游管理等30个本科专业和若干专业方向，以及畜牧兽医、烹饪工艺与营学校教学科研仪器设备总值7900余万元，建有农学、林学、水产养殖、茶学、动物医学、食品科学与工程等各类实验室45个，稳定的校内外实习实训基地200余个，国家级职业教育实训基地2个，省级示范性实训基地4个，省级实验教学示范中心1个，农林实习场1个。图书馆面积2.8万平方米，现代图书管理系统完善，馆藏图书110万余册，学术期刊1000多种，可利用电子图书35万册（种）。建有较完善的计算机网络服务体系。</p>\\n<p>&nbsp;</p>\\n<p>学校坚持&ldquo;质量立校，特色兴校，人才强校&rdquo;的办学思想，坚持以育人为中心、以提高人才培养质量为核心的教学理念，实施&ldquo;质量提升，内涵带动&rdquo;发展战略，大力推进教学质量工程建设，走产学研合作道路，形成了鲜明的办学特色。有省级及以上特色优势专业15个，其中中央财政支持提升专业服务能力项目建设专业2个、河南省高等学校专业综合改革试点项目3个（本科），国家级精品课程4门，河南省精品课程7门，省级精品资源课程2门，河南省精品在线开放课程1门。获省级教学成果50项，其中省级教学成果特等奖1项，一等奖7项，二等奖17项。</p>\\n<p>&nbsp;</p>\\n<p>学校坚持以提高科学研究水平和科技服务能力为目标，强化科技创新与服务平台建设，牵头组建了河南省茶产业技术创新战略联盟、河南省水库生态渔业产业技术创新战略联盟、河南省食药用真菌产业技术创新战略联盟，获批建立豫南植物有害生物绿色防控院士工作站、河南省博士后研发基地和6个省级工程（技术）研究中心、18个市厅级工程技术研究中心、1个省级和6个市级重点实验室，1个市级星创天地。面向信阳及周边地区粮食、林果、水产、茶叶、畜禽、花卉、食品加工、食用菌、中草药等产业发展，积极开展应用研究、技术开发和成果转化，近年来承担省部级以上科研项目300多项，获得省部级奖80余项，获国家专利300余项。获批建立国家级培育示范基地1个、省级培训基地5个、省级培育机构1个、省级科普示范基地1个，省级产学研合作试点项目6个。市校联合建有信阳马克思主义学院、信阳农民大学，学校联合10余家政府机构与100余家企业组建有产学研合作联盟，积极推进政、产、学、研深化合作，支持地方经济社会发展和脱贫攻坚，近年依', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-06 22:46:57');
INSERT INTO `sys_oper_log` VALUES ('312', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"data\",\"orderNum\":\"1\",\"menuName\":\"数据表管理\",\"params\":{},\"parentId\":2000,\"path\":\"table\",\"component\":\"datamanage/table/index\",\"children\":[],\"createTime\":1575521876000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-07 22:51:47');
INSERT INTO `sys_oper_log` VALUES ('313', 'school', '1', 'com.xyafu.project.wxapp.controller.AppSchoolController.add()', 'POST', '1', 'admin', null, '/wxapp/school', '127.0.0.1', '内网IP', '{\"images\":\"test1,test2\",\"params\":{},\"schoolname\":\"中文\",\"createBy\":\"admin\",\"englishname\":\"英文\",\"createTime\":1575792171913}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 16:02:52');
INSERT INTO `sys_oper_log` VALUES ('314', 'school', '2', 'com.xyafu.project.wxapp.controller.AppSchoolController.edit()', 'PUT', '1', 'admin', null, '/wxapp/school', '127.0.0.1', '内网IP', '{\"images\":\"test1,test2,test3\",\"updateTime\":1575792398560,\"params\":{},\"schoolname\":\"中文\",\"createBy\":\"admin\",\"englishname\":\"英文\",\"createTime\":1575792172000,\"updateBy\":\"admin\",\"id\":\"59b5a04b199111eaa4172c600ca82001\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 16:06:38');
INSERT INTO `sys_oper_log` VALUES ('315', 'school', '3', 'com.xyafu.project.wxapp.controller.AppSchoolController.remove()', 'DELETE', '1', 'admin', null, '/wxapp/school/59b5a04b199111eaa4172c600ca82001', '127.0.0.1', '内网IP', '{ids=59b5a04b199111eaa4172c600ca82001}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 16:06:56');
INSERT INTO `sys_oper_log` VALUES ('316', 'school', '1', 'com.xyafu.project.wxapp.controller.AppSchoolController.add()', 'POST', '1', 'admin', null, '/wxapp/school', '127.0.0.1', '内网IP', '{\"images\":\"tets1\",\"params\":{},\"schoolname\":\"中文\",\"createBy\":\"admin\",\"englishname\":\"英文\",\"createTime\":1575792431632}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 16:07:11');
INSERT INTO `sys_oper_log` VALUES ('317', 'school', '3', 'com.xyafu.project.wxapp.controller.AppSchoolController.remove()', 'DELETE', '1', 'admin', null, '/wxapp/school/f469498f199111eaa4172c600ca82001', '127.0.0.1', '内网IP', '{ids=f469498f199111eaa4172c600ca82001}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 16:23:29');
INSERT INTO `sys_oper_log` VALUES ('318', 'map', '1', 'com.xyafu.project.wxapp.controller.AppMapController.add()', 'POST', '1', 'admin', null, '/wxapp/map', '127.0.0.1', '内网IP', '{\"images\":\"test1\",\"latitude\":\"456\",\"description\":\"介绍\",\"orderNum\":5,\"params\":{},\"title\":\"名称\",\"createBy\":\"admin\",\"createTime\":1575794452448,\"logo\":\"logo\",\"category\":\"八石八景\",\"longitude\":\"132\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 16:40:52');
INSERT INTO `sys_oper_log` VALUES ('319', 'map', '2', 'com.xyafu.project.wxapp.controller.AppMapController.edit()', 'PUT', '1', 'admin', null, '/wxapp/map', '127.0.0.1', '内网IP', '{\"images\":\"test1,test2\",\"latitude\":\"456\",\"description\":\"介绍\",\"orderNum\":5,\"updateTime\":1575794526622,\"params\":{},\"title\":\"名称\",\"createBy\":\"admin\",\"createTime\":1575794452000,\"updateBy\":\"admin\",\"logo\":\"logo\",\"id\":\"a8ebd38e199611eaa4172c600ca82001\",\"category\":\"八石八景\",\"longitude\":\"132\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 16:42:06');
INSERT INTO `sys_oper_log` VALUES ('320', 'map', '2', 'com.xyafu.project.wxapp.controller.AppMapController.edit()', 'PUT', '1', 'admin', null, '/wxapp/map', '127.0.0.1', '内网IP', '{\"images\":\"test1\",\"latitude\":\"456\",\"description\":\"介绍\",\"orderNum\":5,\"updateTime\":1575794687737,\"params\":{},\"title\":\"名称\",\"createBy\":\"admin\",\"createTime\":1575794452000,\"updateBy\":\"admin\",\"logo\":\"logo\",\"id\":\"a8ebd38e199611eaa4172c600ca82001\",\"category\":\"八石八景\",\"longitude\":\"132\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 16:44:47');
INSERT INTO `sys_oper_log` VALUES ('321', 'map', '2', 'com.xyafu.project.wxapp.controller.AppMapController.edit()', 'PUT', '1', 'admin', null, '/wxapp/map', '127.0.0.1', '内网IP', '{\"images\":\"test1,test2\",\"latitude\":\"456\",\"description\":\"介绍\",\"orderNum\":5,\"updateTime\":1575794700465,\"params\":{},\"title\":\"名称\",\"createBy\":\"admin\",\"createTime\":1575794452000,\"updateBy\":\"admin\",\"logo\":\"logo\",\"id\":\"a8ebd38e199611eaa4172c600ca82001\",\"category\":\"八石八景\",\"longitude\":\"132\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 16:45:00');
INSERT INTO `sys_oper_log` VALUES ('322', 'map', '3', 'com.xyafu.project.wxapp.controller.AppMapController.remove()', 'DELETE', '1', 'admin', null, '/wxapp/map/a8ebd38e199611eaa4172c600ca82001', '127.0.0.1', '内网IP', '{ids=a8ebd38e199611eaa4172c600ca82001}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 16:46:00');
INSERT INTO `sys_oper_log` VALUES ('323', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/113', '127.0.0.1', '内网IP', '{menuId=113}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 16:58:27');
INSERT INTO `sys_oper_log` VALUES ('324', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/110', '127.0.0.1', '内网IP', '{menuId=110}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', '0', null, '2019-12-08 17:33:04');
INSERT INTO `sys_oper_log` VALUES ('325', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1049', '127.0.0.1', '内网IP', '{menuId=1049}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 17:33:14');
INSERT INTO `sys_oper_log` VALUES ('326', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1050', '127.0.0.1', '内网IP', '{menuId=1050}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 17:33:18');
INSERT INTO `sys_oper_log` VALUES ('327', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1051', '127.0.0.1', '内网IP', '{menuId=1051}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 17:33:21');
INSERT INTO `sys_oper_log` VALUES ('328', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1052', '127.0.0.1', '内网IP', '{menuId=1052}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 17:33:25');
INSERT INTO `sys_oper_log` VALUES ('329', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1053', '127.0.0.1', '内网IP', '{menuId=1053}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 17:33:29');
INSERT INTO `sys_oper_log` VALUES ('330', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/1054', '127.0.0.1', '内网IP', '{menuId=1054}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 17:33:33');
INSERT INTO `sys_oper_log` VALUES ('331', '菜单管理', '3', 'com.xyafu.project.system.controller.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/110', '127.0.0.1', '内网IP', '{menuId=110}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-08 17:33:39');
INSERT INTO `sys_oper_log` VALUES ('332', '用户管理', '6', 'com.xyafu.project.system.controller.SysUserController.importData()', 'POST', '1', 'admin', null, '/system/user/importData', '127.0.0.1', '内网IP', 'false', '{\"msg\":\"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 test 导入成功\",\"code\":200}', '0', null, '2019-12-12 20:17:54');
INSERT INTO `sys_oper_log` VALUES ('333', 'content', '2', 'com.xyafu.project.wxapp.controller.AppContentController.edit()', 'PUT', '1', 'admin', null, '/wxapp/content', '127.0.0.1', '内网IP', '{\"updateTime\":1576322818469,\"params\":{},\"title\":\"信阳农林学院简介\",\"content\":\"<p>信阳农林学院是一所公办全日制普通本科学校，坐落于历史文化名城信阳。信阳地处河南省南部，东邻安徽、南接湖北，楚风豫韵交汇交融，素有“北国江南，江南北国”之美誉，是中国著名的宜居之城、旅游之城、创业之城，其优越的地理区位、优美的自然环境、深厚的文化底蕴和活跃的地方建设，为莘莘学子学习深造提供了优越条件。</p><p>&nbsp;</p><p>学校前身为信阳农业高等专科学校，办学历史可追溯到1910年成立的汝宁府中等实业学堂。一百多年来，学校发扬“艰苦创业、负重奋进、团结拼搏、追求卓越”的精神，秉承“志向立高远、学问做精细”的校训，已建成一所以农林学科专业为特色，农学、工学、管理学、文学、理学等多学科协调发展的与区域经济社会发展相适应的应用型普通高校，为社会培养各类人才10余万人，为河南经济社会发展作出了重要贡献。</p><p>&nbsp;</p><p>学校校园占地1430余亩，校舍建筑面积44.5万余平方米。在校学生1.2万余人，教职工850余人，其中专任教师700余人，具有高级专业技术职务教师230余人，具有博士、硕士学位教师550余人。有国家教学名师1人，全国优秀教师1人，全国十佳双创典型导师1人，河南省教学名师2人，省管专家、学术技术带头人、省级骨干教师等高层次人才40余人，省级优秀教学团队2个，省级优秀基层教学组织2个。</p><p>&nbsp;</p><p>学校设有农学院、林学院、水产学院、茶学院、牧医工程学院、食品学院、园艺学院、规划与设计学院、信息工程学院、工商管理学院、财经学院、外国语学院、生物与制药工程学院、旅游管理学院、思想政治理论课教学部、文学艺术教学部、体育教学部、国际交流与合作部、继续教育学院共19个教学单位，设置有植物保护、种子科学与工程、农学、设施农业科学与工程、林学、园林、水产养殖学、水族科学与技术、茶学、动物医学、动物科学、食品科学与工程、食品质量与安全、园艺、城乡规划、风景园林、环境设计、网络工程、数字媒体技术、物流管理、物联网工程、电子商务、市场营销、财务管理、审计学、商务英语、翻译、制药工程、酒店管理、旅游管理等30个本科专业和若干专业方向，以及畜牧兽医、烹饪工艺与营学校教学科研仪器设备总值7900余万元，建有农学、林学、水产养殖、茶学、动物医学、食品科学与工程等各类实验室45个，稳定的校内外实习实训基地200余个，国家级职业教育实训基地2个，省级示范性实训基地4个，省级实验教学示范中心1个，农林实习场1个。图书馆面积2.8万平方米，现代图书管理系统完善，馆藏图书110万余册，学术期刊1000多种，可利用电子图书35万册（种）。建有较完善的计算机网络服务体系。</p><p>&nbsp;</p><p>学校坚持“质量立校，特色兴校，人才强校”的办学思想，坚持以育人为中心、以提高人才培养质量为核心的教学理念，实施“质量提升，内涵带动”发展战略，大力推进教学质量工程建设，走产学研合作道路，形成了鲜明的办学特色。有省级及以上特色优势专业15个，其中中央财政支持提升专业服务能力项目建设专业2个、河南省高等学校专业综合改革试点项目3个（本科），国家级精品课程4门，河南省精品课程7门，省级精品资源课程2门，河南省精品在线开放课程1门。获省级教学成果50项，其中省级教学成果特等奖1项，一等奖7项，二等奖17项。</p><p>&nbsp;</p><p>学校坚持以提高科学研究水平和科技服务能力为目标，强化科技创新与服务平台建设，牵头组建了河南省茶产业技术创新战略联盟、河南省水库生态渔业产业技术创新战略联盟、河南省食药用真菌产业技术创新战略联盟，获批建立豫南植物有害生物绿色防控院士工作站、河南省博士后研发基地和6个省级工程（技术）研究中心、18个市厅级工程技术研究中心、1个省级和6个市级重点实验室，1个市级星创天地。面向信阳及周边地区粮食、林果、水产、茶叶、畜禽、花卉、食品加工、食用菌、中草药等产业发展，积极开展应用研究、技术开发和成果转化，近年来承担省部级以上科研项目300多项，获得省部级奖80余项，获国家专利300余项。获批建立国家级培育示范基地1个、省级培训基地5个、省级培育机构1个、省级科普示范基地1个，省级产学研合作试点项目6个。市校联合建有信阳马克思主义学院、信阳农民大学，学校联合10余家政府机构与100余家企业组建有产学研合作联盟，积极推进政、产、学、研深化合作，支持地方经济社会发展和脱贫攻坚，近年依托河南省博士服务团、科普传播工程项目及省市科技特派员、“三区”人才支持计划科技人员专项计划、驻村第一书记等为载体，积极服务地方经济社会发展，每年开展各类服务活动', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-14 19:26:58');
INSERT INTO `sys_oper_log` VALUES ('334', 'content', '2', 'com.xyafu.project.wxapp.controller.AppContentController.edit()', 'PUT', '1', 'admin', null, '/wxapp/content', '127.0.0.1', '内网IP', '{\"updateTime\":1576322824720,\"params\":{},\"title\":\"信阳农林学院简介\",\"content\":\"<p>信阳农林学院是一所公办全日制普通本科学校，坐落于历史文化名城信阳。信阳地处河南省南部，东邻安徽、南接湖北，楚风豫韵交汇交融，素有“北国江南，江南北国”之美誉，是中国著名的宜居之城、旅游之城、创业之城，其优越的地理区位、优美的自然环境、深厚的文化底蕴和活跃的地方建设，为莘莘学子学习深造提供了优越条件。</p><p>&nbsp;</p><p>学校前身为信阳农业高等专科学校，办学历史可追溯到1910年成立的汝宁府中等实业学堂。一百多年来，学校发扬“艰苦创业、负重奋进、团结拼搏、追求卓越”的精神，秉承“志向立高远、学问做精细”的校训，已建成一所以农林学科专业为特色，农学、工学、管理学、文学、理学等多学科协调发展的与区域经济社会发展相适应的应用型普通高校，为社会培养各类人才10余万人，为河南经济社会发展作出了重要贡献。</p><p>&nbsp;</p><p>学校校园占地1430余亩，校舍建筑面积44.5万余平方米。在校学生1.2万余人，教职工850余人，其中专任教师700余人，具有高级专业技术职务教师230余人，具有博士、硕士学位教师550余人。有国家教学名师1人，全国优秀教师1人，全国十佳双创典型导师1人，河南省教学名师2人，省管专家、学术技术带头人、省级骨干教师等高层次人才40余人，省级优秀教学团队2个，省级优秀基层教学组织2个。</p><p>&nbsp;</p><p>学校设有农学院、林学院、水产学院、茶学院、牧医工程学院、食品学院、园艺学院、规划与设计学院、信息工程学院、工商管理学院、财经学院、外国语学院、生物与制药工程学院、旅游管理学院、思想政治理论课教学部、文学艺术教学部、体育教学部、国际交流与合作部、继续教育学院共19个教学单位，设置有植物保护、种子科学与工程、农学、设施农业科学与工程、林学、园林、水产养殖学、水族科学与技术、茶学、动物医学、动物科学、食品科学与工程、食品质量与安全、园艺、城乡规划、风景园林、环境设计、网络工程、数字媒体技术、物流管理、物联网工程、电子商务、市场营销、财务管理、审计学、商务英语、翻译、制药工程、酒店管理、旅游管理等30个本科专业和若干专业方向，以及畜牧兽医、烹饪工艺与营学校教学科研仪器设备总值7900余万元，建有农学、林学、水产养殖、茶学、动物医学、食品科学与工程等各类实验室45个，稳定的校内外实习实训基地200余个，国家级职业教育实训基地2个，省级示范性实训基地4个，省级实验教学示范中心1个，农林实习场1个。图书馆面积2.8万平方米，现代图书管理系统完善，馆藏图书110万余册，学术期刊1000多种，可利用电子图书35万册（种）。建有较完善的计算机网络服务体系。</p><p>&nbsp;</p><p>学校坚持“质量立校，特色兴校，人才强校”的办学思想，坚持以育人为中心、以提高人才培养质量为核心的教学理念，实施“质量提升，内涵带动”发展战略，大力推进教学质量工程建设，走产学研合作道路，形成了鲜明的办学特色。有省级及以上特色优势专业15个，其中中央财政支持提升专业服务能力项目建设专业2个、河南省高等学校专业综合改革试点项目3个（本科），国家级精品课程4门，河南省精品课程7门，省级精品资源课程2门，河南省精品在线开放课程1门。获省级教学成果50项，其中省级教学成果特等奖1项，一等奖7项，二等奖17项。</p><p>&nbsp;</p><p>学校坚持以提高科学研究水平和科技服务能力为目标，强化科技创新与服务平台建设，牵头组建了河南省茶产业技术创新战略联盟、河南省水库生态渔业产业技术创新战略联盟、河南省食药用真菌产业技术创新战略联盟，获批建立豫南植物有害生物绿色防控院士工作站、河南省博士后研发基地和6个省级工程（技术）研究中心、18个市厅级工程技术研究中心、1个省级和6个市级重点实验室，1个市级星创天地。面向信阳及周边地区粮食、林果、水产、茶叶、畜禽、花卉、食品加工、食用菌、中草药等产业发展，积极开展应用研究、技术开发和成果转化，近年来承担省部级以上科研项目300多项，获得省部级奖80余项，获国家专利300余项。获批建立国家级培育示范基地1个、省级培训基地5个、省级培育机构1个、省级科普示范基地1个，省级产学研合作试点项目6个。市校联合建有信阳马克思主义学院、信阳农民大学，学校联合10余家政府机构与100余家企业组建有产学研合作联盟，积极推进政、产、学、研深化合作，支持地方经济社会发展和脱贫攻坚，近年依托河南省博士服务团、科普传播工程项目及省市科技特派员、“三区”人才支持计划科技人员专项计划、驻村第一书记等为载体，积极服务地方经济社会发展，每年开展各类服务活动', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-14 19:27:04');
INSERT INTO `sys_oper_log` VALUES ('335', '代码生成', '6', 'com.xyafu.project.tool.gen.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'sys_attachments', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-14 22:56:29');
INSERT INTO `sys_oper_log` VALUES ('336', '代码生成', '2', 'com.xyafu.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"xyafu\",\"columns\":[{\"usableColumn\":false,\"columnId\":53,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"附件id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1576335389000,\"tableId\":7,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":54,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"文件名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576335389000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"file_name\"},{\"usableColumn\":false,\"columnId\":55,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"filePath\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":false,\"columnComment\":\"文件地址\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576335389000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"file_path\"},{\"usableColumn\":false,\"columnId\":56,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileSize\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"文件大小\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576335389000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"file_size\"},{\"usableColumn\":false,\"columnId\":57,\"isIncremen', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-14 23:00:37');
INSERT INTO `sys_oper_log` VALUES ('337', '代码生成', '8', 'com.xyafu.project.tool.gen.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', '0', null, '2019-12-14 23:00:44');
INSERT INTO `sys_oper_log` VALUES ('338', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"附件\",\"params\":{},\"parentId\":0,\"path\":\"attachments\",\"component\":\"system/attachments/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2038,\"menuType\":\"C\",\"perms\":\"system:attachments:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-15 13:59:39');
INSERT INTO `sys_oper_log` VALUES ('339', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"附件\",\"params\":{},\"parentId\":0,\"path\":\"attachments\",\"component\":\"system/attachments/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2038,\"menuType\":\"C\",\"perms\":\"system:attachments:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-15 14:00:15');
INSERT INTO `sys_oper_log` VALUES ('340', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"附件\",\"params\":{},\"parentId\":0,\"path\":\"attachments\",\"component\":\"system/attachments/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2038,\"menuType\":\"C\",\"perms\":\"system:attachments:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-15 14:00:29');
INSERT INTO `sys_oper_log` VALUES ('341', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"附件\",\"params\":{},\"parentId\":2000,\"path\":\"attachments\",\"component\":\"system/attachments/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2038,\"menuType\":\"C\",\"perms\":\"system:attachments:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-15 14:00:41');
INSERT INTO `sys_oper_log` VALUES ('342', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"附件\",\"params\":{},\"parentId\":0,\"path\":\"attachments\",\"component\":\"system/attachments/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2038,\"menuType\":\"M\",\"perms\":\"system:attachments:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-15 14:01:50');
INSERT INTO `sys_oper_log` VALUES ('343', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"附件\",\"params\":{},\"parentId\":0,\"path\":\"attachments\",\"component\":\"system/attachments/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2038,\"menuType\":\"M\",\"perms\":\"system:attachments:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-15 14:02:27');
INSERT INTO `sys_oper_log` VALUES ('344', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"附件\",\"params\":{},\"parentId\":2000,\"path\":\"attachments\",\"component\":\"system/attachments/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2038,\"menuType\":\"C\",\"perms\":\"system:attachments:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-15 14:02:49');
INSERT INTO `sys_oper_log` VALUES ('345', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"attachments\",\"orderNum\":\"1\",\"menuName\":\"附件\",\"params\":{},\"parentId\":2000,\"path\":\"attachments\",\"component\":\"system/attachments/index\",\"children\":[],\"createTime\":1551369600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2038,\"menuType\":\"C\",\"perms\":\"system:attachments:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-15 14:09:06');
INSERT INTO `sys_oper_log` VALUES ('346', '菜单管理', '1', 'com.xyafu.project.system.controller.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"附件上传\",\"params\":{},\"parentId\":2038,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"system:attachments:upload\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-15 19:01:37');
INSERT INTO `sys_oper_log` VALUES ('347', '菜单管理', '2', 'com.xyafu.project.system.controller.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"附件上传\",\"params\":{},\"parentId\":2038,\"path\":\"\",\"children\":[],\"createTime\":1576407697000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2044,\"menuType\":\"F\",\"perms\":\"system:attachments:upload\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-15 19:01:58');
INSERT INTO `sys_oper_log` VALUES ('348', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2019-12-15 19:08:54');
INSERT INTO `sys_oper_log` VALUES ('349', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2019-12-15 19:11:15');
INSERT INTO `sys_oper_log` VALUES ('350', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2019-12-15 20:16:53');
INSERT INTO `sys_oper_log` VALUES ('351', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2019-12-15 22:09:00');
INSERT INTO `sys_oper_log` VALUES ('352', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2019-12-15 22:10:35');
INSERT INTO `sys_oper_log` VALUES ('353', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2019-12-15 22:17:46');
INSERT INTO `sys_oper_log` VALUES ('354', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2019-12-15 22:19:37');
INSERT INTO `sys_oper_log` VALUES ('355', '通知公告', '1', 'com.xyafu.project.system.controller.SysNoticeController.add()', 'POST', '1', 'admin', null, '/system/notice', '127.0.0.1', '内网IP', '{\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"test\",\"noticeContent\":\"<p class=\\\"ql-align-center\\\">\\t人文学院成立于***年</p><p class=\\\"ql-align-center\\\"><img src=\\\"http://localhost:8083/profile/upload/2019/12/25/d3406158a18603515c7474ba58aae4b1.jpg\\\"></p>\",\"createBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2019-12-25 17:22:51');
INSERT INTO `sys_oper_log` VALUES ('356', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2020-02-03 16:09:15');
INSERT INTO `sys_oper_log` VALUES ('357', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2020-02-03 16:16:33');
INSERT INTO `sys_oper_log` VALUES ('358', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2020-02-03 16:24:22');
INSERT INTO `sys_oper_log` VALUES ('359', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2020-02-03 16:43:44');
INSERT INTO `sys_oper_log` VALUES ('360', '用户管理', '6', 'com.xyafu.project.system.controller.SysAttachmentsController.upload()', 'POST', '1', 'admin', null, '/system/attachments/upload', '127.0.0.1', '内网IP', '[] {\"params\":{}}', '{}', '0', null, '2020-02-03 16:44:22');
INSERT INTO `sys_oper_log` VALUES ('361', '代码生成', '2', 'com.xyafu.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"xyafu\",\"columns\":[{\"usableColumn\":false,\"columnId\":53,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"附件id\",\"updateTime\":1576335637000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1576335389000,\"tableId\":7,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":54,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"文件名称\",\"isQuery\":\"1\",\"updateTime\":1576335637000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576335389000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"file_name\"},{\"usableColumn\":false,\"columnId\":55,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"filePath\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":false,\"columnComment\":\"文件地址\",\"updateTime\":1576335637000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576335389000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"file_path\"},{\"usableColumn\":false,\"columnId\":56,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileSize\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"文件大小\",\"updateTime\":1576335637000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576335389000,\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-02-04 18:09:25');
INSERT INTO `sys_oper_log` VALUES ('362', '代码生成', '2', 'com.xyafu.project.tool.gen.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"xyafu\",\"columns\":[{\"usableColumn\":false,\"columnId\":53,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"附件id\",\"updateTime\":1580810965000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1576335389000,\"tableId\":7,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":54,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"文件名称\",\"isQuery\":\"1\",\"updateTime\":1580810965000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576335389000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"file_name\"},{\"usableColumn\":false,\"columnId\":55,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"filePath\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":false,\"columnComment\":\"文件地址\",\"updateTime\":1580810965000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(1000)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576335389000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"file_path\"},{\"usableColumn\":false,\"columnId\":56,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"fileSize\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"文件大小\",\"updateTime\":1580810965000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576335389000,\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-02-04 18:10:08');
INSERT INTO `sys_oper_log` VALUES ('363', '附件', '2', 'com.xyafu.project.system.controller.SysAttachmentsController.edit()', 'PUT', '1', 'admin', null, '/system/attachments', '127.0.0.1', '内网IP', '{\"fileName\":\"tg-silence1e9c5d.jp\",\"filePath\":\"http://localhost:8083/profile/upload/2020/02/03/4233c73e59433419d3288f88355d72c9.jpg\",\"mediaType\":\"image/jpeg\",\"updateTime\":1580822241038,\"params\":{},\"suffix\":\"jpg\",\"createBy\":\"admin\",\"createTime\":1580720722000,\"fileSize\":27555,\"id\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-02-04 21:17:21');
INSERT INTO `sys_oper_log` VALUES ('364', '附件', '2', 'com.xyafu.project.system.controller.SysAttachmentsController.edit()', 'PUT', '1', 'admin', null, '/system/attachments', '127.0.0.1', '内网IP', '{\"fileName\":\"tg-silence1e9c5d.jpg\",\"filePath\":\"http://localhost:8083/profile/upload/2020/02/03/4233c73e59433419d3288f88355d72c9.jpg\",\"mediaType\":\"image/jpeg\",\"updateTime\":1580822273407,\"params\":{},\"suffix\":\"jpg\",\"createBy\":\"admin\",\"createTime\":1580720722000,\"fileSize\":27555,\"id\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-02-04 21:17:53');
INSERT INTO `sys_oper_log` VALUES ('365', '附件', '3', 'com.xyafu.project.system.controller.SysAttachmentsController.remove()', 'DELETE', '1', 'admin', null, '/system/attachments/1', '127.0.0.1', '内网IP', '{ids=1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2020-02-04 21:21:22');

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'tea', '老师', '1', '0', 'admin', '2019-03-16 11:33:00', 'admin', '2019-10-11 21:48:37', '');
INSERT INTO `sys_post` VALUES ('2', 'stu', '学生', '2', '0', 'admin', '2019-03-16 11:33:00', 'admin', '2019-10-11 21:48:50', '');
INSERT INTO `sys_post` VALUES ('3', 'user', '普通用户', '3', '0', 'admin', '2019-03-16 11:33:00', 'admin', '2019-10-11 21:51:38', '');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2019-03-16 11:33:00', 'ry', '2019-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2019-03-16 11:33:00', 'admin', '2019-10-26 16:13:45', '普通角色');

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '2000');
INSERT INTO `sys_role_menu` VALUES ('2', '2001');
INSERT INTO `sys_role_menu` VALUES ('2', '2002');
INSERT INTO `sys_role_menu` VALUES ('2', '2003');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '超级管理员', '00', 'xyafu@163.com', '19124039363', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2019-03-16 11:33:00', 'admin', '2019-03-16 11:33:00', 'admin', '2019-10-11 22:29:39', '管理员');
INSERT INTO `sys_user` VALUES ('100', '104', 'ldtianzhe', 'ldtianzhe', '00', '', '', '0', '', '$2a$10$4Yt8fZYs9H6xkQHGcYLGx.pOk.syiU0kMnhgJVR.efQknpWNgZeO6', '0', '0', '', null, 'admin', '2019-10-11 21:46:45', 'admin', '2019-10-19 14:39:37', null);
INSERT INTO `sys_user` VALUES ('101', null, 'test', '测试账户', '00', 'test@163.com', '13333333333', '0', '', '$2a$10$aVAwENhM29QvEHSbonAT6uaN.lf4vdi.JwWrZD1wK/p3s/UI7DGS.', '0', '0', '', null, 'admin', '2019-12-12 20:17:54', '', null, null);

-- ----------------------------
-- Table structure for `sys_user_identity`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_identity`;
CREATE TABLE `sys_user_identity` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `identity_id` bigint(20) NOT NULL COMMENT '身份ID',
  PRIMARY KEY (`user_id`,`identity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与身份关联表';

-- ----------------------------
-- Records of sys_user_identity
-- ----------------------------
INSERT INTO `sys_user_identity` VALUES ('1', '2');
INSERT INTO `sys_user_identity` VALUES ('101', '2');

-- ----------------------------
-- Table structure for `sys_user_online`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('100', '2');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('100', '2');
