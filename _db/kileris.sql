-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Darbinė stotis: custsql-spro-ipg04.ipagemysql.com
-- Atlikimo laikas:  2017 m. Rugsėjo 18 d.  01:18
-- Serverio versija: 5.6.32
-- PHP versija: 4.4.9
-- 
-- Duombazė: `kileris_nfq`
-- 

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_ak_profiles`
-- 

CREATE TABLE `aj14x_ak_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci,
  `filters` longtext COLLATE utf8mb4_unicode_ci,
  `quickicon` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_ak_profiles`
-- 

INSERT INTO `aj14x_ak_profiles` VALUES (1, 'Default Backup Profile', '', '', 1);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_ak_stats`
-- 

CREATE TABLE `aj14x_ak_stats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'run',
  `origin` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext COLLATE utf8mb4_unicode_ci,
  `absolute_path` longtext COLLATE utf8mb4_unicode_ci,
  `multipart` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backupid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesexist` tinyint(3) NOT NULL DEFAULT '1',
  `remote_filename` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_size` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_fullstatus` (`filesexist`,`status`),
  KEY `idx_stale` (`status`,`origin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_ak_stats`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_ak_storage`
-- 

CREATE TABLE `aj14x_ak_storage` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`tag`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_ak_storage`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_akeeba_common`
-- 

CREATE TABLE `aj14x_akeeba_common` (
  `key` varchar(192) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_akeeba_common`
-- 

INSERT INTO `aj14x_akeeba_common` VALUES ('fof30', '["com_akeeba"]');
INSERT INTO `aj14x_akeeba_common` VALUES ('stats_lastrun', '1505710898');
INSERT INTO `aj14x_akeeba_common` VALUES ('stats_siteid', '937b58ec52c77532796cb44e2bd5c833a234409c');
INSERT INTO `aj14x_akeeba_common` VALUES ('stats_siteurl', 'a8ff505b8e03629d6b456e654667aef1');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_assets`
-- 

CREATE TABLE `aj14x_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=66 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_assets`
-- 

INSERT INTO `aj14x_assets` VALUES (1, 0, 0, 125, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}');
INSERT INTO `aj14x_assets` VALUES (2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}');
INSERT INTO `aj14x_assets` VALUES (3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1}}');
INSERT INTO `aj14x_assets` VALUES (4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (6, 1, 11, 12, 1, 'com_config', 'com_config', '{}');
INSERT INTO `aj14x_assets` VALUES (7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1}}');
INSERT INTO `aj14x_assets` VALUES (8, 1, 17, 26, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.edit":{"4":1},"core.edit.state":{"5":1}}');
INSERT INTO `aj14x_assets` VALUES (9, 1, 27, 28, 1, 'com_cpanel', 'com_cpanel', '{}');
INSERT INTO `aj14x_assets` VALUES (10, 1, 29, 30, 1, 'com_installer', 'com_installer', '{"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}');
INSERT INTO `aj14x_assets` VALUES (11, 1, 31, 32, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (12, 1, 33, 34, 1, 'com_login', 'com_login', '{}');
INSERT INTO `aj14x_assets` VALUES (13, 1, 35, 36, 1, 'com_mailto', 'com_mailto', '{}');
INSERT INTO `aj14x_assets` VALUES (14, 1, 37, 38, 1, 'com_massmail', 'com_massmail', '{}');
INSERT INTO `aj14x_assets` VALUES (15, 1, 39, 40, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}');
INSERT INTO `aj14x_assets` VALUES (16, 1, 41, 46, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (17, 1, 47, 48, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (18, 1, 49, 82, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (19, 1, 83, 86, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1}}');
INSERT INTO `aj14x_assets` VALUES (20, 1, 87, 88, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (21, 1, 89, 90, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (22, 1, 91, 92, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}');
INSERT INTO `aj14x_assets` VALUES (23, 1, 93, 94, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (24, 1, 95, 98, 1, 'com_users', 'com_users', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (26, 1, 99, 100, 1, 'com_wrapper', 'com_wrapper', '{}');
INSERT INTO `aj14x_assets` VALUES (27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}');
INSERT INTO `aj14x_assets` VALUES (28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}');
INSERT INTO `aj14x_assets` VALUES (29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}');
INSERT INTO `aj14x_assets` VALUES (30, 19, 84, 85, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}');
INSERT INTO `aj14x_assets` VALUES (32, 24, 96, 97, 2, 'com_users.category.7', 'Uncategorised', '{}');
INSERT INTO `aj14x_assets` VALUES (33, 1, 101, 102, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}');
INSERT INTO `aj14x_assets` VALUES (34, 1, 103, 104, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}');
INSERT INTO `aj14x_assets` VALUES (35, 1, 105, 106, 1, 'com_tags', 'com_tags', '{}');
INSERT INTO `aj14x_assets` VALUES (36, 1, 107, 108, 1, 'com_contenthistory', 'com_contenthistory', '{}');
INSERT INTO `aj14x_assets` VALUES (37, 1, 109, 110, 1, 'com_ajax', 'com_ajax', '{}');
INSERT INTO `aj14x_assets` VALUES (38, 1, 111, 112, 1, 'com_postinstall', 'com_postinstall', '{}');
INSERT INTO `aj14x_assets` VALUES (39, 18, 50, 51, 2, 'com_modules.module.1', 'Main Menu', '{}');
INSERT INTO `aj14x_assets` VALUES (40, 18, 52, 53, 2, 'com_modules.module.2', 'Login', '{}');
INSERT INTO `aj14x_assets` VALUES (41, 18, 54, 55, 2, 'com_modules.module.3', 'Popular Articles', '{}');
INSERT INTO `aj14x_assets` VALUES (42, 18, 56, 57, 2, 'com_modules.module.4', 'Recently Added Articles', '{}');
INSERT INTO `aj14x_assets` VALUES (43, 18, 58, 59, 2, 'com_modules.module.8', 'Toolbar', '{}');
INSERT INTO `aj14x_assets` VALUES (44, 18, 60, 61, 2, 'com_modules.module.9', 'Quick Icons', '{}');
INSERT INTO `aj14x_assets` VALUES (45, 18, 62, 63, 2, 'com_modules.module.10', 'Logged-in Users', '{}');
INSERT INTO `aj14x_assets` VALUES (46, 18, 64, 65, 2, 'com_modules.module.12', 'Admin Menu', '{}');
INSERT INTO `aj14x_assets` VALUES (47, 18, 66, 67, 2, 'com_modules.module.13', 'Admin Submenu', '{}');
INSERT INTO `aj14x_assets` VALUES (48, 18, 68, 69, 2, 'com_modules.module.14', 'User Status', '{}');
INSERT INTO `aj14x_assets` VALUES (49, 18, 70, 71, 2, 'com_modules.module.15', 'Title', '{}');
INSERT INTO `aj14x_assets` VALUES (50, 18, 72, 73, 2, 'com_modules.module.16', 'Login Form', '{}');
INSERT INTO `aj14x_assets` VALUES (51, 18, 74, 75, 2, 'com_modules.module.17', 'Breadcrumbs', '{}');
INSERT INTO `aj14x_assets` VALUES (52, 18, 76, 77, 2, 'com_modules.module.79', 'Multilanguage status', '{}');
INSERT INTO `aj14x_assets` VALUES (53, 18, 78, 79, 2, 'com_modules.module.86', 'Joomla Version', '{}');
INSERT INTO `aj14x_assets` VALUES (54, 16, 42, 43, 2, 'com_menus.menu.1', 'Main Menu', '{}');
INSERT INTO `aj14x_assets` VALUES (55, 1, 113, 114, 1, 'com_rsform', 'com_rsform', '{}');
INSERT INTO `aj14x_assets` VALUES (56, 1, 115, 116, 1, '#__languages.2', '#__languages.2', '{}');
INSERT INTO `aj14x_assets` VALUES (57, 1, 117, 118, 1, 'com_jaextmanager', 'com_jaextmanager', '{}');
INSERT INTO `aj14x_assets` VALUES (58, 61, 23, 24, 3, 'com_content.article.1', 'Kainos', '{}');
INSERT INTO `aj14x_assets` VALUES (59, 61, 21, 22, 3, 'com_content.article.2', '1 puslapis', '{}');
INSERT INTO `aj14x_assets` VALUES (60, 1, 119, 120, 1, 'com_jce', 'COM_JCE', '{}');
INSERT INTO `aj14x_assets` VALUES (61, 8, 20, 25, 2, 'com_content.category.8', 'Puslapiai', '{}');
INSERT INTO `aj14x_assets` VALUES (62, 16, 44, 45, 2, 'com_menus.menu.2', 'Nematomas', '{}');
INSERT INTO `aj14x_assets` VALUES (63, 1, 121, 122, 1, 'com_akeeba', 'Akeeba', '{}');
INSERT INTO `aj14x_assets` VALUES (64, 1, 123, 124, 1, 'com_rsfirewall', 'RSFirewall!', '{}');
INSERT INTO `aj14x_assets` VALUES (65, 18, 80, 81, 2, 'com_modules.module.87', 'RSFirewall! Control Panel Module', '{}');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_associations`
-- 

CREATE TABLE `aj14x_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_associations`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_banner_clients`
-- 

CREATE TABLE `aj14x_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_banner_clients`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_banner_tracks`
-- 

CREATE TABLE `aj14x_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_banner_tracks`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_banners`
-- 

CREATE TABLE `aj14x_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_banners`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_categories`
-- 

CREATE TABLE `aj14x_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_categories`
-- 

INSERT INTO `aj14x_categories` VALUES (1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 0x726f6f74, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `aj14x_categories` VALUES (2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 0x756e63617465676f7269736564, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `aj14x_categories` VALUES (3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 0x756e63617465676f7269736564, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `aj14x_categories` VALUES (4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 0x756e63617465676f7269736564, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `aj14x_categories` VALUES (5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 0x756e63617465676f7269736564, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `aj14x_categories` VALUES (7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 0x756e63617465676f7269736564, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `aj14x_categories` VALUES (8, 61, 1, 11, 12, 1, 'puslapiai', 'com_content', 'Puslapiai', 0x7075736c6170696169, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","t3_extrafields":""}', '', '', '{"author":"","robots":""}', 290, '2017-09-18 03:32:33', 290, '2017-09-18 03:34:05', 0, '*', 1);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_contact_details`
-- 

CREATE TABLE `aj14x_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_contact_details`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_content`
-- 

CREATE TABLE `aj14x_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_content`
-- 

INSERT INTO `aj14x_content` VALUES (1, 58, 'Kainos', 0x6b61696e6f73, '<h1><span style="font-size: 14pt; color: #ff0000;">Kuklus kainininkas už gerą paslaugą:</span></h1>\r\n<p>Eilinis žmogus - 10 000 €</p>\r\n<p>Įmonės vadovas - 15 000 €</p>\r\n<p>Pareigūnas - 20 000 €</p>\r\n<p>Verslo savininkas - 30 000 €</p>\r\n<p>Žmogus su fizine apsauga - 40 000 €</p>\r\n<p>Valdžios atstovas - 50 000 €</p>\r\n<p>Už dvigubą kainą padarysime taip, kad tai atrodytų savižudybė.</p>\r\n<p>Už trigubą kainą padarysime taip, kad tai atrodytų nelaimingas atsitikimas.</p>\r\n<p><span style="color: #ff0000; font-size: 14pt;">Kas nori derėtis, gali netikėtai pats tapti taikiniu - taigi nedarykite to.</span></p>\r\n<p>50 procentų kainos praveskite į mūsų Badaujančių Afrikos vaikų labdaros fondo sąskaitą:</p>\r\n<p>Sąsk.nr. LT66 6666 6666 6666 6666</p>\r\n<p>likusią sumos dalį per 3 dienas po užduoties įvykdymo.</p>\r\n<p><span style="color: #ff0000; font-size: 14pt;">Nesugalvokite su mumis juokauti - mums tai gali nepatikti.</span></p>', '', 1, 8, '2017-09-17 20:42:50', 290, '', '2017-09-18 03:33:09', 290, 0, '0000-00-00 00:00:00', '2017-09-17 20:42:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 5, 1, '', '', 1, 14, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `aj14x_content` VALUES (2, 59, '1 puslapis', 0x312d7075736c61706973, '<h2><span style="font-size: 14pt;">Norite perimti biznį iš verslo partnerio? Trukdo konkurentai? Nežinote kaip atsikratyti savo vyro meilužės?</span></h2>\r\n<h1><span style="font-size: 14pt; color: #ff0000;">KILERIS (samdomas žudikas) lengvai išspręs Jūsų problemas.</span></h1>\r\n<p>2014 m. rugpjūčio 27 d. iš kalėjimo anksčiau laiko buvo paleistas samdomas žudikas Johnas Jairo Velasquezas, pravarde Popajus, kuris dirbo garsiam Kolumbijos narkotikų baronui Pablo Escobarui. Po 24 metų, praleistų už grotų, buvęs narkotikų kartelio narys, prisidėjęs prie daugiau nei 300 užsakytų žmogžudysčių, nusprendė praplėsti veiklą Europoje.</p>\r\n<p><span style="color: #ff0000; font-size: 14pt;">Taigi Jūsų taikinys patikimose rankose.</span></p>\r\n<p>Apie atvykstančius žudikus Lietuvos policija neturi jokių duomenų ir net jei jie ir palieka savo DNR nusikaltimo vietoje, jos vis tiek nėra su kuo palyginti. Samdomi žudikai visuomet naudoja visiškai naujus ginklus, kuriuos vėliau išmeta.</p>\r\n<p>&nbsp;</p>\r\n<p><span style="color: #0000ff; font-size: 14pt;"><strong>Pastaba projekto tikrintojams</strong></span></p>\r\n<p><span style="color: #0000ff; font-size: 14pt;"><strong>pridedu nuorodą į užsakymų sąrašą, kurio nenurodžiau meniu punkte, kad klientai jo negalėtų matyti:</strong></span></p>\r\n<p><a href="uzsakymu-sarasas.html">http://agenturapegasus.lt/kileris/uzsakymu-sarasas.html</a></p>', '', 1, 8, '2017-09-17 20:43:03', 290, '', '2017-09-18 04:59:20', 290, 0, '0000-00-00 00:00:00', '2017-09-17 20:43:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/photos\\/pablo-escobar-jairo-velasquez-alias-popeye.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","extra-class":""}', 19, 0, '', '', 1, 63, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_content_frontpage`
-- 

CREATE TABLE `aj14x_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_content_frontpage`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_content_rating`
-- 

CREATE TABLE `aj14x_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_content_rating`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_content_types`
-- 

CREATE TABLE `aj14x_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10000 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_content_types`
-- 

INSERT INTO `aj14x_content_types` VALUES (1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}');
INSERT INTO `aj14x_content_types` VALUES (2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }');
INSERT INTO `aj14x_content_types` VALUES (3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}');
INSERT INTO `aj14x_content_types` VALUES (4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', '');
INSERT INTO `aj14x_content_types` VALUES (5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');
INSERT INTO `aj14x_content_types` VALUES (6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');
INSERT INTO `aj14x_content_types` VALUES (7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');
INSERT INTO `aj14x_content_types` VALUES (8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}');
INSERT INTO `aj14x_content_types` VALUES (9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}');
INSERT INTO `aj14x_content_types` VALUES (10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');
INSERT INTO `aj14x_content_types` VALUES (11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}');
INSERT INTO `aj14x_content_types` VALUES (12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}');
INSERT INTO `aj14x_content_types` VALUES (13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_contentitem_tag_map`
-- 

CREATE TABLE `aj14x_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- 
-- Sukurta duomenų kopija lentelei `aj14x_contentitem_tag_map`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_core_log_searches`
-- 

CREATE TABLE `aj14x_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_core_log_searches`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_extensions`
-- 

CREATE TABLE `aj14x_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10028 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10028 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_extensions`
-- 

INSERT INTO `aj14x_extensions` VALUES (1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_tags":"1","show_info":"1","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_image":"1","show_misc":"1","image":"","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_user_custom_fields":["-1"],"show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"0","show_pagination_limit":"0","show_headings":"1","show_image_heading":"0","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1","sef_advanced":0,"sef_ids":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{"show_jed_info":"1","cachetimeout":"6","minimum_stability":"4"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"lt-LT","site":"lt-LT"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","search_phrases":"1","search_areas":"1","show_date":"1","opensearch_name":"","opensearch_description":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css,scss,sass","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"enabled":"0","show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_autosuggest":"1","show_suggested_query":"1","show_explained_query":"1","show_advanced":"1","show_advanced_tips":"1","expand_advanced":"0","show_date_filters":"0","sort_order":"relevance","sort_direction":"desc","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stem":"1","stemmer":"snowball","enable_logging":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"default","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{"name":"com_fields","type":"component","creationDate":"March 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{"name":"com_associations","type":"component","creationDate":"Januar 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_ASSOCIATIONS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"6eaa6c39320b758ffaa695b4600596e8"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `aj14x_extensions` VALUES (401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `aj14x_extensions` VALUES (403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `aj14x_extensions` VALUES (404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `aj14x_extensions` VALUES (406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `aj14x_extensions` VALUES (408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `aj14x_extensions` VALUES (409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `aj14x_extensions` VALUES (410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.25.2","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `aj14x_extensions` VALUES (411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `aj14x_extensions` VALUES (412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2017","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.5.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"configuration":{"toolbars":{"2":{"toolbar1":["bold","underline","strikethrough","|","undo","redo","|","bullist","numlist","|","pastetext"]},"1":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","formatselect","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","code","|","hr","table","|","subscript","superscript","|","charmap","pastetext","preview"]},"0":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","styleselect","|","formatselect","fontselect","fontsizeselect","|","searchreplace","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","image","|","code","|","forecolor","backcolor","|","fullscreen","|","table","|","subscript","superscript","|","charmap","emoticons","media","hr","ltr","rtl","|","cut","copy","paste","pastetext","|","visualchars","visualblocks","nonbreaking","blockquote","template","|","print","preview","codesample","insertdatetime","removeformat"]}},"setoptions":{"2":{"access":["1"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"1":{"access":["6","2"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"0":{"access":["7","4","8"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""}}},"sets_amount":3,"html_height":"550","html_width":"750"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `aj14x_extensions` VALUES (413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `aj14x_extensions` VALUES (414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `aj14x_extensions` VALUES (415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `aj14x_extensions` VALUES (416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `aj14x_extensions` VALUES (417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `aj14x_extensions` VALUES (423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `aj14x_extensions` VALUES (424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0);
INSERT INTO `aj14x_extensions` VALUES (425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `aj14x_extensions` VALUES (426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `aj14x_extensions` VALUES (427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `aj14x_extensions` VALUES (428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0);
INSERT INTO `aj14x_extensions` VALUES (429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0);
INSERT INTO `aj14x_extensions` VALUES (430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `aj14x_extensions` VALUES (431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `aj14x_extensions` VALUES (432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `aj14x_extensions` VALUES (433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `aj14x_extensions` VALUES (435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0);
INSERT INTO `aj14x_extensions` VALUES (437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0);
INSERT INTO `aj14x_extensions` VALUES (441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `aj14x_extensions` VALUES (443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `aj14x_extensions` VALUES (444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `aj14x_extensions` VALUES (445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `aj14x_extensions` VALUES (447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1505691649}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":1,"lastrun":1505669989,"unique_id":"dedce5aa0531a2d10917b52e8cc2c1ecade0ebd4","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `aj14x_extensions` VALUES (456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `aj14x_extensions` VALUES (457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `aj14x_extensions` VALUES (458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_phpversioncheck","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION","group":"","filename":"phpversioncheck"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_menu","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION","group":"","filename":"menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_contact","type":"plugin","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{"name":"plg_system_fields","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_SYSTEM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_calendar","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CALENDAR_XML_DESCRIPTION","group":"","filename":"calendar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_checkboxes","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION","group":"","filename":"checkboxes"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_color","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_COLOR_XML_DESCRIPTION","group":"","filename":"color"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_editor","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_EDITOR_XML_DESCRIPTION","group":"","filename":"editor"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_imagelist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION","group":"","filename":"imagelist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_integer","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_INTEGER_XML_DESCRIPTION","group":"","filename":"integer"}', '{"multiple":"0","first":"1","last":"100","step":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_list","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_LIST_XML_DESCRIPTION","group":"","filename":"list"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_media","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_radio","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_RADIO_XML_DESCRIPTION","group":"","filename":"radio"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_sql","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_SQL_XML_DESCRIPTION","group":"","filename":"sql"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_text","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXT_XML_DESCRIPTION","group":"","filename":"text"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_textarea","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION","group":"","filename":"textarea"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_url","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_URL_XML_DESCRIPTION","group":"","filename":"url"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_user","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USER_XML_DESCRIPTION","group":"","filename":"user"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_usergrouplist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION","group":"","filename":"usergrouplist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{"name":"plg_content_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_CONTENT_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"August 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"August 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"August 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.5","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"August 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.5.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10000, 0, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"28 April 2017","author":"Joomla! Project","copyright":"Copyright (C) 2013-2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.1.1","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10001, 0, 'com_rsform', 'component', 'com_rsform', '', 1, 1, 0, 0, '{"name":"com_rsform","type":"component","creationDate":"February 2015","author":"RSJoomla!","copyright":"(C) 2007-2015 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.52.0","description":"COM_RSFORM_INSTALL_DESC","group":"","filename":"rsform"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10002, 0, 'TCPDF', 'library', 'tcpdf', '', 0, 1, 1, 0, '{"name":"TCPDF","type":"library","creationDate":"28 January 2011","author":"Nicola Asuni","copyright":"http:\\/\\/www.tcpdf.org","authorEmail":"","authorUrl":"http:\\/\\/www.tcpdf.org","version":"2.5.0","description":"Class for generating PDF files on-the-fly without requiring external extensions.","group":"","filename":"tcpdf"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10003, 0, 'plg_installer_rsform', 'plugin', 'rsform', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_rsform","type":"plugin","creationDate":"July 2015","author":"RSJoomla!","copyright":"(c) 2015 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"https:\\/\\/www.rsjoomla.com","version":"1.0.0","description":"PLG_INSTALLER_RSFORM_XML_DESCRIPTION","group":"","filename":"rsform"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10004, 10006, 'LithuanianLietuvi', 'language', 'lt-LT', '', 0, 1, 0, 0, '{"name":"Lithuanian (Lietuvi\\u0173)","type":"language","creationDate":"2015.07.03","author":"joomla123.lt","copyright":"Copyright (C) 2010 - 2015 joomla123.lt.","authorEmail":"","authorUrl":"","version":"3.4.3","description":"Lithuanian language pack for Joomla! 3.4.3","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10005, 10006, 'LithuanianLietuvi', 'language', 'lt-LT', '', 1, 1, 0, 0, '{"name":"Lithuanian (Lietuvi\\u0173)","type":"language","creationDate":"2015.07.03","author":"joomla123.lt","copyright":"Copyright (C) 2010 - 2015 joomla123.lt.","authorEmail":"","authorUrl":"","version":"3.4.3","description":"Lithuanian language pack for Joomla! 3.4.3","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10006, 0, 'Lithuanian Language Pack', 'package', 'pkg_lt-LT', '', 0, 1, 1, 0, '{"name":"Lithuanian Language Pack","type":"package","creationDate":"2015.07.03","author":"joomla123.lt","copyright":"","authorEmail":"","authorUrl":"","version":"3.4.3.1","description":"\\n\\n\\t<div style=\\"float:left;display:inline-block;\\">\\n    <img alt=\\"Joomla3\\" src=\\"http:\\/\\/www.joomla123.lt\\/images\\/stories\\/flexicontent\\/m_j3.jpg\\" \\/><\\/div>\\n    <div style=\\"margin-left:120px; padding: 8px 20px 8px 20px; background-color: #DFF0D8; border:1px dashed #08532f;\\">\\n    <span style=\\"font-size: 14pt;\\"><strong>Lietuvi\\u0173 kalbos paketas TVS Joomla 3.4.3<br\\/><br\\/>I\\u0161versta:<\\/span><br\\/>\\n\\t\\t  <img style=\\"margin: 0px 4px 0px 0px; vertical-align: middle;\\" alt=\\"lng_frontend\\" src=\\"http:\\/\\/www.joomla123.lt\\/images\\/stories\\/page_images\\/translation_icons\\/lng_frontend.png\\" width=\\"17\\" height=\\"17\\" \\/>i\\u0161orin\\u0117 s\\u0105saja (front-end)<br\\/>\\n\\t\\t  <img style=\\"margin: 0px 4px 0px 0px; vertical-align: middle;\\" alt=\\"lng_backend\\" src=\\"http:\\/\\/www.joomla123.lt\\/images\\/stories\\/page_images\\/translation_icons\\/lng_backend.png\\" width=\\"17\\" height=\\"17\\" \\/>vidin\\u0117 s\\u0105saja (back-end)<br\\/>\\n\\t\\t  <img style=\\"margin: 0px 4px 0px 0px; vertical-align: middle;\\" alt=\\"lng_ini\\" src=\\"http:\\/\\/www.joomla123.lt\\/images\\/stories\\/page_images\\/translation_icons\\/lng_ini.png\\" width=\\"17\\" height=\\"17\\" \\/>Saugus vertimas. Naudojami tik INI failai.<br\\/><\\/div>\\n     <\\/div>\\n    <div style=\\"clear:both;\\"><\\/div>\\n    <div style=\\"margin-left:120px; margin-top:20px; margin-bottom:10px; background-color: #DFF0D8; padding: 8px 20px 8px 20px; color:#08532f;\\tborder-top: 1px dashed #08532f ; border-bottom: 1px dashed #08532f;\\">\\n\\t\\t  <span style=\\"font-size: 9pt;\\">Vertim\\u0105 atliko Martis i\\u0161 <a target=\\"_blank\\" href=\\"http:\\/\\/www.joomla123.lt\\">Joomla123.lt<\\/a> komandos.<\\/span><\\/span><br\\/>\\n\\t\\t\\t<span style=\\"font-size: 8pt;\\">Jei norite prisijungti prie vertim\\u0173 komandos arba pasteb\\u0117jote vertimo klaid\\u0173, <a target=\\"_blank\\" href=\\"http:\\/\\/www.joomla123.lt\\/parasyk-mums\\">susisiekite su mumis<\\/a>.<\\/span><br\\/><\\/div>\\n\\t\\t\\n","group":"","filename":"pkg_lt-LT"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10007, 0, 'T3 Framework', 'plugin', 't3', 'system', 0, 1, 1, 0, '{"name":"T3 Framework","type":"plugin","creationDate":"Sep 06, 2017","author":"JoomlArt.com","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"info@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.6.7","description":"\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/static.joomlart.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2017 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":"","filename":"t3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10008, 0, 'com_jaextmanager', 'component', 'com_jaextmanager', '', 1, 1, 0, 0, '{"name":"com_jaextmanager","type":"component","creationDate":"Feb 2017","author":"JoomlArt","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.joomlart.com","version":"2.6.3","description":"JA Extension Manager Component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10009, 0, 'purity_III', 'template', 'purity_iii', '', 0, 1, 1, 0, '{"name":"purity_III","type":"template","creationDate":"19 May 2017","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"1.2.0","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<h2>Purity III Template references<\\/h2>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/joomla-templates.joomlart.com\\/purity_iii\\/\\" title=\\"Purity III Template demo\\">Live Demo<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/documentation\\/joomla-templates\\/purity-iii\\" title=\\"purity iii template documentation\\">Documentation<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?542-Purity-III\\" title=\\"purity iii forum\\">Forum<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/joomla\\/templates\\/purity-iii\\" title=\\"Purity III template more info\\">More Info<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\"color:#FF0000\\">Note: Purity III requires T3 plugin to be installed and enabled.<\\/span>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2017 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"templateDetails"}', '{"tpl_article_info_datetime_format":"d M Y"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10010, 10017, 'COM_JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"COM_JCE","type":"component","creationDate":"10-08-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.6.19","description":"COM_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10011, 10017, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"10-08-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.19","description":"WF_EDITOR_PLUGIN_DESC","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10012, 10017, 'plg_content_jce', 'plugin', 'jce', 'content', 0, 1, 1, 0, '{"name":"plg_content_jce","type":"plugin","creationDate":"10-08-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.19","description":"PLG_CONTENT_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10013, 10017, 'plg_extension_jce', 'plugin', 'jce', 'extension', 0, 1, 1, 0, '{"name":"plg_extension_jce","type":"plugin","creationDate":"10-08-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.19","description":"PLG_EXTENSION_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10014, 10017, 'plg_installer_jce', 'plugin', 'jce', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_jce","type":"plugin","creationDate":"10-08-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.19","description":"PLG_INSTALLER_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10015, 10017, 'plg_quickicon_jce', 'plugin', 'jce', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jce","type":"plugin","creationDate":"31-08-2016","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomalcontenteditor.net","version":"2.6.0-pro-beta3","description":"PLG_QUICKICON_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10016, 10017, 'plg_system_jce', 'plugin', 'jce', 'system', 0, 1, 1, 0, '{"name":"plg_system_jce","type":"plugin","creationDate":"10-08-2017","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.6.19","description":"PLG_SYSTEM_JCE_XML_DESCRIPTION","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10017, 0, 'PKG_JCE', 'package', 'pkg_jce', '', 0, 1, 1, 0, '{"name":"PKG_JCE","type":"package","creationDate":"10-08-2017","author":"Ryan Demmer","copyright":"","authorEmail":"","authorUrl":"","version":"2.6.19","description":"PKG_JCE_XML_DESCRIPTION","group":"","filename":"pkg_jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10018, 0, 'FOF30', 'library', 'lib_fof30', '', 0, 1, 1, 0, '{"name":"FOF30","type":"library","creationDate":"2017-09-12","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2010-2017 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"3.1.3","description":"\\n\\t\\t\\n\\t\\tFramework-on-Framework (FOF) 3.x - The rapid application development framework for Joomla!.<br\\/>\\n\\t\\t<b>WARNING<\\/b>: This is NOT a duplicate of the FOF library already installed with Joomla!. It is a different version used by other extensions on your site. Do NOT uninstall either FOF package. If you do you will break your site.\\n\\t\\t\\n\\t","group":"","filename":"lib_fof30"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10019, 10023, 'Akeeba', 'component', 'com_akeeba', '', 1, 1, 0, 0, '{"name":"Akeeba","type":"component","creationDate":"2017-09-12","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2017 Akeeba Ltd \\/ Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"5.6.0","description":"Akeeba Backup Core - Full Joomla! site backup solution, Core Edition.","group":"","filename":"akeeba"}', '{"confwiz_upgrade":1}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10020, 10023, 'plg_quickicon_akeebabackup', 'plugin', 'akeebabackup', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_akeebabackup","type":"plugin","creationDate":"2012-09-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2017 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"1.0","description":"PLG_QUICKICON_AKEEBABACKUP_XML_DESCRIPTION","group":"","filename":"akeebabackup"}', '{"context":"mod_quickicon","enablewarning":"1","warnfailed":"1","maxbackupperiod":"24","profileid":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10021, 10023, 'PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE', 'plugin', 'akeebaupdatecheck', 'system', 0, 0, 1, 0, '{"name":"PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE","type":"plugin","creationDate":"2011-05-26","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2017 Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"1.1","description":"PLG_AKEEBAUPDATECHECK_DESCRIPTION2","group":"","filename":"akeebaupdatecheck"}', '{"email":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10022, 10023, 'PLG_SYSTEM_BACKUPONUPDATE_TITLE', 'plugin', 'backuponupdate', 'system', 0, 0, 1, 0, '{"name":"PLG_SYSTEM_BACKUPONUPDATE_TITLE","type":"plugin","creationDate":"2013-08-13","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2017 Nicholas K. Dionysopoulos","authorEmail":"nicholas@dionysopoulos.me","authorUrl":"http:\\/\\/www.akeebabackup.com","version":"3.7","description":"PLG_SYSTEM_BACKUPONUPDATE_DESCRIPTION","group":"","filename":"backuponupdate"}', '{"profileid":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10023, 0, 'Akeeba Backup package', 'package', 'pkg_akeeba', '', 0, 1, 1, 0, '{"name":"Akeeba Backup package","type":"package","creationDate":"2017-09-12","author":"Nicholas K. Dionysopoulos","copyright":"Copyright (c)2006-2017 Akeeba Ltd \\/ Nicholas K. Dionysopoulos","authorEmail":"","authorUrl":"","version":"5.6.0","description":"Akeeba Backup installation package v.5.6.0","group":"","filename":"pkg_akeeba"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10024, 0, 'RSFirewall!', 'component', 'com_rsfirewall', '', 1, 1, 0, 0, '{"name":"RSFirewall!","type":"component","creationDate":"May 2015","author":"RSJoomla!","copyright":"(C) 2009-2016 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"2.11.4","description":"COM_RSFIREWALL_INSTALL_DESC","group":"","filename":"rsfirewall"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10025, 0, 'System - RSFirewall! Active Scanner', 'plugin', 'rsfirewall', 'system', 0, 1, 1, 0, '{"name":"System - RSFirewall! Active Scanner","type":"plugin","creationDate":"October 2012","author":"RSJoomla!","copyright":"(C) 2009-2012 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.4.0","description":"PLG_SYSTEM_RSFIREWALL_DESC","group":"","filename":"rsfirewall"}', '{}', '', '', 0, '0000-00-00 00:00:00', -999, 0);
INSERT INTO `aj14x_extensions` VALUES (10026, 0, 'plg_installer_rsfirewall', 'plugin', 'rsfirewall', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_rsfirewall","type":"plugin","creationDate":"June 2015","author":"RSJoomla!","copyright":"(c) 2015 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"https:\\/\\/www.rsjoomla.com","version":"1.0.0","description":"PLG_INSTALLER_RSFIREWALL_XML_DESCRIPTION","group":"","filename":"rsfirewall"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `aj14x_extensions` VALUES (10027, 0, 'RSFirewall! Control Panel Module', 'module', 'mod_rsfirewall', '', 1, 1, 2, 0, '{"name":"RSFirewall! Control Panel Module","type":"module","creationDate":"October 2012","author":"RSJoomla!","copyright":"(C) 2009-2012 www.rsjoomla.com","authorEmail":"support@rsjoomla.com","authorUrl":"www.rsjoomla.com","version":"1.4.0","description":"MOD_RSFIREWALL_DESC","group":"","filename":"mod_rsfirewall"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_fields`
-- 

CREATE TABLE `aj14x_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_fields`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_fields_categories`
-- 

CREATE TABLE `aj14x_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_fields_categories`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_fields_groups`
-- 

CREATE TABLE `aj14x_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_fields_groups`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_fields_values`
-- 

CREATE TABLE `aj14x_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_fields_values`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_filters`
-- 

CREATE TABLE `aj14x_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_filters`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links`
-- 

CREATE TABLE `aj14x_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_terms0`
-- 

CREATE TABLE `aj14x_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_terms0`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_terms1`
-- 

CREATE TABLE `aj14x_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_terms1`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_terms2`
-- 

CREATE TABLE `aj14x_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_terms2`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_terms3`
-- 

CREATE TABLE `aj14x_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_terms3`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_terms4`
-- 

CREATE TABLE `aj14x_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_terms4`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_terms5`
-- 

CREATE TABLE `aj14x_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_terms5`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_terms6`
-- 

CREATE TABLE `aj14x_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_terms6`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_terms7`
-- 

CREATE TABLE `aj14x_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_terms7`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_terms8`
-- 

CREATE TABLE `aj14x_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_terms8`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_terms9`
-- 

CREATE TABLE `aj14x_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_terms9`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_termsa`
-- 

CREATE TABLE `aj14x_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_termsa`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_termsb`
-- 

CREATE TABLE `aj14x_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_termsb`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_termsc`
-- 

CREATE TABLE `aj14x_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_termsc`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_termsd`
-- 

CREATE TABLE `aj14x_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_termsd`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_termse`
-- 

CREATE TABLE `aj14x_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_termse`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_links_termsf`
-- 

CREATE TABLE `aj14x_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_links_termsf`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_taxonomy`
-- 

CREATE TABLE `aj14x_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_taxonomy`
-- 

INSERT INTO `aj14x_finder_taxonomy` VALUES (1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_taxonomy_map`
-- 

CREATE TABLE `aj14x_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_taxonomy_map`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_terms`
-- 

CREATE TABLE `aj14x_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_terms`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_terms_common`
-- 

CREATE TABLE `aj14x_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_terms_common`
-- 

INSERT INTO `aj14x_finder_terms_common` VALUES ('a', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('about', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('after', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('ago', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('all', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('am', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('an', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('and', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('any', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('are', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('aren''t', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('as', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('at', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('be', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('but', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('by', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('for', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('from', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('get', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('go', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('how', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('if', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('in', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('into', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('is', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('isn''t', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('it', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('its', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('me', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('more', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('most', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('must', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('my', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('new', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('no', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('none', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('not', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('nothing', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('of', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('off', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('often', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('old', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('on', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('onc', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('once', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('only', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('or', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('other', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('our', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('ours', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('out', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('over', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('page', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('she', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('should', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('small', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('so', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('some', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('than', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('thank', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('that', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('the', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('their', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('theirs', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('them', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('then', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('there', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('these', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('they', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('this', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('those', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('thus', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('time', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('times', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('to', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('too', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('true', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('under', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('until', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('up', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('upon', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('use', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('user', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('users', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('version', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('very', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('via', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('want', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('was', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('way', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('were', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('what', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('when', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('where', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('which', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('who', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('whom', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('whose', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('why', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('wide', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('will', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('with', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('within', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('without', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('would', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('yes', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('yet', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('you', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('your', 'en');
INSERT INTO `aj14x_finder_terms_common` VALUES ('yours', 'en');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_tokens`
-- 

CREATE TABLE `aj14x_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_tokens`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_tokens_aggregate`
-- 

CREATE TABLE `aj14x_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_tokens_aggregate`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_finder_types`
-- 

CREATE TABLE `aj14x_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_finder_types`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_jaem_log`
-- 

CREATE TABLE `aj14x_jaem_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ext_id` varchar(50) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `check_date` datetime DEFAULT NULL,
  `check_info` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ext_id` (`ext_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_jaem_log`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_languages`
-- 

CREATE TABLE `aj14x_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_languages`
-- 

INSERT INTO `aj14x_languages` VALUES (1, 0, 0x656e2d4742, 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2);
INSERT INTO `aj14x_languages` VALUES (2, 56, 0x6c742d4c54, 'Lithuanian (lt-LT)', 'Lithuanian (lt-LT)', 'lt', 'lt_lt', '', '', '', '', 0, 1, 1);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_menu`
-- 

CREATE TABLE `aj14x_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=128 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_menu`
-- 

INSERT INTO `aj14x_menu` VALUES (1, '', 'Menu_Item_Root', 0x726f6f74, '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 95, 0, '*', 0);
INSERT INTO `aj14x_menu` VALUES (2, 'main', 'com_banners', 0x42616e6e657273, '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (3, 'main', 'com_banners', 0x42616e6e657273, '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (4, 'main', 'com_banners_categories', 0x43617465676f72696573, '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (5, 'main', 'com_banners_clients', 0x436c69656e7473, '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (6, 'main', 'com_banners_tracks', 0x547261636b73, '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (7, 'main', 'com_contact', 0x436f6e7461637473, '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 19, 24, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (8, 'main', 'com_contact_contacts', 0x436f6e7461637473, '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 20, 21, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (9, 'main', 'com_contact_categories', 0x43617465676f72696573, '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 22, 23, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (10, 'main', 'com_messages', 0x4d6573736167696e67, '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 25, 28, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (11, 'main', 'com_messages_add', 0x4e65772050726976617465204d657373616765, '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 26, 27, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (13, 'main', 'com_newsfeeds', 0x4e657773204665656473, '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 29, 34, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (14, 'main', 'com_newsfeeds_feeds', 0x4665656473, '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 30, 31, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (15, 'main', 'com_newsfeeds_categories', 0x43617465676f72696573, '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 32, 33, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (16, 'main', 'com_redirect', 0x5265646972656374, '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 35, 36, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (17, 'main', 'com_search', 0x426173696320536561726368, '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 37, 38, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (18, 'main', 'com_finder', 0x536d61727420536561726368, '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (19, 'main', 'com_joomlaupdate', 0x4a6f6f6d6c612120557064617465, '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (20, 'main', 'com_tags', 0x54616773, '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (21, 'main', 'com_postinstall', 0x506f73742d696e7374616c6c6174696f6e206d65737361676573, '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (22, 'main', 'com_associations', 0x4d756c74696c696e6775616c204173736f63696174696f6e73, '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 47, 48, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (101, 'mainmenu', 'Pradžia', 0x686f6d65, '', 'home', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","info_block_show_title":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_associations":"1","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"KILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u016bs\\u0173 problemas.","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"Norite perimti bizn\\u012f i\\u0161 verslo partnerio? Trukdo konkurentai? Ne\\u017einote kaip atsikratyti savo vyro meilu\\u017e\\u0117s?\\r\\nKILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u016bs\\u0173 problemas.","menu-meta_keywords":"kileris, samdomas \\u017eudikas, konkurent\\u0173 \\u0161alinimas, \\u017eudymas u\\u017e pinigus, u\\u017esakomos \\u017emog\\u017eudyst\\u0117s","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 11, 12, 1, '*', 0);
INSERT INTO `aj14x_menu` VALUES (102, 'main', 'RSFormPro', 0x7273666f726d70726f, '', 'rsformpro', 'index.php?option=com_rsform', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rsform/assets/images/rsformpro.gif', 0, '{}', 49, 62, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (103, 'main', 'COM_RSFORM_MANAGE_FORMS', 0x636f6d2d7273666f726d2d6d616e6167652d666f726d73, '', 'rsformpro/com-rsform-manage-forms', 'index.php?option=com_rsform&view=forms', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 50, 51, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (104, 'main', 'COM_RSFORM_MANAGE_SUBMISSIONS', 0x636f6d2d7273666f726d2d6d616e6167652d7375626d697373696f6e73, '', 'rsformpro/com-rsform-manage-submissions', 'index.php?option=com_rsform&view=submissions', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 52, 53, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (105, 'main', 'COM_RSFORM_MANAGE_DIRECTORY_SUBMISSIONS', 0x636f6d2d7273666f726d2d6d616e6167652d6469726563746f72792d7375626d697373696f6e73, '', 'rsformpro/com-rsform-manage-directory-submissions', 'index.php?option=com_rsform&view=directory', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 54, 55, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (106, 'main', 'COM_RSFORM_CONFIGURATION', 0x636f6d2d7273666f726d2d636f6e66696775726174696f6e, '', 'rsformpro/com-rsform-configuration', 'index.php?option=com_rsform&view=configuration', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 56, 57, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (107, 'main', 'COM_RSFORM_BACKUP_RESTORE', 0x636f6d2d7273666f726d2d6261636b75702d726573746f7265, '', 'rsformpro/com-rsform-backup-restore', 'index.php?option=com_rsform&view=backuprestore', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 58, 59, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (108, 'main', 'COM_RSFORM_UPDATES', 0x636f6d2d7273666f726d2d75706461746573, '', 'rsformpro/com-rsform-updates', 'index.php?option=com_rsform&view=updates', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 60, 61, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (109, 'main', 'COM_JAEXTMANAGER', 0x636f6d2d6a616578746d616e61676572, '', 'com-jaextmanager', 'index.php?option=com_jaextmanager', 'component', 1, 1, 1, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jaextmanager/assets/images/jauc.png', 0, '{}', 63, 64, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (110, 'mainmenu', 'Užsakymai', 0x757a73616b796d6169, '', 'uzsakymai', 'index.php?option=com_rsform&view=rsform&formId=1', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 13, 14, 0, '*', 0);
INSERT INTO `aj14x_menu` VALUES (111, 'mainmenu', 'Kainos', 0x6b61696e6f73, '', 'kainos', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_associations":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 15, 16, 0, '*', 0);
INSERT INTO `aj14x_menu` VALUES (112, 'menu', 'Užsakymų sąrašas', 0x757a73616b796d752d73617261736173, '', 'uzsakymu-sarasas', 'index.php?option=com_rsform&view=submissions', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"formId":"1","lang":"","enable_submissions":"1","show_search":"1","sort_submissions":"0","userId":"0","show_confirmed":"0","template_module":"<table width=\\"100%\\">{formdata}<\\/table>","template_formdatarow":"<tr><td>{details}{FullName:value}{\\/details}<\\/td><td>{Adress:value}<\\/td><td>{Photo:value}<\\/td><td>{Position:value}<\\/td><td>{Email:value}<\\/td><\\/tr>","template_formdetail":"<table width=\\"100%\\"><tr><td>{FullName:value}<\\/td><td>{Adress:value}<\\/td><td>{Photo:value}<\\/td><td>{Position:value}<\\/td><td>{Email:value}<\\/td><\\/tr><\\/table>","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":""}', 17, 18, 0, '*', 0);
INSERT INTO `aj14x_menu` VALUES (113, 'main', 'COM_JCE', 0x636f6d2d6a6365, '', 'com-jce', 'index.php?option=com_jce', 'component', 1, 1, 1, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '{}', 65, 72, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (114, 'main', 'COM_JCE_MENU_CPANEL', 0x636f6d2d6a63652d6d656e752d6370616e656c, '', 'com-jce/com-jce-menu-cpanel', 'index.php?option=com_jce', 'component', 1, 113, 2, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 66, 67, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (115, 'main', 'COM_JCE_MENU_CONFIG', 0x636f6d2d6a63652d6d656e752d636f6e666967, '', 'com-jce/com-jce-menu-config', 'index.php?option=com_jce&view=config', 'component', 1, 113, 2, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 68, 69, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (116, 'main', 'COM_JCE_MENU_PROFILES', 0x636f6d2d6a63652d6d656e752d70726f66696c6573, '', 'com-jce/com-jce-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 1, 113, 2, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 70, 71, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (117, 'main', 'COM_AKEEBA', 0x636f6d2d616b65656261, '', 'com-akeeba', 'index.php?option=com_akeeba', 'component', 1, 1, 1, 10019, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_akeeba/icons/akeeba-16.png', 0, '{}', 73, 74, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (118, 'main', 'RSFirewall', 0x72736669726577616c6c, '', 'rsfirewall', 'index.php?option=com_rsfirewall', 'component', 1, 1, 1, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rsfirewall/assets/images/rsfirewall.gif', 0, '{}', 75, 94, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (119, 'main', 'COM_RSFIREWALL_OVERVIEW', 0x636f6d2d72736669726577616c6c2d6f76657276696577, '', 'rsfirewall/com-rsfirewall-overview', 'index.php?option=com_rsfirewall', 'component', 1, 118, 2, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 76, 77, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (120, 'main', 'COM_RSFIREWALL_SYSTEM_CHECK', 0x636f6d2d72736669726577616c6c2d73797374656d2d636865636b, '', 'rsfirewall/com-rsfirewall-system-check', 'index.php?option=com_rsfirewall&view=check', 'component', 1, 118, 2, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 78, 79, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (121, 'main', 'COM_RSFIREWALL_DATABASE_CHECK', 0x636f6d2d72736669726577616c6c2d64617461626173652d636865636b, '', 'rsfirewall/com-rsfirewall-database-check', 'index.php?option=com_rsfirewall&view=dbcheck', 'component', 1, 118, 2, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 80, 81, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (122, 'main', 'COM_RSFIREWALL_SYSTEM_LOGS', 0x636f6d2d72736669726577616c6c2d73797374656d2d6c6f6773, '', 'rsfirewall/com-rsfirewall-system-logs', 'index.php?option=com_rsfirewall&view=logs', 'component', 1, 118, 2, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 82, 83, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (123, 'main', 'COM_RSFIREWALL_FIREWALL_CONFIGURATION', 0x636f6d2d72736669726577616c6c2d6669726577616c6c2d636f6e66696775726174696f6e, '', 'rsfirewall/com-rsfirewall-firewall-configuration', 'index.php?option=com_rsfirewall&view=configuration', 'component', 1, 118, 2, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 84, 85, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (124, 'main', 'COM_RSFIREWALL_LISTS', 0x636f6d2d72736669726577616c6c2d6c69737473, '', 'rsfirewall/com-rsfirewall-lists', 'index.php?option=com_rsfirewall&view=lists', 'component', 1, 118, 2, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 86, 87, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (125, 'main', 'COM_RSFIREWALL_EXCEPTIONS', 0x636f6d2d72736669726577616c6c2d657863657074696f6e73, '', 'rsfirewall/com-rsfirewall-exceptions', 'index.php?option=com_rsfirewall&view=exceptions', 'component', 1, 118, 2, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 88, 89, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (126, 'main', 'COM_RSFIREWALL_RSS_FEEDS_CONFIGURATION', 0x636f6d2d72736669726577616c6c2d7273732d66656564732d636f6e66696775726174696f6e, '', 'rsfirewall/com-rsfirewall-rss-feeds-configuration', 'index.php?option=com_rsfirewall&view=feeds', 'component', 1, 118, 2, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 90, 91, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (127, 'main', 'COM_RSFIREWALL_UPDATES', 0x636f6d2d72736669726577616c6c2d75706461746573, '', 'rsfirewall/com-rsfirewall-updates', 'index.php?option=com_rsfirewall&view=updates', 'component', 1, 118, 2, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 92, 93, 0, '', 1);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_menu_types`
-- 

CREATE TABLE `aj14x_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_menu_types`
-- 

INSERT INTO `aj14x_menu_types` VALUES (1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);
INSERT INTO `aj14x_menu_types` VALUES (2, 62, 'menu', 'Nematomas', '', 0);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_messages`
-- 

CREATE TABLE `aj14x_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_messages`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_messages_cfg`
-- 

CREATE TABLE `aj14x_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_messages_cfg`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_modules`
-- 

CREATE TABLE `aj14x_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=88 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_modules`
-- 

INSERT INTO `aj14x_modules` VALUES (1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*');
INSERT INTO `aj14x_modules` VALUES (2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*');
INSERT INTO `aj14x_modules` VALUES (3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');
INSERT INTO `aj14x_modules` VALUES (4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');
INSERT INTO `aj14x_modules` VALUES (8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*');
INSERT INTO `aj14x_modules` VALUES (9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*');
INSERT INTO `aj14x_modules` VALUES (10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');
INSERT INTO `aj14x_modules` VALUES (12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*');
INSERT INTO `aj14x_modules` VALUES (13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*');
INSERT INTO `aj14x_modules` VALUES (14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*');
INSERT INTO `aj14x_modules` VALUES (15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*');
INSERT INTO `aj14x_modules` VALUES (16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*');
INSERT INTO `aj14x_modules` VALUES (17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*');
INSERT INTO `aj14x_modules` VALUES (79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');
INSERT INTO `aj14x_modules` VALUES (86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');
INSERT INTO `aj14x_modules` VALUES (87, 65, 'RSFirewall! Control Panel Module', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rsfirewall', 1, 1, '', 1, '*');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_modules_menu`
-- 

CREATE TABLE `aj14x_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_modules_menu`
-- 

INSERT INTO `aj14x_modules_menu` VALUES (1, 0);
INSERT INTO `aj14x_modules_menu` VALUES (2, 0);
INSERT INTO `aj14x_modules_menu` VALUES (3, 0);
INSERT INTO `aj14x_modules_menu` VALUES (4, 0);
INSERT INTO `aj14x_modules_menu` VALUES (6, 0);
INSERT INTO `aj14x_modules_menu` VALUES (7, 0);
INSERT INTO `aj14x_modules_menu` VALUES (8, 0);
INSERT INTO `aj14x_modules_menu` VALUES (9, 0);
INSERT INTO `aj14x_modules_menu` VALUES (10, 0);
INSERT INTO `aj14x_modules_menu` VALUES (12, 0);
INSERT INTO `aj14x_modules_menu` VALUES (13, 0);
INSERT INTO `aj14x_modules_menu` VALUES (14, 0);
INSERT INTO `aj14x_modules_menu` VALUES (15, 0);
INSERT INTO `aj14x_modules_menu` VALUES (16, 0);
INSERT INTO `aj14x_modules_menu` VALUES (17, 0);
INSERT INTO `aj14x_modules_menu` VALUES (79, 0);
INSERT INTO `aj14x_modules_menu` VALUES (86, 0);
INSERT INTO `aj14x_modules_menu` VALUES (87, 0);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_newsfeeds`
-- 

CREATE TABLE `aj14x_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_newsfeeds`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_overrider`
-- 

CREATE TABLE `aj14x_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_overrider`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_postinstall_messages`
-- 

CREATE TABLE `aj14x_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_postinstall_messages`
-- 

INSERT INTO `aj14x_postinstall_messages` VALUES (1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1);
INSERT INTO `aj14x_postinstall_messages` VALUES (2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);
INSERT INTO `aj14x_postinstall_messages` VALUES (3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);
INSERT INTO `aj14x_postinstall_messages` VALUES (4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);
INSERT INTO `aj14x_postinstall_messages` VALUES (5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1);
INSERT INTO `aj14x_postinstall_messages` VALUES (6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_redirect_links`
-- 

CREATE TABLE `aj14x_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_redirect_links`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsfirewall_configuration`
-- 

CREATE TABLE `aj14x_rsfirewall_configuration` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(16) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsfirewall_configuration`
-- 

INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('abusive_ips', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('active_scanner_status', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('active_scanner_status_backend', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('admin_users', '', 'array-int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('autoban_attempts', '10', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('backend_captcha', '3', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('backend_password', '', 'text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('backend_password_enabled', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('blocked_countries', '', 'array-text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('capture_backend_login', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('capture_backend_password', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('check_proxy_ip_headers', 'HTTP_X_REAL_IP\nHTTP_CLIENT_IP\nHTTP_TRUE_CLIENT_IP\nHTTP_X_FWD_IP_ADDR\nHTTP_X_FORWARDED_FOR\nHTTP_X_FORWARDED\nHTTP_FORWARDED_FOR\nHTTP_FORWARDED\nHTTP_VIA\nHTTP_X_COMING_FROM\nHTTP_COMING_FROM', 'array-text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('code', '', 'text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('deny_referer', '', 'text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('disable_installer', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('disable_new_admin_users', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('enable_autoban', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('enable_autoban_login', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('enable_backend_captcha', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('enable_extra_logging', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('enable_js_for', 'post', 'array-text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('enable_php_for', 'get', 'array-text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('enable_sql_for', 'get', 'array-text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('file_permissions', '644', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('filter_js', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('filter_uploads', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('folder_permissions', '755', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('google_safebrowsing_api_key', '', 'text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('grade', '82', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('ipv4_whois', 'http://whois.domaintools.com/{ip}', 'text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('ipv6_whois', '', 'text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('lfi', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('log_alert_level', '', 'array-text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('log_emails', 'virgismankus@gmail.com', 'text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('log_emails_count', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('log_emails_send_after', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('log_history', '30', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('log_hour_limit', '50', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('log_overview', '5', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('log_system_check', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('monitor_core', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('monitor_users', '', 'array-int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('offset', '300', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('request_timeout', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('rfi', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('system_check_last_run', '2017-09-18 05:06:18', 'text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('verify_agents', 'perl\ncurl\njava', 'array-text');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('verify_emails', '0', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('verify_generator', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('verify_multiple_exts', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('verify_upload', '1', 'int');
INSERT INTO `aj14x_rsfirewall_configuration` VALUES ('verify_upload_blacklist_exts', 'pht\r\nphp\r\njs\r\nexe\r\ncom\r\nbat\r\ncmd\r\nmp3', 'text');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsfirewall_exceptions`
-- 

CREATE TABLE `aj14x_rsfirewall_exceptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(4) NOT NULL,
  `regex` tinyint(1) NOT NULL,
  `match` text NOT NULL,
  `php` tinyint(1) NOT NULL,
  `sql` tinyint(1) NOT NULL,
  `js` tinyint(1) NOT NULL,
  `uploads` tinyint(1) NOT NULL,
  `reason` text NOT NULL,
  `date` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsfirewall_exceptions`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsfirewall_feeds`
-- 

CREATE TABLE `aj14x_rsfirewall_feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `limit` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsfirewall_feeds`
-- 

INSERT INTO `aj14x_rsfirewall_feeds` VALUES (1, 'http://feeds.joomla.org/JoomlaSecurityNews', 5, 1, 0);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsfirewall_hashes`
-- 

CREATE TABLE `aj14x_rsfirewall_hashes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` text NOT NULL,
  `hash` varchar(32) NOT NULL,
  `type` varchar(64) NOT NULL,
  `flag` varchar(1) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsfirewall_hashes`
-- 

INSERT INTO `aj14x_rsfirewall_hashes` VALUES (1, 'plugins/user/joomla/joomla.php', '37c680d3f1965de56b6907731392055f', '2.5.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (2, 'plugins/authentication/joomla/joomla.php', '493aa7e7fdcc8810d20c852ac8793ca5', '2.5.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (3, 'index.php', '7b8842445269965a434c7bae60db279d', '2.5.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (4, 'administrator/index.php', '43aa843ec0f3bbb0c0ee7654378a6470', '2.5.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (5, 'plugins/user/joomla/joomla.php', '37c680d3f1965de56b6907731392055f', '2.5.8', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (6, 'plugins/authentication/joomla/joomla.php', '493aa7e7fdcc8810d20c852ac8793ca5', '2.5.8', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (7, 'index.php', '7b8842445269965a434c7bae60db279d', '2.5.8', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (8, 'administrator/index.php', '43aa843ec0f3bbb0c0ee7654378a6470', '2.5.8', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (9, 'plugins/user/joomla/joomla.php', '37c680d3f1965de56b6907731392055f', '2.5.9', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (10, 'plugins/authentication/joomla/joomla.php', 'ac4e4c99f29c34feffabfa7521ca1c06', '2.5.9', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (11, 'index.php', '9d9b87b6e0d9e7caa1bddb5c34fd2097', '2.5.9', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (12, 'administrator/index.php', '49008f8372adc026f2c4229c4dddb717', '2.5.9', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (13, 'plugins/user/joomla/joomla.php', '37c680d3f1965de56b6907731392055f', '2.5.10', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (14, 'plugins/authentication/joomla/joomla.php', 'ac4e4c99f29c34feffabfa7521ca1c06', '2.5.10', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (15, 'index.php', '9d9b87b6e0d9e7caa1bddb5c34fd2097', '2.5.10', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (16, 'administrator/index.php', '49008f8372adc026f2c4229c4dddb717', '2.5.10', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (17, 'plugins/user/joomla/joomla.php', '37c680d3f1965de56b6907731392055f', '2.5.11', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (18, 'plugins/authentication/joomla/joomla.php', 'ac4e4c99f29c34feffabfa7521ca1c06', '2.5.11', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (19, 'index.php', '9d9b87b6e0d9e7caa1bddb5c34fd2097', '2.5.11', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (20, 'administrator/index.php', '49008f8372adc026f2c4229c4dddb717', '2.5.11', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (21, 'plugins/user/joomla/joomla.php', '37c680d3f1965de56b6907731392055f', '2.5.13', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (22, 'plugins/authentication/joomla/joomla.php', 'ac4e4c99f29c34feffabfa7521ca1c06', '2.5.13', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (23, 'index.php', '9d9b87b6e0d9e7caa1bddb5c34fd2097', '2.5.13', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (24, 'administrator/index.php', '49008f8372adc026f2c4229c4dddb717', '2.5.13', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (25, 'plugins/user/joomla/joomla.php', '37c680d3f1965de56b6907731392055f', '2.5.14', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (26, 'plugins/authentication/joomla/joomla.php', 'ac4e4c99f29c34feffabfa7521ca1c06', '2.5.14', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (27, 'index.php', '9d9b87b6e0d9e7caa1bddb5c34fd2097', '2.5.14', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (28, 'administrator/index.php', '49008f8372adc026f2c4229c4dddb717', '2.5.14', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (29, 'plugins/user/joomla/joomla.php', '37c680d3f1965de56b6907731392055f', '2.5.15', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (30, 'plugins/authentication/joomla/joomla.php', 'ac4e4c99f29c34feffabfa7521ca1c06', '2.5.15', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (31, 'index.php', '9d9b87b6e0d9e7caa1bddb5c34fd2097', '2.5.15', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (32, 'administrator/index.php', '49008f8372adc026f2c4229c4dddb717', '2.5.15', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (33, 'plugins/user/joomla/joomla.php', '37c680d3f1965de56b6907731392055f', '2.5.16', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (34, 'plugins/authentication/joomla/joomla.php', 'ac4e4c99f29c34feffabfa7521ca1c06', '2.5.16', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (35, 'index.php', '9d9b87b6e0d9e7caa1bddb5c34fd2097', '2.5.16', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (36, 'administrator/index.php', '49008f8372adc026f2c4229c4dddb717', '2.5.16', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (37, 'plugins/user/joomla/joomla.php', '37c680d3f1965de56b6907731392055f', '2.5.17', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (38, 'plugins/authentication/joomla/joomla.php', 'ac4e4c99f29c34feffabfa7521ca1c06', '2.5.17', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (39, 'index.php', '9d9b87b6e0d9e7caa1bddb5c34fd2097', '2.5.17', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (40, 'administrator/index.php', '49008f8372adc026f2c4229c4dddb717', '2.5.17', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (41, 'plugins/user/joomla/joomla.php', 'ae2b6a2ec8f679c30371a9f072d7ec38', '2.5.18', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (42, 'plugins/authentication/joomla/joomla.php', 'fa5ba418dfeec06e43a743b82bf45ea4', '2.5.18', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (43, 'index.php', 'd2fefc268e09cc618b02cf813a225699', '2.5.18', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (44, 'administrator/index.php', '4de85447c89483e1dbcdf669e897351f', '2.5.18', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (45, 'plugins/user/joomla/joomla.php', 'ae2b6a2ec8f679c30371a9f072d7ec38', '2.5.19', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (46, 'plugins/authentication/joomla/joomla.php', 'fa5ba418dfeec06e43a743b82bf45ea4', '2.5.19', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (47, 'index.php', 'd2fefc268e09cc618b02cf813a225699', '2.5.19', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (48, 'administrator/index.php', '4de85447c89483e1dbcdf669e897351f', '2.5.19', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (49, 'plugins/user/joomla/joomla.php', 'ae2b6a2ec8f679c30371a9f072d7ec38', '2.5.20', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (50, 'plugins/authentication/joomla/joomla.php', 'fa5ba418dfeec06e43a743b82bf45ea4', '2.5.20', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (51, 'index.php', 'd2fefc268e09cc618b02cf813a225699', '2.5.20', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (52, 'administrator/index.php', '4de85447c89483e1dbcdf669e897351f', '2.5.20', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (53, 'plugins/user/joomla/joomla.php', 'ae2b6a2ec8f679c30371a9f072d7ec38', '2.5.21', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (54, 'plugins/authentication/joomla/joomla.php', 'fa5ba418dfeec06e43a743b82bf45ea4', '2.5.21', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (55, 'index.php', 'd2fefc268e09cc618b02cf813a225699', '2.5.21', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (56, 'administrator/index.php', '4de85447c89483e1dbcdf669e897351f', '2.5.21', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (57, 'plugins/user/joomla/joomla.php', 'ae2b6a2ec8f679c30371a9f072d7ec38', '2.5.22', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (58, 'plugins/authentication/joomla/joomla.php', 'fa5ba418dfeec06e43a743b82bf45ea4', '2.5.22', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (59, 'index.php', 'd2fefc268e09cc618b02cf813a225699', '2.5.22', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (60, 'administrator/index.php', '4de85447c89483e1dbcdf669e897351f', '2.5.22', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (61, 'plugins/user/joomla/joomla.php', 'ae2b6a2ec8f679c30371a9f072d7ec38', '2.5.23', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (62, 'plugins/authentication/joomla/joomla.php', 'fa5ba418dfeec06e43a743b82bf45ea4', '2.5.23', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (63, 'index.php', 'd2fefc268e09cc618b02cf813a225699', '2.5.23', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (64, 'administrator/index.php', '4de85447c89483e1dbcdf669e897351f', '2.5.23', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (65, 'plugins/user/joomla/joomla.php', 'ae2b6a2ec8f679c30371a9f072d7ec38', '2.5.24', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (66, 'plugins/authentication/joomla/joomla.php', 'fa5ba418dfeec06e43a743b82bf45ea4', '2.5.24', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (67, 'index.php', 'd2fefc268e09cc618b02cf813a225699', '2.5.24', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (68, 'administrator/index.php', '4de85447c89483e1dbcdf669e897351f', '2.5.24', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (69, 'plugins/user/joomla/joomla.php', 'ae2b6a2ec8f679c30371a9f072d7ec38', '2.5.25', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (70, 'plugins/authentication/joomla/joomla.php', 'fa5ba418dfeec06e43a743b82bf45ea4', '2.5.25', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (71, 'index.php', 'd2fefc268e09cc618b02cf813a225699', '2.5.25', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (72, 'administrator/index.php', '4de85447c89483e1dbcdf669e897351f', '2.5.25', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (73, 'plugins/user/joomla/joomla.php', 'ae2b6a2ec8f679c30371a9f072d7ec38', '2.5.26', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (74, 'plugins/authentication/joomla/joomla.php', 'fa5ba418dfeec06e43a743b82bf45ea4', '2.5.26', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (75, 'index.php', 'd2fefc268e09cc618b02cf813a225699', '2.5.26', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (76, 'administrator/index.php', '4de85447c89483e1dbcdf669e897351f', '2.5.26', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (77, 'plugins/user/joomla/joomla.php', 'ae2b6a2ec8f679c30371a9f072d7ec38', '2.5.27', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (78, 'plugins/authentication/joomla/joomla.php', 'fa5ba418dfeec06e43a743b82bf45ea4', '2.5.27', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (79, 'index.php', 'd2fefc268e09cc618b02cf813a225699', '2.5.27', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (80, 'administrator/index.php', '4de85447c89483e1dbcdf669e897351f', '2.5.27', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (81, 'plugins/user/joomla/joomla.php', 'cdc25e22efba44c2ee96765f7f29fc94', '3.0.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (82, 'plugins/authentication/joomla/joomla.php', '8ed6639864a180fbc2206a44441a8b7d', '3.0.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (83, 'index.php', '5ef1a5edf66502c473de1439650b7157', '3.0.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (84, 'administrator/index.php', 'ee513c632afbd46b64cb6ddb11579862', '3.0.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (85, 'plugins/user/joomla/joomla.php', 'cdc25e22efba44c2ee96765f7f29fc94', '3.0.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (86, 'plugins/authentication/joomla/joomla.php', '8ed6639864a180fbc2206a44441a8b7d', '3.0.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (87, 'index.php', '5ef1a5edf66502c473de1439650b7157', '3.0.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (88, 'administrator/index.php', 'ee513c632afbd46b64cb6ddb11579862', '3.0.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (89, 'plugins/user/joomla/joomla.php', 'cdc25e22efba44c2ee96765f7f29fc94', '3.0.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (90, 'plugins/authentication/joomla/joomla.php', '8ed6639864a180fbc2206a44441a8b7d', '3.0.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (91, 'index.php', '5ef1a5edf66502c473de1439650b7157', '3.0.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (92, 'administrator/index.php', 'ee513c632afbd46b64cb6ddb11579862', '3.0.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (93, 'plugins/user/joomla/joomla.php', '9fd830d97736f5f7536f6f9c7e180995', '3.0.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (94, 'plugins/authentication/joomla/joomla.php', '6f323887899ea20d4dc5a42ef99b9176', '3.0.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (95, 'index.php', 'd5a79d6d4694694a225a6b9a678ec6b1', '3.0.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (96, 'administrator/index.php', '3527f9b34bd165f74e91c9425e8cc85a', '3.0.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (97, 'plugins/user/joomla/joomla.php', '9fd830d97736f5f7536f6f9c7e180995', '3.0.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (98, 'plugins/authentication/joomla/joomla.php', '6f323887899ea20d4dc5a42ef99b9176', '3.0.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (99, 'index.php', 'd5a79d6d4694694a225a6b9a678ec6b1', '3.0.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (100, 'administrator/index.php', '3527f9b34bd165f74e91c9425e8cc85a', '3.0.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (101, 'plugins/user/joomla/joomla.php', '3cd9d1f8beff4cad347fe808d8e48acf', '3.1.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (102, 'plugins/authentication/joomla/joomla.php', '37ef6204d8dfcd41b5d7fd7f97cdf526', '3.1.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (103, 'index.php', 'd5a79d6d4694694a225a6b9a678ec6b1', '3.1.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (104, 'administrator/index.php', '3527f9b34bd165f74e91c9425e8cc85a', '3.1.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (105, 'plugins/user/joomla/joomla.php', '3cd9d1f8beff4cad347fe808d8e48acf', '3.1.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (106, 'plugins/authentication/joomla/joomla.php', '37ef6204d8dfcd41b5d7fd7f97cdf526', '3.1.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (107, 'index.php', 'd5a79d6d4694694a225a6b9a678ec6b1', '3.1.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (108, 'administrator/index.php', '3527f9b34bd165f74e91c9425e8cc85a', '3.1.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (109, 'plugins/user/joomla/joomla.php', '3cd9d1f8beff4cad347fe808d8e48acf', '3.1.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (110, 'plugins/authentication/joomla/joomla.php', 'e32dc6b8000891726982fc265cf88bd9', '3.1.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (111, 'index.php', 'd5a79d6d4694694a225a6b9a678ec6b1', '3.1.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (112, 'administrator/index.php', '3e6d4dcde6cee18a841798773028b4ff', '3.1.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (113, 'plugins/user/joomla/joomla.php', '3cd9d1f8beff4cad347fe808d8e48acf', '3.1.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (114, 'plugins/authentication/joomla/joomla.php', 'e32dc6b8000891726982fc265cf88bd9', '3.1.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (115, 'index.php', 'd5a79d6d4694694a225a6b9a678ec6b1', '3.1.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (116, 'administrator/index.php', '3e6d4dcde6cee18a841798773028b4ff', '3.1.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (117, 'plugins/user/joomla/joomla.php', '3cd9d1f8beff4cad347fe808d8e48acf', '3.1.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (118, 'plugins/authentication/joomla/joomla.php', 'e32dc6b8000891726982fc265cf88bd9', '3.1.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (119, 'index.php', 'd5a79d6d4694694a225a6b9a678ec6b1', '3.1.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (120, 'administrator/index.php', '3e6d4dcde6cee18a841798773028b4ff', '3.1.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (121, 'plugins/user/joomla/joomla.php', '503dfe4bea35227f7c07d4401d366f30', '3.2.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (122, 'plugins/authentication/joomla/joomla.php', '5c22bb3cee69ed662d353ff1f7575a63', '3.2.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (123, 'index.php', 'acf88666df61e778e7455c5024a95eff', '3.2.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (124, 'administrator/index.php', '8ad14cf42cafbfb4345c555ae5cdd567', '3.2.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (125, 'plugins/user/joomla/joomla.php', 'd939397041ef29bd8febec3c75d433b3', '3.2.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (126, 'plugins/authentication/joomla/joomla.php', '2ef41dd148c1d9c4db79b157eabdd7d0', '3.2.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (127, 'index.php', 'acf88666df61e778e7455c5024a95eff', '3.2.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (128, 'administrator/index.php', '8ad14cf42cafbfb4345c555ae5cdd567', '3.2.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (129, 'plugins/user/joomla/joomla.php', '6cdf1c5a27a5caa6be0d373c791f2cc9', '3.2.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (130, 'plugins/authentication/joomla/joomla.php', '5604973f5b7de18ffe3ebebdb274c013', '3.2.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (131, 'index.php', 'ef5646b4d3a4de44f891bb993c5c2c27', '3.2.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (132, 'administrator/index.php', 'b65e93fd1da75297aa713c4585aaf90f', '3.2.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (133, 'plugins/user/joomla/joomla.php', '0c79ab5d674eaa3f5a81e7e1a57ac0ee', '3.2.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (134, 'plugins/authentication/joomla/joomla.php', '5604973f5b7de18ffe3ebebdb274c013', '3.2.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (135, 'index.php', 'ef5646b4d3a4de44f891bb993c5c2c27', '3.2.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (136, 'administrator/index.php', 'b65e93fd1da75297aa713c4585aaf90f', '3.2.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (137, 'plugins/user/joomla/joomla.php', '0c79ab5d674eaa3f5a81e7e1a57ac0ee', '3.2.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (138, 'plugins/authentication/joomla/joomla.php', 'f34bc9cfc67ee58e1bd5af603b76e96d', '3.2.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (139, 'index.php', 'ef5646b4d3a4de44f891bb993c5c2c27', '3.2.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (140, 'administrator/index.php', 'b65e93fd1da75297aa713c4585aaf90f', '3.2.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (141, 'plugins/user/joomla/joomla.php', '0c79ab5d674eaa3f5a81e7e1a57ac0ee', '3.2.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (142, 'plugins/authentication/joomla/joomla.php', 'f34bc9cfc67ee58e1bd5af603b76e96d', '3.2.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (143, 'index.php', 'ef5646b4d3a4de44f891bb993c5c2c27', '3.2.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (144, 'administrator/index.php', 'b65e93fd1da75297aa713c4585aaf90f', '3.2.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (145, 'plugins/user/joomla/joomla.php', '0c79ab5d674eaa3f5a81e7e1a57ac0ee', '3.2.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (146, 'plugins/authentication/joomla/joomla.php', 'f34bc9cfc67ee58e1bd5af603b76e96d', '3.2.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (147, 'index.php', 'ef5646b4d3a4de44f891bb993c5c2c27', '3.2.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (148, 'administrator/index.php', 'b65e93fd1da75297aa713c4585aaf90f', '3.2.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (149, 'plugins/user/joomla/joomla.php', '0c79ab5d674eaa3f5a81e7e1a57ac0ee', '3.2.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (150, 'plugins/authentication/joomla/joomla.php', 'f34bc9cfc67ee58e1bd5af603b76e96d', '3.2.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (151, 'index.php', 'ef5646b4d3a4de44f891bb993c5c2c27', '3.2.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (152, 'administrator/index.php', 'b65e93fd1da75297aa713c4585aaf90f', '3.2.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (153, 'plugins/user/joomla/joomla.php', '0c79ab5d674eaa3f5a81e7e1a57ac0ee', '3.3.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (154, 'plugins/authentication/joomla/joomla.php', 'f34bc9cfc67ee58e1bd5af603b76e96d', '3.3.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (155, 'index.php', '7397f4ad99a402006262384a5f48157e', '3.3.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (156, 'administrator/index.php', '2886000c74dea168b0d7d6ae49d46838', '3.3.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (157, 'plugins/user/joomla/joomla.php', '0c79ab5d674eaa3f5a81e7e1a57ac0ee', '3.3.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (158, 'plugins/authentication/joomla/joomla.php', 'f34bc9cfc67ee58e1bd5af603b76e96d', '3.3.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (159, 'index.php', '7397f4ad99a402006262384a5f48157e', '3.3.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (160, 'administrator/index.php', '2886000c74dea168b0d7d6ae49d46838', '3.3.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (161, 'plugins/user/joomla/joomla.php', 'dc7b2aad0aa7c4112596d589c843261b', '3.3.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (162, 'plugins/authentication/joomla/joomla.php', 'f34bc9cfc67ee58e1bd5af603b76e96d', '3.3.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (163, 'index.php', '7397f4ad99a402006262384a5f48157e', '3.3.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (164, 'administrator/index.php', '2886000c74dea168b0d7d6ae49d46838', '3.3.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (165, 'plugins/user/joomla/joomla.php', 'dc7b2aad0aa7c4112596d589c843261b', '3.3.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (166, 'plugins/authentication/joomla/joomla.php', 'f34bc9cfc67ee58e1bd5af603b76e96d', '3.3.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (167, 'index.php', '7397f4ad99a402006262384a5f48157e', '3.3.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (168, 'administrator/index.php', '2886000c74dea168b0d7d6ae49d46838', '3.3.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (169, 'plugins/user/joomla/joomla.php', '8125edbbdc2b3d28718d7df38aa8ef50', '3.3.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (170, 'plugins/authentication/joomla/joomla.php', 'f34bc9cfc67ee58e1bd5af603b76e96d', '3.3.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (171, 'index.php', '7397f4ad99a402006262384a5f48157e', '3.3.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (172, 'administrator/index.php', '2886000c74dea168b0d7d6ae49d46838', '3.3.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (173, 'plugins/user/joomla/joomla.php', '8125edbbdc2b3d28718d7df38aa8ef50', '3.3.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (174, 'plugins/authentication/joomla/joomla.php', 'f34bc9cfc67ee58e1bd5af603b76e96d', '3.3.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (175, 'index.php', '7397f4ad99a402006262384a5f48157e', '3.3.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (176, 'administrator/index.php', '2886000c74dea168b0d7d6ae49d46838', '3.3.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (177, 'plugins/user/joomla/joomla.php', '8125edbbdc2b3d28718d7df38aa8ef50', '3.3.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (178, 'plugins/authentication/joomla/joomla.php', 'f34bc9cfc67ee58e1bd5af603b76e96d', '3.3.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (179, 'index.php', '7397f4ad99a402006262384a5f48157e', '3.3.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (180, 'administrator/index.php', '2886000c74dea168b0d7d6ae49d46838', '3.3.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (181, 'plugins/user/joomla/joomla.php', '3078e7e560957e9236ac0f6ac1190f76', '3.4.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (182, 'plugins/authentication/joomla/joomla.php', '7689e46b5cdc9b3092a8ecd1ba8f5119', '3.4.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (183, 'index.php', 'a1229f1205110a45fda8669c0d6bed46', '3.4.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (184, 'administrator/index.php', 'c5f7cb85395682b98736e6b12418ac20', '3.4.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (185, 'plugins/user/joomla/joomla.php', '3078e7e560957e9236ac0f6ac1190f76', '3.4.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (186, 'plugins/authentication/joomla/joomla.php', '7689e46b5cdc9b3092a8ecd1ba8f5119', '3.4.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (187, 'index.php', 'a1229f1205110a45fda8669c0d6bed46', '3.4.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (188, 'administrator/index.php', 'c5f7cb85395682b98736e6b12418ac20', '3.4.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (189, 'plugins/user/joomla/joomla.php', '9dca3b201c621954da9ae768303262a9', '3.4.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (190, 'plugins/authentication/joomla/joomla.php', 'a9b4e0104b83f6c4362736d99cd575c1', '3.4.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (191, 'index.php', '5c026877a8ce708676a492a52cd12e58', '3.4.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (192, 'administrator/index.php', 'b50cff8f3c36fc71e32231cdcebbafc3', '3.4.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (193, 'plugins/user/joomla/joomla.php', '9dca3b201c621954da9ae768303262a9', '3.4.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (194, 'plugins/authentication/joomla/joomla.php', 'a9b4e0104b83f6c4362736d99cd575c1', '3.4.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (195, 'index.php', '5c026877a8ce708676a492a52cd12e58', '3.4.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (196, 'administrator/index.php', 'b50cff8f3c36fc71e32231cdcebbafc3', '3.4.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (197, 'plugins/user/joomla/joomla.php', '9dca3b201c621954da9ae768303262a9', '3.4.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (198, 'plugins/authentication/joomla/joomla.php', 'a9b4e0104b83f6c4362736d99cd575c1', '3.4.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (199, 'index.php', '5c026877a8ce708676a492a52cd12e58', '3.4.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (200, 'administrator/index.php', 'b50cff8f3c36fc71e32231cdcebbafc3', '3.4.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (201, 'plugins/user/joomla/joomla.php', '9dca3b201c621954da9ae768303262a9', '3.4.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (202, 'plugins/authentication/joomla/joomla.php', 'a9b4e0104b83f6c4362736d99cd575c1', '3.4.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (203, 'index.php', '5c026877a8ce708676a492a52cd12e58', '3.4.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (204, 'administrator/index.php', 'b50cff8f3c36fc71e32231cdcebbafc3', '3.4.5', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (205, 'plugins/user/joomla/joomla.php', '9dca3b201c621954da9ae768303262a9', '3.4.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (206, 'plugins/authentication/joomla/joomla.php', 'a9b4e0104b83f6c4362736d99cd575c1', '3.4.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (207, 'index.php', '5c026877a8ce708676a492a52cd12e58', '3.4.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (208, 'administrator/index.php', 'b50cff8f3c36fc71e32231cdcebbafc3', '3.4.6', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (209, 'plugins/user/joomla/joomla.php', '9dca3b201c621954da9ae768303262a9', '3.4.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (210, 'plugins/authentication/joomla/joomla.php', 'a9b4e0104b83f6c4362736d99cd575c1', '3.4.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (211, 'index.php', '5c026877a8ce708676a492a52cd12e58', '3.4.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (212, 'administrator/index.php', 'b50cff8f3c36fc71e32231cdcebbafc3', '3.4.7', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (213, 'plugins/user/joomla/joomla.php', '9dca3b201c621954da9ae768303262a9', '3.4.8', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (214, 'plugins/authentication/joomla/joomla.php', 'a9b4e0104b83f6c4362736d99cd575c1', '3.4.8', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (215, 'index.php', '5c026877a8ce708676a492a52cd12e58', '3.4.8', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (216, 'administrator/index.php', 'b50cff8f3c36fc71e32231cdcebbafc3', '3.4.8', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (217, 'plugins/user/joomla/joomla.php', 'd9337799a4e43640a5717a88c33accf0', '3.5.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (218, 'plugins/authentication/joomla/joomla.php', 'b5687c0549b50e57a4a7f583324f1487', '3.5.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (219, 'index.php', 'f81654a86c69fe7cb685905b5305c06d', '3.5.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (220, 'administrator/index.php', 'c1e6484a0bc1df6e179d49ed3956d698', '3.5.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (221, 'plugins/user/joomla/joomla.php', 'd9337799a4e43640a5717a88c33accf0', '3.5.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (222, 'plugins/authentication/joomla/joomla.php', 'b5687c0549b50e57a4a7f583324f1487', '3.5.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (223, 'index.php', 'f81654a86c69fe7cb685905b5305c06d', '3.5.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (224, 'administrator/index.php', 'c1e6484a0bc1df6e179d49ed3956d698', '3.5.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (225, 'plugins/user/joomla/joomla.php', 'ff9dc38b50f4faf6eb2874bac5bf9b69', '3.6.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (226, 'plugins/authentication/joomla/joomla.php', 'b5687c0549b50e57a4a7f583324f1487', '3.6.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (227, 'index.php', 'f81654a86c69fe7cb685905b5305c06d', '3.6.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (228, 'administrator/index.php', 'c1e6484a0bc1df6e179d49ed3956d698', '3.6.0', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (229, 'plugins/user/joomla/joomla.php', 'b4298c487c39049b75b7fbc850d257e7', '3.6.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (230, 'plugins/authentication/joomla/joomla.php', '3a8e8ad739d4105d851669f1f2c06c10', '3.6.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (231, 'index.php', 'f81654a86c69fe7cb685905b5305c06d', '3.6.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (232, 'administrator/index.php', 'c1e6484a0bc1df6e179d49ed3956d698', '3.6.1', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (233, 'plugins/user/joomla/joomla.php', 'b4298c487c39049b75b7fbc850d257e7', '3.6.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (234, 'plugins/authentication/joomla/joomla.php', '3a8e8ad739d4105d851669f1f2c06c10', '3.6.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (235, 'index.php', 'f81654a86c69fe7cb685905b5305c06d', '3.6.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (236, 'administrator/index.php', 'c1e6484a0bc1df6e179d49ed3956d698', '3.6.2', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (237, 'plugins/user/joomla/joomla.php', 'b4298c487c39049b75b7fbc850d257e7', '3.6.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (238, 'plugins/authentication/joomla/joomla.php', '1c6dda420fa9c19efc2de9ef9f05847b', '3.6.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (239, 'index.php', '62f6043c7172b6594e55a46596df31ef', '3.6.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (240, 'administrator/index.php', '9d2c9e0162bd32442a843f9633142d41', '3.6.3', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (241, 'plugins/user/joomla/joomla.php', 'b4298c487c39049b75b7fbc850d257e7', '3.6.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (242, 'plugins/authentication/joomla/joomla.php', '1c6dda420fa9c19efc2de9ef9f05847b', '3.6.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (243, 'index.php', '62f6043c7172b6594e55a46596df31ef', '3.6.4', '', '');
INSERT INTO `aj14x_rsfirewall_hashes` VALUES (244, 'administrator/index.php', '9d2c9e0162bd32442a843f9633142d41', '3.6.4', '', '');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsfirewall_ignored`
-- 

CREATE TABLE `aj14x_rsfirewall_ignored` (
  `path` text NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsfirewall_ignored`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsfirewall_lists`
-- 

CREATE TABLE `aj14x_rsfirewall_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `type` (`type`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsfirewall_lists`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsfirewall_logs`
-- 

CREATE TABLE `aj14x_rsfirewall_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` enum('low','medium','high','critical') NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `page` text NOT NULL,
  `referer` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `debug_variables` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsfirewall_logs`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsfirewall_offenders`
-- 

CREATE TABLE `aj14x_rsfirewall_offenders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsfirewall_offenders`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsfirewall_signatures`
-- 

CREATE TABLE `aj14x_rsfirewall_signatures` (
  `signature` varchar(255) NOT NULL,
  `type` varchar(16) NOT NULL,
  `reason` varchar(255) NOT NULL,
  PRIMARY KEY (`signature`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsfirewall_signatures`
-- 

INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(@(\\$[a-z0-9]+\\(){4,})', 'regexis', 'PHP Injection - Obfuscated function call');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(chr\\(([0-9]+){3,}\\)\\.chr\\(([0-9]+)\\)\\.chr\\(([0-9]+)\\)\\.chr\\(([0-9]+)\\))\\.chr\\(([0-9]+)\\)\\.chr\\(([0-9]+)\\)', 'regex', 'Possible PHP injection (obfuscated code)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(include\\_once|require\\_once|include|require)(\\s+)?(\\()?[''|"](.*)(\\.png|\\.gif|\\.jpg|\\.jpeg|\\.ini)[''|"](\\))?', 'regex', 'Highly suspicious inclusion (possible CryptoPHP)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(js/jquery\\.min\\.php.*?"\\?default_keyword\\=" \\+ default_keyword)', 'regex', 'Search engine referrer hijacking');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(realstatistics\\.(info|pro)|realanalytics\\.pro|siteanalytics\\.pro|webstatistics\\.pro|adobesecurupdate\\.com|microsoft-securety\\.com)', 'regexis', 'Realstatistics Malware');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(shell_exec|passthru|system|exec|popen)[\\s+]?\\([\\s+]?\\$(GLOBALS|_SERVER|_GET|_POST|_FILES|_COOKIE|_SESSION|_REQUEST|_ENV)', 'regex', 'Possible PHP injection (binary executed from superglobal variable)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(shell_exec|passthru|system|exec|popen)\\s?\\((''|")(wget|lynx|links|curl)', 'regex', 'Possible PHP injection (file download)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(wget|lynx|links|curl) https?:\\/\\/.*?; chmod .*?; \\.\\/', 'regex', 'Possible PHP injection (file download and execution)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(wget|lynx|links|curl) https?:\\/\\/.*?; perl .*?', 'regex', 'Possible PHP injection (file download and execution)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('([a-z0-9_]+\\/\\*(.*?)\\*\\/\\()', 'regex', 'PHP Injection - Obfuscated function call');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(\\$func=("[a-z_]+"[\\.]){4,})', 'regexis', 'PHP Injection - Obfuscated function name');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(\\$s\\_func=("[a-z_]+"[\\.]){4,})', 'regexis', 'PHP Injection - Obfuscated function name');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(\\$[a-z0-9]+\\s?\\(){3,}', 'regexi', 'PHP Injection - Obfuscated function name');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(\\$[a-z0-9]+\\{[0-9]+\\}\\s?\\.?\\s?){10,}', 'regexis', 'PHP Injection - Obfuscated function name');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(\\$[a-z]+)\\("[a-z]",\\s?"",\\s?"[a-z0-9_]+"\\)', 'regexis', 'PHP Injection - Obfuscated function name');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('(\\[(SHELL|ZAD)\\ID])', 'regexs', 'PHP Injection - Mass mailer');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('<!--checker_start', 'regex', 'PHP injection');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('<input name=".*?" type="file">', 'regex', 'Possible PHP Shell - File uploader');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('<\\?php[\\s+]{240,}(.*?)\\s', 'regex', 'Abnormally long spacing after PHP tag - could be used to hide code from view');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('@\\$[a-zA-Z0-9]+\\(\\$_(POST|GET|REQUEST|COOKIE)\\[.*', 'regex', 'Possible PHP Injection - obfuscated code execution from Superglobal variable.');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('act=phpinfo', 'regex', 'PHP Shell - c99shell variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('antichat', 'filename', 'PHP Shell - c99shell Antichat variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('bash_history', 'filename', 'Possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('bitchx', 'filename', 'IRC Client - possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('brute *force', 'filename', 'Bruteforce');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('c99shell', 'filename', 'PHP Shell');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('c99shell', 'regex', 'PHP Shell - c99shell variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('ccteam\\.ru', 'regex', 'PHP Shell - c99shell variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('cgi', 'filename', 'PHP Shell - c99shell Cgi variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('chr\\(\\([0-9]+\\-[0-9]+\\)\\)', 'regex', 'Possible PHP Injection - Obfuscated code');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('create\\_function\\(\\''\\$\\''(.*)', 'regex', 'Possible PHP injection (create_function() call)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('cwings', 'filename', 'PHP Shell');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('CWShellDumper', 'filename', 'PHP Shell - c99shell CWShellDumper variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('DALnet', 'filename', 'IRC Client - possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('die\\(md5\\(\\''[a-z0-9_]+\\''\\)\\);', 'regexis', 'PHP Injection - Shell');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('directmail', 'filename', 'Mailer - possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('eggdrop', 'filename', 'IRC Bot - possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('ekin0x', 'filename', 'PHP Shell - c99shell ekin0x variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('eval[\\s]?\\([\\s]?base64_decode\\([\\s]?.*?\\)\\)', 'regex', 'Possible PHP injection (encoded code - base64)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('eval\\("\\?\\>"\\.base64_decode', 'regex', 'Possible PHP injection (encoded code - base64)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('eval\\(base64_decode\\((?s).*?\\)\\)', 'regex', 'Possible PHP injection (encoded code - base64)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('eval\\(stripslashes\\(\\$_(.*?)\\)\\)', 'regex', 'Possible PHP injection (code executed from superglobal variable)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('eval\\([a-zA-Z0-9]+\\([$a-zA-Z0-9]+', 'regex', 'Possible PHP injection (code executed through obfuscated functions)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('eval\\(\\$[a-zA-Z0-9]+\\(\\$[a-zA-Z0-9]+\\(\\$[a-zA-Z0-9]+', 'regex', 'PHP Injection - Obfuscated code');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('eval\\(\\$_(.*?)\\)', 'regex', 'Possible PHP injection (code executed from superglobal variable)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('eval\\/\\*(.*)\\*\\/\\(', 'regexis', 'Obfuscated eval()');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('eval\\/\\*\\*\\/\\(', 'regex', 'Hidden eval()');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('exec\\((.*)\\/bin\\/sh', 'regex', 'Possible PHP injection (shell execution)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('guardservices', 'filename', 'Possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('h4cker\\.tr', 'regex', 'PHP Shell - General variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('hanixavi@msn.com', 'regex', 'PHP Shell - File uploader');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('header(\\s+)?\\(["|''](l|L)ocation:(\\s+)?http:(.*?)\\)', 'regex', 'Possible PHP injection (redirect)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('http\\://fbt\\.yahoo\\.com/counter\\.php', 'regex', 'PHP injection (Russian counter)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('if\\(function_exists\\(''ob_start''\\)&&!isset\\(\\$GLOBALS\\[(.*?)\\]\\)\\){\\$GLOBALS\\[(.*?)\\]=', 'regex', 'PHP injection');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('if\\(\\$_POST\\[''golden''\\]\\=\\="Done"\\)', 'regex', 'PHP Injection - File uploader');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('ini\\_set\\(chr\\(', 'regex', 'PHP injection');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('kacak', 'filename', 'PHP Shell - c99shell kacak variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('liz0zim', 'filename', 'PHP Shell - c99shell liz0zim variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('m0rtix', 'filename', 'Backdoor - possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('mail(\\s+)?\\(("|'')(.*@)', 'regex', 'Possible PHP injection (mailer)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('mkdir\\(.*?[\\s+]?,[\\s+]?0777', 'regex', 'Unsafe directory creation - 0777 permissions.');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('ob_start\\("callbck"\\)', 'regex', 'PHP injection');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('PHPencoder', 'regex', 'PHP Encoded file - PHPencoder variant, please review manually');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('PHPJiaMi\\.Com', 'regexi', 'PHP Injection - Shell');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('phpremoteview', 'filename', 'PHP Shell');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('phpshell', 'filename', 'PHP Shell');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('preg_replace\\("/\\.\\*/e"', 'regex', 'Possible PHP injection (obfuscated code using /e modifier)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('preg_replace\\([''|"]/\\(\\.\\*\\)\\/e', 'regex', 'Possible PHP injection (obfuscated code using /e modifier)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('ps -aux', 'regex', 'PHP Shell - suspicious code');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('psyBNC', 'filename', 'IRC Client - possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('r0nin', 'filename', 'Exploit - possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('r57shell', 'filename', 'PHP Shell');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('r57shell', 'regex', 'PHP Shell - r57shell variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('r57\\.gen\\.tr', 'regex', 'PHP Shell - General variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('raslan58', 'filename', 'Possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('safe0ver', 'filename', 'PHP Shell - c99shell safe0ver variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('Saudi Sh3ll', 'filename', 'PHP Shell - Saudi Sh3ll variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('shellbot', 'filename', 'Backdoor - possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('sh\\_decrypt\\_phase', 'regex', 'PHP Injection - Shell');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('sosyete', 'filename', 'PHP Shell - c99shell sosyete variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('spymeta', 'filename', 'Possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('strrev\\((''|")edoced_46esab(''|")\\)', 'regex', 'Possible PHP injection (obfuscated code)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('strrev\\(base64_decode\\((?s).*?\\)\\)', 'regex', 'Possible PHP injection (encoded code - strrev())');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('str_rot13\\(''riny''\\)', 'regex', 'PHP Injection - Obfuscated eval');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('str_rot13\\(base64_decode\\((?s).*?\\)\\)', 'regex', 'Possible PHP injection (encoded code - str_rot13())');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('tryag', 'filename', 'PHP Shell - c99shell tryag variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('undernet', 'filename', 'IRC Client - possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('Upload Gagal', 'regex', 'PHP Shell - File uploader');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('void\\.ru', 'filename', 'Possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('vulnscan', 'filename', 'Vulnerability Scanner - possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('w00t', 'filename', 'Exploit - possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('zehir4', 'filename', 'PHP Shell - c99shell zehir4 variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('[a-zA-Z0-9]{500,}', 'regex', 'Possible PHP injection (abnormally long string - might be base64)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$GLOBALS\\[''([a-z]+)?([0-9]+)?'']\\(', 'regex', 'Possible PHP injection (code executed through superglobal variable)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$GLOBALS\\[\\$GLOBALS\\[''[a-z0-9]+''\\]\\[[0-9]+\\]', 'regex', 'PHP Injection');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$QBDB51E25BF9A7F3D2475072803D1C36D', 'regex', 'PHP Shell - c99shell variant compressed');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$ua\\=@\\$_SERVER\\["HTTP_USER_AGENT"\\];\\$row\\=split\\("\\=\\=\\=",\\$ua\\)', 'regex', 'PHP Injection - Shell');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$uploadfile \\= \\$_POST\\["pt"\\]\\.\\$_FILES\\["file"\\]\\["name"\\]', 'regex', 'PHP Shell - File uploader');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$wp_add_filter\\(', 'regex', 'PHP injection (obfuscated code)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$[a-z0-9]+ = \\$\\_POST\\[''[a-z0-9]+''\\];.@?passthru\\(\\$[a-z]+\\);', 'regexis', 'PHP Injection - Shell');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$[a-z0-9]+=\\$_COOKIE', 'regex', 'Possible PHP Injection - superglobal variable obfuscation.');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$[a-z0-9]+\\s?=\\s?\\$[a-z0-9]+\\("[a-z0-9]+",\\s?"",\\s?"[a-z0-9]+\\_[a-z0-9]+"\\);', 'regex', 'PHP Injection - Obfuscated function call');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$[^ -~]+\\(.*?\\);', 'regex', 'Possible PHP Injection - Characters outside of typing range.');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$\\_(FILES|SERVER|POST|GET)\\["([A-Za-z\\_]+)?(\\\\x[0-9A-Fa-f]{1,2}){1,}([A-Za-z\\_]+)?\\"]', 'regex', 'PHP Injection - Obfuscated Superglobal variable.');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$_GET\\[''mailzor''\\]', 'regex', 'PHP Injection - Mass mailer');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$_GET\\[''sws''\\]\\=\\= ''phpinfo''', 'regex', 'PHP Shell - Saudi Sh3ll variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$_POST\\[''cmd''\\]\\=\\="php_eval"', 'regex', 'PHP Shell - r57shell variant');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\$_[a-zA-Z]=__FILE__;\\$_[a-zA-Z]=', 'regex', 'PHP injection (obfuscated code)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\("/[a-zA-Z0-9]+/e",', 'regex', 'Possible PHP injection (obfuscated code using /e modifier)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\(gzinflate\\(base64_decode\\((?s).*\\)', 'regex', 'Possible PHP injection (compressed code - gzip)');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\.ru/', 'filename', 'Possible hijacked server');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\/etc\\/passwd', 'regex', 'PHP Shell - suspicious code');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('\\/jquery\\.min\\.php', 'regex', 'PHP Injection - Search engine hijacker');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('^GIF89;([^\\n]*\\n+)+(\\<\\?php)', 'regex', 'PHP injection - Hidden inside GIF file');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('^\\#[a-z0-9]+\\#$(.*?)^\\#\\/[a-z0-9]+\\#$', 'regexms', 'PHP Injection - Page hijacker');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('^\\$password\\=@\\$_REQUEST\\[''password''\\];', 'regexm', 'Possible PHP Injection');
INSERT INTO `aj14x_rsfirewall_signatures` VALUES ('_il_exec\\(\\)', 'regex', 'Possible risk - ionCube encrypted file');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsfirewall_snapshots`
-- 

CREATE TABLE `aj14x_rsfirewall_snapshots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `snapshot` text NOT NULL,
  `type` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsfirewall_snapshots`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_calculations`
-- 

CREATE TABLE `aj14x_rsform_calculations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `expression` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_calculations`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_component_type_fields`
-- 

CREATE TABLE `aj14x_rsform_component_type_fields` (
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` varchar(32) NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Properties` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_component_type_fields`
-- 

INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'REQUIRED', 'select', 'NO\r\nYES', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'SIZE', 'textbox', '20', 'numeric', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'MAXSIZE', 'textbox', '', 'numeric', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSFormProHelper::getValidationRules();\r\n//</code>', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'VALIDATIONMULTIPLE', 'selectmultiple', '//<code>\r\nreturn RSFormProHelper::getValidationRules(false, true);\r\n//</code>', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'DEFAULTVALUE', 'textarea', '', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'PLACEHOLDER', 'textbox', '', '', 10);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'DESCRIPTION', 'textarea', '', '', 11);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'INPUTTYPE', 'select', 'text\r\nemail\r\ntel\r\nnumber\r\nrange\r\nurl', '{"case":{"number":{"show":["ATTRMIN","ATTRMAX","ATTRSTEP"],"hide":[]},"range":{"show":["ATTRMIN","ATTRMAX","ATTRSTEP"],"hide":[]},"text":{"show":[],"hide":["ATTRMIN","ATTRMAX","ATTRSTEP"]},"email":{"show":[],"hide":["ATTRMIN","ATTRMAX","ATTRSTEP"]},"tel":{"show":[],"hide":["ATTRMIN","ATTRMAX","ATTRSTEP"]},"url":{"show":[],"hide":["ATTRMIN","ATTRMAX","ATTRSTEP"]}}}', 0);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'ATTRMIN', 'textbox', '', 'float', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'ATTRMAX', 'textbox', '', 'float', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'ATTRSTEP', 'textbox', '1', 'float', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'COMPONENTTYPE', 'hidden', '1', '', 15);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (1, 'VALIDATIONEXTRA', 'textbox', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'REQUIRED', 'select', 'NO\r\nYES', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'COLS', 'textbox', '50', 'numeric', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'ROWS', 'textbox', '5', 'numeric', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSFormProHelper::getValidationRules();\r\n//</code>', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'VALIDATIONMULTIPLE', 'selectmultiple', '//<code>\r\nreturn RSFormProHelper::getValidationRules(false, true);\r\n//</code>', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'DEFAULTVALUE', 'textarea', '', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'DESCRIPTION', 'textarea', '', '', 10);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'COMPONENTTYPE', 'hidden', '2', '', 10);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'PLACEHOLDER', 'textbox', '', '', 10);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'WYSIWYG', 'select', 'NO\r\nYES', '', 11);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (2, 'VALIDATIONEXTRA', 'textbox', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (3, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (3, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (3, 'SIZE', 'textbox', '', 'numeric', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (3, 'MULTIPLE', 'select', 'NO\r\nYES', '', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (3, 'ITEMS', 'textarea', '', '', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (3, 'REQUIRED', 'select', 'NO\r\nYES', '{"case":{"YES":{"show":["VALIDATIONMESSAGE"],"hide":[]},"NO":{"show":[],"hide":["VALIDATIONMESSAGE"]}}}', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (3, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (3, 'DESCRIPTION', 'textarea', '', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (3, 'COMPONENTTYPE', 'hidden', '3', '', 10);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (3, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (4, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (4, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (4, 'ITEMS', 'textarea', '', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (4, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL\r\nVERTICAL2COLUMNS\r\nVERTICAL3COlUMNS\r\nVERTICAL4COLUMNS\r\nVERTICAL6COLUMNS', '', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (4, 'REQUIRED', 'select', 'NO\r\nYES', '{"case":{"YES":{"show":["VALIDATIONMESSAGE"],"hide":[]},"NO":{"show":[],"hide":["VALIDATIONMESSAGE"]}}}', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (4, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (4, 'DESCRIPTION', 'textarea', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (4, 'COMPONENTTYPE', 'hidden', '4', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (4, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (5, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (5, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (5, 'ITEMS', 'textarea', '', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (5, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL\r\nVERTICAL2COLUMNS\r\nVERTICAL3COlUMNS\r\nVERTICAL4COLUMNS\r\nVERTICAL6COLUMNS', '', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (5, 'REQUIRED', 'select', 'NO\r\nYES', '{"case":{"YES":{"show":["VALIDATIONMESSAGE"],"hide":[]},"NO":{"show":[],"hide":["VALIDATIONMESSAGE"]}}}', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (5, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (5, 'DESCRIPTION', 'textarea', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (5, 'COMPONENTTYPE', 'hidden', '5', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (5, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'REQUIRED', 'select', 'NO\r\nYES', '{"case":{"YES":{"show":["VALIDATIONMESSAGE"],"hide":[]},"NO":{"show":[],"hide":["VALIDATIONMESSAGE"]}}}', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'VALIDATIONCALENDAR', 'select', '//<code>\r\nreturn RSFormProHelper::getOtherCalendars(6);\r\n//</code>', '', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'DATEFORMAT', 'textbox', 'd/m/Y', '', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', '{"case":{"POPUP":{"show":["READONLY", "POPUPLABEL"],"hide":[]},"FLAT":{"show":[],"hide":["READONLY", "POPUPLABEL"]}}}', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'DESCRIPTION', 'textarea', '', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'COMPONENTTYPE', 'hidden', '6', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'READONLY', 'select', 'NO\r\nYES', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'POPUPLABEL', 'textbox', '...', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'MINDATE', 'textarea', '', '', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'MAXDATE', 'textarea', '', '', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (6, 'DEFAULTVALUE', 'textarea', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (7, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (7, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (7, 'LABEL', 'textbox', '', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (7, 'RESET', 'select', 'NO\r\nYES', '{"case":{"YES":{"show":["RESETLABEL"],"hide":[]},"NO":{"show":[],"hide":["RESETLABEL"]}}}', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (7, 'RESETLABEL', 'textbox', '', '', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (7, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (7, 'DESCRIPTION', 'textarea', '', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (7, 'COMPONENTTYPE', 'hidden', '7', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (7, 'BUTTONTYPE', 'select', 'TYPEBUTTON\nTYPEINPUT', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'LENGTH', 'textbox', '4', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'BACKGROUNDCOLOR', 'textbox', '#FFFFFF', '', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'TEXTCOLOR', 'textbox', '#000000', '', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'TYPE', 'select', 'ALPHA\r\nNUMERIC\r\nALPHANUMERIC', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'ADDITIONALATTRIBUTES', 'textarea', 'style="text-align:center;width:75px;"', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'DESCRIPTION', 'textarea', '', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'COMPONENTTYPE', 'hidden', '8', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'FLOW', 'select', 'VERTICAL\r\nHORIZONTAL', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'SHOWREFRESH', 'select', 'NO\r\nYES', '{"case":{"YES":{"show":["REFRESHTEXT"],"hide":[]},"NO":{"show":[],"hide":["REFRESHTEXT"]}}}', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'REFRESHTEXT', 'textbox', 'REFRESH', '', 11);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'SIZE', 'textbox', '15', 'numeric', 12);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (8, 'IMAGETYPE', 'select', 'FREETYPE\r\nNOFREETYPE\r\nINVISIBLE', '{"case":{"FREETYPE":{"show":["BACKGROUNDCOLOR","TEXTCOLOR","TYPE","FLOW","LENGTH"],"hide":[]},"NOFREETYPE":{"show":["BACKGROUNDCOLOR","TEXTCOLOR","TYPE","FLOW","LENGTH"],"hide":[]},"INVISIBLE":{"show":[],"hide":["BACKGROUNDCOLOR","TEXTCOLOR","TYPE","FLOW","LENGTH"]}}}', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'FILESIZE', 'textbox', '', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'REQUIRED', 'select', 'NO\r\nYES', '{"case":{"YES":{"show":["VALIDATIONMESSAGE"],"hide":[]},"NO":{"show":[],"hide":["VALIDATIONMESSAGE"]}}}', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'ACCEPTEDFILES', 'textarea', '', 'oneperline', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'DESTINATION', 'textbox', '//<code>\r\nreturn ''components/com_rsform/uploads/'';\r\n//</code>', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'DESCRIPTION', 'textarea', '', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'COMPONENTTYPE', 'hidden', '9', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'PREFIX', 'textarea', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (9, 'EMAILATTACH', 'emailattach', '', '', 102);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (10, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (10, 'TEXT', 'textarea', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (10, 'COMPONENTTYPE', 'hidden', '10', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (11, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (11, 'DEFAULTVALUE', 'textarea', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (11, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (11, 'COMPONENTTYPE', 'hidden', '11', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (13, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (13, 'CAPTION', 'textbox', '', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (13, 'LABEL', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (13, 'RESET', 'select', 'NO\r\nYES', '{"case":{"YES":{"show":["RESETLABEL"],"hide":[]},"NO":{"show":[],"hide":["RESETLABEL"]}}}', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (13, 'RESETLABEL', 'textbox', '', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (13, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (13, 'COMPONENTTYPE', 'hidden', '13', '', 12);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (13, 'BUTTONTYPE', 'select', 'TYPEBUTTON\nTYPEINPUT', '', 11);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (13, 'PREVBUTTON', 'textbox', '< Prev', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (13, 'DISPLAYPROGRESS', 'select', 'NO\r\nAUTO\r\nYES', '{"case":{"YES":{"show":["DISPLAYPROGRESSMSG"],"hide":[]},"NO":{"show":[],"hide":["DISPLAYPROGRESSMSG"]}, "AUTO":{"show":[],"hide":["DISPLAYPROGRESSMSG"]}}}', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (13, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>', '', 10);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'REQUIRED', 'select', 'NO\r\nYES', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'SIZE', 'textbox', '', 'numeric', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'MAXSIZE', 'textbox', '', 'numeric', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'DEFAULTVALUE', 'textarea', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'COMPONENTTYPE', 'hidden', '14', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'DESCRIPTION', 'textarea', '', '', 100);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 100);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSFormProHelper::getValidationRules();\r\n//</code>', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'VALIDATIONMULTIPLE', 'selectmultiple', '//<code>\r\nreturn RSFormProHelper::getValidationRules(false, true);\r\n//</code>', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'PLACEHOLDER', 'textbox', '', '', 10);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (14, 'VALIDATIONEXTRA', 'textbox', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (15, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (15, 'LENGTH', 'textbox', '8', '', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (15, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (15, 'COMPONENTTYPE', 'hidden', '15', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (15, 'CHARACTERS', 'select', 'ALPHANUMERIC\r\nALPHA\r\nNUMERIC', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (15, 'TICKETTYPE', 'select', 'RANDOM\r\nSEQUENTIAL', '{"case":{"RANDOM":{"show":["CHARACTERS", "LENGTH"],"hide":["LEADINGZEROLENGTH"]},"SEQUENTIAL":{"show":["LEADINGZEROLENGTH"],"hide":["CHARACTERS", "LENGTH"]}}}', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (15, 'LEADINGZEROLENGTH', 'select', '0\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10', '', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (41, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (41, 'COMPONENTTYPE', 'hidden', '41', '', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (41, 'NEXTBUTTON', 'textbox', 'Next >', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (41, 'PREVBUTTON', 'textbox', '< Prev', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (41, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (41, 'VALIDATENEXTPAGE', 'select', 'NO\r\nYES', '', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (41, 'DISPLAYPROGRESS', 'select', 'NO\r\nAUTO\r\nYES', '{"case":{"YES":{"show":["DISPLAYPROGRESSMSG"],"hide":[]},"NO":{"show":[],"hide":["DISPLAYPROGRESSMSG"]}, "AUTO":{"show":[],"hide":["DISPLAYPROGRESSMSG"]}}}', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (41, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (41, 'BUTTONTYPE', 'select', 'TYPEBUTTON\nTYPEINPUT', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'VALIDATION_ALLOW_INCORRECT_DATE', 'select', 'NO\r\nYES', '', 0);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'VALIDATIONRULE_DATE', 'select', '//<code>\r\nreturn RSFormProHelper::getDateValidationRules();\r\n//</code>', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'DESCRIPTION', 'textarea', '', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'REQUIRED', 'select', 'NO\r\nYES', '', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'DATEORDERING', 'select', 'DMY\r\nMDY\r\nYMD\r\nYDM\r\nMYD\r\nDYM', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'DATESEPARATOR', 'textbox', ' / ', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'SHOWDAY', 'select', 'YES\r\nNO', '{"case":{"YES":{"show":["SHOWDAYPLEASE" ,"SHOWDAYTYPE"],"hide":[]},"NO":{"show":[],"hide":["SHOWDAYPLEASE" ,"SHOWDAYTYPE"]}}}', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'SHOWDAYPLEASE', 'textbox', 'Day', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'SHOWDAYTYPE', 'select', 'DAY_TYPE_01\r\nDAY_TYPE_1', '', 10);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'SHOWMONTH', 'select', 'YES\r\nNO', '{"case":{"YES":{"show":["SHOWMONTHPLEASE" ,"SHOWMONTHTYPE"],"hide":[]},"NO":{"show":[],"hide":["SHOWMONTHPLEASE" ,"SHOWMONTHTYPE"]}}}', 11);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'SHOWMONTHPLEASE', 'textbox', 'Month', '', 12);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'SHOWMONTHTYPE', 'select', 'MONTH_TYPE_01\r\nMONTH_TYPE_1\r\nMONTH_TYPE_TEXT_SHORT\r\nMONTH_TYPE_TEXT_LONG', '', 13);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'SHOWYEAR', 'select', 'YES\r\nNO', '{"case":{"YES":{"show":["SHOWYEARPLEASE" ,"STARTYEAR", "ENDYEAR"],"hide":[]},"NO":{"show":[],"hide":["SHOWYEARPLEASE" ,"STARTYEAR", "ENDYEAR"]}}}', 14);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'SHOWYEARPLEASE', 'textbox', 'Year', '', 15);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'STARTYEAR', 'textbox', '1960', '', 16);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'ENDYEAR', 'textbox', '2013', '', 17);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'STORELEADINGZERO', 'select', 'NO\r\nYES', '', 18);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 18);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (211, 'COMPONENTTYPE', 'hidden', '211', '', 19);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'NAME', 'textbox', '', '', 0);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'CAPTION', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'DESCRIPTION', 'textarea', '', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'REQUIRED', 'select', 'NO\r\nYES', '{"case":{"YES":{"show":["VALIDATIONMESSAGE"],"hide":[]},"NO":{"show":[],"hide":["VALIDATIONMESSAGE"]}}}', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'DEFAULTVALUE', 'textarea', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'MAPWIDTH', 'textbox', '450px', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'MAPHEIGHT', 'textbox', '300px', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'MAPCENTER', 'textbox', '39.5500507,-105.7820674', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'COMPONENTTYPE', 'hidden', '212', '', 12);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'SIZE', 'textbox', '20', 'numeric', 13);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'MAPZOOM', 'textbox', '10', 'numeric', 10);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'MAPRESULT', 'select', 'ADDRESS\r\nCOORDINATES', '', 12);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'MAPTYPE', 'select', 'ROADMAP\r\nSATELLITE\r\nHYBRID\r\nTERRAIN', '', 13);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (212, 'GEOLOCATION', 'select', 'NO\r\nYES', '', 11);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'NAME', 'textbox', '', '', 1);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'CAPTION', 'textbox', '', '', 2);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'DEFAULTVALUE', 'textarea', '', '', 3);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'DESCRIPTION', 'textarea', '', '', 4);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'REQUIRED', 'select', 'NO\r\nYES', '{"case":{"YES":{"show":["VALIDATIONMESSAGE"],"hide":[]},"NO":{"show":[],"hide":["VALIDATIONMESSAGE"]}}}', 5);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'VALIDATIONCALENDAR', 'select', '//<code>\nreturn RSFormProHelper::getOtherCalendars(411);\n//</code>', '', 6);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', '', 7);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'DATEFORMAT', 'textbox', 'd/m/Y H:i', '', 8);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'MINDATEJQ', 'textarea', '', '', 9);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'MAXDATEJQ', 'textarea', '', '', 10);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'TIMEPICKER', 'select', 'YES\r\nNO', '{"case":{"YES":{"show":["TIMEPICKERFORMAT", "TIMESTEP","MINTIMEJQ", "MAXTIMEJQ"],"hide":[]},"NO":{"show":[],"hide":["TIMEPICKERFORMAT", "TIMESTEP","MINTIMEJQ", "MAXTIMEJQ"]}}}', 11);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'TIMEPICKERFORMAT', 'textbox', 'H:i', '', 12);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'TIMESTEP', 'textbox', '30', '', 13);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'MINTIMEJQ', 'textarea', '', '', 14);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'MAXTIMEJQ', 'textarea', '', '', 15);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'ADDITIONALATTRIBUTES', 'textarea', '', '', 16);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', '{"case":{"POPUP":{"show":["READONLY", "POPUPLABEL"],"hide":[]},"FLAT":{"show":[],"hide":["READONLY", "POPUPLABEL"]}}}', 17);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'READONLY', 'select', 'NO\r\nYES', '', 18);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'POPUPLABEL', 'textbox', '...', '', 19);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'THEME', 'select', 'DEFAULT\r\nDARK', '', 20);
INSERT INTO `aj14x_rsform_component_type_fields` VALUES (411, 'COMPONENTTYPE', 'hidden', '411', '', 200);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_component_types`
-- 

CREATE TABLE `aj14x_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8 AUTO_INCREMENT=412 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_component_types`
-- 

INSERT INTO `aj14x_rsform_component_types` VALUES (1, 'textBox');
INSERT INTO `aj14x_rsform_component_types` VALUES (2, 'textArea');
INSERT INTO `aj14x_rsform_component_types` VALUES (3, 'selectList');
INSERT INTO `aj14x_rsform_component_types` VALUES (4, 'checkboxGroup');
INSERT INTO `aj14x_rsform_component_types` VALUES (5, 'radioGroup');
INSERT INTO `aj14x_rsform_component_types` VALUES (6, 'calendar');
INSERT INTO `aj14x_rsform_component_types` VALUES (7, 'button');
INSERT INTO `aj14x_rsform_component_types` VALUES (8, 'captcha');
INSERT INTO `aj14x_rsform_component_types` VALUES (9, 'fileUpload');
INSERT INTO `aj14x_rsform_component_types` VALUES (10, 'freeText');
INSERT INTO `aj14x_rsform_component_types` VALUES (11, 'hidden');
INSERT INTO `aj14x_rsform_component_types` VALUES (13, 'submitButton');
INSERT INTO `aj14x_rsform_component_types` VALUES (14, 'password');
INSERT INTO `aj14x_rsform_component_types` VALUES (15, 'ticket');
INSERT INTO `aj14x_rsform_component_types` VALUES (41, 'pageBreak');
INSERT INTO `aj14x_rsform_component_types` VALUES (211, 'birthDay');
INSERT INTO `aj14x_rsform_component_types` VALUES (212, 'gmaps');
INSERT INTO `aj14x_rsform_component_types` VALUES (411, 'jQueryCalendar');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_components`
-- 

CREATE TABLE `aj14x_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_components`
-- 

INSERT INTO `aj14x_rsform_components` VALUES (1, 1, 1, 2, 1);
INSERT INTO `aj14x_rsform_components` VALUES (2, 1, 10, 1, 1);
INSERT INTO `aj14x_rsform_components` VALUES (5, 1, 5, 5, 1);
INSERT INTO `aj14x_rsform_components` VALUES (8, 1, 13, 7, 1);
INSERT INTO `aj14x_rsform_components` VALUES (9, 1, 10, 8, 1);
INSERT INTO `aj14x_rsform_components` VALUES (23, 1, 1, 6, 1);
INSERT INTO `aj14x_rsform_components` VALUES (24, 1, 1, 3, 1);
INSERT INTO `aj14x_rsform_components` VALUES (25, 1, 9, 4, 1);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_condition_details`
-- 

CREATE TABLE `aj14x_rsform_condition_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condition_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `operator` varchar(16) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `condition_id` (`condition_id`),
  KEY `component_id` (`component_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_condition_details`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_conditions`
-- 

CREATE TABLE `aj14x_rsform_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `action` varchar(16) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `component_id` int(11) NOT NULL,
  `condition` varchar(16) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `component_id` (`component_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_conditions`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_config`
-- 

CREATE TABLE `aj14x_rsform_config` (
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`SettingName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_config`
-- 

INSERT INTO `aj14x_rsform_config` VALUES ('allow_unsafe', '0');
INSERT INTO `aj14x_rsform_config` VALUES ('backup.mask', 'backup-{domain}-{date}');
INSERT INTO `aj14x_rsform_config` VALUES ('calculations.decimal', '.');
INSERT INTO `aj14x_rsform_config` VALUES ('calculations.nodecimals', '2');
INSERT INTO `aj14x_rsform_config` VALUES ('calculations.thousands', ',');
INSERT INTO `aj14x_rsform_config` VALUES ('global.codemirror', '0');
INSERT INTO `aj14x_rsform_config` VALUES ('global.date_mask', 'Y-m-d H:i:s');
INSERT INTO `aj14x_rsform_config` VALUES ('global.debug.mode', '0');
INSERT INTO `aj14x_rsform_config` VALUES ('global.editor', '1');
INSERT INTO `aj14x_rsform_config` VALUES ('global.filtering', 'joomla');
INSERT INTO `aj14x_rsform_config` VALUES ('global.iis', '0');
INSERT INTO `aj14x_rsform_config` VALUES ('global.register.code', '');
INSERT INTO `aj14x_rsform_config` VALUES ('google.api_key', '');
INSERT INTO `aj14x_rsform_config` VALUES ('request_timeout', '0');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_directory`
-- 

CREATE TABLE `aj14x_rsform_directory` (
  `formId` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT 'export.pdf',
  `enablepdf` tinyint(1) NOT NULL,
  `enablecsv` tinyint(1) NOT NULL,
  `ViewLayout` longtext NOT NULL,
  `ViewLayoutName` text NOT NULL,
  `ViewLayoutAutogenerate` tinyint(1) NOT NULL,
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `ListScript` text NOT NULL,
  `DetailsScript` text NOT NULL,
  `EmailsScript` text NOT NULL,
  `groups` text NOT NULL,
  PRIMARY KEY (`formId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_directory`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_directory_fields`
-- 

CREATE TABLE `aj14x_rsform_directory_fields` (
  `formId` int(11) NOT NULL,
  `componentId` int(11) NOT NULL,
  `viewable` tinyint(1) NOT NULL,
  `searchable` tinyint(1) NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `indetails` tinyint(1) NOT NULL,
  `incsv` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  UNIQUE KEY `formId` (`formId`,`componentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_directory_fields`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_emails`
-- 

CREATE TABLE `aj14x_rsform_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_emails`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_forms`
-- 

CREATE TABLE `aj14x_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `LoadFormLayoutFramework` tinyint(1) NOT NULL DEFAULT '1',
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `DisableSubmitButton` tinyint(1) NOT NULL DEFAULT '0',
  `RemoveCaptchaLogged` tinyint(1) NOT NULL DEFAULT '0',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `ShowFormTitle` tinyint(1) NOT NULL DEFAULT '1',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `ScrollToThankYou` tinyint(1) NOT NULL DEFAULT '0',
  `ThankYouMessagePopUp` tinyint(1) NOT NULL DEFAULT '0',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ScrollToError` tinyint(1) NOT NULL,
  `ThemeParams` text NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `KeepIP` tinyint(1) NOT NULL DEFAULT '1',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `Access` varchar(5) NOT NULL,
  PRIMARY KEY (`FormId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_forms`
-- 

INSERT INTO `aj14x_rsform_forms` VALUES (1, 'Uzsakymo forma', '<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_{global:formid}_page_0">\r\n	<div class="rsform-block rsform-block-header">\r\n			<div class="formBody">{Header:body}</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-fullname">\r\n	<div class="formControlLabel">{FullName:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n			<div class="formBody">{FullName:body}<span class="formValidation">{FullName:validation}</span></div>\r\n			<p class="formDescription">{FullName:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-adress">\r\n	<div class="formControlLabel">{Adress:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n			<div class="formBody">{Adress:body}<span class="formValidation">{Adress:validation}</span></div>\r\n			<p class="formDescription">{Adress:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-photo">\r\n	<div class="formControlLabel">{Photo:caption}</div>\r\n		<div class="formControls">\r\n			<div class="formBody">{Photo:body}<span class="formValidation">{Photo:validation}</span></div>\r\n			<p class="formDescription">{Photo:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-position">\r\n	<div class="formControlLabel">{Position:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n			<div class="formBody">{Position:body}<span class="formValidation">{Position:validation}</span></div>\r\n			<p class="formDescription">{Position:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-email">\r\n	<div class="formControlLabel">{Email:caption}</div>\r\n		<div class="formControls">\r\n			<div class="formBody">{Email:body}<span class="formValidation">{Email:validation}</span></div>\r\n			<p class="formDescription">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-submit">\r\n	<div class="formControlLabel">{Submit:caption}</div>\r\n		<div class="formControls">\r\n			<div class="formBody">{Submit:body}<span class="formValidation">{Submit:validation}</span></div>\r\n			<p class="formDescription">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-footer">\r\n			<div class="formBody">{Footer:body}</div>\r\n	</div>\r\n</fieldset>\r\n', 'responsive', 1, 1, 0, 0, '', '', 'RSForm! Pro example', 1, 1, 'en-GB', '', 1, 0, 0, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 0, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', '{global:mailfrom}', '', '{global:fromname}', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', '{FullName:value}', 'Contact', 1, '', '', '', '', '', '', 0, '', '', '(*)', '', ', ', 1, '', 'userForm', '', '', '', 0, 0, '', 1, 1, 0, 0, '');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_mappings`
-- 

CREATE TABLE `aj14x_rsform_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `driver` varchar(16) NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_mappings`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_posts`
-- 

CREATE TABLE `aj14x_rsform_posts` (
  `form_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `fields` mediumtext NOT NULL,
  `silent` tinyint(1) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_posts`
-- 

INSERT INTO `aj14x_rsform_posts` VALUES (1, 0, 1, '[]', 1, 'http://');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_properties`
-- 

CREATE TABLE `aj14x_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8 AUTO_INCREMENT=206 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_properties`
-- 

INSERT INTO `aj14x_rsform_properties` VALUES (1, 1, 'NAME', 'FullName');
INSERT INTO `aj14x_rsform_properties` VALUES (2, 1, 'CAPTION', 'Full Name');
INSERT INTO `aj14x_rsform_properties` VALUES (3, 1, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (4, 1, 'SIZE', '20');
INSERT INTO `aj14x_rsform_properties` VALUES (5, 1, 'MAXSIZE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (6, 1, 'VALIDATIONRULE', 'none');
INSERT INTO `aj14x_rsform_properties` VALUES (7, 1, 'VALIDATIONMESSAGE', 'Please type your full name.');
INSERT INTO `aj14x_rsform_properties` VALUES (8, 1, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (9, 1, 'DEFAULTVALUE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (10, 1, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (11, 2, 'NAME', 'Header');
INSERT INTO `aj14x_rsform_properties` VALUES (12, 2, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.');
INSERT INTO `aj14x_rsform_properties` VALUES (32, 5, 'NAME', 'Position');
INSERT INTO `aj14x_rsform_properties` VALUES (33, 5, 'CAPTION', 'Position');
INSERT INTO `aj14x_rsform_properties` VALUES (34, 5, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]');
INSERT INTO `aj14x_rsform_properties` VALUES (35, 5, 'FLOW', 'VERTICAL');
INSERT INTO `aj14x_rsform_properties` VALUES (36, 5, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (37, 5, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (38, 5, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (39, 5, 'VALIDATIONMESSAGE', 'Please specify your position in the company');
INSERT INTO `aj14x_rsform_properties` VALUES (58, 8, 'NAME', 'Submit');
INSERT INTO `aj14x_rsform_properties` VALUES (59, 8, 'LABEL', 'Submit');
INSERT INTO `aj14x_rsform_properties` VALUES (60, 8, 'CAPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (61, 8, 'RESET', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (62, 8, 'RESETLABEL', 'Reset');
INSERT INTO `aj14x_rsform_properties` VALUES (63, 8, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (64, 9, 'NAME', 'Footer');
INSERT INTO `aj14x_rsform_properties` VALUES (65, 9, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>');
INSERT INTO `aj14x_rsform_properties` VALUES (149, 2, 'EMAILATTACH', '');
INSERT INTO `aj14x_rsform_properties` VALUES (150, 1, 'VALIDATIONEXTRA', '');
INSERT INTO `aj14x_rsform_properties` VALUES (151, 1, 'INPUTTYPE', 'text');
INSERT INTO `aj14x_rsform_properties` VALUES (152, 1, 'ATTRMIN', '');
INSERT INTO `aj14x_rsform_properties` VALUES (153, 1, 'ATTRSTEP', '');
INSERT INTO `aj14x_rsform_properties` VALUES (154, 1, 'ATTRMAX', '');
INSERT INTO `aj14x_rsform_properties` VALUES (155, 1, 'EMAILATTACH', '');
INSERT INTO `aj14x_rsform_properties` VALUES (156, 5, 'EMAILATTACH', '');
INSERT INTO `aj14x_rsform_properties` VALUES (157, 9, 'EMAILATTACH', '');
INSERT INTO `aj14x_rsform_properties` VALUES (158, 23, 'NAME', 'Email');
INSERT INTO `aj14x_rsform_properties` VALUES (159, 23, 'CAPTION', 'Elektroninis paštas');
INSERT INTO `aj14x_rsform_properties` VALUES (160, 23, 'DEFAULTVALUE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (161, 23, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (162, 23, 'REQUIRED', 'NO');
INSERT INTO `aj14x_rsform_properties` VALUES (163, 23, 'VALIDATIONEXTRA', '');
INSERT INTO `aj14x_rsform_properties` VALUES (164, 23, 'VALIDATIONRULE', 'none');
INSERT INTO `aj14x_rsform_properties` VALUES (165, 23, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `aj14x_rsform_properties` VALUES (166, 23, 'INPUTTYPE', 'text');
INSERT INTO `aj14x_rsform_properties` VALUES (167, 23, 'ATTRMIN', '');
INSERT INTO `aj14x_rsform_properties` VALUES (168, 23, 'ATTRSTEP', '1');
INSERT INTO `aj14x_rsform_properties` VALUES (169, 23, 'ATTRMAX', '');
INSERT INTO `aj14x_rsform_properties` VALUES (170, 23, 'SIZE', '20');
INSERT INTO `aj14x_rsform_properties` VALUES (171, 23, 'MAXSIZE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (172, 23, 'PLACEHOLDER', '');
INSERT INTO `aj14x_rsform_properties` VALUES (173, 23, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (174, 23, 'EMAILATTACH', '');
INSERT INTO `aj14x_rsform_properties` VALUES (175, 24, 'NAME', 'Adress');
INSERT INTO `aj14x_rsform_properties` VALUES (176, 24, 'CAPTION', 'Namų arba darbo adresas');
INSERT INTO `aj14x_rsform_properties` VALUES (177, 24, 'DEFAULTVALUE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (178, 24, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (179, 24, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (180, 24, 'VALIDATIONEXTRA', '');
INSERT INTO `aj14x_rsform_properties` VALUES (181, 24, 'VALIDATIONRULE', 'none');
INSERT INTO `aj14x_rsform_properties` VALUES (182, 24, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `aj14x_rsform_properties` VALUES (183, 24, 'INPUTTYPE', 'text');
INSERT INTO `aj14x_rsform_properties` VALUES (184, 24, 'ATTRMIN', '');
INSERT INTO `aj14x_rsform_properties` VALUES (185, 24, 'ATTRSTEP', '1');
INSERT INTO `aj14x_rsform_properties` VALUES (186, 24, 'ATTRMAX', '');
INSERT INTO `aj14x_rsform_properties` VALUES (187, 24, 'SIZE', '20');
INSERT INTO `aj14x_rsform_properties` VALUES (188, 24, 'MAXSIZE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (189, 24, 'PLACEHOLDER', '');
INSERT INTO `aj14x_rsform_properties` VALUES (190, 24, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (191, 24, 'EMAILATTACH', '');
INSERT INTO `aj14x_rsform_properties` VALUES (192, 25, 'NAME', 'Photo');
INSERT INTO `aj14x_rsform_properties` VALUES (193, 25, 'CAPTION', 'Aukos fotografija (jei turite)');
INSERT INTO `aj14x_rsform_properties` VALUES (194, 25, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (195, 25, 'REQUIRED', 'NO');
INSERT INTO `aj14x_rsform_properties` VALUES (196, 25, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `aj14x_rsform_properties` VALUES (197, 25, 'FILESIZE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (198, 25, 'ACCEPTEDFILES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (199, 25, 'PREFIX', '');
INSERT INTO `aj14x_rsform_properties` VALUES (200, 25, 'DESTINATION', 'components/com_rsform/uploads/');
INSERT INTO `aj14x_rsform_properties` VALUES (201, 25, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (202, 25, 'EMAILATTACH', '');
INSERT INTO `aj14x_rsform_properties` VALUES (203, 8, 'DISPLAYPROGRESS', 'NO');
INSERT INTO `aj14x_rsform_properties` VALUES (204, 8, 'BUTTONTYPE', 'TYPEBUTTON');
INSERT INTO `aj14x_rsform_properties` VALUES (205, 8, 'EMAILATTACH', '');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_submission_columns`
-- 

CREATE TABLE `aj14x_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL,
  PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_submission_columns`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_submission_values`
-- 

CREATE TABLE `aj14x_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=utf8 AUTO_INCREMENT=468 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_submission_values`
-- 

INSERT INTO `aj14x_rsform_submission_values` VALUES (22, 1, 5, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf16e1dfd0e-o-ANGRY-WOMAN-facebook.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (23, 1, 5, 'FullName', 'Janina Jadagonienė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (24, 1, 5, 'Adress', 'Mėtų 15, Trakai');
INSERT INTO `aj14x_rsform_submission_values` VALUES (25, 1, 5, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (26, 1, 5, 'Email', 'kovotojas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (27, 1, 5, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (28, 1, 5, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (29, 1, 6, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf235b01df9-11_Most_Handsome_Men_In_Politics9.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (30, 1, 6, 'FullName', 'Jurgis Keliautojas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (31, 1, 6, 'Adress', 'Vyšnių g. 24-15');
INSERT INTO `aj14x_rsform_submission_values` VALUES (32, 1, 6, 'Position', 'Žmogus su fizine apsauga - 40 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (33, 1, 6, 'Email', 'strielka@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (34, 1, 6, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (35, 1, 6, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (36, 1, 7, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf23b8c3465-18jun08.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (37, 1, 7, 'FullName', 'Valentina Kiauliutė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (38, 1, 7, 'Adress', 'Klevų 7, Klaipėda');
INSERT INTO `aj14x_rsform_submission_values` VALUES (39, 1, 7, 'Position', 'Pareigūnas - 20 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (40, 1, 7, 'Email', 'stinger@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (41, 1, 7, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (42, 1, 7, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (43, 1, 8, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf241a3c469-2014-men-business-suits.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (44, 1, 8, 'FullName', 'Zenonas Plaktukaitis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (45, 1, 8, 'Adress', 'Palangos g. 11, Šiauliai');
INSERT INTO `aj14x_rsform_submission_values` VALUES (46, 1, 8, 'Position', 'Valdžios atstovas - 50 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (47, 1, 8, 'Email', 'sliekas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (48, 1, 8, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (49, 1, 8, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (50, 1, 9, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf247756676-Ukrainian-girls.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (51, 1, 9, 'FullName', 'Lionė Barboraitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (52, 1, 9, 'Adress', 'Laisvės al. 15-86, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (53, 1, 9, 'Position', 'Žmogus su fizine apsauga - 40 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (54, 1, 9, 'Email', 'svieta@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (55, 1, 9, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (56, 1, 9, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (57, 1, 10, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf25e397d6f-2015-Men-s-Casual-Business-Slim-Denim-Blazer-Coat-Jacket-Suits-for-Men-Man-Cowboy-Suit.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (58, 1, 10, 'FullName', 'Lidas Lirbevičius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (59, 1, 10, 'Adress', 'Sniego 86, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (60, 1, 10, 'Position', 'Žmogus su fizine apsauga - 40 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (61, 1, 10, 'Email', 'wirqis@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (62, 1, 10, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (63, 1, 10, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (64, 1, 11, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf264f93465-3290-3690-1_yoga_sports_clothing_for_men_top_trousers_pants_sport_clothes_wear_cheap_online_sportswear-600x600.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (65, 1, 11, 'FullName', 'Saimonas Drugelis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (66, 1, 11, 'Adress', 'Baltu 286-14, Kėdainiai');
INSERT INTO `aj14x_rsform_submission_values` VALUES (67, 1, 11, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (68, 1, 11, 'Email', 'snaige@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (69, 1, 11, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (70, 1, 11, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (71, 1, 12, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf26916ffbf-155438-566x848r1-khaki-jacket-dark-pants.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (72, 1, 12, 'FullName', 'Darius Palubinskas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (73, 1, 12, 'Adress', 'Pipirų g. 47, Alytus');
INSERT INTO `aj14x_rsform_submission_values` VALUES (74, 1, 12, 'Position', 'Pareigūnas - 20 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (75, 1, 12, 'Email', 'mamania@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (76, 1, 12, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (77, 1, 12, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (78, 1, 13, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf26cb3b329-th (7).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (79, 1, 13, 'FullName', 'Greta Grigaitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (80, 1, 13, 'Adress', 'Vieversių g. 18');
INSERT INTO `aj14x_rsform_submission_values` VALUES (81, 1, 13, 'Position', 'Eilinis žmogus - 5 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (82, 1, 13, 'Email', 'smitas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (83, 1, 13, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (84, 1, 13, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (85, 1, 14, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf27358e3f4-th (5).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (86, 1, 14, 'FullName', 'Silvija Staidžiūnaitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (87, 1, 14, 'Adress', 'Kokosų g.84, Trakai');
INSERT INTO `aj14x_rsform_submission_values` VALUES (88, 1, 14, 'Position', 'Eilinis žmogus - 5 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (89, 1, 14, 'Email', 'slide@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (90, 1, 14, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (91, 1, 14, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (92, 1, 15, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf277b4133d-450390909.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (93, 1, 15, 'FullName', 'Saulius Kamilius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (94, 1, 15, 'Adress', 'Liepų g, 12, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (95, 1, 15, 'Position', 'Eilinis žmogus - 5 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (96, 1, 15, 'Email', 'sos@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (97, 1, 15, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (98, 1, 15, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (99, 1, 16, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf27d74a392-th (3).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (100, 1, 16, 'FullName', 'Loreta Misiūnaitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (101, 1, 16, 'Adress', 'Obuolių g, 72, Panevėžys');
INSERT INTO `aj14x_rsform_submission_values` VALUES (102, 1, 16, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (103, 1, 16, 'Email', 'sruoga@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (104, 1, 16, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (105, 1, 16, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (106, 1, 17, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf283260d33-140401164519-01-neel-kashkari-restricted-story-top.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (107, 1, 17, 'FullName', 'Audrius Moliūgėlis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (108, 1, 17, 'Adress', 'Smolensko 45, Šiauliai');
INSERT INTO `aj14x_rsform_submission_values` VALUES (109, 1, 17, 'Position', 'Valdžios atstovas - 50 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (110, 1, 17, 'Email', 'viesas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (111, 1, 17, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (112, 1, 17, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (113, 1, 18, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf28943cfd1-Adam-Levine-Hairstyle-for-Business-Man.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (114, 1, 18, 'FullName', 'Lukas Murmėnas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (115, 1, 18, 'Adress', 'Mindaugo 58, Biržai');
INSERT INTO `aj14x_rsform_submission_values` VALUES (116, 1, 18, 'Position', 'Pareigūnas - 20 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (117, 1, 18, 'Email', 'svajus@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (118, 1, 18, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (119, 1, 18, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (120, 1, 19, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf28c9c0256-amiri97zs.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (121, 1, 19, 'FullName', 'Danguolė Naujokaitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (122, 1, 19, 'Adress', 'Žvėrių 47, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (123, 1, 19, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (124, 1, 19, 'Email', 'dede@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (125, 1, 19, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (126, 1, 19, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (127, 1, 20, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf29003f141-Avril Lavigne Hot4.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (128, 1, 20, 'FullName', 'Saulė, Pijokaitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (129, 1, 20, 'Adress', 'Elnių g. 18, Palanga');
INSERT INTO `aj14x_rsform_submission_values` VALUES (130, 1, 20, 'Position', 'Žmogus su fizine apsauga - 40 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (131, 1, 20, 'Email', 'kaimynas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (132, 1, 20, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (133, 1, 20, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (134, 1, 21, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf2940d04dc-beautifullymade6.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (135, 1, 21, 'FullName', 'Tomas Vilkelis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (136, 1, 21, 'Adress', 'Slėnio 47, Biržai');
INSERT INTO `aj14x_rsform_submission_values` VALUES (137, 1, 21, 'Position', 'Valdžios atstovas - 50 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (138, 1, 21, 'Email', 'seilius@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (139, 1, 21, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (140, 1, 21, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (141, 1, 22, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf2981e48f8-th (4).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (142, 1, 22, 'FullName', 'Svieta, Naglinskienė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (143, 1, 22, 'Adress', 'Kelmų 2. Klaipėda');
INSERT INTO `aj14x_rsform_submission_values` VALUES (144, 1, 22, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (145, 1, 22, 'Email', 'stogas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (146, 1, 22, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (147, 1, 22, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (148, 1, 23, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf29be5049b-th (8).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (149, 1, 23, 'FullName', 'Rūta Bujauskienė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (150, 1, 23, 'Adress', 'Gedimino 458-58, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (151, 1, 23, 'Position', 'Eilinis žmogus - 5 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (152, 1, 23, 'Email', 'svola@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (153, 1, 23, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (154, 1, 23, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (155, 1, 24, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf2a010b36c-th (6).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (156, 1, 24, 'FullName', 'Laima Valatkienė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (157, 1, 24, 'Adress', 'Liepų 48, Klaipėda');
INSERT INTO `aj14x_rsform_submission_values` VALUES (158, 1, 24, 'Position', 'Žmogus su fizine apsauga - 40 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (159, 1, 24, 'Email', 'gratis@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (160, 1, 24, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (161, 1, 24, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (162, 1, 25, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf2a497e379-Business-Hairstyles-4.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (163, 1, 25, 'FullName', 'Audrius Meška');
INSERT INTO `aj14x_rsform_submission_values` VALUES (164, 1, 25, 'Adress', 'Kaimynų g. 84, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (165, 1, 25, 'Position', 'Pareigūnas - 20 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (166, 1, 25, 'Email', 'Pareiga@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (167, 1, 25, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (168, 1, 25, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (169, 1, 26, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf2a8e81955-Business-Hairstyles-11.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (170, 1, 26, 'FullName', 'Giedrius Perkūnas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (171, 1, 26, 'Adress', 'Geležinkelio 47, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (172, 1, 26, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (173, 1, 26, 'Email', 'stiklinis@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (174, 1, 26, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (175, 1, 26, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (176, 1, 27, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf31d40496a-th.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (177, 1, 27, 'FullName', 'Irena Liliutė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (178, 1, 27, 'Adress', 'Sausainių 56-85, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (179, 1, 27, 'Position', 'Eilinis žmogus - 5 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (180, 1, 27, 'Email', 'snobas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (181, 1, 27, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (182, 1, 27, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (183, 1, 28, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3214aebfa-Business-Hairstyles-for-Men1.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (184, 1, 28, 'FullName', 'Stanislavas Pabiedinskis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (185, 1, 28, 'Adress', 'Krioklio 54-87, Ignalina');
INSERT INTO `aj14x_rsform_submission_values` VALUES (186, 1, 28, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (187, 1, 28, 'Email', 'nojus@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (188, 1, 28, 'Submit', 'Submit');
INSERT INTO `aj14x_rsform_submission_values` VALUES (189, 1, 28, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (190, 1, 29, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf33c67b899-business-man-1385050_960_720.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (191, 1, 29, 'FullName', 'Jaunius Maldeikis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (192, 1, 29, 'Adress', 'Strijų g, 54, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (193, 1, 29, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (194, 1, 29, 'Email', 'kiaule@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (195, 1, 29, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (196, 1, 29, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (197, 1, 30, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf340f9b7cf-Business-Man-Reading-by-Alex-E-Proimos.png');
INSERT INTO `aj14x_rsform_submission_values` VALUES (198, 1, 30, 'FullName', 'Steponas Poviliūnas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (199, 1, 30, 'Adress', 'Savanorių 95-68, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (200, 1, 30, 'Position', 'Žmogus su fizine apsauga - 40 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (201, 1, 30, 'Email', 'drasus@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (202, 1, 30, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (203, 1, 30, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (204, 1, 31, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf344a2765e-Woman_masked_by_a_scarfe.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (205, 1, 31, 'FullName', 'Justė Paulauskaitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (206, 1, 31, 'Adress', 'Kibirų 16, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (207, 1, 31, 'Position', 'Eilinis žmogus - 5 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (208, 1, 31, 'Email', 'stepukas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (209, 1, 31, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (210, 1, 31, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (211, 1, 32, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3483f3cb1-China_Men_s_Business_Dress_Suit20125221444451.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (212, 1, 32, 'FullName', 'Donatas Banionis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (213, 1, 32, 'Adress', 'Sraigių 17, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (214, 1, 32, 'Position', 'Valdžios atstovas - 50 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (215, 1, 32, 'Email', 'statula@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (216, 1, 32, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (217, 1, 32, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (218, 1, 33, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf34bf7d373-date-with-russian-singles-russianstodate.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (219, 1, 33, 'FullName', 'Jurgita Skielienė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (220, 1, 33, 'Adress', 'Stebuklų 47, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (221, 1, 33, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (222, 1, 33, 'Email', 'sausis@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (223, 1, 33, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (224, 1, 33, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (225, 1, 34, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf34ed2dd60-digvijay-singh-agencies.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (226, 1, 34, 'FullName', 'Eduardas Biliūnas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (227, 1, 34, 'Adress', 'Romuvos 75-5, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (228, 1, 34, 'Position', 'Valdžios atstovas - 50 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (229, 1, 34, 'Email', 'jurgis@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (230, 1, 34, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (231, 1, 34, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (232, 1, 35, 'FullName', 'Ieva pievaitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (233, 1, 35, 'Adress', 'Sausumos 17, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (234, 1, 35, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (235, 1, 35, 'Email', 'sasiuvinys@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (236, 1, 35, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (237, 1, 35, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (238, 1, 36, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf355bef01c-Girls_and_Ferraris_e06a23a6c0aa72ad5b0a_1.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (239, 1, 36, 'FullName', 'Ligita Purpuraitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (240, 1, 36, 'Adress', 'Kanalų 14, Palanga');
INSERT INTO `aj14x_rsform_submission_values` VALUES (241, 1, 36, 'Position', 'Eilinis žmogus - 5 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (242, 1, 36, 'Email', 'kriause@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (243, 1, 36, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (244, 1, 36, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (245, 1, 37, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf35e884087-Girls-Leggings-HD-5.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (246, 1, 37, 'FullName', 'Živilė Kairytė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (247, 1, 37, 'Adress', 'Viešbučių g. 47, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (248, 1, 37, 'Position', 'Pareigūnas - 20 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (249, 1, 37, 'Email', 'policininkas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (250, 1, 37, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (251, 1, 37, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (252, 1, 38, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3652b942a-Young_man_exhibiting_a_serious_expression.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (253, 1, 38, 'FullName', 'Gabrielius Kisielius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (254, 1, 38, 'Adress', 'Paukščių 47, Nida');
INSERT INTO `aj14x_rsform_submission_values` VALUES (255, 1, 38, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (256, 1, 38, 'Email', 'pajuris@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (257, 1, 38, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (258, 1, 38, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (259, 1, 39, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3683f25a8-jamie-alexander.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (260, 1, 39, 'FullName', 'Rasa Riekumaitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (261, 1, 39, 'Adress', 'Salos 57, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (262, 1, 39, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (263, 1, 39, 'Email', 'sventa@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (264, 1, 39, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (265, 1, 39, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (266, 1, 40, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf36b459a2f-Last-Man-Standing.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (267, 1, 40, 'FullName', 'Giedrius Oželis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (268, 1, 40, 'Adress', 'Lipetsko 45, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (269, 1, 40, 'Position', 'Eilinis žmogus - 5 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (270, 1, 40, 'Email', 'kaunietis@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (271, 1, 40, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (272, 1, 40, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (273, 1, 41, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf36f22f0ad-man-bun-hairstyle-42.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (274, 1, 41, 'FullName', 'Tauras Klaidenis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (275, 1, 41, 'Adress', 'Piratų 48, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (276, 1, 41, 'Position', 'Valdžios atstovas - 50 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (277, 1, 41, 'Email', 'jura@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (278, 1, 41, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (279, 1, 41, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (280, 1, 42, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf37290e5a8-la-et-hc-wonder-woman-patty-jenkins-20170530.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (281, 1, 42, 'FullName', 'Gitana Nezabeikaitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (282, 1, 42, 'Adress', 'Korių 42, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (283, 1, 42, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (284, 1, 42, 'Email', 'sauja@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (285, 1, 42, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (286, 1, 42, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (287, 1, 43, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf377c2da1d-Mango-Man-Sport-Autumn-2015-Men’s-Lookbook-2.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (288, 1, 43, 'FullName', 'Naudžius Karabinierius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (289, 1, 43, 'Adress', 'Šaulių 95, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (290, 1, 43, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (291, 1, 43, 'Email', 'strielkas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (292, 1, 43, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (293, 1, 43, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (294, 1, 44, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf37a985509-man-suit-5.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (295, 1, 44, 'FullName', 'Deividas Abalius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (296, 1, 44, 'Adress', 'Polinezijos 15, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (297, 1, 44, 'Position', 'Pareigūnas - 20 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (298, 1, 44, 'Email', 'samitas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (299, 1, 44, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (300, 1, 44, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (301, 1, 45, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf37f1e06e6-Priyanka-Chopra-Most-Beautiful-Woman-2016.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (302, 1, 45, 'FullName', 'Eglė Jaunikaitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (303, 1, 45, 'Adress', 'Stulginskio 47, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (304, 1, 45, 'Position', 'Eilinis žmogus - 5 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (305, 1, 45, 'Email', 'svietute@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (306, 1, 45, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (307, 1, 45, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (308, 1, 46, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3829d1740-Man-Transparent.png');
INSERT INTO `aj14x_rsform_submission_values` VALUES (309, 1, 46, 'FullName', 'Juozukas Kanapienis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (310, 1, 46, 'Adress', 'Perkūno 41, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (311, 1, 46, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (312, 1, 46, 'Email', 'juokas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (313, 1, 46, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (314, 1, 46, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (315, 1, 47, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf386a318b6-Men-fashion-2017-blazers-for-men-and-mens-sport-coats-2017-6.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (316, 1, 47, 'FullName', 'Egidijus Miežinis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (317, 1, 47, 'Adress', 'Maišiogalos 47-8, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (318, 1, 47, 'Position', 'Žmogus su fizine apsauga - 40 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (319, 1, 47, 'Email', 'duokite@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (320, 1, 47, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (321, 1, 47, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (328, 1, 49, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3908370a0-Method-Man-1.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (329, 1, 49, 'FullName', 'Gintaras Giedraitis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (330, 1, 49, 'Adress', 'Sausakimšos 47, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (331, 1, 49, 'Position', 'Žmogus su fizine apsauga - 40 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (332, 1, 49, 'Email', 'saulute@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (333, 1, 49, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (334, 1, 49, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (335, 1, 50, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf393ce9630-NEW-Men-Korea-Casual-Harem-Baggy-Hip-Hop-Dance-Taper-Sport-Sweat-Pants-Sweatpants-Trousers-Slack.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (336, 1, 50, 'FullName', 'Ramūnas Gabalis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (337, 1, 50, 'Adress', 'Rimties 18, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (338, 1, 50, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (339, 1, 50, 'Email', 'rimtas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (340, 1, 50, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (341, 1, 50, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (342, 1, 51, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf39873294a-paris.png');
INSERT INTO `aj14x_rsform_submission_values` VALUES (343, 1, 51, 'FullName', 'Eleonora Karaliūtė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (344, 1, 51, 'Adress', 'Sidabro 78, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (345, 1, 51, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (346, 1, 51, 'Email', 'suodis@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (347, 1, 51, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (348, 1, 51, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (349, 1, 52, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf39c4d69ef-the-man-who-was-supposed-to-be-integral-to-trumps-economic-policy-appears-to-be-losing-influence.png');
INSERT INTO `aj14x_rsform_submission_values` VALUES (350, 1, 52, 'FullName', 'Genadijus Garmus');
INSERT INTO `aj14x_rsform_submission_values` VALUES (351, 1, 52, 'Adress', 'Smaližių 45, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (352, 1, 52, 'Position', 'Valdžios atstovas - 50 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (353, 1, 52, 'Email', 'cukrus@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (354, 1, 52, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (355, 1, 52, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (356, 1, 53, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3a097e8e7-photodune-5559097-bald-man-m.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (357, 1, 53, 'FullName', 'Ignas Perėjūnas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (358, 1, 53, 'Adress', 'Žvirblių 78, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (359, 1, 53, 'Position', 'Žmogus su fizine apsauga - 40 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (360, 1, 53, 'Email', 'paukstis@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (361, 1, 53, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (362, 1, 53, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (363, 1, 54, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3a3f298e0-politics-sara-latife-ruiz-chavez.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (364, 1, 54, 'FullName', 'Gražina Slaugutė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (365, 1, 54, 'Adress', 'Žvejų 87, Klaipėda');
INSERT INTO `aj14x_rsform_submission_values` VALUES (366, 1, 54, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (367, 1, 54, 'Email', 'stepe@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (368, 1, 54, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (369, 1, 54, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (370, 1, 55, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3a7a2f96d-popular-sports-featured-image.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (371, 1, 55, 'FullName', 'Angelė Mataitytė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (372, 1, 55, 'Adress', 'Sporto g. 69, Palanga');
INSERT INTO `aj14x_rsform_submission_values` VALUES (373, 1, 55, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (374, 1, 55, 'Email', 'sopotas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (375, 1, 55, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (376, 1, 55, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (377, 1, 56, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3ab11eb22-stupid-man.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (378, 1, 56, 'FullName', 'Juozas Valatka');
INSERT INTO `aj14x_rsform_submission_values` VALUES (379, 1, 56, 'Adress', 'Saldumynų 77, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (380, 1, 56, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (381, 1, 56, 'Email', 'smala@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (382, 1, 56, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (383, 1, 56, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (384, 1, 57, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3af501b42-SweatMan1.png');
INSERT INTO `aj14x_rsform_submission_values` VALUES (385, 1, 57, 'FullName', 'Egis Makarovas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (386, 1, 57, 'Adress', 'Menininkų 73, Panevėžys');
INSERT INTO `aj14x_rsform_submission_values` VALUES (387, 1, 57, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (388, 1, 57, 'Email', 'miestai@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (389, 1, 57, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (390, 1, 57, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (391, 1, 58, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3b40d0344-tan-mens-sport-coats-blazers-long-island.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (392, 1, 58, 'FullName', 'Sigis Luknevičius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (393, 1, 58, 'Adress', 'Seržntų 17-2');
INSERT INTO `aj14x_rsform_submission_values` VALUES (394, 1, 58, 'Position', 'Pareigūnas - 20 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (395, 1, 58, 'Email', 'mokslai@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (396, 1, 58, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (397, 1, 58, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (398, 1, 59, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3b88e31e4-th (1).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (399, 1, 59, 'FullName', 'ligita Masionytė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (400, 1, 59, 'Adress', 'Lietuvių g. 71-1, Šiauliai');
INSERT INTO `aj14x_rsform_submission_values` VALUES (401, 1, 59, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (402, 1, 59, 'Email', 'smilkalai@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (403, 1, 59, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (404, 1, 59, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (405, 1, 60, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3bbb335bd-tetinotete-tumblr1.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (406, 1, 60, 'FullName', 'Julius Pobedinskas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (407, 1, 60, 'Adress', 'Stepo 5, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (408, 1, 60, 'Position', 'Valdžios atstovas - 50 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (409, 1, 60, 'Email', 'sotus@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (410, 1, 60, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (411, 1, 60, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (412, 1, 61, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3bf7d7a6a-th (9).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (413, 1, 61, 'FullName', 'Jurgis Matulis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (414, 1, 61, 'Adress', 'Kosmonautų 47, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (415, 1, 61, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (416, 1, 61, 'Email', 'menulis@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (417, 1, 61, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (418, 1, 61, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (419, 1, 62, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3c3334316-th (10).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (420, 1, 62, 'FullName', 'Gediminas Natulis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (421, 1, 62, 'Adress', 'Liepų 15 Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (422, 1, 62, 'Position', 'Pareigūnas - 20 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (423, 1, 62, 'Email', 'stabas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (424, 1, 62, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (425, 1, 62, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (426, 1, 63, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3c6c9626d-th (11).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (427, 1, 63, 'FullName', 'Sergejus Suvorovietis');
INSERT INTO `aj14x_rsform_submission_values` VALUES (428, 1, 63, 'Adress', 'Tankų g. 4, Šiauliai');
INSERT INTO `aj14x_rsform_submission_values` VALUES (429, 1, 63, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (430, 1, 63, 'Email', 'siaure@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (431, 1, 63, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (432, 1, 63, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (433, 1, 64, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3cb5abb40-th (12).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (434, 1, 64, 'FullName', 'Motiejus Makijauskas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (435, 1, 64, 'Adress', 'Salomėjos 47-2, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (436, 1, 64, 'Position', 'Žmogus su fizine apsauga - 40 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (437, 1, 64, 'Email', 'slove@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (438, 1, 64, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (439, 1, 64, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (440, 1, 65, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3cf9ed908-th (2).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (441, 1, 65, 'FullName', 'Milda Genytė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (442, 1, 65, 'Adress', 'Maironio 15-4, Vilnius');
INSERT INTO `aj14x_rsform_submission_values` VALUES (443, 1, 65, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (444, 1, 65, 'Email', 'kaunas@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (445, 1, 65, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (446, 1, 65, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (447, 1, 66, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3d38cea2a-th (13).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (448, 1, 66, 'FullName', 'Vytautas Mikoliūnas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (449, 1, 66, 'Adress', 'Suvalkiečių g. 84, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (450, 1, 66, 'Position', 'Verslo savininkas - 30 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (451, 1, 66, 'Email', 'striuka@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (452, 1, 66, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (453, 1, 66, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (454, 1, 67, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf3d8357cbf-th (14).jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (455, 1, 67, 'FullName', 'Svajūnas Lančiauskas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (456, 1, 67, 'Adress', 'Vytauto g. 58, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (457, 1, 67, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (458, 1, 67, 'Email', 'Kaimynai@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (459, 1, 67, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (460, 1, 67, 'formId', '1');
INSERT INTO `aj14x_rsform_submission_values` VALUES (461, 1, 68, 'Photo', '/hermes/bosnacweb02/bosnacweb02ap/b407/ipg.modelagencypegasusco/agentura_pegasus/kileris/components/com_rsform/uploads/59bf41ce20cf1-marcus-hiles-developments-bettering-area-park-spaces.jpg');
INSERT INTO `aj14x_rsform_submission_values` VALUES (462, 1, 68, 'FullName', 'Renata Mantaitė');
INSERT INTO `aj14x_rsform_submission_values` VALUES (463, 1, 68, 'Adress', 'Taikos pr. 48-1, Kaunas');
INSERT INTO `aj14x_rsform_submission_values` VALUES (464, 1, 68, 'Position', 'Įmonės vadovas - 10 000 €');
INSERT INTO `aj14x_rsform_submission_values` VALUES (465, 1, 68, 'Email', 'wirqis@gmail.com');
INSERT INTO `aj14x_rsform_submission_values` VALUES (466, 1, 68, 'Submit', '');
INSERT INTO `aj14x_rsform_submission_values` VALUES (467, 1, 68, 'formId', '1');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_submissions`
-- 

CREATE TABLE `aj14x_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(255) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_submissions`
-- 

INSERT INTO `aj14x_rsform_submissions` VALUES (5, 1, '2017-09-18 00:44:17', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (6, 1, '2017-09-18 01:37:30', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (7, 1, '2017-09-18 01:39:04', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (8, 1, '2017-09-18 01:40:42', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (9, 1, '2017-09-18 01:42:15', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (10, 1, '2017-09-18 01:48:19', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (11, 1, '2017-09-18 01:50:07', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (12, 1, '2017-09-18 01:51:13', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (13, 1, '2017-09-18 01:52:11', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (14, 1, '2017-09-18 01:53:57', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (15, 1, '2017-09-18 01:55:07', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (16, 1, '2017-09-18 01:56:39', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (17, 1, '2017-09-18 01:58:10', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (18, 1, '2017-09-18 01:59:48', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (19, 1, '2017-09-18 02:00:41', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (20, 1, '2017-09-18 02:01:36', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (21, 1, '2017-09-18 02:02:40', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (22, 1, '2017-09-18 02:03:45', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (23, 1, '2017-09-18 02:04:46', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (24, 1, '2017-09-18 02:05:53', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (25, 1, '2017-09-18 02:07:05', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (26, 1, '2017-09-18 02:08:14', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (27, 1, '2017-09-18 02:39:15', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (28, 1, '2017-09-18 02:40:20', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (29, 1, '2017-09-18 02:47:34', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (30, 1, '2017-09-18 02:48:47', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (31, 1, '2017-09-18 02:49:46', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (32, 1, '2017-09-18 02:50:43', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (33, 1, '2017-09-18 02:51:43', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (34, 1, '2017-09-18 02:52:29', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (35, 1, '2017-09-18 02:53:19', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (36, 1, '2017-09-18 02:54:19', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (37, 1, '2017-09-18 02:56:40', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (38, 1, '2017-09-18 02:58:26', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (39, 1, '2017-09-18 02:59:15', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (40, 1, '2017-09-18 03:00:04', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (41, 1, '2017-09-18 03:01:06', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (42, 1, '2017-09-18 03:02:01', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (43, 1, '2017-09-18 03:03:24', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (44, 1, '2017-09-18 03:04:09', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (45, 1, '2017-09-18 03:05:21', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (46, 1, '2017-09-18 03:06:17', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (47, 1, '2017-09-18 03:07:22', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (49, 1, '2017-09-18 03:10:00', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (50, 1, '2017-09-18 03:10:52', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (51, 1, '2017-09-18 03:12:07', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (52, 1, '2017-09-18 03:13:08', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (53, 1, '2017-09-18 03:14:17', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (54, 1, '2017-09-18 03:15:11', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (55, 1, '2017-09-18 03:16:10', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (56, 1, '2017-09-18 03:17:05', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (57, 1, '2017-09-18 03:18:12', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (58, 1, '2017-09-18 03:19:28', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (59, 1, '2017-09-18 03:20:40', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (60, 1, '2017-09-18 03:21:31', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (61, 1, '2017-09-18 03:22:31', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (62, 1, '2017-09-18 03:23:31', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (63, 1, '2017-09-18 03:24:28', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (64, 1, '2017-09-18 03:25:41', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (65, 1, '2017-09-18 03:26:49', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (66, 1, '2017-09-18 03:27:52', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (67, 1, '2017-09-18 03:29:07', '88.119.86.191', '', '0', 'lt-LT', 1);
INSERT INTO `aj14x_rsform_submissions` VALUES (68, 1, '2017-09-18 03:47:26', '88.119.86.191', '', '0', 'lt-LT', 1);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_rsform_translations`
-- 

CREATE TABLE `aj14x_rsform_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_translations`
-- 

INSERT INTO `aj14x_rsform_translations` VALUES (1, 1, 'lt-LT', 'properties', '2.TEXT', '<b>Noriu pašalinti sekantį žmogų</b>. ');
INSERT INTO `aj14x_rsform_translations` VALUES (2, 1, 'lt-LT', 'properties', '1.CAPTION', 'Vardas Pavardė');
INSERT INTO `aj14x_rsform_translations` VALUES (3, 1, 'lt-LT', 'properties', '1.DESCRIPTION', '');
INSERT INTO `aj14x_rsform_translations` VALUES (4, 1, 'lt-LT', 'properties', '1.VALIDATIONMESSAGE', 'Please type your full name.');
INSERT INTO `aj14x_rsform_translations` VALUES (5, 1, 'lt-LT', 'properties', '1.DEFAULTVALUE', '');
INSERT INTO `aj14x_rsform_translations` VALUES (6, 1, 'lt-LT', 'properties', '1.PLACEHOLDER', '');
INSERT INTO `aj14x_rsform_translations` VALUES (7, 1, 'lt-LT', 'properties', '5.CAPTION', 'Aukos statusas');
INSERT INTO `aj14x_rsform_translations` VALUES (8, 1, 'lt-LT', 'properties', '5.DESCRIPTION', '');
INSERT INTO `aj14x_rsform_translations` VALUES (9, 1, 'lt-LT', 'properties', '5.VALIDATIONMESSAGE', 'Please specify your position in the company');
INSERT INTO `aj14x_rsform_translations` VALUES (10, 1, 'lt-LT', 'properties', '5.ITEMS', 'Eilinis žmogus - 5 000 €[c]\r\nĮmonės vadovas - 10 000 €\r\nPareigūnas - 20 000 €\r\nVerslo savininkas - 30 000 €\r\nŽmogus su fizine apsauga - 40 000 €\r\nValdžios atstovas - 50 000 €');
INSERT INTO `aj14x_rsform_translations` VALUES (11, 1, 'lt-LT', 'properties', '9.TEXT', '<b> Pinigus sumokėjau. Sutinku kad darbas būtų atliktas per 2 savaites nuo pinigų sumokėjimo. Mano nurodymas yra galutinis ir neatšaukiamas</b>.');
INSERT INTO `aj14x_rsform_translations` VALUES (12, 1, 'lt-LT', 'properties', '23.CAPTION', 'Elektroninis paštas (rašykite tik tuo atveju, jei norite gauti aukos nuotraukas po užsakymo įvykdymo)');
INSERT INTO `aj14x_rsform_translations` VALUES (13, 1, 'lt-LT', 'properties', '23.DESCRIPTION', '');
INSERT INTO `aj14x_rsform_translations` VALUES (14, 1, 'lt-LT', 'properties', '23.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `aj14x_rsform_translations` VALUES (15, 1, 'lt-LT', 'properties', '23.DEFAULTVALUE', '');
INSERT INTO `aj14x_rsform_translations` VALUES (16, 1, 'lt-LT', 'properties', '23.PLACEHOLDER', '');
INSERT INTO `aj14x_rsform_translations` VALUES (17, 1, 'lt-LT', 'forms', 'FormTitle', 'Užsakymo forma:');
INSERT INTO `aj14x_rsform_translations` VALUES (18, 1, 'lt-LT', 'forms', 'UserEmailFromName', '{global:fromname}');
INSERT INTO `aj14x_rsform_translations` VALUES (19, 1, 'lt-LT', 'forms', 'UserEmailSubject', 'Užsakymo patvirtinimas');
INSERT INTO `aj14x_rsform_translations` VALUES (20, 1, 'lt-LT', 'forms', 'AdminEmailFromName', '{FullName:value}');
INSERT INTO `aj14x_rsform_translations` VALUES (21, 1, 'lt-LT', 'forms', 'AdminEmailSubject', 'Contact');
INSERT INTO `aj14x_rsform_translations` VALUES (22, 1, 'lt-LT', 'forms', 'MetaDesc', '');
INSERT INTO `aj14x_rsform_translations` VALUES (23, 1, 'lt-LT', 'forms', 'MetaKeywords', '');
INSERT INTO `aj14x_rsform_translations` VALUES (24, 1, 'lt-LT', 'properties', '24.CAPTION', 'Namų arba darbo adresas');
INSERT INTO `aj14x_rsform_translations` VALUES (25, 1, 'lt-LT', 'properties', '24.DESCRIPTION', '');
INSERT INTO `aj14x_rsform_translations` VALUES (26, 1, 'lt-LT', 'properties', '24.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `aj14x_rsform_translations` VALUES (27, 1, 'lt-LT', 'properties', '24.DEFAULTVALUE', '');
INSERT INTO `aj14x_rsform_translations` VALUES (28, 1, 'lt-LT', 'properties', '24.PLACEHOLDER', '');
INSERT INTO `aj14x_rsform_translations` VALUES (29, 1, 'lt-LT', 'properties', '25.CAPTION', 'Aukos fotografija (jei turite)');
INSERT INTO `aj14x_rsform_translations` VALUES (30, 1, 'lt-LT', 'properties', '25.DESCRIPTION', '');
INSERT INTO `aj14x_rsform_translations` VALUES (31, 1, 'lt-LT', 'properties', '25.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `aj14x_rsform_translations` VALUES (32, 1, 'lt-LT', 'forms', 'Thankyou', '<p>Labas,</p>\r\n<p>malonu, kad pasitikite mūsų ilgamete darbo patirtimi. Per ateinančias 2 savaites Jūsų trukdis &nbsp;{FullName:value} liks tik kaip prisiminimas.</p>');
INSERT INTO `aj14x_rsform_translations` VALUES (33, 1, 'lt-LT', 'properties', '8.LABEL', 'Patvirtinti');
INSERT INTO `aj14x_rsform_translations` VALUES (34, 1, 'lt-LT', 'properties', '8.RESETLABEL', 'Atmesti');
INSERT INTO `aj14x_rsform_translations` VALUES (35, 1, 'lt-LT', 'properties', '8.PREVBUTTON', '');
INSERT INTO `aj14x_rsform_translations` VALUES (36, 1, 'lt-LT', 'properties', '8.CAPTION', '');
INSERT INTO `aj14x_rsform_translations` VALUES (37, 1, 'lt-LT', 'properties', '8.DISPLAYPROGRESSMSG', '');
INSERT INTO `aj14x_rsform_translations` VALUES (38, 1, 'lt-LT', 'forms', 'ErrorMessage', '<p>Klaida.</p>');
INSERT INTO `aj14x_rsform_translations` VALUES (39, 1, 'lt-LT', 'forms', 'UserEmailText', '<p>Labas,</p>\r\n<p>malonu, kad pasitikite mūsų ilgamete darbo patirtimi. Per ateinančias 2 savaites Jūsų trukdis &nbsp;{FullName:value} liks tik kaip prisiminimas.</p>');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_schemas`
-- 

CREATE TABLE `aj14x_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_schemas`
-- 

INSERT INTO `aj14x_schemas` VALUES (700, '3.7.4-2017-07-05');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_session`
-- 

CREATE TABLE `aj14x_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_session`
-- 

INSERT INTO `aj14x_session` VALUES ('9efd049f6cd1ae2f98a1a1ae852bf308', 0, 1, '1505711285', 'joomla|s:832:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxODtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MDU3MDk5MTM7czo0OiJsYXN0IjtpOjE1MDU3MTA3ODA7czozOiJub3ciO2k6MTUwNTcxMTI4NDt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJjb21fcnNmb3JtIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJzdWJtaXNzaW9ucyI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxNzoiY3VycmVudGZpbHRlcmhhc2giO3M6MzI6ImQ0MWQ4Y2Q5OGYwMGIyMDRlOTgwMDk5OGVjZjg0MjdlIjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, '');
INSERT INTO `aj14x_session` VALUES ('dd3a37903483571dcfd9f05fdf0ee7af', 1, 0, '1505711337', 'joomla|s:8552:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo3OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1NTE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTA1Njg1NjkxO3M6NDoibGFzdCI7aToxNTA1NzExMzIyO3M6Mzoibm93IjtpOjE1MDU3MTEzMjU7fXM6NToidG9rZW4iO3M6MzI6IlBneDB5b2FLOVNzWFhYVk1NT2g1OTlYS3B0d1N4NzRrIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjc6e3M6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7czoxMjoicmVkaXJlY3RfdXJsIjtOO31zOjEwOiJjb21fY29uZmlnIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImNvbmZpZyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJnbG9iYWwiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7YTo5MTp7czoxMzoiY2FjaGVfaGFuZGxlciI7czo0OiJmaWxlIjtzOjEwOiJjYWNoZV9wYXRoIjtzOjA6IiI7czoxNjoibWVtY2FjaGVfcGVyc2lzdCI7aToxO3M6MTc6Im1lbWNhY2hlX2NvbXByZXNzIjtpOjA7czoyMDoibWVtY2FjaGVfc2VydmVyX2hvc3QiO3M6OToibG9jYWxob3N0IjtzOjIwOiJtZW1jYWNoZV9zZXJ2ZXJfcG9ydCI7aToxMTIxMTtzOjE3OiJtZW1jYWNoZWRfcGVyc2lzdCI7aToxO3M6MTg6Im1lbWNhY2hlZF9jb21wcmVzcyI7aTowO3M6MjE6Im1lbWNhY2hlZF9zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6MjE6Im1lbWNhY2hlZF9zZXJ2ZXJfcG9ydCI7aToxMTIxMTtzOjEzOiJyZWRpc19wZXJzaXN0IjtpOjE7czoxNzoicmVkaXNfc2VydmVyX2hvc3QiO3M6OToibG9jYWxob3N0IjtzOjE3OiJyZWRpc19zZXJ2ZXJfcG9ydCI7aTo2Mzc5O3M6MTc6InJlZGlzX3NlcnZlcl9hdXRoIjtzOjA6IiI7czoxNToicmVkaXNfc2VydmVyX2RiIjtpOjA7czo5OiJjYWNoZXRpbWUiO2k6MTU7czoyMDoiY2FjaGVfcGxhdGZvcm1wcmVmaXgiO2k6MDtzOjc6ImNhY2hpbmciO2k6MDtzOjY6ImRidHlwZSI7czo2OiJteXNxbGkiO3M6NDoiaG9zdCI7czozNToibW9kZWxhZ2VuY3lwZWdhc3VzY28uaXBhZ2VteXNxbC5jb20iO3M6NDoidXNlciI7czoxMToia2lsZXJpc19uZnEiO3M6MjoiZGIiO3M6MTE6ImtpbGVyaXNfbmZxIjtzOjg6ImRicHJlZml4IjtzOjY6ImFqMTR4XyI7czo1OiJkZWJ1ZyI7aTowO3M6MTA6ImRlYnVnX2xhbmciO2k6MDtzOjEwOiJmdHBfZW5hYmxlIjtpOjA7czo4OiJmdHBfaG9zdCI7czowOiIiO3M6ODoiZnRwX3BvcnQiO3M6MDoiIjtzOjg6ImZ0cF91c2VyIjtzOjA6IiI7czo4OiJmdHBfcGFzcyI7czowOiIiO3M6ODoiZnRwX3Jvb3QiO3M6MDoiIjtzOjEyOiJwcm94eV9lbmFibGUiO2k6MDtzOjEwOiJwcm94eV9ob3N0IjtzOjA6IiI7czoxMDoicHJveHlfcG9ydCI7czowOiIiO3M6MTA6InByb3h5X3VzZXIiO3M6MDoiIjtzOjEwOiJwcm94eV9wYXNzIjtzOjA6IiI7czo2OiJvZmZzZXQiO3M6MzoiVVRDIjtzOjEwOiJtYWlsb25saW5lIjtpOjE7czoxMToibWFzc21haWxvZmYiO2k6MDtzOjg6Im1haWxmcm9tIjtzOjIyOiJ2aXJnaXNtYW5rdXNAZ21haWwuY29tIjtzOjg6ImZyb21uYW1lIjtzOjQ4OiJLaWxlcmlzIC0gcGHFoWFsaW5hbWUgSnVtcyBuZXJlaWthbGluZ3VzIMW+bW9uZXMiO3M6NzoicmVwbHl0byI7czowOiIiO3M6MTE6InJlcGx5dG9uYW1lIjtzOjA6IiI7czo2OiJtYWlsZXIiO3M6NDoibWFpbCI7czo4OiJzZW5kbWFpbCI7czoxODoiL3Vzci9zYmluL3NlbmRtYWlsIjtzOjg6InNtdHBob3N0IjtzOjk6ImxvY2FsaG9zdCI7czo4OiJzbXRwcG9ydCI7aToyNTtzOjEwOiJzbXRwc2VjdXJlIjtzOjQ6Im5vbmUiO3M6ODoic210cGF1dGgiO2k6MDtzOjg6InNtdHB1c2VyIjtzOjA6IiI7czo4OiJzbXRwcGFzcyI7czowOiIiO3M6ODoiTWV0YURlc2MiO3M6NDk6IktpbGVyaXMgLSBwYcWhYWxpbmFtZSBKdW1zIG5lcmVpa2FsaW5ndXMgxb5tb25lcy4iO3M6ODoiTWV0YUtleXMiO3M6MDoiIjtzOjY6InJvYm90cyI7czowOiIiO3M6MTA6Ik1ldGFSaWdodHMiO3M6MDoiIjtzOjEwOiJNZXRhQXV0aG9yIjtpOjE7czoxMToiTWV0YVZlcnNpb24iO2k6MDtzOjM6InNlZiI7aToxO3M6MTE6InNlZl9yZXdyaXRlIjtpOjE7czoxMDoic2VmX3N1ZmZpeCI7aToxO3M6MTI6InVuaWNvZGVzbHVncyI7aTowO3M6MTk6InNpdGVuYW1lX3BhZ2V0aXRsZXMiO2k6MDtzOjg6InRtcF9wYXRoIjtzOjkyOiIvaGVybWVzL2Jvc25hY3dlYjAyL2Jvc25hY3dlYjAyYXAvYjQwNy9pcGcubW9kZWxhZ2VuY3lwZWdhc3VzY28vYWdlbnR1cmFfcGVnYXN1cy9raWxlcmlzL3RtcCI7czo0OiJnemlwIjtpOjA7czoxNToiZXJyb3JfcmVwb3J0aW5nIjtzOjc6ImRlZmF1bHQiO3M6OToiZm9yY2Vfc3NsIjtpOjA7czoxNToic2Vzc2lvbl9oYW5kbGVyIjtzOjg6ImRhdGFiYXNlIjtzOjI4OiJzZXNzaW9uX21lbWNhY2hlX3NlcnZlcl9ob3N0IjtzOjk6ImxvY2FsaG9zdCI7czoyODoic2Vzc2lvbl9tZW1jYWNoZV9zZXJ2ZXJfcG9ydCI7aToxMTIxMTtzOjI5OiJzZXNzaW9uX21lbWNhY2hlZF9zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6Mjk6InNlc3Npb25fbWVtY2FjaGVkX3NlcnZlcl9wb3J0IjtpOjExMjExO3M6ODoibGlmZXRpbWUiO2k6MTU7czoxNDoic2hhcmVkX3Nlc3Npb24iO2k6MDtzOjg6InNpdGVuYW1lIjtzOjQ4OiJLaWxlcmlzIC0gcGHFoWFsaW5hbWUgSnVtcyBuZXJlaWthbGluZ3VzIMW+bW9uZXMiO3M6Nzoib2ZmbGluZSI7aTowO3M6MjM6ImRpc3BsYXlfb2ZmbGluZV9tZXNzYWdlIjtpOjE7czoxNToib2ZmbGluZV9tZXNzYWdlIjtzOjY5OiJUaGlzIHNpdGUgaXMgZG93biBmb3IgbWFpbnRlbmFuY2UuPGJyIC8+UGxlYXNlIGNoZWNrIGJhY2sgYWdhaW4gc29vbi4iO3M6MTM6Im9mZmxpbmVfaW1hZ2UiO3M6MDoiIjtzOjEyOiJmcm9udGVkaXRpbmciO2k6MTtzOjY6ImVkaXRvciI7czozOiJqY2UiO3M6NzoiY2FwdGNoYSI7czoxOiIwIjtzOjY6ImFjY2VzcyI7aToxO3M6MTA6Imxpc3RfbGltaXQiO2k6MjA7czoxMDoiZmVlZF9saW1pdCI7aToxMDtzOjEwOiJmZWVkX2VtYWlsIjtzOjQ6Im5vbmUiO3M6ODoibG9nX3BhdGgiO3M6MTA3OiIvaGVybWVzL2Jvc25hY3dlYjAyL2Jvc25hY3dlYjAyYXAvYjQwNy9pcGcubW9kZWxhZ2VuY3lwZWdhc3VzY28vYWdlbnR1cmFfcGVnYXN1cy9raWxlcmlzL2FkbWluaXN0cmF0b3IvbG9ncyI7czo3OiJoZWxwdXJsIjtzOjgwOiJodHRwczovL2hlbHAuam9vbWxhLm9yZy9wcm94eT9rZXlyZWY9SGVscHttYWpvcn17bWlub3J9OntrZXlyZWZ9Jmxhbmc9e2xhbmdjb2RlfSI7czoxMzoiY29va2llX2RvbWFpbiI7czowOiIiO3M6MTE6ImNvb2tpZV9wYXRoIjtzOjA6IiI7czo3OiJmaWx0ZXJzIjthOjk6e2k6MTthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6Ik5IIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6OTthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6IkJMIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6NjthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6IkJMIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6NzthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjQ6Ik5PTkUiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aToyO2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiTkgiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTozO2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo0O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo1O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo4O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6NDoiTk9ORSI7czoxMToiZmlsdGVyX3RhZ3MiO3M6MDoiIjtzOjE3OiJmaWx0ZXJfYXR0cmlidXRlcyI7czowOiIiO319czo4OiJhc3NldF9pZCI7aToxO319fX1zOjk6ImNvbV9tZW51cyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6NDp7czo4OiJtZW51dHlwZSI7czo4OiJtYWlubWVudSI7czo5OiJjbGllbnRfaWQiO2k6MDtzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6Iml0ZW0iO086ODoic3RkQ2xhc3MiOjQ6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO31zOjQ6Im1lbnUiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjA6e319fX1zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImFydGljbGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX1zOjEwOiJjb21fcnNmb3JtIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJzdWJtaXNzaW9ucyI7Tzo4OiJzdGRDbGFzcyI6MTA6e3M6MTc6ImN1cnJlbnRmaWx0ZXJoYXNoIjtzOjMyOiJjNGNhNDIzOGEwYjkyMzgyMGRjYzUwOWE2Zjc1ODQ5YiI7czo2OiJmb3JtSWQiO2k6MTtzOjY6ImZpbHRlciI7czowOiIiO3M6NDoibGFuZyI7czowOiIiO3M6ODoiZGF0ZUZyb20iO3M6MDoiIjtzOjY6ImRhdGVUbyI7czowOiIiO3M6MTI6ImZpbHRlcl9vcmRlciI7czoxMzoiRGF0ZVN1Ym1pdHRlZCI7czoxNjoiZmlsdGVyX29yZGVyX0RpciI7czo0OiJERVNDIjtzOjU6ImxpbWl0IjtpOjIwO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDt9fXM6MTQ6ImNvbV9jYXRlZ29yaWVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjEwOiJjYXRlZ29yaWVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImNvbnRlbnQiO086ODoic3RkQ2xhc3MiOjI6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImV4dGVuc2lvbiI7czoxMToiY29tX2NvbnRlbnQiO31zOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX19czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjg6ImNhdGVnb3J5IjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX19czoxMzoiY29tX3RlbXBsYXRlcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InN0eWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czozOiIyOTAiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9czoxMDoiY29tX3JzZm9ybSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImZvcm1JZDEiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoibGFuZyI7czo1OiJsdC1MVCI7fX19czoyOiJUMyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJ0M2xvY2siO047fXM6OToiY29tX21lZGlhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJyZXR1cm5fdXJsIjtzOjEyMDoiaW5kZXgucGhwP29wdGlvbj1jb21fbWVkaWEmdmlldz1pbWFnZXMmdG1wbD1jb21wb25lbnQmZmllbGRpZD1qZm9ybV9wYXJhbXNfbG9nb2ltYWdlJmVfbmFtZT0mYXNzZXQ9Y29tX3RlbXBsYXRlcyZhdXRob3I9Ijt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 290, 'virgis');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_tags`
-- 

CREATE TABLE `aj14x_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_tags`
-- 

INSERT INTO `aj14x_tags` VALUES (1, 0, 0, 1, 0, '', 'ROOT', 0x726f6f74, '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 290, '2017-09-17 17:38:08', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_template_styles`
-- 

CREATE TABLE `aj14x_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_template_styles`
-- 

INSERT INTO `aj14x_template_styles` VALUES (4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}');
INSERT INTO `aj14x_template_styles` VALUES (5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}');
INSERT INTO `aj14x_template_styles` VALUES (7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}');
INSERT INTO `aj14x_template_styles` VALUES (8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');
INSERT INTO `aj14x_template_styles` VALUES (9, 'purity_iii', 0, '1', 'purity_III - Numatytasis', '{"tpl_article_info_datetime_format":"d M Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"1","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"red","logotype":"image","sitename":"","slogan":"","logoimage":"images\\/photos\\/nfq-logo.png","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"blog","sublayout":"","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"","navigation_animation_duration":"400","mm_config":"","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0"}');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_ucm_base`
-- 

CREATE TABLE `aj14x_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_ucm_base`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_ucm_content`
-- 

CREATE TABLE `aj14x_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_ucm_content`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_ucm_history`
-- 

CREATE TABLE `aj14x_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=24 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_ucm_history`
-- 

INSERT INTO `aj14x_ucm_history` VALUES (1, 1, 1, '', '2017-09-17 20:42:50', 290, 1772, '23909a96c497f658e9a703f9fab64c567f46e1d4', '{"id":1,"asset_id":58,"title":"Kainos","alias":"kainos","introtext":"<p>100 e<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:42:50","created_by":"290","created_by_alias":"","modified":"2017-09-17 20:42:50","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-09-17 20:42:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (9, 2, 1, '', '2017-09-17 23:54:29', 290, 2887, '5a1e7332b9dc97fadcaf2127bace11b706b39513', '{"id":2,"asset_id":"59","title":"1 puslapis","alias":"1-puslapis","introtext":"<p>Jums nusibodo J\\u016bs\\u0173 vyras ar \\u017emona? Norite perimti bizn\\u012f i\\u0161 verslo partnerio? Ne\\u017einote kaip atsikratyti savo vyro meilu\\u017ee?<\\/p>\\r\\n<p>KILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u0173s\\u016b problemas.<\\/p>\\r\\n<p>2014 m. rugpj\\u016b\\u010dio 27 d. i\\u0161 kal\\u0117jimo anks\\u010diau laiko buvo paleistas samdomas \\u017eudikas Johnas Jairo Velasquezas, pravarde Popajus, kuris dirbo garsiam Kolumbijos narkotik\\u0173 baronui Pablo Escobarui. Po 24 met\\u0173, praleist\\u0173 u\\u017e grot\\u0173, buv\\u0119s narkotik\\u0173 kartelio narys, prisid\\u0117j\\u0119s prie daugiau nei 300 u\\u017esakyt\\u0173 \\u017emog\\u017eudys\\u010di\\u0173, nusprend\\u0117 prapl\\u0117sti veikl\\u0105 Europoje.<\\/p>\\r\\n<p>Apie atvykstan\\u010dius \\u017eudikus Lietuvos policija neturi joki\\u0173 duomen\\u0173 ir net jei jie ir palieka savo DNR nusikaltimo vietoje, jos vis tiek n\\u0117ra su kuo palyginti. Samdomi \\u017eudikai visuomet naudoja visi\\u0161kai naujus ginklus, kuriuos v\\u0117liau i\\u0161meta.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:43:03","created_by":"290","created_by_alias":"","modified":"2017-09-17 23:54:29","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-17 23:49:43","publish_up":"2017-09-17 20:43:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/photos\\\\\\/pablo-escobar-jairo-velasquez-alias-popeye.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"17","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (10, 2, 1, '', '2017-09-17 23:56:02', 290, 2902, 'a27cc438cc271caf2f85d63872ecf5f281a96e75', '{"id":2,"asset_id":"59","title":"1 puslapis","alias":"1-puslapis","introtext":"<p>Jums nusibodo J\\u016bs\\u0173 vyras ar \\u017emona? Norite perimti bizn\\u012f i\\u0161 verslo partnerio ar konkurento? Ne\\u017einote kaip atsikratyti savo vyro meilu\\u017ee?<\\/p>\\r\\n<p>KILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u0173s\\u016b problemas.<\\/p>\\r\\n<p>2014 m. rugpj\\u016b\\u010dio 27 d. i\\u0161 kal\\u0117jimo anks\\u010diau laiko buvo paleistas samdomas \\u017eudikas Johnas Jairo Velasquezas, pravarde Popajus, kuris dirbo garsiam Kolumbijos narkotik\\u0173 baronui Pablo Escobarui. Po 24 met\\u0173, praleist\\u0173 u\\u017e grot\\u0173, buv\\u0119s narkotik\\u0173 kartelio narys, prisid\\u0117j\\u0119s prie daugiau nei 300 u\\u017esakyt\\u0173 \\u017emog\\u017eudys\\u010di\\u0173, nusprend\\u0117 prapl\\u0117sti veikl\\u0105 Europoje.<\\/p>\\r\\n<p>Apie atvykstan\\u010dius \\u017eudikus Lietuvos policija neturi joki\\u0173 duomen\\u0173 ir net jei jie ir palieka savo DNR nusikaltimo vietoje, jos vis tiek n\\u0117ra su kuo palyginti. Samdomi \\u017eudikai visuomet naudoja visi\\u0161kai naujus ginklus, kuriuos v\\u0117liau i\\u0161meta.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:43:03","created_by":"290","created_by_alias":"","modified":"2017-09-17 23:56:02","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-17 23:54:29","publish_up":"2017-09-17 20:43:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/photos\\\\\\/pablo-escobar-jairo-velasquez-alias-popeye.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":10,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"18","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (11, 2, 1, '', '2017-09-17 23:56:47', 290, 2988, '4eeb1eeeaad7883dd3f064a124c3a9be42004b99', '{"id":2,"asset_id":"59","title":"1 puslapis","alias":"1-puslapis","introtext":"<h2><span style=\\"font-size: 12pt;\\">Jums nusibodo J\\u016bs\\u0173 vyras ar \\u017emona? Norite perimti bizn\\u012f i\\u0161 verslo partnerio ar konkurento? Ne\\u017einote kaip atsikratyti savo vyro meilu\\u017ee?<\\/span><\\/h2>\\r\\n<h1><span style=\\"font-size: 12pt;\\">KILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u0173s\\u016b problemas.<\\/span><\\/h1>\\r\\n<p>2014 m. rugpj\\u016b\\u010dio 27 d. i\\u0161 kal\\u0117jimo anks\\u010diau laiko buvo paleistas samdomas \\u017eudikas Johnas Jairo Velasquezas, pravarde Popajus, kuris dirbo garsiam Kolumbijos narkotik\\u0173 baronui Pablo Escobarui. Po 24 met\\u0173, praleist\\u0173 u\\u017e grot\\u0173, buv\\u0119s narkotik\\u0173 kartelio narys, prisid\\u0117j\\u0119s prie daugiau nei 300 u\\u017esakyt\\u0173 \\u017emog\\u017eudys\\u010di\\u0173, nusprend\\u0117 prapl\\u0117sti veikl\\u0105 Europoje.<\\/p>\\r\\n<p>Apie atvykstan\\u010dius \\u017eudikus Lietuvos policija neturi joki\\u0173 duomen\\u0173 ir net jei jie ir palieka savo DNR nusikaltimo vietoje, jos vis tiek n\\u0117ra su kuo palyginti. Samdomi \\u017eudikai visuomet naudoja visi\\u0161kai naujus ginklus, kuriuos v\\u0117liau i\\u0161meta.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:43:03","created_by":"290","created_by_alias":"","modified":"2017-09-17 23:56:47","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-17 23:56:07","publish_up":"2017-09-17 20:43:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/photos\\\\\\/pablo-escobar-jairo-velasquez-alias-popeye.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":11,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"18","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (12, 2, 1, '', '2017-09-17 23:57:36', 290, 3004, 'b73d50d1dc43b5c463af0d1fc1a889816f386d3e', '{"id":2,"asset_id":"59","title":"1 puslapis","alias":"1-puslapis","introtext":"<h2><span style=\\"font-size: 12pt;\\">Jums nusibodo J\\u016bs\\u0173 vyras ar \\u017emona? Norite perimti bizn\\u012f i\\u0161 verslo partnerio ar konkurento? Ne\\u017einote kaip atsikratyti savo vyro meilu\\u017ee?<\\/span><\\/h2>\\r\\n<h1><span style=\\"font-size: 12pt; color: #ff0000;\\">KILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u0173s\\u016b problemas.<\\/span><\\/h1>\\r\\n<p>2014 m. rugpj\\u016b\\u010dio 27 d. i\\u0161 kal\\u0117jimo anks\\u010diau laiko buvo paleistas samdomas \\u017eudikas Johnas Jairo Velasquezas, pravarde Popajus, kuris dirbo garsiam Kolumbijos narkotik\\u0173 baronui Pablo Escobarui. Po 24 met\\u0173, praleist\\u0173 u\\u017e grot\\u0173, buv\\u0119s narkotik\\u0173 kartelio narys, prisid\\u0117j\\u0119s prie daugiau nei 300 u\\u017esakyt\\u0173 \\u017emog\\u017eudys\\u010di\\u0173, nusprend\\u0117 prapl\\u0117sti veikl\\u0105 Europoje.<\\/p>\\r\\n<p>Apie atvykstan\\u010dius \\u017eudikus Lietuvos policija neturi joki\\u0173 duomen\\u0173 ir net jei jie ir palieka savo DNR nusikaltimo vietoje, jos vis tiek n\\u0117ra su kuo palyginti. Samdomi \\u017eudikai visuomet naudoja visi\\u0161kai naujus ginklus, kuriuos v\\u0117liau i\\u0161meta.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:43:03","created_by":"290","created_by_alias":"","modified":"2017-09-17 23:57:36","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-17 23:56:47","publish_up":"2017-09-17 20:43:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/photos\\\\\\/pablo-escobar-jairo-velasquez-alias-popeye.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":12,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"19","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (13, 2, 1, '', '2017-09-17 23:58:02', 290, 3004, 'fa2aed035b4828ca3fbcb6af62b54bba38ba852a', '{"id":2,"asset_id":"59","title":"1 puslapis","alias":"1-puslapis","introtext":"<h2><span style=\\"font-size: 14pt;\\">Jums nusibodo J\\u016bs\\u0173 vyras ar \\u017emona? Norite perimti bizn\\u012f i\\u0161 verslo partnerio ar konkurento? Ne\\u017einote kaip atsikratyti savo vyro meilu\\u017ee?<\\/span><\\/h2>\\r\\n<h1><span style=\\"font-size: 14pt; color: #ff0000;\\">KILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u0173s\\u016b problemas.<\\/span><\\/h1>\\r\\n<p>2014 m. rugpj\\u016b\\u010dio 27 d. i\\u0161 kal\\u0117jimo anks\\u010diau laiko buvo paleistas samdomas \\u017eudikas Johnas Jairo Velasquezas, pravarde Popajus, kuris dirbo garsiam Kolumbijos narkotik\\u0173 baronui Pablo Escobarui. Po 24 met\\u0173, praleist\\u0173 u\\u017e grot\\u0173, buv\\u0119s narkotik\\u0173 kartelio narys, prisid\\u0117j\\u0119s prie daugiau nei 300 u\\u017esakyt\\u0173 \\u017emog\\u017eudys\\u010di\\u0173, nusprend\\u0117 prapl\\u0117sti veikl\\u0105 Europoje.<\\/p>\\r\\n<p>Apie atvykstan\\u010dius \\u017eudikus Lietuvos policija neturi joki\\u0173 duomen\\u0173 ir net jei jie ir palieka savo DNR nusikaltimo vietoje, jos vis tiek n\\u0117ra su kuo palyginti. Samdomi \\u017eudikai visuomet naudoja visi\\u0161kai naujus ginklus, kuriuos v\\u0117liau i\\u0161meta.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:43:03","created_by":"290","created_by_alias":"","modified":"2017-09-17 23:58:02","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-17 23:57:36","publish_up":"2017-09-17 20:43:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/photos\\\\\\/pablo-escobar-jairo-velasquez-alias-popeye.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":13,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"20","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (14, 2, 1, '', '2017-09-17 23:59:54', 290, 2960, '738bd3c4a928c7336f3103ccd0301eef23925f9f', '{"id":2,"asset_id":"59","title":"1 puslapis","alias":"1-puslapis","introtext":"<h2><span style=\\"font-size: 14pt;\\">Norite perimti bizn\\u012f i\\u0161 verslo partnerio? Trukdo konkurentai? Ne\\u017einote kaip atsikratyti savo vyro meilu\\u017ee?<\\/span><\\/h2>\\r\\n<h1><span style=\\"font-size: 14pt; color: #ff0000;\\">KILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u0173s\\u016b problemas.<\\/span><\\/h1>\\r\\n<p>2014 m. rugpj\\u016b\\u010dio 27 d. i\\u0161 kal\\u0117jimo anks\\u010diau laiko buvo paleistas samdomas \\u017eudikas Johnas Jairo Velasquezas, pravarde Popajus, kuris dirbo garsiam Kolumbijos narkotik\\u0173 baronui Pablo Escobarui. Po 24 met\\u0173, praleist\\u0173 u\\u017e grot\\u0173, buv\\u0119s narkotik\\u0173 kartelio narys, prisid\\u0117j\\u0119s prie daugiau nei 300 u\\u017esakyt\\u0173 \\u017emog\\u017eudys\\u010di\\u0173, nusprend\\u0117 prapl\\u0117sti veikl\\u0105 Europoje.<\\/p>\\r\\n<p>Apie atvykstan\\u010dius \\u017eudikus Lietuvos policija neturi joki\\u0173 duomen\\u0173 ir net jei jie ir palieka savo DNR nusikaltimo vietoje, jos vis tiek n\\u0117ra su kuo palyginti. Samdomi \\u017eudikai visuomet naudoja visi\\u0161kai naujus ginklus, kuriuos v\\u0117liau i\\u0161meta.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:43:03","created_by":"290","created_by_alias":"","modified":"2017-09-17 23:59:54","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-17 23:58:02","publish_up":"2017-09-17 20:43:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/photos\\\\\\/pablo-escobar-jairo-velasquez-alias-popeye.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":14,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (15, 2, 1, '', '2017-09-18 00:01:33', 290, 3078, '86da03b3d354a0f5f9e1e2d26e180f4afa4d98a7', '{"id":2,"asset_id":"59","title":"1 puslapis","alias":"1-puslapis","introtext":"<h2><span style=\\"font-size: 14pt;\\">Norite perimti bizn\\u012f i\\u0161 verslo partnerio? Trukdo konkurentai? Ne\\u017einote kaip atsikratyti savo vyro meilu\\u017ee?<\\/span><\\/h2>\\r\\n<h1><span style=\\"font-size: 14pt; color: #ff0000;\\">KILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u016bs\\u0173 problemas.<\\/span><\\/h1>\\r\\n<p>2014 m. rugpj\\u016b\\u010dio 27 d. i\\u0161 kal\\u0117jimo anks\\u010diau laiko buvo paleistas samdomas \\u017eudikas Johnas Jairo Velasquezas, pravarde Popajus, kuris dirbo garsiam Kolumbijos narkotik\\u0173 baronui Pablo Escobarui. Po 24 met\\u0173, praleist\\u0173 u\\u017e grot\\u0173, buv\\u0119s narkotik\\u0173 kartelio narys, prisid\\u0117j\\u0119s prie daugiau nei 300 u\\u017esakyt\\u0173 \\u017emog\\u017eudys\\u010di\\u0173, nusprend\\u0117 prapl\\u0117sti veikl\\u0105 Europoje.<\\/p>\\r\\n<p><span style=\\"color: #ff0000; font-size: 14pt;\\">Taigi J\\u016bs\\u0173 taikinys patikimose rankose.<\\/span><\\/p>\\r\\n<p>Apie atvykstan\\u010dius \\u017eudikus Lietuvos policija neturi joki\\u0173 duomen\\u0173 ir net jei jie ir palieka savo DNR nusikaltimo vietoje, jos vis tiek n\\u0117ra su kuo palyginti. Samdomi \\u017eudikai visuomet naudoja visi\\u0161kai naujus ginklus, kuriuos v\\u0117liau i\\u0161meta.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:43:03","created_by":"290","created_by_alias":"","modified":"2017-09-18 00:01:33","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-17 23:59:54","publish_up":"2017-09-17 20:43:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/photos\\\\\\/pablo-escobar-jairo-velasquez-alias-popeye.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":15,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"23","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (16, 1, 1, '', '2017-09-18 00:08:32', 290, 2228, '9f19695454fba7c1c20c279eb11be02a17272bf7', '{"id":1,"asset_id":"58","title":"Kainos","alias":"kainos","introtext":"<p>Kuklus kainininkas u\\u017e ger\\u0105 paslaug\\u0105:<\\/p>\\r\\n<p>Eilinis \\u017emogus - 10 000 \\u20ac<\\/p>\\r\\n<p>\\u012emon\\u0117s vadovas - 15 000 \\u20ac<\\/p>\\r\\n<p>Pareig\\u016bnas - 20 000 \\u20ac<\\/p>\\r\\n<p>Verslo savininkas - 30 000 \\u20ac<\\/p>\\r\\n<p>\\u017dmogus su fizine apsauga - 40 000 \\u20ac<\\/p>\\r\\n<p>Vald\\u017eios atstovas - 50 000 \\u20ac<\\/p>\\r\\n<p>Kas nori der\\u0117tis, gali netik\\u0117tai pats tapti taikiniu - taigi nedarykite to.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:42:50","created_by":"290","created_by_alias":"","modified":"2017-09-18 00:08:32","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-18 00:03:16","publish_up":"2017-09-17 20:42:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (17, 1, 1, '', '2017-09-18 00:09:22', 290, 2344, 'e224efbda3f42f21daf18426b9295a3265b5cc43', '{"id":1,"asset_id":"58","title":"Kainos","alias":"kainos","introtext":"<h1><span style=\\"font-size: 14pt; color: #ff0000;\\">Kuklus kainininkas u\\u017e ger\\u0105 paslaug\\u0105:<\\/span><\\/h1>\\r\\n<p>Eilinis \\u017emogus - 10 000 \\u20ac<\\/p>\\r\\n<p>\\u012emon\\u0117s vadovas - 15 000 \\u20ac<\\/p>\\r\\n<p>Pareig\\u016bnas - 20 000 \\u20ac<\\/p>\\r\\n<p>Verslo savininkas - 30 000 \\u20ac<\\/p>\\r\\n<p>\\u017dmogus su fizine apsauga - 40 000 \\u20ac<\\/p>\\r\\n<p>Vald\\u017eios atstovas - 50 000 \\u20ac<\\/p>\\r\\n<p><span style=\\"color: #ff0000; font-size: 14pt;\\">Kas nori der\\u0117tis, gali netik\\u0117tai pats tapti taikiniu - taigi nedarykite to.<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:42:50","created_by":"290","created_by_alias":"","modified":"2017-09-18 00:09:22","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-18 00:08:32","publish_up":"2017-09-17 20:42:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"6","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (18, 1, 1, '', '2017-09-18 01:15:38', 290, 2962, '8cc633f247fbd201014c72bd7e2b392a11026dd9', '{"id":1,"asset_id":"58","title":"Kainos","alias":"kainos","introtext":"<h1><span style=\\"font-size: 14pt; color: #ff0000;\\">Kuklus kainininkas u\\u017e ger\\u0105 paslaug\\u0105:<\\/span><\\/h1>\\r\\n<p>Eilinis \\u017emogus - 10 000 \\u20ac<\\/p>\\r\\n<p>\\u012emon\\u0117s vadovas - 15 000 \\u20ac<\\/p>\\r\\n<p>Pareig\\u016bnas - 20 000 \\u20ac<\\/p>\\r\\n<p>Verslo savininkas - 30 000 \\u20ac<\\/p>\\r\\n<p>\\u017dmogus su fizine apsauga - 40 000 \\u20ac<\\/p>\\r\\n<p>Vald\\u017eios atstovas - 50 000 \\u20ac<\\/p>\\r\\n<p>U\\u017e dvigub\\u0105 kain\\u0105 padarysime taip, kad tai atrodyt\\u0173 savi\\u017eudyb\\u0117.<\\/p>\\r\\n<p>U\\u017e trigub\\u0105 kain\\u0105 padarysime taip, kad tai atrodyt\\u0173 nelaimingas atsitikimas.<\\/p>\\r\\n<p><span style=\\"color: #ff0000; font-size: 14pt;\\">Kas nori der\\u0117tis, gali netik\\u0117tai pats tapti taikiniu - taigi nedarykite to.<\\/span><\\/p>\\r\\n<p>50 procent\\u0173 kainos praveskite \\u012f m\\u016bs\\u0173 Badaujan\\u010di\\u0173 Afrikos vaik\\u0173 labdaros fondo s\\u0105skait\\u0105:<\\/p>\\r\\n<p>S\\u0105sk.nr. LT66 6666 6666 6666 6666<\\/p>\\r\\n<p>likusi\\u0105 sumos dal\\u012f per 3 dienas po u\\u017eduoties \\u012fvykdymo.<\\/p>\\r\\n<p><span style=\\"color: #ff0000; font-size: 14pt;\\">Nesugalvokite su mumis juokauti - mums tai gali nepatikti.<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:42:50","created_by":"290","created_by_alias":"","modified":"2017-09-18 01:15:38","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-18 01:06:22","publish_up":"2017-09-17 20:42:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"7","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (19, 2, 1, '', '2017-09-18 03:30:24', 290, 3084, '9738b940548e2fcd4a793aacb3621a476bd81f62', '{"id":2,"asset_id":"59","title":"1 puslapis","alias":"1-puslapis","introtext":"<h2><span style=\\"font-size: 14pt;\\">Norite perimti bizn\\u012f i\\u0161 verslo partnerio? Trukdo konkurentai? Ne\\u017einote kaip atsikratyti savo vyro meilu\\u017e\\u0117s?<\\/span><\\/h2>\\r\\n<h1><span style=\\"font-size: 14pt; color: #ff0000;\\">KILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u016bs\\u0173 problemas.<\\/span><\\/h1>\\r\\n<p>2014 m. rugpj\\u016b\\u010dio 27 d. i\\u0161 kal\\u0117jimo anks\\u010diau laiko buvo paleistas samdomas \\u017eudikas Johnas Jairo Velasquezas, pravarde Popajus, kuris dirbo garsiam Kolumbijos narkotik\\u0173 baronui Pablo Escobarui. Po 24 met\\u0173, praleist\\u0173 u\\u017e grot\\u0173, buv\\u0119s narkotik\\u0173 kartelio narys, prisid\\u0117j\\u0119s prie daugiau nei 300 u\\u017esakyt\\u0173 \\u017emog\\u017eudys\\u010di\\u0173, nusprend\\u0117 prapl\\u0117sti veikl\\u0105 Europoje.<\\/p>\\r\\n<p><span style=\\"color: #ff0000; font-size: 14pt;\\">Taigi J\\u016bs\\u0173 taikinys patikimose rankose.<\\/span><\\/p>\\r\\n<p>Apie atvykstan\\u010dius \\u017eudikus Lietuvos policija neturi joki\\u0173 duomen\\u0173 ir net jei jie ir palieka savo DNR nusikaltimo vietoje, jos vis tiek n\\u0117ra su kuo palyginti. Samdomi \\u017eudikai visuomet naudoja visi\\u0161kai naujus ginklus, kuriuos v\\u0117liau i\\u0161meta.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2017-09-17 20:43:03","created_by":"290","created_by_alias":"","modified":"2017-09-18 03:30:24","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-18 03:29:59","publish_up":"2017-09-17 20:43:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/photos\\\\\\/pablo-escobar-jairo-velasquez-alias-popeye.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":17,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"29","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (20, 8, 5, '', '2017-09-18 03:32:33', 290, 579, 'f232586d7309f86541c874d5803c8b29855e8710', '{"id":8,"asset_id":61,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"Puslapiai","alias":"puslapiai","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\",\\"t3_extrafields\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"290","created_time":"2017-09-18 03:32:33","modified_user_id":null,"modified_time":"2017-09-18 03:32:33","hits":"0","language":"*","version":null}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (21, 2, 1, '', '2017-09-18 03:32:57', 290, 3084, '0d8b4fcd61109af9ee60d4ad8249071fbdbc0ce9', '{"id":2,"asset_id":"59","title":"1 puslapis","alias":"1-puslapis","introtext":"<h2><span style=\\"font-size: 14pt;\\">Norite perimti bizn\\u012f i\\u0161 verslo partnerio? Trukdo konkurentai? Ne\\u017einote kaip atsikratyti savo vyro meilu\\u017e\\u0117s?<\\/span><\\/h2>\\r\\n<h1><span style=\\"font-size: 14pt; color: #ff0000;\\">KILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u016bs\\u0173 problemas.<\\/span><\\/h1>\\r\\n<p>2014 m. rugpj\\u016b\\u010dio 27 d. i\\u0161 kal\\u0117jimo anks\\u010diau laiko buvo paleistas samdomas \\u017eudikas Johnas Jairo Velasquezas, pravarde Popajus, kuris dirbo garsiam Kolumbijos narkotik\\u0173 baronui Pablo Escobarui. Po 24 met\\u0173, praleist\\u0173 u\\u017e grot\\u0173, buv\\u0119s narkotik\\u0173 kartelio narys, prisid\\u0117j\\u0119s prie daugiau nei 300 u\\u017esakyt\\u0173 \\u017emog\\u017eudys\\u010di\\u0173, nusprend\\u0117 prapl\\u0117sti veikl\\u0105 Europoje.<\\/p>\\r\\n<p><span style=\\"color: #ff0000; font-size: 14pt;\\">Taigi J\\u016bs\\u0173 taikinys patikimose rankose.<\\/span><\\/p>\\r\\n<p>Apie atvykstan\\u010dius \\u017eudikus Lietuvos policija neturi joki\\u0173 duomen\\u0173 ir net jei jie ir palieka savo DNR nusikaltimo vietoje, jos vis tiek n\\u0117ra su kuo palyginti. Samdomi \\u017eudikai visuomet naudoja visi\\u0161kai naujus ginklus, kuriuos v\\u0117liau i\\u0161meta.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2017-09-17 20:43:03","created_by":"290","created_by_alias":"","modified":"2017-09-18 03:32:57","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-18 03:32:45","publish_up":"2017-09-17 20:43:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/photos\\\\\\/pablo-escobar-jairo-velasquez-alias-popeye.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":18,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"29","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (22, 1, 1, '', '2017-09-18 03:33:09', 290, 2962, 'b7e0c5b8be936500d830ba1e6faadf4b932606fe', '{"id":1,"asset_id":"58","title":"Kainos","alias":"kainos","introtext":"<h1><span style=\\"font-size: 14pt; color: #ff0000;\\">Kuklus kainininkas u\\u017e ger\\u0105 paslaug\\u0105:<\\/span><\\/h1>\\r\\n<p>Eilinis \\u017emogus - 10 000 \\u20ac<\\/p>\\r\\n<p>\\u012emon\\u0117s vadovas - 15 000 \\u20ac<\\/p>\\r\\n<p>Pareig\\u016bnas - 20 000 \\u20ac<\\/p>\\r\\n<p>Verslo savininkas - 30 000 \\u20ac<\\/p>\\r\\n<p>\\u017dmogus su fizine apsauga - 40 000 \\u20ac<\\/p>\\r\\n<p>Vald\\u017eios atstovas - 50 000 \\u20ac<\\/p>\\r\\n<p>U\\u017e dvigub\\u0105 kain\\u0105 padarysime taip, kad tai atrodyt\\u0173 savi\\u017eudyb\\u0117.<\\/p>\\r\\n<p>U\\u017e trigub\\u0105 kain\\u0105 padarysime taip, kad tai atrodyt\\u0173 nelaimingas atsitikimas.<\\/p>\\r\\n<p><span style=\\"color: #ff0000; font-size: 14pt;\\">Kas nori der\\u0117tis, gali netik\\u0117tai pats tapti taikiniu - taigi nedarykite to.<\\/span><\\/p>\\r\\n<p>50 procent\\u0173 kainos praveskite \\u012f m\\u016bs\\u0173 Badaujan\\u010di\\u0173 Afrikos vaik\\u0173 labdaros fondo s\\u0105skait\\u0105:<\\/p>\\r\\n<p>S\\u0105sk.nr. LT66 6666 6666 6666 6666<\\/p>\\r\\n<p>likusi\\u0105 sumos dal\\u012f per 3 dienas po u\\u017eduoties \\u012fvykdymo.<\\/p>\\r\\n<p><span style=\\"color: #ff0000; font-size: 14pt;\\">Nesugalvokite su mumis juokauti - mums tai gali nepatikti.<\\/span><\\/p>","fulltext":"","state":1,"catid":"8","created":"2017-09-17 20:42:50","created_by":"290","created_by_alias":"","modified":"2017-09-18 03:33:09","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-18 03:33:00","publish_up":"2017-09-17 20:42:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":5,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"8","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `aj14x_ucm_history` VALUES (23, 2, 1, '', '2017-09-18 04:59:20', 290, 3564, '5a1fafe54e03d47adcc1954de7eccdc720c75695', '{"id":2,"asset_id":"59","title":"1 puslapis","alias":"1-puslapis","introtext":"<h2><span style=\\"font-size: 14pt;\\">Norite perimti bizn\\u012f i\\u0161 verslo partnerio? Trukdo konkurentai? Ne\\u017einote kaip atsikratyti savo vyro meilu\\u017e\\u0117s?<\\/span><\\/h2>\\r\\n<h1><span style=\\"font-size: 14pt; color: #ff0000;\\">KILERIS (samdomas \\u017eudikas) lengvai i\\u0161spr\\u0119s J\\u016bs\\u0173 problemas.<\\/span><\\/h1>\\r\\n<p>2014 m. rugpj\\u016b\\u010dio 27 d. i\\u0161 kal\\u0117jimo anks\\u010diau laiko buvo paleistas samdomas \\u017eudikas Johnas Jairo Velasquezas, pravarde Popajus, kuris dirbo garsiam Kolumbijos narkotik\\u0173 baronui Pablo Escobarui. Po 24 met\\u0173, praleist\\u0173 u\\u017e grot\\u0173, buv\\u0119s narkotik\\u0173 kartelio narys, prisid\\u0117j\\u0119s prie daugiau nei 300 u\\u017esakyt\\u0173 \\u017emog\\u017eudys\\u010di\\u0173, nusprend\\u0117 prapl\\u0117sti veikl\\u0105 Europoje.<\\/p>\\r\\n<p><span style=\\"color: #ff0000; font-size: 14pt;\\">Taigi J\\u016bs\\u0173 taikinys patikimose rankose.<\\/span><\\/p>\\r\\n<p>Apie atvykstan\\u010dius \\u017eudikus Lietuvos policija neturi joki\\u0173 duomen\\u0173 ir net jei jie ir palieka savo DNR nusikaltimo vietoje, jos vis tiek n\\u0117ra su kuo palyginti. Samdomi \\u017eudikai visuomet naudoja visi\\u0161kai naujus ginklus, kuriuos v\\u0117liau i\\u0161meta.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p><span style=\\"color: #0000ff; font-size: 14pt;\\"><strong>Pastaba projekto tikrintojams<\\/strong><\\/span><\\/p>\\r\\n<p><span style=\\"color: #0000ff; font-size: 14pt;\\"><strong>pridedu nuorod\\u0105 \\u012f u\\u017esakym\\u0173 s\\u0105ra\\u0161\\u0105, kurio nenurod\\u017eiau meniu punkte, kad klientai jo negal\\u0117t\\u0173 matyti:<\\/strong><\\/span><\\/p>\\r\\n<p><a href=\\"uzsakymu-sarasas.html\\">http:\\/\\/agenturapegasus.lt\\/kileris\\/uzsakymu-sarasas.html<\\/a><\\/p>","fulltext":"","state":1,"catid":"8","created":"2017-09-17 20:43:03","created_by":"290","created_by_alias":"","modified":"2017-09-18 04:59:20","modified_by":"290","checked_out":"290","checked_out_time":"2017-09-18 04:56:39","publish_up":"2017-09-17 20:43:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/photos\\\\\\/pablo-escobar-jairo-velasquez-alias-popeye.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"extra-class\\":\\"\\"}","version":19,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"61","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_update_sites`
-- 

CREATE TABLE `aj14x_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites' AUTO_INCREMENT=14 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_update_sites`
-- 

INSERT INTO `aj14x_update_sites` VALUES (1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1505711329, '');
INSERT INTO `aj14x_update_sites` VALUES (2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, '');
INSERT INTO `aj14x_update_sites` VALUES (3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');
INSERT INTO `aj14x_update_sites` VALUES (4, 'WebInstaller Update Site', 'extension', 'https://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1505711328, '');
INSERT INTO `aj14x_update_sites` VALUES (5, 'RSForm! Pro', 'extension', 'https://www.rsjoomla.com/updates/com_rsform/Component/com_rsform.xml', 1, 1505711329, '');
INSERT INTO `aj14x_update_sites` VALUES (6, '', 'extension', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', 1, 1505711329, '');
INSERT INTO `aj14x_update_sites` VALUES (7, 'JA Extension Manager', 'extension', 'http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml', 1, 1505711330, '');
INSERT INTO `aj14x_update_sites` VALUES (8, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 1, 1505711335, '');
INSERT INTO `aj14x_update_sites` VALUES (9, '', 'extension', 'http://update.joomlart.com/service/tracking/j31/purity_iii.xml', 1, 1505711335, '');
INSERT INTO `aj14x_update_sites` VALUES (10, 'JCE Editor Package', 'collection', 'https://cdn.joomlacontenteditor.net/updates/xml/pkg_jce.xml', 1, 1505711336, '');
INSERT INTO `aj14x_update_sites` VALUES (11, 'FOF 3.x', 'extension', 'http://cdn.akeebabackup.com/updates/fof3.xml', 1, 1505711336, '');
INSERT INTO `aj14x_update_sites` VALUES (12, 'Akeeba Backup Core', 'extension', 'https://cdn.akeebabackup.com/updates/pkgakeebacore.xml', 1, 1505711336, '');
INSERT INTO `aj14x_update_sites` VALUES (13, 'RSFirewall!', 'extension', 'https://www.rsjoomla.com/updates/com_rsfirewall/Component/com_rsfirewall.xml', 1, 1505711337, '');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_update_sites_extensions`
-- 

CREATE TABLE `aj14x_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

-- 
-- Sukurta duomenų kopija lentelei `aj14x_update_sites_extensions`
-- 

INSERT INTO `aj14x_update_sites_extensions` VALUES (1, 700);
INSERT INTO `aj14x_update_sites_extensions` VALUES (2, 802);
INSERT INTO `aj14x_update_sites_extensions` VALUES (3, 28);
INSERT INTO `aj14x_update_sites_extensions` VALUES (4, 10000);
INSERT INTO `aj14x_update_sites_extensions` VALUES (5, 10001);
INSERT INTO `aj14x_update_sites_extensions` VALUES (6, 10007);
INSERT INTO `aj14x_update_sites_extensions` VALUES (7, 10008);
INSERT INTO `aj14x_update_sites_extensions` VALUES (8, 10009);
INSERT INTO `aj14x_update_sites_extensions` VALUES (9, 10009);
INSERT INTO `aj14x_update_sites_extensions` VALUES (10, 10017);
INSERT INTO `aj14x_update_sites_extensions` VALUES (11, 10018);
INSERT INTO `aj14x_update_sites_extensions` VALUES (12, 10023);
INSERT INTO `aj14x_update_sites_extensions` VALUES (13, 10024);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_updates`
-- 

CREATE TABLE `aj14x_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates' AUTO_INCREMENT=343 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_updates`
-- 

INSERT INTO `aj14x_updates` VALUES (1, 5, 10001, 'RSForm! Pro 1.52.14', '', 'com_rsform', 'component', '', 1, '1.52.14', '', 'https://www.rsjoomla.com/updates/com_rsform/Component/com_rsform.xml', 'https://www.rsjoomla.com/support/documentation/rsform-pro/changelog/rsform-pro-changelog.html', '');
INSERT INTO `aj14x_updates` VALUES (2, 8, 0, '', '', '', 'module', '', 0, '', '', 'http://update.joomlart.com/service/tracking/j16/.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (3, 8, 0, 'iSEO Component', '', 'ISEO', 'component', '', 1, '3.1.16', '', 'http://update.joomlart.com/service/tracking/j16/ISEO.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (4, 8, 0, 'JA Amazon S3 for joomla 16', '', 'com_com_jaamazons3', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaamazons3.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (5, 8, 0, 'JA Extenstion Manager Component j16', '', 'com_com_jaextmanager', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (6, 8, 0, 'JA Amazon S3 for joomla 2.5 & 3.x', '', 'com_jaamazons3', 'component', '', 1, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (7, 8, 0, 'JA Comment Package for Joomla 2.5 & 3.3', '', 'com_jacomment', 'component', '', 1, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jacomment.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (8, 8, 0, 'JA Google Storage Package for J2.5 & J3.0', '', 'com_jagooglestorage', 'component', '', 1, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jagooglestorage.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (9, 8, 0, 'JA Job Board Package For J25', '', 'com_jajobboard', 'component', '', 1, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/com_jajobboard.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (10, 8, 0, 'JA K2 Filter Package for J25 & J3.x', '', 'com_jak2filter', 'component', '', 1, '1.2.8', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (11, 8, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2fiter', 'component', '', 1, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2fiter.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (12, 8, 0, 'JA Megafilter Component', '', 'com_jamegafilter', 'component', '', 1, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/com_jamegafilter.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (13, 8, 0, 'JA Showcase component for Joomla 1.7', '', 'com_jashowcase', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jashowcase.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (14, 8, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (15, 8, 0, 'JA Appolio Theme for EasyBlog', '', 'easyblog_theme_appolio', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_appolio.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (16, 8, 0, 'JA Beranis Theme for EasyBlog', '', 'easyblog_theme_beranis', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_beranis.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (17, 8, 0, 'JA Biz Theme for EasyBlog', '', 'easyblog_theme_biz', 'custom', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_biz.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (18, 8, 0, 'JA Bookshop Theme for EasyBlog', '', 'easyblog_theme_bookshop', 'custom', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_bookshop.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (19, 8, 0, 'Theme Community Plus for Easyblog J25 & J30', '', 'easyblog_theme_community_plus', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_community_plus.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (20, 8, 0, 'JA Decor Theme for EasyBlog', '', 'easyblog_theme_decor', 'custom', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_decor.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (21, 8, 0, 'Theme Fixel for Easyblog J25 & J3x', '', 'easyblog_theme_fixel', 'custom', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_fixel.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (22, 8, 0, 'Theme Magz for Easyblog J25 & J34', '', 'easyblog_theme_magz', 'custom', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_magz.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (23, 8, 0, 'JA Muzic Theme for EasyBlog', '', 'easyblog_theme_muzic', 'custom', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_muzic.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (24, 8, 0, 'JA Obelisk Theme for EasyBlog', '', 'easyblog_theme_obelisk', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_obelisk.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (25, 8, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_sugite.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (26, 8, 0, 'iSEO Component', '', 'iSEO', 'component', '', 1, '3.1.16', '', 'http://update.joomlart.com/service/tracking/j16/iSEO.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (27, 8, 0, 'JA Anion template for Joomla 3.x', '', 'ja_anion', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_anion.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (28, 8, 0, 'JA Appolio Template', '', 'ja_appolio', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_appolio.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (29, 8, 0, 'JA Argo Template for J3x', '', 'ja_argo', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_argo.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (30, 8, 0, 'JA Beranis Template', '', 'ja_beranis', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_beranis.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (31, 8, 0, 'JA Bistro Template for Joomla 3.x', '', 'ja_bistro', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (32, 8, 0, 'JA Blazes Template for J25 & J3x', '', 'ja_blazes', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_blazes.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (33, 8, 0, 'JA Bookshop Template', '', 'ja_bookshop', 'template', '', 0, '1.1.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_bookshop.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (34, 8, 0, 'JA Brisk Template for J25 & J3x', '', 'ja_brisk', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_brisk.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (35, 8, 0, 'JA Business Template for Joomla 3.x', '', 'ja_business', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_business.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (36, 8, 0, 'JA Cloris Template for Joomla 3.x', '', 'ja_cloris', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_cloris.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (37, 8, 0, 'JA Community PLus Template for Joomla 3.x', '', 'ja_community_plus', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (38, 8, 0, 'JA Decor Template', '', 'ja_decor', 'template', '', 0, '1.1.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_decor.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (39, 8, 0, 'JA Droid Template for Joomla 3.x', '', 'ja_droid', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_droid.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (40, 8, 0, 'JA Edenite Template for J25 & J34', '', 'ja_edenite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_edenite.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (41, 8, 0, 'JA Elastica Template for J25 & J3x', '', 'ja_elastica', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_elastica.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (42, 8, 0, 'JA Erio Template for Joomla 2.5 & 3.x', '', 'ja_erio', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_erio.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (43, 8, 0, 'Ja Events Template for Joomla 2.5', '', 'ja_events', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_events.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (44, 8, 0, 'JA Fubix Template for J25 & J3x', '', 'ja_fubix', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_fubix.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (45, 8, 0, 'JA Graphite Template for Joomla 3x', '', 'ja_graphite', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_graphite.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (46, 8, 0, 'JA Hawkstore Template', '', 'ja_hawkstore', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (47, 8, 0, 'JA Ironis Template for Joomla 2.5 & 3.x', '', 'ja_ironis', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_ironis.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (48, 8, 0, 'JA Jason template', '', 'ja_jason', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_jason.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (49, 8, 0, 'JA Kranos Template for J2.5 & J3.x', '', 'ja_kranos', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_kranos.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (50, 8, 0, 'JA Lens Template for Joomla 2.5 & 3.x', '', 'ja_lens', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_lens.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (51, 8, 0, 'Ja Lime Template for Joomla 3x', '', 'ja_lime', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_lime.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (52, 8, 0, 'JA Magz Template for J25 & J34', '', 'ja_magz', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_magz.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (53, 8, 0, 'JA Medicare Template', '', 'ja_medicare', 'template', '', 0, '1.1.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_medicare.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (54, 8, 0, 'JA Mendozite Template for J25 & J32', '', 'ja_mendozite', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (55, 8, 0, 'JA Mero Template for J25 & J3x', '', 'ja_mero', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_mero.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (56, 8, 0, 'JA Mers Template for J25 & J3x', '', 'ja_mers', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_mers.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (57, 8, 0, 'JA Methys Template for Joomla 3x', '', 'ja_methys', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_methys.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (58, 8, 0, 'Ja Minisite Template for Joomla 3.4', '', 'ja_minisite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_minisite.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (59, 8, 0, 'JA Mitius Template', '', 'ja_mitius', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_mitius.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (60, 8, 0, 'JA Mixmaz Template', '', 'ja_mixmaz', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (61, 8, 0, 'JA Nex Template for J25 & J30', '', 'ja_nex', 'template', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (62, 8, 0, 'JA Nex T3 Template', '', 'ja_nex_t3', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex_t3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (63, 8, 0, 'JA Norite Template for J2.5 & J31', '', 'ja_norite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_norite.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (64, 8, 0, 'JA Nuevo template', '', 'ja_nuevo', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_nuevo.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (65, 8, 0, 'JA Obelisk Template', '', 'ja_obelisk', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_obelisk.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (66, 8, 0, 'JA Onepage Template', '', 'ja_onepage', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_onepage.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (67, 8, 0, 'JA ores template for Joomla 3.x', '', 'ja_ores', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_ores.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (68, 8, 0, 'JA Orisite Template  for J25 & J3x', '', 'ja_orisite', 'template', '', 0, '1.1.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_orisite.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (69, 8, 0, 'JA Playmag Template', '', 'ja_playmag', 'template', '', 0, '1.1.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_playmag.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (70, 8, 0, 'JA Portfolio Real Estate template for Joomla 1.6.x', '', 'ja_portfolio', 'file', '', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (71, 8, 0, 'JA Portfolio Template for Joomla 3.x', '', 'ja_portfolio_real_estate', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (72, 8, 0, 'JA Puresite Template for J25 & J3x', '', 'ja_puresite', 'template', '', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (73, 8, 0, 'JA Purity II template for Joomla 2.5 & 3.2', '', 'ja_purity_ii', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (74, 8, 0, 'JA Pyro Template for Joomla 3.x', '', 'ja_pyro', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_pyro.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (75, 8, 0, 'JA Rasite Template for J34', '', 'ja_rasite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_rasite.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (76, 8, 0, 'JA Rave Template for Joomla 3.x', '', 'ja_rave', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_rave.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (77, 8, 0, 'JA Smashboard Template', '', 'ja_smashboard', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (78, 8, 0, 'JA Social Template for Joomla 2.5', '', 'ja_social', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_social.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (79, 8, 0, 'JA Social T3 Template for J25 & J3x', '', 'ja_social_ii', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_social_ii.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (80, 8, 0, 'JA Social T3 Template for J25 & J3x', '', 'ja_social_t3', 'template', '', 0, '1.1.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_social_t3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (81, 8, 0, 'JA Sugite Template', '', 'ja_sugite', 'template', '', 0, '1.1.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_sugite.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (82, 8, 0, 'JA System Pager Plugin for J25 & J3x', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (83, 8, 0, 'JA T3V2 Blank Template', '', 'ja_t3_blank', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (84, 8, 0, 'JA T3 Blank template for joomla 1.6', '', 'ja_t3_blank_j16', 'template', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (85, 8, 0, 'JA Blank Template for T3v3', '', 'ja_t3v3_blank', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (86, 8, 0, 'JA Teline III  Template for Joomla 1.6', '', 'ja_teline_iii', 'file', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (87, 8, 0, 'JA Teline IV Template for J2.5 and J3.2', '', 'ja_teline_iv', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (88, 8, 0, 'JA Teline IV T3 Template', '', 'ja_teline_iv_t3', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv_t3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (89, 8, 0, 'JA Tiris Template for J25 & J3x', '', 'ja_tiris', 'template', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_tiris.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (90, 8, 0, 'JA Travel Template for Joomla 3x', '', 'ja_travel', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_travel.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (91, 8, 0, 'JA University Template for J25 & J32', '', 'ja_university', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_university.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (92, 8, 0, 'JA University T3 template', '', 'ja_university_t3', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_university_t3.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (93, 8, 0, 'JA Vintas Template for J25 & J31', '', 'ja_vintas', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_vintas.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (94, 8, 0, 'JA Wall Template for J25 & J3x', '', 'ja_wall', 'template', '', 0, '1.2.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (95, 8, 0, 'JA ZiteTemplate', '', 'ja_zite', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (96, 8, 0, 'JA Bookmark plugin for Joomla 1.6.x', '', 'jabookmark', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jabookmark.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (97, 8, 0, 'JA Comment plugin for Joomla 1.6.x', '', 'jacomment', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacomment.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (98, 8, 0, 'JA Comment Off Plugin for Joomla 1.6', '', 'jacommentoff', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommentoff.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (99, 8, 0, 'JA Comment On Plugin for Joomla 1.6', '', 'jacommenton', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommenton.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (100, 8, 0, 'JA Content Extra Fields for Joomla 1.6', '', 'jacontentextrafields', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (101, 8, 0, 'JA Disqus Debate Echo plugin for Joomla 1.6.x', '', 'jadisqus_debate_echo', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (102, 8, 0, 'JA System Google Map plugin for Joomla 1.6.x', '', 'jagooglemap', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagooglemap.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (103, 8, 0, 'JA Google Translate plugin for Joomla 1.6.x', '', 'jagoogletranslate', 'plugin', 'jagoogletranslate', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (104, 8, 0, 'JA Highslide plugin for Joomla 1.6.x', '', 'jahighslide', 'plugin', 'jahighslide', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jahighslide.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (105, 8, 0, 'JA K2 Search Plugin for Joomla 2.5', '', 'jak2_filter', 'plugin', 'jak2_filter', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_filter.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (106, 8, 0, 'JA K2 Extra Fields Plugin for Joomla 2.5', '', 'jak2_indexing', 'plugin', 'jak2_indexing', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (107, 8, 0, 'JA Load module Plugin for Joomla 2.5', '', 'jaloadmodule', 'plugin', 'jaloadmodule', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (108, 8, 0, 'JA System Nrain plugin for Joomla 1.6.x', '', 'janrain', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/janrain.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (109, 8, 0, 'JA Popup plugin for Joomla 1.6', '', 'japopup', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/japopup.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (110, 8, 0, 'JA System Social plugin for Joomla 1.7', '', 'jasocial', 'file', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/jasocial.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (111, 8, 0, 'JA T3 System plugin for Joomla 1.6', '', 'jat3', 'plugin', 'jat3', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/jat3.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (112, 8, 0, 'JA Tabs plugin for Joomla 1.6.x', '', 'jatabs', 'plugin', 'jatabs', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/jatabs.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (113, 8, 0, 'JA Typo plugin For Joomla 1.6', '', 'jatypo', 'plugin', 'jatypo', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jatypo.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (114, 8, 0, 'Jomsocial Theme 3.x for JA Social', '', 'jomsocial_theme_social', 'custom', '', 0, '4.1.x', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (115, 8, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16', 'file', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (116, 8, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16_26', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (117, 8, 0, 'JShopping Template for Ja Orisite', '', 'jshopping_theme_orisite', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (118, 8, 0, 'JA Tiris Jshopping theme for J25 & J3x', '', 'jshopping_theme_tiris', 'custom', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (119, 8, 0, 'Theme for Jshopping j17', '', 'jshopping_theme_tiris_j17', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (120, 8, 0, 'JA Kranos kunena theme for Joomla 3.x', '', 'kunena_theme_kranos_j17', 'custom', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (121, 8, 0, 'Kunena Template for JA Mendozite', '', 'kunena_theme_mendozite', 'custom', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (122, 8, 0, 'JA Mitius Kunena Theme for Joomla 25 ', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (123, 8, 0, 'Kunena theme for JA Nex J2.5', '', 'kunena_theme_nex_j17', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (124, 8, 0, 'Kunena theme for JA Nex T3', '', 'kunena_theme_nex_t3', 'custom', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_t3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (125, 8, 0, 'Kunena Template for Ja Orisite', '', 'kunena_theme_orisite', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (126, 8, 0, 'Kunena theme for ja PlayMag', '', 'kunena_theme_playmag', 'custom', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_playmag.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (127, 8, 0, 'Kunena theme for JA Social T3', '', 'kunena_theme_social', 'custom', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (128, 8, 0, 'Kunena theme for Joomla 2.5', '', 'kunena_theme_social_j16', 'custom', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (129, 8, 0, 'Kunena theme for ja Techzone', '', 'kunena_theme_techzone', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_techzone.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (130, 8, 0, 'JA Tiris kunena theme for Joomla 2.5', '', 'kunena_theme_tiris_j16', 'custom', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (131, 8, 0, 'JA Bookshop Theme for Mijoshop V2', '', 'mijoshop_theme_bookshop', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_bookshop.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (132, 8, 0, 'JA Decor Theme for Mijoshop', '', 'mijoshop_theme_decor', 'custom', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (133, 8, 0, 'JA Decor Theme for Mijoshop V3', '', 'mijoshop_theme_decor_v3', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor_v3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (134, 8, 0, 'JA ACM Module', '', 'mod_ja_acm', 'module', '', 0, '2.1.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_acm.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (135, 8, 0, 'JA Jobs Tags module for Joomla 2.5', '', 'mod_ja_jobs_tags', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (136, 8, 0, 'JA Accordion Module for J25 & J3x', '', 'mod_jaaccordion', 'module', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (137, 8, 0, 'JA Animation module for Joomla 2.5 & 3.2', '', 'mod_jaanimation', 'module', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (138, 8, 0, 'JA Bulletin Module for J3.x', '', 'mod_jabulletin', 'module', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (139, 8, 0, 'JA Latest Comment Module for Joomla 2.5 & 3.3', '', 'mod_jaclatest_comments', 'module', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (140, 8, 0, 'JA Content Popup Module for J25 & J34', '', 'mod_jacontentpopup', 'module', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (141, 8, 0, 'JA Content Scroll module for Joomla 1.6', '', 'mod_jacontentscroll', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (142, 8, 0, 'JA Contenslider module for Joomla 1.6', '', 'mod_jacontentslide', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (143, 8, 0, 'JA Content Slider Module for J25 & J3x', '', 'mod_jacontentslider', 'module', '', 0, '2.7.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (144, 8, 0, 'JA CountDown Module for Joomla 2.5 & 3.4', '', 'mod_jacountdown', 'module', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (145, 8, 0, 'JA Facebook Activity Module for J25 & J30', '', 'mod_jafacebookactivity', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebookactivity.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (146, 8, 0, 'JA Facebook Like Box Module for Joonla 25 & 34', '', 'mod_jafacebooklikebox', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (147, 8, 0, 'JA Featured Employer module for Joomla 2.5', '', 'mod_jafeatured_employer', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (148, 8, 0, 'JA Filter Jobs module for Joomla 2.5', '', 'mod_jafilter_jobs', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (149, 8, 0, 'JA flowlist module for Joomla 2.5 & 3.0', '', 'mod_jaflowlist', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (150, 8, 0, 'JA Google chart 2', '', 'mod_jagooglechart_2', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jagooglechart_2.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (151, 8, 0, 'JAEC Halloween Module for Joomla 2.5 & 3', '', 'mod_jahalloween', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (152, 8, 0, 'JA Image Hotspot Module for Joomla 2.5 & 3.x', '', 'mod_jaimagehotspot', 'module', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaimagehotspot.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (153, 8, 0, 'JA static module for Joomla 2.5', '', 'mod_jajb_statistic', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (154, 8, 0, 'JA Jobboard Menu module for Joomla 2.5', '', 'mod_jajobboard_menu', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (155, 8, 0, 'JA Jobs Counter module for Joomla 2.5', '', 'mod_jajobs_counter', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (156, 8, 0, 'JA Jobs Map module for Joomla 2.5', '', 'mod_jajobs_map', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (157, 8, 0, 'JA K2 Fillter Module for Joomla 2.5', '', 'mod_jak2_filter', 'module', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (158, 8, 0, 'JA K2 Filter Module for J25 & J3.x', '', 'mod_jak2filter', 'module', '', 0, '1.2.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (159, 8, 0, 'JA K2 Timeline', '', 'mod_jak2timeline', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (160, 8, 0, 'JA Latest Resumes module for Joomla 2.5', '', 'mod_jalatest_resumes', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (161, 8, 0, 'JA List Employer module for Joomla 2.5', '', 'mod_jalist_employers', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (162, 8, 0, 'JA List Jobs module for Joomla 2.5', '', 'mod_jalist_jobs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (163, 8, 0, 'JA List Resumes module for Joomla 2.5', '', 'mod_jalist_resumes', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (164, 8, 0, 'JA Login module for J25 & J3x', '', 'mod_jalogin', 'module', '', 0, '2.6.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (165, 8, 0, 'JA Masshead Module for J25 & J3x', '', 'mod_jamasshead', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (166, 8, 0, 'JA News Featured Module for J25 & J3x', '', 'mod_janews_featured', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (167, 8, 0, 'JA Newsflash module for Joomla 1.6.x', '', 'mod_janewsflash', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (168, 8, 0, 'JA Newsmoo module for Joomla 1.6.x', '', 'mod_janewsmoo', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (169, 8, 0, 'JA News Pro Module for J25 & J3x', '', 'mod_janewspro', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (170, 8, 0, 'JA Newsticker Module for J3x', '', 'mod_janewsticker', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (171, 8, 0, 'JA Quick Contact Module for J3.x', '', 'mod_jaquickcontact', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (172, 8, 0, 'JA Recent Viewed Jobs module for Joomla 2.5', '', 'mod_jarecent_viewed_jobs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (173, 8, 0, 'JA SideNews Module for J25 & J3x', '', 'mod_jasidenews', 'module', '', 0, '2.6.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (174, 8, 0, 'JA Slideshow Module for Joomla 2.5 & 3.x', '', 'mod_jaslideshow', 'module', '', 0, '2.7.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (175, 8, 0, 'JA Slideshow Lite Module for J25 & J3.x', '', 'mod_jaslideshowlite', 'module', '', 0, '1.2.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (176, 8, 0, 'JA Soccerway Module for J25 & J33', '', 'mod_jasoccerway', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (177, 8, 0, 'JA Social Locker module', '', 'mod_jasocial_locker', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasocial_locker.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (178, 8, 0, 'JA Tab module for Joomla 2.5', '', 'mod_jatabs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (179, 8, 0, 'JA Toppanel Module for Joomla 2.5 & Joomla 3.4', '', 'mod_jatoppanel', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (180, 8, 0, 'JA Twitter Module for J25 & j3.x', '', 'mod_jatwitter', 'module', '', 0, '2.6.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (181, 8, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (182, 8, 0, 'JA VMProducts Module', '', 'mod_javmproducts', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (183, 8, 0, 'JA Voice  Work Flow Module for J2.5 & J3.x', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (184, 8, 0, 'JA Amazon S3 Button Plugin for joomla 2.5 & 3.x', '', 'jaamazons3', 'plugin', 'button', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (185, 8, 0, 'JA AVTracklist Button plugin for J2.5 & J3.3', '', 'jaavtracklist', 'plugin', 'button', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaavtracklist.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (186, 8, 0, 'JA Comment Off Plugin for Joomla 2.5 & 3.3', '', 'jacommentoff', 'plugin', 'button', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (187, 8, 0, 'JA Comment On Plugin for Joomla 2.5 & 3.3', '', 'jacommenton', 'plugin', 'button', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (188, 8, 0, 'JA Amazon S3 System plugin for joomla 2.5 & 3.x', '', 'plg_jaamazons3', 'plugin', 'plg_jaamazons3', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (189, 8, 0, 'JA AVTracklist plugin for J2.5 & J3.x', '', 'plg_jaavtracklist', 'plugin', 'plg_jaavtracklist', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaavtracklist.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (190, 8, 0, 'JA Bookmark plugin for J3.x', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (191, 8, 0, 'JA Comment Plugin for Joomla 2.5 & 3.3', '', 'plg_jacomment', 'plugin', 'plg_jacomment', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (192, 8, 0, 'JA Disqus Debate Echo plugin for J3x', '', 'debate_echo', 'plugin', 'jadisqus', 0, '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (193, 8, 0, 'JA Google Storage Plugin for j25 & j30', '', 'plg_jagooglestorage', 'plugin', 'plg_jagooglestorage', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (194, 8, 0, 'JA Translate plugin for Joomla 1.6.x', '', 'plg_jagoogletranslate', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (195, 8, 0, 'JA Megafilter VirtueMart Plugin', '', 'virtuemart', 'plugin', 'jamegafilter', 0, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jamegafilter_virtuemart.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (196, 8, 0, 'JA Thumbnail Plugin for J25 & J3', '', 'plg_jathumbnail', 'plugin', 'plg_jathumbnail', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (197, 8, 0, 'JA Tooltips plugin for Joomla 1.6.x', '', 'plg_jatooltips', 'plugin', 'plg_jatooltips', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (198, 8, 0, 'JA Typo Button Plugin for J25 & J3x', '', 'plg_jatypobutton', 'plugin', 'plg_jatypobutton', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (199, 8, 0, 'JA K2 Filter Plg for J25 & J3.x', '', 'jak2filter', 'plugin', 'k2', 0, '1.2.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (200, 8, 0, 'JA K2 Timeline Plugin', '', 'jak2timeline', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (201, 8, 0, 'Multi Captcha Engine Plugin for J3.x', '', 'captcha_engine', 'plugin', 'multiple', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (202, 8, 0, 'JA JobBoard Payment Plugin Authorize for Joomla 2.5', '', 'plg_payment_jajb_authorize_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (203, 8, 0, 'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5', '', 'plg_payment_jajb_moneybooker_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (204, 8, 0, 'JA JobBoard Payment Plugin Paypal for Joomla 2.5', '', 'plg_payment_jajb_paypal_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (205, 8, 0, 'JA JobBoard Payment Plugin BankWire for Joomla 2.5', '', 'plg_payment_jajb_wirebank_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (206, 8, 0, 'JA Search Comment Plugin for Joomla J2.5 & 3.0', '', 'jacomment', 'plugin', 'search', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (207, 8, 0, 'JA Search Jobs plugin for Joomla 2.5', '', 'jajob', 'plugin', 'search', 0, '1.0.0 stable', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (208, 8, 0, 'JA System Comment Plugin for Joomla 2.5 & 3.3', '', 'jacomment', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (209, 8, 0, 'JA Content Extra Fields for Joomla 2.5', '', 'jacontentextrafields', 'plugin', 'system', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (210, 8, 0, 'JA System Google Map plugin for Joomla 2.5 & J3.x', '', 'jagooglemap', 'plugin', 'system', 0, '2.6.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (211, 8, 0, 'JAEC PLG System Jobboad Jomsocial Synchonization', '', 'jajb_jomsocial', 'plugin', 'system', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (212, 8, 0, 'JA System Lazyload Plugin for J25 & J3x', '', 'jalazyload', 'plugin', 'system', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (213, 8, 0, 'JA Megafilter Plugin', '', 'jamegafilter', 'plugin', 'system', 0, '1.0.0 Beta 1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jamegafilter.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (214, 8, 0, 'JA System Nrain Plugin for Joomla 2.5 & 3.3', '', 'janrain', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (215, 8, 0, 'JA System Pager Plugin for J25 & J3x', '', 'japager', 'plugin', 'system', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_japager.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (216, 8, 0, 'JA Popup Plugin for Joomla 25 & 3x', '', 'japopup', 'plugin', 'system', 0, '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (217, 8, 0, 'JA System Social Plugin for Joomla 3.x', '', 'jasocial', 'plugin', 'system', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (218, 8, 0, 'JA System Social Feed Plugin for Joomla 2.5 & 3.x', '', 'jasocial_feed', 'plugin', 'system', 0, '1.3.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (219, 8, 0, 'JA T3v2 System Plugin for J3.x', '', 'jat3', 'plugin', 'system', 0, '2.7.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (220, 8, 0, 'JA T3v3 System Plugin', '', 'jat3v3', 'plugin', 'system', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (221, 8, 0, 'JA Tabs Plugin for J3.x', '', 'jatabs', 'plugin', 'system', 0, '2.6.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (222, 8, 0, 'JA Typo Plugin for Joomla 2.5 & J3x', '', 'jatypo', 'plugin', 'system', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatypo.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (223, 8, 0, 'T3 B3 Blank Template', '', 't3_bs3_blank', 'template', '', 0, '2.1.4', '', 'http://update.joomlart.com/service/tracking/j16/t3_bs3_blank.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (224, 8, 0, 'JA Teline III Template for Joomla 2.5', '', 'teline_iii', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/teline_iii.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (225, 8, 0, 'Thirdparty Extensions Compatibility Bundle', '', 'thirdparty_exts_compatibility', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/thirdparty_exts_compatibility.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (226, 8, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '2.2.1', '', 'http://update.joomlart.com/service/tracking/j16/tpl_t3_blank.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (227, 8, 0, 'Uber Template', '', 'uber', 'template', '', 0, '2.1.6', '', 'http://update.joomlart.com/service/tracking/j16/uber.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (228, 8, 0, 'Backend Template', '', 'backend_template_package', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j30/backend_template_package.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (229, 8, 0, 'Backend Template', '', 'backend_template_pkg', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j30/backend_template_pkg.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (230, 8, 0, 'JA Restaurant Template', '', 'ja_restaurant', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j30/ja_restaurant.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (231, 8, 0, 'T3 BS3 Blank Template', '', 't3_bs3_blank', 'template', '', 0, '2.2.1', '', 'http://update.joomlart.com/service/tracking/j30/tpl_t3_bs3_blank.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (232, 8, 0, 'JA Builder Component', '', 'com_jabuilder', 'component', '', 1, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j31/com_jabuilder.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (233, 8, 0, 'JA K2 v3 Filter package for J33', '', 'com_jak2v3filter', 'component', '', 1, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/com_jak2v3filter.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (234, 8, 0, 'JA Multilingual Component for Joomla 2.5 & 3.4', '', 'com_jalang', 'component', '', 1, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j31/com_jalang.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (235, 8, 0, 'JA Intranet Theme for EasyBlog', '', 'easyblog_theme_intranet', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_intranet.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (236, 8, 0, 'JA Resume Theme for EasyBlog', '', 'easyblog_theme_resume', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_resume.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (237, 8, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.1.5', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_sugite.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (238, 8, 0, 'JA Intranet Theme for EasySocialv1 ', '', 'easysocial1_support_intranet', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/easysocial1_support_intranet.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (239, 8, 0, 'JA Social II Support EasySocial1', '', 'easysocial1_support_social_ii', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/easysocial1_support_social_ii.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (240, 8, 0, 'JA Alumni Template', '', 'ja_alumni', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_alumni.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (241, 8, 0, 'JA Biz Template', '', 'ja_biz', 'template', '', 0, '1.1.7', '', 'http://update.joomlart.com/service/tracking/j31/ja_biz.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (242, 8, 0, 'JA Brickstore Template', '', 'ja_brickstore', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_brickstore.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (243, 8, 0, 'JA Builder Template', '', 'ja_builder', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j31/ja_builder.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (244, 8, 0, 'JA Builder Package', '', 'ja_builder_pkg', 'package', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_builder_pkg.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (245, 8, 0, 'JA Cago template', '', 'ja_cago', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_cago.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (246, 8, 0, 'JA Cagox template', '', 'ja_cagox', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j31/ja_cagox.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (247, 8, 0, 'JA Charity template', '', 'ja_charity', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j31/ja_charity.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (248, 8, 0, 'JA Company Template', '', 'ja_company', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_company.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (249, 8, 0, 'JA Directory Template', '', 'ja_directory', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_directory.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (250, 8, 0, 'JA Edenite Template for J25 & J34', '', 'ja_edenite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_edenite.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (251, 8, 0, 'JA Edenite II Template', '', 'ja_edenite_ii', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_edenite_ii.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (252, 8, 0, 'JA Elicyon Template', '', 'ja_elicyon', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_elicyon.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (253, 8, 0, 'JA Events II template', '', 'ja_events_ii', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_events_ii.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (254, 8, 0, 'JA Fixel Template', '', 'ja_fixel', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j31/ja_fixel.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (255, 8, 0, 'JA Healthcare Template', '', 'ja_healthcare', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_healthcare.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (256, 8, 0, 'JA Hotel Template', '', 'ja_hotel', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_hotel.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (257, 8, 0, 'JA Intranet Template', '', 'ja_intranet', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_intranet.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (258, 8, 0, 'JA Magz II Template', '', 'ja_magz_ii', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_magz_ii.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (259, 8, 0, 'JA Megafilter Template', '', 'ja_megafilter', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_megafilter.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (260, 8, 0, 'JA Megastore Template', '', 'ja_megastore', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_megastore.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (261, 8, 0, 'JA Mono Template', '', 'ja_mono', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_mono.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (262, 8, 0, 'JA Mood Template', '', 'ja_mood', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_mood.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (263, 8, 0, 'JA Moviemax Template', '', 'ja_moviemax', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_moviemax.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (264, 8, 0, 'JA Muzic Template', '', 'ja_muzic', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_muzic.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (265, 8, 0, 'JA Oslo Template', '', 'ja_oslo', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_oslo.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (266, 8, 0, 'JA Platon Template', '', 'ja_platon', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_platon.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (267, 8, 0, 'JA Playstore Template', '', 'ja_playstore', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_playstore.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (268, 8, 0, 'JA Rave Template for Joomla 3.x', '', 'ja_rave', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_rave.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (269, 8, 0, 'JA Rent template', '', 'ja_rent', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_rent.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (270, 8, 0, 'JA Resume Template', '', 'ja_resume', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_resume.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (271, 8, 0, 'JA Simpli Template', '', 'ja_simpli', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_simpli.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (272, 8, 0, 'JA Social II template', '', 'ja_social_ii', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j31/ja_social_ii.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (273, 8, 0, 'JA Techzone Template', '', 'ja_techzone', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_techzone.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (274, 8, 0, 'JA Teline V Template', '', 'ja_teline_v', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_teline_v.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (275, 8, 0, 'JA University Template for J25 & J32', '', 'ja_university', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j31/ja_university.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (276, 8, 0, 'JA University T3 template', '', 'ja_university_t3', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j31/ja_university_t3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (277, 8, 0, 'JA Vintas Template for J25 & J3x', '', 'ja_vintas', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j31/ja_vintas.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (278, 8, 0, 'JA Wall Template for J25 & J34', '', 'ja_wall', 'template', '', 0, '1.2.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_wall.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (279, 8, 0, 'Jomsocial theme for Platon', '', 'jomsocial_theme_platon', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/jomsocial_theme_platon.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (280, 8, 0, 'Theme Fixel for JShopping J25 & J30', '', 'jshopping_theme_fixel', 'custom', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j31/jshopping_theme_fixel.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (281, 8, 0, 'JA Tiris Jshopping theme for J3x', '', 'jshopping_theme_tiris_j3x', 'custom', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j31/jshopping_theme_tiris_j3x.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (282, 8, 0, 'JA Mitius Kunena Theme for Joomla 3x', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_mitius.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (283, 8, 0, 'JA Tiris Kunena Theme for Joomla 3x', '', 'kunena_theme_mitius_j31', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_mitius_j31.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (284, 8, 0, 'Kunena Theme MovieMax', '', 'kunena_theme_moviemax', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_moviemax.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (285, 8, 0, 'Kunena Theme Platon', '', 'kunena_theme_platon', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_platon.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (286, 8, 0, 'Kunena Theme Playstore', '', 'kunena_theme_playstore', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_playstore.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (287, 8, 0, 'JA Tiris Kunena Theme for Joomla 3x', '', 'kunena_theme_tiris_j3x', 'custom', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_tiris_j3x.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (288, 8, 0, 'Mijoshop Modules Accordion', '', 'mijoshop_mod_accordion', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_accordion.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (289, 8, 0, 'Mijoshop V3 Modules Accordion', '', 'mijoshop_mod_accordion_v3', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_accordion_v3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (290, 8, 0, 'Mijoshop Modules Slider', '', 'mijoshop_mod_slider', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_slider.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (291, 8, 0, 'Mijoshop V3 Modules Slider', '', 'mijoshop_mod_slider_v3', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_slider_v3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (292, 8, 0, 'JA Bookshop Theme for Mijoshop V3', '', 'mijoshop_theme_bookshop_v3', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_theme_bookshop_v3.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (293, 8, 0, 'JA Google Analytics Frontend', '', 'mod_ja_ga', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_ja_ga.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (294, 8, 0, 'JA Latest  Article Module', '', 'mod_jaarticles_latest', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mod_jaarticles_latest.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (295, 8, 0, 'JA Builder Admin Menu Module', '', 'mod_jabuilder_admin_menu', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mod_jabuilder_admin_menu.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (296, 8, 0, 'JA Builder Quickicons Module', '', 'mod_jabuilder_quickicons', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_jabuilder_quickicons.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (297, 8, 0, 'JA Google Analytics', '', 'mod_jagoogle_analytics', 'module', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j31/mod_jagoogle_analytics.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (298, 8, 0, 'JA Google Chart Module', '', 'mod_jagooglechart', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mod_jagooglechart.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (299, 8, 0, 'JA Halloween Game for Joomla 3.x', '', 'mod_jahalloweengame', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mod_jahalloweengame.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (300, 8, 0, 'JA K2 v3 Filter Module for J33', '', 'mod_jak2v3filter', 'module', '', 0, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/mod_jak2v3filter.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (301, 8, 0, 'JA Masthead Module ', '', 'mod_jamasthead', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/mod_jamasthead.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (302, 8, 0, 'JA Megafilter Module', '', 'mod_jamegafilter', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_jamegafilter.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (303, 8, 0, 'JA Promo Bar module', '', 'mod_japromobar', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/mod_japromobar.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (304, 8, 0, 'Ja Yahoo Finance', '', 'mod_jayahoo_finance', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mod_jayahoo_finance.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (305, 8, 0, 'Ja Yahoo Weather', '', 'mod_jayahoo_weather', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_jayahoo_weather.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (306, 8, 0, 'Plugin Ajax JA Content Type', '', 'jacontenttype', 'plugin', 'ajax', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/plg_ajax_jacontenttype.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (307, 8, 0, 'JA K2 Data Migration plugin', '', 'plg_jak2tocomcontentmigration', 'plugin', 'plg_jak2tocomcontent', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/plg_jak2tocomcontentmigration.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (308, 8, 0, 'Plgin JA K2 import to Joomla Content', '', 'plg_jak2tocontent', 'plugin', 'plg_jak2tocontent', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j31/plg_jak2tocontent.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (309, 8, 0, 'JA Megafilter Joomla Custom Fields Plugin', '', 'content', 'plugin', 'jamegafilter', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/plg_jamegafilter_content.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (310, 8, 0, 'JA Megafilter DOCman Plugin', '', 'docman', 'plugin', 'jamegafilter', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/plg_jamegafilter_docman.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (311, 8, 0, 'JA Megafilter EShop Plugin', '', 'eshop', 'plugin', 'jamegafilter', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j31/plg_jamegafilter_eshop.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (312, 8, 0, 'JA Megafilter HikaShop Plugin', '', 'hikashop', 'plugin', 'jamegafilter', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j31/plg_jamegafilter_hikashop.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (313, 8, 0, 'JA Megafilter J2store Plugin', '', 'j2store', 'plugin', 'jamegafilter', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j31/plg_jamegafilter_j2store.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (314, 8, 0, 'JA Megafilter for Hikashop plg', '', 'ja_hikashop', 'plugin', 'jamegafilter', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_jamegafilter_ja_hikashop.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (315, 8, 0, 'JA Megafilter JoomShopping Plugin', '', 'jshopping', 'plugin', 'jamegafilter', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j31/plg_jamegafilter_jshopping.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (316, 8, 0, 'JA Megafilter K2 Plugin', '', 'k2', 'plugin', 'jamegafilter', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j31/plg_jamegafilter_k2.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (317, 8, 0, 'JA Megafilter Mijoshop Plugin', '', 'mijoshop', 'plugin', 'jamegafilter', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/plg_jamegafilter_mijoshop.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (318, 8, 0, 'JA K2 Extrafields', '', 'jak2extrafields', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_k2_jak2extrafields.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (319, 8, 0, 'JA K2 v3 Filter Plugin for J33', '', 'jak2v3filter', 'plugin', 'k2', 0, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/plg_k2_jak2v3filter.xml', '', '');
INSERT INTO `aj14x_updates` VALUES (320, 8, 0, 'JA System Designit Plugin', '', 'designit', 'plugin', 'system', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_system_designit.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (321, 8, 0, 'JA Builder System Plugin', '', 'jabuilder', 'plugin', 'system', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_system_jabuilder.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (322, 8, 0, 'Plugin JA Content Type', '', 'jacontenttype', 'plugin', 'system', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_system_jacontenttype.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (323, 8, 0, 'T3 BS3 Blank Template', '', 't3_bs3_blank', 'template', '', 0, '2.2.1', '', 'http://update.joomlart.com/service/tracking/j31/tpl_t3_bs3_blank.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (324, 8, 0, 'Sample package for Uber App', '', 'uber_app', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_app.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (325, 8, 0, 'Sample package for Bookstore', '', 'uber_bookstore', 'sample_package', '', 0, '2.1.4', '', 'http://update.joomlart.com/service/tracking/j31/uber_bookstore.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (326, 8, 0, 'Sample package for Uber Business', '', 'uber_business', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_business.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (327, 8, 0, 'Sample package for Uber Charity', '', 'uber_charity', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_charity.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (328, 8, 0, 'Sample package for Uber Church', '', 'uber_church', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_church.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (329, 8, 0, 'Sample package for Uber Construction', '', 'uber_construction', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_construction.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (330, 8, 0, 'Sample package for Uber Corporate', '', 'uber_corporate', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_corporate.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (331, 8, 0, 'Sample package for Uber Gym', '', 'uber_gym', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_gym.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (332, 8, 0, 'Sample package for Uber Home', '', 'uber_home', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_home.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (333, 8, 0, 'Sample package for Landing page', '', 'uber_landing', 'sample_package', '', 0, '2.1.1', '', 'http://update.joomlart.com/service/tracking/j31/uber_landing.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (334, 8, 0, 'Sample package for Uber Lawyer', '', 'uber_lawyer', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_lawyer.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (335, 8, 0, 'Sample package for Uber Medicare', '', 'uber_medicare', 'sample_package', '', 0, '2.1.1', '', 'http://update.joomlart.com/service/tracking/j31/uber_medicare.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (336, 8, 0, 'Sample package for Uber Music', '', 'uber_music', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_music.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (337, 8, 0, 'Sample package for Uber Restaurant', '', 'uber_restaurant', 'sample_package', '', 0, '2.0.4', '', 'http://update.joomlart.com/service/tracking/j31/uber_restaurant.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (338, 8, 0, 'Sample package for Uber Spa', '', 'uber_spa', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_spa.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (339, 8, 0, 'Sample package for Uber University', '', 'uber_university', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_university.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (340, 8, 0, 'Sample package for Uber Wedding', '', 'uber_wedding', 'sample_package', '', 0, '2.0.3', '', 'http://update.joomlart.com/service/tracking/j31/uber_wedding.xml', 'https://www.joomlart.com/update-steps', '');
INSERT INTO `aj14x_updates` VALUES (341, 11, 0, 'FOF 3.x Stable', 'FOF 3.x Stable', 'lib_fof30', 'library', '', 1, '3.1.3', '', 'http://cdn.akeebabackup.com/updates/fof3.xml', 'https://www.akeebabackup.com/component/ars/?view=Items&release_id=2734', '');
INSERT INTO `aj14x_updates` VALUES (342, 13, 10024, 'RSFirewall! 2.11.8 for Joomla! 3.x', '', 'com_rsfirewall', 'component', '', 1, '2.11.8', '', 'https://www.rsjoomla.com/updates/com_rsfirewall/Component/com_rsfirewall.xml', 'https://www.rsjoomla.com/support/documentation/rsfirewall-user-guide/changelog.html', '');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_user_keys`
-- 

CREATE TABLE `aj14x_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_user_keys`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_user_notes`
-- 

CREATE TABLE `aj14x_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_user_notes`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_user_profiles`
-- 

CREATE TABLE `aj14x_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- 
-- Sukurta duomenų kopija lentelei `aj14x_user_profiles`
-- 


-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_user_usergroup_map`
-- 

CREATE TABLE `aj14x_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_user_usergroup_map`
-- 

INSERT INTO `aj14x_user_usergroup_map` VALUES (290, 8);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_usergroups`
-- 

CREATE TABLE `aj14x_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_usergroups`
-- 

INSERT INTO `aj14x_usergroups` VALUES (1, 0, 1, 18, 'Public');
INSERT INTO `aj14x_usergroups` VALUES (2, 1, 8, 15, 'Registered');
INSERT INTO `aj14x_usergroups` VALUES (3, 2, 9, 14, 'Author');
INSERT INTO `aj14x_usergroups` VALUES (4, 3, 10, 13, 'Editor');
INSERT INTO `aj14x_usergroups` VALUES (5, 4, 11, 12, 'Publisher');
INSERT INTO `aj14x_usergroups` VALUES (6, 1, 4, 7, 'Manager');
INSERT INTO `aj14x_usergroups` VALUES (7, 6, 5, 6, 'Administrator');
INSERT INTO `aj14x_usergroups` VALUES (8, 1, 16, 17, 'Super Users');
INSERT INTO `aj14x_usergroups` VALUES (9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_users`
-- 

CREATE TABLE `aj14x_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=291 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_users`
-- 

INSERT INTO `aj14x_users` VALUES (290, 'Super User', 'virgis', 'virgismankus@gmail.com', '$2y$10$BON4klVsa4uyRKHcRMjGpuBTch80AIRyX6CroZE5lgTU8/XJbMjAG', 0, 1, '2017-09-17 17:38:08', '2017-09-17 22:01:34', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_utf8_conversion`
-- 

CREATE TABLE `aj14x_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_utf8_conversion`
-- 

INSERT INTO `aj14x_utf8_conversion` VALUES (2);

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_viewlevels`
-- 

CREATE TABLE `aj14x_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_viewlevels`
-- 

INSERT INTO `aj14x_viewlevels` VALUES (1, 'Public', 0, '[1]');
INSERT INTO `aj14x_viewlevels` VALUES (2, 'Registered', 2, '[6,2,8]');
INSERT INTO `aj14x_viewlevels` VALUES (3, 'Special', 3, '[6,3,8]');
INSERT INTO `aj14x_viewlevels` VALUES (5, 'Guest', 1, '[9]');
INSERT INTO `aj14x_viewlevels` VALUES (6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

-- 
-- Sukurta duomenų struktūra lentelei `aj14x_wf_profiles`
-- 

CREATE TABLE `aj14x_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_wf_profiles`
-- 

INSERT INTO `aj14x_wf_profiles` VALUES (1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,fontcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,print,searchreplace,spacer,table,style,xhtmlxtras;visualaid,visualchars,visualblocks,nonbreaking,anchor,unlink,link,imgmanager,spellchecker,article', 'formatselect,styleselect,cleanup,fontselect,fontsizeselect,fontcolor,clipboard,lists,textcase,charmap,hr,directionality,fullscreen,print,searchreplace,table,style,xhtmlxtras,visualchars,visualblocks,nonbreaking,anchor,link,imgmanager,spellchecker,article,spellchecker,article,browser,contextmenu,inlinepopups,media,preview,source', 1, 1, 0, '0000-00-00 00:00:00', '');
INSERT INTO `aj14x_wf_profiles` VALUES (2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,hr', 0, 2, 0, '0000-00-00 00:00:00', '');
INSERT INTO `aj14x_wf_profiles` VALUES (3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect,textpattern', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}');
INSERT INTO `aj14x_wf_profiles` VALUES (4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect,textpattern', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');
INSERT INTO `aj14x_wf_profiles` VALUES (5, 'Markdown', 'Sample Markdown Profile', '', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'fullscreen,justifyleft,justifycenter,justifyfull,justifyright,link,unlink,imgmanager,styleselect', 'fullscreen,link,imgmanager,styleselect,inlinepopups,media,textpattern', 0, 5, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile"}}');
