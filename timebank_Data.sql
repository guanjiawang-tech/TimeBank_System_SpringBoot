/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : timebank

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 20/01/2025 19:58:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activities
-- ----------------------------
DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities`  (
  `activityId` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `activityName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `activityLocationNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `activityUserId` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `activityStartTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `activityOverTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `activityVolunteerNumber` int(0) NULL DEFAULT NULL,
  `activityLocationInfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `signinCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stage` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`activityId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activities
-- ----------------------------
INSERT INTO `activities` VALUES ('001', '象棋比赛', '210404', '211282200402142410', '2024-12-01 08:00:00', '2024-12-01 17:00:00', 12, '绿地剑桥社区', '112300', '未开始');
INSERT INTO `activities` VALUES ('002', '广场舞大赛', '210404', '211282200402142410', '2024-12-28 08:00:00', '2025-01-01 16:00:00', 20, '绿地剑桥社区', '272369', '未开始');
INSERT INTO `activities` VALUES ('fL3eZl7UdXv18z8lLyYr', '手工大赛', '211204', '211282200402142410', '2024-10-01 14:11:22', '2024-10-03 14:11:25', 22, '清华园社区', '272369', '未开始');
INSERT INTO `activities` VALUES ('H6yJhVksR84hpvDlJEpe', '电影观影活动', '210404', '211282200402142410', '2024-11-06 09:44:48', '2024-11-08 09:44:54', 12, '绿地剑桥社区', '272369', '未开始');

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement`  (
  `announcementId` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `announcementTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `announcementFromtime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `announcementText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`announcementId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('004', '科学家发现新型环保材料，有望大幅降低建筑能耗，推动绿色建筑行业革新。', '2024-4-2 08:00:01', '高隔热与保温性能\r\n传统建筑材料在隔热和保温方面往往存在不足，导致建筑在冬季需要消耗大量能源来供暖，在夏季则需要大量空调制冷。新型环保材料通过创新的结构设计或材料组合，能够显著提高隔热性能，减少室内外热量交换，从而在保持室内舒适温度的同时，显著降低能源消耗。\r\n\r\n自然光利用\r\n一些新型环保材料还具备优异的透光性，能够允许自然光充分进入室内，减少人工照明的需求。这不仅能够降低建筑能耗，还能提升居住者的舒适度和幸福感。同时，合理的自然光利用还有助于改善室内环境，促进人体健康。\r\n\r\n自我清洁与空气净化\r\n部分新型环保材料还具备自我清洁或净化空气的功能。例如，某些材料表面能够吸附并分解空气中的有害物质，如甲醛、苯等挥发性有机化合物（VOCs），从而改善室内空气质量。这种功能对于提高居住者的健康水平具有重要意义。');
INSERT INTO `announcement` VALUES ('4J5xftA1QAYt2DUON1', '内容111', '2024-10-31', '发布标题');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `forumid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '论坛发表编号',
  `userid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `forumdate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `forumtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `forumtext` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`forumid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('002', '211282200604162417', '2024-02-14 14:12:24', '全球科学家携手合作，成功研发出新型新冠疫苗加强针', '在全球抗击新冠疫情的持续努力中，一个由多国科学家组成的国际研究团队宣布了一项重大突破。经过数月的紧密合作与不懈努力，他们成功研发出一种新型新冠疫苗加强针，该疫苗旨在进一步增强人体对新冠病毒的免疫保护，特别是针对当前流行的变异株。这款新型加强针基于最新的病毒基因组学研究成果，针对包括德尔塔（Delta）和奥密克戎（Omicron）在内的多种已知和潜在的高传播性、高致病性变异株进行了优化设计。通过采用先进的mRNA（信使核糖核酸）技术，疫苗能够更高效地诱导人体产生广泛的中和抗体和T细胞反应，从而提供更为全面和持久的免疫屏障。');
INSERT INTO `forum` VALUES ('003', '211282200302142410', '2024-02-15 12:12:24', '全球科技巨头联手推动可持续发展，共同发布绿色创新计划', '在全球气候变化和环境保护日益成为全球共识的背景下，今日，多家国际知名科技公司在[虚构城市]联合宣布了一项名为“绿色未来共创计划”的重大合作项目。该项目旨在通过技术创新与合作，加速全球向低碳、环保、可持续的未来发展转型。参与此次合作的公司包括科技巨头XYZ公司、绿色能源领导者ABC能源、智能城市解决方案提供商DEF智能、以及环保材料创新者GHI环保等，它们覆盖了从清洁能源、智能制造、智慧城市到循环经济等多个关键领域。');
INSERT INTO `forum` VALUES ('005', '211282200604162417', '2024-05-16 14:12:24', '太空探索新突破，多国联合发射深空探测器', '在人类对宇宙的无尽探索中，又一个重要里程碑即将诞生。今日，来自多个国家的航天机构在[虚构发射中心]联合宣布，将共同发射一枚名为“星际探索者”的深空探测器，旨在探索太阳系边缘的未知领域，寻找外星生命的迹象。搭载了先进的科学仪器，包括高分辨率相机、光谱分析仪、生命探测雷达等，能够对目标天体进行详尽的观测和分析。此次任务不仅是对人类科技实力的一次大考，也是国际合作精神的体现。');
INSERT INTO `forum` VALUES ('0e9f6381946511efb1', '', '2024-10-27 21:12:02', '1', '1');
INSERT INTO `forum` VALUES ('2833399b946511efb1', '211282200302142410', '2024-10-27 21:12:45', '1', '1');
INSERT INTO `forum` VALUES ('3c03ee057c9311ef86', '006', '2024-09-27 13:42:08', '这是一个测试帖', '我是内容');
INSERT INTO `forum` VALUES ('3d5b89bf946311efb1', '', '2024-10-27 20:59:02', '1', '1');
INSERT INTO `forum` VALUES ('b14921735aff11ef91', '211282200802012428', '2024-08-15 20:12:50', '手机上测试是否成功', '手机上也很成功呀');
INSERT INTO `forum` VALUES ('daf8425a5a5911ef91', '211282200302142410', '2024-08-15 00:25:44', '真成功了这回，要睡觉了', '晚安');
INSERT INTO `forum` VALUES ('de7a1acf946411efb1', '', '2024-10-27 21:10:42', '1', '1');

-- ----------------------------
-- Table structure for ideasbox
-- ----------------------------
DROP TABLE IF EXISTS `ideasbox`;
CREATE TABLE `ideasbox`  (
  `dateInfo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ideatext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '意见箱'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ideasbox
-- ----------------------------
INSERT INTO `ideasbox` VALUES ('2024-03-01', '211282200302142410', '在静谧的午后，阳光透过稀疏的云层，斑驳地洒在古老的街道上，给这平凡的一天披上了一层温暖的金色外衣。街角的老书店里，书页轻轻翻动的声音与偶尔传来的咖啡香交织在一起，营造出一种时光静好的氛围。人们或坐或立，沉浸在各自的世界里，有的低头阅读，有的则凝视窗外，似乎在寻找着那些被岁月遗忘的故事。这样的场景，让人不由自主地放慢了脚步，想要在这份宁静中多停留片刻，让心灵得到一次温柔的洗礼。生活，在这一刻，变得简单而纯粹，仿佛所有的烦恼都随着那轻轻摇曳的光影，逐渐消散在了无垠的蓝天之下。');
INSERT INTO `ideasbox` VALUES ('2024-10-31', '211282200302142410', '我的意见很重要');

-- ----------------------------
-- Table structure for joins
-- ----------------------------
DROP TABLE IF EXISTS `joins`;
CREATE TABLE `joins`  (
  `userId` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `activeId` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stage` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `joinStartTime` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `joinOverTime` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `times` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`, `activeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of joins
-- ----------------------------
INSERT INTO `joins` VALUES ('211282195002142410', '001', '未开始', '未签到', '', '', '00:00:00');
INSERT INTO `joins` VALUES ('211282197002142420', '001', '未开始', '未签到', '2024-10-31 14:37:47', NULL, '00:03:05');
INSERT INTO `joins` VALUES ('211282200002142420', '001', '未开始', '未签到', '2025-1-8 9:31:33', NULL, '00:00:04');
INSERT INTO `joins` VALUES ('211282200402142410', '002', '未开始', '未签到', '', '', '00:00:00');
INSERT INTO `joins` VALUES ('211282200402142410', 'H6yJhVksR84hpvDlJEpe', '未开始', '未签到', '', '', '00:00:00');

-- ----------------------------
-- Table structure for likeforum
-- ----------------------------
DROP TABLE IF EXISTS `likeforum`;
CREATE TABLE `likeforum`  (
  `userid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `forumid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`userid`, `forumid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of likeforum
-- ----------------------------
INSERT INTO `likeforum` VALUES ('', '');
INSERT INTO `likeforum` VALUES ('006', '003');
INSERT INTO `likeforum` VALUES ('006', 'b14921735aff11ef91');
INSERT INTO `likeforum` VALUES ('211282195002142410', '003');
INSERT INTO `likeforum` VALUES ('211282195002142410', '2833399b946511efb1');
INSERT INTO `likeforum` VALUES ('211282200302142410', '002');
INSERT INTO `likeforum` VALUES ('211282200302142410', '003');
INSERT INTO `likeforum` VALUES ('211282200302142410', 'a5f048887c1b11efb7');
INSERT INTO `likeforum` VALUES ('211282200302142410', 'b14921735aff11ef91');
INSERT INTO `likeforum` VALUES ('211282200604162417', 'b14921735aff11ef91');
INSERT INTO `likeforum` VALUES ('211282200604162417', 'daf8425a5a5911ef91');
INSERT INTO `likeforum` VALUES ('211282200802012428', 'b14921735aff11ef91');
INSERT INTO `likeforum` VALUES ('211282200802012428', 'daf8425a5a5911ef91');

-- ----------------------------
-- Table structure for locationinfo
-- ----------------------------
DROP TABLE IF EXISTS `locationinfo`;
CREATE TABLE `locationinfo`  (
  `locationNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `locationInfoProvinces` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `locationInfoCities` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `locationInfoCounties` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`locationNo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of locationinfo
-- ----------------------------
INSERT INTO `locationinfo` VALUES ('210404', '辽宁省', '抚顺市', '望花区');
INSERT INTO `locationinfo` VALUES ('211204', '辽宁省', '铁岭市', '清河区');
INSERT INTO `locationinfo` VALUES ('211282', '辽宁省', '铁岭市', '开原市');
INSERT INTO `locationinfo` VALUES ('370102', '山东省', '济南市', '历下区');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderId` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userId` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `orderType` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `orderText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `volunteerUserId` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dateInfo` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stage` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `joinsId` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('001', '211282195002142410', '烹饪食物', '我需要请人帮忙给我做饭，会炒菜就行', '211282200002142420', '2025-1-8 15:54:10-2025-1-8 18:28:15', '待审核', '364852');
INSERT INTO `orders` VALUES ('002', '211282195002142410', '生活照料', '帮我洗澡，身体不便，有责任心', '211282200002142420', '2025-1-9 15:54:10-2025-1-9 18:28:15', '待审核', '145965');
INSERT INTO `orders` VALUES ('4SwMbJJ6NxYoq4xNnO', '211282195002142410', '志愿者', '帮我买俩鸡蛋', '', '', '', '753370');
INSERT INTO `orders` VALUES ('XtzA9QYugRZJ5fziT7', '211282195002142410', '志愿者', '帮我医疗陪护', '', '', '', '147845');

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `forumid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `userid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `forumdate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `review` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `touserid` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('b14921735aff11ef91', '211282200604162417', '2024-08-15 20:12:50', '测试', '211282200802012428');
INSERT INTO `review` VALUES ('b14921735aff11ef91', '211282200302142410', '2024-08-16 20:12:50', '是吗', '211282200604162417');
INSERT INTO `review` VALUES ('b14921735aff11ef91', '211282200302142410', '2024-08-26 20:23:37', '我的还是不好使', '211282200802012428');
INSERT INTO `review` VALUES ('b14921735aff11ef91', '211282200302142410', '2024-08-26 20:25:45', '这次好使了，谢谢你的帮助啦，谢谢啦', '211282200802012428');
INSERT INTO `review` VALUES ('b14921735aff11ef91', '211282200802012428', '2024-08-26 20:29:32', '我的也好使了', '211282200302142410');
INSERT INTO `review` VALUES ('a5f048887c1b11efb7', '211282200302142410', '2024-09-26 23:26:28', '评论一下', '211282200302142410');
INSERT INTO `review` VALUES ('003', '211282200302142410', '2024-10-27 21:51:51', '1', '211282200302142410');
INSERT INTO `review` VALUES ('003', '', '2024-10-27 21:53:03', '1', '211282200302142410');
INSERT INTO `review` VALUES ('003', '', '2024-10-27 21:53:57', '1', '211282200302142410');
INSERT INTO `review` VALUES ('003', '', '2024-10-27 21:58:41', '1', '211282200302142410');
INSERT INTO `review` VALUES ('003', '', '2024-10-27 22:03:10', '2', '211282200302142410');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `userId` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `coefficient` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `volTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `volCurrecy` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `volunteerTime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `volunteerText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('211282195002142410', '用户2', '120', '用户', '0.4', '120', '22:16:20', '995', '我是哈啊哈大王', '2024-4-2 08:00:01', '同意我');
INSERT INTO `users` VALUES ('211282197002142420', '志愿者2', '130', '志愿者', '0.6', '130', '24:00:00', '1720', '留下些什么东西吧~', NULL, NULL);
INSERT INTO `users` VALUES ('211282200002142420', '志愿者1', '140', '志愿者', '--', '140', '65:23:56', '192', '留下些什么东西吧~', NULL, NULL);
INSERT INTO `users` VALUES ('211282200302142410', '用户1', '100', '用户', '--', '100', '--', '--', '我最棒了', '2024-4-2 08:00:01', '我最棒');
INSERT INTO `users` VALUES ('211282200402142410', '管理员1', '110', '管理员', '--', '110', '--', '--', '留下些什么东西吧~1', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
