-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-01-21 14:34:25','2021-01-21 14:34:25','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://examenopdracht.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://examenopdracht.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','ExamenOpdracht','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','s108491@ap.be','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:159:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"graphql/?$\";s:22:\"index.php?graphql=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"action_monitor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"action_monitor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"action_monitor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"action_monitor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"action_monitor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"action_monitor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"action_monitor/([^/]+)/embed/?$\";s:47:\"index.php?action_monitor=$matches[1]&embed=true\";s:35:\"action_monitor/([^/]+)/trackback/?$\";s:41:\"index.php?action_monitor=$matches[1]&tb=1\";s:43:\"action_monitor/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?action_monitor=$matches[1]&paged=$matches[2]\";s:50:\"action_monitor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?action_monitor=$matches[1]&cpage=$matches[2]\";s:39:\"action_monitor/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?action_monitor=$matches[1]&page=$matches[2]\";s:31:\"action_monitor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"action_monitor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"action_monitor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"action_monitor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"action_monitor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"action_monitor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:68:\"gatsby_action_ref_node_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?gatsby_action_ref_node_type=$matches[1]&feed=$matches[2]\";s:63:\"gatsby_action_ref_node_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?gatsby_action_ref_node_type=$matches[1]&feed=$matches[2]\";s:44:\"gatsby_action_ref_node_type/([^/]+)/embed/?$\";s:60:\"index.php?gatsby_action_ref_node_type=$matches[1]&embed=true\";s:56:\"gatsby_action_ref_node_type/([^/]+)/page/?([0-9]{1,})/?$\";s:67:\"index.php?gatsby_action_ref_node_type=$matches[1]&paged=$matches[2]\";s:38:\"gatsby_action_ref_node_type/([^/]+)/?$\";s:49:\"index.php?gatsby_action_ref_node_type=$matches[1]\";s:68:\"gatsby_action_ref_node_dbid/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?gatsby_action_ref_node_dbid=$matches[1]&feed=$matches[2]\";s:63:\"gatsby_action_ref_node_dbid/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?gatsby_action_ref_node_dbid=$matches[1]&feed=$matches[2]\";s:44:\"gatsby_action_ref_node_dbid/([^/]+)/embed/?$\";s:60:\"index.php?gatsby_action_ref_node_dbid=$matches[1]&embed=true\";s:56:\"gatsby_action_ref_node_dbid/([^/]+)/page/?([0-9]{1,})/?$\";s:67:\"index.php?gatsby_action_ref_node_dbid=$matches[1]&paged=$matches[2]\";s:38:\"gatsby_action_ref_node_dbid/([^/]+)/?$\";s:49:\"index.php?gatsby_action_ref_node_dbid=$matches[1]\";s:66:\"gatsby_action_ref_node_id/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?gatsby_action_ref_node_id=$matches[1]&feed=$matches[2]\";s:61:\"gatsby_action_ref_node_id/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?gatsby_action_ref_node_id=$matches[1]&feed=$matches[2]\";s:42:\"gatsby_action_ref_node_id/([^/]+)/embed/?$\";s:58:\"index.php?gatsby_action_ref_node_id=$matches[1]&embed=true\";s:54:\"gatsby_action_ref_node_id/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?gatsby_action_ref_node_id=$matches[1]&paged=$matches[2]\";s:36:\"gatsby_action_ref_node_id/([^/]+)/?$\";s:47:\"index.php?gatsby_action_ref_node_id=$matches[1]\";s:59:\"gatsby_action_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?gatsby_action_type=$matches[1]&feed=$matches[2]\";s:54:\"gatsby_action_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?gatsby_action_type=$matches[1]&feed=$matches[2]\";s:35:\"gatsby_action_type/([^/]+)/embed/?$\";s:51:\"index.php?gatsby_action_type=$matches[1]&embed=true\";s:47:\"gatsby_action_type/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?gatsby_action_type=$matches[1]&paged=$matches[2]\";s:29:\"gatsby_action_type/([^/]+)/?$\";s:40:\"index.php?gatsby_action_type=$matches[1]\";s:66:\"gatsby_action_stream_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?gatsby_action_stream_type=$matches[1]&feed=$matches[2]\";s:61:\"gatsby_action_stream_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?gatsby_action_stream_type=$matches[1]&feed=$matches[2]\";s:42:\"gatsby_action_stream_type/([^/]+)/embed/?$\";s:58:\"index.php?gatsby_action_stream_type=$matches[1]&embed=true\";s:54:\"gatsby_action_stream_type/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?gatsby_action_stream_type=$matches[1]&paged=$matches[2]\";s:36:\"gatsby_action_stream_type/([^/]+)/?$\";s:47:\"index.php?gatsby_action_stream_type=$matches[1]\";s:33:\"films/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"films/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"films/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"films/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"films/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"films/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"films/([^/]+)/embed/?$\";s:38:\"index.php?films=$matches[1]&embed=true\";s:26:\"films/([^/]+)/trackback/?$\";s:32:\"index.php?films=$matches[1]&tb=1\";s:34:\"films/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?films=$matches[1]&paged=$matches[2]\";s:41:\"films/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?films=$matches[1]&cpage=$matches[2]\";s:30:\"films/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?films=$matches[1]&page=$matches[2]\";s:22:\"films/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"films/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"films/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"films/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"films/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"films/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"role/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?role=$matches[1]&feed=$matches[2]\";s:40:\"role/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?role=$matches[1]&feed=$matches[2]\";s:21:\"role/([^/]+)/embed/?$\";s:37:\"index.php?role=$matches[1]&embed=true\";s:33:\"role/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?role=$matches[1]&paged=$matches[2]\";s:15:\"role/([^/]+)/?$\";s:26:\"index.php?role=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:23:\"wp-gatsby/wp-gatsby.php\";i:2;s:34:\"wp-graphiql-master/wp-graphiql.php\";i:3;s:41:\"wp-graphql-acf-develop/wp-graphql-acf.php\";i:4;s:33:\"wp-graphql-develop/wp-graphql.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','twentytwenty','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','twentytwenty-child','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','2','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1626791664','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:7:{i:1611509666;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1611542066;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1611585266;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611586278;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611586286;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611930866;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key',')c3vo^+Y_%,YYE7}Eb3V1;kE(+<gG{?#/;7wL}4~y5J(3u(_5kl$vo-ML]hU1JL`','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt',')jxwI4]J>CR3~M;,,.JcnW:km;n|ituu|<x4zb`/[LezSUg^h*Aj1e>)R!8kSuta','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1611504231;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1611845486','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (134,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (135,'theme_mods_twentytwentyone','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1611240725;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (136,'current_theme','Twenty Twenty Child','yes');
INSERT INTO `wp_options` VALUES (137,'theme_mods_twentytwenty-child','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"mobile\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (138,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (141,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (142,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1611498923;s:7:\"checked\";a:2:{s:18:\"twentytwenty-child\";s:5:\"1.0.0\";s:12:\"twentytwenty\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (147,'_site_transient_timeout_browser_94fb6483abf307a4bafac80827dcc22a','1611918665','no');
INSERT INTO `wp_options` VALUES (148,'_site_transient_browser_94fb6483abf307a4bafac80827dcc22a','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"87.0.4280.141\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (161,'recently_activated','a:2:{s:33:\"wp-graphql-acf/wp-graphql-acf.php\";i:1611331787;s:27:\"wp-graphiql/wp-graphiql.php\";i:1611331785;}','yes');
INSERT INTO `wp_options` VALUES (166,'acf_version','5.9.4','yes');
INSERT INTO `wp_options` VALUES (172,'_transient_health-check-site-status-result','{\"good\":\"14\",\"recommended\":\"4\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (184,'wp_graphql_version','1.1.2','yes');
INSERT INTO `wp_options` VALUES (185,'graphql_general_settings','','yes');
INSERT INTO `wp_options` VALUES (190,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (216,'wpgatsby_settings','a:1:{s:18:\"preview_jwt_secret\";s:50:\"RHkcG4Wkk2C7hr+znMCUnUTRnuZb3KzCP/x9A8uNwetmgS0tS9\";}','yes');
INSERT INTO `wp_options` VALUES (217,'_gatsby_tracked_post_types','a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";i:3;s:5:\"films\";}','yes');
INSERT INTO `wp_options` VALUES (218,'_gatsby_tracked_taxonomies','a:4:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";i:3;s:4:\"role\";}','yes');
INSERT INTO `wp_options` VALUES (219,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (235,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1611524863','no');
INSERT INTO `wp_options` VALUES (236,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>','no');
INSERT INTO `wp_options` VALUES (244,'_site_transient_timeout_theme_roots','1611500723','no');
INSERT INTO `wp_options` VALUES (245,'_site_transient_theme_roots','a:2:{s:18:\"twentytwenty-child\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (246,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1611498924;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.4\";s:23:\"wp-gatsby/wp-gatsby.php\";s:5:\"0.9.2\";s:34:\"wp-graphiql-master/wp-graphiql.php\";s:5:\"1.0.1\";s:33:\"wp-graphql-develop/wp-graphql.php\";s:5:\"1.1.2\";s:41:\"wp-graphql-acf-develop/wp-graphql-acf.php\";s:5:\"0.4.1\";}s:8:\"response\";a:1:{s:33:\"wp-graphql-develop/wp-graphql.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/wp-graphql\";s:4:\"slug\";s:10:\"wp-graphql\";s:6:\"plugin\";s:33:\"wp-graphql-develop/wp-graphql.php\";s:11:\"new_version\";s:5:\"1.1.3\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-graphql/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-graphql.1.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-graphql/assets/icon-256x256.png?rev=2418712\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-graphql/assets/icon-128x128.png?rev=2418712\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-graphql/assets/banner-1544x500.png?rev=2418712\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-graphql/assets/banner-772x250.png?rev=2418712\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"wp-gatsby/wp-gatsby.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/wp-gatsby\";s:4:\"slug\";s:9:\"wp-gatsby\";s:6:\"plugin\";s:23:\"wp-gatsby/wp-gatsby.php\";s:11:\"new_version\";s:5:\"0.9.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wp-gatsby/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wp-gatsby.0.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/wp-gatsby/assets/icon-256x256.png?rev=2336725\";s:2:\"1x\";s:62:\"https://ps.w.org/wp-gatsby/assets/icon-128x128.png?rev=2336725\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (250,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1611548936','no');
INSERT INTO `wp_options` VALUES (251,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:3:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:75:\"Discussion group: Getting Started in eCommerce: From Idea to First Customer\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/275746514/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-01-25 07:00:00\";s:8:\"end_date\";s:19:\"2021-01-25 08:00:00\";s:20:\"start_unix_timestamp\";i:1611586800;s:18:\"end_unix_timestamp\";i:1611590400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297003;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp India (Online)\";s:3:\"url\";s:32:\"https://india.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-01-30 00:00:00\";s:8:\"end_date\";s:19:\"2021-02-14 00:00:00\";s:20:\"start_unix_timestamp\";i:1611945000;s:18:\"end_unix_timestamp\";i:1613241000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:20.593684;s:9:\"longitude\";d:78.962879999999998;}}i:2;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:40:\"WPNL.Live 2021! door WordPress Nederland\";s:3:\"url\";s:67:\"https://www.meetup.com/Rotterdam-WordPress-Meetup/events/275903867/\";s:6:\"meetup\";s:20:\"WordPress Meetup 010\";s:10:\"meetup_url\";s:50:\"https://www.meetup.com/Rotterdam-WordPress-Meetup/\";s:4:\"date\";s:19:\"2021-01-28 15:00:00\";s:8:\"end_date\";s:19:\"2021-01-28 17:00:00\";s:20:\"start_unix_timestamp\";i:1611842400;s:18:\"end_unix_timestamp\";i:1611849600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"NL\";s:8:\"latitude\";d:51.930000305176002;s:9:\"longitude\";d:4.4800000190734997;}}}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (4,5,'_edit_lock','1611492192:1');
INSERT INTO `wp_postmeta` VALUES (5,1,'_edit_lock','1611417151:1');
INSERT INTO `wp_postmeta` VALUES (6,2,'_edit_lock','1611496725:1');
INSERT INTO `wp_postmeta` VALUES (7,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (8,7,'_edit_lock','1611424261:1');
INSERT INTO `wp_postmeta` VALUES (9,2,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (10,2,'banner_image','47');
INSERT INTO `wp_postmeta` VALUES (11,2,'_banner_image','field_600abb7dd7dc1');
INSERT INTO `wp_postmeta` VALUES (12,2,'title','Film review');
INSERT INTO `wp_postmeta` VALUES (13,2,'_title','field_600abbf2d7dc2');
INSERT INTO `wp_postmeta` VALUES (14,2,'description','Op deze website gaan we alle nieuwe films maar ook oude films beoordelen.');
INSERT INTO `wp_postmeta` VALUES (15,2,'_description','field_600abbfbd7dc3');
INSERT INTO `wp_postmeta` VALUES (16,2,'featured_product','');
INSERT INTO `wp_postmeta` VALUES (17,2,'_featured_product','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (18,12,'banner_image','');
INSERT INTO `wp_postmeta` VALUES (19,12,'_banner_image','field_600abb7dd7dc1');
INSERT INTO `wp_postmeta` VALUES (20,12,'title','');
INSERT INTO `wp_postmeta` VALUES (21,12,'_title','field_600abbf2d7dc2');
INSERT INTO `wp_postmeta` VALUES (22,12,'description','');
INSERT INTO `wp_postmeta` VALUES (23,12,'_description','field_600abbfbd7dc3');
INSERT INTO `wp_postmeta` VALUES (24,12,'featured_product','');
INSERT INTO `wp_postmeta` VALUES (25,12,'_featured_product','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (26,13,'_edit_lock','1611486820:1');
INSERT INTO `wp_postmeta` VALUES (27,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (28,15,'_edit_lock','1611420476:1');
INSERT INTO `wp_postmeta` VALUES (29,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (30,18,'_edit_lock','1611482162:1');
INSERT INTO `wp_postmeta` VALUES (31,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (32,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (33,20,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (34,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (35,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (36,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (37,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (38,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (39,20,'_menu_item_orphaned','1611331297');
INSERT INTO `wp_postmeta` VALUES (40,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (41,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (42,21,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (43,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (44,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (45,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (46,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (47,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (48,21,'_menu_item_orphaned','1611331297');
INSERT INTO `wp_postmeta` VALUES (59,32,'_wp_attached_file','2021/01/HungerGames.jpg');
INSERT INTO `wp_postmeta` VALUES (60,32,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:550;s:6:\"height\";i:776;s:4:\"file\";s:23:\"2021/01/HungerGames.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"HungerGames-213x300.jpg\";s:5:\"width\";i:213;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"HungerGames-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (61,32,'_wp_attachment_image_alt','the hunger games');
INSERT INTO `wp_postmeta` VALUES (62,5,'image','32');
INSERT INTO `wp_postmeta` VALUES (63,5,'_image','field_600af64568eb0');
INSERT INTO `wp_postmeta` VALUES (64,5,'title','The Hunger Games');
INSERT INTO `wp_postmeta` VALUES (65,5,'_title','field_600af716a44ff');
INSERT INTO `wp_postmeta` VALUES (66,5,'regiseur','Gary Ross en Francis Lawrence');
INSERT INTO `wp_postmeta` VALUES (67,5,'_regiseur','field_600af723a4500');
INSERT INTO `wp_postmeta` VALUES (68,5,'description','In een angstaanjagende toekomst worden de tieners Katniss en Peeta gevraagd voor een tv-programma waarin jonge concurrenten een gevecht op leven en dood moeten voeren. Gebaseerd op The Hunger Games trilogie van Suzanne Collins.');
INSERT INTO `wp_postmeta` VALUES (69,5,'_description','field_600af75298f1d');
INSERT INTO `wp_postmeta` VALUES (70,5,'review','7.5');
INSERT INTO `wp_postmeta` VALUES (71,5,'_review','field_600af76c98f1e');
INSERT INTO `wp_postmeta` VALUES (72,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (73,33,'_edit_lock','1611506965:1');
INSERT INTO `wp_postmeta` VALUES (74,34,'_wp_attached_file','2021/01/AmericanSniper.jpg');
INSERT INTO `wp_postmeta` VALUES (75,34,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:26:\"2021/01/AmericanSniper.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"AmericanSniper-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"AmericanSniper-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"AmericanSniper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"AmericanSniper-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"AmericanSniper-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:28:\"AmericanSniper-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"AmericanSniper-1200x1600.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (76,34,'_wp_attachment_image_alt','american sniper');
INSERT INTO `wp_postmeta` VALUES (77,33,'image','75');
INSERT INTO `wp_postmeta` VALUES (78,33,'_image','field_600af64568eb0');
INSERT INTO `wp_postmeta` VALUES (79,33,'title','American Sniper');
INSERT INTO `wp_postmeta` VALUES (80,33,'_title','field_600af716a44ff');
INSERT INTO `wp_postmeta` VALUES (81,33,'regiseur','Clint Eastwood');
INSERT INTO `wp_postmeta` VALUES (82,33,'_regiseur','field_600af723a4500');
INSERT INTO `wp_postmeta` VALUES (83,33,'description','De Navy SEAL-scherpschutter Chris Kyle voert in Irak een ongeêvenaard aantal succesvolle missies uit,zelfs als hij de greep verlieest op zijn leven thuis. Gebaseerd op het echte leven en op dememoires uit 2012 van de Amerikaanse Navy SEAL Chris Kyle.');
INSERT INTO `wp_postmeta` VALUES (84,33,'_description','field_600af75298f1d');
INSERT INTO `wp_postmeta` VALUES (85,33,'review','7');
INSERT INTO `wp_postmeta` VALUES (86,33,'_review','field_600af76c98f1e');
INSERT INTO `wp_postmeta` VALUES (87,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (88,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (89,35,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (90,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (91,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (92,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (93,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (94,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (105,37,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (106,37,'referenced_node_single_name','menu');
INSERT INTO `wp_postmeta` VALUES (107,37,'referenced_node_plural_name','menus');
INSERT INTO `wp_postmeta` VALUES (108,38,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (109,38,'referenced_node_single_name','menuItem');
INSERT INTO `wp_postmeta` VALUES (110,38,'referenced_node_plural_name','menuItems');
INSERT INTO `wp_postmeta` VALUES (111,39,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (112,39,'referenced_node_single_name','menuItem');
INSERT INTO `wp_postmeta` VALUES (113,39,'referenced_node_plural_name','menuItems');
INSERT INTO `wp_postmeta` VALUES (114,40,'referenced_node_status','none');
INSERT INTO `wp_postmeta` VALUES (115,40,'referenced_node_single_name','none');
INSERT INTO `wp_postmeta` VALUES (116,40,'referenced_node_plural_name','none');
INSERT INTO `wp_postmeta` VALUES (117,41,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (118,41,'referenced_node_single_name','page');
INSERT INTO `wp_postmeta` VALUES (119,41,'referenced_node_plural_name','pages');
INSERT INTO `wp_postmeta` VALUES (129,43,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (130,43,'referenced_node_single_name','menuItem');
INSERT INTO `wp_postmeta` VALUES (131,43,'referenced_node_plural_name','menuItems');
INSERT INTO `wp_postmeta` VALUES (132,44,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (133,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (134,44,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (135,44,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (136,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (137,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (138,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (139,44,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (141,45,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (142,45,'referenced_node_single_name','menuItem');
INSERT INTO `wp_postmeta` VALUES (143,45,'referenced_node_plural_name','menuItems');
INSERT INTO `wp_postmeta` VALUES (144,46,'referenced_node_status','update_non_node_root_field');
INSERT INTO `wp_postmeta` VALUES (145,46,'referenced_node_single_name','updateNonNodeRootField');
INSERT INTO `wp_postmeta` VALUES (146,46,'referenced_node_plural_name','updateNonNodeRootField');
INSERT INTO `wp_postmeta` VALUES (147,47,'_wp_attached_file','2021/01/HomepageBanner.jpg');
INSERT INTO `wp_postmeta` VALUES (148,48,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (149,48,'referenced_node_single_name','mediaItem');
INSERT INTO `wp_postmeta` VALUES (150,48,'referenced_node_plural_name','mediaItems');
INSERT INTO `wp_postmeta` VALUES (151,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:763;s:6:\"height\";i:431;s:4:\"file\";s:26:\"2021/01/HomepageBanner.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"HomepageBanner-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"HomepageBanner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (152,47,'_wp_attachment_image_alt','banner cinema');
INSERT INTO `wp_postmeta` VALUES (153,2,'featured_film','a:2:{i:0;s:2:\"33\";i:1;s:2:\"56\";}');
INSERT INTO `wp_postmeta` VALUES (154,2,'_featured_film','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (155,49,'banner_image','47');
INSERT INTO `wp_postmeta` VALUES (156,49,'_banner_image','field_600abb7dd7dc1');
INSERT INTO `wp_postmeta` VALUES (157,49,'title','Film review');
INSERT INTO `wp_postmeta` VALUES (158,49,'_title','field_600abbf2d7dc2');
INSERT INTO `wp_postmeta` VALUES (159,49,'description','Op deze website gaan we alle nieuwe films maar ook oude films beoordelen.');
INSERT INTO `wp_postmeta` VALUES (160,49,'_description','field_600abbfbd7dc3');
INSERT INTO `wp_postmeta` VALUES (161,49,'featured_product','');
INSERT INTO `wp_postmeta` VALUES (162,49,'_featured_product','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (163,49,'featured_film','1');
INSERT INTO `wp_postmeta` VALUES (164,49,'_featured_film','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (165,50,'banner_image','47');
INSERT INTO `wp_postmeta` VALUES (166,50,'_banner_image','field_600abb7dd7dc1');
INSERT INTO `wp_postmeta` VALUES (167,50,'title','Film review');
INSERT INTO `wp_postmeta` VALUES (168,50,'_title','field_600abbf2d7dc2');
INSERT INTO `wp_postmeta` VALUES (169,50,'description','Op deze website gaan we alle nieuwe films maar ook oude films beoordelen.');
INSERT INTO `wp_postmeta` VALUES (170,50,'_description','field_600abbfbd7dc3');
INSERT INTO `wp_postmeta` VALUES (171,50,'featured_product','');
INSERT INTO `wp_postmeta` VALUES (172,50,'_featured_product','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (173,50,'featured_film','34');
INSERT INTO `wp_postmeta` VALUES (174,50,'_featured_film','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (175,51,'banner_image','47');
INSERT INTO `wp_postmeta` VALUES (176,51,'_banner_image','field_600abb7dd7dc1');
INSERT INTO `wp_postmeta` VALUES (177,51,'title','Film review');
INSERT INTO `wp_postmeta` VALUES (178,51,'_title','field_600abbf2d7dc2');
INSERT INTO `wp_postmeta` VALUES (179,51,'description','Op deze website gaan we alle nieuwe films maar ook oude films beoordelen.');
INSERT INTO `wp_postmeta` VALUES (180,51,'_description','field_600abbfbd7dc3');
INSERT INTO `wp_postmeta` VALUES (181,51,'featured_product','');
INSERT INTO `wp_postmeta` VALUES (182,51,'_featured_product','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (183,51,'featured_film','33');
INSERT INTO `wp_postmeta` VALUES (184,51,'_featured_film','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (185,52,'banner_image','47');
INSERT INTO `wp_postmeta` VALUES (186,52,'_banner_image','field_600abb7dd7dc1');
INSERT INTO `wp_postmeta` VALUES (187,52,'title','Film review');
INSERT INTO `wp_postmeta` VALUES (188,52,'_title','field_600abbf2d7dc2');
INSERT INTO `wp_postmeta` VALUES (189,52,'description','Op deze website gaan we alle nieuwe films maar ook oude films beoordelen.');
INSERT INTO `wp_postmeta` VALUES (190,52,'_description','field_600abbfbd7dc3');
INSERT INTO `wp_postmeta` VALUES (191,52,'featured_product','');
INSERT INTO `wp_postmeta` VALUES (192,52,'_featured_product','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (193,52,'featured_film','a:2:{i:0;s:2:\"33\";i:1;s:1:\"5\";}');
INSERT INTO `wp_postmeta` VALUES (194,52,'_featured_film','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (195,53,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (196,53,'referenced_node_single_name','page');
INSERT INTO `wp_postmeta` VALUES (197,53,'referenced_node_plural_name','pages');
INSERT INTO `wp_postmeta` VALUES (198,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (199,13,'banner_image','47');
INSERT INTO `wp_postmeta` VALUES (200,13,'_banner_image','field_600af4bb74a39');
INSERT INTO `wp_postmeta` VALUES (201,13,'description','Op deze pagina kan je een lijst vinden met alle films die we al beoordeeld hebben op onze website');
INSERT INTO `wp_postmeta` VALUES (202,13,'_description','field_600af4e474a3a');
INSERT INTO `wp_postmeta` VALUES (203,54,'banner_image','47');
INSERT INTO `wp_postmeta` VALUES (204,54,'_banner_image','field_600af4bb74a39');
INSERT INTO `wp_postmeta` VALUES (205,54,'description','Op deze pagina kan je een lijst vinden met alle films die we al beoordeeld hebben op onze website');
INSERT INTO `wp_postmeta` VALUES (206,54,'_description','field_600af4e474a3a');
INSERT INTO `wp_postmeta` VALUES (207,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (208,56,'_edit_lock','1611492220:1');
INSERT INTO `wp_postmeta` VALUES (209,57,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (210,57,'referenced_node_single_name','user');
INSERT INTO `wp_postmeta` VALUES (211,57,'referenced_node_plural_name','users');
INSERT INTO `wp_postmeta` VALUES (212,58,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (213,58,'referenced_node_single_name','film');
INSERT INTO `wp_postmeta` VALUES (214,58,'referenced_node_plural_name','films');
INSERT INTO `wp_postmeta` VALUES (215,56,'image','32');
INSERT INTO `wp_postmeta` VALUES (216,56,'_image','field_600af64568eb0');
INSERT INTO `wp_postmeta` VALUES (217,56,'title','The Hunger Games');
INSERT INTO `wp_postmeta` VALUES (218,56,'_title','field_600af716a44ff');
INSERT INTO `wp_postmeta` VALUES (219,56,'regiseur','Gary Ross en Francis Lawrence');
INSERT INTO `wp_postmeta` VALUES (220,56,'_regiseur','field_600af723a4500');
INSERT INTO `wp_postmeta` VALUES (221,56,'description','In een angstaanjagende toekomst worden de tieners Katniss en Peeta gevraagd voor een tv-programma waarin jonge concurrenten een gevecht op leven en dood moeten voeren. Gebaseerd op The Hunger Games trilogie van Suzanne Collins.');
INSERT INTO `wp_postmeta` VALUES (222,56,'_description','field_600af75298f1d');
INSERT INTO `wp_postmeta` VALUES (223,56,'review','7.5');
INSERT INTO `wp_postmeta` VALUES (224,56,'_review','field_600af76c98f1e');
INSERT INTO `wp_postmeta` VALUES (225,56,'releasedate','2012');
INSERT INTO `wp_postmeta` VALUES (226,56,'_releasedate','field_600d44758eb35');
INSERT INTO `wp_postmeta` VALUES (227,5,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (228,5,'_wp_trash_meta_time','1611492370');
INSERT INTO `wp_postmeta` VALUES (229,5,'_wp_desired_post_slug','test');
INSERT INTO `wp_postmeta` VALUES (230,59,'referenced_node_status','trash');
INSERT INTO `wp_postmeta` VALUES (231,59,'referenced_node_single_name','film');
INSERT INTO `wp_postmeta` VALUES (232,59,'referenced_node_plural_name','films');
INSERT INTO `wp_postmeta` VALUES (233,60,'banner_image','47');
INSERT INTO `wp_postmeta` VALUES (234,60,'_banner_image','field_600abb7dd7dc1');
INSERT INTO `wp_postmeta` VALUES (235,60,'title','Film review');
INSERT INTO `wp_postmeta` VALUES (236,60,'_title','field_600abbf2d7dc2');
INSERT INTO `wp_postmeta` VALUES (237,60,'description','Op deze website gaan we alle nieuwe films maar ook oude films beoordelen.');
INSERT INTO `wp_postmeta` VALUES (238,60,'_description','field_600abbfbd7dc3');
INSERT INTO `wp_postmeta` VALUES (239,60,'featured_product','');
INSERT INTO `wp_postmeta` VALUES (240,60,'_featured_product','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (241,60,'featured_film','a:2:{i:0;s:2:\"33\";i:1;s:2:\"56\";}');
INSERT INTO `wp_postmeta` VALUES (242,60,'_featured_film','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (243,61,'banner_image','47');
INSERT INTO `wp_postmeta` VALUES (244,61,'_banner_image','field_600abb7dd7dc1');
INSERT INTO `wp_postmeta` VALUES (245,61,'title','Film review');
INSERT INTO `wp_postmeta` VALUES (246,61,'_title','field_600abbf2d7dc2');
INSERT INTO `wp_postmeta` VALUES (247,61,'description','Op deze website gaan we alle nieuwe films maar ook oude films beoordelen.');
INSERT INTO `wp_postmeta` VALUES (248,61,'_description','field_600abbfbd7dc3');
INSERT INTO `wp_postmeta` VALUES (249,61,'featured_product','');
INSERT INTO `wp_postmeta` VALUES (250,61,'_featured_product','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (251,61,'featured_film','a:2:{i:0;s:2:\"33\";i:1;s:2:\"56\";}');
INSERT INTO `wp_postmeta` VALUES (252,61,'_featured_film','field_600abc06d7dc4');
INSERT INTO `wp_postmeta` VALUES (253,62,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (254,62,'referenced_node_single_name','film');
INSERT INTO `wp_postmeta` VALUES (255,62,'referenced_node_plural_name','films');
INSERT INTO `wp_postmeta` VALUES (256,33,'releasedate','2014');
INSERT INTO `wp_postmeta` VALUES (257,33,'_releasedate','field_600d44758eb35');
INSERT INTO `wp_postmeta` VALUES (258,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (259,63,'_edit_lock','1611505854:1');
INSERT INTO `wp_postmeta` VALUES (260,64,'_wp_attached_file','2021/01/HowToTrainYourDragon.jpg');
INSERT INTO `wp_postmeta` VALUES (261,65,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (262,65,'referenced_node_single_name','mediaItem');
INSERT INTO `wp_postmeta` VALUES (263,65,'referenced_node_plural_name','mediaItems');
INSERT INTO `wp_postmeta` VALUES (264,64,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:427;s:6:\"height\";i:606;s:4:\"file\";s:32:\"2021/01/HowToTrainYourDragon.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"HowToTrainYourDragon-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"HowToTrainYourDragon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (265,64,'_wp_attachment_image_alt','how to train your dragon');
INSERT INTO `wp_postmeta` VALUES (266,66,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (267,66,'referenced_node_single_name','film');
INSERT INTO `wp_postmeta` VALUES (268,66,'referenced_node_plural_name','films');
INSERT INTO `wp_postmeta` VALUES (269,63,'image','64');
INSERT INTO `wp_postmeta` VALUES (270,63,'_image','field_600af64568eb0');
INSERT INTO `wp_postmeta` VALUES (271,63,'title','How to train your dragon ');
INSERT INTO `wp_postmeta` VALUES (272,63,'_title','field_600af716a44ff');
INSERT INTO `wp_postmeta` VALUES (273,63,'regiseur','Chris Sanders en Dean DeBlois');
INSERT INTO `wp_postmeta` VALUES (274,63,'_regiseur','field_600af723a4500');
INSERT INTO `wp_postmeta` VALUES (275,63,'description','Als zoon van een vikingleider moet de verlegen Hikkie een overgangs ritueel doorlopen: hij moet een draak doden om zijn moed te bewijzen.');
INSERT INTO `wp_postmeta` VALUES (276,63,'_description','field_600af75298f1d');
INSERT INTO `wp_postmeta` VALUES (277,63,'review','6.5');
INSERT INTO `wp_postmeta` VALUES (278,63,'_review','field_600af76c98f1e');
INSERT INTO `wp_postmeta` VALUES (279,63,'releasedate','2010');
INSERT INTO `wp_postmeta` VALUES (280,63,'_releasedate','field_600d44758eb35');
INSERT INTO `wp_postmeta` VALUES (281,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (282,67,'_edit_lock','1611506076:1');
INSERT INTO `wp_postmeta` VALUES (283,68,'_wp_attached_file','2021/01/WorldWarZ.jpg');
INSERT INTO `wp_postmeta` VALUES (284,69,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (285,69,'referenced_node_single_name','mediaItem');
INSERT INTO `wp_postmeta` VALUES (286,69,'referenced_node_plural_name','mediaItems');
INSERT INTO `wp_postmeta` VALUES (287,68,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:550;s:6:\"height\";i:741;s:4:\"file\";s:21:\"2021/01/WorldWarZ.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"WorldWarZ-223x300.jpg\";s:5:\"width\";i:223;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"WorldWarZ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (288,68,'_wp_attachment_image_alt','world war Z');
INSERT INTO `wp_postmeta` VALUES (289,70,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (290,70,'referenced_node_single_name','film');
INSERT INTO `wp_postmeta` VALUES (291,70,'referenced_node_plural_name','films');
INSERT INTO `wp_postmeta` VALUES (292,67,'image','68');
INSERT INTO `wp_postmeta` VALUES (293,67,'_image','field_600af64568eb0');
INSERT INTO `wp_postmeta` VALUES (294,67,'title','World War Z');
INSERT INTO `wp_postmeta` VALUES (295,67,'_title','field_600af716a44ff');
INSERT INTO `wp_postmeta` VALUES (296,67,'regiseur','Marc Forster');
INSERT INTO `wp_postmeta` VALUES (297,67,'_regiseur','field_600af723a4500');
INSERT INTO `wp_postmeta` VALUES (298,67,'description','Een werknemer van de V.N. racet de wereld over om de verspreiding van een dodelijke zombiepandemie tegen te houden.');
INSERT INTO `wp_postmeta` VALUES (299,67,'_description','field_600af75298f1d');
INSERT INTO `wp_postmeta` VALUES (300,67,'review','8');
INSERT INTO `wp_postmeta` VALUES (301,67,'_review','field_600af76c98f1e');
INSERT INTO `wp_postmeta` VALUES (302,67,'releasedate','2013');
INSERT INTO `wp_postmeta` VALUES (303,67,'_releasedate','field_600d44758eb35');
INSERT INTO `wp_postmeta` VALUES (304,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (305,71,'_edit_lock','1611506904:1');
INSERT INTO `wp_postmeta` VALUES (306,72,'_wp_attached_file','2021/01/ManOfSteel.jpg');
INSERT INTO `wp_postmeta` VALUES (307,73,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (308,73,'referenced_node_single_name','mediaItem');
INSERT INTO `wp_postmeta` VALUES (309,73,'referenced_node_plural_name','mediaItems');
INSERT INTO `wp_postmeta` VALUES (310,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:550;s:6:\"height\";i:687;s:4:\"file\";s:22:\"2021/01/ManOfSteel.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ManOfSteel-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ManOfSteel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (311,72,'_wp_attachment_image_alt','man of steel');
INSERT INTO `wp_postmeta` VALUES (312,74,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (313,74,'referenced_node_single_name','film');
INSERT INTO `wp_postmeta` VALUES (314,74,'referenced_node_plural_name','films');
INSERT INTO `wp_postmeta` VALUES (315,71,'image','72');
INSERT INTO `wp_postmeta` VALUES (316,71,'_image','field_600af64568eb0');
INSERT INTO `wp_postmeta` VALUES (317,71,'title','Man of Steel');
INSERT INTO `wp_postmeta` VALUES (318,71,'_title','field_600af716a44ff');
INSERT INTO `wp_postmeta` VALUES (319,71,'regiseur','Zack Snyder');
INSERT INTO `wp_postmeta` VALUES (320,71,'_regiseur','field_600af723a4500');
INSERT INTO `wp_postmeta` VALUES (321,71,'description','De rondzwervende Clark Kent moet zijn krachten verborgen houden voor de rest van de wereld. Maar als een slechte generaal de werled wil vernietigen, komt de man van staal in actie.');
INSERT INTO `wp_postmeta` VALUES (322,71,'_description','field_600af75298f1d');
INSERT INTO `wp_postmeta` VALUES (323,71,'review','7.5');
INSERT INTO `wp_postmeta` VALUES (324,71,'_review','field_600af76c98f1e');
INSERT INTO `wp_postmeta` VALUES (325,71,'releasedate','2013');
INSERT INTO `wp_postmeta` VALUES (326,71,'_releasedate','field_600d44758eb35');
INSERT INTO `wp_postmeta` VALUES (327,75,'_wp_attached_file','2021/01/AmericanSniper1.jpg');
INSERT INTO `wp_postmeta` VALUES (328,76,'referenced_node_status','publish');
INSERT INTO `wp_postmeta` VALUES (329,76,'referenced_node_single_name','mediaItem');
INSERT INTO `wp_postmeta` VALUES (330,76,'referenced_node_plural_name','mediaItems');
INSERT INTO `wp_postmeta` VALUES (331,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:188;s:6:\"height\";i:268;s:4:\"file\";s:27:\"2021/01/AmericanSniper1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"AmericanSniper1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (332,75,'_wp_attachment_image_alt','american sniper');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-01-21 14:34:25','2021-01-21 14:34:25','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-01-21 14:34:25','2021-01-21 14:34:25','',0,'http://examenopdracht.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-01-21 14:34:25','2021-01-21 14:34:25','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://examenopdracht.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home Page','','publish','closed','open','','home-page','','','2021-01-24 13:58:44','2021-01-24 13:58:44','',0,'http://examenopdracht.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-01-21 14:34:25','2021-01-21 14:34:25','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://examenopdracht.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-01-21 14:34:25','2021-01-21 14:34:25','',0,'http://examenopdracht.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-01-21 14:51:26','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-01-21 14:51:26','0000-00-00 00:00:00','',0,'http://examenopdracht.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-01-22 11:12:44','2021-01-22 11:12:44','','The Hunger Games','','trash','closed','closed','','test__trashed','','','2021-01-24 12:46:10','2021-01-24 12:46:10','',0,'http://examenopdracht.local/?post_type=films&#038;p=5',0,'films','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-01-22 11:18:01','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-01-22 11:18:01','0000-00-00 00:00:00','',0,'http://examenopdracht.local/?post_type=acf-field-group&p=6',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-01-22 11:50:41','2021-01-22 11:50:41','a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:6:\"format\";i:6;s:15:\"page_attributes\";i:7;s:14:\"featured_image\";i:8;s:10:\"categories\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:15:\"show_in_graphql\";i:1;s:18:\"graphql_field_name\";s:8:\"homeMeta\";}','Home Page','home-page','publish','closed','closed','','group_600abb710a262','','','2021-01-23 17:53:22','2021-01-23 17:53:22','',0,'http://examenopdracht.local/?post_type=acf-field-group&#038;p=7',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-01-22 11:50:40','2021-01-22 11:50:40','a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:21:\"een Image met max 4GB\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:15:\"show_in_graphql\";i:1;s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";i:4;s:10:\"mime_types\";s:12:\"jpg,jpeg,png\";}','Banner Image','banner_image','publish','closed','closed','','field_600abb7dd7dc1','','','2021-01-23 15:52:46','2021-01-23 15:52:46','',7,'http://examenopdracht.local/?post_type=acf-field&#038;p=8',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-01-22 11:50:40','2021-01-22 11:50:40','a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:15:\"show_in_graphql\";i:1;s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:50;}','Title','title','publish','closed','closed','','field_600abbf2d7dc2','','','2021-01-23 15:52:46','2021-01-23 15:52:46','',7,'http://examenopdracht.local/?post_type=acf-field&#038;p=9',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-01-22 11:50:40','2021-01-22 11:50:40','a:11:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:15:\"show_in_graphql\";i:1;s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:500;s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Description','description','publish','closed','closed','','field_600abbfbd7dc3','','','2021-01-23 15:52:46','2021-01-23 15:52:46','',7,'http://examenopdracht.local/?post_type=acf-field&#038;p=10',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-01-22 11:50:40','2021-01-22 11:50:40','a:12:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:15:\"show_in_graphql\";i:1;s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}','Featured Film','featured_film','publish','closed','closed','','field_600abc06d7dc4','','','2021-01-23 17:53:22','2021-01-23 17:53:22','',7,'http://examenopdracht.local/?post_type=acf-field&#038;p=11',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-01-22 12:22:37','2021-01-22 12:22:37','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://examenopdracht.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home Page','','inherit','closed','closed','','2-revision-v1','','','2021-01-22 12:22:37','2021-01-22 12:22:37','',2,'http://examenopdracht.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-01-22 15:52:04','2021-01-22 15:52:04','','Films Page','','publish','closed','closed','','films-page','','','2021-01-24 09:54:40','2021-01-24 09:54:40','',0,'http://examenopdracht.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-01-22 15:52:04','2021-01-22 15:52:04','','Films Page','','inherit','closed','closed','','13-revision-v1','','','2021-01-22 15:52:04','2021-01-22 15:52:04','',13,'http://examenopdracht.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-01-22 15:56:10','2021-01-22 15:56:10','a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:6:\"format\";i:6;s:15:\"page_attributes\";i:7;s:14:\"featured_image\";i:8;s:10:\"categories\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:15:\"show_in_graphql\";i:1;s:18:\"graphql_field_name\";s:9:\"filmsMeta\";}','Films Page','films-page','publish','closed','closed','','group_600af4b40a8cc','','','2021-01-22 16:28:26','2021-01-22 16:28:26','',0,'http://examenopdracht.local/?post_type=acf-field-group&#038;p=15',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-01-22 15:56:10','2021-01-22 15:56:10','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:22:\"een image met max 4GB.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";i:4;s:10:\"mime_types\";s:12:\"jpg,jpeg,png\";}','Banner Image','banner_image','publish','closed','closed','','field_600af4bb74a39','','','2021-01-22 15:56:10','2021-01-22 15:56:10','',15,'http://examenopdracht.local/?post_type=acf-field&p=16',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-01-22 15:56:10','2021-01-22 15:56:10','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:22:\"Geef een beschrijving.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:500;s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Description','description','publish','closed','closed','','field_600af4e474a3a','','','2021-01-22 15:56:10','2021-01-22 15:56:10','',15,'http://examenopdracht.local/?post_type=acf-field&p=17',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-01-22 15:59:40','2021-01-22 15:59:40','a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"films\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:6:\"format\";i:6;s:15:\"page_attributes\";i:7;s:14:\"featured_image\";i:8;s:10:\"categories\";i:9;s:4:\"tags\";i:10;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:15:\"show_in_graphql\";i:1;s:18:\"graphql_field_name\";s:4:\"film\";}','Film','film','publish','closed','closed','','group_600af62baf388','','','2021-01-24 09:58:23','2021-01-24 09:58:23','',0,'http://examenopdracht.local/?post_type=acf-field-group&#038;p=18',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-01-22 15:59:40','2021-01-22 15:59:40','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";i:4;s:10:\"mime_types\";s:12:\"jpg,jpeg,png\";}','Image','image','publish','closed','closed','','field_600af64568eb0','','','2021-01-22 15:59:40','2021-01-22 15:59:40','',18,'http://examenopdracht.local/?post_type=acf-field&p=19',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-01-22 16:01:36','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-01-22 16:01:36','0000-00-00 00:00:00','',0,'http://examenopdracht.local/?p=20',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-01-22 16:01:37','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-01-22 16:01:37','0000-00-00 00:00:00','',0,'http://examenopdracht.local/?p=21',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-01-22 16:03:08','2021-01-22 16:03:08','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Title','title','publish','closed','closed','','field_600af716a44ff','','','2021-01-22 16:03:08','2021-01-22 16:03:08','',18,'http://examenopdracht.local/?post_type=acf-field&p=22',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-01-22 16:03:08','2021-01-22 16:03:08','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Regiseur','regiseur','publish','closed','closed','','field_600af723a4500','','','2021-01-22 16:05:05','2021-01-22 16:05:05','',18,'http://examenopdracht.local/?post_type=acf-field&#038;p=23',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-01-22 16:05:05','2021-01-22 16:05:05','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:500;s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Description','description','publish','closed','closed','','field_600af75298f1d','','','2021-01-22 16:05:05','2021-01-22 16:05:05','',18,'http://examenopdracht.local/?post_type=acf-field&p=24',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-01-22 16:05:05','2021-01-22 16:05:05','a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:35:\"geef een number op 10 voor de film.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:10;s:4:\"step\";s:3:\"0.5\";}','Review','review','publish','closed','closed','','field_600af76c98f1e','','','2021-01-22 16:05:05','2021-01-22 16:05:05','',18,'http://examenopdracht.local/?post_type=acf-field&p=25',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-01-23 12:34:59','2021-01-23 12:34:59','','The Hunger Games','','inherit','closed','closed','','5-autosave-v1','','','2021-01-23 12:34:59','2021-01-23 12:34:59','',5,'http://examenopdracht.local/5-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-01-23 12:29:40','2021-01-23 12:29:40','','HungerGames','','inherit','open','closed','','hungergames','','','2021-01-23 12:30:27','2021-01-23 12:30:27','',5,'http://examenopdracht.local/wp-content/uploads/2021/01/HungerGames.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-01-23 12:42:35','2021-01-23 12:42:35','','Amercian Sniper','','publish','closed','closed','','amercian-sniper','','','2021-01-24 16:51:46','2021-01-24 16:51:46','',0,'http://examenopdracht.local/?post_type=films&#038;p=33',0,'films','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-01-23 12:42:01','2021-01-23 12:42:01','','AmericanSniper','','inherit','open','closed','','americansniper','','','2021-01-23 12:42:23','2021-01-23 12:42:23','',33,'http://examenopdracht.local/wp-content/uploads/2021/01/AmericanSniper.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-01-23 15:51:17','2021-01-23 15:51:17',' ','','','publish','closed','closed','','35','','','2021-01-23 16:34:52','2021-01-23 16:34:52','',0,'http://examenopdracht.local/?p=35',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-01-23 15:51:17','2021-01-23 15:51:17','{\"action_type\":\"UPDATE\",\"title\":\"Main Menu\",\"status\":\"publish\",\"node_id\":2,\"relay_id\":\"dGVybToy\",\"graphql_single_name\":\"menu\",\"graphql_plural_name\":\"menus\"}','Main Menu','','publish','closed','closed','','main-menu-1611417077','','','2021-01-23 16:34:53','2021-01-23 16:34:53','',0,'http://examenopdracht.local/action_monitor/main-menu-1611417077/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-01-23 15:51:17','2021-01-23 15:51:17','{\"action_type\":\"UPDATE\",\"title\":\"\",\"status\":\"publish\",\"node_id\":35,\"relay_id\":\"cG9zdDozNQ==\",\"graphql_single_name\":\"menuItem\",\"graphql_plural_name\":\"menuItems\"}','','','publish','closed','closed','','1611417077','','','2021-01-23 16:34:52','2021-01-23 16:34:52','',0,'http://examenopdracht.local/action_monitor/1611417077/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-01-23 15:51:18','2021-01-23 15:51:18','{\"action_type\":\"UPDATE\",\"title\":\"\",\"status\":\"publish\",\"node_id\":36,\"relay_id\":\"cG9zdDozNg==\",\"graphql_single_name\":\"menuItem\",\"graphql_plural_name\":\"menuItems\"}','','','publish','closed','closed','','1611417078','','','2021-01-23 15:51:18','2021-01-23 15:51:18','',0,'http://examenopdracht.local/action_monitor/1611417078/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-01-23 15:52:46','2021-01-23 15:52:46','{\"title\":\"Update ACF Field Group\",\"node_id\":\"none\",\"relay_id\":\"none\",\"graphql_single_name\":\"none\",\"graphql_plural_name\":\"none\",\"status\":\"none\",\"action_type\":\"DIFF_SCHEMAS\"}','Update ACF Field Group','','publish','closed','closed','','update-acf-field-group-1611417166','','','2021-01-24 09:58:23','2021-01-24 09:58:23','',0,'http://examenopdracht.local/action_monitor/update-acf-field-group-1611417166/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-01-23 15:53:15','2021-01-23 15:53:15','{\"action_type\":\"UPDATE\",\"title\":\"Home Page\",\"node_id\":2,\"relay_id\":\"cG9zdDoy\",\"graphql_single_name\":\"page\",\"graphql_plural_name\":\"pages\",\"status\":\"publish\"}','Home Page','','publish','closed','closed','','home-page-1611417195','','','2021-01-24 13:58:44','2021-01-24 13:58:44','',0,'http://examenopdracht.local/action_monitor/home-page-1611417195/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-01-23 15:55:18','2021-01-23 15:55:18','{\"action_type\":\"UPDATE\",\"title\":\"Home\",\"status\":\"publish\",\"node_id\":42,\"relay_id\":\"cG9zdDo0Mg==\",\"graphql_single_name\":\"menuItem\",\"graphql_plural_name\":\"menuItems\"}','Home','','publish','closed','closed','','home-1611417318','','','2021-01-23 15:55:19','2021-01-23 15:55:19','',0,'http://examenopdracht.local/action_monitor/home-1611417318/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-01-23 16:34:52','2021-01-23 16:34:52',' ','','','publish','closed','closed','','44','','','2021-01-23 16:34:52','2021-01-23 16:34:52','',0,'http://examenopdracht.local/?p=44',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-01-23 16:34:52','2021-01-23 16:34:52','{\"action_type\":\"UPDATE\",\"title\":\"\",\"status\":\"publish\",\"node_id\":44,\"relay_id\":\"cG9zdDo0NA==\",\"graphql_single_name\":\"menuItem\",\"graphql_plural_name\":\"menuItems\"}','','','publish','closed','closed','','1611419692','','','2021-01-23 16:34:52','2021-01-23 16:34:52','',0,'http://examenopdracht.local/action_monitor/1611419692/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-01-23 17:10:34','2021-01-23 17:10:34','{\"action_type\":\"NON_NODE_ROOT_FIELDS\",\"title\":\"Update Setting:  show_on_front\",\"node_id\":\"update_non_node_root_field\",\"relay_id\":\"update_non_node_root_field\",\"graphql_single_name\":\"update_non_node_root_field\",\"graphql_plural_name\":\"update_non_node_root_field\",\"status\":\"update_non_node_root_field\"}','Update Setting:  show_on_front','','publish','closed','closed','','update-setting-show_on_front-1611421834','','','2021-01-23 17:10:34','2021-01-23 17:10:34','',0,'http://examenopdracht.local/action_monitor/update-setting-show_on_front-1611421834/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-01-23 17:41:48','2021-01-23 17:41:48','','FilmPageBanner','','inherit','open','closed','','homepagebanner','','','2021-01-24 09:53:34','2021-01-24 09:53:34','',2,'http://examenopdracht.local/wp-content/uploads/2021/01/HomepageBanner.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-01-23 17:41:48','2021-01-23 17:41:48','{\"action_type\":\"UPDATE\",\"title\":\"FilmPageBanner\",\"status\":\"publish\",\"node_id\":47,\"relay_id\":\"cG9zdDo0Nw==\",\"graphql_single_name\":\"mediaItem\",\"graphql_plural_name\":\"mediaItems\",\"skip_webhook\":true}','FilmPageBanner','','publish','closed','closed','','homepagebanner-1611423708','','','2021-01-24 09:53:34','2021-01-24 09:53:34','',0,'http://examenopdracht.local/action_monitor/homepagebanner-1611423708/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-01-23 17:43:13','2021-01-23 17:43:13','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://examenopdracht.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home Page','','inherit','closed','closed','','2-revision-v1','','','2021-01-23 17:43:13','2021-01-23 17:43:13','',2,'http://examenopdracht.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-01-23 17:47:46','2021-01-23 17:47:46','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://examenopdracht.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home Page','','inherit','closed','closed','','2-revision-v1','','','2021-01-23 17:47:46','2021-01-23 17:47:46','',2,'http://examenopdracht.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-01-23 17:51:15','2021-01-23 17:51:15','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://examenopdracht.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home Page','','inherit','closed','closed','','2-revision-v1','','','2021-01-23 17:51:15','2021-01-23 17:51:15','',2,'http://examenopdracht.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-01-23 17:53:39','2021-01-23 17:53:39','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://examenopdracht.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home Page','','inherit','closed','closed','','2-revision-v1','','','2021-01-23 17:53:39','2021-01-23 17:53:39','',2,'http://examenopdracht.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-01-24 09:54:39','2021-01-24 09:54:39','{\"action_type\":\"UPDATE\",\"title\":\"Films Page\",\"node_id\":13,\"relay_id\":\"cG9zdDoxMw==\",\"graphql_single_name\":\"page\",\"graphql_plural_name\":\"pages\",\"status\":\"publish\"}','Films Page','','publish','closed','closed','','films-page-1611482079','','','2021-01-24 09:54:40','2021-01-24 09:54:40','',0,'http://examenopdracht.local/action_monitor/films-page-1611482079/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-01-24 09:54:40','2021-01-24 09:54:40','','Films Page','','inherit','closed','closed','','13-revision-v1','','','2021-01-24 09:54:40','2021-01-24 09:54:40','',13,'http://examenopdracht.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-01-24 09:58:23','2021-01-24 09:58:23','a:13:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:15:\"show_in_graphql\";i:1;s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";i:1940;s:3:\"max\";i:2021;s:4:\"step\";i:1;}','ReleaseDate','releasedate','publish','closed','closed','','field_600d44758eb35','','','2021-01-24 09:58:23','2021-01-24 09:58:23','',18,'http://examenopdracht.local/?post_type=acf-field&p=55',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-01-24 12:45:18','2021-01-24 12:45:18','','The Hunger Games','','publish','closed','closed','','the-hunger-games','','','2021-01-24 12:45:59','2021-01-24 12:45:59','',0,'http://examenopdracht.local/?post_type=films&#038;p=56',0,'films','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-01-24 12:45:18','2021-01-24 12:45:18','{\"action_type\":\"UPDATE\",\"title\":\"Admin\",\"node_id\":1,\"relay_id\":\"dXNlcjox\",\"graphql_single_name\":\"user\",\"graphql_plural_name\":\"users\",\"status\":\"publish\"}','Admin','','publish','closed','closed','','admin-1611492318','','','2021-01-24 16:40:41','2021-01-24 16:40:41','',0,'http://examenopdracht.local/action_monitor/admin-1611492318/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-01-24 12:45:18','2021-01-24 12:45:18','{\"action_type\":\"UPDATE\",\"title\":\"The Hunger Games\",\"node_id\":56,\"relay_id\":\"cG9zdDo1Ng==\",\"graphql_single_name\":\"Film\",\"graphql_plural_name\":\"Films\",\"status\":\"publish\"}','The Hunger Games','','publish','closed','closed','','the-hunger-games-1611492318','','','2021-01-24 12:46:00','2021-01-24 12:46:00','',0,'http://examenopdracht.local/action_monitor/the-hunger-games-1611492318/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-01-24 12:46:10','2021-01-24 12:46:10','{\"action_type\":\"DELETE\",\"title\":\"The Hunger Games\",\"node_id\":5,\"relay_id\":\"cG9zdDo1\",\"graphql_single_name\":\"Film\",\"graphql_plural_name\":\"Films\",\"status\":\"trash\"}','The Hunger Games','','publish','closed','closed','','the-hunger-games-1611492370','','','2021-01-24 12:46:11','2021-01-24 12:46:11','',0,'http://examenopdracht.local/action_monitor/the-hunger-games-1611492370/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-01-24 13:30:22','2021-01-24 13:30:22','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://examenopdracht.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home Page','','inherit','closed','closed','','2-revision-v1','','','2021-01-24 13:30:22','2021-01-24 13:30:22','',2,'http://examenopdracht.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-01-24 13:58:44','2021-01-24 13:58:44','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://examenopdracht.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Home Page','','inherit','closed','closed','','2-revision-v1','','','2021-01-24 13:58:44','2021-01-24 13:58:44','',2,'http://examenopdracht.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-01-24 13:59:06','2021-01-24 13:59:06','{\"action_type\":\"UPDATE\",\"title\":\"Amercian Sniper\",\"node_id\":33,\"relay_id\":\"cG9zdDozMw==\",\"graphql_single_name\":\"Film\",\"graphql_plural_name\":\"Films\",\"status\":\"publish\"}','Amercian Sniper','','publish','closed','closed','','amercian-sniper-1611496746','','','2021-01-24 16:51:46','2021-01-24 16:51:46','',0,'http://examenopdracht.local/action_monitor/amercian-sniper-1611496746/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-01-24 16:33:13','2021-01-24 16:33:13','','How To Train Your Dragon','','publish','closed','closed','','how-to-train-your-dragon','','','2021-01-24 16:33:13','2021-01-24 16:33:13','',0,'http://examenopdracht.local/?post_type=films&#038;p=63',0,'films','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-01-24 16:32:45','2021-01-24 16:32:45','','HowToTrainYourDragon','','inherit','open','closed','','howtotrainyourdragon','','','2021-01-24 16:32:59','2021-01-24 16:32:59','',63,'http://examenopdracht.local/wp-content/uploads/2021/01/HowToTrainYourDragon.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-01-24 16:32:45','2021-01-24 16:32:45','{\"action_type\":\"UPDATE\",\"title\":\"HowToTrainYourDragon\",\"status\":\"publish\",\"node_id\":64,\"relay_id\":\"cG9zdDo2NA==\",\"graphql_single_name\":\"mediaItem\",\"graphql_plural_name\":\"mediaItems\",\"skip_webhook\":true}','HowToTrainYourDragon','','publish','closed','closed','','howtotrainyourdragon-1611505965','','','2021-01-24 16:32:59','2021-01-24 16:32:59','',0,'http://examenopdracht.local/action_monitor/howtotrainyourdragon-1611505965/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-01-24 16:33:14','2021-01-24 16:33:14','{\"action_type\":\"UPDATE\",\"title\":\"How To Train Your Dragon\",\"node_id\":63,\"relay_id\":\"cG9zdDo2Mw==\",\"graphql_single_name\":\"Film\",\"graphql_plural_name\":\"Films\",\"status\":\"publish\"}','How To Train Your Dragon','','publish','closed','closed','','how-to-train-your-dragon-1611505994','','','2021-01-24 16:33:15','2021-01-24 16:33:15','',0,'http://examenopdracht.local/action_monitor/how-to-train-your-dragon-1611505994/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-01-24 16:36:29','2021-01-24 16:36:29','','World War Z','','publish','closed','closed','','world-war-z','','','2021-01-24 16:36:29','2021-01-24 16:36:29','',0,'http://examenopdracht.local/?post_type=films&#038;p=67',0,'films','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-01-24 16:34:48','2021-01-24 16:34:48','','WorldWarZ','','inherit','open','closed','','worldwarz','','','2021-01-24 16:34:58','2021-01-24 16:34:58','',67,'http://examenopdracht.local/wp-content/uploads/2021/01/WorldWarZ.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-01-24 16:34:48','2021-01-24 16:34:48','{\"action_type\":\"UPDATE\",\"title\":\"WorldWarZ\",\"status\":\"publish\",\"node_id\":68,\"relay_id\":\"cG9zdDo2OA==\",\"graphql_single_name\":\"mediaItem\",\"graphql_plural_name\":\"mediaItems\",\"skip_webhook\":true}','WorldWarZ','','publish','closed','closed','','worldwarz-1611506088','','','2021-01-24 16:34:58','2021-01-24 16:34:58','',0,'http://examenopdracht.local/action_monitor/worldwarz-1611506088/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-01-24 16:36:30','2021-01-24 16:36:30','{\"action_type\":\"UPDATE\",\"title\":\"World War Z\",\"node_id\":67,\"relay_id\":\"cG9zdDo2Nw==\",\"graphql_single_name\":\"Film\",\"graphql_plural_name\":\"Films\",\"status\":\"publish\"}','World War Z','','publish','closed','closed','','world-war-z-1611506190','','','2021-01-24 16:36:31','2021-01-24 16:36:31','',0,'http://examenopdracht.local/action_monitor/world-war-z-1611506190/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-01-24 16:40:41','2021-01-24 16:40:41','','Man of Steel','','publish','closed','closed','','man-of-steel','','','2021-01-24 16:40:41','2021-01-24 16:40:41','',0,'http://examenopdracht.local/?post_type=films&#038;p=71',0,'films','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-01-24 16:38:30','2021-01-24 16:38:30','','ManOfSteel','','inherit','open','closed','','manofsteel','','','2021-01-24 16:38:36','2021-01-24 16:38:36','',71,'http://examenopdracht.local/wp-content/uploads/2021/01/ManOfSteel.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-01-24 16:38:30','2021-01-24 16:38:30','{\"action_type\":\"UPDATE\",\"title\":\"ManOfSteel\",\"status\":\"publish\",\"node_id\":72,\"relay_id\":\"cG9zdDo3Mg==\",\"graphql_single_name\":\"mediaItem\",\"graphql_plural_name\":\"mediaItems\",\"skip_webhook\":true}','ManOfSteel','','publish','closed','closed','','manofsteel-1611506310','','','2021-01-24 16:38:36','2021-01-24 16:38:36','',0,'http://examenopdracht.local/action_monitor/manofsteel-1611506310/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-01-24 16:40:41','2021-01-24 16:40:41','{\"action_type\":\"UPDATE\",\"title\":\"Man of Steel\",\"node_id\":71,\"relay_id\":\"cG9zdDo3MQ==\",\"graphql_single_name\":\"Film\",\"graphql_plural_name\":\"Films\",\"status\":\"publish\"}','Man of Steel','','publish','closed','closed','','man-of-steel-1611506441','','','2021-01-24 16:40:43','2021-01-24 16:40:43','',0,'http://examenopdracht.local/action_monitor/man-of-steel-1611506441/',0,'action_monitor','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-01-24 16:51:25','2021-01-24 16:51:25','','AmericanSniper1','','inherit','open','closed','','americansniper1','','','2021-01-24 16:51:29','2021-01-24 16:51:29','',33,'http://examenopdracht.local/wp-content/uploads/2021/01/AmericanSniper1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-01-24 16:51:25','2021-01-24 16:51:25','{\"action_type\":\"UPDATE\",\"title\":\"AmericanSniper1\",\"status\":\"publish\",\"node_id\":75,\"relay_id\":\"cG9zdDo3NQ==\",\"graphql_single_name\":\"mediaItem\",\"graphql_plural_name\":\"mediaItems\",\"skip_webhook\":true}','AmericanSniper1','','publish','closed','closed','','americansniper1-1611507085','','','2021-01-24 16:51:30','2021-01-24 16:51:30','',0,'http://examenopdracht.local/action_monitor/americansniper1-1611507085/',0,'action_monitor','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,4,0);
INSERT INTO `wp_term_relationships` VALUES (5,5,0);
INSERT INTO `wp_term_relationships` VALUES (5,7,0);
INSERT INTO `wp_term_relationships` VALUES (33,5,0);
INSERT INTO `wp_term_relationships` VALUES (33,8,0);
INSERT INTO `wp_term_relationships` VALUES (35,2,0);
INSERT INTO `wp_term_relationships` VALUES (37,9,0);
INSERT INTO `wp_term_relationships` VALUES (37,10,0);
INSERT INTO `wp_term_relationships` VALUES (37,11,0);
INSERT INTO `wp_term_relationships` VALUES (37,12,0);
INSERT INTO `wp_term_relationships` VALUES (37,13,0);
INSERT INTO `wp_term_relationships` VALUES (38,12,0);
INSERT INTO `wp_term_relationships` VALUES (38,13,0);
INSERT INTO `wp_term_relationships` VALUES (38,14,0);
INSERT INTO `wp_term_relationships` VALUES (38,15,0);
INSERT INTO `wp_term_relationships` VALUES (38,16,0);
INSERT INTO `wp_term_relationships` VALUES (39,12,0);
INSERT INTO `wp_term_relationships` VALUES (39,13,0);
INSERT INTO `wp_term_relationships` VALUES (39,15,0);
INSERT INTO `wp_term_relationships` VALUES (39,17,0);
INSERT INTO `wp_term_relationships` VALUES (39,18,0);
INSERT INTO `wp_term_relationships` VALUES (40,13,0);
INSERT INTO `wp_term_relationships` VALUES (40,19,0);
INSERT INTO `wp_term_relationships` VALUES (40,20,0);
INSERT INTO `wp_term_relationships` VALUES (40,21,0);
INSERT INTO `wp_term_relationships` VALUES (40,22,0);
INSERT INTO `wp_term_relationships` VALUES (41,9,0);
INSERT INTO `wp_term_relationships` VALUES (41,12,0);
INSERT INTO `wp_term_relationships` VALUES (41,13,0);
INSERT INTO `wp_term_relationships` VALUES (41,23,0);
INSERT INTO `wp_term_relationships` VALUES (41,24,0);
INSERT INTO `wp_term_relationships` VALUES (43,12,0);
INSERT INTO `wp_term_relationships` VALUES (43,13,0);
INSERT INTO `wp_term_relationships` VALUES (43,15,0);
INSERT INTO `wp_term_relationships` VALUES (43,25,0);
INSERT INTO `wp_term_relationships` VALUES (43,26,0);
INSERT INTO `wp_term_relationships` VALUES (44,2,0);
INSERT INTO `wp_term_relationships` VALUES (45,12,0);
INSERT INTO `wp_term_relationships` VALUES (45,13,0);
INSERT INTO `wp_term_relationships` VALUES (45,15,0);
INSERT INTO `wp_term_relationships` VALUES (45,27,0);
INSERT INTO `wp_term_relationships` VALUES (45,28,0);
INSERT INTO `wp_term_relationships` VALUES (46,13,0);
INSERT INTO `wp_term_relationships` VALUES (46,29,0);
INSERT INTO `wp_term_relationships` VALUES (46,30,0);
INSERT INTO `wp_term_relationships` VALUES (46,31,0);
INSERT INTO `wp_term_relationships` VALUES (46,32,0);
INSERT INTO `wp_term_relationships` VALUES (48,12,0);
INSERT INTO `wp_term_relationships` VALUES (48,13,0);
INSERT INTO `wp_term_relationships` VALUES (48,33,0);
INSERT INTO `wp_term_relationships` VALUES (48,34,0);
INSERT INTO `wp_term_relationships` VALUES (48,35,0);
INSERT INTO `wp_term_relationships` VALUES (53,12,0);
INSERT INTO `wp_term_relationships` VALUES (53,13,0);
INSERT INTO `wp_term_relationships` VALUES (53,23,0);
INSERT INTO `wp_term_relationships` VALUES (53,37,0);
INSERT INTO `wp_term_relationships` VALUES (53,38,0);
INSERT INTO `wp_term_relationships` VALUES (56,4,0);
INSERT INTO `wp_term_relationships` VALUES (56,5,0);
INSERT INTO `wp_term_relationships` VALUES (56,7,0);
INSERT INTO `wp_term_relationships` VALUES (57,12,0);
INSERT INTO `wp_term_relationships` VALUES (57,13,0);
INSERT INTO `wp_term_relationships` VALUES (57,39,0);
INSERT INTO `wp_term_relationships` VALUES (57,40,0);
INSERT INTO `wp_term_relationships` VALUES (57,41,0);
INSERT INTO `wp_term_relationships` VALUES (58,12,0);
INSERT INTO `wp_term_relationships` VALUES (58,13,0);
INSERT INTO `wp_term_relationships` VALUES (58,42,0);
INSERT INTO `wp_term_relationships` VALUES (58,43,0);
INSERT INTO `wp_term_relationships` VALUES (58,44,0);
INSERT INTO `wp_term_relationships` VALUES (59,13,0);
INSERT INTO `wp_term_relationships` VALUES (59,43,0);
INSERT INTO `wp_term_relationships` VALUES (59,45,0);
INSERT INTO `wp_term_relationships` VALUES (59,46,0);
INSERT INTO `wp_term_relationships` VALUES (59,47,0);
INSERT INTO `wp_term_relationships` VALUES (62,12,0);
INSERT INTO `wp_term_relationships` VALUES (62,13,0);
INSERT INTO `wp_term_relationships` VALUES (62,43,0);
INSERT INTO `wp_term_relationships` VALUES (62,48,0);
INSERT INTO `wp_term_relationships` VALUES (62,49,0);
INSERT INTO `wp_term_relationships` VALUES (63,4,0);
INSERT INTO `wp_term_relationships` VALUES (63,6,0);
INSERT INTO `wp_term_relationships` VALUES (65,12,0);
INSERT INTO `wp_term_relationships` VALUES (65,13,0);
INSERT INTO `wp_term_relationships` VALUES (65,34,0);
INSERT INTO `wp_term_relationships` VALUES (65,50,0);
INSERT INTO `wp_term_relationships` VALUES (65,51,0);
INSERT INTO `wp_term_relationships` VALUES (66,12,0);
INSERT INTO `wp_term_relationships` VALUES (66,13,0);
INSERT INTO `wp_term_relationships` VALUES (66,43,0);
INSERT INTO `wp_term_relationships` VALUES (66,52,0);
INSERT INTO `wp_term_relationships` VALUES (66,53,0);
INSERT INTO `wp_term_relationships` VALUES (67,3,0);
INSERT INTO `wp_term_relationships` VALUES (67,5,0);
INSERT INTO `wp_term_relationships` VALUES (69,12,0);
INSERT INTO `wp_term_relationships` VALUES (69,13,0);
INSERT INTO `wp_term_relationships` VALUES (69,34,0);
INSERT INTO `wp_term_relationships` VALUES (69,54,0);
INSERT INTO `wp_term_relationships` VALUES (69,55,0);
INSERT INTO `wp_term_relationships` VALUES (70,12,0);
INSERT INTO `wp_term_relationships` VALUES (70,13,0);
INSERT INTO `wp_term_relationships` VALUES (70,43,0);
INSERT INTO `wp_term_relationships` VALUES (70,56,0);
INSERT INTO `wp_term_relationships` VALUES (70,57,0);
INSERT INTO `wp_term_relationships` VALUES (71,4,0);
INSERT INTO `wp_term_relationships` VALUES (71,5,0);
INSERT INTO `wp_term_relationships` VALUES (71,7,0);
INSERT INTO `wp_term_relationships` VALUES (73,12,0);
INSERT INTO `wp_term_relationships` VALUES (73,13,0);
INSERT INTO `wp_term_relationships` VALUES (73,34,0);
INSERT INTO `wp_term_relationships` VALUES (73,58,0);
INSERT INTO `wp_term_relationships` VALUES (73,59,0);
INSERT INTO `wp_term_relationships` VALUES (74,12,0);
INSERT INTO `wp_term_relationships` VALUES (74,13,0);
INSERT INTO `wp_term_relationships` VALUES (74,43,0);
INSERT INTO `wp_term_relationships` VALUES (74,60,0);
INSERT INTO `wp_term_relationships` VALUES (74,61,0);
INSERT INTO `wp_term_relationships` VALUES (76,12,0);
INSERT INTO `wp_term_relationships` VALUES (76,13,0);
INSERT INTO `wp_term_relationships` VALUES (76,34,0);
INSERT INTO `wp_term_relationships` VALUES (76,62,0);
INSERT INTO `wp_term_relationships` VALUES (76,63,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'role','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'role','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'role','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'role','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'role','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'role','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'gatsby_action_ref_node_dbid','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'gatsby_action_ref_node_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'gatsby_action_type','',0,18);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'gatsby_action_stream_type','',0,21);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'gatsby_action_ref_node_type','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'gatsby_action_ref_node_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'gatsby_action_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (23,23,'gatsby_action_ref_node_type','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (24,24,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (25,25,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (26,26,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (27,27,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (28,28,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (29,29,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (30,30,'gatsby_action_ref_node_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (31,31,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (32,32,'gatsby_action_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (33,33,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (34,34,'gatsby_action_ref_node_type','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (35,35,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (36,36,'gatsby_action_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (37,37,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (38,38,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (39,39,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (40,40,'gatsby_action_ref_node_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (41,41,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (42,42,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (43,43,'gatsby_action_ref_node_type','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (44,44,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (45,45,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (46,46,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (47,47,'gatsby_action_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (48,48,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (49,49,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (50,50,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (51,51,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (52,52,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (53,53,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (54,54,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (55,55,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (56,56,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (57,57,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (58,58,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (59,59,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (60,60,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (61,61,'gatsby_action_ref_node_id','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (62,62,'gatsby_action_ref_node_dbid','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (63,63,'gatsby_action_ref_node_id','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main Menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Horror','horror',0);
INSERT INTO `wp_terms` VALUES (4,'Avontuur','avontuur',0);
INSERT INTO `wp_terms` VALUES (5,'Actie','actie',0);
INSERT INTO `wp_terms` VALUES (6,'Animatie','animatie',0);
INSERT INTO `wp_terms` VALUES (7,'Fictie','fictie',0);
INSERT INTO `wp_terms` VALUES (8,'Non-Fictie','nonfictie',0);
INSERT INTO `wp_terms` VALUES (9,'2','2',0);
INSERT INTO `wp_terms` VALUES (10,'menu','menu',0);
INSERT INTO `wp_terms` VALUES (11,'dGVybToy','dgvybtoy',0);
INSERT INTO `wp_terms` VALUES (12,'UPDATE','update',0);
INSERT INTO `wp_terms` VALUES (13,'CONTENT','content',0);
INSERT INTO `wp_terms` VALUES (14,'35','35',0);
INSERT INTO `wp_terms` VALUES (15,'menuItem','menuitem',0);
INSERT INTO `wp_terms` VALUES (16,'cG9zdDozNQ==','cg9zddoznq',0);
INSERT INTO `wp_terms` VALUES (17,'36','36',0);
INSERT INTO `wp_terms` VALUES (18,'cG9zdDozNg==','cg9zddozng',0);
INSERT INTO `wp_terms` VALUES (19,'none','none',0);
INSERT INTO `wp_terms` VALUES (20,'none','none',0);
INSERT INTO `wp_terms` VALUES (21,'none','none',0);
INSERT INTO `wp_terms` VALUES (22,'DIFF_SCHEMAS','diff_schemas',0);
INSERT INTO `wp_terms` VALUES (23,'page','page',0);
INSERT INTO `wp_terms` VALUES (24,'cG9zdDoy','cg9zddoy',0);
INSERT INTO `wp_terms` VALUES (25,'42','42',0);
INSERT INTO `wp_terms` VALUES (26,'cG9zdDo0Mg==','cg9zddo0mg',0);
INSERT INTO `wp_terms` VALUES (27,'44','44',0);
INSERT INTO `wp_terms` VALUES (28,'cG9zdDo0NA==','cg9zddo0na',0);
INSERT INTO `wp_terms` VALUES (29,'update_non_node_root_field','update_non_node_root_field',0);
INSERT INTO `wp_terms` VALUES (30,'update_non_node_root_field','update_non_node_root_field',0);
INSERT INTO `wp_terms` VALUES (31,'update_non_node_root_field','update_non_node_root_field',0);
INSERT INTO `wp_terms` VALUES (32,'NON_NODE_ROOT_FIELDS','non_node_root_fields',0);
INSERT INTO `wp_terms` VALUES (33,'47','47',0);
INSERT INTO `wp_terms` VALUES (34,'mediaItem','mediaitem',0);
INSERT INTO `wp_terms` VALUES (35,'cG9zdDo0Nw==','cg9zddo0nw',0);
INSERT INTO `wp_terms` VALUES (36,'CREATE','create',0);
INSERT INTO `wp_terms` VALUES (37,'13','13',0);
INSERT INTO `wp_terms` VALUES (38,'cG9zdDoxMw==','cg9zddoxmw',0);
INSERT INTO `wp_terms` VALUES (39,'1','1',0);
INSERT INTO `wp_terms` VALUES (40,'user','user',0);
INSERT INTO `wp_terms` VALUES (41,'dXNlcjox','dxnlcjox',0);
INSERT INTO `wp_terms` VALUES (42,'56','56',0);
INSERT INTO `wp_terms` VALUES (43,'Film','film',0);
INSERT INTO `wp_terms` VALUES (44,'cG9zdDo1Ng==','cg9zddo1ng',0);
INSERT INTO `wp_terms` VALUES (45,'5','5',0);
INSERT INTO `wp_terms` VALUES (46,'cG9zdDo1','cg9zddo1',0);
INSERT INTO `wp_terms` VALUES (47,'DELETE','delete',0);
INSERT INTO `wp_terms` VALUES (48,'33','33',0);
INSERT INTO `wp_terms` VALUES (49,'cG9zdDozMw==','cg9zddozmw',0);
INSERT INTO `wp_terms` VALUES (50,'64','64',0);
INSERT INTO `wp_terms` VALUES (51,'cG9zdDo2NA==','cg9zddo2na',0);
INSERT INTO `wp_terms` VALUES (52,'63','63',0);
INSERT INTO `wp_terms` VALUES (53,'cG9zdDo2Mw==','cg9zddo2mw',0);
INSERT INTO `wp_terms` VALUES (54,'68','68',0);
INSERT INTO `wp_terms` VALUES (55,'cG9zdDo2OA==','cg9zddo2oa',0);
INSERT INTO `wp_terms` VALUES (56,'67','67',0);
INSERT INTO `wp_terms` VALUES (57,'cG9zdDo2Nw==','cg9zddo2nw',0);
INSERT INTO `wp_terms` VALUES (58,'72','72',0);
INSERT INTO `wp_terms` VALUES (59,'cG9zdDo3Mg==','cg9zddo3mg',0);
INSERT INTO `wp_terms` VALUES (60,'71','71',0);
INSERT INTO `wp_terms` VALUES (61,'cG9zdDo3MQ==','cg9zddo3mq',0);
INSERT INTO `wp_terms` VALUES (62,'75','75',0);
INSERT INTO `wp_terms` VALUES (63,'cG9zdDo3NQ==','cg9zddo3nq',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"c728d345e1d4c6aaca543c6c836bf555634a3c2c8985c705fbc1cd276da4222a\";a:4:{s:10:\"expiration\";i:1612450278;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1611240678;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:3:{i:0;s:19:\"add-post-type-films\";i:1;s:12:\"add-post_tag\";i:2;s:8:\"add-role\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (22,1,'meta-box-order_films','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:22:\"tagsdiv-role,submitdiv\";s:6:\"normal\";s:31:\"acf-group_600af62baf388,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'screen_layout_films','2');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (25,1,'wp_user-settings-time','1611405318');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_films','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_films','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Admin','$P$BZtNG70j1F5MOaiArpvDKiiVsKE5Fq1','admin','s108491@ap.be','http://examenopdracht.local','2021-01-21 14:34:25','',0,'Admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-24 17:54:29
