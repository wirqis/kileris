-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Darbinė stotis: custsql-spro-ipg04.ipagemysql.com
-- Atlikimo laikas:  2017 m. Rugsėjo 17 d.  14:29
-- Serverio versija: 5.6.32
-- PHP versija: 4.4.9
-- 
-- Duombazė: `kileris_nfq`
-- 
CREATE DATABASE `kileris_nfq` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kileris_nfq`;

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=58 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_assets`
-- 

INSERT INTO `aj14x_assets` VALUES (1, 0, 0, 109, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}');
INSERT INTO `aj14x_assets` VALUES (2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}');
INSERT INTO `aj14x_assets` VALUES (3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1}}');
INSERT INTO `aj14x_assets` VALUES (4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (6, 1, 11, 12, 1, 'com_config', 'com_config', '{}');
INSERT INTO `aj14x_assets` VALUES (7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1}}');
INSERT INTO `aj14x_assets` VALUES (8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.edit":{"4":1},"core.edit.state":{"5":1}}');
INSERT INTO `aj14x_assets` VALUES (9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}');
INSERT INTO `aj14x_assets` VALUES (10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}');
INSERT INTO `aj14x_assets` VALUES (11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (12, 1, 27, 28, 1, 'com_login', 'com_login', '{}');
INSERT INTO `aj14x_assets` VALUES (13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}');
INSERT INTO `aj14x_assets` VALUES (14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}');
INSERT INTO `aj14x_assets` VALUES (15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}');
INSERT INTO `aj14x_assets` VALUES (16, 1, 35, 38, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (18, 1, 41, 72, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (19, 1, 73, 76, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1}}');
INSERT INTO `aj14x_assets` VALUES (20, 1, 77, 78, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (21, 1, 79, 80, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (22, 1, 81, 82, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}');
INSERT INTO `aj14x_assets` VALUES (23, 1, 83, 84, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (24, 1, 85, 88, 1, 'com_users', 'com_users', '{"core.admin":{"7":1}}');
INSERT INTO `aj14x_assets` VALUES (26, 1, 89, 90, 1, 'com_wrapper', 'com_wrapper', '{}');
INSERT INTO `aj14x_assets` VALUES (27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}');
INSERT INTO `aj14x_assets` VALUES (28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}');
INSERT INTO `aj14x_assets` VALUES (29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}');
INSERT INTO `aj14x_assets` VALUES (30, 19, 74, 75, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}');
INSERT INTO `aj14x_assets` VALUES (32, 24, 86, 87, 2, 'com_users.category.7', 'Uncategorised', '{}');
INSERT INTO `aj14x_assets` VALUES (33, 1, 91, 92, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}');
INSERT INTO `aj14x_assets` VALUES (34, 1, 93, 94, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}');
INSERT INTO `aj14x_assets` VALUES (35, 1, 95, 96, 1, 'com_tags', 'com_tags', '{}');
INSERT INTO `aj14x_assets` VALUES (36, 1, 97, 98, 1, 'com_contenthistory', 'com_contenthistory', '{}');
INSERT INTO `aj14x_assets` VALUES (37, 1, 99, 100, 1, 'com_ajax', 'com_ajax', '{}');
INSERT INTO `aj14x_assets` VALUES (38, 1, 101, 102, 1, 'com_postinstall', 'com_postinstall', '{}');
INSERT INTO `aj14x_assets` VALUES (39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{}');
INSERT INTO `aj14x_assets` VALUES (40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{}');
INSERT INTO `aj14x_assets` VALUES (41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{}');
INSERT INTO `aj14x_assets` VALUES (42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{}');
INSERT INTO `aj14x_assets` VALUES (43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{}');
INSERT INTO `aj14x_assets` VALUES (44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{}');
INSERT INTO `aj14x_assets` VALUES (45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{}');
INSERT INTO `aj14x_assets` VALUES (46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{}');
INSERT INTO `aj14x_assets` VALUES (47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{}');
INSERT INTO `aj14x_assets` VALUES (48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{}');
INSERT INTO `aj14x_assets` VALUES (49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{}');
INSERT INTO `aj14x_assets` VALUES (50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{}');
INSERT INTO `aj14x_assets` VALUES (51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{}');
INSERT INTO `aj14x_assets` VALUES (52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{}');
INSERT INTO `aj14x_assets` VALUES (53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{}');
INSERT INTO `aj14x_assets` VALUES (54, 16, 36, 37, 2, 'com_menus.menu.1', 'Main Menu', '{}');
INSERT INTO `aj14x_assets` VALUES (55, 1, 103, 104, 1, 'com_rsform', 'com_rsform', '{}');
INSERT INTO `aj14x_assets` VALUES (56, 1, 105, 106, 1, '#__languages.2', '#__languages.2', '{}');
INSERT INTO `aj14x_assets` VALUES (57, 1, 107, 108, 1, 'com_jaextmanager', 'com_jaextmanager', '{}');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_categories`
-- 

INSERT INTO `aj14x_categories` VALUES (1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 0x726f6f74, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `aj14x_categories` VALUES (2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 0x756e63617465676f7269736564, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `aj14x_categories` VALUES (3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 0x756e63617465676f7269736564, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `aj14x_categories` VALUES (4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 0x756e63617465676f7269736564, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `aj14x_categories` VALUES (5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 0x756e63617465676f7269736564, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);
INSERT INTO `aj14x_categories` VALUES (7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 0x756e63617465676f7269736564, '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 290, '2017-09-17 17:38:08', 0, '0000-00-00 00:00:00', 0, '*', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_content`
-- 


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
) ENGINE=InnoDB AUTO_INCREMENT=10010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10010 ;

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
INSERT INTO `aj14x_extensions` VALUES (23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
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
INSERT INTO `aj14x_extensions` VALUES (103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"c9541a87d685783cfd6be6dd50e73c71"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
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
INSERT INTO `aj14x_extensions` VALUES (452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1505669906}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=110 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_menu`
-- 

INSERT INTO `aj14x_menu` VALUES (1, '', 'Menu_Item_Root', 0x726f6f74, '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 59, 0, '*', 0);
INSERT INTO `aj14x_menu` VALUES (2, 'main', 'com_banners', 0x42616e6e657273, '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (3, 'main', 'com_banners', 0x42616e6e657273, '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (4, 'main', 'com_banners_categories', 0x43617465676f72696573, '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (5, 'main', 'com_banners_clients', 0x436c69656e7473, '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (6, 'main', 'com_banners_tracks', 0x547261636b73, '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (7, 'main', 'com_contact', 0x436f6e7461637473, '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (8, 'main', 'com_contact_contacts', 0x436f6e7461637473, '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (9, 'main', 'com_contact_categories', 0x43617465676f72696573, '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (10, 'main', 'com_messages', 0x4d6573736167696e67, '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (11, 'main', 'com_messages_add', 0x4e65772050726976617465204d657373616765, '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (13, 'main', 'com_newsfeeds', 0x4e657773204665656473, '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (14, 'main', 'com_newsfeeds_feeds', 0x4665656473, '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (15, 'main', 'com_newsfeeds_categories', 0x43617465676f72696573, '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (16, 'main', 'com_redirect', 0x5265646972656374, '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (17, 'main', 'com_search', 0x426173696320536561726368, '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (18, 'main', 'com_finder', 0x536d61727420536561726368, '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (19, 'main', 'com_joomlaupdate', 0x4a6f6f6d6c612120557064617465, '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (20, 'main', 'com_tags', 0x54616773, '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (21, 'main', 'com_postinstall', 0x506f73742d696e7374616c6c6174696f6e206d65737361676573, '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (22, 'main', 'com_associations', 0x4d756c74696c696e6775616c204173736f63696174696f6e73, '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1);
INSERT INTO `aj14x_menu` VALUES (101, 'mainmenu', 'Home', 0x686f6d65, '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0);
INSERT INTO `aj14x_menu` VALUES (102, 'main', 'RSFormPro', 0x7273666f726d70726f, '', 'rsformpro', 'index.php?option=com_rsform', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rsform/assets/images/rsformpro.gif', 0, '{}', 43, 56, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (103, 'main', 'COM_RSFORM_MANAGE_FORMS', 0x636f6d2d7273666f726d2d6d616e6167652d666f726d73, '', 'rsformpro/com-rsform-manage-forms', 'index.php?option=com_rsform&view=forms', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 44, 45, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (104, 'main', 'COM_RSFORM_MANAGE_SUBMISSIONS', 0x636f6d2d7273666f726d2d6d616e6167652d7375626d697373696f6e73, '', 'rsformpro/com-rsform-manage-submissions', 'index.php?option=com_rsform&view=submissions', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 46, 47, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (105, 'main', 'COM_RSFORM_MANAGE_DIRECTORY_SUBMISSIONS', 0x636f6d2d7273666f726d2d6d616e6167652d6469726563746f72792d7375626d697373696f6e73, '', 'rsformpro/com-rsform-manage-directory-submissions', 'index.php?option=com_rsform&view=directory', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 48, 49, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (106, 'main', 'COM_RSFORM_CONFIGURATION', 0x636f6d2d7273666f726d2d636f6e66696775726174696f6e, '', 'rsformpro/com-rsform-configuration', 'index.php?option=com_rsform&view=configuration', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 50, 51, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (107, 'main', 'COM_RSFORM_BACKUP_RESTORE', 0x636f6d2d7273666f726d2d6261636b75702d726573746f7265, '', 'rsformpro/com-rsform-backup-restore', 'index.php?option=com_rsform&view=backuprestore', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 52, 53, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (108, 'main', 'COM_RSFORM_UPDATES', 0x636f6d2d7273666f726d2d75706461746573, '', 'rsformpro/com-rsform-updates', 'index.php?option=com_rsform&view=updates', 'component', 1, 102, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 54, 55, 0, '', 1);
INSERT INTO `aj14x_menu` VALUES (109, 'main', 'COM_JAEXTMANAGER', 0x636f6d2d6a616578746d616e61676572, '', 'com-jaextmanager', 'index.php?option=com_jaextmanager', 'component', 1, 1, 1, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jaextmanager/assets/images/jauc.png', 0, '{}', 57, 58, 0, '', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_menu_types`
-- 

INSERT INTO `aj14x_menu_types` VALUES (1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=87 ;

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_components`
-- 

INSERT INTO `aj14x_rsform_components` VALUES (1, 1, 1, 2, 1);
INSERT INTO `aj14x_rsform_components` VALUES (2, 1, 10, 1, 1);
INSERT INTO `aj14x_rsform_components` VALUES (3, 1, 1, 3, 1);
INSERT INTO `aj14x_rsform_components` VALUES (4, 1, 3, 4, 1);
INSERT INTO `aj14x_rsform_components` VALUES (5, 1, 5, 5, 1);
INSERT INTO `aj14x_rsform_components` VALUES (6, 1, 4, 6, 1);
INSERT INTO `aj14x_rsform_components` VALUES (7, 1, 6, 7, 1);
INSERT INTO `aj14x_rsform_components` VALUES (8, 1, 13, 8, 1);
INSERT INTO `aj14x_rsform_components` VALUES (9, 1, 10, 9, 1);
INSERT INTO `aj14x_rsform_components` VALUES (10, 2, 1, 2, 1);
INSERT INTO `aj14x_rsform_components` VALUES (11, 2, 10, 1, 1);
INSERT INTO `aj14x_rsform_components` VALUES (12, 2, 1, 3, 1);
INSERT INTO `aj14x_rsform_components` VALUES (13, 2, 3, 6, 1);
INSERT INTO `aj14x_rsform_components` VALUES (14, 2, 5, 7, 1);
INSERT INTO `aj14x_rsform_components` VALUES (15, 2, 4, 10, 1);
INSERT INTO `aj14x_rsform_components` VALUES (16, 2, 6, 11, 1);
INSERT INTO `aj14x_rsform_components` VALUES (17, 2, 13, 12, 1);
INSERT INTO `aj14x_rsform_components` VALUES (18, 2, 10, 13, 1);
INSERT INTO `aj14x_rsform_components` VALUES (19, 2, 41, 4, 1);
INSERT INTO `aj14x_rsform_components` VALUES (20, 2, 41, 8, 1);
INSERT INTO `aj14x_rsform_components` VALUES (21, 2, 10, 5, 1);
INSERT INTO `aj14x_rsform_components` VALUES (22, 2, 10, 9, 1);

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

INSERT INTO `aj14x_rsform_forms` VALUES (1, 'RSFormPro example', '<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_1_page_0">\r\n	<div class="rsform-block rsform-block-header">\r\n		<div class="formControlLabel">{Header:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Header:body}<span class="formValidation">{Header:validation}</span></div>\r\n		<p class="formDescription">{Header:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-fullname">\r\n		<div class="formControlLabel">{FullName:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{FullName:body}<span class="formValidation">{FullName:validation}</span></div>\r\n		<p class="formDescription">{FullName:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-email">\r\n		<div class="formControlLabel">{Email:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Email:body}<span class="formValidation">{Email:validation}</span></div>\r\n		<p class="formDescription">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-companysize">\r\n		<div class="formControlLabel">{CompanySize:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{CompanySize:body}<span class="formValidation">{CompanySize:validation}</span></div>\r\n		<p class="formDescription">{CompanySize:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-position">\r\n		<div class="formControlLabel">{Position:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Position:body}<span class="formValidation">{Position:validation}</span></div>\r\n		<p class="formDescription">{Position:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-contactby">\r\n		<div class="formControlLabel">{ContactBy:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactBy:body}<span class="formValidation">{ContactBy:validation}</span></div>\r\n		<p class="formDescription">{ContactBy:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-contactwhen">\r\n		<div class="formControlLabel">{ContactWhen:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactWhen:body}<span class="formValidation">{ContactWhen:validation}</span></div>\r\n		<p class="formDescription">{ContactWhen:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-submit">\r\n		<div class="formControlLabel">{Submit:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Submit:body}<span class="formValidation">{Submit:validation}</span></div>\r\n		<p class="formDescription">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-footer">\r\n		<div class="formControlLabel">{Footer:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Footer:body}<span class="formValidation">{Footer:validation}</span></div>\r\n		<p class="formDescription">{Footer:description}</p>\r\n		</div>\r\n	</div>\r\n</fieldset>\r\n', 'responsive', 1, 1, 0, 0, '', '', 'RSForm! Pro example', 1, 1, '', '', 1, 0, 0, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', '{global:mailfrom}', '', '{global:fromname}', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', '{FullName:value}', 'Contact', 1, '', '', '', '', '', '', 0, '', '', '(*)', '', ', ', 1, '', 'userForm', '', '', '', 0, 0, '', 1, 1, 0, 0, '');
INSERT INTO `aj14x_rsform_forms` VALUES (2, 'RSFormPro Multipage example', '<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_0">\r\n	<div class="rsform-block rsform-block-header">\r\n		<div class="formControlLabel">{Header:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Header:body}<span class="formValidation">{Header:validation}</span></div>\r\n		<p class="formDescription">{Header:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-fullname">\r\n		<div class="formControlLabel">{FullName:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{FullName:body}<span class="formValidation">{FullName:validation}</span></div>\r\n		<p class="formDescription">{FullName:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-email">\r\n		<div class="formControlLabel">{Email:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Email:body}<span class="formValidation">{Email:validation}</span></div>\r\n		<p class="formDescription">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-page1">\r\n		<div class="formControlLabel">&nbsp;</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Page1:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_1">\r\n	<div class="rsform-block rsform-block-companyheader">\r\n		<div class="formControlLabel">{CompanyHeader:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{CompanyHeader:body}<span class="formValidation">{CompanyHeader:validation}</span></div>\r\n		<p class="formDescription">{CompanyHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-companysize">\r\n		<div class="formControlLabel">{CompanySize:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{CompanySize:body}<span class="formValidation">{CompanySize:validation}</span></div>\r\n		<p class="formDescription">{CompanySize:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-position">\r\n		<div class="formControlLabel">{Position:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Position:body}<span class="formValidation">{Position:validation}</span></div>\r\n		<p class="formDescription">{Position:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-page2">\r\n		<div class="formControlLabel">&nbsp;</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Page2:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class="formHorizontal formContainer" id="rsform_2_page_2">\r\n	<div class="rsform-block rsform-block-contactheader">\r\n		<div class="formControlLabel">{ContactHeader:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactHeader:body}<span class="formValidation">{ContactHeader:validation}</span></div>\r\n		<p class="formDescription">{ContactHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-contactby">\r\n		<div class="formControlLabel">{ContactBy:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactBy:body}<span class="formValidation">{ContactBy:validation}</span></div>\r\n		<p class="formDescription">{ContactBy:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-contactwhen">\r\n		<div class="formControlLabel">{ContactWhen:caption}<strong class="formRequired">(*)</strong></div>\r\n		<div class="formControls">\r\n		<div class="formBody">{ContactWhen:body}<span class="formValidation">{ContactWhen:validation}</span></div>\r\n		<p class="formDescription">{ContactWhen:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-submit">\r\n		<div class="formControlLabel">{Submit:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Submit:body}<span class="formValidation">{Submit:validation}</span></div>\r\n		<p class="formDescription">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class="rsform-block rsform-block-footer">\r\n		<div class="formControlLabel">{Footer:caption}</div>\r\n		<div class="formControls">\r\n		<div class="formBody">{Footer:body}<span class="formValidation">{Footer:validation}</span></div>\r\n		<p class="formDescription">{Footer:description}</p>\r\n		</div>\r\n	</div>\r\n</fieldset>\r\n', 'responsive', 1, 1, 0, 0, '', '', 'RSForm! Pro Multipage example', 1, 1, '', '', 1, 0, 0, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', '{global:mailfrom}', '', '{global:fromname}', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{global:mailfrom}', '{Email:value}', '{FullName:value}', 'Contact request', 1, '', '', '', '', '', '', 0, 'This is the meta description of your form. You can use it for SEO purposes.', 'rsform, contact, form, joomla', '(*)', '<p class="formRed">Please complete all required fields!</p>', ', ', 1, '', 'userForm', '', '', '', 0, 0, '', 1, 1, 0, 0, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 AUTO_INCREMENT=149 ;

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
INSERT INTO `aj14x_rsform_properties` VALUES (13, 3, 'NAME', 'Email');
INSERT INTO `aj14x_rsform_properties` VALUES (14, 3, 'CAPTION', 'E-mail');
INSERT INTO `aj14x_rsform_properties` VALUES (15, 3, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (16, 3, 'SIZE', '20');
INSERT INTO `aj14x_rsform_properties` VALUES (17, 3, 'MAXSIZE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (18, 3, 'VALIDATIONRULE', 'email');
INSERT INTO `aj14x_rsform_properties` VALUES (19, 3, 'VALIDATIONMESSAGE', 'Invalid email address.');
INSERT INTO `aj14x_rsform_properties` VALUES (20, 3, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (21, 3, 'DEFAULTVALUE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (22, 3, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (23, 4, 'NAME', 'CompanySize');
INSERT INTO `aj14x_rsform_properties` VALUES (24, 4, 'CAPTION', 'Number of Employees');
INSERT INTO `aj14x_rsform_properties` VALUES (25, 4, 'SIZE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (26, 4, 'MULTIPLE', 'NO');
INSERT INTO `aj14x_rsform_properties` VALUES (27, 4, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100');
INSERT INTO `aj14x_rsform_properties` VALUES (28, 4, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (29, 4, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (30, 4, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (31, 4, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.');
INSERT INTO `aj14x_rsform_properties` VALUES (32, 5, 'NAME', 'Position');
INSERT INTO `aj14x_rsform_properties` VALUES (33, 5, 'CAPTION', 'Position');
INSERT INTO `aj14x_rsform_properties` VALUES (34, 5, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]');
INSERT INTO `aj14x_rsform_properties` VALUES (35, 5, 'FLOW', 'HORIZONTAL');
INSERT INTO `aj14x_rsform_properties` VALUES (36, 5, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (37, 5, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (38, 5, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (39, 5, 'VALIDATIONMESSAGE', 'Please specify your position in the company');
INSERT INTO `aj14x_rsform_properties` VALUES (40, 6, 'NAME', 'ContactBy');
INSERT INTO `aj14x_rsform_properties` VALUES (41, 6, 'CAPTION', 'How should we contact you?');
INSERT INTO `aj14x_rsform_properties` VALUES (42, 6, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail');
INSERT INTO `aj14x_rsform_properties` VALUES (43, 6, 'FLOW', 'HORIZONTAL');
INSERT INTO `aj14x_rsform_properties` VALUES (44, 6, 'REQUIRED', 'NO');
INSERT INTO `aj14x_rsform_properties` VALUES (45, 6, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (46, 6, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (47, 6, 'VALIDATIONMESSAGE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (48, 7, 'NAME', 'ContactWhen');
INSERT INTO `aj14x_rsform_properties` VALUES (49, 7, 'CAPTION', 'When would you like to be contacted?');
INSERT INTO `aj14x_rsform_properties` VALUES (50, 7, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (51, 7, 'DATEFORMAT', 'dd.mm.yyyy');
INSERT INTO `aj14x_rsform_properties` VALUES (52, 7, 'CALENDARLAYOUT', 'POPUP');
INSERT INTO `aj14x_rsform_properties` VALUES (53, 7, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (54, 7, 'READONLY', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (55, 7, 'POPUPLABEL', '...');
INSERT INTO `aj14x_rsform_properties` VALUES (56, 7, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (57, 7, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.');
INSERT INTO `aj14x_rsform_properties` VALUES (58, 8, 'NAME', 'Submit');
INSERT INTO `aj14x_rsform_properties` VALUES (59, 8, 'LABEL', 'Submit');
INSERT INTO `aj14x_rsform_properties` VALUES (60, 8, 'CAPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (61, 8, 'RESET', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (62, 8, 'RESETLABEL', 'Reset');
INSERT INTO `aj14x_rsform_properties` VALUES (63, 8, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (64, 9, 'NAME', 'Footer');
INSERT INTO `aj14x_rsform_properties` VALUES (65, 9, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>');
INSERT INTO `aj14x_rsform_properties` VALUES (66, 10, 'NAME', 'FullName');
INSERT INTO `aj14x_rsform_properties` VALUES (67, 10, 'CAPTION', 'Full Name');
INSERT INTO `aj14x_rsform_properties` VALUES (68, 10, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (69, 10, 'SIZE', '20');
INSERT INTO `aj14x_rsform_properties` VALUES (70, 10, 'MAXSIZE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (71, 10, 'VALIDATIONRULE', 'none');
INSERT INTO `aj14x_rsform_properties` VALUES (72, 10, 'VALIDATIONMESSAGE', 'Please type your full name.');
INSERT INTO `aj14x_rsform_properties` VALUES (73, 10, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (74, 10, 'DEFAULTVALUE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (75, 10, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (76, 10, 'VALIDATIONEXTRA', '');
INSERT INTO `aj14x_rsform_properties` VALUES (77, 11, 'NAME', 'Header');
INSERT INTO `aj14x_rsform_properties` VALUES (78, 11, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.');
INSERT INTO `aj14x_rsform_properties` VALUES (79, 12, 'NAME', 'Email');
INSERT INTO `aj14x_rsform_properties` VALUES (80, 12, 'CAPTION', 'E-mail');
INSERT INTO `aj14x_rsform_properties` VALUES (81, 12, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (82, 12, 'SIZE', '20');
INSERT INTO `aj14x_rsform_properties` VALUES (83, 12, 'MAXSIZE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (84, 12, 'VALIDATIONRULE', 'email');
INSERT INTO `aj14x_rsform_properties` VALUES (85, 12, 'VALIDATIONMESSAGE', 'Invalid email address.');
INSERT INTO `aj14x_rsform_properties` VALUES (86, 12, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (87, 12, 'DEFAULTVALUE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (88, 12, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (89, 12, 'VALIDATIONEXTRA', '');
INSERT INTO `aj14x_rsform_properties` VALUES (90, 13, 'NAME', 'CompanySize');
INSERT INTO `aj14x_rsform_properties` VALUES (91, 13, 'CAPTION', 'Number of Employees');
INSERT INTO `aj14x_rsform_properties` VALUES (92, 13, 'SIZE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (93, 13, 'MULTIPLE', 'NO');
INSERT INTO `aj14x_rsform_properties` VALUES (94, 13, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100');
INSERT INTO `aj14x_rsform_properties` VALUES (95, 13, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (96, 13, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (97, 13, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (98, 13, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.');
INSERT INTO `aj14x_rsform_properties` VALUES (99, 14, 'NAME', 'Position');
INSERT INTO `aj14x_rsform_properties` VALUES (100, 14, 'CAPTION', 'Position');
INSERT INTO `aj14x_rsform_properties` VALUES (101, 14, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]');
INSERT INTO `aj14x_rsform_properties` VALUES (102, 14, 'FLOW', 'HORIZONTAL');
INSERT INTO `aj14x_rsform_properties` VALUES (103, 14, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (104, 14, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (105, 14, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (106, 14, 'VALIDATIONMESSAGE', 'Please specify your position in the company');
INSERT INTO `aj14x_rsform_properties` VALUES (107, 15, 'NAME', 'ContactBy');
INSERT INTO `aj14x_rsform_properties` VALUES (108, 15, 'CAPTION', 'How should we contact you?');
INSERT INTO `aj14x_rsform_properties` VALUES (109, 15, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail');
INSERT INTO `aj14x_rsform_properties` VALUES (110, 15, 'FLOW', 'HORIZONTAL');
INSERT INTO `aj14x_rsform_properties` VALUES (111, 15, 'REQUIRED', 'NO');
INSERT INTO `aj14x_rsform_properties` VALUES (112, 15, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (113, 15, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (114, 15, 'VALIDATIONMESSAGE', '');
INSERT INTO `aj14x_rsform_properties` VALUES (115, 16, 'NAME', 'ContactWhen');
INSERT INTO `aj14x_rsform_properties` VALUES (116, 16, 'CAPTION', 'When would you like to be contacted?');
INSERT INTO `aj14x_rsform_properties` VALUES (117, 16, 'REQUIRED', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (118, 16, 'DATEFORMAT', 'dd.mm.yyyy');
INSERT INTO `aj14x_rsform_properties` VALUES (119, 16, 'CALENDARLAYOUT', 'POPUP');
INSERT INTO `aj14x_rsform_properties` VALUES (120, 16, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (121, 16, 'READONLY', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (122, 16, 'POPUPLABEL', '...');
INSERT INTO `aj14x_rsform_properties` VALUES (123, 16, 'DESCRIPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (124, 16, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.');
INSERT INTO `aj14x_rsform_properties` VALUES (125, 17, 'NAME', 'Submit');
INSERT INTO `aj14x_rsform_properties` VALUES (126, 17, 'LABEL', 'Submit');
INSERT INTO `aj14x_rsform_properties` VALUES (127, 17, 'CAPTION', '');
INSERT INTO `aj14x_rsform_properties` VALUES (128, 17, 'RESET', 'YES');
INSERT INTO `aj14x_rsform_properties` VALUES (129, 17, 'RESETLABEL', 'Reset');
INSERT INTO `aj14x_rsform_properties` VALUES (130, 17, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (131, 17, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>');
INSERT INTO `aj14x_rsform_properties` VALUES (132, 17, 'PREVBUTTON', '< Prev');
INSERT INTO `aj14x_rsform_properties` VALUES (133, 18, 'NAME', 'Footer');
INSERT INTO `aj14x_rsform_properties` VALUES (134, 18, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>');
INSERT INTO `aj14x_rsform_properties` VALUES (135, 19, 'NAME', 'Page1');
INSERT INTO `aj14x_rsform_properties` VALUES (136, 19, 'NEXTBUTTON', 'Next >');
INSERT INTO `aj14x_rsform_properties` VALUES (137, 19, 'PREVBUTTON', '< Prev');
INSERT INTO `aj14x_rsform_properties` VALUES (138, 19, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>');
INSERT INTO `aj14x_rsform_properties` VALUES (139, 19, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (140, 20, 'NAME', 'Page2');
INSERT INTO `aj14x_rsform_properties` VALUES (141, 20, 'NEXTBUTTON', 'Next >');
INSERT INTO `aj14x_rsform_properties` VALUES (142, 20, 'PREVBUTTON', '< Prev');
INSERT INTO `aj14x_rsform_properties` VALUES (143, 20, 'DISPLAYPROGRESSMSG', '<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class="rsformProgressContainer">\r\n  <div class="rsformProgressBar" style="width: {percent}%;"></div>\r\n </div>\r\n</div>');
INSERT INTO `aj14x_rsform_properties` VALUES (144, 20, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `aj14x_rsform_properties` VALUES (145, 21, 'NAME', 'CompanyHeader');
INSERT INTO `aj14x_rsform_properties` VALUES (146, 21, 'TEXT', 'Please tell us a little about your company.');
INSERT INTO `aj14x_rsform_properties` VALUES (147, 22, 'NAME', 'ContactHeader');
INSERT INTO `aj14x_rsform_properties` VALUES (148, 22, 'TEXT', 'Please let us know how and when to contact you.');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_submission_values`
-- 


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_submissions`
-- 


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_rsform_translations`
-- 


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

INSERT INTO `aj14x_session` VALUES ('da2eba7adb0dcbdce3cf7233ccf609f3', 1, 0, '1505672064', 'joomla|s:1536:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozNjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MDU2NzE3Njc7czo0OiJsYXN0IjtpOjE1MDU2NzIwNjI7czozOiJub3ciO2k6MTUwNTY3MjA2Mjt9czo1OiJ0b2tlbiI7czozMjoiMzRWZXhhOHV6WHI4YkdJSnAwSnN0N2UzeHNuSzdGS0wiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6NDp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjtzOjc6Imluc3RhbGwiO086ODoic3RkQ2xhc3MiOjE6e3M6MTc6Imluc3RhbGxfZGlyZWN0b3J5IjtzOjkyOiIvaGVybWVzL2Jvc25hY3dlYjAyL2Jvc25hY3dlYjAyYXAvYjQwNy9pcGcubW9kZWxhZ2VuY3lwZWdhc3VzY28vYWdlbnR1cmFfcGVnYXN1cy9raWxlcmlzL3RtcCI7fXM6MTI6InJlZGlyZWN0X3VybCI7Tjt9czoxMzoiY29tX3RlbXBsYXRlcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InN0eWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX19czoxMToiY29tX2NvbnRlbnQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJhcnRpY2xlIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czozOiIyOTAiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9czoyOiJUMyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJ0M2xvY2siO047fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 290, 'virgis');
INSERT INTO `aj14x_session` VALUES ('f4d2c7c29c17fb23431438a418b44bc6', 0, 1, '1505672013', 'joomla|s:716:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MDU2Njk5NTI7czo0OiJsYXN0IjtpOjE1MDU2NzE5Nzk7czozOiJub3ciO2k6MTUwNTY3MjAxMjt9czo1OiJ0b2tlbiI7czozMjoiaHZlQlZzSDNOaWRiYWVOSU9SZEp6aTlUalVIcVBzZ1oiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, '');

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
INSERT INTO `aj14x_template_styles` VALUES (9, 'purity_iii', 0, '1', 'purity_III - Numatytasis', '{"tpl_article_info_datetime_format":"d M Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"1","responsive":"1","non_responsive_width":"970px","build_rtl":"1","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"1","minify_js":"1","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"red","logotype":"image","sitename":"","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"blog","sublayout":"","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"","navigation_animation_duration":"400","mm_config":"","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0"}');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_ucm_history`
-- 


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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites' AUTO_INCREMENT=10 ;

-- 
-- Sukurta duomenų kopija lentelei `aj14x_update_sites`
-- 

INSERT INTO `aj14x_update_sites` VALUES (1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1505672055, '');
INSERT INTO `aj14x_update_sites` VALUES (2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, '');
INSERT INTO `aj14x_update_sites` VALUES (3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');
INSERT INTO `aj14x_update_sites` VALUES (4, 'WebInstaller Update Site', 'extension', 'https://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 0, '');
INSERT INTO `aj14x_update_sites` VALUES (5, 'RSForm! Pro', 'extension', 'https://www.rsjoomla.com/updates/com_rsform/Component/com_rsform.xml', 1, 1505672055, '');
INSERT INTO `aj14x_update_sites` VALUES (6, '', 'extension', 'http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml', 1, 1505672056, '');
INSERT INTO `aj14x_update_sites` VALUES (7, 'JA Extension Manager', 'extension', 'http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml', 1, 1505672056, '');
INSERT INTO `aj14x_update_sites` VALUES (8, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 1, 1505672058, '');
INSERT INTO `aj14x_update_sites` VALUES (9, '', 'extension', 'http://update.joomlart.com/service/tracking/j31/purity_iii.xml', 1, 1505672058, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates' AUTO_INCREMENT=341 ;

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

INSERT INTO `aj14x_users` VALUES (290, 'Super User', 'virgis', 'virgismankus@gmail.com', '$2y$10$BON4klVsa4uyRKHcRMjGpuBTch80AIRyX6CroZE5lgTU8/XJbMjAG', 0, 1, '2017-09-17 17:38:08', '2017-09-17 18:09:31', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

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
