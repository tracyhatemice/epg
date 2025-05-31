-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- 主机： 172.17.0.1
-- 生成日期： 2025-05-31 14:40:53
-- 服务器版本： 9.3.0
-- PHP 版本： 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `epg`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add 频道列表', 7, 'add_channel'),
(26, 'Can change 频道列表', 7, 'change_channel'),
(27, 'Can delete 频道列表', 7, 'delete_channel'),
(28, 'Can view 频道列表', 7, 'view_channel'),
(29, 'Can add 节目表', 8, 'add_epg'),
(30, 'Can change 节目表', 8, 'change_epg'),
(31, 'Can delete 节目表', 8, 'delete_epg'),
(32, 'Can view 节目表', 8, 'view_epg'),
(33, 'Can add 抓取日志', 9, 'add_crawl_log'),
(34, 'Can change 抓取日志', 9, 'change_crawl_log'),
(35, 'Can delete 抓取日志', 9, 'delete_crawl_log'),
(36, 'Can view 抓取日志', 9, 'view_crawl_log'),
(37, 'Can add 频道来源整理表', 10, 'add_channel_list'),
(38, 'Can change 频道来源整理表', 10, 'change_channel_list'),
(39, 'Can delete 频道来源整理表', 10, 'delete_channel_list'),
(40, 'Can view 频道来源整理表', 10, 'view_channel_list');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$RmwhxGU2MrcFDdwE588dlW$Wna+cUJNkNu+y7R+MqkdckbKrQnH2seSCKqBOZgJ014=', '2025-05-31 12:06:06.041945', 1, 'admin', '', '', 'local@localhost', 1, 1, '2023-12-31 16:00:00.000000');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'web', 'channel'),
(10, 'web', 'channel_list'),
(9, 'web', 'crawl_log'),
(8, 'web', 'epg');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-05-31 11:58:22.273522'),
(2, 'auth', '0001_initial', '2025-05-31 11:58:46.469546'),
(3, 'admin', '0001_initial', '2025-05-31 11:58:51.736655'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-05-31 11:58:51.810546'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-31 11:58:52.017705'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-05-31 11:58:56.271546'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-05-31 11:58:58.968185'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-05-31 11:58:59.244149'),
(9, 'auth', '0004_alter_user_username_opts', '2025-05-31 11:58:59.479480'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-05-31 11:59:02.657686'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-05-31 11:59:03.026645'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-05-31 11:59:03.278509'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-05-31 11:59:05.554630'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-05-31 11:59:36.310203'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-05-31 11:59:08.864599'),
(16, 'auth', '0011_update_proxy_permissions', '2025-05-31 11:59:09.013606'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-05-31 11:59:11.864634'),
(18, 'sessions', '0001_initial', '2025-05-31 11:59:12.991177');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `web_channel`
--

CREATE TABLE `web_channel` (
  `id` int NOT NULL,
  `channel_id` varchar(300) NOT NULL,
  `tvg_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sort` varchar(50) NOT NULL,
  `logo` varchar(400) DEFAULT NULL,
  `last_program_date` date DEFAULT NULL,
  `last_crawl_dt` datetime DEFAULT NULL,
  `create_dt` datetime DEFAULT NULL,
  `descr` varchar(500) DEFAULT NULL,
  `has_epg` int NOT NULL,
  `ineed` int NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  `recrawl` int NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `patten` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `web_channel`
--

INSERT INTO `web_channel` (`id`, `channel_id`, `tvg_name`, `name`, `sort`, `logo`, `last_program_date`, `last_crawl_dt`, `create_dt`, `descr`, `has_epg`, `ineed`, `source`, `recrawl`, `remark`, `patten`) VALUES
(1, '<cctv:cctv1><tvmao:CCTV-CCTV1><zhongshu:cctv1><tvsou:b3666b9d#yangshi><nowtv:G05-541>', 'CCTV1', 'CCTV-1综合', '央视', '/static/img/tv-logo/CCTV1.png', '2025-06-01', '2025-05-31 13:58:44', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, NULL),
(2, '<cctv:cctv2><tvmao:CCTV-CCTV2><zhongshu:cctv2><tvsou:c5717c2d#yangshi>', 'CCTV2', 'CCTV-2财经', '央视', '/static/img/tv-logo/CCTV2.png', '2025-06-01', '2025-05-31 13:58:46', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(2(\\\\D|$)|2??财经)'),
(3, '<cctv:cctv3><tvmao:CCTV-CCTV3><zhongshu:cctv3><tvsou:53eda06f#yangshi>', 'CCTV3', 'CCTV-3综艺', '央视', '/static/img/tv-logo/CCTV3.png', '2025-06-01', '2025-05-31 13:58:46', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(3|综艺)'),
(4, '<cctv:cctv4><tvmao:CCTV-CCTV4><zhongshu:cctv4><tvsou:0ccc41bf#yangshi><nowtv:G05-542>', 'CCTV4', 'CCTV-4中文国际', '央视', '/static/img/tv-logo/CCTV4.png', '2025-06-01', '2025-05-31 13:58:47', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(4$|4[^k]|中文)'),
(5, '<cctv:cctv5><tvmao:CCTV-CCTV5><zhongshu:cctv5><tvsou:6b26bee1#yangshi>', 'CCTV5', 'CCTV-5体育', '央视', '/static/img/tv-logo/CCTV5.png', '2025-06-01', '2025-05-31 13:58:48', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)5?($|体育$|体育频道|高清)'),
(6, '<cctv:cctv5plus><tvmao:CCTV-CCTV5-PLUS><zhongshu:cctv5plus><tvsou:e4e3801d#yangshi>', 'CCTV5+', 'CCTV-5+体育赛事', '央视', '/static/img/tv-logo/CCTV5+.png', '2025-06-01', '2025-05-31 13:58:48', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(5(\\\\+|plus)|体育赛事)'),
(7, '<cctv:cctv6><tvmao:CCTV-CCTV6><zhongshu:cctv6><tvsou:ddb707c0#yangshi>', 'CCTV6', 'CCTV-6电影', '央视', '/static/img/tv-logo/CCTV6.png', '2025-06-01', '2025-05-31 13:58:49', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(6|电影)'),
(8, '<cctv:cctv7><tvmao:CCTV-CCTV7><zhongshu:cctv7><tvsou:f2d13f2a#yangshi>', 'CCTV7', 'CCTV-7国防军事', '央视', '/static/img/tv-logo/CCTV7.png', '2025-06-01', '2025-05-31 13:58:50', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(7|(国防|军事))'),
(9, '<cctv:cctv8><tvmao:CCTV-CCTV8><zhongshu:cctv8><tvsou:13e8f054#yangshi>', 'CCTV8', 'CCTV-8电视剧', '央视', '/static/img/tv-logo/CCTV8.png', '2025-06-01', '2025-05-31 13:58:51', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(8|电视)'),
(10, '<cctv:cctvjilu><tvmao:CCTV-CCTV9><zhongshu:cctvjilu><tvsou:8f932b7b#yangshi>', 'CCTV9', 'CCTV-9纪录', '央视', '/static/img/tv-logo/CCTV9.png', '2025-06-01', '2025-05-31 13:58:51', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(9|记录)'),
(11, '<cctv:cctv10><tvmao:CCTV-CCTV10><zhongshu:cctv10><tvsou:CCTV-10#yangshi>', 'CCTV10', 'CCTV-10科教', '央视', '/static/img/tv-logo/CCTV10.png', '2025-06-01', '2025-05-31 13:58:52', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(10|科教)'),
(12, '<cctv:cctv11><tvmao:CCTV-CCTV11><zhongshu:cctv11><tvsou:0a2de840#yangshi>', 'CCTV11', 'CCTV-11戏曲', '央视', '/static/img/tv-logo/CCTV11.png', '2025-06-01', '2025-05-31 13:58:53', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(11|戏曲)'),
(13, '<cctv:cctv12><tvmao:CCTV-CCTV12><zhongshu:cctv12><tvsou:1e983148#yangshi>', 'CCTV12', 'CCTV-12社会与法', '央视', '/static/img/tv-logo/CCTV12.png', '2025-06-01', '2025-05-31 13:58:53', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(12|社会)'),
(14, '<cctv:cctv13><tvmao:CCTV-CCTV13><zhongshu:cctv13><tvsou:f5b1a323#yangshi>', 'CCTV13', 'CCTV-13新闻', '央视', '/static/img/tv-logo/CCTV13.png', '2025-06-01', '2025-05-31 13:58:54', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(13|新闻)'),
(15, '<cctv:cctvchild><tvmao:CCTV-CCTV15><zhongshu:cctvchild><tvsou:6fff4f43#yangshi>', 'CCTV14', 'CCTV-14少儿', '央视', '/static/img/tv-logo/CCTV14.png', '2025-06-01', '2025-05-31 13:58:54', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(14|少儿)'),
(16, '<cctv:cctv15><tvmao:CCTV-CCTV16><zhongshu:cctv15><tvsou:3201ff16#yangshi>', 'CCTV15', 'CCTV-15音乐', '央视', '/static/img/tv-logo/CCTV15.png', '2025-06-01', '2025-05-31 13:58:55', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(15|音乐)'),
(17, '<cctv:cctv16><tvmao:CCTV-CCTV16><zhongshu:cctv16>', 'CCTV16', 'CCTV-16奥林匹克', '央视', '/static/img/tv-logo/CCTV16.png', '2025-06-01', '2025-05-31 13:58:55', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, NULL),
(18, '<cctv:cctv17><tvmao:CCTV-CCTV17>', 'CCTV17', 'CCTV-17农村农业', '央视', '/static/img/tv-logo/CCTV17.png', '2025-06-01', '2025-05-31 13:58:56', '2023-07-01 00:00:00', NULL, 1, 1, 'cctv', 1, NULL, '(cctv|央视)(17|(农村|农业))'),
(28, '<tvsou:ZJTV-1#weishi><tvmao:satellite-ZJTV1><zhongshu:zhejiang><nowtv:G05-555><icable:335>', '浙江卫视', '浙江卫视', '卫视', '/static/img/tv-logo/浙江卫视.png', '2025-06-01', '2025-05-31 13:58:56', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '浙江卫视'),
(29, '<tvsou:JSTV-1#weishi><tvmao:satellite-JSTV1><zhongshu:jiangsu>', '江苏卫视', '江苏卫视', '卫视', '/static/img/tv-logo/江苏卫视.png', '2025-06-01', '2025-05-31 13:58:57', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '江苏卫视'),
(30, '<tvsou:696f2203#weishi><tvmao:satellite-BTV1><zhongshu:btv1><tianyi:00000110240129>', '北京卫视', '北京卫视', '卫视', '/static/img/tv-logo/北京卫视.png', '2025-06-01', '2025-05-31 13:58:58', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '北京卫视'),
(31, '<tvsou:SMG#weishi><tvmao:satellite-DONGFANG1><zhongshu:dongfang><icable:334>', '东方卫视', '东方卫视', '卫视', '/static/img/tv-logo/东方卫视.png', '2025-06-01', '2025-05-31 13:58:58', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '东方卫视'),
(32, '<tvsou:AHTV-1#weishi><tvmao:satellite-AHTV1><zhongshu:anhui>', '安徽卫视', '安徽卫视', '卫视', '/static/img/tv-logo/安徽卫视.png', '2025-06-01', '2025-05-31 13:58:59', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '安徽卫视'),
(33, '<tvsou:GDTV-1#weishi><tvmao:satellite-GDTV1><zhongshu:guangdong><gdtv:1>', '广东卫视', '广东卫视', '卫视', '/static/img/tv-logo/广东卫视.png', '2025-06-01', '2025-05-31 13:59:00', '2023-07-01 00:00:00', NULL, 1, 1, 'gdtv', 1, NULL, '广东卫视'),
(34, '<tvsou:SHENZHENTV-1#weishi><tvmao:satellite-SZTV1><zhongshu:shenzhen><nowtv:G05-540>', '深圳卫视', '深圳卫视', '卫视', '/static/img/tv-logo/深圳卫视.png', '2025-06-01', '2025-05-31 13:59:00', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '深圳卫视'),
(36, '<tvsou:LNTV-1#weishi><tvmao:satellite-LNTV1><zhongshu:liaoning>', '辽宁卫视', '辽宁卫视', '卫视', '/static/img/tv-logo/辽宁卫视.png', '2025-06-01', '2025-05-31 13:59:01', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '辽宁卫视'),
(38, '<tvsou:SDTV-1#weishi><tvmao:satellite-SDTV1><zhongshu:shandong>', '山东卫视', '山东卫视', '卫视', '/static/img/tv-logo/山东卫视.png', '2025-06-01', '2025-05-31 13:59:02', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '山东卫视'),
(39, '<tvsou:TJTV-1#weishi><tvmao:satellite-TJTV1><zhongshu:tianjin>', '天津卫视', '天津卫视', '卫视', '/static/img/tv-logo/天津卫视.png', '2025-06-01', '2025-05-31 13:59:03', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '天津卫视'),
(40, '<tvsou:CQTV-1#weishi><tvmao:satellite-CCQTV1><zhongshu:chongqing>', '重庆卫视', '重庆卫视', '卫视', '/static/img/tv-logo/重庆卫视.png', '2025-06-01', '2025-05-31 13:59:04', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '重庆卫视'),
(41, '<tvsou:DNWS#weishi><tvmao:satellite-FJTV2><zhongshu:fujian>', '东南卫视', '东南卫视', '卫视', '/static/img/tv-logo/东南卫视.png', '2025-06-01', '2025-05-31 13:59:04', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '东南卫视'),
(42, '<tvsou:GSTV-1#weishi><tvmao:satellite-GSTV1><zhongshu:gansu>', '甘肃卫视', '甘肃卫视', '卫视', '/static/img/tv-logo/甘肃卫视.png', '2025-06-01', '2025-05-31 13:59:05', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '甘肃卫视'),
(43, '<tvsou:GXTV--1#weishi><tvmao:satellite-GUANXI1><zhongshu:guangxi>', '广西卫视', '广西卫视', '卫视', '/static/img/tv-logo/广西卫视.png', '2025-06-01', '2025-05-31 13:59:06', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '广西卫视'),
(44, '<tvsou:GZTV-1#weishi><tvmao:satellite-GUIZOUTV1><zhongshu:guizhou>', '贵州卫视', '贵州卫视', '卫视', '/static/img/tv-logo/贵州卫视.png', '2025-06-01', '2025-05-31 13:59:07', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '贵州卫视'),
(45, '<tvsou:HEBTV-1#weishi><tvmao:satellite-HEBEI1><zhongshu:hebei>', '河北卫视', '河北卫视', '卫视', '/static/img/tv-logo/河北卫视.png', '2025-06-01', '2025-05-31 13:59:15', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '河北卫视'),
(46, '<tvsou:HLJTV-1#weishi><tvmao:satellite-HLJTV1><zhongshu:heilongjiang>', '黑龙江卫视', '黑龙江卫视', '卫视', '/static/img/tv-logo/黑龙江卫视.png', '2025-06-01', '2025-05-31 13:59:18', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '黑龙江卫视'),
(47, '<tvsou:HENANTV-1#weishi><tvmao:satellite-HNTV1><zhongshu:henan><', '河南卫视', '河南卫视', '卫视', '/static/img/tv-logo/河南卫视.png', '2025-06-01', '2025-05-31 13:59:18', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '河南卫视'),
(48, '<tvsou:526cbae7#weishi><tvmao:satellite-HUBEI1><zhongshu:hubei><icable:337>', '湖北卫视', '湖北卫视', '卫视', '/static/img/tv-logo/湖北卫视.png', '2025-06-01', '2025-05-31 13:59:22', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '湖北卫视'),
(50, '<tvsou:JXTV-1#weishi><tvmao:satellite-JXTV1><zhongshu:jiangxi>', '江西卫视', '江西卫视', '卫视', '/static/img/tv-logo/江西卫视.png', '2025-06-01', '2025-05-31 13:59:28', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '江西卫视'),
(51, '<tvsou:JLTV-1#weishi><tvmao:satellite-JILIN1><zhongshu:jilin>', '吉林卫视', '吉林卫视', '卫视', '/static/img/tv-logo/吉林卫视.png', '2025-06-01', '2025-05-31 13:59:31', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '吉林卫视'),
(52, '<tvsou:NMGTV-1#weishi><tvmao:satellite-NMGTV1><zhongshu:neimenggu>', '内蒙古卫视', '内蒙古卫视', '卫视', '/static/img/tv-logo/内蒙古卫视.png', '2025-06-01', '2025-05-31 13:59:32', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '内蒙古??卫视'),
(53, '<tvsou:NXTV-1#weishi><tvmao:satellite-NXTV2><zhongshu:ningxia>', '宁夏卫视', '宁夏卫视', '卫视', '/static/img/tv-logo/宁夏卫视.png', '2025-06-01', '2025-05-31 14:02:53', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '宁夏卫视'),
(54, '<tvsou:SHANXITV-1#weishi><tvmao:satellite-SXTV1><zhongshu:shan1xi>', '山西卫视', '山西卫视', '卫视', '/static/img/tv-logo/山西卫视.png', '2025-06-01', '2025-05-31 14:03:48', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '山西卫视'),
(55, '<tvsou:SXTV-1#weishi><tvmao:satellite-SHXITV1><zhongshu:shan3xi>', '陕西卫视', '陕西卫视', '卫视', '/static/img/tv-logo/陕西卫视.png', '2025-06-01', '2025-05-31 13:44:11', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '陕西卫视'),
(58, '<tvsou:3a19b822#weishi><tvmao:satellite-YNTV1><zhongshu:yunnan>', '云南卫视', '云南卫视', '卫视', '/static/img/tv-logo/云南卫视.png', '2025-06-01', '2025-05-31 14:04:31', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '云南卫视'),
(63, '<tvsou:YANBIANTV-1#weishi><tvmao:satellite-YANBIAN1>', '延边卫视', '延边卫视', '上海', '/static/img/tv-logo/延边卫视.png', '2025-06-01', '2025-05-31 14:04:32', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '延边卫视'),
(65, '<tvsou:HHWS#weishi><tvmao:satellite-HHWS>', '黄河卫视', '黄河卫视', '卫视', '/static/img/tv-logo/黄河卫视.png', '2025-06-01', '2025-05-31 14:04:33', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '黄河卫视'),
(67, '<tvmao:satellite-BTV10><tvsou:648e72a2#beijing-110000><btv:142>', '卡酷少儿', '卡酷少儿', '卫视', '/static/img/tv-logo/卡酷少儿.png', '2025-06-01', '2025-05-31 14:04:37', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '卡酷(动画|少儿)'),
(68, '<tvsou:XIAMENTV-1#weishi><tvmao:satellite-XMTV5>', '厦门卫视', '厦门卫视', '北京', '/static/img/tv-logo/厦门卫视.png', '2025-06-01', '2025-05-31 14:04:41', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '厦门卫视'),
(69, '<tvsou:bc0c3927#hunan-430000><tvmao:satellite-HUNANTV2><tvsou:bc0c3927#hunan-430000>', '金鹰卡通', '金鹰卡通', '卫视', '/static/img/tv-logo/湖南金鹰卡通.png', '2025-06-01', '2025-05-31 14:04:42', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '(湖南)??金鹰卡通'),
(70, '<tvsou:5ccb1172#weishi><tvmao:satellite-KAMBA-TV><tvsou:KBWS#sichuan-510000>', '康巴卫视', '康巴卫视', '卫视', '/static/img/tv-logo/康巴卫视.png', '2025-06-01', '2025-05-31 14:04:43', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '康巴卫视'),
(71, '<tvsou:XZTV-1#weishi><tvmao:satellite-XIZANGTV2><zhongshu:xizang>', '西藏卫视', '西藏卫视', '卫视', '/static/img/tv-logo/西藏卫视.png', '2025-06-01', '2025-05-31 14:04:44', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '西藏卫视'),
(72, '<tvsou:ssws#weishi><tvmao:satellite-SANSHATV><nowtv:G05-553>', '三沙卫视', '三沙卫视', '卫视', '/static/img/tv-logo/三沙卫视.png', '2025-06-01', '2025-05-31 14:04:45', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '三沙卫视'),
(73, '<tvmao:digital-CETV1><zhongshu:cetv1><tvsou:5a44bb16#yangshi>', '中国教育1台', '教育1台', '卫视', '/static/img/tv-logo/CETV1.png', '2025-06-01', '2025-05-31 14:04:45', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 1, NULL, '^(中国)??教育(电视台)??(1|一)'),
(74, '<tvmao:digital-CETV2><tvsou:e04d023a#yangshi>', '中国教育2台', '教育2台', '数字付费', '/static/img/tv-logo/CETV4.png', '2025-06-01', '2025-05-31 13:44:19', '2023-07-01 00:00:00', NULL, 1, 1, 'tvmao', 0, NULL, '^(中国)??教育(电视台)??(2|二)'),
(76, '<tvmao:satellite-HUNANTV1>', '湖南卫视', '湖南卫视', '卫视', '/static/img/tv-logo/湖南卫视.png', '2025-06-01', '2025-05-31 14:04:46', '2024-04-09 15:42:17', NULL, 1, 1, 'tvmao', 1, NULL, '湖南卫视');

-- --------------------------------------------------------

--
-- 表的结构 `web_channel_list`
--

CREATE TABLE `web_channel_list` (
  `id` int NOT NULL,
  `inner_channel_id` int NOT NULL,
  `out_channel_id` varchar(100) NOT NULL,
  `inner_name` varchar(20) NOT NULL,
  `out_name` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `is_alive` int NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `web_crawl_log`
--

CREATE TABLE `web_crawl_log` (
  `id` int NOT NULL,
  `dt` datetime NOT NULL,
  `msg` text NOT NULL,
  `level` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 表的结构 `web_epg`
--

CREATE TABLE `web_epg` (
  `id` int NOT NULL,
  `channel_id` varchar(50) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `descr` text,
  `program_date` date NOT NULL,
  `crawl_dt` datetime DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 表的索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 表的索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 表的索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 表的索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 表的索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 表的索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 表的索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 表的索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 表的索引 `web_channel`
--
ALTER TABLE `web_channel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `web_channel_recrawl_6fee02e1` (`recrawl`),
  ADD KEY `web_channel_source_96a7eb09` (`source`),
  ADD KEY `web_channel_ineed_805ba0a2` (`ineed`),
  ADD KEY `web_channel_has_epg_5bfcecdd` (`has_epg`),
  ADD KEY `web_channel_last_program_date_eaef95db` (`last_program_date`),
  ADD KEY `web_channel_sort_123332c5` (`sort`),
  ADD KEY `web_channel_name_a76f0fc3` (`name`),
  ADD KEY `web_channel_tvg_name_16cbd0e1` (`tvg_name`);

--
-- 表的索引 `web_channel_list`
--
ALTER TABLE `web_channel_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `web_channel_list_inner_channel_id_3d070728` (`inner_channel_id`);

--
-- 表的索引 `web_crawl_log`
--
ALTER TABLE `web_crawl_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `web_crawl_log_dt_b86f9a22` (`dt`);

--
-- 表的索引 `web_epg`
--
ALTER TABLE `web_epg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `web_epg_program_date_b01641c3` (`program_date`),
  ADD KEY `web_epg_starttime_e7e4c8be` (`starttime`),
  ADD KEY `web_epg_channel_id_61467185` (`channel_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `web_channel`
--
ALTER TABLE `web_channel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- 使用表AUTO_INCREMENT `web_channel_list`
--
ALTER TABLE `web_channel_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `web_crawl_log`
--
ALTER TABLE `web_crawl_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- 使用表AUTO_INCREMENT `web_epg`
--
ALTER TABLE `web_epg`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5516;

--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
