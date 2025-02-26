/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 80017 (8.0.17)
 Source Host           : localhost:3306
 Source Schema         : oj_system

 Target Server Type    : MySQL
 Target Server Version : 80017 (8.0.17)
 File Encoding         : 65001

 Date: 27/12/2024 17:47:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for problem_answers
-- ----------------------------
DROP TABLE IF EXISTS `problem_answers`;
CREATE TABLE `problem_answers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL COMMENT '题目ID',
  `problem_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '题目标题',
  `solution_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '解题思路',
  `code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '解题代码',
  `created_by` int(11) NOT NULL COMMENT '创建者ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `problem_answers_ibfk_1`(`problem_id` ASC) USING BTREE,
  INDEX `problem_answers_ibfk_2`(`created_by` ASC) USING BTREE,
  CONSTRAINT `problem_answers_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `problem_answers_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '题目答案表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of problem_answers
-- ----------------------------
INSERT INTO `problem_answers` VALUES (1, 6, 'Hello, World!', '直接输出', '#include <iostream>\nusing namespace std;\n\nint main() {\n    cout << \"Hello, World!\";\n    return 0;\n}', 2, 'teacher', '2024-12-25 21:01:31', '2024-12-25 21:11:38');

-- ----------------------------
-- Table structure for problem_comments
-- ----------------------------
DROP TABLE IF EXISTS `problem_comments`;
CREATE TABLE `problem_comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL COMMENT '题目的 ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '评论者的用户 ID',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论创建时间',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论更新时间',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `problem_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '题目标题',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `problem_id`(`problem_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `problem_comments_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `problem_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '题目评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of problem_comments
-- ----------------------------
INSERT INTO `problem_comments` VALUES (1, 6, 654, 'Instead of wondering when your next vacation is, maybe you should set up a life you                 ', '2017-03-07 05:59:06', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (3, 6, 765, 'The Synchronize to Database function will give you a full picture of all database differences.', '2014-02-17 16:27:26', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (4, 6, 381, 'To open a query using an external editor, control-click it and select Open with External            ', '2010-07-13 05:24:03', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (5, 6, 481, 'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ', '2012-06-12 06:58:46', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (6, 6, 489, 'Such sessions are also susceptible to session hijacking, where a malicious user takes               ', '2009-06-01 03:46:25', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (8, 6, 966, 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', '2006-06-14 16:12:11', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (10, 6, 219, 'Anyone who has ever made anything of importance was disciplined. Navicat Data Modeler               ', '2009-03-23 09:51:48', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (11, 6, 360, 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', '2012-07-12 05:52:02', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (13, 6, 179, 'Genius is an infinite capacity for taking pains. Actually it is just in an idea when                ', '2011-11-26 19:21:49', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (14, 6, 575, 'In a Telnet session, all communications, including username and password, are transmitted           ', '2006-12-02 09:46:39', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (15, 6, 603, 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', '2020-11-26 19:31:14', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (16, 6, 573, 'The reason why a great man is great is that he resolves to be a great man.', '2002-09-23 14:58:06', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (17, 6, 724, 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ', '2022-01-20 14:30:46', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (18, 6, 928, 'The reason why a great man is great is that he resolves to be a great man.', '2005-05-30 02:27:11', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (19, 6, 836, 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', '2006-03-07 03:01:33', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (20, 6, 630, 'Optimism is the one quality more associated with success and happiness than any other.', '2011-05-15 03:58:04', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (21, 6, 196, 'Genius is an infinite capacity for taking pains. Instead of wondering when your next                ', '2010-10-11 08:09:38', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (32, 6, 106, 'Creativity is intelligence having fun. You can select any connections, objects or                   ', '2014-05-27 13:49:07', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (33, 6, 578, 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', '2009-09-07 08:56:34', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (44, 6, 616, 'Typically, it is employed as an encrypted version of Telnet.', '2019-03-24 20:03:05', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (45, 6, 228, 'Creativity is intelligence having fun.', '2022-03-12 21:57:58', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (46, 6, 675, 'Navicat Cloud could not connect and access your databases. By which it means, it                    ', '2003-09-16 16:10:44', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (47, 6, 219, 'You must be the change you wish to see in the world.', '2023-08-15 00:06:21', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (48, 6, 685, 'How we spend our days is, of course, how we spend our lives.', '2013-06-25 15:22:22', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (49, 6, 908, 'Navicat Monitor is a safe, simple and agentless remote server monitoring tool that                  ', '2017-01-26 14:04:04', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (50, 6, 781, 'The On Startup feature allows you to control what tabs appear when you launch Navicat.', '2023-02-12 12:18:08', '2024-12-26 07:59:45', 'test', 'Hello, World!');
INSERT INTO `problem_comments` VALUES (52, 1, 1, '1', '2024-12-25 02:22:55', '2024-12-25 02:22:55', 'test', '跳跃游戏');
INSERT INTO `problem_comments` VALUES (53, 1, 1, '1', '2024-12-25 02:30:57', '2024-12-25 02:30:57', 'test', '跳跃游戏');
INSERT INTO `problem_comments` VALUES (54, 1, 1, '1', '2024-12-25 02:31:23', '2024-12-25 02:31:23', 'test', '跳跃游戏');

-- ----------------------------
-- Table structure for problem_samples
-- ----------------------------
DROP TABLE IF EXISTS `problem_samples`;
CREATE TABLE `problem_samples`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL COMMENT '题目的 ID',
  `sample_input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '示例输入',
  `sample_output` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '示例输出',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '示例创建时间',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '示例更新时间',
  `problem_explain` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '示例解释',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `problem_samples_ibfk_1`(`problem_id` ASC) USING BTREE,
  CONSTRAINT `problem_samples_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '题目示例表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of problem_samples
-- ----------------------------
INSERT INTO `problem_samples` VALUES (1, 5, '3,9,20,null,null,15,7', '3', '2024-11-29 14:42:28', '2024-11-29 17:29:40', NULL);
INSERT INTO `problem_samples` VALUES (2, 2, '[2, 7, 11, 15],9', '[0, 1]', '2024-11-29 14:45:41', '2024-12-27 12:20:15', '1123');
INSERT INTO `problem_samples` VALUES (3, 3, '[\"dog\", \"dacecar\", \"dar\"]', 'd', '2024-11-29 14:47:35', '2024-12-26 04:43:18', NULL);
INSERT INTO `problem_samples` VALUES (4, 3, '[\"aaog\", \"aaaecar\", \"aar\"]', 'aa', '2024-11-29 14:47:42', '2024-12-26 04:43:15', NULL);
INSERT INTO `problem_samples` VALUES (6, 14, 'madam', 'Yes', '2024-11-29 20:42:32', '2024-11-29 20:42:32', NULL);
INSERT INTO `problem_samples` VALUES (7, 14, 'hello', 'No', '2024-11-29 20:42:47', '2024-11-29 20:42:47', NULL);
INSERT INTO `problem_samples` VALUES (8, 13, '3 1 2', '1 2 3', '2024-11-29 20:43:14', '2024-11-29 20:43:14', NULL);
INSERT INTO `problem_samples` VALUES (9, 13, '5 4 3', '3 4 5', '2024-11-29 20:43:43', '2024-11-29 20:43:43', NULL);
INSERT INTO `problem_samples` VALUES (10, 12, 'hello\nl', '2', '2024-11-29 20:47:01', '2024-11-29 20:47:01', NULL);
INSERT INTO `problem_samples` VALUES (11, 12, 'world\no', '1', '2024-11-29 20:47:17', '2024-11-29 20:47:17', NULL);
INSERT INTO `problem_samples` VALUES (12, 11, '4\n-1 2 -3 4', '2', '2024-11-29 20:48:26', '2024-11-29 20:48:26', NULL);
INSERT INTO `problem_samples` VALUES (13, 11, '3\n1 2 3', '6', '2024-11-29 20:48:41', '2024-11-29 20:48:41', NULL);
INSERT INTO `problem_samples` VALUES (14, 10, 'hello', 'olleh', '2024-11-29 20:49:32', '2024-11-29 20:49:32', NULL);
INSERT INTO `problem_samples` VALUES (16, 10, 'world', 'dlrow', '2024-11-29 20:49:51', '2024-11-29 20:49:51', NULL);
INSERT INTO `problem_samples` VALUES (17, 9, '-5 0 10', '10', '2024-11-29 21:01:02', '2024-11-29 21:01:02', NULL);
INSERT INTO `problem_samples` VALUES (18, 9, '1 2 3', '3', '2024-11-29 21:01:13', '2024-11-29 21:01:13', NULL);
INSERT INTO `problem_samples` VALUES (19, 8, '5', '120', '2024-11-29 21:11:11', '2024-11-29 21:11:11', NULL);
INSERT INTO `problem_samples` VALUES (20, 8, '0', '1', '2024-11-29 21:11:26', '2024-11-29 21:11:26', NULL);
INSERT INTO `problem_samples` VALUES (21, 7, '4', 'Even', '2024-11-29 21:13:45', '2024-11-29 21:13:45', NULL);
INSERT INTO `problem_samples` VALUES (22, 7, '7', 'Odd', '2024-11-29 21:14:00', '2024-11-29 21:14:00', NULL);
INSERT INTO `problem_samples` VALUES (23, 6, '', 'Hello World!', '2024-11-29 23:37:55', '2024-12-26 13:33:47', NULL);
INSERT INTO `problem_samples` VALUES (24, 2, '[2, 7, 11, 15],9', '[2,3]', '2024-12-24 17:50:02', '2024-12-26 03:21:56', '无');
INSERT INTO `problem_samples` VALUES (25, 6, '', 'Hello World!', '2024-11-29 23:37:55', '2024-12-26 14:15:25', '输出要一致');
INSERT INTO `problem_samples` VALUES (28, 1, '1', '1', '2024-12-27 12:13:25', '2024-12-27 12:13:25', '1');

-- ----------------------------
-- Table structure for problems
-- ----------------------------
DROP TABLE IF EXISTS `problems`;
CREATE TABLE `problems`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '题目标题',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '题目描述',
  `input_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '输入描述',
  `output_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '输出描述',
  `time_limit` int(11) NOT NULL COMMENT '时间限制（毫秒）',
  `memory_limit` int(11) NOT NULL COMMENT '内存限制（KB）',
  `difficulty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '题目难度',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '题目标签',
  `visible` tinyint(1) NOT NULL DEFAULT 1 COMMENT '题目是否对所有用户可见',
  `created_by` int(11) NOT NULL COMMENT '创建者用户的 ID',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '题目创建时间',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '题目更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `problems_ibfk_1`(`created_by` ASC) USING BTREE,
  CONSTRAINT `problems_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '题目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of problems
-- ----------------------------
INSERT INTO `problems` VALUES (1, '跳跃游戏', '给你一个非负整数数组 nums ，你最初位于数组的第一个下标。数组中的每个元素代表你在该位置可以跳跃的最大长度。判断你是否能够到达最后一个下标，如果可以，返回 true ；否则，返回 false 。', '一个非负整数数组 nums，表示每个位置可以跳跃的最大长度。', '返回一个布尔值，表示是否可以从第一个下标跳跃到最后一个下标。', 1000, 10240, '中等', '数组,贪心算法', 1, 2, '2024-11-28 18:45:59', '2024-12-23 21:41:46');
INSERT INTO `problems` VALUES (2, '两数之和', '给定一个整数数组 nums 和一个目标值 target，请在该数组中找出和为目标值的那两个整数，并返回它们的数组下标。假设每个输入只对应唯一的答案，且同样的元素不能被重复利用。', '一个整数数组 nums 和一个整数 target。', '返回一个包含两个整数的数组，表示这两个整数的下标。', 1000, 10240, '简单', '数组,哈希表', 1, 2, '2024-11-29 09:03:56', '2024-11-29 23:49:02');
INSERT INTO `problems` VALUES (3, '最长公共前缀', '编写一个函数来查找字符串数组中的最长公共前缀。如果不存在公共前缀，返回空字符串 \"\"。增加测试', '一个字符串数组 strs。', '返回一个字符串，表示最长公共前缀。', 1000, 10240, '简单', '字符串,数组', 1, 2, '2024-11-29 09:04:16', '2024-12-26 14:17:14');
INSERT INTO `problems` VALUES (4, '有效的括号', '给定一个只包含 \'(\', \')\', \'{\', \'}\', \'[\' 和 \']\' 的字符串，判断字符串是否有效。有效字符串需满足：左括号必须用相同类型的右括号闭合；左括号必须以正确的顺序闭合。', '一个字符串 s。', '返回一个布尔值，表示字符串是否有效。', 1000, 10240, '简单', '栈,字符串', 1, 2, '2024-11-29 09:04:30', '2024-12-27 11:07:43');
INSERT INTO `problems` VALUES (5, '二叉树的最大深度', '给定一个二叉树，找出其最大深度。二叉树的深度是指从根节点到最远叶子节点的最长路径上的节点数。', 'test一个二叉树的根节点 root。', '返回一个整数，表示二叉树的最大深度。', 1000, 10240, '困难', '树,深度优先搜索,广度优先搜索', 1, 2, '2024-11-29 09:04:40', '2024-12-26 15:22:15');
INSERT INTO `problems` VALUES (6, 'Hello, World!', '编写一个程序，输出 \'Hello, World!\'。', '无', '输出 \'Hello, World!\'。', 1000, 10240, '简单', '字符串', 1, 2, '2024-11-29 20:37:57', '2024-11-29 23:52:54');
INSERT INTO `problems` VALUES (7, '判断奇偶数', '编写一个程序，读取一个整数并判断它是奇数还是偶数。', '一个整数 n。', '如果 n 是偶数，输出 \'Even\'；如果 n 是奇数，输出 \'Odd\'。', 1000, 10240, '简单', '条件语句', 1, 2, '2024-11-29 20:38:53', '2024-11-29 23:52:54');
INSERT INTO `problems` VALUES (8, '计算阶乘', '编写一个程序，读取一个非负整数 n 并计算其阶乘 n!。', '一个非负整数 n。', '输出 n! 的结果。', 1000, 10240, '中等', '循环, 数学', 1, 2, '2024-11-29 20:39:11', '2024-11-29 23:52:54');
INSERT INTO `problems` VALUES (9, '最大值', '编写一个程序，读取三个整数并输出其中的最大值。', '三个整数 a, b, c。', '输出这三个整数中的最大值。', 1000, 10240, '简单', '条件语句', 1, 2, '2024-11-29 20:39:24', '2024-11-29 23:52:54');
INSERT INTO `problems` VALUES (10, '字符串反转', '编写一个程序，读取一个字符串并输出它的反转。', '一个字符串 s。', '输出字符串 s 的反转。', 1000, 10240, '简单', '字符串', 1, 2, '2024-11-29 20:39:41', '2024-11-29 23:52:54');
INSERT INTO `problems` VALUES (11, '数组求和', '编写一个程序，读取一个整数数组并输出数组元素的总和。', '第一行是一个整数 n，表示数组的长度。第二行是 n 个整数。', '输出数组元素的总和。', 1000, 10240, '简单', '数组, 循环', 1, 2, '2024-11-29 20:40:19', '2024-11-29 23:52:54');
INSERT INTO `problems` VALUES (12, '查找字符', '编写一个程序，读取一个字符串和一个字符，输出该字符在字符串中出现的次数。', '第一行是一个字符串 s，第二行是一个字符 c。', '输出字符 c 在字符串 s 中出现的次数。', 1000, 10240, '简单', '字符串, 循环', 1, 2, '2024-11-29 20:40:33', '2024-11-29 23:52:54');
INSERT INTO `problems` VALUES (13, '简单排序', '编写一个程序，读取三个整数并将它们按升序排列后输出。', '三个整数 a, b, c。', '输出这三个整数按升序排列后的结果。', 1000, 10240, '简单', '排序, 条件语句', 1, 2, '2024-11-29 20:40:46', '2024-11-29 23:52:54');
INSERT INTO `problems` VALUES (14, '判断回文', '编写一个程序，读取一个字符串并判断它是否是回文（正读反读都一样的字符串）。', '一个字符串 s。', '如果 s 是回文，输出 \'Yes\'；否则输出 \'No\'。', 1000, 10240, '简单', '字符串, 条件语句', 1, 2, '2024-11-29 20:41:26', '2024-11-29 23:52:54');
INSERT INTO `problems` VALUES (15, '判断回文', '编写一个程序，读取一个字符串并判断它是否是回文（正读反读都一样的字符串）。', '一个字符串 s。', '如果 s 是回文，输出 \'Yes\'；否则输出 \'No\'。', 1, 10240, '简单', '字符串, 条件语句', 1, 2, '2024-11-29 20:41:26', '2024-12-05 23:40:29');

-- ----------------------------
-- Table structure for submissions
-- ----------------------------
DROP TABLE IF EXISTS `submissions`;
CREATE TABLE `submissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL COMMENT '题目的 ID',
  `user_id` int(11) NOT NULL COMMENT '提交者的用户 ID',
  `code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '提交的代码',
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '代码的语言',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '提交状态',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '编译或运行错误的具体信息',
  `runtime` int(11) NULL DEFAULT NULL COMMENT '运行时间（毫秒）',
  `memory` int(11) NULL DEFAULT NULL COMMENT '使用内存（KB）',
  `score` int(11) NULL DEFAULT NULL COMMENT '提交的得分',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '提交创建时间',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '提交更新时间',
  `fingerprint` json NOT NULL COMMENT '代码指纹',
  `duplication_rate` decimal(5, 2) NULL DEFAULT NULL COMMENT '重复率',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `problem_id`(`problem_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `submissions_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `submissions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '提交表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of submissions
-- ----------------------------
INSERT INTO `submissions` VALUES (1, 6, 5, '#include <iostream>\n\nint main() {\n    std::cout << \"Hello, World!\" << std::endl;\n    return 0;\n}', '52', 'Accepted', '', 8, 580, 100, '2024-12-24 01:42:03', '2024-12-24 02:08:26', '[-2136245985, -2126182947, -2132997628, -2144422668, -2133039776, -2135493556, -2142216799, -2130045511, -2146365330, -2135513088, -2139453647, -2142119595, -2142325664, -2138884946, -2146470496, -2146218578, -2141736282, -2145060192, -2124701361, -2121362458, -2139231085, -2139776699, -2108107963, -2135123482, -2145985231, -2147231598, -2145334670, -2123493118, -2107396024, -2141795395, -2144349223, -2118030909, -2115933238, -2142057495, -2144703860, -2121532388, -2143484203, -2142945175, -2139524762, -2144097489, -2133321274, -2136864206, -2146858925, -2139563648, -2146486288, -2137538237, -2146831931, -2146317368, -2142645156, -2114841585, -2136454899, -2109211811, -2117114419, -2147360627, -2145823314, -2131962097, -2129957579, -2133602028, -2138168019, -2146945488, -2137882301, -2131749630, -2144218821, -2147477241, -2131304958, -2146498514, -2143321622, -2141601499, -2145245941, -2124594182, -2142995213, -2136453740, -2142894986, -2139174777, -2114163391, -2135023183, -2137264396, -2135180102, -2135779155, -2142121488, -2132959487, -2136442501, -2132498039, -2138047705, -2136500317, -2135497994, -2110168954, -2136157751, -2109666757, -2125813917, -2136317841, -2126795121, -2146167493, -2144896531, -2134211485, -2138241853, -2144804551, -2131151750, -2139534422, -2135761565, -2132066429, -2146132728, -2146058029, -2145933835, -2131950011, -2140157699, -2138274587, -2143892688, -2147110642, -2144848540, -2144673824, -2136648765, -2145350665, -2121698690, -2144788407, -2141217480, -2140549031, -2143024133, -2139331722, -2144197425, -2141601984, -2141463289, -2141961338, -2143589334, -2120766501, -2105639850, -2134717767, -2133947266]', 0.00);
INSERT INTO `submissions` VALUES (3, 5, 1, '#include <iostream>\n\nint main() {\n    std::cout << \"Hello, World!\" << std::endl;\n    return 0;\n}', '52', 'Failed', '', NULL, NULL, NULL, '2024-12-24 01:42:18', '2024-12-24 01:42:18', '[-2136245985, -2126182947, -2132997628, -2144422668, -2133039776, -2135493556, -2142216799, -2130045511, -2146365330, -2135513088, -2139453647, -2142119595, -2142325664, -2138884946, -2146470496, -2146218578, -2141736282, -2145060192, -2124701361, -2121362458, -2139231085, -2139776699, -2108107963, -2135123482, -2145985231, -2147231598, -2145334670, -2123493118, -2107396024, -2141795395, -2144349223, -2118030909, -2115933238, -2142057495, -2144703860, -2121532388, -2143484203, -2142945175, -2139524762, -2144097489, -2133321274, -2136864206, -2146858925, -2139563648, -2146486288, -2137538237, -2146831931, -2146317368, -2142645156, -2114841585, -2136454899, -2109211811, -2117114419, -2147360627, -2145823314, -2131962097, -2129957579, -2133602028, -2138168019, -2146945488, -2137882301, -2131749630, -2144218821, -2147477241, -2131304958, -2146498514, -2143321622, -2141601499, -2145245941, -2124594182, -2142995213, -2136453740, -2142894986, -2139174777, -2114163391, -2135023183, -2137264396, -2135180102, -2135779155, -2142121488, -2132959487, -2136442501, -2132498039, -2138047705, -2136500317, -2135497994, -2110168954, -2136157751, -2109666757, -2125813917, -2136317841, -2126795121, -2146167493, -2144896531, -2134211485, -2138241853, -2144804551, -2131151750, -2139534422, -2135761565, -2132066429, -2146132728, -2146058029, -2145933835, -2131950011, -2140157699, -2138274587, -2143892688, -2147110642, -2144848540, -2144673824, -2136648765, -2145350665, -2121698690, -2144788407, -2141217480, -2140549031, -2143024133, -2139331722, -2144197425, -2141601984, -2141463289, -2141961338, -2143589334, -2120766501, -2105639850, -2134717767, -2133947266]', NULL);
INSERT INTO `submissions` VALUES (4, 14, 1, '#include <iostream>\n#include <string>\n#include <cctype> // for isalnum and tolower\n\nusing namespace std;\n\nbool isPalindrome(const string& str) {\n    int left = 0;\n    int right = str.length() - 1;\n\n    while (left < right) {\n        // Skip non-alphanumeric characters from the left\n        while (left < right && !isalnum(str[left])) ++left;\n        // Skip non-alphanumeric characters from the right\n        while (left < right && !isalnum(str[right])) --right;\n        \n        // Compare characters in a case-insensitive manner\n        if (tolower(str[left]) != tolower(str[right])) return false;\n        \n        ++left;\n        --right;\n    }\n    \n    return true;\n}\n\nint main() {\n    string input;\n    getline(cin, input); // Read the entire line of input\n    \n    cout << (isPalindrome(input) ? \"Yes\" : \"No\") << endl;\n    \n    return 0;\n}', '52', 'Accepted', '', 3, 584, 100, '2024-12-24 01:41:43', '2024-12-26 14:07:42', '[-2142981960, -2140804188, -2146631358, -2145002924, -2135921397, -2146812873, -2142216799, -2136172057, -2146365330, -2138401569, -2146751074, -2145983248, -2142325664, -2146700641, -2146470496, -2146218578, -2141736282, -2145060192, -2143963519, -2134734454, -2142288206, -2139776699, -2138343828, -2141115652, -2145985231, -2147231598, -2145334670, -2143333372, -2145808735, -2145327046, -2144349223, -2141104064, -2144585989, -2142057495, -2144703860, -2145684104, -2143484203, -2144736863, -2147195745, -2133129712, -2132722853, -2146063672, -2146858925, -2146588930, -2146486288, -2134390841, -2142742416, -2146317368, -2146086171, -2142582330, -2136454899, -2139992995, -2146087973, -2147360627, -2145823314, -2144743462, -2144307637, -2130179716, -2138168019, -2146945488, -2137882301, -2131749630, -2144218821, -2147477241, -2139892643, -2146498514, -2143321622, -2141601499, -2145245941, -2132168618, -2142995213, -2138784003, -2142894986, -2139174777, -2146382562, -2135023183, -2147264875, -2137106038, -2147187469, -2134156654, -2135610192, -2136442501, -2142408092, -2138047705, -2145539964, -2135497994, -2143855817, -2144623906, -2119464064, -2137211313, -2137757982, -2131857909, -2141686057, -2144896531, -2145611607, -2138241853, -2147029914, -2145537636, -2144214573, -2144342384, -2143348733, -2141123873, -2135540869, -2145933835, -2142119151, -2144965284, -2143310194, -2143892688, -2147110642, -2146287675, -2133122494, -2144535815, -2145601369, -2137492369, -2146730307, -2144834039, -2147457782, -2144023643, -2147070394, -2144197425, -2141601984, -2141463289, -2141961338, -2143589334, -2145836771, -2146623979, -2140612922, -2145457242]', NULL);
INSERT INTO `submissions` VALUES (5, 6, 6, '#include <iostream>\n\nint main() {\n    std::cout << \"Hello, World!\" << std::endl;\n    return 0;\n}', '52', 'Accepted', '', 3, 580, NULL, '2024-12-24 02:08:36', '2024-12-24 02:12:15', '[-2136245985, -2126182947, -2132997628, -2144422668, -2133039776, -2135493556, -2142216799, -2130045511, -2146365330, -2135513088, -2139453647, -2142119595, -2142325664, -2138884946, -2146470496, -2146218578, -2141736282, -2145060192, -2124701361, -2121362458, -2139231085, -2139776699, -2108107963, -2135123482, -2145985231, -2147231598, -2145334670, -2123493118, -2107396024, -2141795395, -2144349223, -2118030909, -2115933238, -2142057495, -2144703860, -2121532388, -2143484203, -2142945175, -2139524762, -2144097489, -2133321274, -2136864206, -2146858925, -2139563648, -2146486288, -2137538237, -2146831931, -2146317368, -2142645156, -2114841585, -2136454899, -2109211811, -2117114419, -2147360627, -2145823314, -2131962097, -2129957579, -2133602028, -2138168019, -2146945488, -2137882301, -2131749630, -2144218821, -2147477241, -2131304958, -2146498514, -2143321622, -2141601499, -2145245941, -2124594182, -2142995213, -2136453740, -2142894986, -2139174777, -2114163391, -2135023183, -2137264396, -2135180102, -2135779155, -2142121488, -2132959487, -2136442501, -2132498039, -2138047705, -2136500317, -2135497994, -2110168954, -2136157751, -2109666757, -2125813917, -2136317841, -2126795121, -2146167493, -2144896531, -2134211485, -2138241853, -2144804551, -2131151750, -2139534422, -2135761565, -2132066429, -2146132728, -2146058029, -2145933835, -2131950011, -2140157699, -2138274587, -2143892688, -2147110642, -2144848540, -2144673824, -2136648765, -2145350665, -2121698690, -2144788407, -2141217480, -2140549031, -2143024133, -2139331722, -2144197425, -2141601984, -2141463289, -2141961338, -2143589334, -2120766501, -2105639850, -2134717767, -2133947266]', 100.00);
INSERT INTO `submissions` VALUES (6, 6, 7, '#include <iostream>\n\nint main() {\n    std::cout << \"Hello, Wasfawfafffffffffffffffffffffffffffffffffffffsssssssssssssssssssssssssssssssssssssssssssssssssorld!\" << std::endl;\n    return 0;\n}', '52', 'Failed', '', 4, 576, NULL, '2024-12-24 02:32:07', '2024-12-24 17:06:17', '[-2136245985, -2126182947, -2132997628, -2144422668, -2133039776, -2135493556, -2142216799, -2130045511, -2146365330, -2135513088, -2139453647, -2142119595, -2142325664, -2138884946, -2146470496, -2146218578, -2141736282, -2147278923, -2124701361, -2121362458, -2139231085, -2139776699, -2108107963, -2135123482, -2145985231, -2147231598, -2145334670, -2123493118, -2107396024, -2141795395, -2144349223, -2118030909, -2138525730, -2142057495, -2144703860, -2121532388, -2143484203, -2142945175, -2139524762, -2144097489, -2133321274, -2136864206, -2146858925, -2139563648, -2146486288, -2137538237, -2146831931, -2146317368, -2142645156, -2114841585, -2136454899, -2109211811, -2123073416, -2147360627, -2145823314, -2131962097, -2129957579, -2133602028, -2138168019, -2146945488, -2137882301, -2131749630, -2144218821, -2147477241, -2131304958, -2146498514, -2143321622, -2141601499, -2145245941, -2124594182, -2142995213, -2136453740, -2142894986, -2139174777, -2114163391, -2135023183, -2131526178, -2135180102, -2135779155, -2142121488, -2132959487, -2136442501, -2132498039, -2138047705, -2136500317, -2135497994, -2110168954, -2136157751, -2109666757, -2125813917, -2136317841, -2126795121, -2146167493, -2144896531, -2134211485, -2138241853, -2144804551, -2131151750, -2139534422, -2135761565, -2132066429, -2146132728, -2146058029, -2145933835, -2131950011, -2140157699, -2138274587, -2143892688, -2147110642, -2144848540, -2144673824, -2136648765, -2145350665, -2121698690, -2144788407, -2141217480, -2140549031, -2143024133, -2139331722, -2144197425, -2141601984, -2141463289, -2141961338, -2143589334, -2120766501, -2105639850, -2134717767, -2133947266]', 96.88);
INSERT INTO `submissions` VALUES (7, 6, 8, '#include <iostream>\n\nint main() {\n    std::cout << \"Hello, Wa1!\" << std::endl;\n    return 0;\n}', '52', 'Failed', '', NULL, NULL, NULL, '2024-12-24 17:06:34', '2024-12-24 17:07:13', '[-2136245985, -2126182947, -2132997628, -2144422668, -2133039776, -2135493556, -2142216799, -2130045511, -2146365330, -2135513088, -2139453647, -2142119595, -2142325664, -2138884946, -2146470496, -2146218578, -2141736282, -2145060192, -2124701361, -2121362458, -2139231085, -2139776699, -2108107963, -2135123482, -2145985231, -2147231598, -2145334670, -2123493118, -2107396024, -2141795395, -2144349223, -2118030909, -2115933238, -2142057495, -2144703860, -2121532388, -2143484203, -2142945175, -2139524762, -2144097489, -2133321274, -2136864206, -2146858925, -2139563648, -2146486288, -2134530716, -2146831931, -2146317368, -2142645156, -2114841585, -2136454899, -2109211811, -2117114419, -2147360627, -2145823314, -2131962097, -2129957579, -2133602028, -2138168019, -2146945488, -2137882301, -2131749630, -2144218821, -2147477241, -2131304958, -2146498514, -2143321622, -2141601499, -2145245941, -2124594182, -2142995213, -2136453740, -2142894986, -2139174777, -2114163391, -2135023183, -2131526178, -2135180102, -2135779155, -2142121488, -2132959487, -2136442501, -2132498039, -2138047705, -2136500317, -2135497994, -2110168954, -2136157751, -2109666757, -2125813917, -2136317841, -2126795121, -2141686057, -2144896531, -2134211485, -2138241853, -2144804551, -2131151750, -2139534422, -2135761565, -2132066429, -2146132728, -2135540869, -2145933835, -2131950011, -2140157699, -2138274587, -2143892688, -2147110642, -2144848540, -2144673824, -2136648765, -2145350665, -2121698690, -2144788407, -2141217480, -2140549031, -2143024133, -2139331722, -2144197425, -2141601984, -2141463289, -2141961338, -2143589334, -2120766501, -2105639850, -2134717767, -2133947266]', 96.88);
INSERT INTO `submissions` VALUES (8, 6, 9, '#include <iostream>\n\nint main() {\n    std::cout << \"Hello, World!\" << std::endl;\n    return 0;\n}', '52', 'Accepted', '', 3, 576, 100, '2024-12-24 17:07:18', '2024-12-24 17:07:25', '[-2136245985, -2126182947, -2132997628, -2144422668, -2133039776, -2135493556, -2142216799, -2130045511, -2146365330, -2135513088, -2139453647, -2142119595, -2142325664, -2138884946, -2146470496, -2146218578, -2141736282, -2145060192, -2124701361, -2121362458, -2139231085, -2139776699, -2108107963, -2135123482, -2145985231, -2147231598, -2145334670, -2123493118, -2107396024, -2141795395, -2144349223, -2118030909, -2115933238, -2142057495, -2144703860, -2121532388, -2143484203, -2142945175, -2139524762, -2144097489, -2133321274, -2136864206, -2146858925, -2139563648, -2146486288, -2137538237, -2146831931, -2146317368, -2142645156, -2114841585, -2136454899, -2109211811, -2117114419, -2147360627, -2145823314, -2131962097, -2129957579, -2133602028, -2138168019, -2146945488, -2137882301, -2131749630, -2144218821, -2147477241, -2131304958, -2146498514, -2143321622, -2141601499, -2145245941, -2124594182, -2142995213, -2136453740, -2142894986, -2139174777, -2114163391, -2135023183, -2137264396, -2135180102, -2135779155, -2142121488, -2132959487, -2136442501, -2132498039, -2138047705, -2136500317, -2135497994, -2110168954, -2136157751, -2109666757, -2125813917, -2136317841, -2126795121, -2146167493, -2144896531, -2134211485, -2138241853, -2144804551, -2131151750, -2139534422, -2135761565, -2132066429, -2146132728, -2146058029, -2145933835, -2131950011, -2140157699, -2138274587, -2143892688, -2147110642, -2144848540, -2144673824, -2136648765, -2145350665, -2121698690, -2144788407, -2141217480, -2140549031, -2143024133, -2139331722, -2144197425, -2141601984, -2141463289, -2141961338, -2143589334, -2120766501, -2105639850, -2134717767, -2133947266]', 100.00);
INSERT INTO `submissions` VALUES (11, 3, 6, '\n\n\n\n#include <iostream>\n#include <vector>\n#include <string>\n#include <sstream>\n#include <algorithm>\n\nusing namespace std;\n\n// 计算最长公共前缀\nstring longestCommonPrefix(const vector<string>& strs) {\n    if (strs.empty()) return \"\";\n\n    // 找到最短的字符串长度\n    size_t min_length = min_element(strs.begin(), strs.end(), \n        [](const string& a, const string& b) { return a.size() < b.size(); })->size();\n\n    // 比较每个字符\n    for (size_t i = 0; i < min_length; ++i) {\n        char c = strs[0][i];\n        for (size_t j = 1; j < strs.size(); ++j) {\n            if (strs[j][i] != c) {\n                return strs[0].substr(0, i);\n            }\n        }\n    }\n\n    return strs[0].substr(0, min_length);\n}\n\n// 从标准输入读取并解析输入数据\nvector<string> readInput() {\n    string line;\n    getline(cin, line);  // 读取整行输入\n\n    // 去除开头的 \'[\' 和结尾的 \']\'\n    line.erase(remove(line.begin(), line.end(), \'[\'), line.end());\n    line.erase(remove(line.begin(), line.end(), \']\'), line.end());\n\n    stringstream ss(line);\n    string token;\n    vector<string> values;\n\n    while (getline(ss, token, \',\')) {\n        // 移除引号\n        token.erase(remove_if(token.begin(), token.end(), [](char ch) { return ch == \'\"\'; }), token.end());\n\n        // 去除可能的空格\n        token.erase(remove_if(token.begin(), token.end(), ::isspace), token.end());\n\n        if (!token.empty()) {\n            values.push_back(token);\n        }\n    }\n\n    return values;\n}\n\nint main() {\n    // 从标准输入读取数据\n    vector<string> strs = readInput();\n\n    // 计算并输出最长公共前缀\n    cout << longestCommonPrefix(strs);\n\n    return 0;\n}\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', '52', 'Accepted', '', 3, 584, 66, '2024-12-26 05:11:00', '2024-12-26 05:11:00', '[-2145732759, -2132158276, -2146631358, -2144422668, -2142758718, -2146812873, -2144042049, -2136172057, -2146365330, -2145613739, -2146751074, -2145193556, -2144411021, -2146700641, -2146470496, -2146218578, -2141736282, -2147278923, -2143963519, -2142313950, -2145210516, -2147083714, -2141703892, -2145998155, -2145985231, -2147231598, -2145334670, -2128198679, -2140139388, -2146759368, -2144349223, -2146892660, -2144585989, -2146335006, -2144703860, -2145684104, -2147308707, -2146845555, -2140905461, -2145344055, -2133786548, -2146063672, -2146858925, -2146588930, -2146540026, -2138970064, -2142647626, -2146317368, -2146491383, -2134966439, -2136454899, -2139992995, -2146340643, -2147360627, -2145823314, -2144743462, -2143047375, -2145711883, -2144882034, -2146945488, -2139179315, -2137263877, -2144218821, -2147477241, -2147237290, -2146498514, -2143321622, -2141601499, -2145245941, -2146228369, -2146429439, -2145530425, -2142894986, -2139174777, -2141279393, -2140786092, -2134545215, -2141482182, -2141840705, -2139473883, -2145257430, -2136442501, -2146160458, -2143828375, -2145539964, -2145297665, -2143855817, -2144623906, -2137023708, -2144788846, -2147401923, -2147177877, -2145696916, -2144896531, -2142682025, -2144128834, -2144804551, -2144672363, -2139534422, -2145140563, -2143348733, -2141123873, -2136713185, -2146480823, -2146552700, -2147182900, -2143829854, -2147358585, -2147110642, -2146287675, -2138889290, -2144535815, -2145601369, -2145981619, -2144788407, -2144435962, -2147048629, -2144023643, -2142618817, -2145555935, -2147250652, -2141463289, -2141961338, -2145962926, -2138407441, -2141192247, -2140612922, -2145457242]', 100.00);
INSERT INTO `submissions` VALUES (12, 3, 6, '\n\n\n\n#include <iostream>\n#include <vector>\n#include <string>\n#include <sstream>\n#include <algorithm>\n\nusing namespace std;\n\n// 计算最长公共前缀\nstring longestCommonPrefix(const vector<string>& strs) {\n    if (strs.empty()) return \"\";\n\n    // 找到最短的字符串长度\n    size_t min_length = min_element(strs.begin(), strs.end(), \n        [](const string& a, const string& b) { return a.size() < b.size(); })->size();\n\n    // 比较每个字符\n    for (size_t i = 0; i < min_length; ++i) {\n        char c = strs[0][i];\n        for (size_t j = 1; j < strs.size(); ++j) {\n            if (strs[j][i] != c) {\n                return strs[0].substr(0, i);\n            }\n        }\n    }\n\n    return strs[0].substr(0, min_length);\n}\n\n// 从标准输入读取并解析输入数据\nvector<string> readInput() {\n    string line;\n    getline(cin, line);  // 读取整行输入\n\n    // 去除开头的 \'[\' 和结尾的 \']\'\n    line.erase(remove(line.begin(), line.end(), \'[\'), line.end());\n    line.erase(remove(line.begin(), line.end(), \']\'), line.end());\n\n    stringstream ss(line);\n    string token;\n    vector<string> values;\n\n    while (getline(ss, token, \',\')) {\n        // 移除引号\n        token.erase(remove_if(token.begin(), token.end(), [](char ch) { return ch == \'\"\'; }), token.end());\n\n        // 去除可能的空格\n        token.erase(remove_if(token.begin(), token.end(), ::isspace), token.end());\n\n        if (!token.empty()) {\n            values.push_back(token);\n        }\n    }\n\n    return values;\n}\n\nint main() {\n    // 从标准输入读取数据\n    vector<string> strs = readInput();\n\n    // 计算并输出最长公共前缀\n    cout << longestCommonPrefix(strs);\n\n    return 0;\n}\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', '52', 'Accepted', '', 4, 584, 77, '2024-12-26 05:11:00', '2024-12-26 05:11:00', '[-2145732759, -2132158276, -2146631358, -2144422668, -2142758718, -2146812873, -2144042049, -2136172057, -2146365330, -2145613739, -2146751074, -2145193556, -2144411021, -2146700641, -2146470496, -2146218578, -2141736282, -2147278923, -2143963519, -2142313950, -2145210516, -2147083714, -2141703892, -2145998155, -2145985231, -2147231598, -2145334670, -2128198679, -2140139388, -2146759368, -2144349223, -2146892660, -2144585989, -2146335006, -2144703860, -2145684104, -2147308707, -2146845555, -2140905461, -2145344055, -2133786548, -2146063672, -2146858925, -2146588930, -2146540026, -2138970064, -2142647626, -2146317368, -2146491383, -2134966439, -2136454899, -2139992995, -2146340643, -2147360627, -2145823314, -2144743462, -2143047375, -2145711883, -2144882034, -2146945488, -2139179315, -2137263877, -2144218821, -2147477241, -2147237290, -2146498514, -2143321622, -2141601499, -2145245941, -2146228369, -2146429439, -2145530425, -2142894986, -2139174777, -2141279393, -2140786092, -2134545215, -2141482182, -2141840705, -2139473883, -2145257430, -2136442501, -2146160458, -2143828375, -2145539964, -2145297665, -2143855817, -2144623906, -2137023708, -2144788846, -2147401923, -2147177877, -2145696916, -2144896531, -2142682025, -2144128834, -2144804551, -2144672363, -2139534422, -2145140563, -2143348733, -2141123873, -2136713185, -2146480823, -2146552700, -2147182900, -2143829854, -2147358585, -2147110642, -2146287675, -2138889290, -2144535815, -2145601369, -2145981619, -2144788407, -2144435962, -2147048629, -2144023643, -2142618817, -2145555935, -2147250652, -2141463289, -2141961338, -2145962926, -2138407441, -2141192247, -2140612922, -2145457242]', 0.00);
INSERT INTO `submissions` VALUES (13, 6, 1, '#include <iostream>\n\nusing namespace std;\n\nint main()\n{\n    cout << \"Hello World!\\n\";\n}\n\n\n\n\n\n\n\n\n\n', '52', 'Accepted', '', 3, 488, 99, '2024-12-27 11:18:08', '2024-12-27 11:18:08', '[-2136245985, -2126182947, -2132997628, -2138720647, -2133039776, -2128976779, -2142216799, -2130045511, -2146365330, -2138401569, -2139453647, -2142119595, -2142325664, -2138884946, -2146470496, -2146218578, -2141736282, -2146622834, -2127946969, -2118455293, -2139231085, -2139776699, -2108107963, -2132796874, -2145985231, -2147231598, -2139887877, -2123493118, -2138450298, -2141213851, -2144349223, -2118030909, -2144585989, -2142057495, -2144703860, -2145684104, -2141118126, -2142945175, -2138413172, -2141374675, -2131690822, -2103864986, -2146858925, -2146156087, -2144960537, -2137538237, -2140641309, -2146317368, -2142645156, -2095365973, -2136454899, -2104140096, -2117114419, -2144160961, -2145823314, -2131962097, -2142101036, -2129441592, -2138168019, -2146945488, -2137882301, -2131749630, -2118473752, -2146309163, -2119225033, -2146498514, -2143321622, -2131772204, -2145245941, -2125969024, -2142995213, -2122326716, -2142894986, -2139174777, -2114163391, -2135023183, -2137264396, -2137106038, -2135779155, -2137897204, -2129166045, -2136442501, -2132498039, -2138047705, -2131876140, -2135497994, -2110168954, -2136157751, -2138918824, -2125813917, -2126472539, -2126795121, -2141686057, -2144896531, -2126930970, -2138241853, -2144804551, -2101259346, -2139534422, -2135761565, -2119639791, -2146132728, -2135540869, -2145933835, -2131950011, -2140157699, -2138274587, -2143892688, -2147110642, -2144848540, -2127695249, -2144535815, -2145601369, -2121698690, -2144788407, -2141217480, -2147055783, -2144023643, -2139331722, -2144197425, -2141601984, -2141463289, -2141961338, -2143589334, -2120766501, -2105639850, -2134717767, -2133947266]', NULL);

-- ----------------------------
-- Table structure for test_cases
-- ----------------------------
DROP TABLE IF EXISTS `test_cases`;
CREATE TABLE `test_cases`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL COMMENT '题目的 ID',
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '测试用例的输入',
  `output` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '测试用例的输出',
  `is_sample` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为示例测试用例',
  `points` int(11) NULL DEFAULT NULL COMMENT '测试用例的分数',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '测试用例创建时间',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '测试用例更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `problem_id`(`problem_id` ASC) USING BTREE,
  CONSTRAINT `test_cases_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '测试用例表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_cases
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码（应使用哈希算法存储）',
  `role` enum('student','teacher') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色：学生或教师',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件地址',
  `student_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学生号，仅当角色为学生时有效',
  `teacher_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '教师号，仅当角色为教师时有效',
  `level` int(11) NOT NULL DEFAULT 1 COMMENT '用户等级，默认值为 1',
  `last_login` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户创建时间',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '用户更新时间',
  `total_submissions` int(11) NULL DEFAULT 0 COMMENT '总提交次数',
  `successful_submissions` int(11) NULL DEFAULT 0 COMMENT '通过次数',
  `points` int(11) NULL DEFAULT 10 COMMENT 'AI点数，答题首次通过可获得5点，用于ai',
  `total_score` int(11) NULL DEFAULT NULL COMMENT '用户总得分',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE,
  CONSTRAINT `users_chk_1` CHECK (((`role` = _utf8mb4'student') and (`student_number` is not null) and (`teacher_number` is null)) or ((`role` = _utf8mb4'teacher') and (`teacher_number` is not null) and (`student_number` is null))) NOT ENFORCED
) ENGINE = InnoDB AUTO_INCREMENT = 1009 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'test', '$2a$10$22Cvp5LnOEyRX4OB1ZsUlOEI1/Nt6ZFdumg9Ft92yL4bNOqFsfEoS', 'student', 'test@exelame.com', '2028', '', 6, '2024-12-27 11:17:41', '2024-11-26 19:45:07', '2024-12-27 11:18:09', 56, 17, 123, 199);
INSERT INTO `users` VALUES (2, 'teacher', '$2a$10$ImvTz1uqow25nRQeCzWf8u3uDTVBmNl6/x2mt6HLtkwGURUisjn26', 'teacher', 'teacher@exelame.com', '', '2024', 1, '2024-12-27 11:45:13', '2024-11-28 17:27:52', '2024-12-25 03:00:05', 0, 0, 5, 100);
INSERT INTO `users` VALUES (5, 'test1', '$2a$10$8w44wT8wkXbgNopIgMv3o.Yx3pcxJjupZZNZFk08WuGMXlQeGyqou', 'student', '123@qq.com', '123', NULL, 1, '2024-12-10 21:20:19', '2024-12-10 17:33:39', '2024-12-27 09:19:10', 0, 0, 5, 100);
INSERT INTO `users` VALUES (6, 'test3', '$2a$10$fzAlrZM8mb39SRyOouMsE.09OHwdiAQtbPyVC3qWxExOI0RkPap12', 'student', 'student..s@exelame.com', '2025', '', 1, '2024-12-23 19:12:31', '2024-11-26 19:45:07', '2024-12-27 09:19:10', 1, 0, 5, 143);
INSERT INTO `users` VALUES (7, '常嘉伦', 'NUd4mD2DII', 'student', 'jialuchang91@outlook.com', 'NlxJYfN3QP', NULL, 1, '2009-02-05 07:17:51', '2001-05-22 13:21:37', '2024-12-27 09:15:33', 115, 75, 5, 100);
INSERT INTO `users` VALUES (8, '梁睿', '6ypLUvJ53T', 'student', 'rul@outlook.com', 'onjcPbDf5r', NULL, 1, '2019-05-09 23:58:12', '2000-05-14 12:36:41', '2024-12-27 09:15:33', 133, 75, 5, 100);
INSERT INTO `users` VALUES (9, '吴嘉伦', '2xx6iPzPeX', 'student', 'jialunwu@gmail.com', 'umVLkEVqOG', NULL, 1, '2009-07-25 14:18:37', '2021-07-14 10:05:35', '2024-12-27 09:15:33', 113, 75, 5, 100);
INSERT INTO `users` VALUES (10, '周秀英', 'mg0C9oW23b', 'student', 'xiuyingz514@yahoo.com', 'yAVQacOyDx', NULL, 1, '2022-11-08 22:48:47', '2023-11-14 00:54:09', '2024-12-27 09:15:33', 151, 75, 5, 100);
INSERT INTO `users` VALUES (11, '黄晓明', 'k7EhQhXiuY', 'student', 'xiaohuang@gmail.com', '3ZvPdV0tu6', NULL, 1, '2020-05-11 15:37:22', '2017-05-03 06:01:57', '2024-12-27 09:15:33', 193, 75, 5, 100);
INSERT INTO `users` VALUES (12, '余云熙', 'KMy5ZWbSB0', 'student', 'yu831@yahoo.com', 'iLO5ob3pz4', NULL, 1, '2015-02-25 08:10:41', '2008-01-08 17:43:39', '2024-12-27 09:15:33', 131, 75, 5, 100);
INSERT INTO `users` VALUES (13, '朱詩涵', '3kvkaTKaCX', 'student', 'shihanzhu@icloud.com', 'ObesLTCOEP', NULL, 1, '2020-11-18 11:10:20', '2002-07-24 08:17:11', '2024-12-27 09:15:33', 144, 75, 5, 100);
INSERT INTO `users` VALUES (14, '邵晓明', 'YtF85Gw6M4', 'student', 'xis411@icloud.com', 'eqJb2SANCq', NULL, 1, '2012-08-04 18:40:58', '2024-08-30 22:28:54', '2024-12-27 09:15:33', 187, 75, 5, 100);
INSERT INTO `users` VALUES (15, '雷震南', 'YGqo7CFfwM', 'student', 'leiz@outlook.com', 'Evol2G3tg9', NULL, 1, '2015-08-25 09:44:00', '2001-08-29 11:37:52', '2024-12-27 09:15:33', 198, 75, 5, 100);
INSERT INTO `users` VALUES (16, '姜晓明', 'B2xCTL8hhy', 'student', 'xiaomingjiang5@mail.com', '5TFgVY281Z', NULL, 1, '2006-05-17 05:17:15', '2001-02-07 11:48:14', '2024-12-27 09:15:33', 161, 75, 5, 100);
INSERT INTO `users` VALUES (17, '李詩涵', '7KlxirOWTy', 'student', 'lishihan@icloud.com', 'iviQt0yZho', NULL, 1, '2024-08-08 15:57:52', '2001-03-30 23:00:29', '2024-12-27 09:15:33', 130, 75, 5, 100);
INSERT INTO `users` VALUES (18, '丁璐', 'v9SIWamZkL', 'student', 'dinglu2@outlook.com', 'ZxBBuBSmnA', NULL, 1, '2008-07-15 15:24:52', '2015-11-16 04:37:44', '2024-12-27 09:15:33', 193, 75, 5, 100);
INSERT INTO `users` VALUES (19, '卢宇宁', 'Hd5gsGM6uR', 'student', 'luyu@icloud.com', 'kNBuQpEkce', NULL, 1, '2021-07-25 12:41:07', '2024-06-25 02:48:01', '2024-12-27 09:15:33', 184, 75, 5, 100);
INSERT INTO `users` VALUES (20, '戴子异', '0injL16TyT', 'student', 'daiziy1124@outlook.com', 'iOziTGnkSc', NULL, 1, '2018-03-07 06:56:20', '2015-01-28 18:12:14', '2024-12-27 09:15:33', 124, 75, 5, 100);
INSERT INTO `users` VALUES (21, '郑杰宏', 'QgJ615gXV1', 'student', 'jiehongz@yahoo.com', 'rPdLwdaNHv', NULL, 1, '2019-08-25 00:44:49', '2002-02-17 12:45:11', '2024-12-27 09:15:33', 159, 75, 5, 100);
INSERT INTO `users` VALUES (22, '谢子韬', 'NGQYwDxK2l', 'student', 'xie8@outlook.com', '576kXO2Oew', NULL, 1, '2014-01-17 02:18:24', '2017-05-07 05:23:44', '2024-12-27 09:15:33', 117, 75, 5, 100);
INSERT INTO `users` VALUES (23, '钱嘉伦', 'GvVd3t8RkM', 'student', 'jialuq8@gmail.com', 'RKdgsQUO36', NULL, 1, '2015-04-19 14:23:17', '2011-10-09 19:17:34', '2024-12-27 09:15:33', 187, 75, 5, 100);
INSERT INTO `users` VALUES (24, '廖嘉伦', 'gSDEwgt7ls', 'student', 'jialunlia@yahoo.com', '8oCw1Lxxvs', NULL, 1, '2015-11-20 12:44:12', '2014-05-08 09:58:42', '2024-12-27 09:15:33', 157, 75, 5, 100);
INSERT INTO `users` VALUES (25, '汪安琪', 'Qmc7fOgqDB', 'student', 'wang54@outlook.com', 'mAYzMDzNT8', NULL, 1, '2008-12-06 04:58:34', '2001-08-28 11:55:04', '2024-12-27 09:15:33', 119, 75, 5, 100);
INSERT INTO `users` VALUES (26, '程震南', 'm6FOPqYmJa', 'student', 'zhennanc6@hotmail.com', 'MPE4qGsV03', NULL, 1, '2020-02-10 19:05:02', '2009-04-25 06:42:51', '2024-12-27 09:15:33', 193, 75, 5, 100);
INSERT INTO `users` VALUES (27, '刘云熙', 'MA6e5JSTmM', 'student', 'liu8@gmail.com', 'j1OhRwSxws', NULL, 1, '2007-04-25 18:24:46', '2001-12-01 23:11:28', '2024-12-27 09:15:33', 140, 75, 5, 100);
INSERT INTO `users` VALUES (28, '吴震南', 'bQaeMJFYft', 'student', 'wuzhennan@icloud.com', 'a4GnOeXRdD', NULL, 1, '2006-10-25 19:00:34', '2017-10-24 06:20:01', '2024-12-27 09:15:33', 171, 75, 5, 100);
INSERT INTO `users` VALUES (29, '潘秀英', 'Ns8Cti8nwv', 'student', 'xiuying1@yahoo.com', 'sEbIWoQsp9', NULL, 1, '2018-09-10 19:32:30', '2000-07-14 14:32:43', '2024-12-27 09:15:33', 111, 75, 5, 100);
INSERT INTO `users` VALUES (30, '尹睿', 'aWwTVGuLtj', 'student', 'ruiy@gmail.com', 'mD5dQfnJ02', NULL, 1, '2014-01-25 04:54:06', '2012-10-15 16:59:42', '2024-12-27 09:15:33', 156, 75, 5, 100);
INSERT INTO `users` VALUES (31, '崔晓明', '85VsI1vPsG', 'student', 'cxiaoming3@mail.com', 'Hp129NIc1i', NULL, 1, '2022-05-23 09:15:33', '2023-10-08 10:50:50', '2024-12-27 09:15:33', 195, 75, 5, 100);
INSERT INTO `users` VALUES (32, '龚宇宁', 'IFecIg6utc', 'student', 'gongyu@outlook.com', 'AXPCEPzh2v', NULL, 1, '2009-10-23 14:28:13', '2016-10-21 18:44:34', '2024-12-27 09:15:33', 134, 75, 5, 100);
INSERT INTO `users` VALUES (33, '卢嘉伦', '5y6ve803ck', 'student', 'lj4@outlook.com', 'X1r030FZVy', NULL, 1, '2003-04-27 06:39:07', '2022-05-13 12:15:32', '2024-12-27 09:15:33', 190, 75, 5, 100);
INSERT INTO `users` VALUES (34, '曹岚', '9pR1rW7k39', 'student', 'lacao@gmail.com', 'RiIIT6u8aS', NULL, 1, '2004-01-20 19:12:13', '2022-09-18 22:38:48', '2024-12-27 09:15:33', 152, 75, 5, 100);
INSERT INTO `users` VALUES (35, '廖云熙', '6bib0ZwxBO', 'student', 'lyunxi@outlook.com', 'QDdhISgxm9', NULL, 1, '2002-07-16 09:01:32', '2023-09-21 23:45:53', '2024-12-27 09:15:33', 113, 75, 5, 100);
INSERT INTO `users` VALUES (36, '武睿', 'W4aiHfgUPh', 'student', 'rui221@outlook.com', 'Czg3Stc9NK', NULL, 1, '2014-02-05 08:10:50', '2020-04-06 16:02:42', '2024-12-27 09:15:33', 135, 75, 5, 100);
INSERT INTO `users` VALUES (37, '雷岚', 'tZT6i3BGM1', 'student', 'leilan1963@gmail.com', 'dfmX5FguA0', NULL, 1, '2018-09-26 04:13:04', '2012-09-23 05:49:07', '2024-12-27 09:15:33', 191, 75, 5, 100);
INSERT INTO `users` VALUES (38, '马安琪', 'KTsFvo00Pu', 'student', 'anma@outlook.com', '18q4FUAB7I', NULL, 1, '2003-09-02 18:38:09', '2015-07-28 02:52:01', '2024-12-27 09:15:33', 109, 75, 5, 100);
INSERT INTO `users` VALUES (39, '贾璐', 'WNgpw2b7ND', 'student', 'jlu1@mail.com', '4Dl7h7d9Jl', NULL, 1, '2009-10-21 14:15:14', '2010-02-24 01:50:52', '2024-12-27 09:15:33', 106, 75, 5, 100);
INSERT INTO `users` VALUES (40, '崔子韬', 'UqXRd56rBO', 'student', 'cuz@gmail.com', 'hq5y1TkUUH', NULL, 1, '2007-06-14 09:42:51', '2001-10-02 01:11:39', '2024-12-27 09:15:33', 188, 75, 5, 100);
INSERT INTO `users` VALUES (41, '杜子异', 'EPlFW1UjeY', 'student', 'duziyi4@gmail.com', 'FRLtriny8W', NULL, 1, '2023-12-21 18:02:55', '2010-01-02 02:06:46', '2024-12-27 09:15:33', 193, 75, 5, 100);
INSERT INTO `users` VALUES (42, '武嘉伦', 'KbenSszl6T', 'student', 'wuji60@icloud.com', 'sG1EfW38bc', NULL, 1, '2011-11-12 03:14:57', '2002-11-05 18:12:11', '2024-12-27 09:15:33', 103, 75, 5, 100);
INSERT INTO `users` VALUES (43, '贾云熙', '21ByMSmLj1', 'student', 'jiayun7@outlook.com', 'BHcq0kmNED', NULL, 1, '2013-12-13 05:43:28', '2014-03-26 16:17:50', '2024-12-27 09:15:33', 164, 75, 5, 100);
INSERT INTO `users` VALUES (44, '顾宇宁', '3TW0snH0P3', 'student', 'guyu@hotmail.com', 'svGmoj21od', NULL, 1, '2016-06-06 00:03:20', '2009-05-22 09:25:43', '2024-12-27 09:15:33', 105, 75, 5, 100);
INSERT INTO `users` VALUES (45, '卢安琪', 'lJDeDEyHP2', 'student', 'lu1948@outlook.com', '7YUQWtfsWl', NULL, 1, '2019-08-09 21:17:12', '2011-03-20 09:08:52', '2024-12-27 09:15:33', 122, 75, 5, 100);
INSERT INTO `users` VALUES (46, '邵詩涵', 'AIDhZmHVIk', 'student', 'shaoshihan@gmail.com', 'wUjPCsYzzM', NULL, 1, '2008-02-01 06:08:27', '2022-04-21 04:25:26', '2024-12-27 09:15:33', 153, 75, 5, 100);
INSERT INTO `users` VALUES (47, '曹睿', 'M87R9WaWFh', 'student', 'rcao@outlook.com', 'qdemiGSQHv', NULL, 1, '2019-01-25 22:11:47', '2008-08-07 10:05:40', '2024-12-27 09:15:33', 154, 75, 5, 100);
INSERT INTO `users` VALUES (48, '郭震南', 'WNCMKaYePy', 'student', 'guo831@gmail.com', 'ayPzpejX2D', NULL, 1, '2005-12-29 13:53:49', '2011-12-18 01:06:10', '2024-12-27 09:15:33', 153, 75, 5, 100);
INSERT INTO `users` VALUES (49, '韦杰宏', 'KNycjZYFpI', 'student', 'wejiehong@outlook.com', 'b93afFeHSI', NULL, 1, '2006-08-18 05:31:08', '2005-06-18 09:12:24', '2024-12-27 09:15:33', 171, 75, 5, 100);
INSERT INTO `users` VALUES (50, '许子韬', '7e1YxiYJ4S', 'student', 'xzitao2@gmail.com', 'sKQzcYdDKR', NULL, 1, '2017-12-18 00:39:09', '2013-01-15 03:11:24', '2024-12-27 09:15:33', 156, 75, 5, 100);
INSERT INTO `users` VALUES (51, '向子韬', 'IeueinHrMm', 'student', 'zitaoxiang@icloud.com', 'kHn7BblaFM', NULL, 1, '2022-07-21 03:30:57', '2022-04-05 18:07:52', '2024-12-27 09:15:33', 133, 75, 5, 100);
INSERT INTO `users` VALUES (52, '傅致远', 'Luxx2MNcJQ', 'student', 'fuzh@yahoo.com', 'XZItSqJtNg', NULL, 1, '2016-02-22 22:55:13', '2020-12-06 00:37:29', '2024-12-27 09:15:33', 173, 75, 5, 100);
INSERT INTO `users` VALUES (53, '韩云熙', 'cEBE5cFDNs', 'student', 'yunxihan@outlook.com', 'CuOMOBu1uj', NULL, 1, '2007-06-28 10:12:25', '2014-05-05 07:39:16', '2024-12-27 09:15:33', 105, 75, 5, 100);
INSERT INTO `users` VALUES (54, '侯岚', 'ICpTnJJOMI', 'student', 'hlan@outlook.com', 'Cq1P6CzY7F', NULL, 1, '2009-06-06 04:46:21', '2017-03-27 04:38:39', '2024-12-27 09:15:33', 170, 75, 5, 100);
INSERT INTO `users` VALUES (55, '萧晓明', '7NNpiVNAUE', 'student', 'xiaoxi131@gmail.com', 'EEYKl96SFV', NULL, 1, '2017-04-19 14:23:13', '2005-03-03 12:31:20', '2024-12-27 09:15:33', 183, 75, 5, 100);
INSERT INTO `users` VALUES (56, '叶震南', 'UvYMeQ3jZQ', 'student', 'zhennanye49@gmail.com', 'aMlFWJyXvd', NULL, 1, '2010-02-25 21:35:37', '2004-06-29 04:50:42', '2024-12-27 09:15:33', 125, 75, 5, 100);
INSERT INTO `users` VALUES (57, '范晓明', 'FpmPSLPalZ', 'student', 'fanxiao42@hotmail.com', 'JhWmBUnEuS', NULL, 1, '2017-04-14 21:31:08', '2016-11-16 22:23:14', '2024-12-27 09:15:33', 155, 75, 5, 100);
INSERT INTO `users` VALUES (58, '余秀英', '905ll5GdKt', 'student', 'yuxiuyi@hotmail.com', 'fjpFdTkGAF', NULL, 1, '2016-08-20 05:38:00', '2008-04-07 13:08:55', '2024-12-27 09:15:33', 119, 75, 5, 100);
INSERT INTO `users` VALUES (59, '彭岚', 'PAYS3e84v8', 'student', 'pel@mail.com', 'FuEOTzCfJY', NULL, 1, '2000-01-03 10:24:33', '2013-03-18 00:56:17', '2024-12-27 09:15:33', 113, 75, 5, 100);
INSERT INTO `users` VALUES (60, '冯嘉伦', 'zfV5D9jcYs', 'student', 'jfeng@outlook.com', 'MPR35aLdpv', NULL, 1, '2021-04-28 07:11:26', '2009-12-09 19:36:59', '2024-12-27 09:15:33', 160, 75, 5, 100);
INSERT INTO `users` VALUES (61, '姜璐', 'P6L9TEMplh', 'student', 'jianglu8@icloud.com', 'vwjZjXAPPn', NULL, 1, '2022-01-13 02:22:51', '2003-11-05 18:21:40', '2024-12-27 09:15:33', 154, 75, 5, 100);
INSERT INTO `users` VALUES (62, '刘安琪', 'ukQ8hqqnHy', 'student', 'anqi517@icloud.com', 'nYARksXz5D', NULL, 1, '2023-10-28 03:26:58', '2020-11-02 05:16:16', '2024-12-27 09:15:33', 137, 75, 5, 100);
INSERT INTO `users` VALUES (63, '许子异', 'oxH62XViNO', 'student', 'xuziyi84@outlook.com', 'nNFDVfh1qW', NULL, 1, '2021-01-14 14:23:58', '2010-08-26 22:01:39', '2024-12-27 09:15:33', 111, 75, 5, 100);
INSERT INTO `users` VALUES (64, '薛宇宁', 'UeZlcATuK4', 'student', 'xuyuning@outlook.com', 'zNPq0ZrSBb', NULL, 1, '2024-08-02 14:28:54', '2000-01-30 04:16:24', '2024-12-27 09:15:33', 145, 75, 5, 100);
INSERT INTO `users` VALUES (65, '蔡嘉伦', 'GBdr137WMS', 'student', 'jialun507@gmail.com', 'j0glHoH7MA', NULL, 1, '2005-02-07 00:16:03', '2002-02-14 04:28:02', '2024-12-27 09:15:33', 193, 75, 5, 100);
INSERT INTO `users` VALUES (66, '蒋安琪', 'iDQdmKlkGH', 'student', 'anqi2@yahoo.com', 'FaeXuwyCjb', NULL, 1, '2008-01-22 17:59:46', '2024-12-03 13:52:09', '2024-12-27 09:15:33', 115, 75, 5, 100);
INSERT INTO `users` VALUES (67, '范秀英', 'yck53J6ICP', 'student', 'xif@outlook.com', 'E711J0WZYB', NULL, 1, '2022-05-13 04:45:32', '2017-12-02 18:28:09', '2024-12-27 09:15:33', 147, 75, 5, 100);
INSERT INTO `users` VALUES (68, '钱秀英', 'wIRbx5pCN3', 'student', 'qxiuying2@yahoo.com', 'PxHrzdRm9X', NULL, 1, '2003-08-14 12:59:38', '2000-10-07 09:00:38', '2024-12-27 09:15:33', 125, 75, 5, 100);
INSERT INTO `users` VALUES (69, '刘岚', 'PqXiU3FYjH', 'student', 'lanl@gmail.com', 'f470tUgL63', NULL, 1, '2019-05-01 09:58:42', '2022-04-29 19:38:46', '2024-12-27 09:15:33', 109, 75, 5, 100);
INSERT INTO `users` VALUES (70, '钱震南', 'GdOA1i7bMD', 'student', 'zhennan9@icloud.com', 'CVEnb0UlAX', NULL, 1, '2002-10-30 14:57:15', '2001-04-03 03:47:40', '2024-12-27 09:15:33', 113, 75, 5, 100);
INSERT INTO `users` VALUES (71, '严子异', 'F7Ct9g8PYa', 'student', 'yan929@gmail.com', 'djApyuLId7', NULL, 1, '2008-10-23 19:24:50', '2024-05-26 06:57:35', '2024-12-27 09:15:33', 190, 75, 5, 100);
INSERT INTO `users` VALUES (72, '江璐', 'uxKuGjYNYf', 'student', 'lujiang@hotmail.com', 'gO8lI9PodT', NULL, 1, '2004-08-17 10:30:26', '2013-06-19 03:29:04', '2024-12-27 09:15:33', 192, 75, 5, 100);
INSERT INTO `users` VALUES (73, '向晓明', 'U9aJue0z8r', 'student', 'xiaxiang623@mail.com', 'okcREqo2En', NULL, 1, '2022-05-11 22:05:16', '2005-12-27 09:55:35', '2024-12-27 09:15:33', 127, 75, 5, 100);
INSERT INTO `users` VALUES (74, '曾安琪', 'ylsS4JtvKs', 'student', 'anqi324@icloud.com', 'MBLEMoH1ke', NULL, 1, '2011-08-06 08:03:45', '2000-03-30 03:50:43', '2024-12-27 09:15:33', 162, 75, 5, 100);
INSERT INTO `users` VALUES (75, '宋嘉伦', 'XYLov1Qn6r', 'student', 'jialun109@mail.com', 'Jrofx9gtK9', NULL, 1, '2010-08-19 06:41:59', '2008-06-14 09:32:01', '2024-12-27 09:15:33', 109, 75, 5, 100);
INSERT INTO `users` VALUES (76, '孟晓明', '9RhX0WhWSy', 'student', 'xiaomingme@icloud.com', 'JCdyLg87al', NULL, 1, '2004-06-01 07:00:59', '2010-05-17 10:01:22', '2024-12-27 09:15:33', 155, 75, 5, 100);
INSERT INTO `users` VALUES (77, '赵詩涵', '5seBpURL2v', 'student', 'shihanzh503@gmail.com', 'y3TNCS0uw4', NULL, 1, '2008-06-08 14:09:57', '2017-11-19 19:03:46', '2024-12-27 09:15:33', 115, 75, 5, 100);
INSERT INTO `users` VALUES (78, '顾杰宏', 'w0Qdu0h8hp', 'student', 'gu7@icloud.com', 'ZqhEwGEXrE', NULL, 1, '2010-01-12 02:02:03', '2003-07-23 08:53:09', '2024-12-27 09:15:33', 131, 75, 5, 100);
INSERT INTO `users` VALUES (79, '彭詩涵', 'VOZXw92xHY', 'student', 'shihan10@mail.com', 'MivGayZZY5', NULL, 1, '2003-03-02 13:01:18', '2009-07-28 12:13:46', '2024-12-27 09:15:33', 160, 75, 5, 100);
INSERT INTO `users` VALUES (80, '向致远', 'sfOFvBYw0t', 'student', 'xizhi@gmail.com', 'RYEMKLeyai', NULL, 1, '2018-12-23 17:32:23', '2022-02-22 11:48:33', '2024-12-27 09:15:33', 151, 75, 5, 100);
INSERT INTO `users` VALUES (81, '曹璐', '9FZwBB8Qnb', 'student', 'clu2013@icloud.com', 'qsc2fUAHwN', NULL, 1, '2003-10-26 03:37:17', '2003-02-23 11:00:35', '2024-12-27 09:15:33', 151, 75, 5, 100);
INSERT INTO `users` VALUES (82, '彭云熙', 'izr3z9B6gG', 'student', 'yunxi62@hotmail.com', 'BevwokpfSK', NULL, 1, '2002-07-08 18:34:14', '2019-11-05 05:32:30', '2024-12-27 09:15:33', 132, 75, 5, 100);
INSERT INTO `users` VALUES (83, '何震南', 'MUUgtI8u6F', 'student', 'zhennanhe@gmail.com', 'hIBkw4XY3Z', NULL, 1, '2017-07-10 13:05:08', '2005-08-06 01:04:09', '2024-12-27 09:15:33', 193, 75, 5, 100);
INSERT INTO `users` VALUES (84, '江安琪', 'qOfMopJftY', 'student', 'anjiang@hotmail.com', '5zSEXgLaJZ', NULL, 1, '2014-09-21 02:43:47', '2020-08-11 10:06:48', '2024-12-27 09:15:33', 112, 75, 5, 100);
INSERT INTO `users` VALUES (85, '廖詩涵', 'bVuP9LyoIK', 'student', 'shil@hotmail.com', '1dtsO41lap', NULL, 1, '2010-01-16 11:47:01', '2020-08-21 17:11:39', '2024-12-27 09:15:33', 157, 75, 5, 100);
INSERT INTO `users` VALUES (86, '赵云熙', 'ZS1iyRm33P', 'student', 'zhaoyunxi@icloud.com', 'EBwCqyQOq1', NULL, 1, '2021-05-10 21:44:56', '2009-10-20 05:48:12', '2024-12-27 09:15:33', 160, 75, 5, 100);
INSERT INTO `users` VALUES (87, '孙安琪', 'o9Fzy4JTAb', 'student', 'ansun@mail.com', 'D4PGuAKJHe', NULL, 1, '2016-11-22 03:15:53', '2003-07-05 11:14:51', '2024-12-27 09:15:33', 167, 75, 5, 100);
INSERT INTO `users` VALUES (88, '秦安琪', 'DnwQDgygsX', 'student', 'qianqi1011@icloud.com', 'QI2YYZDNFJ', NULL, 1, '2015-11-17 15:50:06', '2010-02-22 22:34:59', '2024-12-27 09:15:33', 164, 75, 5, 100);
INSERT INTO `users` VALUES (89, '郭子异', '9faGlU66MF', 'student', 'ziyiguo@icloud.com', 'bVuPL0IT3f', NULL, 1, '2011-05-12 03:27:32', '2022-04-21 04:54:58', '2024-12-27 09:15:33', 170, 75, 5, 100);
INSERT INTO `users` VALUES (90, '吕宇宁', 'zMlRc7WVTe', 'student', 'yuning6@icloud.com', 'kcVt9ox7nM', NULL, 1, '2019-07-27 06:14:40', '2023-06-04 10:01:30', '2024-12-27 09:15:33', 186, 75, 5, 100);
INSERT INTO `users` VALUES (91, '崔睿', 'UydanlcBIy', 'student', 'rucui@mail.com', 'foCuajjjUj', NULL, 1, '2011-10-27 16:03:16', '2011-06-27 05:50:23', '2024-12-27 09:15:33', 137, 75, 5, 100);
INSERT INTO `users` VALUES (92, '萧安琪', 'uJ6fgJtI6Y', 'student', 'xiao6@mail.com', '78sTmsihZw', NULL, 1, '2012-02-21 15:57:36', '2004-09-11 23:19:24', '2024-12-27 09:15:33', 194, 75, 5, 100);
INSERT INTO `users` VALUES (93, '叶睿', 'C65ClCDLUj', 'student', 'ruiye@gmail.com', 'UjHDRsPbE6', NULL, 1, '2004-07-12 17:51:31', '2012-09-29 17:03:31', '2024-12-27 09:15:33', 124, 75, 5, 100);
INSERT INTO `users` VALUES (94, '董璐', 'pkILBlMmfm', 'student', 'lu2019@mail.com', '3zEGrbIdAU', NULL, 1, '2023-02-08 16:08:39', '2024-04-28 20:55:41', '2024-12-27 09:15:33', 109, 75, 5, 100);
INSERT INTO `users` VALUES (95, '崔詩涵', 'VLNPlaOaGc', 'student', 'cs8@hotmail.com', 'AYggHdDyGU', NULL, 1, '2017-03-01 23:57:21', '2010-11-02 13:52:54', '2024-12-27 09:15:33', 116, 75, 5, 100);
INSERT INTO `users` VALUES (96, '李晓明', 'eY7aNQBVOp', 'student', 'lix52@outlook.com', 'U4hoPNlxf0', NULL, 1, '2011-12-18 14:16:52', '2013-12-29 08:22:03', '2024-12-27 09:15:33', 111, 75, 5, 100);
INSERT INTO `users` VALUES (97, '蔡子韬', 'fRpLZdzMqc', 'student', 'zca@gmail.com', 'hdSiioEsQC', NULL, 1, '2012-01-26 07:27:26', '2018-12-14 12:19:43', '2024-12-27 09:15:33', 196, 75, 5, 100);
INSERT INTO `users` VALUES (98, '陆璐', 'deyW93M4IM', 'student', 'lulu1940@mail.com', 'oDZS6GdWvR', NULL, 1, '2019-03-15 19:25:40', '2021-02-15 04:39:11', '2024-12-27 09:15:33', 143, 75, 5, 100);
INSERT INTO `users` VALUES (99, '姜宇宁', '3CB1tytnkB', 'student', 'jiang6@icloud.com', '6oAdKqvlav', NULL, 1, '2000-10-28 16:13:37', '2007-10-15 11:48:30', '2024-12-27 09:15:33', 187, 75, 5, 100);
INSERT INTO `users` VALUES (100, '金岚', 'vrACGnSUzH', 'student', 'lanjin@icloud.com', 'm02PWarcFM', NULL, 1, '2020-10-05 10:03:17', '2014-01-14 00:53:29', '2024-12-27 09:15:33', 116, 75, 5, 100);
INSERT INTO `users` VALUES (101, '孙詩涵', 'yKyxMHkA4h', 'student', 'shihansu829@gmail.com', 'TSIIjr7aUC', NULL, 1, '2012-04-18 14:21:42', '2011-10-24 01:36:24', '2024-12-27 09:15:33', 145, 75, 5, 100);
INSERT INTO `users` VALUES (102, '钱安琪', 'MI6ZfTDCNJ', 'student', 'qianqi809@icloud.com', 'Wygsin8HrY', NULL, 1, '2012-11-23 16:25:35', '2021-02-24 23:08:42', '2024-12-27 09:15:33', 165, 75, 5, 100);
INSERT INTO `users` VALUES (103, '彭致远', 'JWuIOdUxXW', 'student', 'peng12@outlook.com', 'xQXGcgpnhX', NULL, 1, '2022-10-03 10:12:51', '2022-06-24 14:14:26', '2024-12-27 09:15:33', 149, 75, 5, 100);
INSERT INTO `users` VALUES (104, '钱宇宁', 'PI4ck4N9gq', 'student', 'yuning4@icloud.com', '0rwYfU6de8', NULL, 1, '2010-07-18 01:09:02', '2013-07-06 10:42:49', '2024-12-27 09:15:33', 111, 75, 5, 100);
INSERT INTO `users` VALUES (105, '石詩涵', 'KU08y2WYdC', 'student', 'shshihan328@hotmail.com', '6zgCBcy2B7', NULL, 1, '2016-04-22 06:08:03', '2018-07-03 09:37:56', '2024-12-27 09:15:33', 142, 75, 5, 100);
INSERT INTO `users` VALUES (106, '孙嘉伦', 'koGhJiEK7J', 'student', 'jialunsun@gmail.com', 'ie6t3PV2A1', NULL, 1, '2024-08-11 05:05:45', '2015-02-01 11:49:16', '2024-12-27 09:15:33', 137, 75, 5, 100);
INSERT INTO `users` VALUES (107, '郝秀英', 'KnMH7ckadK', 'student', 'xiuyihao55@outlook.com', 'F6yHTtrRMb', NULL, 1, '2006-05-05 20:57:11', '2000-07-05 06:02:28', '2024-12-27 09:15:33', 122, 75, 5, 100);
INSERT INTO `users` VALUES (108, '赵岚', 'eIoPeRreo8', 'student', 'lanz@mail.com', 'dbvkxEr3B8', NULL, 1, '2013-11-04 21:14:11', '2011-11-17 16:11:22', '2024-12-27 09:15:33', 171, 75, 5, 100);
INSERT INTO `users` VALUES (109, '莫岚', 'FkKb77qGL7', 'student', 'mol812@hotmail.com', 'mxTjqK4EDW', NULL, 1, '2023-01-25 21:39:27', '2023-02-18 00:04:39', '2024-12-27 09:15:33', 184, 75, 5, 100);
INSERT INTO `users` VALUES (110, '冯子韬', 'eF6xHGtaZj', 'student', 'zitaof@icloud.com', 'YjTNIxzSki', NULL, 1, '2006-09-19 23:34:04', '2016-06-21 17:12:24', '2024-12-27 09:15:33', 184, 75, 5, 100);
INSERT INTO `users` VALUES (111, '萧杰宏', 'vylmjeRUxV', 'student', 'xiaoji@yahoo.com', 'n7keyRIuB7', NULL, 1, '2003-09-17 11:15:13', '2003-04-16 06:45:34', '2024-12-27 09:15:33', 125, 75, 5, 100);
INSERT INTO `users` VALUES (112, '刘子异', 'NaVCfA9PbM', 'student', 'liuziyi@outlook.com', 'QIid1hdyZU', NULL, 1, '2021-01-27 00:03:53', '2001-10-09 21:27:03', '2024-12-27 09:15:33', 148, 75, 5, 100);
INSERT INTO `users` VALUES (113, '史岚', 'Z3PLkxaijU', 'student', 'lan10@gmail.com', 'dUsFc0jbnK', NULL, 1, '2002-08-15 05:59:45', '2006-03-11 12:37:44', '2024-12-27 09:15:33', 140, 75, 5, 100);
INSERT INTO `users` VALUES (114, '魏安琪', 'VudhW0HKJ8', 'student', 'anqiwe@hotmail.com', 'dFred1SnBq', NULL, 1, '2013-09-28 17:38:30', '2017-08-21 23:24:32', '2024-12-27 09:15:45', 127, 88, 5, 100);
INSERT INTO `users` VALUES (115, '孙子异', '8f0jB6MNJY', 'student', 'zsun72@outlook.com', 'm7BcfVVvjJ', NULL, 1, '2005-11-14 10:33:03', '2009-01-20 04:01:32', '2024-12-27 09:15:45', 172, 88, 5, 100);
INSERT INTO `users` VALUES (116, '田致远', 'iRw2IC65dR', 'student', 'zt18@icloud.com', '25RISgPtj8', NULL, 1, '2008-02-13 04:14:17', '2003-01-14 23:36:46', '2024-12-27 09:15:45', 156, 88, 5, 100);
INSERT INTO `users` VALUES (117, '陆嘉伦', 'fLPLgtPNY4', 'student', 'jlu85@yahoo.com', 'kmNXD5zLBh', NULL, 1, '2015-12-17 14:42:05', '2006-12-19 14:48:07', '2024-12-27 09:15:45', 167, 88, 5, 100);
INSERT INTO `users` VALUES (118, '史宇宁', '2b5Jq8mpOo', 'student', 'shiyun@gmail.com', 'MbHPOq4tB6', NULL, 1, '2014-11-09 08:54:52', '2012-01-07 17:18:32', '2024-12-27 09:15:45', 193, 88, 5, 100);
INSERT INTO `users` VALUES (119, '范子韬', '5ucVPi5idB', 'student', 'zitao4@icloud.com', 'Zi9klj9mWQ', NULL, 1, '2019-02-03 22:01:34', '2009-10-26 15:12:47', '2024-12-27 09:15:45', 153, 88, 5, 100);
INSERT INTO `users` VALUES (120, '贾嘉伦', 'bWSXALduFx', 'student', 'jiajialu8@icloud.com', 'spNDqftzsB', NULL, 1, '2002-12-05 07:48:34', '2020-05-22 20:22:44', '2024-12-27 09:15:45', 160, 88, 5, 100);
INSERT INTO `users` VALUES (121, '周晓明', 'VuJWBBv1cr', 'student', 'xiaomingzhou7@mail.com', 'RbYJtPGPxZ', NULL, 1, '2014-04-10 17:56:51', '2021-11-10 12:13:31', '2024-12-27 09:15:45', 132, 88, 5, 100);
INSERT INTO `users` VALUES (122, '方杰宏', 'm7yid4799J', 'student', 'fangji@outlook.com', 'sO57h908VG', NULL, 1, '2000-07-22 20:51:32', '2012-03-12 06:34:46', '2024-12-27 09:15:45', 127, 88, 5, 100);
INSERT INTO `users` VALUES (123, '武安琪', 'm5uUL4VeFO', 'student', 'wuanqi5@mail.com', 'sqELKyw91s', NULL, 1, '2004-02-13 13:54:20', '2021-03-31 09:59:03', '2024-12-27 09:15:45', 199, 88, 5, 100);
INSERT INTO `users` VALUES (124, '李震南', 'U3KvsIKsJX', 'student', 'lizhennan@outlook.com', 'JLMRdvWLhn', NULL, 1, '2021-10-24 13:53:34', '2024-11-12 05:39:10', '2024-12-27 09:15:45', 199, 88, 5, 100);
INSERT INTO `users` VALUES (125, '曾詩涵', 'yThWz7ujt1', 'student', 'zengsh@gmail.com', 'vQI8hrfsv2', NULL, 1, '2001-11-11 14:43:33', '2007-05-25 17:46:36', '2024-12-27 09:15:45', 108, 88, 5, 100);
INSERT INTO `users` VALUES (126, '杨睿', 'B8yMiXmAM1', 'student', 'yar2@gmail.com', 'lhjI7HORQr', NULL, 1, '2020-10-30 11:45:27', '2008-11-07 09:33:05', '2024-12-27 09:15:45', 149, 88, 5, 100);
INSERT INTO `users` VALUES (127, '邓璐', 'rmsbmO4Fv1', 'student', 'denglu2@outlook.com', 'en93dfvJJt', NULL, 1, '2012-07-18 10:16:21', '2009-05-08 04:12:08', '2024-12-27 09:15:45', 187, 88, 5, 100);
INSERT INTO `users` VALUES (128, '卢岚', 'm9PvjeYlin', 'student', 'lanl@mail.com', 'rwmAtlo0cO', NULL, 1, '2006-08-10 18:04:21', '2021-01-28 00:10:53', '2024-12-27 09:15:45', 167, 88, 5, 100);
INSERT INTO `users` VALUES (129, '丁子异', 'BtBFYNsQmy', 'student', 'ziyid@hotmail.com', 'h5lJ4GCgdm', NULL, 1, '2010-04-21 06:08:52', '2019-06-20 09:51:14', '2024-12-27 09:15:56', 122, 92, 5, 100);
INSERT INTO `users` VALUES (130, '罗震南', 'MdCtjbh0dY', 'student', 'zhluo2@gmail.com', 'GVsz1YrHUk', NULL, 1, '2004-12-26 13:25:57', '2023-08-31 02:47:01', '2024-12-27 09:15:56', 182, 92, 5, 100);
INSERT INTO `users` VALUES (131, '谢岚', 'UiyEkMlmwm', 'student', 'lanxie@yahoo.com', 'GaQoKo4LXd', NULL, 1, '2004-06-05 16:13:18', '2000-06-25 02:49:26', '2024-12-27 09:15:56', 177, 92, 5, 100);
INSERT INTO `users` VALUES (132, '尹璐', 'dASUNr785N', 'student', 'luy@gmail.com', 'hOC7iazDoV', NULL, 1, '2014-06-24 22:08:13', '2017-02-05 11:20:04', '2024-12-27 09:15:56', 122, 92, 5, 100);
INSERT INTO `users` VALUES (133, '苏岚', 'TInlYSqVla', 'student', 'lansu@gmail.com', 'qBTHWgRsbX', NULL, 1, '2010-04-13 03:38:01', '2003-05-14 00:20:54', '2024-12-27 09:15:56', 182, 92, 5, 100);
INSERT INTO `users` VALUES (134, '董致远', '7MWX76M71H', 'student', 'zhiyuand831@yahoo.com', '4fROKUMvvw', NULL, 1, '2013-02-19 15:04:37', '2017-11-16 05:22:17', '2024-12-27 09:15:56', 195, 92, 5, 100);
INSERT INTO `users` VALUES (135, '贺子异', 'Xmj2DUHzYk', 'student', 'heziyi@icloud.com', 'IKaVr60GKZ', NULL, 1, '2024-06-26 18:28:41', '2011-11-26 13:39:33', '2024-12-27 09:15:56', 158, 92, 5, 100);
INSERT INTO `users` VALUES (136, '苏云熙', 'rHEAjZwQtR', 'student', 'suy@outlook.com', 'EUW9pos8CH', NULL, 1, '2012-09-13 21:58:33', '2001-06-27 08:07:42', '2024-12-27 09:15:56', 146, 92, 5, 100);
INSERT INTO `users` VALUES (137, '李岚', 'dBVi636V6k', 'student', 'lilan@icloud.com', 'IpNUMX8SVR', NULL, 1, '2018-06-23 13:11:55', '2000-12-06 03:24:18', '2024-12-27 09:15:56', 176, 92, 5, 100);
INSERT INTO `users` VALUES (138, '方宇宁', 'ab5tC8zFy6', 'student', 'yunfang7@gmail.com', 'pOfxGSTkn7', NULL, 1, '2021-10-22 20:54:03', '2001-06-23 04:01:04', '2024-12-27 09:15:56', 131, 92, 5, 100);
INSERT INTO `users` VALUES (139, '尹子韬', 'mOaH5Dl3RA', 'student', 'zitaoy1943@outlook.com', 't35B6fPUb0', NULL, 1, '2010-02-26 09:05:46', '2003-12-27 14:12:47', '2024-12-27 09:15:56', 109, 92, 5, 100);
INSERT INTO `users` VALUES (140, '丁岚', 'v0WpsZBZvB', 'student', 'dinglan@outlook.com', 'r0IZ58ieyd', NULL, 1, '2013-02-15 00:51:59', '2013-01-08 23:53:56', '2024-12-27 09:15:56', 146, 92, 5, 100);
INSERT INTO `users` VALUES (141, '曹杰宏', 'R95rZGChip', 'student', 'jiecao902@gmail.com', 'FwGXH0ul1E', NULL, 1, '2002-06-15 06:05:43', '2021-04-30 03:45:20', '2024-12-27 09:15:56', 136, 92, 5, 100);
INSERT INTO `users` VALUES (142, '熊震南', 'sxvpoqTJR7', 'student', 'zhxiong97@gmail.com', 'b8OxV9FHWq', NULL, 1, '2018-11-07 01:04:19', '2003-05-24 01:35:50', '2024-12-27 09:15:56', 117, 92, 5, 100);
INSERT INTO `users` VALUES (143, '毛嘉伦', 'arXqGxsogx', 'student', 'maojialu@gmail.com', 'novRNzN734', NULL, 1, '2016-11-01 07:34:54', '2016-08-05 11:16:44', '2024-12-27 09:15:56', 142, 92, 5, 100);
INSERT INTO `users` VALUES (144, '贾震南', 'Oe9aCd1zc1', 'student', 'jiaz10@outlook.com', 'uOyF0xTgG9', NULL, 1, '2016-07-10 17:24:00', '2004-03-27 04:22:00', '2024-12-27 09:15:56', 152, 92, 5, 100);
INSERT INTO `users` VALUES (145, '张子韬', 'IYlkCktaET', 'student', 'zitaoz@hotmail.com', 'tM3WtwCc47', NULL, 1, '2007-09-22 07:04:51', '2018-09-06 23:24:42', '2024-12-27 09:15:56', 117, 92, 5, 100);
INSERT INTO `users` VALUES (146, '贾宇宁', 'T2DV63KLXc', 'student', 'jiayuni88@yahoo.com', 'KO0gtLusZr', NULL, 1, '2006-08-31 23:48:13', '2024-03-14 07:52:15', '2024-12-27 09:16:12', 180, 66, 5, 100);
INSERT INTO `users` VALUES (147, '赵子韬', 'E4m1WnVB6Z', 'student', 'zzhao5@outlook.com', 'g0xnNu623o', NULL, 1, '2004-05-15 20:06:13', '2012-06-02 05:54:23', '2024-12-27 09:16:12', 116, 66, 5, 100);
INSERT INTO `users` VALUES (148, '任子异', 'u1y604wWER', 'student', 'ziyire4@outlook.com', 'VxKYCriOFD', NULL, 1, '2016-07-18 02:23:06', '2021-10-13 03:44:55', '2024-12-27 09:16:12', 114, 66, 5, 100);
INSERT INTO `users` VALUES (149, '萧岚', '8JwNZOP8pp', 'student', 'xiaolan1@hotmail.com', 'AhmSOb3dmQ', NULL, 1, '2004-12-16 09:50:56', '2023-04-10 07:59:22', '2024-12-27 09:16:12', 125, 66, 5, 100);
INSERT INTO `users` VALUES (150, '夏晓明', 'MPSk6IZN6n', 'student', 'xiaomingxia@icloud.com', 'lRkE3hT7pU', NULL, 1, '2024-08-31 04:12:10', '2024-03-16 07:10:54', '2024-12-27 09:16:12', 156, 66, 5, 100);
INSERT INTO `users` VALUES (151, '曹安琪', 'mQcksD0UEN', 'student', 'anqicao7@mail.com', 'r0Ckpg5kcv', NULL, 1, '2005-06-12 05:50:55', '2009-10-29 17:40:41', '2024-12-27 09:16:12', 127, 66, 5, 100);
INSERT INTO `users` VALUES (152, '段安琪', 'GobPezODT3', 'student', 'duananqi@hotmail.com', 'jqZsbV6u9S', NULL, 1, '2001-07-13 00:45:19', '2000-10-28 16:46:09', '2024-12-27 09:16:12', 151, 66, 5, 100);
INSERT INTO `users` VALUES (153, '雷睿', 'jMTGrXfkAS', 'student', 'ruilei@outlook.com', 'aLXWcMjaQc', NULL, 1, '2004-03-10 08:54:19', '2001-08-14 01:33:48', '2024-12-27 09:16:12', 162, 66, 5, 100);
INSERT INTO `users` VALUES (154, '陆睿', 'oxM1cn9VzI', 'student', 'ruil4@outlook.com', 'u9a6QuHC8J', NULL, 1, '2008-07-01 09:48:53', '2024-11-15 19:27:13', '2024-12-27 09:16:12', 140, 66, 5, 100);
INSERT INTO `users` VALUES (155, '谭震南', 'htO5dISrce', 'student', 'zhennan5@gmail.com', 'OwGzkKXcfN', NULL, 1, '2015-05-16 00:15:48', '2005-06-11 13:37:32', '2024-12-27 09:16:12', 140, 66, 5, 100);
INSERT INTO `users` VALUES (156, '范致远', 'S4UVAJ8reQ', 'student', 'fanz3@gmail.com', 'IgiFytQzAL', NULL, 1, '2012-04-20 18:24:23', '2010-07-05 07:27:11', '2024-12-27 09:16:12', 186, 66, 5, 100);
INSERT INTO `users` VALUES (157, '金詩涵', 'o8TkaBOC8l', 'student', 'shjin08@gmail.com', 'PqOufU5zdY', NULL, 1, '2005-11-12 05:19:47', '2023-10-05 05:32:56', '2024-12-27 09:16:12', 115, 66, 5, 100);
INSERT INTO `users` VALUES (158, '张杰宏', 'oPix1SMSnd', 'student', 'zhang904@mail.com', 'ODuu1TNjI3', NULL, 1, '2002-07-15 16:11:01', '2017-11-15 23:25:49', '2024-12-27 09:16:12', 106, 66, 5, 100);
INSERT INTO `users` VALUES (159, '阎睿', '7iav9sIMWL', 'student', 'yanru511@gmail.com', '1xQxvNWML7', NULL, 1, '2006-03-28 08:21:29', '2007-02-22 18:25:47', '2024-12-27 09:16:12', 138, 66, 5, 100);
INSERT INTO `users` VALUES (160, '马岚', '8E9QEwQHFR', 'student', 'lm99@icloud.com', 'enwYeGFhPU', NULL, 1, '2010-07-30 09:01:34', '2006-01-27 10:04:06', '2024-12-27 09:16:12', 102, 66, 5, 100);
INSERT INTO `users` VALUES (161, '邓安琪', 'lqX92Je8Fz', 'student', 'denganqi14@gmail.com', '50E1nj7uIt', NULL, 1, '2020-08-10 22:44:14', '2015-05-20 05:28:13', '2024-12-27 09:16:12', 125, 66, 5, 100);
INSERT INTO `users` VALUES (162, '钟安琪', 'iukovyEaVr', 'student', 'zha@yahoo.com', 'eLphwikbIf', NULL, 1, '2024-12-20 11:52:00', '2015-12-31 08:35:43', '2024-12-27 09:16:12', 112, 66, 5, 100);
INSERT INTO `users` VALUES (163, '雷安琪', '7lbA4pzSS7', 'student', 'anqile@icloud.com', 'OsgIE6waMh', NULL, 1, '2012-11-22 23:43:59', '2011-05-09 07:04:28', '2024-12-25 03:00:05', 135, 99, 5, 100);
INSERT INTO `users` VALUES (164, '黎嘉伦', 'dzKK4EqPBk', 'student', 'lijialun@mail.com', '9Dv1fw3APV', NULL, 1, '2013-09-29 02:10:45', '2005-11-03 05:40:02', '2024-12-27 09:16:26', 166, 65, 5, 100);
INSERT INTO `users` VALUES (165, '姜杰宏', 'kIhvbdabyo', 'student', 'jiangjieho91@icloud.com', 'Ymy6iGxtgv', NULL, 1, '2016-06-19 06:07:04', '2021-05-14 12:13:53', '2024-12-27 09:16:26', 103, 65, 5, 100);
INSERT INTO `users` VALUES (166, '秦子韬', 'cC8FhmvL7r', 'student', 'zitqin10@yahoo.com', 'uzBUUAhAI4', NULL, 1, '2011-04-01 15:06:09', '2004-07-20 08:07:59', '2024-12-27 09:16:26', 146, 65, 5, 100);
INSERT INTO `users` VALUES (167, '薛秀英', '01ZKfc4PzX', 'student', 'xx617@hotmail.com', 'riTayFbsqw', NULL, 1, '2014-03-24 19:14:25', '2014-05-07 21:31:43', '2024-12-27 09:16:26', 115, 65, 5, 100);
INSERT INTO `users` VALUES (168, '雷子韬', 'i6CUtvlgWH', 'student', 'zitaol@mail.com', 'qz9itc2hAt', NULL, 1, '2003-11-17 17:13:45', '2022-01-18 14:27:02', '2024-12-27 09:16:26', 109, 65, 5, 100);
INSERT INTO `users` VALUES (169, '杜子韬', 'ySCtyMwTby', 'student', 'zitao1220@yahoo.com', 'YkWqIpboft', NULL, 1, '2015-11-17 04:27:42', '2013-08-12 14:51:12', '2024-12-27 09:16:26', 149, 65, 5, 100);
INSERT INTO `users` VALUES (170, '莫致远', 'qcQWKQJ5Af', 'student', 'mzhi@outlook.com', 'dKUvnNopx8', NULL, 1, '2018-09-06 09:04:15', '2023-02-08 10:04:47', '2024-12-27 09:16:26', 142, 65, 5, 100);
INSERT INTO `users` VALUES (171, '黄岚', 'xLsb8dvgVX', 'student', 'lan1987@outlook.com', 'Bd3oXcFfhf', NULL, 1, '2012-08-21 07:17:54', '2005-04-17 03:35:06', '2024-12-27 09:16:26', 148, 65, 5, 100);
INSERT INTO `users` VALUES (172, '余杰宏', 'ZO61j7fats', 'student', 'yujie@gmail.com', 'jStGoayfQN', NULL, 1, '2013-09-08 23:20:14', '2003-02-28 21:44:26', '2024-12-27 09:16:26', 149, 65, 5, 100);
INSERT INTO `users` VALUES (173, '孟震南', '6Eoz7cabaP', 'student', 'zhemeng@icloud.com', 'XGWdbQaS8I', NULL, 1, '2013-01-13 00:18:23', '2016-10-08 05:57:30', '2024-12-27 09:16:26', 162, 65, 5, 100);
INSERT INTO `users` VALUES (174, '韩晓明', 'ymtINtByIQ', 'student', 'haxiaoming7@yahoo.com', 'MsQirrXc6m', NULL, 1, '2019-01-06 00:19:17', '2016-09-02 03:22:53', '2024-12-27 09:16:26', 155, 65, 5, 100);
INSERT INTO `users` VALUES (175, '秦晓明', 'jleBgnmylQ', 'student', 'xiaomingqin1@outlook.com', 'yZI9SmfQ9S', NULL, 1, '2000-07-25 12:34:29', '2009-01-29 20:17:50', '2024-12-27 09:16:26', 190, 65, 5, 100);
INSERT INTO `users` VALUES (176, '谭宇宁', 'UH3Yv6h8Kn', 'student', 'yta@mail.com', 'pKFbXtLW7M', NULL, 1, '2005-07-09 14:55:01', '2011-06-08 16:34:25', '2024-12-27 09:16:26', 111, 65, 5, 100);
INSERT INTO `users` VALUES (177, '杨杰宏', 'S5tn4hRdWK', 'student', 'jiehong42@gmail.com', 'XQWdKI040f', NULL, 1, '2019-05-23 09:34:04', '2021-05-04 04:38:56', '2024-12-27 09:16:26', 174, 65, 5, 100);
INSERT INTO `users` VALUES (178, '朱致远', 'y60Cw9Xbjs', 'student', 'zhizhu@icloud.com', 'Sz7uoLOags', NULL, 1, '2011-09-09 19:36:38', '2003-06-23 12:45:43', '2024-12-27 09:16:26', 105, 65, 5, 100);
INSERT INTO `users` VALUES (179, '任子韬', 'qZch5VTQGq', 'student', 'rzita@hotmail.com', '42xN63WRE6', NULL, 1, '2001-03-27 20:51:06', '2023-05-17 07:32:06', '2024-12-27 09:16:26', 131, 65, 5, 100);
INSERT INTO `users` VALUES (180, '陶云熙', 'IOiE6hRuVP', 'student', 'tyu@icloud.com', 'ZikEaEkAXv', NULL, 1, '2024-10-24 18:30:53', '2017-04-11 23:16:59', '2024-12-27 09:16:26', 144, 65, 5, 100);
INSERT INTO `users` VALUES (181, '何子韬', '7Zo48J77Uw', 'student', 'zitao3@yahoo.com', 'vuoQzzfTDL', NULL, 1, '2017-10-11 23:13:31', '2017-08-21 07:57:14', '2024-12-27 09:16:26', 150, 65, 5, 100);
INSERT INTO `users` VALUES (182, '熊子韬', 'XJqNN6pqcB', 'student', 'xiongzitao@mail.com', 'MPpUBKczGc', NULL, 1, '2019-12-25 07:28:27', '2018-07-12 06:50:38', '2024-12-27 09:16:26', 193, 65, 5, 100);
INSERT INTO `users` VALUES (183, '孔秀英', 'b6CkwmfgJ6', 'student', 'koxiuy@yahoo.com', 'I82cmigKn0', NULL, 1, '2003-07-03 19:37:09', '2000-09-29 16:01:03', '2024-12-27 09:16:33', 169, 43, 5, 100);
INSERT INTO `users` VALUES (184, '吕睿', 's1nieedmA7', 'student', 'ruilu@icloud.com', 'dc02G2adZa', NULL, 1, '2012-05-28 00:54:51', '2010-09-19 08:38:51', '2024-12-27 09:16:33', 146, 43, 5, 100);
INSERT INTO `users` VALUES (185, '邓晓明', 'HM3Q49FBKr', 'student', 'dxiao@yahoo.com', '2fBppp0TdU', NULL, 1, '2011-05-28 20:21:37', '2000-03-19 20:59:19', '2024-12-27 09:16:33', 127, 43, 5, 100);
INSERT INTO `users` VALUES (186, '钱睿', 'tlg26K8ytp', 'student', 'rqian103@mail.com', 'jczoxrWuzE', NULL, 1, '2004-05-04 10:41:52', '2022-02-27 22:49:26', '2024-12-27 09:16:33', 167, 43, 5, 100);
INSERT INTO `users` VALUES (187, '薛子韬', 'aEH76dipdS', 'student', 'zitax@gmail.com', 'dr3dQSLU95', NULL, 1, '2022-08-28 04:18:26', '2004-04-08 01:37:15', '2024-12-27 09:16:33', 192, 43, 5, 100);
INSERT INTO `users` VALUES (188, '邱致远', 'Bn9PhEVu0L', 'student', 'qiuzhiyuan@icloud.com', 'g6RM4WRPnU', NULL, 1, '2005-07-25 16:20:15', '2011-03-04 01:34:31', '2024-12-27 09:16:33', 128, 43, 5, 100);
INSERT INTO `users` VALUES (189, '袁岚', 'VRNT85pCiI', 'student', 'lanyuan97@icloud.com', 'VmkynJ4lNn', NULL, 1, '2010-01-15 11:29:02', '2010-09-15 23:41:13', '2024-12-27 09:16:33', 153, 43, 5, 100);
INSERT INTO `users` VALUES (190, '曹嘉伦', 'NDwA24QNbz', 'student', 'jialunc122@gmail.com', 'OWPZlwYD6W', NULL, 1, '2007-02-27 01:56:47', '2016-12-13 21:22:00', '2024-12-27 09:16:33', 144, 43, 5, 100);
INSERT INTO `users` VALUES (191, '龙詩涵', 'XKR94idsal', 'student', 'longs@icloud.com', '9PjtGyutMr', NULL, 1, '2008-06-04 18:54:31', '2018-01-11 20:28:51', '2024-12-27 09:16:33', 116, 43, 5, 100);
INSERT INTO `users` VALUES (192, '毛震南', 'l8UWKfFbWG', 'student', 'zm7@gmail.com', 'Bh5CvoBLka', NULL, 1, '2012-10-27 02:17:27', '2012-05-12 11:52:58', '2024-12-27 09:16:33', 105, 43, 5, 100);
INSERT INTO `users` VALUES (193, '石璐', '49YahKNdiC', 'student', 'lushi10@icloud.com', '1pyUIjmTIu', NULL, 1, '2001-10-13 03:52:30', '2012-01-08 17:48:10', '2024-12-27 09:16:33', 160, 43, 5, 100);
INSERT INTO `users` VALUES (194, '邵致远', 'ftX7OOfd68', 'student', 'zshao@icloud.com', 'CmCp7I6Q3T', NULL, 1, '2024-12-10 13:07:15', '2004-11-09 16:09:48', '2024-12-27 09:16:33', 134, 43, 5, 100);
INSERT INTO `users` VALUES (195, '何嘉伦', 'a0yrzvCvCL', 'student', 'he78@mail.com', '3rAi7sjjzA', NULL, 1, '2020-04-02 02:46:49', '2000-04-07 09:48:18', '2024-12-27 09:16:33', 183, 43, 5, 100);
INSERT INTO `users` VALUES (196, '杨秀英', 'wQVwIU2sRX', 'student', 'yangxiuy@icloud.com', 'ytc7UUwLHN', NULL, 1, '2013-09-26 22:49:38', '2016-03-24 03:20:07', '2024-12-27 09:16:33', 119, 43, 5, 100);
INSERT INTO `users` VALUES (197, '莫嘉伦', 'CZ5h5bA2FG', 'student', 'moj@icloud.com', 'NFTRDtuwwF', NULL, 1, '2019-09-15 01:58:17', '2000-11-11 08:02:07', '2024-12-27 09:16:33', 164, 43, 5, 100);
INSERT INTO `users` VALUES (198, '马晓明', '17wfId1Ok9', 'student', 'xiaomingma6@hotmail.com', 'XOmEyHDRpO', NULL, 1, '2014-01-23 23:40:43', '2007-11-11 11:57:16', '2024-12-27 09:16:38', 192, 90, 5, 100);
INSERT INTO `users` VALUES (199, '姚宇宁', 'T8l69eAbbi', 'student', 'yuning1952@yahoo.com', 'SDgVrVwfPJ', NULL, 1, '2007-11-24 16:54:47', '2006-01-31 15:24:59', '2024-12-27 09:16:38', 100, 90, 5, 100);
INSERT INTO `users` VALUES (200, '戴云熙', 'lY31UxQGka', 'student', 'dyunxi@hotmail.com', 'h8uLjSJc2k', NULL, 1, '2015-11-15 01:47:10', '2013-07-18 14:35:34', '2024-12-27 09:16:38', 130, 90, 5, 100);
INSERT INTO `users` VALUES (201, '韦子韬', 'UvVMCRd1Mi', 'student', 'zitaowe@yahoo.com', 'UiYJLiVeX9', NULL, 1, '2024-06-28 13:48:50', '2019-05-01 10:22:44', '2024-12-27 09:16:38', 132, 90, 5, 100);
INSERT INTO `users` VALUES (202, '江嘉伦', 'So2iIkz8Vs', 'student', 'jiangjialun3@outlook.com', 'KH5crl4KDI', NULL, 1, '2007-03-07 21:02:19', '2008-06-20 13:59:21', '2024-12-27 09:16:38', 165, 90, 5, 100);
INSERT INTO `users` VALUES (203, '赵杰宏', 'dIgD8j99Ep', 'student', 'jiehozhao@mail.com', 'Iays4Z9bYw', NULL, 1, '2021-04-05 08:58:36', '2006-10-07 06:27:04', '2024-12-27 09:16:38', 190, 90, 5, 100);
INSERT INTO `users` VALUES (204, '廖震南', 'TzgzOv9BbW', 'student', 'zhennanliao8@outlook.com', '5CDwKOJJCg', NULL, 1, '2013-06-17 13:38:52', '2018-11-05 02:04:32', '2024-12-27 09:16:38', 156, 90, 5, 100);
INSERT INTO `users` VALUES (205, '夏詩涵', 'CBDATB7qNZ', 'student', 'xsh@gmail.com', 'u0Ke5eGlRD', NULL, 1, '2013-01-06 10:47:59', '2005-06-06 17:17:27', '2024-12-27 09:16:38', 145, 90, 5, 100);
INSERT INTO `users` VALUES (206, '戴晓明', 'G2tVBg4oiq', 'student', 'xiaomingdai@icloud.com', 'QL2dXoEfGG', NULL, 1, '2024-09-01 09:42:43', '2006-10-06 01:13:29', '2024-12-27 09:16:38', 194, 90, 5, 100);
INSERT INTO `users` VALUES (207, '史杰宏', 'MMBJQJuAmv', 'student', 'jieshi@gmail.com', '8MXuHo89kc', NULL, 1, '2008-11-02 18:27:18', '2010-11-30 20:53:44', '2024-12-27 09:16:38', 163, 90, 5, 100);
INSERT INTO `users` VALUES (208, '谭璐', 'bwTjwBvgyg', 'student', 'talu3@gmail.com', 'DjaduOuF8B', NULL, 1, '2011-08-24 16:58:38', '2015-06-16 11:07:01', '2024-12-27 09:16:38', 186, 90, 5, 100);
INSERT INTO `users` VALUES (209, '汪晓明', '41q8C45uQe', 'student', 'xiw02@outlook.com', 'XcAy77Jd5J', NULL, 1, '2005-07-14 22:14:43', '2007-03-09 14:21:08', '2024-12-27 09:16:38', 160, 90, 5, 100);
INSERT INTO `users` VALUES (210, '谢睿', 'Gqso51NZf7', 'student', 'rui1216@mail.com', 'c0IkOn0mKy', NULL, 1, '2012-01-14 09:52:19', '2024-04-30 08:06:29', '2024-12-27 09:16:38', 127, 90, 5, 100);
INSERT INTO `users` VALUES (211, '贾杰宏', '0hDS2TCU3e', 'student', 'jiajie@mail.com', 'esjfCzVh89', NULL, 1, '2010-02-19 17:41:21', '2011-10-18 17:10:52', '2024-12-27 09:16:49', 115, 61, 5, 100);
INSERT INTO `users` VALUES (212, '雷杰宏', '4gP0xx4z0H', 'student', 'leiji@hotmail.com', 'HWZFtrvjK6', NULL, 1, '2014-09-29 23:37:09', '2017-11-16 00:53:18', '2024-12-27 09:16:49', 184, 61, 5, 100);
INSERT INTO `users` VALUES (213, '孔詩涵', 'T8AhbWoeY4', 'student', 'kos8@gmail.com', 'YkCE0KsLP2', NULL, 1, '2015-11-05 16:30:56', '2014-01-22 07:06:23', '2024-12-27 09:16:49', 120, 61, 5, 100);
INSERT INTO `users` VALUES (214, '周震南', 'VY62QBC0wc', 'student', 'zhenzho@outlook.com', 'VnUhjwGN6y', NULL, 1, '2004-01-10 18:34:25', '2007-07-25 05:18:20', '2024-12-27 09:16:49', 149, 61, 5, 100);
INSERT INTO `users` VALUES (215, '董嘉伦', '9W7KzhvNQe', 'student', 'djialun1113@gmail.com', 'qJYWj5sQPK', NULL, 1, '2022-06-18 03:51:23', '2022-08-21 04:05:51', '2024-12-27 09:16:49', 109, 61, 5, 100);
INSERT INTO `users` VALUES (216, '尹安琪', 'qKs5aQWIZp', 'student', 'ayin@icloud.com', 'kXHIwmykib', NULL, 1, '2001-11-03 06:15:57', '2004-02-05 18:09:24', '2024-12-27 09:16:49', 145, 61, 5, 100);
INSERT INTO `users` VALUES (217, '邓子韬', '1D4PYgqAZL', 'student', 'dengzita@icloud.com', 'ygNyhICGmR', NULL, 1, '2013-04-20 01:30:04', '2013-05-11 10:18:08', '2024-12-27 09:16:49', 170, 61, 5, 100);
INSERT INTO `users` VALUES (218, '郝子异', 'L53iCY45Q6', 'student', 'ziyih@outlook.com', '5MqZO5RwZB', NULL, 1, '2013-10-24 09:56:21', '2010-02-12 22:02:32', '2024-12-27 09:16:49', 119, 61, 5, 100);
INSERT INTO `users` VALUES (219, '尹晓明', '9hMdK2T5v6', 'student', 'yinxi8@outlook.com', 'bz6prCvCJf', NULL, 1, '2000-01-31 17:08:29', '2002-02-11 08:07:06', '2024-12-27 09:16:49', 111, 61, 5, 100);
INSERT INTO `users` VALUES (220, '杜睿', 'pqbthu76Qw', 'student', 'rd523@hotmail.com', 'Tn5BIP2KkN', NULL, 1, '2002-06-25 18:22:56', '2011-05-26 08:55:02', '2024-12-27 09:16:49', 185, 61, 5, 100);
INSERT INTO `users` VALUES (221, '王子异', 'QTCy1eOPLf', 'student', 'ziyiwang20@mail.com', 'jJerdYhbUO', NULL, 1, '2005-04-25 23:45:59', '2015-11-22 19:18:12', '2024-12-27 09:16:49', 116, 61, 5, 100);
INSERT INTO `users` VALUES (222, '徐秀英', '09lhu3fhGJ', 'student', 'xuxiuying328@gmail.com', 'vaQzhJKovf', NULL, 1, '2006-05-12 21:18:09', '2007-09-25 04:21:35', '2024-12-27 09:16:49', 189, 61, 5, 100);
INSERT INTO `users` VALUES (223, '侯晓明', '9vsCQ0UqVT', 'student', 'hou09@gmail.com', 'pIx9EJhcoK', NULL, 1, '2016-12-13 20:53:07', '2019-04-20 17:47:22', '2024-12-27 09:16:49', 114, 61, 5, 100);
INSERT INTO `users` VALUES (224, '史秀英', '8EO4XkmbHV', 'student', 'shixiuying7@mail.com', 'vfpolTrnjS', NULL, 1, '2022-02-15 15:56:54', '2001-06-24 06:27:05', '2024-12-27 09:16:49', 161, 61, 5, 100);
INSERT INTO `users` VALUES (225, '李杰宏', 'C2zDgw6SBK', 'student', 'jiehong1@gmail.com', '5kat3A6bRL', NULL, 1, '2018-01-01 19:35:24', '2009-06-01 14:46:25', '2024-12-27 09:16:49', 111, 61, 5, 100);
INSERT INTO `users` VALUES (226, '贾晓明', 'sjfijhXEAo', 'student', 'jia74@icloud.com', 'UF5s5jqxlt', NULL, 1, '2005-02-04 10:42:25', '2017-03-19 03:09:10', '2024-12-27 09:16:49', 173, 61, 5, 100);
INSERT INTO `users` VALUES (227, '薛岚', 'w4iHFYKjaR', 'student', 'lanx@outlook.com', 'jadDL1CisN', NULL, 1, '2004-12-23 12:30:52', '2008-08-26 12:57:34', '2024-12-27 09:16:49', 176, 61, 5, 100);
INSERT INTO `users` VALUES (228, '杜宇宁', 'a6ItXnq408', 'student', 'duyun1007@gmail.com', '0RCYu5TcwQ', NULL, 1, '2024-12-02 03:38:27', '2012-01-06 09:42:32', '2024-12-27 09:16:49', 159, 61, 5, 100);
INSERT INTO `users` VALUES (229, '罗晓明', 'pxMNmhz5by', 'student', 'luoxiao523@icloud.com', 'roEssMHw8H', NULL, 1, '2020-01-24 07:10:01', '2005-05-06 13:46:17', '2024-12-27 09:16:49', 172, 61, 5, 100);
INSERT INTO `users` VALUES (230, '严致远', 'ClXzDZVYnY', 'student', 'zhiyuan9@mail.com', 'dWHcwgI00b', NULL, 1, '2019-01-06 06:06:12', '2000-08-11 14:34:36', '2024-12-27 09:16:49', 167, 61, 5, 100);
INSERT INTO `users` VALUES (231, '于璐', 'Tb9TAQNpgm', 'student', 'yu06@gmail.com', 'KtMkrSNWiY', NULL, 1, '2010-05-07 15:46:40', '2009-07-07 19:17:15', '2024-12-27 09:16:49', 102, 61, 5, 100);
INSERT INTO `users` VALUES (232, '龚震南', 'NFf73MHIwA', 'student', 'zhennang41@gmail.com', 'K6faNFRSU6', NULL, 1, '2011-08-15 04:39:32', '2015-10-28 20:22:47', '2024-12-27 09:16:49', 144, 61, 5, 100);
INSERT INTO `users` VALUES (233, '曹云熙', 'sixSTgiVrD', 'student', 'yunc@outlook.com', 'QNf2meE7WQ', NULL, 1, '2008-07-28 06:28:55', '2002-09-14 09:22:14', '2024-12-27 09:16:49', 162, 61, 5, 100);
INSERT INTO `users` VALUES (234, '张岚', 'PD58JurMU4', 'student', 'lan4@icloud.com', 'bixI8wds5a', NULL, 1, '2011-05-14 22:58:45', '2009-09-10 14:47:44', '2024-12-27 09:16:49', 130, 61, 5, 100);
INSERT INTO `users` VALUES (235, '谢震南', 'EVBy8GDshK', 'student', 'zhennxie5@gmail.com', 'HnLblV2Zhe', NULL, 1, '2017-01-30 06:21:41', '2000-02-19 06:43:34', '2024-12-27 09:16:49', 118, 61, 5, 100);
INSERT INTO `users` VALUES (236, '方震南', '1QOYPzEjBO', 'student', 'zfang3@icloud.com', 'kHEYJwtO1m', NULL, 1, '2023-10-23 05:17:05', '2019-11-27 18:44:25', '2024-12-27 09:16:49', 103, 61, 5, 100);
INSERT INTO `users` VALUES (237, '叶子异', 'VWNdDeP3Nh', 'student', 'yziyi58@gmail.com', 'pyUJYUSCA7', NULL, 1, '2012-05-17 03:41:04', '2017-12-25 12:19:34', '2024-12-27 09:16:49', 190, 61, 5, 100);
INSERT INTO `users` VALUES (238, '魏睿', 'MYXh3lN99o', 'student', 'weir66@outlook.com', 'WR4VmngCnr', NULL, 1, '2018-11-26 20:38:48', '2011-06-10 22:06:12', '2024-12-25 03:00:06', 156, 146, 5, 100);
INSERT INTO `users` VALUES (239, '许致远', 'k8S3ExZ6el', 'student', 'zhxu@hotmail.com', 'G2PJIj20uG', NULL, 1, '2006-05-20 17:42:56', '2009-02-05 05:32:50', '2024-12-25 03:00:06', 182, 148, 5, 100);
INSERT INTO `users` VALUES (240, '武子异', 'tP9LmfB38T', 'student', 'ziwu46@gmail.com', '4eBaLVc8P3', NULL, 1, '2017-09-01 02:13:39', '2023-01-11 22:56:53', '2024-12-27 09:17:06', 174, 83, 5, 100);
INSERT INTO `users` VALUES (241, '罗杰宏', 'NMmtfy2EEG', 'student', 'luo4@yahoo.com', 'VIqDNlHFYg', NULL, 1, '2021-04-07 15:23:27', '2020-08-04 10:01:17', '2024-12-27 09:17:06', 190, 83, 5, 100);
INSERT INTO `users` VALUES (242, '武杰宏', 'LxIwUecTd7', 'student', 'wuj79@hotmail.com', 'EKl8UY6GS8', NULL, 1, '2022-07-29 08:43:01', '2008-06-11 20:58:10', '2024-12-27 09:17:06', 126, 83, 5, 100);
INSERT INTO `users` VALUES (243, '王云熙', '1Ypz2iT5JZ', 'student', 'yunxi16@icloud.com', 'YaoMyYqa2j', NULL, 1, '2005-05-03 12:15:10', '2019-01-31 16:45:35', '2024-12-27 09:17:06', 102, 83, 5, 100);
INSERT INTO `users` VALUES (244, '贺杰宏', 'AeQacyn8aM', 'student', 'hej@outlook.com', 'mXWLz8JuSt', NULL, 1, '2003-03-06 14:53:36', '2017-02-17 23:39:21', '2024-12-27 09:17:06', 111, 83, 5, 100);
INSERT INTO `users` VALUES (245, '何璐', 'CJm7pT2hYI', 'student', 'he6@icloud.com', 'ShCmA1ln3Q', NULL, 1, '2006-12-25 13:49:00', '2023-06-22 00:00:14', '2024-12-27 09:17:06', 185, 83, 5, 100);
INSERT INTO `users` VALUES (246, '钱璐', 'p3lX0ZsYNZ', 'student', 'luq603@outlook.com', 'RNPPkrY2hd', NULL, 1, '2003-07-14 16:32:27', '2021-08-02 19:42:15', '2024-12-27 09:17:06', 104, 83, 5, 100);
INSERT INTO `users` VALUES (247, '朱宇宁', 'UD61fjBV61', 'student', 'yuningzhu@icloud.com', 'vW8ndgW8Cg', NULL, 1, '2016-02-18 14:10:29', '2013-03-27 05:25:30', '2024-12-27 09:17:06', 191, 83, 5, 100);
INSERT INTO `users` VALUES (248, '常杰宏', '8k8PhNZ0Cr', 'student', 'jiehong4@gmail.com', 'xcEpAVDJlD', NULL, 1, '2022-11-21 08:58:08', '2000-08-05 06:47:05', '2024-12-27 09:17:06', 129, 83, 5, 100);
INSERT INTO `users` VALUES (249, '史睿', 'x2Ku4Ghyag', 'student', 'srui@gmail.com', '0XxHp5HGsM', NULL, 1, '2021-04-16 09:53:13', '2021-06-25 04:17:17', '2024-12-27 09:17:06', 198, 83, 5, 100);
INSERT INTO `users` VALUES (250, '邹宇宁', 'OndTHDvCDQ', 'student', 'zouyuning@outlook.com', 'UvS0msmoiq', NULL, 1, '2010-11-26 10:51:28', '2018-11-26 18:33:52', '2024-12-27 09:17:06', 159, 83, 5, 100);
INSERT INTO `users` VALUES (251, '周安琪', 'WuALGMW5yk', 'student', 'anqizho@gmail.com', 'OO7IwYpZjB', NULL, 1, '2000-09-08 22:51:29', '2010-11-20 13:59:34', '2024-12-27 09:17:06', 127, 83, 5, 100);
INSERT INTO `users` VALUES (252, '郑子韬', '4SY8JKWz6Z', 'student', 'zzh93@gmail.com', 'CYnbWJJXKe', NULL, 1, '2006-10-08 09:48:56', '2005-08-08 13:45:02', '2024-12-27 09:17:06', 150, 83, 5, 100);
INSERT INTO `users` VALUES (253, '程嘉伦', 'r5n7RkxebR', 'student', 'cjialun@gmail.com', 'IYt6BZrXoD', NULL, 1, '2014-03-08 03:53:47', '2024-01-20 19:40:34', '2024-12-27 09:17:06', 173, 83, 5, 100);
INSERT INTO `users` VALUES (254, '张嘉伦', 'a0DnLMNJZ8', 'student', 'zjialun49@gmail.com', 'QEzURb1Yqh', NULL, 1, '2023-05-03 13:41:17', '2021-09-22 10:21:54', '2024-12-27 09:17:06', 164, 83, 5, 100);
INSERT INTO `users` VALUES (255, '江宇宁', '7AS3Pxxegs', 'student', 'jiang618@yahoo.com', 'KUkDoScL08', NULL, 1, '2001-05-09 06:33:03', '2016-08-03 12:48:09', '2024-12-27 09:17:06', 107, 83, 5, 100);
INSERT INTO `users` VALUES (256, '彭宇宁', 'Nw2cxEtfh5', 'student', 'yuningpe@gmail.com', 'qtyFQrfuhQ', NULL, 1, '2009-06-20 19:40:43', '2008-04-25 08:35:25', '2024-12-27 09:17:07', 179, 83, 5, 100);
INSERT INTO `users` VALUES (257, '彭子异', 'BvmPEnKCoA', 'student', 'peng3@gmail.com', 'A7pUBWWrW8', NULL, 1, '2023-08-01 04:27:12', '2006-03-04 08:14:12', '2024-12-27 09:17:07', 182, 83, 5, 100);
INSERT INTO `users` VALUES (258, '袁子异', 'vIZMyj6CT5', 'student', 'yuanziyi@gmail.com', 'D5JNZAFoMr', NULL, 1, '2003-05-01 10:17:34', '2006-01-13 15:38:23', '2024-12-27 09:17:07', 122, 83, 5, 100);
INSERT INTO `users` VALUES (259, '龚晓明', 'T9BUzm9Dvd', 'student', 'xgong@icloud.com', 'NObPDVVxvs', NULL, 1, '2021-12-24 22:31:05', '2018-02-26 19:18:08', '2024-12-27 09:17:07', 158, 83, 5, 100);
INSERT INTO `users` VALUES (260, '吕詩涵', 'op0Lo8hi4S', 'student', 'shihanlu1985@outlook.com', 'kbaVndF1YU', NULL, 1, '2004-02-10 10:33:24', '2006-02-15 09:44:21', '2024-12-27 09:17:07', 137, 83, 5, 100);
INSERT INTO `users` VALUES (261, '张子异', 'MTeVIWoPrZ', 'student', 'ziyizhang@outlook.com', 'doT2PjChfe', NULL, 1, '2019-06-07 17:58:53', '2024-02-10 05:18:32', '2024-12-27 09:17:07', 181, 83, 5, 100);
INSERT INTO `users` VALUES (262, '郑震南', 'O7RtxdNjzF', 'student', 'zhezheng418@yahoo.com', '3nfIVxI2Bh', NULL, 1, '2003-01-27 23:31:39', '2011-04-02 12:37:24', '2024-12-27 09:17:07', 141, 83, 5, 100);
INSERT INTO `users` VALUES (263, '徐岚', 'TJXp1w6meW', 'student', 'lanxu@gmail.com', 'GheEw7nv8j', NULL, 1, '2012-08-22 01:55:19', '2011-12-10 00:42:44', '2024-12-27 09:17:07', 107, 83, 5, 100);
INSERT INTO `users` VALUES (264, '龙子韬', 'CAFzaBls9j', 'student', 'longzitao44@mail.com', 'vExoD4zZxb', NULL, 1, '2016-11-26 21:28:50', '2016-09-15 09:13:18', '2024-12-27 09:17:07', 129, 83, 5, 100);
INSERT INTO `users` VALUES (265, '雷詩涵', 'lawdZ4Bbgo', 'student', 'leishihan8@icloud.com', 'rAwANssF4x', NULL, 1, '2002-04-30 21:08:45', '2000-08-05 08:53:34', '2024-12-27 09:17:07', 197, 83, 5, 100);
INSERT INTO `users` VALUES (266, '高睿', '0Cy46vlahD', 'student', 'rug1011@icloud.com', 'q7BgQE3vXY', NULL, 1, '2015-03-20 08:05:21', '2016-11-25 17:16:51', '2024-12-27 09:17:07', 159, 83, 5, 100);
INSERT INTO `users` VALUES (267, '马秀英', 'wb1gSoQv9a', 'student', 'ma813@hotmail.com', 'PIMM0dR2cG', NULL, 1, '2010-06-29 14:52:02', '2004-10-26 04:10:08', '2024-12-27 09:17:07', 102, 83, 5, 100);
INSERT INTO `users` VALUES (268, '崔岚', 'NzBnGWlSRL', 'student', 'cui404@mail.com', 'KR5p5Gz1Se', NULL, 1, '2012-07-27 04:55:43', '2011-12-30 21:50:44', '2024-12-27 09:17:07', 158, 83, 5, 100);
INSERT INTO `users` VALUES (269, '邵子异', 'ILzxXLR3Bo', 'student', 'shao3@outlook.com', 'dPoiOWJRmM', NULL, 1, '2018-03-26 23:58:13', '2006-11-02 11:16:14', '2024-12-27 09:17:07', 103, 83, 5, 100);
INSERT INTO `users` VALUES (270, '赵璐', 'Thb5lBJ0Wy', 'student', 'luzhao5@icloud.com', 'DEGshWaypr', NULL, 1, '2005-11-22 02:09:13', '2004-10-02 04:42:24', '2024-12-27 09:17:07', 123, 83, 5, 100);
INSERT INTO `users` VALUES (271, '姜秀英', 'LgJaDUbFBD', 'student', 'jiax@gmail.com', 'RlvJczzGgv', NULL, 1, '2005-08-03 08:34:09', '2008-12-21 09:08:51', '2024-12-27 09:17:07', 119, 83, 5, 100);
INSERT INTO `users` VALUES (272, '吴杰宏', 'ZKARU7i9C7', 'student', 'wu1228@gmail.com', '2LZkQBiybw', NULL, 1, '2020-01-25 07:32:38', '2001-09-27 06:30:37', '2024-12-27 09:17:07', 121, 83, 5, 100);
INSERT INTO `users` VALUES (273, '邓宇宁', 'TNPRWfIZ7O', 'student', 'yuningdeng@icloud.com', 'oHB5YlPHtR', NULL, 1, '2016-06-27 18:54:04', '2015-05-14 00:23:31', '2024-12-27 09:17:22', 104, 88, 5, 100);
INSERT INTO `users` VALUES (274, '孔宇宁', 'ea1qSNCeby', 'student', 'kyu429@icloud.com', 'x2hQcp85Cm', NULL, 1, '2009-06-24 20:04:58', '2000-05-01 19:11:49', '2024-12-27 09:17:22', 170, 88, 5, 100);
INSERT INTO `users` VALUES (275, '范璐', '26LFQGcjqg', 'student', 'fanlu@gmail.com', 'kRdNlpByiz', NULL, 1, '2016-05-21 11:40:03', '2017-09-19 06:30:11', '2024-12-27 09:17:22', 129, 88, 5, 100);
INSERT INTO `users` VALUES (276, '钱云熙', 'RKJXy09pbl', 'student', 'qianyunxi@icloud.com', 'KJiyJeaDQ8', NULL, 1, '2000-04-16 07:43:01', '2008-07-01 17:22:54', '2024-12-27 09:17:22', 163, 88, 5, 100);
INSERT INTO `users` VALUES (277, '高岚', 'auQA621ZHC', 'student', 'gaol4@yahoo.com', 'CQiKlI5SqW', NULL, 1, '2017-06-19 02:47:55', '2015-07-02 21:58:20', '2024-12-27 09:17:22', 170, 88, 5, 100);
INSERT INTO `users` VALUES (278, '钟睿', 'XpgqoZQKRG', 'student', 'zhongrui@icloud.com', '5wdiies9gG', NULL, 1, '2000-03-22 20:35:27', '2013-01-20 05:15:37', '2024-12-27 09:17:22', 174, 88, 5, 100);
INSERT INTO `users` VALUES (279, '张晓明', 'gfmx21LtK6', 'student', 'zhangxiaoming@outlook.com', 'Xc3nfzXZDn', NULL, 1, '2022-07-08 16:15:16', '2006-04-28 01:52:18', '2024-12-27 09:17:22', 167, 88, 5, 100);
INSERT INTO `users` VALUES (280, '彭安琪', 'dl5BvPyQPs', 'student', 'peng73@icloud.com', '4UyEh3fW24', NULL, 1, '2008-07-20 07:13:26', '2024-04-16 17:08:48', '2024-12-27 09:17:22', 160, 88, 5, 100);
INSERT INTO `users` VALUES (281, '曾嘉伦', 'hMfhxIL6Af', 'student', 'zjialun8@outlook.com', 'dOKKw1yLrl', NULL, 1, '2017-01-31 14:01:47', '2020-08-23 22:59:02', '2024-12-27 09:17:22', 144, 88, 5, 100);
INSERT INTO `users` VALUES (282, '汪震南', '6JvNGE2mmO', 'student', 'zhwang1955@gmail.com', 'XgULy5V7Q1', NULL, 1, '2004-02-11 23:14:29', '2018-05-13 15:17:13', '2024-12-27 09:17:22', 125, 88, 5, 100);
INSERT INTO `users` VALUES (283, '金秀英', 'MBNA9Fl7uH', 'student', 'xiuyingjin@icloud.com', 'YwgbZjWr4l', NULL, 1, '2008-12-16 20:45:23', '2005-08-02 02:02:53', '2024-12-27 09:17:22', 191, 88, 5, 100);
INSERT INTO `users` VALUES (284, '傅睿', 'ryouzekJdV', 'student', 'fu1226@gmail.com', '7qvM9mhb3p', NULL, 1, '2005-05-24 05:48:30', '2022-11-20 05:18:25', '2024-12-27 09:17:22', 166, 88, 5, 100);
INSERT INTO `users` VALUES (285, '曾宇宁', 'ot4IlLpTUl', 'student', 'yuninz3@outlook.com', '9UsEqRN6vX', NULL, 1, '2000-01-23 11:47:32', '2023-12-29 12:05:38', '2024-12-27 09:17:22', 172, 88, 5, 100);
INSERT INTO `users` VALUES (286, '梁秀英', 'NJfI1GBR1U', 'student', 'xiuyingliang@mail.com', 'lW3XrOnfjr', NULL, 1, '2023-02-08 11:38:40', '2002-04-21 14:02:52', '2024-12-27 09:17:22', 121, 88, 5, 100);
INSERT INTO `users` VALUES (287, '叶晓明', 'giGS2BSqVa', 'student', 'xiaye@outlook.com', 'AuL0Kdt7Pt', NULL, 1, '2017-09-07 15:10:22', '2009-03-07 20:25:50', '2024-12-27 09:17:22', 119, 88, 5, 100);
INSERT INTO `users` VALUES (288, '潘云熙', 'Gr7bxIK8Id', 'student', 'ypan7@icloud.com', 'jj1YtQFr6T', NULL, 1, '2000-04-25 08:03:29', '2000-03-17 01:28:15', '2024-12-27 09:17:22', 144, 88, 5, 100);
INSERT INTO `users` VALUES (289, '贾詩涵', 'FeLsqMYP0m', 'student', 'shihajia6@icloud.com', '3GDaJrCleM', NULL, 1, '2010-05-01 16:38:54', '2011-08-18 03:38:56', '2024-12-27 09:17:22', 148, 88, 5, 100);
INSERT INTO `users` VALUES (290, '赵睿', 'N98tQgf1VU', 'student', 'zhaorui@yahoo.com', 'DaEsKlEPHp', NULL, 1, '2002-05-30 03:29:45', '2016-04-02 09:49:33', '2024-12-27 09:17:22', 176, 88, 5, 100);
INSERT INTO `users` VALUES (291, '龙云熙', 'WkUAPZfwDJ', 'student', 'yunxi1963@outlook.com', 'Pxq36ytgPC', NULL, 1, '2019-04-16 05:27:42', '2024-08-14 16:19:08', '2024-12-27 09:17:22', 133, 88, 5, 100);
INSERT INTO `users` VALUES (292, '戴秀英', 'SClKV2jVLk', 'student', 'xidai7@gmail.com', 'eEolQK8WNc', NULL, 1, '2020-10-09 06:02:04', '2004-09-03 08:06:31', '2024-12-27 09:17:22', 166, 88, 5, 100);
INSERT INTO `users` VALUES (293, '熊嘉伦', 'mGZcbqNdLp', 'student', 'jialuxiong927@gmail.com', 'IbnJbjfzJx', NULL, 1, '2018-06-10 05:00:19', '2023-12-14 15:03:31', '2024-12-27 09:17:22', 159, 88, 5, 100);
INSERT INTO `users` VALUES (294, '邵安琪', 'jIJLDJEZBy', 'student', 'shaanqi304@gmail.com', 'MsHFEmWRFg', NULL, 1, '2011-06-06 15:16:21', '2015-05-09 02:02:39', '2024-12-27 09:17:22', 108, 88, 5, 100);
INSERT INTO `users` VALUES (295, '丁杰宏', 'lvw6ySN73d', 'student', 'jiehongding@yahoo.com', 'AsIa7fE1KJ', NULL, 1, '2009-12-24 00:17:12', '2019-07-15 00:44:34', '2024-12-27 09:17:22', 194, 88, 5, 100);
INSERT INTO `users` VALUES (296, '贺嘉伦', '4cPinh4UwA', 'student', 'jialhe@icloud.com', 'xlSxkqeSqj', NULL, 1, '2013-03-14 10:46:33', '2014-02-22 21:58:04', '2024-12-27 09:17:22', 170, 88, 5, 100);
INSERT INTO `users` VALUES (297, '唐宇宁', '0xqWgtGQpm', 'student', 'tangyuning@icloud.com', 'lu4kWBgxLS', NULL, 1, '2017-05-04 10:26:24', '2002-07-01 16:48:24', '2024-12-27 09:17:22', 175, 88, 5, 100);
INSERT INTO `users` VALUES (298, '莫宇宁', 'cbG1Q7pCC9', 'student', 'moyuning@gmail.com', '1H4S8ITba0', NULL, 1, '2010-06-20 23:57:53', '2012-07-23 08:08:05', '2024-12-27 09:17:22', 128, 88, 5, 100);
INSERT INTO `users` VALUES (299, '徐子韬', 'CAfyJS3vcm', 'student', 'xuz801@outlook.com', 'pippxC8L9p', NULL, 1, '2012-08-22 23:57:51', '2009-04-17 14:08:27', '2024-12-27 09:17:22', 163, 88, 5, 100);
INSERT INTO `users` VALUES (300, '姚子韬', 'yAnyxXGnue', 'student', 'zitaoyao@gmail.com', 'RdhvxBd3xK', NULL, 1, '2007-09-23 22:08:08', '2012-04-18 06:13:32', '2024-12-27 09:17:22', 115, 88, 5, 100);
INSERT INTO `users` VALUES (301, '邵睿', 'dyxyJbyTL6', 'student', 'ruis8@yahoo.com', '27xz8qBqY1', NULL, 1, '2001-07-23 08:49:51', '2014-02-10 05:12:09', '2024-12-27 09:17:22', 130, 88, 5, 100);
INSERT INTO `users` VALUES (302, '邱詩涵', 'MDR2y5auco', 'student', 'qiushihan1958@gmail.com', 'i0rD4tVWS2', NULL, 1, '2001-12-27 22:06:11', '2003-07-17 05:35:22', '2024-12-27 09:17:22', 154, 88, 5, 100);
INSERT INTO `users` VALUES (303, '董岚', 'bNH83nrFAp', 'student', 'landong@outlook.com', 'JIj2xQzaHT', NULL, 1, '2017-07-22 20:15:53', '2005-02-11 21:07:46', '2024-12-27 09:17:22', 185, 88, 5, 100);
INSERT INTO `users` VALUES (304, '孙岚', 'IXNgBEscEx', 'student', 'sunlan826@icloud.com', 'pOJguu10P5', NULL, 1, '2017-10-05 17:08:45', '2005-02-13 13:42:27', '2024-12-27 09:17:22', 106, 88, 5, 100);
INSERT INTO `users` VALUES (305, '龚子异', 'aZIa3aRPe9', 'student', 'zigo@gmail.com', 'RM0RiZdZYR', NULL, 1, '2004-01-06 01:44:54', '2022-05-21 17:05:08', '2024-12-27 09:17:22', 187, 88, 5, 100);
INSERT INTO `users` VALUES (306, '方晓明', 'X3WUZSwWnx', 'student', 'xiaomingfang10@gmail.com', 'JpXwrhUthY', NULL, 1, '2013-03-11 05:50:31', '2014-11-05 09:33:08', '2024-12-27 09:17:22', 115, 88, 5, 100);
INSERT INTO `users` VALUES (307, '萧睿', 'YhLlev5qBT', 'student', 'xiaorui1107@hotmail.com', 'ulWeP9DSSA', NULL, 1, '2001-01-23 20:27:00', '2006-08-10 16:33:38', '2024-12-27 09:17:22', 138, 88, 5, 100);
INSERT INTO `users` VALUES (308, '徐杰宏', 'JMOxe8JUGv', 'student', 'jiehox4@outlook.com', 'mTtLxFedQG', NULL, 1, '2017-07-09 17:22:11', '2004-04-13 13:32:51', '2024-12-27 09:17:22', 198, 88, 5, 100);
INSERT INTO `users` VALUES (309, '陶詩涵', 'wEyhyXBVSJ', 'student', 'shihan324@icloud.com', 'Zm2wLkW1vc', NULL, 1, '2020-03-28 08:19:37', '2008-04-01 19:33:49', '2024-12-27 09:17:22', 158, 88, 5, 100);
INSERT INTO `users` VALUES (310, '薛睿', 'PpX8K0sjSc', 'student', 'xue218@gmail.com', 'Z4Ov9wlypu', NULL, 1, '2007-07-08 20:40:50', '2021-01-26 06:46:51', '2024-12-27 09:17:22', 116, 88, 5, 100);
INSERT INTO `users` VALUES (311, '丁嘉伦', 'ccaqREvlAi', 'student', 'dijial@gmail.com', 'g6ysnZyOYy', NULL, 1, '2018-06-21 22:21:04', '2013-09-30 17:36:01', '2024-12-27 09:17:22', 122, 88, 5, 100);
INSERT INTO `users` VALUES (312, '汤杰宏', 'GwGgBxSLdJ', 'student', 'jiehot4@mail.com', 'T5IvR36R5W', NULL, 1, '2005-05-04 17:48:38', '2005-07-04 02:06:47', '2024-12-27 09:17:22', 144, 88, 5, 100);
INSERT INTO `users` VALUES (313, '莫安琪', '89fEaSKvu5', 'student', 'moan@gmail.com', 'SxLT5mEpf1', NULL, 1, '2002-03-01 06:58:55', '2000-10-04 11:23:45', '2024-12-27 09:17:22', 147, 88, 5, 100);
INSERT INTO `users` VALUES (314, '马嘉伦', 'RncHpq6diH', 'student', 'ma95@gmail.com', '6sJC6tpDNA', NULL, 1, '2013-09-07 11:43:47', '2009-03-05 08:49:56', '2024-12-27 09:17:22', 171, 88, 5, 100);
INSERT INTO `users` VALUES (315, '高安琪', 'F5TuADBeGb', 'student', 'gaoa@gmail.com', '13DpnTYVdy', NULL, 1, '2022-05-08 09:16:43', '2017-08-22 04:05:23', '2024-12-25 03:00:06', 153, 88, 5, 100);
INSERT INTO `users` VALUES (316, '谭子韬', 'zNd4UVjpiX', 'student', 'zitaota@icloud.com', '6GxpFBEZUH', NULL, 1, '2011-02-02 12:14:29', '2015-08-19 23:24:32', '2024-12-27 09:17:22', 131, 88, 5, 100);
INSERT INTO `users` VALUES (317, '杜安琪', 'EQyKcp3GCr', 'student', 'anqidu@hotmail.com', 'XJdtF1EEFi', NULL, 1, '2005-03-10 17:29:26', '2002-09-13 04:04:46', '2024-12-27 09:17:22', 165, 88, 5, 100);
INSERT INTO `users` VALUES (318, '龚子韬', 'U23OTLhVBz', 'student', 'gonzi@gmail.com', '2j5ylybZjz', NULL, 1, '2006-09-28 04:55:34', '2008-12-24 17:43:27', '2024-12-27 09:17:22', 117, 88, 5, 100);
INSERT INTO `users` VALUES (319, '韩安琪', 'rEk95zB2NF', 'student', 'haa1981@gmail.com', 'VUFAGQO05j', NULL, 1, '2000-05-08 10:49:34', '2013-11-10 20:06:37', '2024-12-27 09:17:22', 192, 88, 5, 100);
INSERT INTO `users` VALUES (320, '汤子异', 'X5Pg323MPG', 'student', 'ziytang@gmail.com', 'pJyUvOZyuo', NULL, 1, '2004-09-15 08:35:31', '2015-02-05 10:34:14', '2024-12-27 09:17:22', 108, 88, 5, 100);
INSERT INTO `users` VALUES (321, '袁云熙', 'AFbqlidVST', 'student', 'yunxiyua@outlook.com', '3eSzM90C6J', NULL, 1, '2010-09-24 04:11:50', '2024-04-03 09:03:43', '2024-12-27 09:17:22', 194, 88, 5, 100);
INSERT INTO `users` VALUES (322, '邹嘉伦', 'WLNiQXmLip', 'student', 'zjial2@outlook.com', 'LumKpwSE30', NULL, 1, '2000-09-23 04:22:30', '2023-12-11 12:17:18', '2024-12-27 09:17:22', 170, 88, 5, 100);
INSERT INTO `users` VALUES (323, '侯子韬', 'zsWrgr386Z', 'student', 'zitahou@icloud.com', 'PnIHVVQMkA', NULL, 1, '2009-08-13 05:48:26', '2019-04-11 03:40:51', '2024-12-27 09:17:22', 109, 88, 5, 100);
INSERT INTO `users` VALUES (324, '雷宇宁', 'z2dqU69bcK', 'student', 'lei608@hotmail.com', '6NBSWek5Ke', NULL, 1, '2020-03-19 08:33:55', '2004-07-24 18:12:57', '2024-12-27 09:17:22', 101, 88, 5, 100);
INSERT INTO `users` VALUES (325, '尹詩涵', 'EhJeZ9TGcF', 'student', 'shihan2009@icloud.com', 'c5f3248Bj1', NULL, 1, '2022-02-15 17:18:39', '2013-06-04 07:54:32', '2024-12-27 09:17:22', 164, 88, 5, 100);
INSERT INTO `users` VALUES (326, '梁杰宏', 'XnD8jeHw0s', 'student', 'jiehong910@hotmail.com', 'CpcM3JZ13M', NULL, 1, '2000-08-22 18:26:56', '2021-02-03 15:35:27', '2024-12-27 09:17:23', 157, 88, 5, 100);
INSERT INTO `users` VALUES (327, '熊杰宏', 'Sc8p6Rvo8w', 'student', 'xiongjiehong@outlook.com', '8VyKmAh9Wb', NULL, 1, '2004-10-20 11:59:09', '2015-11-30 16:43:07', '2024-12-27 09:17:23', 107, 88, 5, 100);
INSERT INTO `users` VALUES (328, '邵杰宏', 'no5MjzMbXd', 'student', 'jiehongshao@yahoo.com', 'FnI4GQxUD1', NULL, 1, '2010-04-10 07:37:25', '2006-01-04 14:36:32', '2024-12-27 09:17:23', 151, 88, 5, 100);
INSERT INTO `users` VALUES (329, '黄璐', 'i4q10UImjD', 'student', 'luhuang@yahoo.com', 'o6EPqYdeeg', NULL, 1, '2015-02-11 09:34:04', '2013-12-15 01:38:12', '2024-12-27 09:17:23', 199, 88, 5, 100);
INSERT INTO `users` VALUES (330, '郝杰宏', 'a6PX4vsgvL', 'student', 'jiehong79@outlook.com', '61ValoQmJW', NULL, 1, '2013-03-26 05:36:26', '2024-08-21 14:13:41', '2024-12-27 09:17:23', 127, 88, 5, 100);
INSERT INTO `users` VALUES (331, '贺子韬', 'CBYP5NAW6I', 'student', 'zih@icloud.com', 'yHXUyZQeeO', NULL, 1, '2012-05-20 20:39:32', '2009-02-18 08:07:40', '2024-12-27 09:17:23', 161, 88, 5, 100);
INSERT INTO `users` VALUES (332, '龙宇宁', 'DFzX9ZYTHY', 'student', 'yuning3@mail.com', 'mThCwgnnJS', NULL, 1, '2022-12-28 23:23:46', '2012-06-15 04:05:33', '2024-12-27 09:17:23', 156, 88, 5, 100);
INSERT INTO `users` VALUES (333, '汤嘉伦', 'nQM7X5lNJM', 'student', 'jialunta@gmail.com', 'h0mPnKgc5N', NULL, 1, '2000-10-12 03:50:27', '2017-03-08 09:56:46', '2024-12-27 09:17:23', 200, 88, 5, 100);
INSERT INTO `users` VALUES (334, '任嘉伦', 'YEcot61ryz', 'student', 'jialun3@mail.com', 'cHbAC3dsj5', NULL, 1, '2014-07-09 16:24:00', '2011-12-26 03:35:32', '2024-12-27 09:17:23', 155, 88, 5, 100);
INSERT INTO `users` VALUES (335, '王岚', 'dsxAZVJQ2R', 'student', 'lanwa10@outlook.com', 'ACEAdAkC3i', NULL, 1, '2008-01-04 17:04:52', '2013-03-15 09:10:21', '2024-12-27 09:17:23', 152, 88, 5, 100);
INSERT INTO `users` VALUES (336, '蒋璐', 'zdAhpeFhyG', 'student', 'ljia@icloud.com', 'pcToPhurd2', NULL, 1, '2021-05-29 20:56:26', '2005-05-02 09:45:42', '2024-12-27 09:17:23', 112, 88, 5, 100);
INSERT INTO `users` VALUES (337, '阎安琪', '4nL5HUSPeW', 'student', 'anqiya77@outlook.com', 'BYxAMg42nC', NULL, 1, '2022-07-25 20:13:58', '2005-11-26 07:57:35', '2024-12-27 09:17:23', 126, 88, 5, 100);
INSERT INTO `users` VALUES (338, '徐晓明', 'H7vnRV1Mri', 'student', 'xiaomingxu@gmail.com', 'tx5L3FTm59', NULL, 1, '2009-03-18 08:02:28', '2018-09-12 01:58:39', '2024-12-27 09:17:23', 108, 88, 5, 100);
INSERT INTO `users` VALUES (339, '孟安琪', 'M7eco6d1GU', 'student', 'manq@gmail.com', 'f6euRQ4hpJ', NULL, 1, '2012-08-03 11:01:43', '2016-11-16 11:05:41', '2024-12-27 09:17:23', 179, 88, 5, 100);
INSERT INTO `users` VALUES (340, '陈晓明', 'F6cNLptX7v', 'student', 'chenxiaoming1@gmail.com', 'ow3ELxuuWS', NULL, 1, '2006-12-29 19:16:36', '2003-11-08 21:04:35', '2024-12-25 03:00:06', 138, 88, 5, 100);
INSERT INTO `users` VALUES (341, '王秀英', 'RFhaa3oJdp', 'student', 'xiw@outlook.com', 'H4Hir2BIfW', NULL, 1, '2024-07-31 03:16:29', '2020-03-30 16:24:25', '2024-12-27 09:17:23', 183, 88, 5, 100);
INSERT INTO `users` VALUES (342, '陆子异', 'gs0ouM7hgp', 'student', 'ziyilu9@gmail.com', 'ivXieHDhyq', NULL, 1, '2008-06-05 16:42:31', '2000-05-09 15:57:21', '2024-12-27 09:17:23', 118, 88, 5, 100);
INSERT INTO `users` VALUES (343, '邱云熙', 'oVHxAYAEWo', 'student', 'yunxiqiu@icloud.com', 'xj2pLPWz9B', NULL, 1, '2011-05-05 21:13:17', '2024-08-03 08:56:31', '2024-12-27 09:17:23', 180, 88, 5, 100);
INSERT INTO `users` VALUES (344, '邱岚', 'UjrJBGOFZl', 'student', 'qiulan76@icloud.com', '6GDkeUpyJa', NULL, 1, '2011-01-23 03:34:41', '2005-10-25 20:45:40', '2024-12-27 09:17:23', 156, 88, 5, 100);
INSERT INTO `users` VALUES (345, '汤詩涵', 'bZK0B6DPeo', 'student', 'shihantang@outlook.com', 'aXxN0Mt5db', NULL, 1, '2024-03-31 05:49:52', '2000-05-02 06:09:16', '2024-12-27 09:17:23', 119, 88, 5, 100);
INSERT INTO `users` VALUES (346, '高嘉伦', 'zAVDBgrUwh', 'student', 'jiagao@gmail.com', '8g9Jtl5Kt4', NULL, 1, '2020-05-16 12:22:53', '2008-10-02 01:47:52', '2024-12-27 09:17:23', 124, 88, 5, 100);
INSERT INTO `users` VALUES (347, '熊安琪', '80pDGWZ7tf', 'student', 'xia99@icloud.com', 'urRUshUqMs', NULL, 1, '2012-10-22 12:21:11', '2011-01-25 12:35:53', '2024-12-27 09:17:23', 187, 88, 5, 100);
INSERT INTO `users` VALUES (348, '蔡致远', 'NzmCeDdOEs', 'student', 'cai2013@mail.com', 'MPFbIxXP6R', NULL, 1, '2010-07-17 11:14:39', '2011-11-05 01:03:42', '2024-12-27 09:17:23', 113, 88, 5, 100);
INSERT INTO `users` VALUES (349, '陈致远', 'YwERalimWw', 'student', 'chenzhiy96@outlook.com', '0rBQlylCrW', NULL, 1, '2021-02-02 00:58:44', '2009-04-02 04:13:46', '2024-12-27 09:17:23', 168, 88, 5, 100);
INSERT INTO `users` VALUES (350, '邹晓明', 'Iqh3jkp3ak', 'student', 'zouxiaoming@gmail.com', 'VHmRlPSxr8', NULL, 1, '2021-07-15 11:17:36', '2023-02-24 22:59:47', '2024-12-27 09:17:23', 156, 88, 5, 100);
INSERT INTO `users` VALUES (351, '傅秀英', 'bdjGKbCH4W', 'student', 'fuxi@mail.com', 'JUvYZKbGTy', NULL, 1, '2012-08-09 03:09:44', '2007-11-20 08:08:50', '2024-12-27 09:17:23', 159, 88, 5, 100);
INSERT INTO `users` VALUES (352, '秦杰宏', 'XRiDJYF5b5', 'student', 'qinjiehong@outlook.com', 'bhWP3FxLza', NULL, 1, '2020-08-11 10:25:09', '2024-11-14 08:47:43', '2024-12-27 09:17:23', 109, 88, 5, 100);
INSERT INTO `users` VALUES (353, '董杰宏', 'BMU7jmeHpW', 'student', 'dong1110@gmail.com', 'daOsTMJ5Mv', NULL, 1, '2009-07-27 02:31:05', '2004-01-19 21:20:40', '2024-12-27 09:17:23', 114, 88, 5, 100);
INSERT INTO `users` VALUES (354, '胡安琪', '4wVsI3n2Pn', 'student', 'huanqi@outlook.com', 'lyDZMLg3AA', NULL, 1, '2023-09-15 18:52:30', '2020-12-02 12:29:38', '2024-12-27 09:17:23', 148, 88, 5, 100);
INSERT INTO `users` VALUES (355, '丁震南', '1BY3KX7aGf', 'student', 'zd2010@yahoo.com', 'uLeFuAEEdq', NULL, 1, '2023-02-04 03:12:39', '2011-12-10 21:59:18', '2024-12-27 09:17:23', 101, 88, 5, 100);
INSERT INTO `users` VALUES (356, '段震南', 'Wm2ncqhinb', 'student', 'dz829@gmail.com', 'gR8UUVE0DY', NULL, 1, '2004-04-08 19:19:13', '2002-09-18 20:51:50', '2024-12-27 09:17:23', 112, 88, 5, 100);
INSERT INTO `users` VALUES (357, '胡嘉伦', 'EQW5JY6pfF', 'student', 'hu62@gmail.com', '9IsUdMmLEY', NULL, 1, '2008-09-12 18:39:43', '2018-05-06 15:59:54', '2024-12-27 09:17:23', 185, 88, 5, 100);
INSERT INTO `users` VALUES (358, '贾秀英', 'scVVFsyBAf', 'student', 'jiaxiuying1954@outlook.com', 'lgLkTPxIx3', NULL, 1, '2007-01-05 03:38:51', '2003-11-19 07:41:50', '2024-12-27 09:17:23', 161, 88, 5, 100);
INSERT INTO `users` VALUES (359, '吴晓明', 'WgLV1sA98g', 'student', 'wux@outlook.com', 'hdlTRbQgTh', NULL, 1, '2010-02-10 02:37:44', '2023-02-14 07:09:00', '2024-12-27 09:17:23', 117, 88, 5, 100);
INSERT INTO `users` VALUES (360, '韩秀英', 'Sgl0JLZ9sr', 'student', 'hanxiuying@icloud.com', '7grF1yXfWe', NULL, 1, '2011-11-26 01:31:02', '2008-03-17 13:08:10', '2024-12-27 09:17:23', 183, 88, 5, 100);
INSERT INTO `users` VALUES (361, '黄安琪', '9Rg7WjZ5f5', 'student', 'anqi93@gmail.com', 'pmhf3mang3', NULL, 1, '2013-07-22 09:41:54', '2002-03-03 10:34:16', '2024-12-27 09:17:23', 135, 88, 5, 100);
INSERT INTO `users` VALUES (362, '许杰宏', 'wJKihlRwWa', 'student', 'xjieh@icloud.com', 'SFuBOR144i', NULL, 1, '2004-06-11 17:19:23', '2011-10-07 19:24:29', '2024-12-27 09:17:23', 147, 88, 5, 100);
INSERT INTO `users` VALUES (363, '史詩涵', 'g6z7i1p7pv', 'student', 'shihanshi@gmail.com', 'bDmifk9FlG', NULL, 1, '2000-09-14 18:15:31', '2021-12-14 10:59:28', '2024-12-27 09:17:23', 163, 88, 5, 100);
INSERT INTO `users` VALUES (364, '石子韬', 'SS4yDtWMFx', 'student', 'shizita@outlook.com', 'Yyba2yH1uV', NULL, 1, '2011-02-14 07:19:27', '2004-12-27 08:00:49', '2024-12-27 09:17:23', 167, 88, 5, 100);
INSERT INTO `users` VALUES (365, '姚云熙', '0sCfIGh8Tw', 'student', 'yuy@icloud.com', '18lS7HnLlr', NULL, 1, '2009-08-06 01:39:38', '2007-03-18 09:06:09', '2024-12-27 09:17:23', 139, 88, 5, 100);
INSERT INTO `users` VALUES (366, '段云熙', 'bwRqmsZcpF', 'student', 'yunxidua@mail.com', '7vDLWB64cV', NULL, 1, '2024-07-31 06:28:39', '2022-03-29 08:08:07', '2024-12-27 09:17:23', 118, 88, 5, 100);
INSERT INTO `users` VALUES (367, '徐云熙', 'i5G7yQeFkp', 'student', 'yxu@outlook.com', '6pAW5ST2sK', NULL, 1, '2004-06-19 08:08:44', '2004-03-18 16:28:19', '2024-12-27 09:17:23', 155, 88, 5, 100);
INSERT INTO `users` VALUES (368, '崔致远', 'zKX2sE55Xr', 'student', 'zhicui8@outlook.com', 'W0x5OJIcBK', NULL, 1, '2015-03-15 11:36:56', '2004-08-25 11:35:19', '2024-12-27 09:17:23', 122, 88, 5, 100);
INSERT INTO `users` VALUES (369, '尹云熙', 'YqSiqN7yLn', 'student', 'yunxyi1018@outlook.com', 'R05xLH29Q2', NULL, 1, '2016-10-26 22:37:40', '2017-05-22 08:28:17', '2024-12-27 09:17:23', 162, 88, 5, 100);
INSERT INTO `users` VALUES (370, '钱岚', 'nMgBVucniy', 'student', 'lanq@icloud.com', 'peTXRLHskj', NULL, 1, '2006-12-01 12:34:16', '2009-05-23 18:08:14', '2024-12-27 09:17:23', 152, 88, 5, 100);
INSERT INTO `users` VALUES (371, '郝致远', 'XnP04yFhFx', 'student', 'zhiha7@icloud.com', 'NmPTtLRQFO', NULL, 1, '2012-10-23 08:29:38', '2004-04-10 01:55:12', '2024-12-27 09:17:23', 114, 88, 5, 100);
INSERT INTO `users` VALUES (372, '谢詩涵', 'x1YSmtspgM', 'student', 'shx52@gmail.com', 'A0XwfRbeaf', NULL, 1, '2015-12-19 08:10:18', '2007-10-11 21:44:28', '2024-12-27 09:17:23', 183, 88, 5, 100);
INSERT INTO `users` VALUES (373, '向秀英', 'TZ6MbAen1H', 'student', 'xxiuying67@yahoo.com', '1YYYOeotyB', NULL, 1, '2021-01-22 11:23:13', '2019-08-09 04:16:17', '2024-12-27 09:17:23', 192, 88, 5, 100);
INSERT INTO `users` VALUES (374, '孟詩涵', 'YO53Ko5ifJ', 'student', 'mengs@yahoo.com', 'jOJqban6XR', NULL, 1, '2024-12-16 13:11:39', '2004-02-29 03:02:19', '2024-12-27 09:17:27', 171, 89, 5, 100);
INSERT INTO `users` VALUES (375, '孙致远', 'DMBtffmQkl', 'student', 'zhisun@mail.com', 'CQHCiafRbf', NULL, 1, '2024-07-22 04:56:04', '2002-02-19 13:13:46', '2024-12-27 09:17:27', 140, 89, 5, 100);
INSERT INTO `users` VALUES (376, '金震南', 'nNXztouDOO', 'student', 'zhennanjin2@mail.com', '1KktCA2yXF', NULL, 1, '2017-01-01 13:47:19', '2009-09-06 11:56:54', '2024-12-27 09:17:27', 106, 89, 5, 100);
INSERT INTO `users` VALUES (377, '冯秀英', 'gGJpGciJpM', 'student', 'xiuying826@hotmail.com', 'mC0IG3bHgz', NULL, 1, '2016-03-26 10:41:59', '2004-10-30 20:45:22', '2024-12-27 09:17:27', 101, 89, 5, 100);
INSERT INTO `users` VALUES (378, '姚嘉伦', 'G2XhedJAG9', 'student', 'jyao613@outlook.com', 'ld9J5IOTj7', NULL, 1, '2011-07-09 05:05:43', '2020-01-14 05:21:01', '2024-12-27 09:17:27', 167, 89, 5, 100);
INSERT INTO `users` VALUES (379, '黎秀英', 'vRD2js8vWI', 'student', 'xiuyingl@outlook.com', 'OCD86r0qG7', NULL, 1, '2010-09-09 01:56:05', '2008-08-10 09:38:38', '2024-12-27 09:17:27', 112, 89, 5, 100);
INSERT INTO `users` VALUES (380, '韩杰宏', 'g0jo571xXU', 'student', 'jiehonghan@icloud.com', '4d5DZSeusb', NULL, 1, '2010-12-08 18:44:01', '2022-07-02 12:23:35', '2024-12-27 09:17:27', 132, 89, 5, 100);
INSERT INTO `users` VALUES (381, '侯致远', 'HH7AAUwQjP', 'student', 'hou609@outlook.com', 'QI7PxxKKuV', NULL, 1, '2004-02-20 21:15:14', '2023-05-18 17:16:10', '2024-12-27 09:17:27', 172, 89, 5, 100);
INSERT INTO `users` VALUES (382, '常云熙', 'jpPRuvAcLM', 'student', 'yuchan@icloud.com', 'MVi6xiAnlt', NULL, 1, '2010-08-20 10:49:15', '2006-02-15 00:22:00', '2024-12-27 09:17:27', 106, 89, 5, 100);
INSERT INTO `users` VALUES (383, '蔡震南', 'thtReRFjg2', 'student', 'zcai5@outlook.com', 'f2OMxiWHr8', NULL, 1, '2003-11-21 02:29:37', '2013-07-19 08:14:45', '2024-12-27 09:17:27', 188, 89, 5, 100);
INSERT INTO `users` VALUES (384, '崔子异', 'qtlxY7cT3T', 'student', 'zc63@gmail.com', 'jkifiwb2Bk', NULL, 1, '2004-07-03 19:02:00', '2019-12-23 02:48:48', '2024-12-27 09:17:27', 186, 89, 5, 100);
INSERT INTO `users` VALUES (385, '钱杰宏', 'BCOJTBcqFo', 'student', 'qian4@yahoo.com', 'toSzYDbGmL', NULL, 1, '2023-07-26 01:08:52', '2007-02-25 07:54:48', '2024-12-27 09:17:27', 116, 89, 5, 100);
INSERT INTO `users` VALUES (386, '梁晓明', '2nR6xbrz2n', 'student', 'lixia@outlook.com', 'Bgf9JXvyy4', NULL, 1, '2002-05-11 09:06:19', '2020-10-23 23:53:17', '2024-12-27 09:17:27', 152, 89, 5, 100);
INSERT INTO `users` VALUES (387, '杨云熙', 'hDAJHtdrGZ', 'student', 'yya@hotmail.com', 'pojK40Z5kh', NULL, 1, '2019-06-28 04:58:52', '2004-03-08 04:55:46', '2024-12-27 09:17:27', 178, 89, 5, 100);
INSERT INTO `users` VALUES (388, '蒋宇宁', 'j97fBDXYLG', 'student', 'yuj@icloud.com', 'wXPbmdyXbI', NULL, 1, '2018-03-17 01:24:41', '2023-04-09 09:17:32', '2024-12-27 09:17:27', 171, 89, 5, 100);
INSERT INTO `users` VALUES (389, '李嘉伦', '7GcvGRfPqx', 'student', 'jialunli@icloud.com', 'KJ4GfgZoyF', NULL, 1, '2008-03-26 01:32:12', '2020-02-16 03:36:00', '2024-12-27 09:17:27', 131, 89, 5, 100);
INSERT INTO `users` VALUES (390, '宋安琪', 'heicFCm9Hm', 'student', 'songanqi@gmail.com', 'osaTUX8MOh', NULL, 1, '2013-01-14 04:12:04', '2012-03-17 02:53:50', '2024-12-27 09:17:27', 172, 89, 5, 100);
INSERT INTO `users` VALUES (391, '毛子韬', '059EPYOKqn', 'student', 'zmao@gmail.com', 'yinlzJgky5', NULL, 1, '2019-07-18 22:37:29', '2004-06-02 12:50:06', '2024-12-27 09:17:27', 194, 89, 5, 100);
INSERT INTO `users` VALUES (392, '郭子韬', 'WPaoQ1BxIk', 'student', 'zitaogu8@icloud.com', 'vKnRfPhWL4', NULL, 1, '2018-09-06 04:21:04', '2008-04-04 10:59:48', '2024-12-27 09:17:27', 150, 89, 5, 100);
INSERT INTO `users` VALUES (393, '韩詩涵', '7DH8Ge580E', 'student', 'hans95@mail.com', 'qE0hBfYiQL', NULL, 1, '2023-01-02 09:34:01', '2001-12-11 12:49:03', '2024-12-27 09:17:27', 110, 89, 5, 100);
INSERT INTO `users` VALUES (394, '龚杰宏', '79OT9YzWhX', 'student', 'gongjieh@icloud.com', 'odlBEAJKNp', NULL, 1, '2012-06-20 20:49:03', '2018-03-30 05:28:27', '2024-12-27 09:17:27', 186, 89, 5, 100);
INSERT INTO `users` VALUES (395, '邱璐', 'wYAJ5vQvl4', 'student', 'lqiu514@mail.com', 'KWXQuS8r1D', NULL, 1, '2016-11-24 22:13:40', '2005-01-23 20:38:34', '2024-12-27 09:17:27', 111, 89, 5, 100);
INSERT INTO `users` VALUES (396, '韩子异', 'XklfyUz8pp', 'student', 'zha9@gmail.com', 'QVwnvtpz8J', NULL, 1, '2018-12-15 21:49:04', '2020-12-11 13:43:19', '2024-12-27 09:17:27', 133, 89, 5, 100);
INSERT INTO `users` VALUES (397, '黎岚', 'wznswuz9og', 'student', 'lli823@icloud.com', 'SstAZDyMdr', NULL, 1, '2019-09-08 18:37:10', '2014-04-19 15:10:04', '2024-12-27 09:17:27', 164, 89, 5, 100);
INSERT INTO `users` VALUES (398, '钟璐', '9fVhZC5Cyn', 'student', 'lu8@mail.com', 'ASO5DdZjqn', NULL, 1, '2006-07-01 14:26:57', '2022-07-14 06:31:41', '2024-12-27 09:17:32', 169, 90, 5, 100);
INSERT INTO `users` VALUES (399, '夏震南', 'EZajNTZr8J', 'student', 'zhennanxi08@icloud.com', 'CY0Ndzzs7D', NULL, 1, '2002-04-13 07:33:59', '2010-05-28 23:12:07', '2024-12-27 09:17:32', 187, 90, 5, 100);
INSERT INTO `users` VALUES (400, '石安琪', 'pZ4qsftFI3', 'student', 'shi3@mail.com', '6lC5dfmEUe', NULL, 1, '2014-12-02 17:15:14', '2004-12-15 07:58:11', '2024-12-27 09:17:32', 113, 90, 5, 100);
INSERT INTO `users` VALUES (401, '孔子韬', '9E7SDd6HvS', 'student', 'zitao79@gmail.com', 'O4KcjCZJVQ', NULL, 1, '2002-07-10 00:44:09', '2014-03-31 08:40:08', '2024-12-27 09:17:32', 134, 90, 5, 100);
INSERT INTO `users` VALUES (402, '秦宇宁', 'opbdbUJvJ3', 'student', 'yuning84@outlook.com', '0zSNoNUbZm', NULL, 1, '2015-07-22 14:44:23', '2004-05-31 06:01:24', '2024-12-27 09:17:32', 189, 90, 5, 100);
INSERT INTO `users` VALUES (403, '贺致远', 'AHglXd8P6A', 'student', 'hezhiyuan55@gmail.com', 'CbjUPdD5WK', NULL, 1, '2024-09-30 08:07:30', '2017-05-13 22:38:03', '2024-12-27 09:17:32', 163, 90, 5, 100);
INSERT INTO `users` VALUES (404, '高云熙', 'lVdUPK3WIs', 'student', 'gaoyun1@outlook.com', 'rCgHWp1sdP', NULL, 1, '2008-03-21 12:13:59', '2002-07-01 06:10:23', '2024-12-27 09:17:32', 103, 90, 5, 100);
INSERT INTO `users` VALUES (405, '夏杰宏', 'nNkJDliKv1', 'student', 'jiehongxi@icloud.com', 'baDBhnRtaG', NULL, 1, '2005-01-07 16:16:14', '2006-07-20 09:51:34', '2024-12-27 09:17:32', 144, 90, 5, 100);
INSERT INTO `users` VALUES (406, '方秀英', 'eUbDZNl6ua', 'student', 'xiuyingfang@gmail.com', 'Ijl8UOUFaU', NULL, 1, '2009-09-14 10:26:31', '2003-01-30 06:44:15', '2024-12-27 09:17:32', 129, 90, 5, 100);
INSERT INTO `users` VALUES (407, '沈子异', 'EJzCgjumg6', 'student', 'ziyi1970@yahoo.com', 'TqXaPNKkxC', NULL, 1, '2020-01-02 01:56:44', '2021-08-23 23:30:27', '2024-12-27 09:17:32', 166, 90, 5, 100);
INSERT INTO `users` VALUES (408, '姚震南', 'YJFk2YL1AF', 'student', 'zhennany@outlook.com', '2kXGlamIOq', NULL, 1, '2018-03-19 10:11:48', '2024-10-09 10:28:24', '2024-12-27 09:17:32', 109, 90, 5, 100);
INSERT INTO `users` VALUES (409, '廖睿', 'hmgPCQMFhT', 'student', 'ruli@icloud.com', 'KbhOPBtayT', NULL, 1, '2005-09-18 03:31:10', '2008-01-02 04:37:23', '2024-12-27 09:17:32', 128, 90, 5, 100);
INSERT INTO `users` VALUES (410, '廖宇宁', 'YsXkZkjqTZ', 'student', 'yuning927@icloud.com', 'rwOpZfCXua', NULL, 1, '2001-06-09 03:20:28', '2010-03-16 16:33:16', '2024-12-27 09:17:32', 103, 90, 5, 100);
INSERT INTO `users` VALUES (411, '黄詩涵', '2AIgelIlYe', 'student', 'huangshihan@hotmail.com', 'vMA8dVtpwO', NULL, 1, '2023-08-22 01:29:24', '2000-01-29 00:51:37', '2024-12-27 09:17:32', 126, 90, 5, 100);
INSERT INTO `users` VALUES (412, '程璐', 'Or9b8ii1FA', 'student', 'cheng520@mail.com', 'vZyBR8xJoA', NULL, 1, '2011-05-27 08:53:35', '2008-12-04 07:51:46', '2024-12-27 09:17:32', 152, 90, 5, 100);
INSERT INTO `users` VALUES (413, '傅云熙', 'xmqHKz860V', 'student', 'fuyunxi@gmail.com', '3Iox2AtyZ5', NULL, 1, '2013-02-08 15:05:41', '2007-07-12 15:30:42', '2024-12-27 09:17:32', 177, 90, 5, 100);
INSERT INTO `users` VALUES (414, '陶子异', 'XncN9IDFRD', 'student', 'taoziyi@gmail.com', 'ZSCT42hJVY', NULL, 1, '2020-09-26 11:48:26', '2013-12-28 15:10:03', '2024-12-27 09:17:32', 155, 90, 5, 100);
INSERT INTO `users` VALUES (415, '莫子异', 'D9ukS8KBKX', 'student', 'moziyi@yahoo.com', '7C9FJcYYes', NULL, 1, '2009-11-01 21:07:17', '2001-10-14 18:25:02', '2024-12-27 09:17:32', 184, 90, 5, 100);
INSERT INTO `users` VALUES (416, '邱安琪', 'onQ4oBw0iQ', 'student', 'anqiqiu1213@gmail.com', 'z8dIMZDND7', NULL, 1, '2017-08-06 16:30:32', '2020-05-20 02:48:55', '2024-12-27 09:17:32', 187, 90, 5, 100);
INSERT INTO `users` VALUES (417, '曾震南', 'Nbfl3hWaFs', 'student', 'zzh45@gmail.com', '0YuM8MEMr5', NULL, 1, '2009-01-08 09:17:25', '2019-10-06 07:25:22', '2024-12-27 09:17:32', 171, 90, 5, 100);
INSERT INTO `users` VALUES (418, '周詩涵', 'ydAoFWWiqK', 'student', 'shiz6@icloud.com', 'uywpHT50eH', NULL, 1, '2013-08-19 01:01:56', '2006-05-23 18:15:10', '2024-12-27 09:17:32', 120, 90, 5, 100);
INSERT INTO `users` VALUES (419, '于嘉伦', 'gYo6ITzCOh', 'student', 'jialun70@outlook.com', 'inMU3HPdmV', NULL, 1, '2000-12-31 12:29:22', '2015-11-09 06:01:55', '2024-12-27 09:17:32', 173, 90, 5, 100);
INSERT INTO `users` VALUES (420, '邱秀英', 'WsuLW4zniF', 'student', 'qiuxiu@gmail.com', '3QhPBHCpvD', NULL, 1, '2011-04-11 07:22:15', '2000-04-17 13:33:13', '2024-12-27 09:17:32', 144, 90, 5, 100);
INSERT INTO `users` VALUES (421, '曾岚', 'TAf4LjtHzn', 'student', 'zenglan13@hotmail.com', 'a1kACOhlzD', NULL, 1, '2024-04-17 00:01:22', '2000-12-18 17:43:09', '2024-12-27 09:17:32', 113, 90, 5, 100);
INSERT INTO `users` VALUES (422, '许云熙', 'JNuxn83U3f', 'student', 'xuyunxi621@gmail.com', 'fY8OSoz7sJ', NULL, 1, '2015-07-10 16:57:50', '2018-04-06 11:47:35', '2024-12-27 09:17:32', 136, 90, 5, 100);
INSERT INTO `users` VALUES (423, '王子韬', '7gwEjhGV6A', 'student', 'wangz@mail.com', '28P7DMkibw', NULL, 1, '2015-09-05 00:55:42', '2020-03-03 01:43:59', '2024-12-27 09:17:32', 197, 90, 5, 100);
INSERT INTO `users` VALUES (424, '朱晓明', 'wJ39wOnG6k', 'student', 'xiaozhu@gmail.com', 'iYlP827lBq', NULL, 1, '2024-11-07 23:36:33', '2000-09-28 14:04:00', '2024-12-27 09:17:32', 179, 90, 5, 100);
INSERT INTO `users` VALUES (425, '汤秀英', 'uu3uszBsoW', 'student', 'xiuyingtan@yahoo.com', 'rMQWRFNQ47', NULL, 1, '2009-12-04 22:59:46', '2024-02-23 04:28:41', '2024-12-27 09:17:32', 197, 90, 5, 100);
INSERT INTO `users` VALUES (426, '金子异', '2tSVBtv2jP', 'student', 'ziyijin120@gmail.com', 'eKdhBV4OpP', NULL, 1, '2014-08-03 00:57:42', '2018-05-20 00:17:45', '2024-12-27 09:17:32', 195, 90, 5, 100);
INSERT INTO `users` VALUES (427, '姚睿', 'vjaoRZAUYu', 'student', 'ruyao@icloud.com', 'MIZbIdBbrI', NULL, 1, '2017-07-19 19:18:59', '2001-10-15 13:32:28', '2024-12-27 09:17:32', 174, 90, 5, 100);
INSERT INTO `users` VALUES (428, '李子异', 'W5lcKebhBC', 'student', 'ziyili@gmail.com', '9oBMMMQ0aN', NULL, 1, '2022-11-17 06:07:10', '2009-01-03 23:06:18', '2024-12-27 09:17:32', 158, 90, 5, 100);
INSERT INTO `users` VALUES (429, '谭子异', 'hzCKGtsOZ8', 'student', 'tan7@icloud.com', 'fRC9ukE9dS', NULL, 1, '2017-09-20 23:32:36', '2013-11-05 18:34:54', '2024-12-27 09:17:32', 167, 90, 5, 100);
INSERT INTO `users` VALUES (430, '姜嘉伦', 'dJdP5R1Pvz', 'student', 'jiang7@outlook.com', 'Qlwt1xTN7s', NULL, 1, '2011-08-26 12:52:48', '2002-11-16 19:48:18', '2024-12-27 09:17:32', 175, 90, 5, 100);
INSERT INTO `users` VALUES (431, '任云熙', 'tEpF78miiE', 'student', 'yr805@gmail.com', 'dSVxrngUaF', NULL, 1, '2003-07-29 16:18:10', '2018-05-18 15:33:56', '2024-12-27 09:17:32', 141, 90, 5, 100);
INSERT INTO `users` VALUES (432, '吴致远', 'BzY1qJmoNg', 'student', 'wzhi812@icloud.com', 'q8reP1h3nq', NULL, 1, '2020-09-11 20:42:56', '2023-12-07 04:57:34', '2024-12-27 09:17:32', 163, 90, 5, 100);
INSERT INTO `users` VALUES (433, '魏致远', 'NoEnLbga7d', 'student', 'zhiyuanwei10@hotmail.com', 'pyALLdG7PU', NULL, 1, '2020-08-16 16:36:50', '2021-11-09 08:53:48', '2024-12-27 09:17:32', 140, 90, 5, 100);
INSERT INTO `users` VALUES (434, '龙震南', 'cZMwcyeqR3', 'student', 'zhennanlong1@outlook.com', '0KsjWge4qJ', NULL, 1, '2017-04-24 08:17:20', '2024-04-13 22:51:26', '2024-12-27 09:17:32', 116, 90, 5, 100);
INSERT INTO `users` VALUES (435, '姚秀英', 'qVhJzIGxhx', 'student', 'xiuyingyao7@outlook.com', '5bxlsjoCvR', NULL, 1, '2005-04-05 00:09:34', '2002-11-28 14:32:42', '2024-12-27 09:17:32', 190, 90, 5, 100);
INSERT INTO `users` VALUES (436, '龚璐', 'xfG2VNuKBA', 'student', 'gonglu1979@gmail.com', '0shvhQezup', NULL, 1, '2002-03-17 01:11:42', '2010-05-31 15:21:48', '2024-12-27 09:17:32', 189, 90, 5, 100);
INSERT INTO `users` VALUES (437, '江致远', '4Zgzf92d69', 'student', 'jz923@outlook.com', 'LSxS4cCvuc', NULL, 1, '2017-09-22 23:51:11', '2015-03-14 00:56:41', '2024-12-27 09:17:32', 140, 90, 5, 100);
INSERT INTO `users` VALUES (438, '毛岚', 'cdMzWlCq2a', 'student', 'malan18@outlook.com', '73TJ7lXoij', NULL, 1, '2010-11-20 23:07:27', '2021-03-31 09:20:42', '2024-12-27 09:17:32', 167, 90, 5, 100);
INSERT INTO `users` VALUES (439, '杨璐', 'nGRHGUz3or', 'student', 'yanglu8@icloud.com', 'MrGgKaVBRc', NULL, 1, '2001-01-14 08:55:13', '2020-04-26 09:19:30', '2024-12-27 09:17:32', 103, 90, 5, 100);
INSERT INTO `users` VALUES (440, '吕晓明', 'j4ckmGA7dK', 'student', 'xiaolu@gmail.com', 'WiVNsxFn1N', NULL, 1, '2002-07-02 20:00:05', '2002-08-08 15:44:45', '2024-12-27 09:17:32', 129, 90, 5, 100);
INSERT INTO `users` VALUES (441, '常秀英', 'ZR9rgFA3qa', 'student', 'chang63@gmail.com', '7vGIdm7foc', NULL, 1, '2014-10-29 09:32:47', '2001-02-16 05:33:27', '2024-12-27 09:17:32', 170, 90, 5, 100);
INSERT INTO `users` VALUES (442, '赵晓明', 'VNnuSwYbBv', 'student', 'xizhao@mail.com', 'GLmpO1Hd14', NULL, 1, '2012-04-10 15:39:49', '2011-08-04 12:11:38', '2024-12-27 09:17:32', 164, 90, 5, 100);
INSERT INTO `users` VALUES (443, '金睿', '1Wdzs4LXl8', 'student', 'ruijin712@outlook.com', 'UzvJSkQd8V', NULL, 1, '2007-08-31 18:05:50', '2012-07-05 03:52:03', '2024-12-27 09:17:32', 168, 90, 5, 100);
INSERT INTO `users` VALUES (444, '魏晓明', 'Hh8hLaosAA', 'student', 'xiaomingwei4@hotmail.com', 'vFCWwi6dN1', NULL, 1, '2006-11-04 16:36:33', '2001-07-02 15:16:52', '2024-12-27 09:17:32', 150, 90, 5, 100);
INSERT INTO `users` VALUES (445, '江云熙', 'oCpKni97E1', 'student', 'jiang83@icloud.com', 'hNiSmDZyAU', NULL, 1, '2020-12-10 13:52:08', '2013-09-07 05:10:37', '2024-12-27 09:17:32', 131, 90, 5, 100);
INSERT INTO `users` VALUES (446, '熊宇宁', 'abpC2ArjsT', 'student', 'yuningxion@gmail.com', '9ADa2EdC6r', NULL, 1, '2024-12-08 14:49:55', '2016-02-04 11:06:29', '2024-12-27 09:17:32', 149, 90, 5, 100);
INSERT INTO `users` VALUES (447, '段晓明', 'S8Fmi3iCNn', 'student', 'xiaomingduan81@gmail.com', '8SpZ75EE5Y', NULL, 1, '2017-08-03 00:24:06', '2006-12-18 20:20:35', '2024-12-27 09:17:32', 116, 90, 5, 100);
INSERT INTO `users` VALUES (448, '林宇宁', '821S8Fr1dr', 'student', 'lin511@gmail.com', 'EAvJZLvIjT', NULL, 1, '2024-07-21 20:32:44', '2014-09-16 02:33:10', '2024-12-27 09:17:32', 193, 90, 5, 100);
INSERT INTO `users` VALUES (449, '段秀英', 'qtDK5KdF3f', 'student', 'xid70@mail.com', '8PDkeNecTs', NULL, 1, '2016-01-27 06:31:26', '2021-05-24 03:04:06', '2024-12-27 09:17:32', 122, 90, 5, 100);
INSERT INTO `users` VALUES (450, '李致远', 'JNfwJcBYxd', 'student', 'lzhiyu5@gmail.com', '1LtkIfC01t', NULL, 1, '2016-04-22 14:05:24', '2015-12-24 15:49:59', '2024-12-27 09:17:37', 162, 91, 5, 100);
INSERT INTO `users` VALUES (451, '吴子韬', 'FQcjXpJDTT', 'student', 'zitaowu@yahoo.com', 'fECQyB1nGG', NULL, 1, '2001-07-26 13:39:30', '2023-06-08 07:50:27', '2024-12-27 09:17:37', 169, 91, 5, 100);
INSERT INTO `users` VALUES (452, '顾秀英', 'CI0F2g8TQq', 'student', 'xgu@hotmail.com', '7S2lXuwnR3', NULL, 1, '2014-06-13 14:48:05', '2017-11-27 03:17:26', '2024-12-27 09:17:37', 162, 91, 5, 100);
INSERT INTO `users` VALUES (453, '何秀英', 'je8C5pZdTL', 'student', 'xiuyinghe59@icloud.com', 'W1WcZLCLTM', NULL, 1, '2019-01-19 21:35:21', '2024-08-28 10:47:05', '2024-12-27 09:17:37', 164, 91, 5, 100);
INSERT INTO `users` VALUES (454, '李璐', 'Np4Pm81rdG', 'student', 'lul@icloud.com', 'eCzaGOcUR8', NULL, 1, '2003-03-10 07:19:05', '2009-12-15 21:34:59', '2024-12-27 09:17:37', 103, 91, 5, 100);
INSERT INTO `users` VALUES (455, '孔震南', 'DQkKGbKWy5', 'student', 'zko@gmail.com', 'AgaCdsuLcF', NULL, 1, '2014-05-02 11:32:08', '2018-09-20 11:01:36', '2024-12-27 09:17:37', 144, 91, 5, 100);
INSERT INTO `users` VALUES (456, '姜子韬', 'qO84MtFPrc', 'student', 'zitaojiang1021@hotmail.com', 's26TibVxS3', NULL, 1, '2006-05-25 13:11:09', '2007-09-08 13:27:40', '2024-12-27 09:17:37', 127, 91, 5, 100);
INSERT INTO `users` VALUES (457, '谭嘉伦', '3X8ro8td7U', 'student', 'jialun1218@outlook.com', 'TQO8iC2qHz', NULL, 1, '2008-12-31 16:58:30', '2018-10-22 09:53:10', '2024-12-27 09:17:37', 194, 91, 5, 100);
INSERT INTO `users` VALUES (458, '侯睿', 'YPnuG5TRJo', 'student', 'hourui@yahoo.com', '4qFkwEZKj7', NULL, 1, '2002-10-23 07:43:38', '2017-08-12 01:18:26', '2024-12-27 09:17:37', 124, 91, 5, 100);
INSERT INTO `users` VALUES (459, '邱子韬', 'EMrn5okf2V', 'student', 'zitaoqiu@yahoo.com', 'iZLZfyCU6R', NULL, 1, '2021-05-19 01:50:52', '2005-04-17 03:45:44', '2024-12-27 09:17:37', 105, 91, 5, 100);
INSERT INTO `users` VALUES (460, '戴杰宏', 'MXFadWRT3E', 'student', 'jiehda@gmail.com', 'bw8MRq69Yt', NULL, 1, '2019-12-29 16:21:29', '2020-10-03 02:02:18', '2024-12-27 09:17:37', 168, 91, 5, 100);
INSERT INTO `users` VALUES (461, '夏子韬', 'd8fqBKmrlC', 'student', 'xia5@hotmail.com', 'qWoeoe9wHU', NULL, 1, '2018-12-27 21:26:43', '2024-02-28 12:09:19', '2024-12-27 09:17:37', 126, 91, 5, 100);
INSERT INTO `users` VALUES (462, '程杰宏', '0Bw0QlpiLT', 'student', 'jiehongcheng@hotmail.com', 'yvWRh3Zt1I', NULL, 1, '2020-07-05 21:45:51', '2020-07-13 22:18:50', '2024-12-27 09:17:37', 139, 91, 5, 100);
INSERT INTO `users` VALUES (463, '王嘉伦', 'NdUYfZ1u7v', 'student', 'wangjia2@outlook.com', 'dYwETKYmzy', NULL, 1, '2023-03-07 01:08:55', '2017-08-12 15:28:26', '2024-12-27 09:17:37', 105, 91, 5, 100);
INSERT INTO `users` VALUES (464, '侯云熙', 'qm0fvWEQeG', 'student', 'yunxi10@gmail.com', '9IXtj8DSAB', NULL, 1, '2021-10-12 12:13:57', '2020-01-31 18:18:44', '2024-12-27 09:17:37', 108, 91, 5, 100);
INSERT INTO `users` VALUES (465, '石震南', 'Sw0R1icrWj', 'student', 'shizhe@icloud.com', 'eS5Dly2OVP', NULL, 1, '2005-11-09 18:20:59', '2023-04-02 19:37:21', '2024-12-27 09:17:37', 115, 91, 5, 100);
INSERT INTO `users` VALUES (466, '尹致远', '3JiFSRcui1', 'student', 'yinzhiyu@gmail.com', 'xXBECSA4M7', NULL, 1, '2003-12-13 05:57:56', '2008-05-12 11:15:58', '2024-12-27 09:17:37', 139, 91, 5, 100);
INSERT INTO `users` VALUES (467, '黎子异', 'th3byHsYW8', 'student', 'li105@gmail.com', 'UlYY22O6sx', NULL, 1, '2019-02-24 19:41:35', '2002-09-13 06:18:36', '2024-12-27 09:17:37', 186, 91, 5, 100);
INSERT INTO `users` VALUES (468, '王安琪', '5j6b9chVBU', 'student', 'wangan@yahoo.com', 'DhgDDBS4JV', NULL, 1, '2007-05-26 07:28:52', '2022-12-03 15:34:30', '2024-12-27 09:17:37', 180, 91, 5, 100);
INSERT INTO `users` VALUES (469, '段致远', 'NMO02nyJYk', 'student', 'duan3@hotmail.com', 'wHVHaD545I', NULL, 1, '2024-08-02 04:24:23', '2010-07-14 13:57:14', '2024-12-27 09:17:37', 166, 91, 5, 100);
INSERT INTO `users` VALUES (470, '何宇宁', 'bSwAi8yRHU', 'student', 'yuninghe81@gmail.com', 'iZtmHCUwEB', NULL, 1, '2021-05-31 22:43:26', '2018-10-25 22:14:17', '2024-12-27 09:17:37', 177, 91, 5, 100);
INSERT INTO `users` VALUES (471, '余子韬', 'cALZZ9KpYH', 'student', 'zitao2@gmail.com', 'XEaTUfJPsm', NULL, 1, '2000-07-20 12:19:08', '2010-12-12 04:59:42', '2024-12-27 09:17:37', 195, 91, 5, 100);
INSERT INTO `users` VALUES (472, '向云熙', 'LpmFsOuw1G', 'student', 'yxiang@yahoo.com', 'JxWNzCJqwH', NULL, 1, '2015-03-10 18:14:54', '2023-11-08 19:43:35', '2024-12-27 09:17:37', 164, 91, 5, 100);
INSERT INTO `users` VALUES (473, '程致远', '5HF38awnPu', 'student', 'chengzhiyu@mail.com', 'zA2w1kRCQC', NULL, 1, '2002-07-19 17:37:31', '2014-09-08 01:05:59', '2024-12-27 09:17:37', 148, 91, 5, 100);
INSERT INTO `users` VALUES (474, '龚詩涵', '7EYnK18LL8', 'student', 'sg66@icloud.com', 'mWjqZt5F0E', NULL, 1, '2002-03-01 18:07:25', '2000-05-02 07:14:44', '2024-12-27 09:17:37', 135, 91, 5, 100);
INSERT INTO `users` VALUES (475, '马睿', 'pQ0h1uFPmt', 'student', 'mar4@icloud.com', '44Zq8esfPc', NULL, 1, '2022-01-17 22:00:09', '2002-04-11 16:48:59', '2024-12-27 09:17:37', 128, 91, 5, 100);
INSERT INTO `users` VALUES (476, '陈子韬', 'SzYMmoKm6m', 'student', 'zichen@mail.com', 'zyO3CcXIpf', NULL, 1, '2019-08-08 15:36:55', '2022-05-29 08:36:51', '2024-12-27 09:17:37', 135, 91, 5, 100);
INSERT INTO `users` VALUES (477, '田晓明', 'sRnEMSIyFC', 'student', 'tianxiaoming@gmail.com', 'Cygbp4JAA5', NULL, 1, '2011-12-08 11:25:32', '2022-01-29 09:14:37', '2024-12-27 09:17:37', 189, 91, 5, 100);
INSERT INTO `users` VALUES (478, '萧子韬', 'o8ZsXulfZg', 'student', 'zitao1989@mail.com', 'lwtG0vzTC3', NULL, 1, '2020-05-08 04:30:14', '2005-05-23 17:27:10', '2024-12-27 09:17:37', 163, 91, 5, 100);
INSERT INTO `users` VALUES (479, '廖杰宏', '3E8DkK4AIE', 'student', 'jiehli@hotmail.com', 'K5OAcgcnDx', NULL, 1, '2020-02-06 11:37:16', '2009-01-09 21:37:05', '2024-12-27 09:17:37', 151, 91, 5, 100);
INSERT INTO `users` VALUES (480, '周子异', 'q1Dt7lbUgC', 'student', 'ziyizh9@icloud.com', 'E2WWNqT04L', NULL, 1, '2021-07-01 01:26:26', '2019-06-20 17:58:20', '2024-12-27 09:17:37', 193, 91, 5, 100);
INSERT INTO `users` VALUES (481, '廖晓明', '8p6kbVRZxw', 'student', 'liax@gmail.com', 'j84vu6rsMP', NULL, 1, '2003-04-08 10:25:07', '2021-11-12 02:59:29', '2024-12-27 09:17:37', 116, 91, 5, 100);
INSERT INTO `users` VALUES (482, '蔡安琪', '3NtTmECRE8', 'student', 'caianq530@icloud.com', 'gbCmAJHk27', NULL, 1, '2012-01-21 10:13:49', '2017-06-02 10:50:42', '2024-12-27 09:17:37', 141, 91, 5, 100);
INSERT INTO `users` VALUES (483, '蔡睿', '4OA70G17sF', 'student', 'rui2007@gmail.com', 'Secne48Lwh', NULL, 1, '2010-04-06 01:03:56', '2010-09-19 15:03:59', '2024-12-27 09:17:37', 195, 91, 5, 100);
INSERT INTO `users` VALUES (484, '熊璐', 'Zrh70oi4Bd', 'student', 'luxiong3@icloud.com', '7rFjyYbtEO', NULL, 1, '2016-10-06 17:19:30', '2003-04-01 21:29:42', '2024-12-27 09:17:37', 171, 91, 5, 100);
INSERT INTO `users` VALUES (485, '袁詩涵', 'fWOK6TZPzt', 'student', 'shihanyuan@outlook.com', 'zD9wb83RUv', NULL, 1, '2021-11-19 02:51:48', '2010-08-19 22:50:50', '2024-12-27 09:17:37', 127, 91, 5, 100);
INSERT INTO `users` VALUES (486, '蔡子异', 'VaBqE8PTx0', 'student', 'ziyicai89@outlook.com', 'dbxeowHowE', NULL, 1, '2001-07-15 18:35:53', '2020-04-27 23:07:18', '2024-12-27 09:17:37', 197, 91, 5, 100);
INSERT INTO `users` VALUES (487, '赵震南', 'Nse4RLcagM', 'student', 'zhennanz01@gmail.com', 'jtKavDpr77', NULL, 1, '2008-07-04 09:25:54', '2020-04-02 07:10:15', '2024-12-27 09:17:37', 177, 91, 5, 100);
INSERT INTO `users` VALUES (488, '丁晓明', 'qCgL6IUZEx', 'student', 'xding@mail.com', 'O9l3p3Lzdz', NULL, 1, '2021-10-25 01:03:26', '2022-02-25 10:02:59', '2024-12-27 09:17:37', 197, 91, 5, 100);
INSERT INTO `users` VALUES (489, '陈嘉伦', 'mcnt2rn2Js', 'student', 'jialun98@gmail.com', '8OF5zjklPe', NULL, 1, '2021-11-08 21:50:07', '2018-09-19 15:14:38', '2024-12-27 09:17:37', 135, 91, 5, 100);
INSERT INTO `users` VALUES (490, '常詩涵', 'AlPCWFZa4v', 'student', 'shihch@gmail.com', 'VhYrcUbsnY', NULL, 1, '2022-12-18 15:06:57', '2017-06-06 09:23:53', '2024-12-27 09:17:37', 159, 91, 5, 100);
INSERT INTO `users` VALUES (491, '高致远', '72faw69vxt', 'student', 'zgao@gmail.com', 'Q523gj6mUK', NULL, 1, '2019-05-08 12:34:50', '2021-05-18 22:15:42', '2024-12-27 09:17:37', 200, 91, 5, 100);
INSERT INTO `users` VALUES (492, '朱震南', 'ztQrIPqw7e', 'student', 'zz120@gmail.com', 'pCcKetk2ql', NULL, 1, '2003-01-06 13:07:02', '2011-10-01 18:01:50', '2024-12-27 09:17:43', 183, 92, 5, 100);
INSERT INTO `users` VALUES (493, '侯詩涵', '05bj8AuCT6', 'student', 'hshihan125@outlook.com', '2LG82LEz3F', NULL, 1, '2023-07-04 03:06:03', '2000-04-24 01:53:14', '2024-12-27 09:17:43', 198, 92, 5, 100);
INSERT INTO `users` VALUES (494, '程秀英', 'fymkTsgyjx', 'student', 'xiuyingcheng@outlook.com', 'f441s2RVfo', NULL, 1, '2008-06-12 21:20:16', '2017-11-29 06:29:38', '2024-12-27 09:17:43', 164, 92, 5, 100);
INSERT INTO `users` VALUES (495, '方安琪', 'xMaY0369Vo', 'student', 'fanganqi76@gmail.com', 'H2nQ6dsY31', NULL, 1, '2022-08-10 18:29:09', '2016-03-14 06:35:23', '2024-12-27 09:17:43', 185, 92, 5, 100);
INSERT INTO `users` VALUES (496, '毛云熙', 'X5ihBQQxhq', 'student', 'myun9@gmail.com', 'jThy2ybc28', NULL, 1, '2006-08-05 13:53:14', '2000-01-01 23:31:41', '2024-12-27 09:17:43', 174, 92, 5, 100);
INSERT INTO `users` VALUES (497, '马云熙', 'FgbfGx7k12', 'student', 'mayunx@hotmail.com', 'GCEC7jyZxz', NULL, 1, '2021-04-02 09:52:56', '2001-07-10 06:29:23', '2024-12-27 09:17:43', 137, 92, 5, 100);
INSERT INTO `users` VALUES (498, '邵宇宁', '2VnEIMfx4A', 'student', 'yuningshao@gmail.com', 'tgrC9PhPcM', NULL, 1, '2003-10-13 02:02:46', '2010-08-02 17:15:24', '2024-12-27 09:17:43', 174, 92, 5, 100);
INSERT INTO `users` VALUES (499, '尹杰宏', '3XFNzVqjxN', 'student', 'yjieho@icloud.com', 'r66KCDjyWz', NULL, 1, '2011-07-02 21:36:15', '2004-06-20 11:26:54', '2024-12-27 09:17:43', 115, 92, 5, 100);
INSERT INTO `users` VALUES (500, '雷致远', 'A9xEcD2l8X', 'student', 'zhile@yahoo.com', 'OJBVQ66zGw', NULL, 1, '2015-02-04 07:53:56', '2010-05-22 21:22:22', '2024-12-27 09:17:43', 183, 92, 5, 100);
INSERT INTO `users` VALUES (501, '韦璐', 'XeuoXretWw', 'student', 'luwe1961@mail.com', 'jPy7m9WqBq', NULL, 1, '2001-03-04 09:15:37', '2018-06-03 12:58:32', '2024-12-27 09:17:43', 192, 92, 5, 100);
INSERT INTO `users` VALUES (502, '余睿', 'YhkO2zQFZn', 'student', 'yur@icloud.com', 'pb5RC2jNef', NULL, 1, '2001-07-02 00:53:28', '2007-03-17 23:33:43', '2024-12-27 09:17:43', 118, 92, 5, 100);
INSERT INTO `users` VALUES (503, '高子韬', 'Qb2lMQZfzL', 'student', 'gaozitao1967@hotmail.com', 'oTsfxHwx5q', NULL, 1, '2016-01-25 09:05:13', '2007-10-03 03:34:24', '2024-12-27 09:17:43', 136, 92, 5, 100);
INSERT INTO `users` VALUES (504, '郑璐', 't5GfxV6VCu', 'student', 'zheng7@hotmail.com', 'S0DEu2Hv43', NULL, 1, '2022-02-27 22:45:46', '2001-05-07 17:25:07', '2024-12-27 09:17:43', 135, 92, 5, 100);
INSERT INTO `users` VALUES (505, '陆震南', 'Krjwf1Pnzv', 'student', 'zhl@gmail.com', 'P44qtOw1Uf', NULL, 1, '2004-02-02 11:45:29', '2021-05-08 13:53:57', '2024-12-27 09:17:43', 107, 92, 5, 100);
INSERT INTO `users` VALUES (506, '孟宇宁', 'O9djKjjH3w', 'student', 'yumeng@icloud.com', 'qHXIL9JXWN', NULL, 1, '2000-06-27 19:17:39', '2010-02-20 17:36:39', '2024-12-27 09:17:43', 176, 92, 5, 100);
INSERT INTO `users` VALUES (507, '阎云熙', 'dDXmTRulhb', 'student', 'yyan86@icloud.com', 'jTVsbJuVY1', NULL, 1, '2009-01-05 01:47:43', '2002-02-07 17:03:37', '2024-12-27 09:17:43', 182, 92, 5, 100);
INSERT INTO `users` VALUES (508, '杜致远', 'PPkt3IhHFn', 'student', 'zhiyuan629@icloud.com', 'daIivCMlsN', NULL, 1, '2009-11-23 19:09:59', '2000-07-12 20:35:09', '2024-12-27 09:17:43', 147, 92, 5, 100);
INSERT INTO `users` VALUES (509, '方子异', 'zRGoqs3rbh', 'student', 'zifang@mail.com', 'y8yuLXJRbd', NULL, 1, '2022-12-10 04:50:35', '2019-06-16 18:28:42', '2024-12-27 09:17:43', 130, 92, 5, 100);
INSERT INTO `users` VALUES (510, '周云熙', 'DRmONXsVmr', 'student', 'yunxi60@icloud.com', 'ZnJeRPhLS2', NULL, 1, '2013-09-13 06:51:48', '2024-02-17 23:34:43', '2024-12-27 09:17:43', 186, 92, 5, 100);
INSERT INTO `users` VALUES (511, '范云熙', 'mqB0hsDD8o', 'student', 'yf94@gmail.com', '1UZQ3c8nUT', NULL, 1, '2006-06-14 05:08:40', '2023-04-20 00:25:49', '2024-12-27 09:17:43', 163, 92, 5, 100);
INSERT INTO `users` VALUES (512, '熊睿', 'dRgg0iRF7D', 'student', 'ruixion@gmail.com', 'TqKNyYmfUx', NULL, 1, '2012-03-13 09:31:04', '2012-01-27 03:37:22', '2024-12-27 09:17:43', 137, 92, 5, 100);
INSERT INTO `users` VALUES (513, '邵子韬', 'CPwhG3x5lT', 'student', 'shaozit@hotmail.com', 'isBg99pWzr', NULL, 1, '2014-04-25 15:00:13', '2005-03-08 13:58:50', '2024-12-27 09:17:43', 105, 92, 5, 100);
INSERT INTO `users` VALUES (514, '胡岚', 'aWbbkhWFwA', 'student', 'hu5@gmail.com', 'Nx6lrYSyWP', NULL, 1, '2004-10-10 10:22:36', '2017-12-16 17:55:31', '2024-12-27 09:17:43', 154, 92, 5, 100);
INSERT INTO `users` VALUES (515, '薛震南', 'GTCUAUjXsG', 'student', 'zhennxu@yahoo.com', '5xmfbjOvW7', NULL, 1, '2014-06-14 15:34:21', '2003-03-18 07:51:50', '2024-12-27 09:17:43', 106, 92, 5, 100);
INSERT INTO `users` VALUES (516, '顾震南', 'MmhYGbfFHU', 'student', 'guzhennan@gmail.com', 'xbm3o2dQjR', NULL, 1, '2021-02-23 21:06:20', '2010-04-04 03:02:45', '2024-12-27 09:17:43', 110, 92, 5, 100);
INSERT INTO `users` VALUES (517, '郭杰宏', 'opHpihW2Hi', 'student', 'guo106@gmail.com', 'afjicsqQX1', NULL, 1, '2009-11-29 23:29:55', '2002-07-21 05:28:13', '2024-12-27 09:17:43', 196, 92, 5, 100);
INSERT INTO `users` VALUES (518, '姚安琪', 'BWfNjqN524', 'student', 'yaoanq@yahoo.com', '2JMduhEIpY', NULL, 1, '2007-08-27 00:33:28', '2010-06-11 05:00:52', '2024-12-27 09:17:43', 139, 92, 5, 100);
INSERT INTO `users` VALUES (519, '雷秀英', 'DJV7tbynzh', 'student', 'xle@outlook.com', 'cCpUkKUlpm', NULL, 1, '2010-06-16 06:50:36', '2001-06-05 15:09:19', '2024-12-27 09:17:43', 119, 92, 5, 100);
INSERT INTO `users` VALUES (520, '钟子异', 'ETsVOa3VId', 'student', 'ziyi74@hotmail.com', 'fnBtGdOGrD', NULL, 1, '2005-08-06 22:23:21', '2018-05-05 01:40:45', '2024-12-27 09:17:43', 141, 92, 5, 100);
INSERT INTO `users` VALUES (521, '史安琪', 'AYd7wKjWfu', 'student', 'sanqi@gmail.com', 'hLbF7l5ImC', NULL, 1, '2016-11-22 22:26:20', '2022-04-18 23:00:02', '2024-12-27 09:17:43', 106, 92, 5, 100);
INSERT INTO `users` VALUES (522, '金嘉伦', 'Jzr7wftRVC', 'student', 'jjial@hotmail.com', '4L8YlbJIJm', NULL, 1, '2015-06-09 10:35:51', '2020-04-20 08:39:57', '2024-12-27 09:17:43', 192, 92, 5, 100);
INSERT INTO `users` VALUES (523, '萧嘉伦', 'hT68SivQNr', 'student', 'jxiao2@icloud.com', 'uY3vwJtcin', NULL, 1, '2011-07-23 17:43:15', '2005-07-23 00:24:53', '2024-12-27 09:17:43', 196, 92, 5, 100);
INSERT INTO `users` VALUES (524, '孙云熙', 'rVogTaZtYb', 'student', 'ysun@outlook.com', '29vWzZgvwJ', NULL, 1, '2013-04-29 07:09:26', '2017-03-08 21:15:22', '2024-12-27 09:17:43', 178, 92, 5, 100);
INSERT INTO `users` VALUES (525, '孔嘉伦', 'paNgJ52GR7', 'student', 'jko@gmail.com', 'ZVZX4i7qMT', NULL, 1, '2021-01-11 17:39:22', '2005-08-03 23:31:45', '2024-12-27 09:17:43', 114, 92, 5, 100);
INSERT INTO `users` VALUES (526, '余安琪', '90x3cd70Ro', 'student', 'yu7@gmail.com', 'Nbo3HYLCaJ', NULL, 1, '2002-07-05 22:22:11', '2003-06-05 19:05:42', '2024-12-27 09:17:43', 119, 92, 5, 100);
INSERT INTO `users` VALUES (527, '尹岚', '02k2P3J9XQ', 'student', 'lan125@mail.com', 'FpZnJrJI8h', NULL, 1, '2023-06-30 06:35:33', '2015-03-14 14:38:20', '2024-12-27 09:17:43', 103, 92, 5, 100);
INSERT INTO `users` VALUES (528, '叶嘉伦', 'CmBkGqJgQ7', 'student', 'yejial1950@outlook.com', 'xB2wwJlsYc', NULL, 1, '2006-10-12 12:23:56', '2004-01-14 01:23:32', '2024-12-27 09:17:43', 179, 92, 5, 100);
INSERT INTO `users` VALUES (529, '陆子韬', 'Xis1KIsZzs', 'student', 'zital@yahoo.com', 'PHOerUPJxd', NULL, 1, '2010-03-14 11:39:28', '2016-08-22 07:12:50', '2024-12-27 09:17:43', 177, 92, 5, 100);
INSERT INTO `users` VALUES (530, '郑詩涵', 'TjstyeQQ0K', 'student', 'zhenshi@icloud.com', 'RWObO1KQJC', NULL, 1, '2010-07-02 08:50:44', '2009-04-09 08:47:08', '2024-12-25 03:00:07', 164, 92, 5, 100);
INSERT INTO `users` VALUES (531, '杨晓明', 'utuavfwB73', 'student', 'xiaoming617@icloud.com', 'ecxJ6lgmke', NULL, 1, '2014-10-17 06:14:57', '2006-05-09 13:20:55', '2024-12-27 09:17:43', 111, 92, 5, 100);
INSERT INTO `users` VALUES (532, '汪詩涵', 't4X55HrAlh', 'student', 'shihawan715@outlook.com', 'YRnnWjZPUY', NULL, 1, '2020-08-31 23:02:36', '2024-07-20 11:04:31', '2024-12-27 09:17:43', 102, 92, 5, 100);
INSERT INTO `users` VALUES (533, '邓睿', 'd7byYUdvid', 'student', 'rui4@icloud.com', 'BlOerW3RKA', NULL, 1, '2020-10-18 23:42:43', '2010-04-19 19:39:35', '2024-12-27 09:17:43', 129, 92, 5, 100);
INSERT INTO `users` VALUES (534, '史子异', 'fRjVtD5mTa', 'student', 'sziyi@outlook.com', 'pBcmHnWZZS', NULL, 1, '2013-08-11 06:36:10', '2002-03-29 18:02:59', '2024-12-27 09:17:43', 183, 92, 5, 100);
INSERT INTO `users` VALUES (535, '马子异', 'CtCUpGuiKk', 'student', 'maziyi3@outlook.com', 'JaByXEWU8E', NULL, 1, '2019-02-18 02:33:42', '2015-01-05 05:27:34', '2024-12-27 09:17:43', 108, 92, 5, 100);
INSERT INTO `users` VALUES (536, '史嘉伦', 'Uz4GpqMdzF', 'student', 'shij@icloud.com', 'pe1f5y4mZ3', NULL, 1, '2000-12-30 04:57:05', '2005-01-03 10:42:18', '2024-12-27 09:17:43', 162, 92, 5, 100);
INSERT INTO `users` VALUES (537, '胡晓明', 'effZxCZHEf', 'student', 'xiaoming93@gmail.com', 'XLdTML6zhA', NULL, 1, '2003-03-28 13:54:32', '2012-05-04 22:30:37', '2024-12-27 09:17:43', 114, 92, 5, 100);
INSERT INTO `users` VALUES (538, '孔安琪', 'CEsLxOg4Z4', 'student', 'anqikong@gmail.com', '2Lm89UnJ5y', NULL, 1, '2015-10-28 12:11:37', '2010-02-24 04:25:19', '2024-12-27 09:17:43', 180, 92, 5, 100);
INSERT INTO `users` VALUES (539, '郝晓明', 'SOylBIGmpR', 'student', 'haoxiaom@mail.com', 'iY0z5nvKHi', NULL, 1, '2019-07-25 16:42:49', '2008-09-03 18:32:51', '2024-12-27 09:17:43', 127, 92, 5, 100);
INSERT INTO `users` VALUES (540, '阎嘉伦', 'yRQ98MbWho', 'student', 'jialunya2012@outlook.com', 'UKGsuiRuw9', NULL, 1, '2004-04-05 19:17:04', '2009-02-18 22:50:23', '2024-12-27 09:17:43', 168, 92, 5, 100);
INSERT INTO `users` VALUES (541, '阎岚', 'N6tmYwnbGh', 'student', 'lan40@mail.com', '65YhORooFf', NULL, 1, '2008-06-17 07:54:05', '2001-07-12 11:42:38', '2024-12-27 09:17:43', 145, 92, 5, 100);
INSERT INTO `users` VALUES (542, '贾子异', 'd5MoAd3aiT', 'student', 'jia3@icloud.com', '5SeCOTn9GZ', NULL, 1, '2015-01-27 00:36:17', '2018-10-05 16:44:50', '2024-12-27 09:17:57', 139, 93, 5, 100);
INSERT INTO `users` VALUES (543, '孔晓明', 'FxX8qolcYA', 'student', 'xiaomingkong@outlook.com', 'h43hfa75rz', NULL, 1, '2006-05-21 05:46:34', '2013-09-14 03:28:21', '2024-12-27 09:17:57', 188, 93, 5, 100);
INSERT INTO `users` VALUES (544, '罗詩涵', '2DH4FvJOJx', 'student', 'shihan9@hotmail.com', 'mqH7WdNFy8', NULL, 1, '2022-12-13 03:20:19', '2020-01-11 18:12:01', '2024-12-27 09:17:57', 146, 93, 5, 100);
INSERT INTO `users` VALUES (545, '黎睿', 'HNtaMw1BLR', 'student', 'lrui8@gmail.com', 'KthyTxiGeU', NULL, 1, '2013-01-17 19:24:45', '2021-04-14 23:36:16', '2024-12-27 09:17:57', 126, 93, 5, 100);
INSERT INTO `users` VALUES (546, '林岚', 'XfeeOXA5PS', 'student', 'linla@mail.com', 'AoVyQ4D055', NULL, 1, '2009-12-19 00:58:37', '2022-01-24 09:38:19', '2024-12-27 09:17:57', 171, 93, 5, 100);
INSERT INTO `users` VALUES (547, '蒋睿', 'Uw6SkC5S3U', 'student', 'jirui1104@outlook.com', 'R1faSNFMCy', NULL, 1, '2009-08-21 20:04:58', '2008-12-13 19:55:14', '2024-12-27 09:17:57', 166, 93, 5, 100);
INSERT INTO `users` VALUES (548, '熊晓明', 'dFcmKyXwgV', 'student', 'xxi@hotmail.com', '9vMYZXYdq0', NULL, 1, '2019-10-11 02:45:47', '2000-09-25 13:10:11', '2024-12-27 09:17:57', 146, 93, 5, 100);
INSERT INTO `users` VALUES (549, '黎云熙', 'AnpleTiUhf', 'student', 'yunxi315@icloud.com', 'h6WUEB0cme', NULL, 1, '2002-08-15 09:42:33', '2005-01-13 09:41:10', '2024-12-27 09:17:57', 158, 93, 5, 100);
INSERT INTO `users` VALUES (550, '孙璐', 'L2MgJthOnA', 'student', 'sunlu@outlook.com', 'DCARRUn9fU', NULL, 1, '2017-04-26 23:22:51', '2011-11-20 08:26:49', '2024-12-27 09:17:57', 120, 93, 5, 100);
INSERT INTO `users` VALUES (551, '朱安琪', 'FFeYR5E5s3', 'student', 'azhu@gmail.com', 'BGvCRwSuUN', NULL, 1, '2012-08-20 07:01:39', '2011-12-21 12:00:44', '2024-12-27 09:17:57', 158, 93, 5, 100);
INSERT INTO `users` VALUES (552, '徐子异', 'QJMKbGEfsZ', 'student', 'ziyi10@hotmail.com', 'juLlsStC87', NULL, 1, '2008-04-15 08:34:48', '2021-10-24 21:04:33', '2024-12-27 09:17:57', 191, 93, 5, 100);
INSERT INTO `users` VALUES (553, '吴子异', 'jFXe6pzNDy', 'student', 'wuz1129@icloud.com', 'jpTtX31MrS', NULL, 1, '2016-01-16 04:08:00', '2014-09-07 17:24:20', '2024-12-27 09:17:57', 158, 93, 5, 100);
INSERT INTO `users` VALUES (554, '何子异', 'vVAQFBmW2n', 'student', 'he307@outlook.com', 'r2F60ZCcBj', NULL, 1, '2004-06-14 22:08:24', '2008-05-13 12:22:34', '2024-12-27 09:17:57', 173, 93, 5, 100);
INSERT INTO `users` VALUES (555, '贺晓明', 'oZbYiufFFc', 'student', 'hxiaoming@gmail.com', 'x7Tkp9JwmD', NULL, 1, '2014-04-09 10:11:03', '2009-05-02 09:07:26', '2024-12-27 09:17:57', 136, 93, 5, 100);
INSERT INTO `users` VALUES (556, '马致远', '3dJx12Mv3P', 'student', 'zhiyuan1946@gmail.com', 'UrK58bGT1d', NULL, 1, '2009-11-20 02:53:58', '2023-03-31 10:01:44', '2024-12-27 09:17:57', 182, 93, 5, 100);
INSERT INTO `users` VALUES (557, '姚岚', 'gUOLpvGrRG', 'student', 'yao8@gmail.com', 'zY8yDnX2aP', NULL, 1, '2008-08-07 12:03:51', '2005-06-25 02:00:57', '2024-12-27 09:17:57', 176, 93, 5, 100);
INSERT INTO `users` VALUES (558, '萧璐', '9Q71ml0Mds', 'student', 'luxiao@mail.com', 'Ztf6gUozbP', NULL, 1, '2021-08-13 07:49:23', '2011-04-11 05:58:41', '2024-12-27 09:17:57', 178, 93, 5, 100);
INSERT INTO `users` VALUES (559, '黎詩涵', '2wQNAONWfD', 'student', 'lishi@gmail.com', 'ft2uBfaVML', NULL, 1, '2001-06-14 16:30:07', '2017-06-05 05:29:23', '2024-12-27 09:17:57', 167, 93, 5, 100);
INSERT INTO `users` VALUES (560, '韦晓明', 'QapgwDBMmT', 'student', 'xiawei@gmail.com', 'ldAHcnrXsM', NULL, 1, '2009-03-02 05:58:27', '2006-01-04 07:40:55', '2024-12-27 09:17:57', 108, 93, 5, 100);
INSERT INTO `users` VALUES (561, '曾云熙', 'TJFZzRkfa9', 'student', 'yunxi1215@mail.com', 'O2AXmT0xCo', NULL, 1, '2004-07-06 09:42:38', '2003-10-21 01:50:04', '2024-12-27 09:17:57', 130, 93, 5, 100);
INSERT INTO `users` VALUES (562, '石子异', '1NLQKVAZSn', 'student', 'ziyish@icloud.com', 'H5pRWQbI2a', NULL, 1, '2010-01-14 06:01:37', '2004-10-31 22:39:06', '2024-12-27 09:17:57', 168, 93, 5, 100);
INSERT INTO `users` VALUES (563, '卢子异', 'QqfHhiGtE8', 'student', 'lu1@gmail.com', 'LMIvWEJAsx', NULL, 1, '2012-05-27 04:15:30', '2008-10-25 06:44:38', '2024-12-27 09:17:57', 131, 93, 5, 100);
INSERT INTO `users` VALUES (564, '姚璐', 'scJefCmzfJ', 'student', 'yal@outlook.com', '51fYjBrEc0', NULL, 1, '2006-02-28 15:55:42', '2001-05-21 17:43:15', '2024-12-27 09:17:57', 131, 93, 5, 100);
INSERT INTO `users` VALUES (565, '陈子异', 'YbFwT4FAi0', 'student', 'ziyi01@outlook.com', 'ou9XeRdDoa', NULL, 1, '2020-01-31 19:05:03', '2015-12-01 03:08:07', '2024-12-27 09:17:57', 187, 93, 5, 100);
INSERT INTO `users` VALUES (566, '孔子异', 'T6AhJppMfU', 'student', 'kongziy615@outlook.com', 'BugYQ0Zewg', NULL, 1, '2002-03-24 15:22:53', '2001-02-04 20:50:55', '2024-12-27 09:17:57', 120, 93, 5, 100);
INSERT INTO `users` VALUES (567, '徐震南', 'AqUnxgasMy', 'student', 'zhennan1214@yahoo.com', 'G3xVbHC6jG', NULL, 1, '2011-09-09 15:26:34', '2001-03-06 16:59:26', '2024-12-27 09:17:57', 169, 93, 5, 100);
INSERT INTO `users` VALUES (568, '阎子韬', 'szmZY4d7b0', 'student', 'zitya@gmail.com', 'FZaP6zD8B2', NULL, 1, '2009-04-26 00:22:38', '2020-01-28 11:58:33', '2024-12-27 09:17:57', 107, 93, 5, 100);
INSERT INTO `users` VALUES (569, '方嘉伦', 'abz9tPwy7T', 'student', 'fangji09@outlook.com', 'Yol9OgrnBI', NULL, 1, '2019-07-31 11:07:21', '2023-04-18 01:38:45', '2024-12-27 09:17:57', 197, 93, 5, 100);
INSERT INTO `users` VALUES (570, '彭杰宏', 'O7TW4IgrfV', 'student', 'penjiehong@hotmail.com', '9zmHMt3smO', NULL, 1, '2020-10-15 05:20:13', '2011-10-30 14:25:05', '2024-12-27 09:17:57', 154, 93, 5, 100);
INSERT INTO `users` VALUES (571, '戴岚', '4On6i6OREm', 'student', 'lan10@outlook.com', '06mw8cZVVD', NULL, 1, '2018-05-12 04:10:40', '2016-11-10 08:59:30', '2024-12-27 09:17:57', 188, 93, 5, 100);
INSERT INTO `users` VALUES (572, '沈宇宁', 'pkTocK2i84', 'student', 'syuning907@icloud.com', '6N65ebB6Yc', NULL, 1, '2001-09-23 18:39:24', '2024-03-06 19:06:43', '2024-12-27 09:17:57', 154, 93, 5, 100);
INSERT INTO `users` VALUES (573, '龚睿', '8Wb5TMoXlx', 'student', 'rgon1119@icloud.com', 'snjsbPZ7jv', NULL, 1, '2002-09-30 13:01:57', '2015-08-19 05:11:17', '2024-12-27 09:17:57', 182, 93, 5, 100);
INSERT INTO `users` VALUES (574, '许震南', 'RP69mU6RcQ', 'student', 'zhennanxu42@outlook.com', 'dfDvRA8gPc', NULL, 1, '2004-07-13 19:20:35', '2016-01-23 06:18:09', '2024-12-27 09:17:57', 196, 93, 5, 100);
INSERT INTO `users` VALUES (575, '江詩涵', 'q8RqQg3XGf', 'student', 'jiangshihan5@gmail.com', '1REWYcHV02', NULL, 1, '2015-12-10 11:25:45', '2014-06-14 16:33:10', '2024-12-27 09:17:57', 106, 93, 5, 100);
INSERT INTO `users` VALUES (576, '黄子异', 'fS6llW4hHB', 'student', 'zhuang@hotmail.com', 'wlccWqH1Yh', NULL, 1, '2002-01-16 00:17:51', '2014-03-22 20:05:06', '2024-12-27 09:17:57', 170, 93, 5, 100);
INSERT INTO `users` VALUES (577, '卢晓明', 'VWUFbYhKEN', 'student', 'xiaomingl1025@gmail.com', 'v7fJ3gCJ8T', NULL, 1, '2006-05-21 17:27:50', '2014-07-27 02:13:21', '2024-12-27 09:17:57', 129, 93, 5, 100);
INSERT INTO `users` VALUES (578, '谢嘉伦', 'UMJGsZDK6b', 'student', 'xie45@gmail.com', 'AvpYCLCqVL', NULL, 1, '2020-07-01 06:55:52', '2018-08-24 00:48:09', '2024-12-27 09:17:57', 196, 93, 5, 100);
INSERT INTO `users` VALUES (579, '谢致远', 'C8qzSYyyOB', 'student', 'zhiyxie629@icloud.com', 'fAT92mZdyv', NULL, 1, '2004-04-18 04:38:45', '2004-09-22 14:27:10', '2024-12-27 09:17:57', 163, 93, 5, 100);
INSERT INTO `users` VALUES (580, '顾安琪', 'hgkIaLi6v4', 'student', 'anqgu@outlook.com', 'dUSoQGpgxH', NULL, 1, '2007-07-31 07:49:16', '2008-06-20 04:16:32', '2024-12-27 09:17:57', 152, 93, 5, 100);
INSERT INTO `users` VALUES (581, '陶睿', 'Z6mLmGFNED', 'student', 'trui506@icloud.com', 'evr526MZG2', NULL, 1, '2003-01-23 03:14:52', '2014-05-15 23:39:59', '2024-12-27 09:17:57', 185, 93, 5, 100);
INSERT INTO `users` VALUES (582, '沈秀英', 'Nj8vmlKu8f', 'student', 'shen8@gmail.com', 'cBhLqyuwrw', NULL, 1, '2024-03-07 12:44:51', '2003-10-03 16:37:54', '2024-12-27 09:17:57', 169, 93, 5, 100);
INSERT INTO `users` VALUES (583, '徐睿', 'Bq0EhAiMCs', 'student', 'ruixu2@yahoo.com', 'kSWy5hBYlX', NULL, 1, '2008-03-27 19:05:41', '2012-10-23 18:16:41', '2024-12-27 09:17:57', 137, 93, 5, 100);
INSERT INTO `users` VALUES (584, '胡詩涵', 'xmFtjfwUvO', 'student', 'hushihan@gmail.com', 'CAbCNGCEvb', NULL, 1, '2003-02-22 01:15:23', '2012-12-28 11:26:46', '2024-12-25 03:00:07', 137, 93, 5, 100);
INSERT INTO `users` VALUES (585, '姜安琪', 'EkPRVeQTqv', 'student', 'anqiji@gmail.com', 'o9EkiY69DI', NULL, 1, '2014-08-20 19:31:02', '2000-10-06 21:05:02', '2024-12-27 09:17:57', 140, 93, 5, 100);
INSERT INTO `users` VALUES (586, '程云熙', 'mxGIoswVgD', 'student', 'cyunx@gmail.com', 'ULEiHyehpg', NULL, 1, '2007-04-09 06:55:54', '2020-01-31 14:56:37', '2024-12-27 09:17:57', 197, 93, 5, 100);
INSERT INTO `users` VALUES (587, '邹子异', 'pQczyu5Zwg', 'student', 'ziyizou@icloud.com', 'WOqw0thWTr', NULL, 1, '2021-11-10 12:49:21', '2017-06-25 04:11:53', '2024-12-27 09:17:57', 179, 93, 5, 100);
INSERT INTO `users` VALUES (588, '张震南', '9CwMo6QuJx', 'student', 'zhennan118@gmail.com', 'Z4FgGLt1fV', NULL, 1, '2004-02-16 15:28:00', '2017-09-09 14:51:11', '2024-12-27 09:17:57', 145, 93, 5, 100);
INSERT INTO `users` VALUES (589, '邓嘉伦', 'N8ZKwzBjov', 'student', 'dengj15@hotmail.com', 'VcPBVeIkAH', NULL, 1, '2012-05-14 18:18:08', '2019-03-06 07:48:43', '2024-12-25 03:00:07', 181, 93, 5, 100);
INSERT INTO `users` VALUES (590, '陶安琪', 'w8p2lmYSjq', 'student', 'taoanqi@hotmail.com', 'A2ZXUTmj54', NULL, 1, '2004-12-25 14:40:33', '2000-11-14 05:15:18', '2024-12-27 09:17:57', 199, 93, 5, 100);
INSERT INTO `users` VALUES (591, '贾子韬', 'mD8YTGvfhM', 'student', 'jiazitao@gmail.com', 'QxRzSw5DGW', NULL, 1, '2018-05-29 12:47:03', '2000-02-02 21:37:20', '2024-12-27 09:17:57', 189, 93, 5, 100);
INSERT INTO `users` VALUES (592, '汪岚', 'gCTus4A3QQ', 'student', 'wanglan5@outlook.com', 'IpPUidydc6', NULL, 1, '2020-02-04 22:39:42', '2015-04-20 13:16:28', '2024-12-27 09:17:57', 188, 93, 5, 100);
INSERT INTO `users` VALUES (593, '蔡杰宏', 'xFrYZmfmTY', 'student', 'cj217@icloud.com', 'aj3DhtL9Ft', NULL, 1, '2005-12-04 20:11:14', '2011-09-03 10:35:38', '2024-12-27 09:17:57', 165, 93, 5, 100);
INSERT INTO `users` VALUES (594, '徐安琪', 'wkhIxHfBFw', 'student', 'xuanqi9@outlook.com', 'JiRq55tQyT', NULL, 1, '2011-07-21 07:53:35', '2013-01-31 12:05:25', '2024-12-27 09:17:57', 170, 93, 5, 100);
INSERT INTO `users` VALUES (595, '赵宇宁', 'oxSI8j4DDL', 'student', 'zhaoyuni1946@icloud.com', '6gyzXUJPIP', NULL, 1, '2013-07-02 04:20:26', '2015-10-17 10:44:59', '2024-12-27 09:17:57', 134, 93, 5, 100);
INSERT INTO `users` VALUES (596, '袁震南', 'SbFqQT0biz', 'student', 'yzhe1968@icloud.com', 'JKsjtDx2ZE', NULL, 1, '2021-07-01 05:16:18', '2011-08-09 01:38:01', '2024-12-27 09:17:57', 126, 93, 5, 100);
INSERT INTO `users` VALUES (597, '傅安琪', 'D5whyCYcvP', 'student', 'anf@gmail.com', '3LIXXYUuAG', NULL, 1, '2013-11-02 21:02:52', '2001-03-18 06:13:35', '2024-12-27 09:17:57', 142, 93, 5, 100);
INSERT INTO `users` VALUES (598, '汪云熙', 'RIX6Hh9WUT', 'student', 'wayunxi@hotmail.com', 'cqqHqcalEj', NULL, 1, '2023-10-06 08:42:03', '2021-01-04 10:11:41', '2024-12-27 09:17:57', 197, 93, 5, 100);
INSERT INTO `users` VALUES (599, '顾晓明', 'Xo7zS6RY8q', 'student', 'xiag@outlook.com', 'ulYHkPSdQl', NULL, 1, '2014-08-22 21:55:53', '2011-05-15 02:14:49', '2024-12-27 09:17:57', 102, 93, 5, 100);
INSERT INTO `users` VALUES (600, '许岚', 'hXZu6DM8HV', 'student', 'laxu@hotmail.com', 'wwkSeO9rFD', NULL, 1, '2012-11-19 00:01:36', '2024-03-15 20:17:31', '2024-12-27 09:17:57', 167, 93, 5, 100);
INSERT INTO `users` VALUES (601, '汤璐', 'awamtp92Y5', 'student', 'talu@gmail.com', 'kCJKIDNEUe', NULL, 1, '2010-02-06 09:18:42', '2005-09-05 03:28:14', '2024-12-27 09:17:57', 157, 93, 5, 100);
INSERT INTO `users` VALUES (602, '郑宇宁', 'J8hHVM1XDw', 'student', 'yuning731@icloud.com', 'we9Cp5nkrD', NULL, 1, '2011-05-31 13:22:54', '2005-03-04 08:51:05', '2024-12-27 09:17:57', 136, 93, 5, 100);
INSERT INTO `users` VALUES (603, '郭安琪', 'SH4gJaR5Gl', 'student', 'aguo9@hotmail.com', 'A3EZHdwouV', NULL, 1, '2022-04-11 10:22:50', '2007-09-07 06:48:22', '2024-12-27 09:17:57', 176, 93, 5, 100);
INSERT INTO `users` VALUES (604, '唐秀英', 'Cr4ZQHUssN', 'student', 'txiuying1@gmail.com', 'L15n5AMd3y', NULL, 1, '2021-08-07 02:14:47', '2019-11-09 18:47:35', '2024-12-27 09:17:57', 174, 93, 5, 100);
INSERT INTO `users` VALUES (605, '莫璐', 'D4W7wIUdWr', 'student', 'molu5@yahoo.com', 'L3dxTqGt9U', NULL, 1, '2018-04-30 16:38:45', '2018-07-15 04:28:21', '2024-12-27 09:17:57', 153, 93, 5, 100);
INSERT INTO `users` VALUES (606, '阎詩涵', 'JYR5AXIVgl', 'student', 'shihan1103@hotmail.com', 'qLBpq8HNZb', NULL, 1, '2023-10-01 15:21:15', '2021-05-30 02:44:12', '2024-12-27 09:17:57', 183, 93, 5, 100);
INSERT INTO `users` VALUES (607, '潘睿', 'Qi3lUUOlDQ', 'student', 'panrui@yahoo.com', '5gUERXzb7N', NULL, 1, '2013-11-23 22:42:52', '2022-01-07 06:55:13', '2024-12-27 09:17:57', 125, 93, 5, 100);
INSERT INTO `users` VALUES (608, '贺璐', 'jojV0S22ZJ', 'student', 'luhe@gmail.com', 'qSMOhTovI6', NULL, 1, '2008-10-16 06:15:36', '2018-05-26 00:15:28', '2024-12-27 09:17:57', 136, 93, 5, 100);
INSERT INTO `users` VALUES (609, '杨震南', '0q6SsHP4jO', 'student', 'yang2@outlook.com', 'ztOUWiJ8zM', NULL, 1, '2024-01-17 22:49:33', '2018-09-27 18:20:46', '2024-12-27 09:17:57', 173, 93, 5, 100);
INSERT INTO `users` VALUES (610, '孟子韬', 'ijAaTI7KT4', 'student', 'mengzitao@outlook.com', 'R6a0goCe7N', NULL, 1, '2012-01-09 21:13:19', '2007-12-26 17:49:12', '2024-12-27 09:17:57', 172, 93, 5, 100);
INSERT INTO `users` VALUES (611, '邹秀英', 'YowmLxZPBB', 'student', 'xiuyiz74@outlook.com', 'F1f2fXFLFS', NULL, 1, '2021-10-29 23:37:13', '2006-01-27 01:54:25', '2024-12-27 09:17:57', 186, 93, 5, 100);
INSERT INTO `users` VALUES (612, '罗致远', 'wNNWEilz0i', 'student', 'zluo@outlook.com', 'fTigbkbkqf', NULL, 1, '2003-04-16 08:34:03', '2014-07-15 23:21:54', '2024-12-27 09:17:57', 164, 93, 5, 100);
INSERT INTO `users` VALUES (613, '苏詩涵', '9LfzVdr9SD', 'student', 'sshiha2@yahoo.com', 'Z1V5gZwh0T', NULL, 1, '2022-08-25 08:22:42', '2018-03-12 00:09:45', '2024-12-27 09:17:57', 175, 93, 5, 100);
INSERT INTO `users` VALUES (614, '向宇宁', 'abUVljNpo7', 'student', 'yuningxiang@icloud.com', 'ltpxk0EPzc', NULL, 1, '2009-04-04 22:32:52', '2010-06-29 00:49:40', '2024-12-27 09:17:57', 177, 93, 5, 100);
INSERT INTO `users` VALUES (615, '马子韬', 'V6ybrsNlzL', 'student', 'zitama@gmail.com', 'yjDqTucrBu', NULL, 1, '2002-05-27 00:41:41', '2022-06-06 04:53:21', '2024-12-27 09:17:57', 197, 93, 5, 100);
INSERT INTO `users` VALUES (616, '石宇宁', 'jT7pMPX2Tq', 'student', 'shiyu1205@icloud.com', 'bZ2vEgNK73', NULL, 1, '2006-09-16 20:35:19', '2000-01-22 03:36:33', '2024-12-27 09:17:57', 180, 93, 5, 100);
INSERT INTO `users` VALUES (617, '杜詩涵', 'X5KXfmvmL1', 'student', 'dshihan1@gmail.com', 'QOobtGhNxy', NULL, 1, '2024-01-20 11:40:27', '2021-10-09 02:43:38', '2024-12-27 09:17:57', 110, 93, 5, 100);
INSERT INTO `users` VALUES (618, '陈詩涵', 'Tyb0P2egdC', 'student', 'shichen@gmail.com', 'AgYav0wD1t', NULL, 1, '2017-03-26 03:18:48', '2023-06-25 09:26:56', '2024-12-27 09:17:57', 142, 93, 5, 100);
INSERT INTO `users` VALUES (619, '方云熙', 'fBwa56h1Bl', 'student', 'yfang@gmail.com', 'sAsi8ceBO1', NULL, 1, '2019-07-19 20:21:32', '2013-08-04 04:49:54', '2024-12-27 09:17:57', 188, 93, 5, 100);
INSERT INTO `users` VALUES (620, '邹岚', 'G5tmF2tKjJ', 'student', 'zou69@mail.com', 'S8eUz0chon', NULL, 1, '2008-09-03 05:28:25', '2021-05-27 00:31:33', '2024-12-27 09:17:57', 103, 93, 5, 100);
INSERT INTO `users` VALUES (621, '韦宇宁', 'H7kvewD3bw', 'student', 'ywei608@yahoo.com', 'VnpdWkGH3Y', NULL, 1, '2011-11-11 04:40:47', '2004-07-14 10:15:12', '2024-12-27 09:17:57', 119, 93, 5, 100);
INSERT INTO `users` VALUES (622, '邱睿', 'Mhj5u0OiLj', 'student', 'rui2@hotmail.com', 'erJsDqVAQY', NULL, 1, '2008-11-28 12:39:19', '2007-03-06 16:10:32', '2024-12-27 09:17:57', 109, 93, 5, 100);
INSERT INTO `users` VALUES (623, '彭秀英', 'Yn79ZelDsj', 'student', 'xiupe@mail.com', 'V4eBkzT6YY', NULL, 1, '2014-07-02 17:27:04', '2013-07-18 02:54:40', '2024-12-27 09:17:57', 172, 93, 5, 100);
INSERT INTO `users` VALUES (624, '向睿', '8UV0PEruFD', 'student', 'xiangrui77@gmail.com', 'pDUagwlcBL', NULL, 1, '2009-11-12 05:04:13', '2022-12-23 17:21:51', '2024-12-27 09:17:57', 158, 93, 5, 100);
INSERT INTO `users` VALUES (625, '邓詩涵', 'NHkBhA4IJe', 'student', 'dens@outlook.com', 're5Rv2yOgd', NULL, 1, '2023-07-29 09:52:31', '2024-06-10 04:57:06', '2024-12-27 09:17:57', 144, 93, 5, 100);
INSERT INTO `users` VALUES (626, '冯詩涵', 'M2XhzsI3oP', 'student', 'feng2@icloud.com', '66FbU9Rqlc', NULL, 1, '2020-09-01 15:54:10', '2015-03-25 08:07:13', '2024-12-27 09:17:57', 164, 93, 5, 100);
INSERT INTO `users` VALUES (627, '陈震南', 'iw5j27bJ64', 'student', 'chez@hotmail.com', 'HWmeIufaN1', NULL, 1, '2004-02-26 22:14:20', '2011-12-29 04:55:28', '2024-12-27 09:17:57', 118, 93, 5, 100);
INSERT INTO `users` VALUES (628, '姜云熙', 'fX49W2YdgT', 'student', 'yunxijiang@gmail.com', 'GrB1TPC9bo', NULL, 1, '2020-02-10 23:37:49', '2016-11-19 08:00:44', '2024-12-27 09:17:57', 121, 93, 5, 100);
INSERT INTO `users` VALUES (629, '严子韬', 'K0DpHDTht6', 'student', 'yanzitao@icloud.com', '5AoVH8ooTl', NULL, 1, '2001-08-20 08:28:12', '2020-07-28 19:19:16', '2024-12-27 09:17:57', 103, 93, 5, 100);
INSERT INTO `users` VALUES (630, '何詩涵', '3qe1AcjkC2', 'student', 'heshihan@gmail.com', 'P8xzM0rzO1', NULL, 1, '2022-04-07 04:19:37', '2012-02-04 19:36:00', '2024-12-27 09:17:57', 125, 93, 5, 100);
INSERT INTO `users` VALUES (631, '谭岚', 'kxhNuYeU4R', 'student', 'talan@gmail.com', '09VRVic2v4', NULL, 1, '2008-08-22 16:06:36', '2005-10-22 09:16:12', '2024-12-27 09:17:57', 132, 93, 5, 100);
INSERT INTO `users` VALUES (632, '钟杰宏', 'C47zXe9JfB', 'student', 'jiehongzhong@gmail.com', 'AfmhOci5gE', NULL, 1, '2010-11-22 13:14:13', '2017-12-05 12:53:23', '2024-12-25 03:00:07', 146, 93, 5, 100);
INSERT INTO `users` VALUES (633, '潘安琪', 'E7UuJO8XeA', 'student', 'pana@mail.com', 'pbnYr97mCK', NULL, 1, '2012-09-15 12:39:51', '2002-06-30 10:32:31', '2024-12-27 09:17:57', 189, 93, 5, 100);
INSERT INTO `users` VALUES (634, '汪秀英', 'Ovjs9ScCgz', 'student', 'wanxiu@outlook.com', 'fckXaj7be9', NULL, 1, '2008-03-08 05:40:08', '2021-09-04 06:43:06', '2024-12-27 09:17:57', 192, 93, 5, 100);
INSERT INTO `users` VALUES (635, '卢子韬', '4MqAnAniTh', 'student', 'zitlu5@icloud.com', 'xkXAACYNlM', NULL, 1, '2008-10-21 11:28:27', '2016-04-13 04:27:03', '2024-12-27 09:17:57', 193, 93, 5, 100);
INSERT INTO `users` VALUES (636, '龙璐', 'cvhPhbCLSR', 'student', 'lulong@gmail.com', '7zgbMCmPmx', NULL, 1, '2017-11-29 12:03:30', '2011-05-05 10:14:17', '2024-12-27 09:17:57', 123, 93, 5, 100);
INSERT INTO `users` VALUES (637, '苏子韬', 'chcHbSH3B2', 'student', 'zitaosu@outlook.com', 'F9zVuwuscz', NULL, 1, '2013-09-10 04:31:16', '2009-08-08 12:24:35', '2024-12-27 09:17:57', 124, 93, 5, 100);
INSERT INTO `users` VALUES (638, '贺睿', 'iuh3wgZqaS', 'student', 'ruhe95@outlook.com', 'yLbBDiB3FX', NULL, 1, '2018-11-15 18:08:21', '2021-11-25 07:32:24', '2024-12-27 09:17:57', 162, 93, 5, 100);
INSERT INTO `users` VALUES (639, '郝震南', '4lkWAJm7QK', 'student', 'hao10@yahoo.com', 'Vn0MrR8Uc1', NULL, 1, '2013-04-25 13:26:59', '2009-02-15 01:22:47', '2024-12-27 09:17:57', 145, 93, 5, 100);
INSERT INTO `users` VALUES (640, '谢杰宏', '6IBRNIXAKQ', 'student', 'xie1994@yahoo.com', 'Y2gCrKaz5I', NULL, 1, '2012-06-24 03:59:26', '2012-10-01 05:16:33', '2024-12-27 09:17:57', 167, 93, 5, 100);
INSERT INTO `users` VALUES (641, '马杰宏', 'ybetlpDct4', 'student', 'maj3@outlook.com', 'Nix3xPZ81P', NULL, 1, '2024-08-31 07:12:29', '2022-12-30 23:43:23', '2024-12-27 09:17:57', 112, 93, 5, 100);
INSERT INTO `users` VALUES (642, '林子韬', '9cZHcuEcIf', 'student', 'zitao7@gmail.com', 'PGMskBrPVF', NULL, 1, '2016-12-20 01:51:52', '2009-10-17 02:57:02', '2024-12-27 09:17:57', 192, 93, 5, 100);
INSERT INTO `users` VALUES (643, '蔡晓明', 'xreJNgQS30', 'student', 'xiaoming1958@icloud.com', 'BYHN2xToh0', NULL, 1, '2006-01-25 20:04:53', '2014-10-12 23:57:38', '2024-12-27 09:17:57', 129, 93, 5, 100);
INSERT INTO `users` VALUES (644, '程睿', 'cf9RpS3hy6', 'student', 'chengru@outlook.com', 'XQ1lrpCzzr', NULL, 1, '2019-05-19 16:12:10', '2007-10-02 21:13:52', '2024-12-27 09:17:57', 117, 93, 5, 100);
INSERT INTO `users` VALUES (645, '汪璐', 'cEMoURgL3o', 'student', 'luwa@gmail.com', 'fVVKVpaXap', NULL, 1, '2023-06-21 17:44:46', '2011-03-07 20:47:30', '2024-12-27 09:17:57', 106, 93, 5, 100);
INSERT INTO `users` VALUES (646, '任震南', 'MTwQOp3nBc', 'student', 'zhennanren@outlook.com', 'SPx7JlaenX', NULL, 1, '2024-06-08 11:03:05', '2020-02-19 21:17:01', '2024-12-27 09:17:57', 194, 93, 5, 100);
INSERT INTO `users` VALUES (647, '熊詩涵', 'EXHO7xvp9B', 'student', 'shihanxi@yahoo.com', 'WxrmBNSLFT', NULL, 1, '2004-03-25 06:53:53', '2012-09-09 07:52:07', '2024-12-27 09:17:57', 162, 93, 5, 100);
INSERT INTO `users` VALUES (648, '黎杰宏', 'AkrxOeemWl', 'student', 'lij2@icloud.com', 'bXTTGKYieQ', NULL, 1, '2022-08-25 19:09:02', '2005-04-24 10:45:17', '2024-12-27 09:17:57', 171, 93, 5, 100);
INSERT INTO `users` VALUES (649, '曹秀英', 'FJqQpZZq7u', 'student', 'xiuying9@yahoo.com', 'EKKxth6Lin', NULL, 1, '2000-01-20 03:49:13', '2002-02-11 04:54:43', '2024-12-27 09:17:57', 185, 93, 5, 100);
INSERT INTO `users` VALUES (650, '傅杰宏', 'XOKwTtZFIN', 'student', 'fujiehong@outlook.com', 'YyQ8iXSDjK', NULL, 1, '2018-03-30 22:28:35', '2014-12-07 18:45:53', '2024-12-27 09:17:57', 144, 93, 5, 100);
INSERT INTO `users` VALUES (651, '林嘉伦', 'mmK7ABcW5n', 'student', 'ljial@hotmail.com', 'iL7i2dBsxT', NULL, 1, '2000-09-17 06:59:20', '2000-12-11 04:33:16', '2024-12-27 09:17:57', 153, 93, 5, 100);
INSERT INTO `users` VALUES (652, '吕子异', 'Nh77eM5t0J', 'student', 'zlu@icloud.com', 'iQQnYD56Jk', NULL, 1, '2003-02-26 13:47:15', '2012-03-01 05:58:13', '2024-12-27 09:17:57', 147, 93, 5, 100);
INSERT INTO `users` VALUES (653, '杨安琪', 'jzjnWfLVo3', 'student', 'yanqi@yahoo.com', 'NC13JKqXPo', NULL, 1, '2015-03-28 05:33:41', '2005-04-06 23:18:17', '2024-12-27 09:17:57', 161, 93, 5, 100);
INSERT INTO `users` VALUES (654, '孟杰宏', 'wle7ulzqH2', 'student', 'jiehongmeng@gmail.com', 'Xx4527OLkB', NULL, 1, '2005-11-12 06:17:27', '2022-02-23 09:59:03', '2024-12-27 09:17:57', 127, 93, 5, 100);
INSERT INTO `users` VALUES (655, '袁安琪', '00wu1c85gs', 'student', 'anqi1967@mail.com', 'NOR7exBt3C', NULL, 1, '2007-10-21 00:58:29', '2016-08-23 12:47:12', '2024-12-27 09:17:57', 168, 93, 5, 100);
INSERT INTO `users` VALUES (656, '田杰宏', 'I7Xfmw27o8', 'student', 'jiehtian@gmail.com', 'gunzGvSzN5', NULL, 1, '2007-11-23 12:11:38', '2019-10-16 08:35:25', '2024-12-27 09:17:57', 109, 93, 5, 100);
INSERT INTO `users` VALUES (657, '常宇宁', 'IK8tuuM277', 'student', 'chang620@outlook.com', 'HO5S6Is3VE', NULL, 1, '2015-03-22 12:42:42', '2024-08-21 17:34:11', '2024-12-27 09:17:57', 182, 93, 5, 100);
INSERT INTO `users` VALUES (658, '龙致远', 'mkYOUzOb14', 'student', 'zhiyuanlong5@outlook.com', 'gsYUBgLGRS', NULL, 1, '2024-10-10 21:18:38', '2002-09-23 13:20:02', '2024-12-27 09:17:57', 174, 93, 5, 100);
INSERT INTO `users` VALUES (659, '冯安琪', 'umAfRLCCFk', 'student', 'feng1951@mail.com', 'aAQUf8inZX', NULL, 1, '2019-04-07 11:58:44', '2022-08-21 14:42:38', '2024-12-27 09:17:57', 128, 93, 5, 100);
INSERT INTO `users` VALUES (660, '严晓明', 'jTTx6TpEKj', 'student', 'yanxi@gmail.com', 'lOUQblKFG4', NULL, 1, '2007-11-01 07:24:17', '2009-05-20 00:05:35', '2024-12-27 09:17:57', 104, 93, 5, 100);
INSERT INTO `users` VALUES (661, '黎璐', 'bLdggbMbq0', 'student', 'lli@icloud.com', '92ziPg4hsc', NULL, 1, '2001-08-07 08:12:42', '2022-01-04 05:02:47', '2024-12-27 09:17:57', 139, 93, 5, 100);
INSERT INTO `users` VALUES (662, '周岚', 'ghw3KTLiT6', 'student', 'zhou42@hotmail.com', 'dIw2rVWckz', NULL, 1, '2017-04-19 19:05:43', '2019-04-04 05:04:33', '2024-12-27 09:17:57', 178, 93, 5, 100);
INSERT INTO `users` VALUES (663, '李睿', 'L5BGLnCWkT', 'student', 'rui1945@hotmail.com', 'bffZgOlWwS', NULL, 1, '2009-01-04 10:31:35', '2021-07-07 00:47:40', '2024-12-27 09:17:57', 192, 93, 5, 100);
INSERT INTO `users` VALUES (664, '赵子异', 'uDOcHQZaes', 'student', 'zhao509@hotmail.com', 'uL9VlBXV6e', NULL, 1, '2024-04-24 17:47:23', '2023-03-05 10:28:17', '2024-12-27 09:17:57', 197, 93, 5, 100);
INSERT INTO `users` VALUES (665, '刘晓明', 'jTgPlFeMEM', 'student', 'lxia12@gmail.com', 'Z038JfOSIr', NULL, 1, '2003-08-29 22:21:08', '2016-11-12 02:41:21', '2024-12-27 09:17:57', 147, 93, 5, 100);
INSERT INTO `users` VALUES (666, '周嘉伦', 'odeayw6xE9', 'student', 'zhoujialun@icloud.com', '6XLfCdxpbi', NULL, 1, '2022-01-08 00:08:49', '2014-01-03 18:27:32', '2024-12-27 09:17:57', 169, 93, 5, 100);
INSERT INTO `users` VALUES (667, '高秀英', 'wSEsRT79nY', 'student', 'gaoxi@yahoo.com', 'gb1q4rYQRP', NULL, 1, '2000-07-20 02:23:56', '2002-07-09 17:22:16', '2024-12-27 09:17:57', 127, 93, 5, 100);
INSERT INTO `users` VALUES (668, '钟云熙', 'SbnM9NR05U', 'student', 'zhongyunx@outlook.com', '4AK2vZExxZ', NULL, 1, '2009-12-05 19:12:15', '2001-09-04 03:27:19', '2024-12-27 09:17:57', 200, 93, 5, 100);
INSERT INTO `users` VALUES (669, '冯致远', 'NaeJlO64tv', 'student', 'fenzhi@outlook.com', 'teb9dXspQ4', NULL, 1, '2004-06-26 01:39:03', '2003-12-25 13:10:04', '2024-12-27 09:17:57', 149, 93, 5, 100);
INSERT INTO `users` VALUES (670, '任安琪', '4rpm25NAgX', 'student', 'rena@icloud.com', 's8HOdW7HdW', NULL, 1, '2011-04-30 10:49:54', '2004-11-03 23:20:10', '2024-12-27 09:17:57', 125, 93, 5, 100);
INSERT INTO `users` VALUES (671, '雷子异', 'NPW98k9dEF', 'student', 'ziyilei512@outlook.com', 'xLYAs3TTWK', NULL, 1, '2023-06-18 14:29:59', '2020-03-23 02:11:51', '2024-12-27 09:17:57', 157, 93, 5, 100);
INSERT INTO `users` VALUES (672, '冯晓明', 'ySQgRtaEQa', 'student', 'xiaomingfeng@outlook.com', 'ubgpeXV1Q7', NULL, 1, '2022-04-29 19:16:16', '2015-11-16 10:38:21', '2024-12-27 09:17:57', 126, 93, 5, 100);
INSERT INTO `users` VALUES (673, '叶璐', 'KRYLuaG2o1', 'student', 'lu3@mail.com', 'sevfd8yYNI', NULL, 1, '2004-05-19 12:49:30', '2010-05-15 19:31:40', '2024-12-27 09:17:57', 174, 93, 5, 100);
INSERT INTO `users` VALUES (674, '史晓明', 'O8ovmXUAN8', 'student', 'xishi1227@hotmail.com', 'wxn1t4tkXo', NULL, 1, '2009-04-20 07:44:17', '2017-06-02 13:57:59', '2024-12-27 09:17:57', 179, 93, 5, 100);
INSERT INTO `users` VALUES (675, '廖致远', 'a6AActleJZ', 'student', 'liaozhiyuan@icloud.com', 'w35XNurK9e', NULL, 1, '2016-06-18 16:13:44', '2023-09-13 06:53:20', '2024-12-27 09:17:57', 187, 93, 5, 100);
INSERT INTO `users` VALUES (676, '秦秀英', 'TXwpvPV8El', 'student', 'xiqi@mail.com', 'La93KIPjK0', NULL, 1, '2012-09-29 06:17:54', '2021-04-29 16:58:03', '2024-12-27 09:17:57', 191, 93, 5, 100);
INSERT INTO `users` VALUES (677, '崔杰宏', 'Mf7uBCDxRC', 'student', 'jic126@gmail.com', 'tkDR7Y1AvV', NULL, 1, '2000-02-01 18:49:13', '2022-12-14 18:32:55', '2024-12-27 09:17:57', 193, 93, 5, 100);
INSERT INTO `users` VALUES (678, '王宇宁', '4otaLuHfw8', 'student', 'wang1943@mail.com', 'ymO0AQg4iu', NULL, 1, '2023-11-02 13:11:38', '2011-08-26 02:05:15', '2024-12-27 09:17:57', 139, 93, 5, 100);
INSERT INTO `users` VALUES (679, '贺安琪', '4mNwnhKoyD', 'student', 'hanqi1@gmail.com', 'bC7Fg8SfEV', NULL, 1, '2004-01-17 06:06:49', '2008-07-06 08:41:47', '2024-12-27 09:17:57', 189, 93, 5, 100);
INSERT INTO `users` VALUES (680, '梁致远', 't25l7aTt4O', 'student', 'liangzhiyuan@icloud.com', 'HCDagZDdEk', NULL, 1, '2000-05-13 06:19:13', '2002-03-13 18:11:20', '2024-12-27 09:17:57', 148, 93, 5, 100);
INSERT INTO `users` VALUES (681, '汤宇宁', 'YrS7OudcbI', 'student', 'tayuning418@outlook.com', 'kJ9zyPiVWh', NULL, 1, '2020-01-11 23:47:16', '2018-12-14 13:49:51', '2024-12-27 09:17:57', 189, 93, 5, 100);
INSERT INTO `users` VALUES (682, '马詩涵', 'dRNKzYZbac', 'student', 'mas@gmail.com', '3dvF23pr74', NULL, 1, '2020-12-17 00:02:02', '2006-09-22 11:52:27', '2024-12-27 09:17:57', 138, 93, 5, 100);
INSERT INTO `users` VALUES (683, '龙晓明', 'om5gvqGe9L', 'student', 'lx5@gmail.com', '3obe6xrsEt', NULL, 1, '2015-04-18 22:35:39', '2009-03-19 07:26:20', '2024-12-27 09:17:57', 144, 93, 5, 100);
INSERT INTO `users` VALUES (684, '郑嘉伦', 'qtNA9vmusJ', 'student', 'jizh421@outlook.com', 'dNTMMU21nD', NULL, 1, '2005-10-10 22:05:00', '2005-09-22 21:40:44', '2024-12-27 09:17:57', 125, 93, 5, 100);
INSERT INTO `users` VALUES (685, '熊秀英', '0coN1Ef7H5', 'student', 'xiuyxiong726@gmail.com', 'I0JBZGLwWZ', NULL, 1, '2008-06-16 13:18:17', '2003-09-23 10:18:19', '2024-12-27 09:17:57', 145, 93, 5, 100);
INSERT INTO `users` VALUES (686, '苏子异', 'udk9yfyVnh', 'student', 'suziyi2007@gmail.com', 'jRI2HsPRps', NULL, 1, '2000-06-12 23:43:21', '2002-09-02 15:40:09', '2024-12-27 09:17:57', 106, 93, 5, 100);
INSERT INTO `users` VALUES (687, '石嘉伦', 'GpXp7ihLaz', 'student', 'jialunshi@gmail.com', '0xYFD0VauW', NULL, 1, '2019-08-27 01:32:02', '2012-02-24 11:21:15', '2024-12-27 09:17:57', 155, 93, 5, 100);
INSERT INTO `users` VALUES (688, '郭詩涵', 'ypPsRKdoOM', 'student', 'gshihan@gmail.com', 'aK6inMGSnK', NULL, 1, '2016-01-02 20:28:02', '2001-07-11 02:12:53', '2024-12-27 09:17:57', 115, 93, 5, 100);
INSERT INTO `users` VALUES (689, '曹詩涵', 'KDTXKcM0L8', 'student', 'csh@icloud.com', 'k2Q7645pWO', NULL, 1, '2004-03-03 09:06:25', '2020-03-04 05:27:39', '2024-12-27 09:17:57', 146, 93, 5, 100);
INSERT INTO `users` VALUES (690, '马宇宁', 'zcdmzhGT8s', 'student', 'yuningm2@hotmail.com', '1Hbau5uRiZ', NULL, 1, '2002-07-20 13:23:51', '2024-01-12 16:19:06', '2024-12-27 09:17:57', 119, 93, 5, 100);
INSERT INTO `users` VALUES (691, '阎秀英', 'HNWX4aTRUd', 'student', 'yaxiuying@icloud.com', 'EkbI3NRFWW', NULL, 1, '2013-01-14 17:41:08', '2006-05-04 01:29:56', '2024-12-27 09:17:57', 160, 93, 5, 100);
INSERT INTO `users` VALUES (692, '毛璐', 'ig4bi30vX7', 'student', 'mlu@icloud.com', '2cQWGe9Yuf', NULL, 1, '2024-06-02 05:20:28', '2016-03-02 10:39:52', '2024-12-27 09:17:57', 183, 93, 5, 100);
INSERT INTO `users` VALUES (693, '石睿', 'm2P6LgMHug', 'student', 'shirui@hotmail.com', 'Id37N6l3Hq', NULL, 1, '2018-02-19 02:40:00', '2014-06-03 14:36:48', '2024-12-27 09:17:57', 164, 93, 5, 100);
INSERT INTO `users` VALUES (694, '崔安琪', '8ZkuBxIyiO', 'student', 'acui@mail.com', 'I3weVPaZo2', NULL, 1, '2010-12-31 08:31:56', '2008-05-28 07:49:23', '2024-12-27 09:17:57', 188, 93, 5, 100);
INSERT INTO `users` VALUES (695, '赵致远', '3k7ushjYE1', 'student', 'zhaoz@mail.com', 'oZsyyjZoqn', NULL, 1, '2006-05-03 09:31:45', '2008-10-05 23:59:39', '2024-12-27 09:17:57', 113, 93, 5, 100);
INSERT INTO `users` VALUES (696, '苏晓明', '6Qhtsicxdy', 'student', 'sxiaoming@gmail.com', 'v7LzlZDCpK', NULL, 1, '2008-03-22 17:37:12', '2024-04-11 22:23:17', '2024-12-27 09:17:57', 160, 93, 5, 100);
INSERT INTO `users` VALUES (697, '郝詩涵', 'qWZrX3bxIE', 'student', 'haoshi@mail.com', '765V7tl9Ez', NULL, 1, '2013-05-28 04:29:03', '2019-07-07 19:26:12', '2024-12-27 09:17:57', 119, 93, 5, 100);
INSERT INTO `users` VALUES (698, '韩岚', 'wRR1DQH4mY', 'student', 'lan7@icloud.com', 'bOhYuC1mmF', NULL, 1, '2014-01-20 20:23:19', '2016-09-06 07:12:59', '2024-12-27 09:17:57', 165, 93, 5, 100);
INSERT INTO `users` VALUES (699, '程岚', 'uq6CUIhk7C', 'student', 'lancheng@gmail.com', 'LfQpACed77', NULL, 1, '2022-02-24 02:16:20', '2023-05-14 02:03:03', '2024-12-27 09:17:57', 114, 93, 5, 100);
INSERT INTO `users` VALUES (700, '郝璐', 'X1ETgTiCd0', 'student', 'luhao@icloud.com', 'bvHVK0tt4R', NULL, 1, '2017-09-16 16:51:40', '2006-06-24 09:32:07', '2024-12-27 09:17:57', 186, 93, 5, 100);
INSERT INTO `users` VALUES (701, '郭嘉伦', 'om4wspNVFc', 'student', 'guo10@yahoo.com', 'RPoN09pP90', NULL, 1, '2003-04-06 23:47:46', '2004-07-27 17:18:25', '2024-12-27 09:17:57', 178, 93, 5, 100);
INSERT INTO `users` VALUES (702, '崔秀英', 'XevAiZlH7Q', 'student', 'xiuying10@hotmail.com', '1BQf5M6m32', NULL, 1, '2002-02-20 23:27:09', '2002-08-17 17:30:09', '2024-12-27 09:17:57', 168, 93, 5, 100);
INSERT INTO `users` VALUES (703, '陈安琪', 'YPPGsjEaI9', 'student', 'anqichen3@outlook.com', 'Pzg2nCahgj', NULL, 1, '2019-08-02 15:14:37', '2022-07-13 13:10:41', '2024-12-27 09:17:57', 136, 93, 5, 100);
INSERT INTO `users` VALUES (704, '余嘉伦', 'V2vo6Z7JWf', 'student', 'jialun419@gmail.com', 'AOeDypTE9s', NULL, 1, '2019-10-25 23:24:06', '2018-08-17 13:33:16', '2024-12-27 09:17:57', 145, 93, 5, 100);
INSERT INTO `users` VALUES (705, '宋子异', 'KZVguJTbCj', 'student', 'zsong1@icloud.com', '2RNYHeRTLe', NULL, 1, '2007-08-17 07:31:37', '2006-08-30 06:39:26', '2024-12-27 09:17:57', 141, 93, 5, 100);
INSERT INTO `users` VALUES (706, '田安琪', '5ERZnLUbzk', 'student', 'anqi00@outlook.com', '6EwqFW51CW', NULL, 1, '2020-09-25 01:52:11', '2000-07-29 14:35:36', '2024-12-27 09:17:57', 137, 93, 5, 100);
INSERT INTO `users` VALUES (707, '刘璐', 'I5s2G8bKjB', 'student', 'liulu@gmail.com', '78z7488anH', NULL, 1, '2020-01-22 21:50:08', '2019-01-17 06:20:23', '2024-12-27 09:17:57', 118, 93, 5, 100);
INSERT INTO `users` VALUES (708, '卢致远', 'CnWuFDv9lQ', 'student', 'zl5@yahoo.com', 'DnQ0NHUxcL', NULL, 1, '2017-03-03 07:49:02', '2019-05-29 10:11:57', '2024-12-27 09:17:57', 185, 93, 5, 100);
INSERT INTO `users` VALUES (709, '郭睿', 'GmiNyCzV7A', 'student', 'ruigu@gmail.com', '2TM91rnJtP', NULL, 1, '2021-03-16 15:41:06', '2001-08-07 01:28:14', '2024-12-27 09:17:57', 175, 93, 5, 100);
INSERT INTO `users` VALUES (710, '武子韬', 'Q5JClsMrwG', 'student', 'zitao4@gmail.com', 'YtoHRXboam', NULL, 1, '2008-11-21 02:29:14', '2009-10-29 15:12:26', '2024-12-27 09:17:57', 118, 93, 5, 100);
INSERT INTO `users` VALUES (711, '林致远', 'w0N9fxfEOE', 'student', 'linz01@icloud.com', 'UyoH2AHrRJ', NULL, 1, '2022-12-17 12:27:12', '2014-02-23 23:44:17', '2024-12-27 09:17:57', 158, 93, 5, 100);
INSERT INTO `users` VALUES (712, '许睿', 'ZABjxeFNih', 'student', 'xu1973@icloud.com', 'KbXEUysZjo', NULL, 1, '2021-09-30 02:09:53', '2003-03-29 22:14:08', '2024-12-27 09:17:57', 194, 93, 5, 100);
INSERT INTO `users` VALUES (713, '史云熙', 'VX2HpJPj5J', 'student', 'syunxi@mail.com', 'HYIIVcaT75', NULL, 1, '2011-10-19 02:58:23', '2010-10-31 17:55:58', '2024-12-27 09:17:57', 114, 93, 5, 100);
INSERT INTO `users` VALUES (714, '向子异', 'bkitISWoUX', 'student', 'xiangziyi@hotmail.com', 'ZVAMkuNXbO', NULL, 1, '2002-04-15 09:57:12', '2000-06-04 17:44:32', '2024-12-27 09:17:57', 115, 93, 5, 100);
INSERT INTO `users` VALUES (715, '范岚', 'HYQlITi6ND', 'student', 'fl3@yahoo.com', 'ouikMuoW4F', NULL, 1, '2013-07-28 09:13:49', '2017-03-17 05:41:42', '2024-12-27 09:18:07', 132, 78, 5, 100);
INSERT INTO `users` VALUES (716, '丁致远', 'C9JEc5LYC8', 'student', 'dzhiyuan@outlook.com', 'glKVTHxZYV', NULL, 1, '2023-10-24 22:07:06', '2007-12-10 10:25:28', '2024-12-27 09:18:07', 126, 78, 5, 100);
INSERT INTO `users` VALUES (717, '曾睿', 'pyCHYGnO2Y', 'student', 'zerui5@outlook.com', 'UJn0BPFMVA', NULL, 1, '2011-08-04 00:56:52', '2005-08-09 00:28:30', '2024-12-27 09:18:07', 148, 78, 5, 100);
INSERT INTO `users` VALUES (718, '任宇宁', 'Ois2jYXx5Q', 'student', 'yuningren@yahoo.com', '4PSjctheuX', NULL, 1, '2011-11-18 13:51:01', '2010-11-12 01:30:09', '2024-12-27 09:18:07', 178, 78, 5, 100);
INSERT INTO `users` VALUES (719, '董安琪', 'RNBtFjChek', 'student', 'anqidong115@outlook.com', 'mN49M8vQVn', NULL, 1, '2013-11-18 14:15:36', '2019-09-12 15:01:20', '2024-12-27 09:18:07', 130, 78, 5, 100);
INSERT INTO `users` VALUES (720, '宋震南', 'A5o4wglmgC', 'student', 'song2020@icloud.com', 'Pm7ocZYheT', NULL, 1, '2002-10-23 22:16:56', '2016-09-17 04:36:59', '2024-12-27 09:18:07', 124, 78, 5, 100);
INSERT INTO `users` VALUES (721, '张詩涵', 'ffqggrLoVW', 'student', 'zhshi63@outlook.com', 'PRsP43lVp0', NULL, 1, '2007-12-26 16:32:53', '2002-12-13 18:37:20', '2024-12-27 09:18:07', 125, 78, 5, 100);
INSERT INTO `users` VALUES (722, '董宇宁', 'iXIkRadlnb', 'student', 'yuningdon@mail.com', 'nIhUJUq35w', NULL, 1, '2015-07-30 13:48:39', '2012-03-03 02:22:42', '2024-12-27 09:18:07', 163, 78, 5, 100);
INSERT INTO `users` VALUES (723, '唐嘉伦', 'sGjF8uVQpi', 'student', 'jialunt@outlook.com', 'oN2LsJUEvd', NULL, 1, '2022-11-21 05:25:50', '2016-07-24 11:42:11', '2024-12-27 09:18:07', 170, 78, 5, 100);
INSERT INTO `users` VALUES (724, '钱子韬', '7rDjFUW9w1', 'student', 'zitq2@outlook.com', 'MOxCj5yGin', NULL, 1, '2012-01-02 00:09:10', '2013-05-17 15:30:23', '2024-12-27 09:18:07', 195, 78, 5, 100);
INSERT INTO `users` VALUES (725, '邱宇宁', '1x6Og5oIGU', 'student', 'qiu6@yahoo.com', 'II8TIf3YS2', NULL, 1, '2020-02-17 21:00:32', '2023-03-25 00:39:07', '2024-12-27 09:18:07', 141, 78, 5, 100);
INSERT INTO `users` VALUES (726, '史璐', 'PflHzk885C', 'student', 'slu121@icloud.com', 'Y4cgaWt6us', NULL, 1, '2010-03-11 02:42:00', '2011-05-31 14:31:20', '2024-12-27 09:18:07', 132, 78, 5, 100);
INSERT INTO `users` VALUES (727, '廖秀英', 'H1NrfEuIub', 'student', 'xiuyingli@outlook.com', 'JQX3Qx2v1r', NULL, 1, '2017-06-30 23:41:20', '2006-08-15 23:50:04', '2024-12-27 09:18:07', 138, 78, 5, 100);
INSERT INTO `users` VALUES (728, '雷璐', 'WqAAPXJtTO', 'student', 'lei1111@gmail.com', 'APxMmMXEAS', NULL, 1, '2007-01-21 05:41:13', '2007-05-25 04:41:24', '2024-12-27 09:18:07', 120, 78, 5, 100);
INSERT INTO `users` VALUES (729, '魏云熙', 'UYcspUnCpt', 'student', 'weyunxi@outlook.com', 'ml9jZn0fQJ', NULL, 1, '2021-06-30 16:57:14', '2022-10-04 21:56:27', '2024-12-27 09:18:07', 156, 78, 5, 100);
INSERT INTO `users` VALUES (730, '江睿', 'c1tqd36DG3', 'student', 'ruijiang@gmail.com', 'odCXYSAMuy', NULL, 1, '2004-08-13 17:56:36', '2004-10-31 10:50:40', '2024-12-27 09:18:07', 118, 78, 5, 100);
INSERT INTO `users` VALUES (731, '汤震南', 'IiastrrQyc', 'student', 'zhenntan@icloud.com', 'wjCaJbHopg', NULL, 1, '2013-12-02 06:33:08', '2013-04-14 23:28:24', '2024-12-27 09:18:07', 179, 78, 5, 100);
INSERT INTO `users` VALUES (732, '田秀英', 'EPAHf0dnlf', 'student', 'tian1214@hotmail.com', 'KEbsJYNORe', NULL, 1, '2020-02-27 08:46:04', '2019-03-22 02:37:23', '2024-12-27 09:18:07', 196, 78, 5, 100);
INSERT INTO `users` VALUES (733, '孙宇宁', 'swFPaPCAqJ', 'student', 'yuningsun@yahoo.com', 'dlglujmDZG', NULL, 1, '2003-03-20 13:10:28', '2003-03-04 02:16:20', '2024-12-27 09:18:07', 110, 78, 5, 100);
INSERT INTO `users` VALUES (734, '钟秀英', 'cp2gdkKXah', 'student', 'xizh@icloud.com', '3kRboCxRSI', NULL, 1, '2008-10-02 03:30:26', '2003-03-20 06:54:18', '2024-12-27 09:18:07', 179, 78, 5, 100);
INSERT INTO `users` VALUES (735, '蒋云熙', 'vaaI9hsDkL', 'student', 'yunxiji@gmail.com', 'VJfcmgF1xX', NULL, 1, '2003-05-31 18:57:54', '2014-12-06 13:14:00', '2024-12-27 09:18:07', 110, 78, 5, 100);
INSERT INTO `users` VALUES (736, '王詩涵', 'qOKum3N6es', 'student', 'swa1@yahoo.com', 'iSFYEidIBx', NULL, 1, '2002-07-24 09:12:49', '2020-06-20 14:53:43', '2024-12-27 09:18:07', 139, 78, 5, 100);
INSERT INTO `users` VALUES (737, '段嘉伦', 'N0o5H1i1gW', 'student', 'duajialun802@mail.com', 'GKQwzdWDwy', NULL, 1, '2024-11-22 01:53:09', '2006-11-05 08:49:31', '2024-12-27 09:18:07', 162, 78, 5, 100);
INSERT INTO `users` VALUES (738, '韦子异', 'ikUhEEYuIM', 'student', 'weiziyi3@icloud.com', 'G8DN0xTQKU', NULL, 1, '2019-02-16 06:51:20', '2013-06-16 16:47:19', '2024-12-27 09:18:07', 172, 78, 5, 100);
INSERT INTO `users` VALUES (739, '邓杰宏', '0axn4bIchu', 'student', 'jden9@mail.com', 'TpY3sDPmAJ', NULL, 1, '2022-09-27 23:21:17', '2014-05-28 12:40:21', '2024-12-27 09:18:07', 145, 78, 5, 100);
INSERT INTO `users` VALUES (740, '沈杰宏', 'DnQq0qyHmP', 'student', 'shjiehong@outlook.com', 'cPMhdqtzjZ', NULL, 1, '2020-08-21 02:11:53', '2022-08-22 04:53:24', '2024-12-27 09:18:07', 104, 78, 5, 100);
INSERT INTO `users` VALUES (741, '田岚', 'vhrzvNasHe', 'student', 'tian7@icloud.com', 'Nyf6pwdTsm', NULL, 1, '2000-02-17 00:12:41', '2019-04-26 07:24:44', '2024-12-27 09:18:07', 121, 78, 5, 100);
INSERT INTO `users` VALUES (742, '冯杰宏', '93b9aG4eQc', 'student', 'fengj2@outlook.com', 'XjQRgumISI', NULL, 1, '2015-11-23 17:19:57', '2008-10-26 20:17:17', '2024-12-27 09:18:07', 181, 78, 5, 100);
INSERT INTO `users` VALUES (743, '袁晓明', 'zydqx4vB9p', 'student', 'xiaomyu@yahoo.com', 'Nppom8mMpz', NULL, 1, '2014-08-27 08:14:21', '2019-04-09 03:19:42', '2024-12-27 09:18:07', 119, 78, 5, 100);
INSERT INTO `users` VALUES (744, '史致远', 'lhjepev5nR', 'student', 'zhiyushi@yahoo.com', 'UzROZl4dMP', NULL, 1, '2011-01-26 16:15:20', '2010-05-09 23:18:13', '2024-12-27 09:18:07', 188, 78, 5, 100);
INSERT INTO `users` VALUES (745, '廖岚', 'tEquWA6O2a', 'student', 'lliao4@outlook.com', 'H7niYKOrWE', NULL, 1, '2007-10-16 16:27:29', '2012-04-23 03:00:57', '2024-12-27 09:18:07', 165, 78, 5, 100);
INSERT INTO `users` VALUES (746, '唐震南', 'GVIA4VzDGb', 'student', 'ztang@icloud.com', 'beIdCm7WKi', NULL, 1, '2020-03-30 19:37:30', '2024-08-24 22:32:20', '2024-12-27 09:18:07', 179, 78, 5, 100);
INSERT INTO `users` VALUES (747, '阎晓明', 'FcDav0WVs7', 'student', 'xyan@hotmail.com', 'HTsTxGKAQF', NULL, 1, '2002-04-25 01:32:38', '2020-04-29 10:25:10', '2024-12-27 09:18:07', 101, 78, 5, 100);
INSERT INTO `users` VALUES (748, '谢安琪', 'U4D8SsM2vv', 'student', 'xian@hotmail.com', 'laSINN7wdl', NULL, 1, '2000-07-06 10:44:03', '2003-01-21 08:16:21', '2024-12-25 03:00:07', 172, 78, 5, 100);
INSERT INTO `users` VALUES (749, '江子韬', 'V2yzINQz4j', 'student', 'zitao8@mail.com', 'KezThykZLW', NULL, 1, '2003-12-30 23:02:57', '2004-07-09 11:45:07', '2024-12-27 09:18:07', 152, 78, 5, 100);
INSERT INTO `users` VALUES (750, '马璐', 'JMovTht1CL', 'student', 'lma79@icloud.com', 'm4DQ4yJhjg', NULL, 1, '2018-08-29 02:23:22', '2012-05-25 13:44:26', '2024-12-27 09:18:07', 172, 78, 5, 100);
INSERT INTO `users` VALUES (751, '贺震南', '2pqghqKszm', 'student', 'zhehe1115@mail.com', 'ftJsVvK7k0', NULL, 1, '2011-03-31 03:06:16', '2005-12-24 08:47:21', '2024-12-27 09:18:07', 179, 78, 5, 100);
INSERT INTO `users` VALUES (752, '夏秀英', 'Y4PEs7UXme', 'student', 'xiuyingxi@gmail.com', 'vPqohjt0sa', NULL, 1, '2007-06-29 10:35:28', '2024-07-20 11:38:28', '2024-12-27 09:18:07', 200, 78, 5, 100);
INSERT INTO `users` VALUES (753, '侯璐', 'z1E8UokKCM', 'student', 'luh@mail.com', 'AvorIrxIai', NULL, 1, '2013-12-28 08:57:12', '2000-03-31 08:19:23', '2024-12-27 09:18:07', 166, 78, 5, 100);
INSERT INTO `users` VALUES (754, '曾杰宏', 'dG6LNB740P', 'student', 'zenjieh1@outlook.com', 'hrNWGCDkPX', NULL, 1, '2015-08-11 20:05:33', '2017-01-15 01:38:13', '2024-12-27 09:18:07', 151, 78, 5, 100);
INSERT INTO `users` VALUES (755, '石晓明', '7Ogtt9kYvW', 'student', 'shixi5@gmail.com', 'ss2zKFZvVl', NULL, 1, '2005-11-20 21:33:00', '2013-09-19 07:24:29', '2024-12-27 09:18:07', 120, 78, 5, 100);
INSERT INTO `users` VALUES (756, '王震南', 'MkidxqdNlh', 'student', 'wangzhe708@gmail.com', 'N7ocbxb4OD', NULL, 1, '2014-01-01 03:35:50', '2023-05-29 21:52:51', '2024-12-27 09:18:07', 184, 78, 5, 100);
INSERT INTO `users` VALUES (757, '秦璐', 'WHzFrbILbx', 'student', 'qin1@icloud.com', 'Z2PMUgVbwV', NULL, 1, '2007-10-17 01:46:32', '2011-08-21 11:22:17', '2024-12-27 09:18:07', 192, 78, 5, 100);
INSERT INTO `users` VALUES (758, '陆致远', 'NfB7aTWawH', 'student', 'luzhiyuan1977@outlook.com', 'dJMoBTE6HG', NULL, 1, '2006-07-06 14:07:19', '2001-01-08 05:34:58', '2024-12-27 09:18:07', 143, 78, 5, 100);
INSERT INTO `users` VALUES (759, '龙嘉伦', '0xKLoeWLgI', 'student', 'jialunlon@hotmail.com', 'V9IDRXSJxi', NULL, 1, '2007-11-23 00:19:03', '2002-07-02 02:56:43', '2024-12-27 09:18:07', 130, 78, 5, 100);
INSERT INTO `users` VALUES (760, '陈杰宏', 'r6Z6D09uhT', 'student', 'jiehongchen@gmail.com', 'V6d9jMNFSm', NULL, 1, '2024-05-05 08:45:11', '2010-02-19 20:24:25', '2024-12-27 09:18:07', 176, 78, 5, 100);
INSERT INTO `users` VALUES (761, '崔宇宁', 'Amczla7txv', 'student', 'yuc104@icloud.com', 'rE2kyfE6kv', NULL, 1, '2005-12-23 12:28:28', '2005-01-11 17:32:26', '2024-12-27 09:18:07', 127, 78, 5, 100);
INSERT INTO `users` VALUES (762, '林安琪', 'FjgC55ngDb', 'student', 'anqili@icloud.com', 'rTDbZ1OMfa', NULL, 1, '2019-08-11 07:34:37', '2020-08-28 15:26:18', '2024-12-27 09:18:07', 114, 78, 5, 100);
INSERT INTO `users` VALUES (763, '萧云熙', 'MJg4yLliKk', 'student', 'yux@gmail.com', '9goLHOAuWY', NULL, 1, '2017-08-06 01:52:15', '2013-11-28 09:48:33', '2024-12-27 09:18:07', 130, 78, 5, 100);
INSERT INTO `users` VALUES (764, '金晓明', 'sohH8TR6M0', 'student', 'jinx@gmail.com', 'GxReQud5CZ', NULL, 1, '2024-02-12 03:06:45', '2001-05-10 04:56:36', '2024-12-27 09:18:07', 111, 78, 5, 100);
INSERT INTO `users` VALUES (765, '邱晓明', 'Bxri7eF0ru', 'student', 'xiaoming5@gmail.com', '58dQlspfH0', NULL, 1, '2013-10-29 14:40:02', '2003-03-13 02:21:05', '2024-12-27 09:18:07', 144, 78, 5, 100);
INSERT INTO `users` VALUES (766, '彭璐', 'brLy3JFPpg', 'student', 'lupeng@outlook.com', 'foh3X8PRXT', NULL, 1, '2002-05-04 23:04:29', '2021-05-21 09:50:51', '2024-12-27 09:18:07', 124, 78, 5, 100);
INSERT INTO `users` VALUES (767, '刘睿', 'yNazJ3iPq2', 'student', 'lirui@outlook.com', '7xC1YYykLc', NULL, 1, '2018-08-16 20:51:00', '2018-10-04 08:18:40', '2024-12-27 09:18:07', 110, 78, 5, 100);
INSERT INTO `users` VALUES (768, '谭睿', 'ht12tzXk0s', 'student', 'tr1104@yahoo.com', 'rNjr3rXbRU', NULL, 1, '2002-08-14 16:46:00', '2011-08-27 21:05:46', '2024-12-27 09:18:07', 101, 78, 5, 100);
INSERT INTO `users` VALUES (769, '罗睿', 'vkbxQDVGMp', 'student', 'luo3@yahoo.com', '9vyuovvKXE', NULL, 1, '2024-08-25 12:25:52', '2002-08-28 06:57:06', '2024-12-27 09:18:07', 125, 78, 5, 100);
INSERT INTO `users` VALUES (770, '许璐', 'BbR2c3f43o', 'student', 'xl1988@gmail.com', 'jSVL5PjdZT', NULL, 1, '2019-07-05 18:30:03', '2001-04-19 23:58:22', '2024-12-27 09:18:07', 146, 78, 5, 100);
INSERT INTO `users` VALUES (771, '沈嘉伦', 'EKQBwwRNyv', 'student', 'shj616@mail.com', 'DQXE32YwK0', NULL, 1, '2002-01-03 14:00:36', '2008-06-01 10:25:26', '2024-12-27 09:18:07', 110, 78, 5, 100);
INSERT INTO `users` VALUES (772, '郭致远', 'eSFvP5wVrW', 'student', 'zhiyuanguo@gmail.com', 'dMMunaRYeS', NULL, 1, '2015-07-21 01:04:57', '2010-04-12 14:37:18', '2024-12-27 09:18:07', 101, 78, 5, 100);
INSERT INTO `users` VALUES (773, '金宇宁', 'PzENcnv8kw', 'student', 'yuning2020@gmail.com', 'b5vtQdfzVc', NULL, 1, '2002-06-12 01:31:03', '2004-09-11 03:07:13', '2024-12-27 09:18:07', 163, 78, 5, 100);
INSERT INTO `users` VALUES (774, '戴安琪', 'KYdb0Vprrp', 'student', 'daian1945@icloud.com', 'RXRxA4mVrP', NULL, 1, '2001-09-28 16:08:25', '2006-08-13 03:25:15', '2024-12-27 09:18:07', 199, 78, 5, 100);
INSERT INTO `users` VALUES (775, '孟睿', 'XysD5kBopH', 'student', 'rm9@yahoo.com', 'xgZPaCnUbh', NULL, 1, '2013-09-12 13:14:08', '2023-05-30 02:11:28', '2024-12-27 09:18:07', 117, 78, 5, 100);
INSERT INTO `users` VALUES (776, '薛安琪', 'ANCaGD3oW2', 'student', 'xua422@gmail.com', '8jgfu4IC0g', NULL, 1, '2001-06-13 16:52:38', '2021-10-16 06:36:47', '2024-12-27 09:18:07', 149, 78, 5, 100);
INSERT INTO `users` VALUES (777, '杜震南', 'TpXthZosk5', 'student', 'zhedu@icloud.com', 'qzpNrzthok', NULL, 1, '2017-12-01 13:24:46', '2019-05-15 02:35:23', '2024-12-27 09:18:07', 192, 78, 5, 100);
INSERT INTO `users` VALUES (778, '何岚', 'aPR8OACc2k', 'student', 'helan41@hotmail.com', 'ncbuKrdDXG', NULL, 1, '2016-12-01 14:34:09', '2016-03-05 04:36:05', '2024-12-27 09:18:07', 114, 78, 5, 100);
INSERT INTO `users` VALUES (779, '魏震南', 'QTvrsoBMzA', 'student', 'weizhenn@gmail.com', 'QxeoTCbNO7', NULL, 1, '2005-12-15 06:54:20', '2011-05-27 02:26:32', '2024-12-27 09:18:07', 126, 78, 5, 100);
INSERT INTO `users` VALUES (780, '龙杰宏', 'pbvQ078hK9', 'student', 'jiehonglong@yahoo.com', 'yIFiq1W3wy', NULL, 1, '2019-01-16 14:54:07', '2022-08-12 09:14:14', '2024-12-27 09:18:07', 104, 78, 5, 100);
INSERT INTO `users` VALUES (781, '秦云熙', 'cFZdNXBSj0', 'student', 'yunxi9@gmail.com', 'YFm5eKhaeL', NULL, 1, '2014-02-05 19:50:44', '2010-01-31 16:58:51', '2024-12-27 09:18:07', 110, 78, 5, 100);
INSERT INTO `users` VALUES (782, '许秀英', 'TlEuk57Ft8', 'student', 'xiuying5@icloud.com', '6anx0lsBqA', NULL, 1, '2016-05-12 10:00:55', '2008-02-22 03:47:12', '2024-12-27 09:18:07', 153, 78, 5, 100);
INSERT INTO `users` VALUES (783, '陆宇宁', 'YWJcAaJN1V', 'student', 'lu3@outlook.com', 'sII7JPO7ap', NULL, 1, '2024-04-28 19:57:47', '2019-03-30 01:04:06', '2024-12-27 09:18:07', 188, 78, 5, 100);
INSERT INTO `users` VALUES (784, '陆云熙', '3jL8sJxXwv', 'student', 'luyu1@outlook.com', 'GOed3G6kAR', NULL, 1, '2013-04-03 08:03:04', '2002-05-23 18:58:20', '2024-12-27 09:18:07', 114, 78, 5, 100);
INSERT INTO `users` VALUES (785, '钟致远', '5MBLLgYAGq', 'student', 'zhiyuanzhong@gmail.com', '8H4wApuUiV', NULL, 1, '2022-06-20 08:11:25', '2023-04-03 15:11:36', '2024-12-27 09:18:07', 143, 78, 5, 100);
INSERT INTO `users` VALUES (786, '姚晓明', 'TmZuawrfvg', 'student', 'yao1957@icloud.com', 'uUUXjXp2mP', NULL, 1, '2015-05-27 01:15:05', '2010-09-04 02:17:07', '2024-12-27 09:18:07', 119, 78, 5, 100);
INSERT INTO `users` VALUES (787, '贺詩涵', 'P0KcU9kDRj', 'student', 'hshihan1968@gmail.com', 'jK10H8bINI', NULL, 1, '2018-09-24 02:49:53', '2005-10-04 04:24:25', '2024-12-27 09:18:07', 191, 78, 5, 100);
INSERT INTO `users` VALUES (788, '田睿', '6Mqb3MBPMM', 'student', 'tian44@icloud.com', 'qd0wdHUxpR', NULL, 1, '2005-08-10 08:36:00', '2023-05-13 22:00:28', '2024-12-27 09:18:07', 107, 78, 5, 100);
INSERT INTO `users` VALUES (789, '宋子韬', '4dEVYZeoJY', 'student', 'song1015@icloud.com', 'pKmS84ldzo', NULL, 1, '2006-04-05 07:51:39', '2006-03-01 17:56:15', '2024-12-27 09:18:07', 115, 78, 5, 100);
INSERT INTO `users` VALUES (790, '范震南', 'fnVMLEmaVm', 'student', 'fanzh@outlook.com', 'EtBj38CBuQ', NULL, 1, '2015-11-01 22:53:38', '2002-07-18 04:40:24', '2024-12-27 09:18:07', 115, 78, 5, 100);
INSERT INTO `users` VALUES (791, '田璐', 'oc8Xy9EDkv', 'student', 'til@icloud.com', 'uzwFDCGS11', NULL, 1, '2003-05-03 15:48:30', '2022-12-29 22:39:37', '2024-12-27 09:18:07', 123, 78, 5, 100);
INSERT INTO `users` VALUES (792, '曹子韬', 'uBtnz6QbhE', 'student', 'czitao@icloud.com', 'q6WFhk0yX0', NULL, 1, '2019-03-26 16:10:59', '2014-03-29 03:07:59', '2024-12-27 09:18:07', 155, 78, 5, 100);
INSERT INTO `users` VALUES (793, '韩震南', 'ScCQNT94UC', 'student', 'hazhe@mail.com', 'aLWTKWCPMW', NULL, 1, '2014-11-06 19:40:00', '2018-07-11 22:05:36', '2024-12-27 09:18:07', 139, 78, 5, 100);
INSERT INTO `users` VALUES (794, '林璐', 'WWG28CJ5VP', 'student', 'lulin@outlook.com', '64zhUii4rn', NULL, 1, '2005-12-05 05:49:34', '2001-06-01 22:44:45', '2024-12-27 09:18:07', 165, 78, 5, 100);
INSERT INTO `users` VALUES (795, '郝岚', 'fFkHUMFY3z', 'student', 'haol1121@outlook.com', 'F7A6jR3sSp', NULL, 1, '2019-06-10 00:44:26', '2001-10-10 12:51:55', '2024-12-27 09:18:07', 193, 78, 5, 100);
INSERT INTO `users` VALUES (796, '罗秀英', '6AXn27qRTQ', 'student', 'xiuying7@outlook.com', 'TB8NYPL9nK', NULL, 1, '2020-02-08 23:23:33', '2024-10-02 23:34:54', '2024-12-27 09:18:07', 101, 78, 5, 100);
INSERT INTO `users` VALUES (797, '袁致远', 'O5EZTBGMcT', 'student', 'zhiyuanyuan@outlook.com', 'yOfcCgwlgd', NULL, 1, '2023-12-03 19:40:43', '2006-03-01 21:42:58', '2024-12-27 09:18:13', 112, 68, 5, 100);
INSERT INTO `users` VALUES (798, '郝嘉伦', 'M3B1trDQTX', 'student', 'hajialu2006@outlook.com', 'fa1fybTAC5', NULL, 1, '2014-04-13 12:00:09', '2004-04-20 01:09:42', '2024-12-27 09:18:13', 180, 68, 5, 100);
INSERT INTO `users` VALUES (799, '魏岚', 'QNDsFE7ZCj', 'student', 'welan10@gmail.com', 'apMgS2QIi6', NULL, 1, '2004-07-14 19:42:03', '2000-07-26 20:22:51', '2024-12-27 09:18:13', 189, 68, 5, 100);
INSERT INTO `users` VALUES (800, '常子韬', 'oyC3Sk2pfc', 'student', 'changz@icloud.com', '0xyMDrltp7', NULL, 1, '2002-10-12 01:16:37', '2022-06-30 17:01:05', '2024-12-27 09:18:13', 176, 68, 5, 100);
INSERT INTO `users` VALUES (801, '谢秀英', '3aYnx5Pkm0', 'student', 'xxie@icloud.com', 'BCg510kH31', NULL, 1, '2012-07-15 00:48:19', '2001-12-26 04:52:43', '2024-12-27 09:18:13', 145, 68, 5, 100);
INSERT INTO `users` VALUES (802, '夏宇宁', 'ljBI7mKEYb', 'student', 'yunxi84@outlook.com', '5chqmJ4DYL', NULL, 1, '2018-10-23 18:04:30', '2016-10-26 05:09:43', '2024-12-27 09:18:13', 155, 68, 5, 100);
INSERT INTO `users` VALUES (803, '周璐', 'CJLe1f4ggw', 'student', 'luzho2009@icloud.com', 'K5VE0ZVwca', NULL, 1, '2019-03-14 23:26:56', '2011-09-06 17:24:56', '2024-12-27 09:18:13', 151, 68, 5, 100);
INSERT INTO `users` VALUES (804, '薛晓明', 'Uw3YM2sV7a', 'student', 'xiaoming825@gmail.com', 'sI93teYpjh', NULL, 1, '2008-11-13 15:06:49', '2006-02-28 16:54:12', '2024-12-27 09:18:13', 164, 68, 5, 100);
INSERT INTO `users` VALUES (805, '黄睿', '7lyatDpd4o', 'student', 'ruihua@hotmail.com', 'Cr8HgQknVT', NULL, 1, '2016-02-25 12:46:06', '2015-11-04 16:26:12', '2024-12-27 09:18:13', 198, 68, 5, 100);
INSERT INTO `users` VALUES (806, '袁嘉伦', 'WKisoco8gp', 'student', 'jialunyuan@gmail.com', '02TEfBaDFH', NULL, 1, '2005-02-11 18:39:58', '2003-11-14 16:09:16', '2024-12-27 09:18:13', 116, 68, 5, 100);
INSERT INTO `users` VALUES (807, '黎晓明', 'd8TwbkQ38b', 'student', 'xiaomli@hotmail.com', 'YzJN3qnOJV', NULL, 1, '2016-08-23 12:10:59', '2017-08-29 08:11:50', '2024-12-27 09:18:13', 138, 68, 5, 100);
INSERT INTO `users` VALUES (808, '江震南', 'WKYN7ongub', 'student', 'jzh6@outlook.com', 'DmeiMRxYPu', NULL, 1, '2013-02-10 03:20:46', '2000-09-04 04:12:43', '2024-12-27 09:18:13', 187, 68, 5, 100);
INSERT INTO `users` VALUES (809, '孔岚', '8AbMcNlAKE', 'student', 'lankong7@yahoo.com', 'c0FON5XO0C', NULL, 1, '2021-05-16 22:16:21', '2019-01-20 18:41:44', '2024-12-27 09:18:13', 101, 68, 5, 100);
INSERT INTO `users` VALUES (810, '杜晓明', 'hHjIW6E9rV', 'student', 'dux@yahoo.com', '6iUarftzCI', NULL, 1, '2012-09-07 18:36:27', '2006-08-16 21:50:31', '2024-12-27 09:18:13', 104, 68, 5, 100);
INSERT INTO `users` VALUES (811, '江子异', 'aE2Qb6DyUj', 'student', 'jiangziy@outlook.com', 'mveh01ON2l', NULL, 1, '2014-01-30 00:47:23', '2002-11-19 06:59:34', '2024-12-27 09:18:13', 137, 68, 5, 100);
INSERT INTO `users` VALUES (812, '傅璐', 'D3YlznpJqH', 'student', 'lufu@icloud.com', 'yPv7li3uDs', NULL, 1, '2018-05-22 10:48:28', '2009-03-03 00:06:10', '2024-12-27 09:18:13', 176, 68, 5, 100);
INSERT INTO `users` VALUES (813, '袁睿', '0lRkYk8jLo', 'student', 'yuanrui@gmail.com', '3Qk7LqeZad', NULL, 1, '2007-12-28 11:17:46', '2023-06-22 05:49:03', '2024-12-27 09:18:13', 149, 68, 5, 100);
INSERT INTO `users` VALUES (814, '邹致远', 'fxLCLTaWHA', 'student', 'zhzou@outlook.com', 'qErbVY96hK', NULL, 1, '2011-06-26 04:39:14', '2020-07-27 07:17:28', '2024-12-27 09:18:13', 171, 68, 5, 100);
INSERT INTO `users` VALUES (815, '许晓明', 'X6Q84pxqI0', 'student', 'xux@gmail.com', 'MpB43xgzQd', NULL, 1, '2012-08-10 23:58:13', '2005-12-18 00:58:03', '2024-12-27 09:18:13', 159, 68, 5, 100);
INSERT INTO `users` VALUES (816, '谢宇宁', 'nISebQCgfq', 'student', 'xiyuning@mail.com', 'FuB31VrFGf', NULL, 1, '2010-03-17 12:01:36', '2017-04-22 18:36:01', '2024-12-27 09:18:13', 185, 68, 5, 100);
INSERT INTO `users` VALUES (817, '高宇宁', 'B3ibaoBULb', 'student', 'gyuning08@icloud.com', 'prgZlomOez', NULL, 1, '2003-12-05 01:49:13', '2005-01-16 08:26:18', '2024-12-27 09:18:13', 169, 68, 5, 100);
INSERT INTO `users` VALUES (818, '许宇宁', 'muxBxYF7d5', 'student', 'yunx@outlook.com', 'NzlOFB8CBV', NULL, 1, '2007-10-28 18:38:29', '2007-03-25 01:38:11', '2024-12-27 09:18:13', 192, 68, 5, 100);
INSERT INTO `users` VALUES (819, '吴睿', '8mpKYMnpH3', 'student', 'rui9@yahoo.com', '78RmL2ZgI1', NULL, 1, '2011-02-15 01:39:57', '2017-07-04 13:58:58', '2024-12-27 09:18:13', 128, 68, 5, 100);
INSERT INTO `users` VALUES (820, '傅嘉伦', '9GA3ucgo2U', 'student', 'fujialu@icloud.com', 'jONC9FNNbk', NULL, 1, '2003-08-22 06:32:48', '2005-03-24 01:15:02', '2024-12-27 09:18:13', 172, 68, 5, 100);
INSERT INTO `users` VALUES (821, '沈睿', 'nVzsCi3kHa', 'student', 'shenrui76@hotmail.com', 'c2oxNBlEUQ', NULL, 1, '2013-11-01 08:40:03', '2016-02-26 07:42:02', '2024-12-27 09:18:13', 106, 68, 5, 100);
INSERT INTO `users` VALUES (822, '贺秀英', 'gmiMN65FNn', 'student', 'hexi@outlook.com', 'ZjMVO5vWrM', NULL, 1, '2001-09-21 18:51:53', '2019-01-17 18:33:04', '2024-12-27 09:18:13', 154, 68, 5, 100);
INSERT INTO `users` VALUES (823, '任岚', 'qQyRfNJjHG', 'student', 'lare@gmail.com', 'EgQfRNqq7c', NULL, 1, '2013-02-24 05:00:16', '2011-10-16 10:49:52', '2024-12-27 09:18:13', 106, 68, 5, 100);
INSERT INTO `users` VALUES (824, '戴嘉伦', 'wPqdLw3B4A', 'student', 'daijia@gmail.com', 'YiTOKRE7jV', NULL, 1, '2000-08-08 18:40:35', '2005-07-27 06:24:45', '2024-12-27 09:18:13', 137, 68, 5, 100);
INSERT INTO `users` VALUES (825, '徐宇宁', 'ors3e8Qedo', 'student', 'yuning3@icloud.com', 'MT59Cs4Fgg', NULL, 1, '2006-02-11 21:30:53', '2008-08-27 22:52:42', '2024-12-27 09:18:13', 189, 68, 5, 100);
INSERT INTO `users` VALUES (826, '蔡云熙', 'jGCZQ4oeA9', 'student', 'caiy@hotmail.com', '9O8Gbl1dlk', NULL, 1, '2020-08-11 14:24:44', '2013-03-08 01:30:46', '2024-12-27 09:18:13', 135, 68, 5, 100);
INSERT INTO `users` VALUES (827, '丁安琪', 'C4jpYXloi0', 'student', 'andi2@mail.com', 'dEEN8uPtPZ', NULL, 1, '2015-06-02 13:12:47', '2017-04-20 06:02:28', '2024-12-27 09:18:13', 127, 68, 5, 100);
INSERT INTO `users` VALUES (828, '秦致远', '1alu5pcIPO', 'student', 'qzhiyuan9@gmail.com', 'IPzdDqZfaF', NULL, 1, '2004-08-23 21:16:14', '2015-10-07 12:25:25', '2024-12-27 09:18:13', 185, 68, 5, 100);
INSERT INTO `users` VALUES (829, '郭秀英', '77yGxLnVBs', 'student', 'guo8@outlook.com', 'IFar67y0rE', NULL, 1, '2003-11-12 22:00:05', '2005-07-11 03:26:29', '2024-12-27 09:18:13', 171, 68, 5, 100);
INSERT INTO `users` VALUES (830, '姚詩涵', 'JVa4DU4cwb', 'student', 'shihany10@gmail.com', 'wIStLUfspM', NULL, 1, '2017-08-22 18:45:23', '2020-10-08 12:51:55', '2024-12-27 09:18:13', 152, 68, 5, 100);
INSERT INTO `users` VALUES (831, '贾睿', 'xztRsSQBy9', 'student', 'jiarui@outlook.com', 'DTjuc6y3L0', NULL, 1, '2005-11-17 17:45:12', '2009-12-22 12:30:43', '2024-12-27 09:18:13', 178, 68, 5, 100);
INSERT INTO `users` VALUES (832, '程子异', 'yjQmCOjmhj', 'student', 'zic@outlook.com', 'ZQlvWyV8Dg', NULL, 1, '2023-11-02 18:02:29', '2019-10-05 14:49:04', '2024-12-27 09:18:13', 148, 68, 5, 100);
INSERT INTO `users` VALUES (833, '李秀英', 'ELolV928Oe', 'student', 'lixi@outlook.com', 'g5hjZCziEG', NULL, 1, '2021-01-29 01:59:49', '2008-07-16 22:33:51', '2024-12-27 09:18:13', 138, 68, 5, 100);
INSERT INTO `users` VALUES (834, '陆秀英', 'VTYmtl7woA', 'student', 'xiuyinglu@gmail.com', 'zdDeNroVfB', NULL, 1, '2004-12-21 09:14:28', '2010-11-07 16:47:49', '2024-12-27 09:18:13', 151, 68, 5, 100);
INSERT INTO `users` VALUES (835, '毛安琪', 'XduoIGeVqR', 'student', 'maanqi@gmail.com', 'ltycwPiAMJ', NULL, 1, '2015-09-17 09:53:26', '2024-04-01 21:22:59', '2024-12-27 09:18:13', 130, 68, 5, 100);
INSERT INTO `users` VALUES (836, '魏秀英', 'ZQgWJoheQo', 'student', 'xiuying3@gmail.com', '3RveXuaaLp', NULL, 1, '2006-09-15 02:04:37', '2019-11-20 18:47:35', '2024-12-27 09:18:13', 134, 68, 5, 100);
INSERT INTO `users` VALUES (837, '方致远', 'LJjyx7Tbbj', 'student', 'zhiyuanfang8@gmail.com', 'CbPO3J8qRv', NULL, 1, '2011-07-23 17:34:01', '2017-08-11 00:25:34', '2024-12-27 09:18:13', 164, 68, 5, 100);
INSERT INTO `users` VALUES (838, '汤安琪', 'P70MmQiFh9', 'student', 'taanqi@hotmail.com', 'AfcBGIXIHy', NULL, 1, '2018-09-10 17:08:57', '2021-08-20 04:15:43', '2024-12-27 09:18:13', 160, 68, 5, 100);
INSERT INTO `users` VALUES (839, '顾子韬', 'cYMKHAcCEt', 'student', 'guzita@gmail.com', 'y19XxvR6re', NULL, 1, '2015-01-01 17:13:34', '2011-11-29 11:52:35', '2024-12-27 09:18:13', 185, 68, 5, 100);
INSERT INTO `users` VALUES (840, '谭晓明', 'tmSf8IP33v', 'student', 'xiaoming918@gmail.com', 'SahHk3ihGB', NULL, 1, '2011-07-19 05:18:11', '2016-10-16 10:52:45', '2024-12-27 09:18:13', 193, 68, 5, 100);
INSERT INTO `users` VALUES (841, '罗子异', 'OHgS9KOfC2', 'student', 'luo89@gmail.com', '6AOu6to2BD', NULL, 1, '2010-02-15 07:12:58', '2004-04-09 17:09:59', '2024-12-27 09:18:13', 146, 68, 5, 100);
INSERT INTO `users` VALUES (842, '董睿', 't4LPrAhyfL', 'student', 'rdong@icloud.com', 'B5GyNq6mlv', NULL, 1, '2017-02-22 21:49:50', '2020-08-26 01:16:11', '2024-12-27 09:18:13', 106, 68, 5, 100);
INSERT INTO `users` VALUES (843, '石杰宏', 'kAUU4Qvhk7', 'student', 'jiehong3@gmail.com', '1FGs9kqO9G', NULL, 1, '2001-05-23 18:08:21', '2022-09-11 23:18:28', '2024-12-27 09:18:13', 197, 68, 5, 100);
INSERT INTO `users` VALUES (844, '王杰宏', 'jrNXNvpFjM', 'student', 'jiehongw@hotmail.com', '7rWTXMAgHR', NULL, 1, '2012-10-26 11:23:22', '2024-08-26 15:18:39', '2024-12-27 09:18:13', 129, 68, 5, 100);
INSERT INTO `users` VALUES (845, '余子异', 'BR0nZRbT7F', 'student', 'yuziy@mail.com', '1qAwcMEE3T', NULL, 1, '2006-03-20 09:20:23', '2018-04-08 12:11:54', '2024-12-27 09:18:13', 175, 68, 5, 100);
INSERT INTO `users` VALUES (846, '陆安琪', 'x3WolnYQQN', 'student', 'anqilu@hotmail.com', '7Vckok3DhG', NULL, 1, '2005-06-13 08:29:49', '2001-08-13 04:01:07', '2024-12-27 09:18:13', 133, 68, 5, 100);
INSERT INTO `users` VALUES (847, '戴璐', 'nEiFPort8X', 'student', 'dail@outlook.com', 'nhbGj8U3hi', NULL, 1, '2020-07-26 14:16:01', '2005-06-12 14:29:01', '2024-12-27 09:18:13', 199, 68, 5, 100);
INSERT INTO `users` VALUES (848, '韩子韬', 'lBQGfWIbeZ', 'student', 'haz@outlook.com', 'LbWdQYAkeX', NULL, 1, '2019-10-06 23:32:55', '2016-09-23 00:24:45', '2024-12-27 09:18:13', 182, 68, 5, 100);
INSERT INTO `users` VALUES (849, '潘震南', 'czgGc8XpV3', 'student', 'pazhenn204@yahoo.com', 'kEe1JQulPo', NULL, 1, '2005-05-09 10:48:48', '2005-07-23 20:01:08', '2024-12-27 09:18:13', 175, 68, 5, 100);
INSERT INTO `users` VALUES (850, '胡秀英', 'T8cjU1R9vh', 'student', 'hx99@mail.com', '8ZLmNe7ef2', NULL, 1, '2023-08-03 03:52:28', '2013-05-18 19:40:33', '2024-12-27 09:18:13', 156, 68, 5, 100);
INSERT INTO `users` VALUES (851, '黎震南', 'BSyf9wKB1Z', 'student', 'zhli@icloud.com', '8ZmKKXfSem', NULL, 1, '2007-02-04 19:29:40', '2004-12-20 20:58:49', '2024-12-27 09:18:13', 121, 68, 5, 100);
INSERT INTO `users` VALUES (852, '于震南', 'pw00TsYu0X', 'student', 'zhennanyu@outlook.com', 'lpHIA41fmz', NULL, 1, '2005-04-17 11:33:28', '2021-02-18 03:41:35', '2024-12-27 09:18:13', 144, 68, 5, 100);
INSERT INTO `users` VALUES (853, '王致远', 'HkjoiQ0tsu', 'student', 'wangzhiyuan@hotmail.com', 'ROAD8wXOqt', NULL, 1, '2001-01-02 20:32:23', '2022-04-06 05:52:27', '2024-12-27 09:18:13', 165, 68, 5, 100);
INSERT INTO `users` VALUES (854, '任晓明', 'BijGcJtRkK', 'student', 'xren90@gmail.com', 'fJD3sf4UE4', NULL, 1, '2021-07-13 15:54:28', '2005-11-12 21:24:24', '2024-12-27 09:18:13', 100, 68, 5, 100);
INSERT INTO `users` VALUES (855, '程宇宁', 'SmJuDLgEiG', 'student', 'yuc5@mail.com', 'SIc2IkQP9y', NULL, 1, '2013-03-11 18:56:03', '2003-08-29 04:08:20', '2024-12-27 09:18:13', 114, 68, 5, 100);
INSERT INTO `users` VALUES (856, '魏璐', 'lOpIWG303y', 'student', 'lwei7@icloud.com', 'BnGDRODy4j', NULL, 1, '2014-09-02 02:00:29', '2001-04-14 12:00:28', '2024-12-27 09:18:13', 200, 68, 5, 100);
INSERT INTO `users` VALUES (857, '龙安琪', 'VEEr9ZAQX7', 'student', 'lonan@hotmail.com', 'nW6bcp1spJ', NULL, 1, '2021-10-09 09:28:45', '2007-04-21 08:04:04', '2024-12-27 09:18:13', 160, 68, 5, 100);
INSERT INTO `users` VALUES (858, '程安琪', 'dRVXQrwxDH', 'student', 'anqi17@icloud.com', '6CQEZcQ3oq', NULL, 1, '2016-01-08 23:53:39', '2003-02-17 08:04:28', '2024-12-27 09:18:13', 143, 68, 5, 100);
INSERT INTO `users` VALUES (859, '朱璐', 'BjG4Y5vaEk', 'student', 'lzhu721@gmail.com', 'oIKMptaOiy', NULL, 1, '2016-02-11 01:46:26', '2013-04-04 13:39:44', '2024-12-27 09:18:13', 160, 68, 5, 100);
INSERT INTO `users` VALUES (860, '蒋子韬', 'V8sPU5nSrv', 'student', 'jzit68@outlook.com', '7eLbqFMsY5', NULL, 1, '2017-02-21 18:08:53', '2013-02-26 18:19:49', '2024-12-27 09:18:13', 119, 68, 5, 100);
INSERT INTO `users` VALUES (861, '郑睿', '0jcf9yjgz2', 'student', 'ruizhe@outlook.com', 'brBy7uO8Ic', NULL, 1, '2007-01-15 04:01:16', '2006-01-11 21:14:13', '2024-12-27 09:18:13', 156, 68, 5, 100);
INSERT INTO `users` VALUES (862, '沈璐', 'BHxwz5stZd', 'student', 'shen1@icloud.com', 'w7TrHCSjaT', NULL, 1, '2022-12-22 16:44:27', '2001-06-17 22:38:10', '2024-12-27 09:18:13', 105, 68, 5, 100);
INSERT INTO `users` VALUES (863, '于致远', 'fgQye2XAUj', 'student', 'zhiyuan1979@outlook.com', 'dqnXeTZ5WN', NULL, 1, '2004-01-28 08:18:44', '2021-11-03 04:10:21', '2024-12-27 09:18:13', 143, 68, 5, 100);
INSERT INTO `users` VALUES (864, '林秀英', 'AAozAaida2', 'student', 'lx725@gmail.com', 'uTm8IdbqWg', NULL, 1, '2016-01-20 06:01:41', '2009-03-05 17:14:35', '2024-12-27 09:18:13', 148, 68, 5, 100);
INSERT INTO `users` VALUES (865, '梁嘉伦', 'b2wuEorkdl', 'student', 'jialunl@icloud.com', 'sbvMg8N7xa', NULL, 1, '2006-09-26 09:35:58', '2023-07-29 11:27:57', '2024-12-27 09:18:13', 199, 68, 5, 100);
INSERT INTO `users` VALUES (866, '莫詩涵', 'KlLROtBltI', 'student', 'moshihan@icloud.com', 'rE6X3tSlUC', NULL, 1, '2003-04-07 06:49:37', '2001-01-29 18:37:22', '2024-12-27 09:18:13', 125, 68, 5, 100);
INSERT INTO `users` VALUES (867, '金璐', 'Z7abgf0UQq', 'student', 'lujin1@yahoo.com', 'HWvzFxJq8a', NULL, 1, '2003-04-16 11:26:50', '2024-01-12 10:38:53', '2024-12-27 09:18:13', 119, 68, 5, 100);
INSERT INTO `users` VALUES (868, '雷云熙', 'cvJ2YfLieX', 'student', 'yunxilei@icloud.com', 'LT6A4cugu1', NULL, 1, '2011-03-21 06:47:03', '2008-03-28 08:23:37', '2024-12-27 09:18:13', 157, 68, 5, 100);
INSERT INTO `users` VALUES (869, '吕致远', 'RYm1MhBuY0', 'student', 'zhiyuanl3@gmail.com', 'SLmWZKxbhS', NULL, 1, '2011-12-06 23:20:38', '2013-10-16 20:27:48', '2024-12-27 09:18:23', 111, 100, 5, 100);
INSERT INTO `users` VALUES (870, '毛宇宁', 'OFYTHfxvlb', 'student', 'yuning1950@outlook.com', 'pFmrqbcaDb', NULL, 1, '2013-01-31 07:25:34', '2009-09-29 15:22:04', '2024-12-27 09:18:23', 147, 100, 5, 100);
INSERT INTO `users` VALUES (871, '汪嘉伦', 'z1QPalF0oa', 'student', 'jialunwang@mail.com', '7oxcityD2G', NULL, 1, '2010-05-16 19:24:08', '2012-12-21 00:05:27', '2024-12-27 09:18:23', 148, 100, 5, 100);
INSERT INTO `users` VALUES (872, '郝睿', 'ALIUTfYpkD', 'student', 'ruihao@icloud.com', '9J7010xbDN', NULL, 1, '2015-05-13 14:37:44', '2014-07-08 02:59:11', '2024-12-27 09:18:23', 192, 100, 5, 100);
INSERT INTO `users` VALUES (873, '蔡秀英', '94MTrOof1L', 'student', 'cxi@icloud.com', 'PN9v6SRAxx', NULL, 1, '2016-09-03 06:50:22', '2004-07-25 05:08:43', '2024-12-27 09:18:23', 134, 100, 5, 100);
INSERT INTO `users` VALUES (874, '姜子异', 'Sdz7RULGFg', 'student', 'jiziyi@icloud.com', 'zIPwh2LjYb', NULL, 1, '2002-05-30 02:35:46', '2018-12-30 13:53:37', '2024-12-27 09:18:23', 122, 100, 5, 100);
INSERT INTO `users` VALUES (875, '李安琪', '9XGkwgalr4', 'student', 'ali1989@outlook.com', '04Dzfb2JtW', NULL, 1, '2022-11-06 08:31:27', '2007-01-30 12:07:16', '2024-12-27 09:18:23', 125, 100, 5, 100);
INSERT INTO `users` VALUES (876, '孟秀英', '7wxADO7lxk', 'student', 'mengxiu@gmail.com', '4gymyBXka1', NULL, 1, '2009-01-29 20:59:25', '2016-04-03 07:06:42', '2024-12-27 09:18:23', 150, 100, 5, 100);
INSERT INTO `users` VALUES (877, '韩璐', '81IuGIvOhz', 'student', 'luhan@yahoo.com', 'tz6C9NuCjb', NULL, 1, '2009-05-01 21:11:59', '2010-04-04 17:44:36', '2024-12-27 09:18:23', 138, 100, 5, 100);
INSERT INTO `users` VALUES (878, '冯睿', 'WiWNV3rdx0', 'student', 'rufeng83@yahoo.com', 'Z5rPKaYEJF', NULL, 1, '2002-10-16 21:24:44', '2015-07-19 01:05:44', '2024-12-27 09:18:23', 170, 100, 5, 100);
INSERT INTO `users` VALUES (879, '梁詩涵', 'nM0N2W2yCR', 'student', 'shihliang@outlook.com', 'CxmypXg3M9', NULL, 1, '2009-06-25 21:08:26', '2014-07-08 12:52:51', '2024-12-27 09:18:23', 196, 100, 5, 100);
INSERT INTO `users` VALUES (880, '严震南', 'XFDGxfFTTk', 'student', 'yzhen46@mail.com', 'ttCqgaiMw3', NULL, 1, '2003-09-25 23:27:52', '2023-09-22 03:56:55', '2024-12-27 09:18:23', 107, 100, 5, 100);
INSERT INTO `users` VALUES (881, '韦秀英', 'BZoHn93oT1', 'student', 'xiuwei@yahoo.com', '0qNLAmRvHn', NULL, 1, '2005-12-21 10:00:02', '2024-09-05 23:59:40', '2024-12-27 09:18:23', 139, 100, 5, 100);
INSERT INTO `users` VALUES (882, '孔璐', 'kHhgSKHU4B', 'student', 'konglu@icloud.com', '5DfpWGICk7', NULL, 1, '2004-11-25 10:56:43', '2018-08-07 22:01:26', '2024-12-27 09:18:23', 189, 100, 5, 100);
INSERT INTO `users` VALUES (883, '朱云熙', 'edV96LeJZp', 'student', 'yunxi1974@gmail.com', 'ldSYQKTfQS', NULL, 1, '2022-12-23 09:39:04', '2008-01-10 19:57:10', '2024-12-27 09:18:23', 105, 100, 5, 100);
INSERT INTO `users` VALUES (884, '张安琪', 'lbcRh4xW78', 'student', 'zhanganqi@icloud.com', 'pVTH11O6gB', NULL, 1, '2020-07-16 03:34:10', '2022-11-23 12:12:14', '2024-12-27 09:18:23', 104, 100, 5, 100);
INSERT INTO `users` VALUES (885, '黄宇宁', 'X58QMlkVu5', 'student', 'huangyuni@outlook.com', 'lvs2WHQ8um', NULL, 1, '2012-12-30 02:57:30', '2012-05-20 12:43:00', '2024-12-27 09:18:23', 114, 100, 5, 100);
INSERT INTO `users` VALUES (886, '曹晓明', '4Felqwuiqk', 'student', 'xiaoming1996@gmail.com', 'w7Y7x9c01D', NULL, 1, '2020-04-13 08:36:59', '2016-06-11 15:17:14', '2024-12-27 09:18:23', 132, 100, 5, 100);
INSERT INTO `users` VALUES (887, '韦安琪', 'ZGzexERdNJ', 'student', 'weia@mail.com', 'Kvt1intFQk', NULL, 1, '2023-01-26 00:58:48', '2001-10-08 04:49:05', '2024-12-27 09:18:23', 179, 100, 5, 100);
INSERT INTO `users` VALUES (888, '杜岚', 'XzRXTG1A3L', 'student', 'lan802@yahoo.com', '9DiqQc7wTO', NULL, 1, '2004-01-11 06:20:07', '2008-12-02 19:26:20', '2024-12-27 09:18:23', 183, 100, 5, 100);
INSERT INTO `users` VALUES (889, '郭宇宁', '36UBlaUfcZ', 'student', 'guy@icloud.com', 'mM9x4N7ee8', NULL, 1, '2020-01-26 16:29:26', '2017-06-29 04:01:09', '2024-12-27 09:18:23', 113, 100, 5, 100);
INSERT INTO `users` VALUES (890, '唐致远', 'QRuBq3hnNi', 'student', 'zhiyuantang606@yahoo.com', 'M10rJFlLaT', NULL, 1, '2021-07-05 11:59:43', '2006-01-23 11:37:33', '2024-12-27 09:18:23', 107, 100, 5, 100);
INSERT INTO `users` VALUES (891, '郑子异', '6avXb5p9iY', 'student', 'ziyizhe@icloud.com', 'w9LGiAXKgT', NULL, 1, '2010-11-11 10:58:53', '2016-07-05 10:22:23', '2024-12-27 09:18:23', 120, 100, 5, 100);
INSERT INTO `users` VALUES (892, '韦致远', 'A7A4xZRFwc', 'student', 'wezhiy72@icloud.com', 'aIOzcuI60E', NULL, 1, '2000-03-24 17:14:46', '2006-02-27 08:07:55', '2024-12-27 09:18:23', 168, 100, 5, 100);
INSERT INTO `users` VALUES (893, '薛詩涵', 'bZc5xtG5ki', 'student', 'xus@gmail.com', 'PBitTmsq2d', NULL, 1, '2018-02-11 15:21:26', '2007-12-08 19:19:37', '2024-12-27 09:18:23', 130, 100, 5, 100);
INSERT INTO `users` VALUES (894, '邱子异', 'YWXsxeTmfL', 'student', 'zqiu@outlook.com', 'nMG2XKd8uM', NULL, 1, '2008-01-26 02:47:59', '2003-09-14 16:12:04', '2024-12-27 09:18:23', 199, 100, 5, 100);
INSERT INTO `users` VALUES (895, '韦震南', 'nwA5mJtqF6', 'student', 'zhennwei@hotmail.com', 'M0haQQG4tJ', NULL, 1, '2008-12-28 19:11:38', '2012-05-21 01:02:53', '2024-12-27 09:18:23', 142, 100, 5, 100);
INSERT INTO `users` VALUES (896, '叶云熙', 'wAcL0ZHTjS', 'student', 'yunxiye@hotmail.com', 'ojgV7paLU3', NULL, 1, '2001-10-20 10:44:58', '2005-11-13 19:32:55', '2024-12-27 09:18:23', 178, 100, 5, 100);
INSERT INTO `users` VALUES (897, '卢秀英', 'uahQgGLzmN', 'student', 'xiuying618@outlook.com', 'Lb2HvtTTXY', NULL, 1, '2004-02-02 15:04:52', '2006-02-16 20:15:38', '2024-12-27 09:18:23', 191, 100, 5, 100);
INSERT INTO `users` VALUES (898, '邵岚', '1MANAJfQKi', 'student', 'lansha@gmail.com', 'aFyiA4SjKu', NULL, 1, '2005-04-17 18:26:14', '2014-04-23 00:25:12', '2024-12-27 09:18:23', 158, 100, 5, 100);
INSERT INTO `users` VALUES (899, '于岚', 'fyTCQhThUz', 'student', 'lanyu1959@outlook.com', 'l99Pjy1Yfx', NULL, 1, '2020-10-22 02:27:31', '2019-01-25 06:25:37', '2024-12-27 09:18:23', 181, 100, 5, 100);
INSERT INTO `users` VALUES (900, '胡子异', 'oe2uotLp5O', 'student', 'ziyhu@gmail.com', 'Jdfi9AkC3h', NULL, 1, '2020-01-19 15:05:08', '2007-03-05 20:48:19', '2024-12-27 09:18:23', 114, 100, 5, 100);
INSERT INTO `users` VALUES (901, '金杰宏', 'LcmmbZdPVA', 'student', 'jiehong14@icloud.com', 'DJxgzRtHUg', NULL, 1, '2012-12-31 18:04:56', '2012-05-27 23:30:54', '2024-12-27 09:18:23', 102, 100, 5, 100);
INSERT INTO `users` VALUES (902, '熊岚', '4EYiRpHWms', 'student', 'xiongla@gmail.com', 'F5vzJoLHPQ', NULL, 1, '2018-09-21 11:44:18', '2024-09-09 01:02:30', '2024-12-27 09:18:23', 104, 100, 5, 100);
INSERT INTO `users` VALUES (903, '沈詩涵', '3g10gf4eb2', 'student', 'shshi5@icloud.com', 'JytHGLtkGr', NULL, 1, '2016-03-20 14:42:28', '2019-06-07 16:04:45', '2024-12-27 09:18:23', 178, 100, 5, 100);
INSERT INTO `users` VALUES (904, '郝云熙', 'O7Vxc4fsgY', 'student', 'haoy2@outlook.com', '7sG7IpVn6e', NULL, 1, '2018-01-11 07:54:27', '2018-08-31 05:51:54', '2024-12-27 09:18:23', 132, 100, 5, 100);
INSERT INTO `users` VALUES (905, '陶晓明', 'w2vP4MwWIH', 'student', 'txi@outlook.com', 'Jb0uUl8MzG', NULL, 1, '2008-05-05 18:08:57', '2014-01-31 19:05:14', '2024-12-27 09:18:23', 156, 100, 5, 100);
INSERT INTO `users` VALUES (906, '阎宇宁', 'kz6Dn3nobV', 'student', 'yyun@icloud.com', 'JXaXQAKfHG', NULL, 1, '2010-05-19 00:47:18', '2007-11-12 13:20:30', '2024-12-27 09:18:23', 167, 100, 5, 100);
INSERT INTO `users` VALUES (907, '邓秀英', 'HxsFA69985', 'student', 'dexiuyi@mail.com', 'rYXmAoF4Nf', NULL, 1, '2004-09-09 15:54:09', '2019-09-09 00:26:05', '2024-12-27 09:18:23', 123, 100, 5, 100);
INSERT INTO `users` VALUES (908, '余詩涵', 'dsZukb7NO5', 'student', 'shihyu@icloud.com', 'ueft6MNXCD', NULL, 1, '2014-07-02 01:26:24', '2018-12-16 15:01:14', '2024-12-27 09:18:23', 173, 100, 5, 100);
INSERT INTO `users` VALUES (909, '孔睿', 'spRFmCtkzs', 'student', 'kongrui6@gmail.com', 'dtGSt2BagD', NULL, 1, '2008-07-10 03:10:55', '2018-01-30 16:08:37', '2024-12-27 09:18:23', 128, 100, 5, 100);
INSERT INTO `users` VALUES (910, '金致远', 'eBxASEW5OE', 'student', 'zhiyuanjin@yahoo.com', 'jC58cCEbuV', NULL, 1, '2008-12-19 23:24:25', '2024-08-25 22:07:13', '2024-12-27 09:18:23', 133, 100, 5, 100);
INSERT INTO `users` VALUES (911, '谭云熙', 'L6kGthLcUZ', 'student', 'tan826@yahoo.com', '4a5qWlzckv', NULL, 1, '2008-07-29 17:46:20', '2021-08-07 04:20:03', '2024-12-27 09:18:23', 136, 100, 5, 100);
INSERT INTO `users` VALUES (912, '李子韬', 'bG2TYqUyP2', 'student', 'lizitao@mail.com', 'GsUWzHx9Kc', NULL, 1, '2010-08-28 12:40:38', '2011-05-13 04:59:18', '2024-12-27 09:18:23', 184, 100, 5, 100);
INSERT INTO `users` VALUES (913, '李云熙', 'fvg0NlD527', 'student', 'liyunxi@mail.com', '2PBaPuqQoX', NULL, 1, '2003-04-13 12:58:33', '2008-10-25 08:32:31', '2024-12-27 09:18:23', 159, 100, 5, 100);
INSERT INTO `users` VALUES (914, '汤岚', 'FYrbpxO8eY', 'student', 'tanglan7@mail.com', 'psFYSowNz9', NULL, 1, '2005-05-13 06:18:08', '2022-03-29 14:30:40', '2024-12-27 09:18:23', 126, 100, 5, 100);
INSERT INTO `users` VALUES (915, '叶子韬', 'mhZKPbOIi2', 'student', 'ye70@icloud.com', 'fOKDsvDSUZ', NULL, 1, '2019-01-29 06:59:51', '2000-12-09 12:07:48', '2024-12-27 09:18:23', 193, 100, 5, 100);
INSERT INTO `users` VALUES (916, '罗璐', 'TAyavRXm2W', 'student', 'luluo@icloud.com', 'T6CQ2tQUlj', NULL, 1, '2003-01-14 08:53:24', '2024-03-14 04:23:40', '2024-12-27 09:18:23', 166, 100, 5, 100);
INSERT INTO `users` VALUES (917, '段睿', 'KX3WAMqvTq', 'student', 'duanrui1989@icloud.com', 'Y8AvXcIvVy', NULL, 1, '2004-01-31 06:41:26', '2016-02-12 06:37:46', '2024-12-27 09:18:23', 121, 100, 5, 100);
INSERT INTO `users` VALUES (918, '邹云熙', 'coGeWkXSd6', 'student', 'zouy@mail.com', 'bM1FusWixk', NULL, 1, '2023-10-20 13:23:31', '2001-05-18 21:22:58', '2024-12-27 09:18:23', 154, 100, 5, 100);
INSERT INTO `users` VALUES (919, '莫杰宏', 'UYWCIgs3zx', 'student', 'mojiehong5@yahoo.com', 'vmjUfWGpLg', NULL, 1, '2021-07-20 23:13:48', '2023-06-14 01:16:00', '2024-12-27 09:18:23', 155, 100, 5, 100);
INSERT INTO `users` VALUES (920, '阎璐', 'OI18UETLN2', 'student', 'luyan@gmail.com', 'EWTNbhK6hi', NULL, 1, '2002-03-22 10:41:09', '2016-01-08 15:49:36', '2024-12-27 09:18:23', 102, 100, 5, 100);
INSERT INTO `users` VALUES (921, '夏安琪', 'DQ4Xfut6LU', 'student', 'anqixia1977@gmail.com', 'WtfvWcqhJo', NULL, 1, '2016-08-31 11:37:47', '2005-12-23 14:55:05', '2024-12-27 09:18:23', 171, 100, 5, 100);
INSERT INTO `users` VALUES (922, '范宇宁', 'Hs6Py1dFh9', 'student', 'fy1940@gmail.com', 'xLpfSEanpb', NULL, 1, '2023-07-25 06:17:23', '2013-03-11 14:12:18', '2024-12-27 09:18:23', 117, 100, 5, 100);
INSERT INTO `users` VALUES (923, '任睿', 'mEg6zTiozz', 'student', 'rui612@outlook.com', '7efj0QI4ON', NULL, 1, '2004-12-06 16:01:05', '2003-03-13 13:31:04', '2024-12-27 09:18:23', 192, 100, 5, 100);
INSERT INTO `users` VALUES (924, '卢杰宏', 'hlu7HiyXsb', 'student', 'lj2@hotmail.com', 'keCHMnbgw7', NULL, 1, '2004-12-28 17:38:43', '2018-12-24 18:35:29', '2024-12-27 09:18:23', 165, 100, 5, 100);
INSERT INTO `users` VALUES (925, '江岚', 'Nmedg9QMwa', 'student', 'ljiang@mail.com', 'wA7kA57Zus', NULL, 1, '2013-03-27 01:40:44', '2001-05-23 21:37:12', '2024-12-27 09:18:23', 191, 100, 5, 100);
INSERT INTO `users` VALUES (926, '曹致远', 'AYKBlO6vrj', 'student', 'cazhiyuan1940@mail.com', 'vDwwjK9fxC', NULL, 1, '2021-05-18 11:13:44', '2010-08-21 05:46:46', '2024-12-27 09:18:23', 139, 100, 5, 100);
INSERT INTO `users` VALUES (927, '韦岚', 'wQ3mUKp0pk', 'student', 'wei3@gmail.com', 'SFOhuID7z6', NULL, 1, '2024-01-28 10:21:59', '2002-06-11 18:51:07', '2024-12-27 09:18:23', 110, 100, 5, 100);
INSERT INTO `users` VALUES (928, '钱子异', 'hFkFn1ojCb', 'student', 'ziyiqia@hotmail.com', 'ZKs1jfjO3v', NULL, 1, '2001-08-16 12:04:08', '2006-10-30 20:19:54', '2024-12-27 09:18:23', 134, 100, 5, 100);
INSERT INTO `users` VALUES (929, '郝子韬', 'TDKpFL9WjQ', 'student', 'haozitao2018@icloud.com', 'gtqJfHGCGi', NULL, 1, '2009-02-24 10:27:38', '2005-06-11 12:34:09', '2024-12-27 09:18:23', 122, 100, 5, 100);
INSERT INTO `users` VALUES (930, '武震南', 'AqSeTSLDMo', 'student', 'zhewu330@gmail.com', 'yvE9ou7LkI', NULL, 1, '2008-12-02 06:25:57', '2008-06-30 17:38:13', '2024-12-27 09:18:23', 170, 100, 5, 100);
INSERT INTO `users` VALUES (931, '苏嘉伦', '3VTvIZ18av', 'student', 'sujial@gmail.com', 'ZXheGiOauX', NULL, 1, '2005-01-15 06:34:29', '2023-10-02 08:40:38', '2024-12-27 09:18:38', 110, 57, 5, 100);
INSERT INTO `users` VALUES (932, '冯岚', 'jpI2fZK90j', 'student', 'fela92@outlook.com', '66fm4BldST', NULL, 1, '2008-08-09 11:02:06', '2011-04-21 12:49:41', '2024-12-27 09:18:38', 129, 57, 5, 100);
INSERT INTO `users` VALUES (933, '蒋嘉伦', '5cCnWVnnRx', 'student', 'jiangj79@mail.com', 'NaZJR8pYVC', NULL, 1, '2001-07-14 14:47:37', '2024-08-27 04:17:02', '2024-12-27 09:18:38', 180, 57, 5, 100);
INSERT INTO `users` VALUES (934, '孔云熙', 'm1ZOSXoslW', 'student', 'yunxikong@gmail.com', 'cq2Ch2k09J', NULL, 1, '2012-07-08 05:22:30', '2016-10-21 08:18:31', '2024-12-27 09:18:38', 131, 57, 5, 100);
INSERT INTO `users` VALUES (935, '胡睿', 'abyMKgcxIa', 'student', 'hr722@gmail.com', 'A3tMumUykl', NULL, 1, '2000-09-12 06:45:18', '2008-11-08 13:53:33', '2024-12-27 09:18:38', 191, 57, 5, 100);
INSERT INTO `users` VALUES (936, '贺宇宁', 'KNcBRnBrtr', 'student', 'he51@gmail.com', 'VA5y2BCO4p', NULL, 1, '2018-11-19 21:25:49', '2006-05-14 23:23:47', '2024-12-27 09:18:38', 136, 57, 5, 100);
INSERT INTO `users` VALUES (937, '邓岚', 'GSw6Ud94D1', 'student', 'landen5@hotmail.com', 'fSuKTjpa13', NULL, 1, '2003-05-27 13:32:48', '2014-07-05 20:03:10', '2024-12-27 09:18:38', 186, 57, 5, 100);
INSERT INTO `users` VALUES (938, '吴詩涵', 'JxPyyKRrfV', 'student', 'shihan1030@outlook.com', 'U3yjVbQB6E', NULL, 1, '2022-02-25 02:17:07', '2024-03-11 13:22:42', '2024-12-27 09:18:38', 183, 57, 5, 100);
INSERT INTO `users` VALUES (939, '贾岚', 'yvRjjO7blO', 'student', 'jialan@icloud.com', 'ipTMBCKXK3', NULL, 1, '2022-01-10 19:18:21', '2000-03-22 08:43:12', '2024-12-27 09:18:38', 197, 57, 5, 100);
INSERT INTO `users` VALUES (940, '崔云熙', 'eejvH3rSvo', 'student', 'yunxicui1211@yahoo.com', 'DmVeSLiS5O', NULL, 1, '2006-03-29 08:38:40', '2003-01-21 17:07:22', '2024-12-27 09:18:38', 187, 57, 5, 100);
INSERT INTO `users` VALUES (941, '汤云熙', 'nCoK4V5HNc', 'student', 'tangyu@gmail.com', 'vXrazzItZh', NULL, 1, '2021-02-12 07:56:44', '2006-07-20 20:25:09', '2024-12-27 09:18:38', 166, 57, 5, 100);
INSERT INTO `users` VALUES (942, '萧致远', 'GMggHPYONC', 'student', 'zhiyuanx@yahoo.com', 'dogSIUCMfJ', NULL, 1, '2023-09-15 09:32:51', '2021-09-11 06:51:11', '2024-12-27 09:18:38', 145, 57, 5, 100);
INSERT INTO `users` VALUES (943, '卢睿', '1ONLlQnPfl', 'student', 'ruil@mail.com', 'PV5PsYVDxB', NULL, 1, '2014-09-03 20:36:49', '2010-03-25 03:48:13', '2024-12-27 09:18:38', 123, 57, 5, 100);
INSERT INTO `users` VALUES (944, '陆杰宏', 'esXXRws5BI', 'student', 'luj@outlook.com', 'TZFcmy0bpF', NULL, 1, '2022-06-25 17:21:26', '2020-01-14 03:10:41', '2024-12-27 09:18:38', 164, 57, 5, 100);
INSERT INTO `users` VALUES (945, '许安琪', 'SoKsgLBHhS', 'student', 'anqx@gmail.com', 'PP8COHmoiW', NULL, 1, '2011-10-17 04:35:32', '2004-02-19 00:20:09', '2024-12-27 09:18:38', 168, 57, 5, 100);
INSERT INTO `users` VALUES (946, '莫秀英', 'nKaStXcjgr', 'student', 'xiuyingmo78@gmail.com', 'NxbtWkUMJb', NULL, 1, '2014-06-02 12:51:27', '2020-08-16 05:05:26', '2024-12-27 09:18:38', 125, 57, 5, 100);
INSERT INTO `users` VALUES (947, '林詩涵', 'DMVLM7PPpG', 'student', 'lishihan05@gmail.com', 'K0B9BhtLHp', NULL, 1, '2004-03-04 19:48:37', '2017-12-15 15:12:03', '2024-12-27 09:18:38', 120, 57, 5, 100);
INSERT INTO `users` VALUES (948, '王睿', '7ZPBlrfTZq', 'student', 'wang10@gmail.com', 'mC7sXL9AST', NULL, 1, '2023-04-10 08:08:17', '2021-02-16 14:02:49', '2024-12-27 09:18:38', 140, 57, 5, 100);
INSERT INTO `users` VALUES (949, '刘致远', 'lWG4qpSVLt', 'student', 'liuzhiyuan818@icloud.com', 'pynGMblX5r', NULL, 1, '2024-01-22 00:27:22', '2024-12-13 18:57:17', '2024-12-27 09:18:38', 141, 57, 5, 100);
INSERT INTO `users` VALUES (950, '朱秀英', 'YlG1S9lvCh', 'student', 'xiuyzhu@outlook.com', 'PVGH2wHaqK', NULL, 1, '2015-03-21 11:03:37', '2013-04-12 08:59:50', '2024-12-27 09:18:38', 183, 57, 5, 100);
INSERT INTO `users` VALUES (951, '朱睿', 'ZbpHY3cawf', 'student', 'rui8@yahoo.com', 'K9gC7GtW22', NULL, 1, '2009-08-12 02:43:36', '2024-12-11 00:24:32', '2024-12-27 09:18:38', 126, 57, 5, 100);
INSERT INTO `users` VALUES (952, '顾詩涵', 'MMA1hhxFIQ', 'student', 'shihan129@outlook.com', 'QQBG1GF7F5', NULL, 1, '2009-03-04 14:19:10', '2010-04-03 07:39:41', '2024-12-27 09:18:38', 105, 57, 5, 100);
INSERT INTO `users` VALUES (953, '严安琪', 'qcxClCCwNU', 'student', 'anqy@outlook.com', 'j7husBoa89', NULL, 1, '2016-10-31 01:09:22', '2019-09-02 13:10:43', '2024-12-27 09:18:38', 128, 57, 5, 100);
INSERT INTO `users` VALUES (954, '顾璐', 'lbuZQPZY8L', 'student', 'lugu@gmail.com', 'urP1EnyOLJ', NULL, 1, '2023-05-01 17:23:03', '2015-08-12 08:31:08', '2024-12-27 09:18:38', 167, 57, 5, 100);
INSERT INTO `users` VALUES (955, '刘秀英', 'ZVDqUhHTZ6', 'student', 'liux@icloud.com', 'NEdcLEmjA2', NULL, 1, '2009-02-08 03:25:47', '2012-09-25 05:41:28', '2024-12-27 09:18:38', 133, 57, 5, 100);
INSERT INTO `users` VALUES (956, '熊致远', 'ro0pzgBAgk', 'student', 'xionzhiyu@gmail.com', 'ewmDjc9uMz', NULL, 1, '2020-10-07 00:28:23', '2012-07-13 16:44:25', '2024-12-27 09:18:38', 103, 57, 5, 100);
INSERT INTO `users` VALUES (957, '田宇宁', '1VgdrjOClO', 'student', 'tian45@gmail.com', 'vJFvwnDBT0', NULL, 1, '2022-05-17 16:30:54', '2004-03-27 09:57:19', '2024-12-27 09:18:38', 179, 57, 5, 100);
INSERT INTO `users` VALUES (958, '钟宇宁', 'zg3x1EVhe2', 'student', 'zyuning@gmail.com', '30eB9j1FOv', NULL, 1, '2024-07-05 17:43:49', '2013-07-11 20:23:03', '2024-12-27 09:18:38', 146, 57, 5, 100);
INSERT INTO `users` VALUES (959, '向嘉伦', 'vwh6Kpvi0d', 'student', 'xjialun@gmail.com', 'CJo0cvW8ub', NULL, 1, '2018-02-15 12:14:20', '2009-10-06 08:08:29', '2024-12-27 09:18:38', 159, 57, 5, 100);
INSERT INTO `users` VALUES (960, '徐嘉伦', 'LSkH6lwpKc', 'student', 'jxu8@icloud.com', 'uDTunD2EKw', NULL, 1, '2014-03-22 03:09:53', '2013-07-18 20:07:10', '2024-12-27 09:18:38', 171, 57, 5, 100);
INSERT INTO `users` VALUES (961, '史震南', 'NnDswmDawm', 'student', 'shizh6@gmail.com', 'DOa745NG7n', NULL, 1, '2010-06-19 03:21:12', '2002-02-10 16:56:06', '2024-12-27 09:18:38', 142, 57, 5, 100);
INSERT INTO `users` VALUES (962, '宋杰宏', '5KSVSdytdn', 'student', 'songjieho@outlook.com', '4YJOQd0Sim', NULL, 1, '2018-06-12 20:39:36', '2023-11-02 18:22:25', '2024-12-27 09:18:38', 113, 57, 5, 100);
INSERT INTO `users` VALUES (963, '沈云熙', 'HoyY6N9rP4', 'student', 'sheny709@mail.com', 'k3dV4NRGbd', NULL, 1, '2004-01-13 18:19:01', '2023-03-21 19:52:35', '2024-12-27 09:18:38', 176, 57, 5, 100);
INSERT INTO `users` VALUES (964, '唐岚', 'TBD2JRN2p2', 'student', 'lantang8@hotmail.com', 'bVrvdTdObQ', NULL, 1, '2004-12-06 09:47:47', '2019-09-30 11:06:02', '2024-12-27 09:18:38', 101, 57, 5, 100);
INSERT INTO `users` VALUES (965, '方子韬', 'BuO6Ct68AT', 'student', 'fangzit@icloud.com', 'EGnI73uO23', NULL, 1, '2012-12-28 13:31:12', '2004-08-04 17:29:14', '2024-12-27 09:18:38', 162, 57, 5, 100);
INSERT INTO `users` VALUES (966, '刘子韬', 'CsSTfeG3Bx', 'student', 'liuzita7@gmail.com', 'V1r5tXUTzH', NULL, 1, '2006-08-16 03:51:55', '2004-07-03 04:41:23', '2024-12-27 09:18:38', 190, 57, 5, 100);
INSERT INTO `users` VALUES (967, '沈安琪', 'TiexLHGr4z', 'student', 'anqis301@outlook.com', 'oOxXfwT9eE', NULL, 1, '2023-10-28 18:51:07', '2014-03-30 10:09:23', '2024-12-27 09:18:38', 153, 57, 5, 100);
INSERT INTO `users` VALUES (968, '贾安琪', '45MWeyIV1A', 'student', 'jia2@icloud.com', 'T0EHaLZ7Zw', NULL, 1, '2011-10-01 03:24:04', '2016-08-11 12:57:25', '2024-12-27 09:18:38', 115, 57, 5, 100);
INSERT INTO `users` VALUES (969, '崔嘉伦', 'QikLy0SShH', 'student', 'cui6@icloud.com', 'gkRaSjRVde', NULL, 1, '2021-09-23 08:04:11', '2009-05-15 15:14:45', '2024-12-27 09:18:38', 133, 57, 5, 100);
INSERT INTO `users` VALUES (970, '毛晓明', 'Bip77bGlZz', 'student', 'mxiaoming@gmail.com', 'XUfOLGQ71W', NULL, 1, '2004-08-01 12:23:25', '2006-02-05 12:55:25', '2024-12-27 09:18:38', 185, 57, 5, 100);
INSERT INTO `users` VALUES (971, '何安琪', 'kId4p9a1PS', 'student', 'hea1124@yahoo.com', 'OHsYnjHTVI', NULL, 1, '2022-09-09 01:41:38', '2024-05-24 15:05:40', '2024-12-27 09:18:38', 154, 57, 5, 100);
INSERT INTO `users` VALUES (972, '陶宇宁', 'vDYNJXvg6k', 'student', 'yuninta8@outlook.com', 'ifEeSl1hqj', NULL, 1, '2001-09-25 14:24:42', '2018-10-08 06:46:59', '2024-12-27 09:18:38', 181, 57, 5, 100);
INSERT INTO `users` VALUES (973, '马震南', 'as9nTtNHGO', 'student', 'zma@mail.com', 'pR7UBZdZya', NULL, 1, '2024-07-06 10:55:34', '2016-02-29 15:08:55', '2024-12-27 09:18:38', 171, 57, 5, 100);
INSERT INTO `users` VALUES (974, '石秀英', 'URpDmwreQH', 'student', 'xiuyingsh@outlook.com', 'ucCzhhLIaE', NULL, 1, '2007-11-24 16:29:02', '2008-02-29 06:53:35', '2024-12-27 09:18:38', 103, 57, 5, 100);
INSERT INTO `users` VALUES (975, '朱岚', '8bCMeUbQcg', 'student', 'zhula@icloud.com', 'b5yD4JGqxc', NULL, 1, '2013-09-01 05:55:17', '2019-03-09 08:04:12', '2024-12-27 09:18:38', 187, 57, 5, 100);
INSERT INTO `users` VALUES (976, '秦詩涵', 'yoWMcPrCii', 'student', 'qish@gmail.com', 'bIkzXT8yKP', NULL, 1, '2011-03-02 09:11:31', '2008-05-14 14:26:27', '2024-12-25 03:00:08', 192, 57, 5, 100);
INSERT INTO `users` VALUES (977, '林杰宏', 'qH0NvrLSNy', 'student', 'lj9@yahoo.com', 'aEJJuTviDy', NULL, 1, '2009-01-20 06:25:08', '2017-01-13 19:17:21', '2024-12-27 09:18:38', 174, 57, 5, 100);
INSERT INTO `users` VALUES (978, '韩嘉伦', 'XvGMcZ0ox6', 'student', 'hanj1119@gmail.com', 'HwqKhxbg30', NULL, 1, '2015-11-03 18:12:56', '2024-03-28 10:03:09', '2024-12-27 09:18:38', 192, 57, 5, 100);
INSERT INTO `users` VALUES (979, '任秀英', 'WRDVyO8EXg', 'student', 'renxi@gmail.com', 'szPms43EOB', NULL, 1, '2018-10-05 21:01:51', '2002-10-21 17:53:49', '2024-12-27 09:18:38', 166, 57, 5, 100);
INSERT INTO `users` VALUES (980, '魏宇宁', 'CIfAunsAij', 'student', 'yuninwei@outlook.com', 'gURK0GXqHO', NULL, 1, '2006-03-31 00:41:42', '2008-08-14 17:30:35', '2024-12-27 09:18:38', 135, 57, 5, 100);
INSERT INTO `users` VALUES (981, '尹嘉伦', '5WobA6GVOU', 'student', 'jyin@gmail.com', 'kUkLXW4PJX', NULL, 1, '2007-07-09 14:00:10', '2009-04-04 23:11:56', '2024-12-27 09:18:38', 136, 57, 5, 100);
INSERT INTO `users` VALUES (982, '陶震南', 'fqbldaD2IX', 'student', 'tzhenn@hotmail.com', '9Sx27c3WA7', NULL, 1, '2020-03-31 22:54:16', '2023-08-26 15:38:32', '2024-12-27 09:18:38', 128, 57, 5, 100);
INSERT INTO `users` VALUES (983, '高璐', '6audLJXFz9', 'student', 'lugao@mail.com', 'mof5cfJRvG', NULL, 1, '2021-08-08 10:43:17', '2023-10-15 08:00:12', '2024-12-27 09:18:38', 130, 57, 5, 100);
INSERT INTO `users` VALUES (984, '任璐', 'FVjb8tKYzZ', 'student', 'luren7@gmail.com', '9ke7m9luFR', NULL, 1, '2015-04-09 23:50:52', '2004-01-01 10:16:20', '2024-12-27 09:18:38', 179, 57, 5, 100);
INSERT INTO `users` VALUES (985, '罗安琪', 'aaGzjqoXsF', 'student', 'anqi123@gmail.com', 'IWpVyK42cC', NULL, 1, '2000-11-17 07:23:56', '2020-10-05 06:49:16', '2024-12-27 09:18:38', 184, 57, 5, 100);
INSERT INTO `users` VALUES (986, '邓子异', 'XmbQOM8X84', 'student', 'ziydeng404@yahoo.com', 'AkLWzUCD2o', NULL, 1, '2014-01-21 01:35:09', '2009-01-09 08:29:05', '2024-12-27 09:18:38', 174, 57, 5, 100);
INSERT INTO `users` VALUES (987, '于子异', '20uFZzpNUn', 'student', 'ziyiyu415@mail.com', 'jrTZTXiWJo', NULL, 1, '2019-02-23 06:43:24', '2016-04-21 13:23:44', '2024-12-27 09:18:38', 186, 57, 5, 100);
INSERT INTO `users` VALUES (988, '胡璐', 'Ex6TwRtFtK', 'student', 'hulu2@icloud.com', 'bcrzlPZg3m', NULL, 1, '2004-06-12 20:50:10', '2002-09-04 00:49:21', '2024-12-27 09:18:38', 167, 57, 5, 100);
INSERT INTO `users` VALUES (989, '卢震南', 'WC3Av5mbxt', 'student', 'luzhen2@hotmail.com', 't7wkPfj2CW', NULL, 1, '2001-07-11 03:45:01', '2017-08-02 03:58:16', '2024-12-27 09:18:38', 193, 57, 5, 100);
INSERT INTO `users` VALUES (990, '魏詩涵', '5inc9Lz5Tc', 'student', 'weis@gmail.com', 'Ahk62Dro3d', NULL, 1, '2009-03-05 05:34:37', '2023-04-12 11:24:48', '2024-12-27 09:18:38', 147, 57, 5, 100);
INSERT INTO `users` VALUES (991, '侯宇宁', 'ugv20nIDAz', 'student', 'hyuning1120@icloud.com', 'Sj0b3H98bl', NULL, 1, '2021-12-12 14:29:59', '2016-01-15 21:45:22', '2024-12-27 09:18:38', 174, 57, 5, 100);
INSERT INTO `users` VALUES (992, '陶岚', 'frRkZtLKE9', 'student', 'taolan@mail.com', 'qAiOEpJ1Jf', NULL, 1, '2002-02-26 07:48:04', '2001-09-21 14:19:47', '2024-12-27 09:18:38', 158, 57, 5, 100);
INSERT INTO `users` VALUES (993, '顾子异', 'IWDv3v5KgH', 'student', 'ziyi2@gmail.com', 'jesZjdikF0', NULL, 1, '2021-11-30 02:19:35', '2018-12-08 14:06:50', '2024-12-27 09:18:38', 152, 57, 5, 100);
INSERT INTO `users` VALUES (994, '尹秀英', '8jYM82HdAu', 'student', 'xyin@outlook.com', 'x4IujIlYyi', NULL, 1, '2000-07-06 11:11:34', '2007-12-18 18:38:17', '2024-12-27 09:18:38', 104, 57, 5, 100);
INSERT INTO `users` VALUES (995, '秦嘉伦', 'C3i5VJblbu', 'student', 'qinjialun@icloud.com', '0MnFvfgcQr', NULL, 1, '2014-11-30 00:59:06', '2023-04-11 12:16:38', '2024-12-27 09:18:38', 171, 57, 5, 100);
INSERT INTO `users` VALUES (996, '董云熙', '8TXr2fsUhD', 'student', 'dongyunxi308@outlook.com', 'hGdQ0t4OmQ', NULL, 1, '2013-07-07 08:49:02', '2005-10-10 08:26:00', '2024-12-27 09:18:38', 121, 57, 5, 100);
INSERT INTO `users` VALUES (997, '莫云熙', 'NTe642jwVk', 'student', 'moyunxi@mail.com', 'SzJbb62wvp', NULL, 1, '2009-10-06 16:31:21', '2011-10-17 03:50:01', '2024-12-27 09:18:38', 190, 57, 5, 100);
INSERT INTO `users` VALUES (998, '于宇宁', 'tA6pGCoeZM', 'student', 'yuningy213@icloud.com', 'UzYXlIRonX', NULL, 1, '2005-04-18 08:09:15', '2004-03-02 00:25:43', '2024-12-27 09:18:38', 195, 57, 5, 100);
INSERT INTO `users` VALUES (999, '曾璐', 'fCbpNzpwUU', 'student', 'zenglu@gmail.com', '3sWVpX1rJ7', NULL, 1, '2019-06-05 10:41:47', '2004-03-22 19:02:23', '2024-12-27 09:18:38', 143, 57, 5, 100);
INSERT INTO `users` VALUES (1000, '邵云熙', 'B7ZaQW6q4R', 'student', 'shaoyunxi@outlook.com', '8VYWGYrPFq', NULL, 1, '2017-07-19 02:44:05', '2004-08-14 04:12:28', '2024-12-27 09:18:38', 158, 57, 5, 100);
INSERT INTO `users` VALUES (1001, '顾致远', 'jTdymFwX66', 'student', 'zhgu@outlook.com', 'sbngMWDj2S', NULL, 1, '2008-01-17 14:19:06', '2007-08-21 15:50:31', '2024-12-27 09:18:38', 129, 57, 5, 100);
INSERT INTO `users` VALUES (1002, '梁璐', '5KXc0DJHyt', 'student', 'llu@gmail.com', 'JuLeGF1uwb', NULL, 1, '2020-07-27 07:47:00', '2017-09-05 16:00:23', '2024-12-27 09:18:38', 162, 57, 5, 100);
INSERT INTO `users` VALUES (1003, '谭杰宏', 'uCWn8SwpZI', 'student', 'tanji5@icloud.com', 'RAm5qgyyQR', NULL, 1, '2020-01-06 23:37:11', '2016-07-11 11:13:09', '2012-09-03 19:22:11', 170, 79, NULL, NULL);
INSERT INTO `users` VALUES (1004, '程晓明', 'dnqEq6hjKD', 'student', 'xiaomingcheng@outlook.com', '2QLtJwLYp8', NULL, 1, '2006-01-08 00:10:48', '2016-03-18 20:17:54', '2024-02-07 08:37:02', 141, 110, NULL, NULL);
INSERT INTO `users` VALUES (1005, '武秀英', 'HiW0tZvzSH', 'student', 'wuxiu@gmail.com', 'zRwA6KKhL3', NULL, 1, '2008-01-01 08:24:19', '2009-08-31 15:24:22', '2018-08-20 09:24:47', 187, 144, NULL, NULL);
INSERT INTO `users` VALUES (1006, '高詩涵', '3g3FFomWGO', 'student', 'gaoshi@mail.com', 'd0T50G5ElM', NULL, 1, '2002-10-15 20:33:09', '2004-04-24 17:47:34', '2018-11-27 17:09:36', 131, 69, NULL, NULL);
INSERT INTO `users` VALUES (1007, 'test123321', '$2a$10$EOfSMlikvEIuctUKbpi97.x8cEJa5MqaMzqmII9SWm0nrLFAaPen2', 'student', 'test123321@qq.com', '123321', NULL, 1, '2024-12-26 14:06:44', '2024-12-26 14:06:01', '2024-12-26 14:06:01', 0, 0, 10, NULL);

SET FOREIGN_KEY_CHECKS = 1;
